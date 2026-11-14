// Generated Code Do Not Modify
// package org.allbinary.view
unit AllBinaryMidletViewInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInitializedListenerInterface, DemoGameMidletEventListener, MidletCompositeInterface, EmulatorViewInterface;

type
  {AB:TYPES}
  IAllBinaryMidletViewInterface = interface(IMidletCompositeInterface) ['IAllBinaryMidletViewInterface']
        procedure onResume;
        procedure onPause;
        procedure onDestroy;
  end;
  TAllBinaryMidletViewInterface = IAllBinaryMidletViewInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

