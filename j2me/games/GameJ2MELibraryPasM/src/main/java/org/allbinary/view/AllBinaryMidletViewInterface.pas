// Generated Code Do Not Modify
// package org.allbinary.view
unit AllBinaryMidletViewInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInitializedListenerInterface, DemoGameMidletEventListener, MidletCompositeInterface, Displayable, MIDlet, DemoGameMidletEvent, AllBinaryEventObject, GameInitializedEvent, EmulatorViewInterface;

type
  {AB:TYPES}
  IAllBinaryMidletViewInterface = interface(IMidletCompositeInterface) ['IAllBinaryMidletViewInterface']
        procedure onResume;
        procedure onPause;
        procedure onDestroy;
        procedure onEmulatorInitComplete(midletActivity: TObject); overload;
        procedure onSetDisplayable(displayable_: TDisplayable); overload;
        procedure setMidlet(midlet_: TMIDlet); overload;
        procedure onDemoGameMidletEvent(demoGameMidletEvent_: TDemoGameMidletEvent); overload;
        procedure onDemoStart; overload;
        procedure onGameStart; overload;
        procedure onEvent(eventObject: TAllBinaryEventObject); overload;
        procedure onGameInitialized(gameInitializedEvent_: TGameInitializedEvent); overload;
  end;
  TAllBinaryMidletViewInterface = IAllBinaryMidletViewInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

