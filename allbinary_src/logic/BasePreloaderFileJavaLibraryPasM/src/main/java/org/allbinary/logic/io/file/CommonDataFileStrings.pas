{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
unit CommonDataFileStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCommonDataFileStrings = class(TObject)
  public
    XML: string;
    _XML: string;
    JSON: string;
    _JSON: string;
    XSL: string;
    _XSL: string;
    JAVA: string;
    _JAVA: string;
    KT: string;
    _KT: string;
    TS: string;
    _TS: string;
    JS: string;
    _JS: string;
    CPP: string;
    _CPP: string;
    H: string;
    _H: string;
    PY: string;
    _PY: string;
    GO: string;
    _GO: string;
    CS: string;
    _CS: string;
    ADB: string;
    _ADB: string;
    ADS: string;
    _ADS: string;
    ADA: string;
    _ADA: string;
    RUST: string;
    _RUST: string;
    C: string;
    _C: string;
    CSHARP: string;
    _CSHARP: string;
    ERL: string;
    _ERL: string;
    HS: string;
    _HS: string;
    HX: string;
    _HX: string;
    LUA: string;
    _LUA: string;
    PAS: string;
    _PAS: string;
    ML: string;
    _ML: string;
    PL: string;
    _PL: string;
    RB: string;
    _RB: string;
    ZIG: string;
    _ZIG: string;
    PM: string;
    _PM: string;
    KTS: string;
    _KTS: string;
    CBL: string;
    _CBL: string;
    COB: string;
    _COB: string;
    F90: string;
    _F90: string;
    F: string;
    _F: string;
    DART: string;
    _DART: string;
    EX: string;
    _EX: string;
    EXS: string;
    _EXS: string;
    KOTLIN: string;
    TYPESCRIPT: string;
    JAVASCRIPT: string;
    C_PLUS_PLUS: string;
    PYTHON: string;
    C_SHARP: string;
    RUST_NAME: string;
    RUBY: string;
    PERL: string;
    OBJECT_PASCAL: string;
    OCAML: string;
    HASKELL: string;
    HAXE: string;
    ERLANG: string;
    COBOL: string;
    FORTRAN: string;
    ELIXIR: string;
    CPLUSPLUS: string;
    GOLANG: string;
    CSHARP_ALIAS: string;
    C23: string;
    PASCAL: string;
    OBJECT_PASCAL_ALIAS: string;
    KT_SHORT_NAME: string;
    TS_SHORT_NAME: string;
    JS_SHORT_NAME: string;
    CPP_SHORT_NAME: string;
    PY_SHORT_NAME: string;
    GO_SHORT_NAME: string;
    CS_SHORT_NAME: string;
    ADA_SHORT_NAME: string;
    RUST_SHORT_NAME: string;
    LUA_SHORT_NAME: string;
    C_SHORT_NAME: string;
    ZIG_SHORT_NAME: string;
    RB_SHORT_NAME: string;
    PL_SHORT_NAME: string;
    PAS_SHORT_NAME: string;
    ML_SHORT_NAME: string;
    HS_SHORT_NAME: string;
    HX_SHORT_NAME: string;
    ERL_SHORT_NAME: string;
    CBL_SHORT_NAME: string;
    F90_SHORT_NAME: string;
    DART_SHORT_NAME: string;
    EX_SHORT_NAME: string;
    UNCRYPTED_EXTENSION: string;
    ENCRYPTED_EXTENSION: string;
    class var instance: TCommonDataFileStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommonDataFileStrings; static;
  end;

implementation

{AB:CODE}

procedure TCommonDataFileStrings.InitFields;
begin
  Self.XML := 'xml';
  Self._XML := '.xml';
  Self.JSON := 'json';
  Self._JSON := '.json';
  Self.XSL := 'xsl';
  Self._XSL := '.xsl';
  Self.JAVA := 'java';
  Self._JAVA := '.java';
  Self.KT := 'kt';
  Self._KT := '.kt';
  Self.TS := 'ts';
  Self._TS := '.ts';
  Self.JS := 'js';
  Self._JS := '.js';
  Self.CPP := 'cpp';
  Self._CPP := '.cpp';
  Self.H := 'h';
  Self._H := '.h';
  Self.PY := 'py';
  Self._PY := '.py';
  Self.GO := 'go';
  Self._GO := '.go';
  Self.CS := 'cs';
  Self._CS := '.cs';
  Self.ADB := 'adb';
  Self._ADB := '.adb';
  Self.ADS := 'ads';
  Self._ADS := '.ads';
  Self.ADA := 'ada';
  Self._ADA := '.ada';
  Self.RUST := 'rs';
  Self._RUST := '.rs';
  Self.C := 'c';
  Self._C := '.c';
  Self.CSHARP := 'cs';
  Self._CSHARP := '.cs';
  Self.ERL := 'erl';
  Self._ERL := '.erl';
  Self.HS := 'hs';
  Self._HS := '.hs';
  Self.HX := 'hx';
  Self._HX := '.hx';
  Self.LUA := 'lua';
  Self._LUA := '.lua';
  Self.PAS := 'pas';
  Self._PAS := '.pas';
  Self.ML := 'ml';
  Self._ML := '.ml';
  Self.PL := 'pl';
  Self._PL := '.pl';
  Self.RB := 'rb';
  Self._RB := '.rb';
  Self.ZIG := 'zig';
  Self._ZIG := '.zig';
  Self.PM := 'pm';
  Self._PM := '.pm';
  Self.KTS := 'kts';
  Self._KTS := '.kts';
  Self.CBL := 'cbl';
  Self._CBL := '.cbl';
  Self.COB := 'cob';
  Self._COB := '.cob';
  Self.F90 := 'f90';
  Self._F90 := '.f90';
  Self.F := 'f';
  Self._F := '.f';
  Self.DART := 'dart';
  Self._DART := '.dart';
  Self.EX := 'ex';
  Self._EX := '.ex';
  Self.EXS := 'exs';
  Self._EXS := '.exs';
  Self.KOTLIN := 'kotlin';
  Self.TYPESCRIPT := 'typescript';
  Self.JAVASCRIPT := 'javascript';
  Self.C_PLUS_PLUS := 'c++';
  Self.PYTHON := 'python';
  Self.C_SHARP := 'c#';
  Self.RUST_NAME := 'rust';
  Self.RUBY := 'ruby';
  Self.PERL := 'perl';
  Self.OBJECT_PASCAL := 'objectpascal';
  Self.OCAML := 'ocaml';
  Self.HASKELL := 'haskell';
  Self.HAXE := 'haxe';
  Self.ERLANG := 'erlang';
  Self.COBOL := 'cobol';
  Self.FORTRAN := 'fortran';
  Self.ELIXIR := 'elixir';
  Self.CPLUSPLUS := 'cplusplus';
  Self.GOLANG := 'golang';
  Self.CSHARP_ALIAS := 'csharp';
  Self.C23 := 'c23';
  Self.PASCAL := 'pascal';
  Self.OBJECT_PASCAL_ALIAS := 'object pascal';
  Self.KT_SHORT_NAME := 'Kt';
  Self.TS_SHORT_NAME := 'Ts';
  Self.JS_SHORT_NAME := 'Js';
  Self.CPP_SHORT_NAME := 'Cpp';
  Self.PY_SHORT_NAME := 'Py';
  Self.GO_SHORT_NAME := 'Go';
  Self.CS_SHORT_NAME := 'Cs';
  Self.ADA_SHORT_NAME := 'Ada';
  Self.RUST_SHORT_NAME := 'Rust';
  Self.LUA_SHORT_NAME := 'Lua';
  Self.C_SHORT_NAME := 'C';
  Self.ZIG_SHORT_NAME := 'Zig';
  Self.RB_SHORT_NAME := 'Rb';
  Self.PL_SHORT_NAME := 'Pl';
  Self.PAS_SHORT_NAME := 'Pas';
  Self.ML_SHORT_NAME := 'Ml';
  Self.HS_SHORT_NAME := 'Hs';
  Self.HX_SHORT_NAME := 'Hx';
  Self.ERL_SHORT_NAME := 'Erl';
  Self.CBL_SHORT_NAME := 'Cbl';
  Self.F90_SHORT_NAME := 'F90';
  Self.DART_SHORT_NAME := 'Dart';
  Self.EX_SHORT_NAME := 'Ex';
  Self.UNCRYPTED_EXTENSION := Self.XML;
  Self.ENCRYPTED_EXTENSION := 'abd';
end;

constructor TCommonDataFileStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommonDataFileStrings.getInstance: TCommonDataFileStrings;
begin
        Exit(TCommonDataFileStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCommonDataFileStrings.instance := TCommonDataFileStrings.Create();
  {AB:END}

end.

