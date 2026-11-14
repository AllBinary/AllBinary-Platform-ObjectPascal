{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit GameRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameRunnable = class(TInterfacedObject, IRunnable)
  public
    WAIT: Integer;
    FAST: Integer;
    waitInMillis: Int64;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure run; virtual;
        procedure processLoopSleep; virtual;
  end;

implementation
uses
  DisplayInfoSingleton;


{AB:CODE}

procedure TGameRunnable.InitFields;
begin
  Self.WAIT := 240;
  Self.FAST := 60;
  Self.waitInMillis := Int64(Self.WAIT);
end;

function TGameRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameRunnable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGameRunnable.run;
begin
        TDisplayInfoSingleton.getInstance().process();
end;
    

// throws Exception
procedure TGameRunnable.processLoopSleep;
begin
        SysUtils.Sleep(Self.waitInMillis);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

