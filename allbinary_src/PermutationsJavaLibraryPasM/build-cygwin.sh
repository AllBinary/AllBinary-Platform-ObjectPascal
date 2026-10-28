#!/usr/bin/env bash

# Compiles the generated Object Pascal units with Free Pascal.
# The generated unit names are the Java class names without the package while the files are in Java package directories.
# Every directory with a unit is added to the fpc unit path so the uses clauses find units in other packages.

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
fpc="$(cygpath -u "$3")"
read -r -a compiler_flags <<< "$4"
fail_on_error="$5"
shift 5

if [ ! -x "$fpc" ]; then
    echo "Free Pascal compiler not found: $fpc. Set fpc.executable in the pom or with -Dfpc.executable=" >&2
    exit 1
fi

rm -rf "$output_dir"
mkdir -p "$output_dir"

unit_paths=()
add_unit_paths() {
    local unit_dir
    while IFS= read -r -d '' unit_dir; do
        unit_paths+=("-Fu$(cygpath -m "$unit_dir")")
    done < <(find "$1" -type f -name '*.pas' -printf '%h\0' | sort -zu)
}

add_unit_paths "$source_dir"
# Dependency units such as jsinterop annotations are compiled when a generated unit uses them
for dependency_dir in "$@"; do
    dependency_dir="$(cygpath -u "$dependency_dir")"
    if [ -d "$dependency_dir" ]; then
        add_unit_paths "$dependency_dir"
    else
        echo "Warning: Object Pascal dependency source directory does not exist: $dependency_dir" >&2
    fi
done

compiled=0
failures=()

while IFS= read -r -d '' source; do
    if "$fpc" "${compiler_flags[@]}" "-FU$(cygpath -m "$output_dir")" "${unit_paths[@]}" "$(cygpath -m "$source")"; then
        compiled=$((compiled + 1))
    else
        failures+=("$source")
    fi
done < <(find "$source_dir" -type f -name '*.pas' -print0 | sort -z)

echo "Object Pascal units compiled: $compiled"
if [ "${#failures[@]}" -gt 0 ]; then
    echo "Object Pascal build failures: ${#failures[@]}" >&2
    printf '  %s\n' "${failures[@]}" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
fi
exit 0
