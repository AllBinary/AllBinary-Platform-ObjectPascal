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
unit AdConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, GameState;

type
  {AB:TYPES}
  TAdConfiguration = class(TObject)
  public
    INNERACTIVE: string;
    LEADBOLT: string;
    ADMOB: string;
    procedure InitFields;
        constructor Create(advertIdArray: TArray<TObject>);
        function getValidAdSpots: TArray<TDirection>; virtual;
        procedure process(gameState_: TGameState); virtual;
        procedure processDemo(state: Integer); virtual;
        procedure setShowAds; virtual;
        procedure setToggleAds(showAds: Boolean); virtual;
        function isShowAds: Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TAdConfiguration.InitFields;
begin
  
  
  
end;
    

constructor TAdConfiguration.Create(advertIdArray: TArray<TObject>);
begin
    inherited Create;
    InitFields;
        Self.INNERACTIVE := TJava.UnboxString(TJava.ToObject(advertIdArray[0]));
        Self.ADMOB := TJava.UnboxString(TJava.ToObject(advertIdArray[1]));
        Self.LEADBOLT := TJava.UnboxString(TJava.ToObject(advertIdArray[2]));
end;
    

function TAdConfiguration.getValidAdSpots: TArray<TDirection>;
begin
        Exit(nil);
end;
    

procedure TAdConfiguration.process(gameState_: TGameState);
begin
end;
    

procedure TAdConfiguration.processDemo(state: Integer);
begin
end;
    

procedure TAdConfiguration.setShowAds;
begin
end;
    

procedure TAdConfiguration.setToggleAds(showAds: Boolean);
begin
end;
    

function TAdConfiguration.isShowAds: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

