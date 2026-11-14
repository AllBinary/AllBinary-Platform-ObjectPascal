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
// package org.allbinary.animation.transition.shake
unit ShakeEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShakeEvent;

type
  {AB:TYPES}
  TShakeEventFactory = class(TObject)
  public
    MICRO: TShakeEvent;
    SMALL: TShakeEvent;
    MEDIUM: TShakeEvent;
    LARGE: TShakeEvent;
    class var instance: TShakeEventFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TShakeEventFactory; static;
        procedure init; virtual;
  end;

implementation

{AB:CODE}

procedure TShakeEventFactory.InitFields;
begin
  Self.MICRO := TShakeEvent.Create();
  Self.SMALL := TShakeEvent.Create();
  Self.MEDIUM := TShakeEvent.Create();
  Self.LARGE := TShakeEvent.Create();
end;

constructor TShakeEventFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TShakeEventFactory.getInstance: TShakeEventFactory;
begin
        Exit(TShakeEventFactory.instance);
end;
    

procedure TShakeEventFactory.init;
begin
end;

initialization
  {AB:INITIALIZATION}
  TShakeEventFactory.instance := TShakeEventFactory.Create();
  {AB:END}

end.

