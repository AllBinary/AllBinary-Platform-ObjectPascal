// Generated Code Do Not Modify
// package org.allbinary.view
unit EmulatorViewInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable, MIDlet;

type
  {AB:TYPES}
  IEmulatorViewInterface = interface(IJavaObject) ['IEmulatorViewInterface']
        procedure setMidlet(midlet_: TMIDlet);
        procedure onEmulatorInitComplete(midletActivity: TObject);
        procedure onSetDisplayable(displayable_: TDisplayable);
  end;
  TEmulatorViewInterface = IEmulatorViewInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

