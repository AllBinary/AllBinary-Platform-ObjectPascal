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
// package org.allbinary.business.advertisement
unit BottomLimiter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBottomLimiter = class(TObject)
  public
    bottom: Integer;
    deltaY: Integer;
    lower: Integer;
    higher: Integer;
    class var instance: TBottomLimiter;
    procedure InitFields;
        class function getInstance: TBottomLimiter; static;
        constructor Create;
        procedure init(lower: Integer; higher: Integer); virtual;
        procedure update; virtual;
        function getDeltaY: Integer; virtual;
        function getBottom: Integer; virtual;
  end;

implementation
uses
  GameAdStateFactory, GameAdState, DisplayInfoSingleton;


{AB:CODE}

procedure TBottomLimiter.InitFields;
begin
  
  
  
  
end;
    

class function TBottomLimiter.getInstance: TBottomLimiter;
begin
        Exit(TBottomLimiter.instance);
end;
    

constructor TBottomLimiter.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBottomLimiter.init(lower: Integer; higher: Integer);
begin
        Self.lower := lower;
        Self.higher := higher;
end;
    

procedure TBottomLimiter.update;
var
  displayInfo: TDisplayInfoSingleton;
  gameAdState_: TGameAdState;
begin
        displayInfo := TDisplayInfoSingleton.getInstance();
        gameAdState_ := TGameAdStateFactory.getInstance().getCurrentInstance();
        if gameAdState_.isShowingAt() then begin
            Self.deltaY := Self.higher;
        end else begin
            Self.deltaY := Self.lower;
        end;
        Self.bottom := (displayInfo.getLastHeight()) - (Self.deltaY);
end;
    

function TBottomLimiter.getDeltaY: Integer;
begin
        Exit(Self.deltaY);
end;
    

function TBottomLimiter.getBottom: Integer;
begin
        Exit(Self.bottom);
end;

initialization
  {AB:INITIALIZATION}
  TBottomLimiter.instance := TBottomLimiter.Create();
  {AB:END}

end.

