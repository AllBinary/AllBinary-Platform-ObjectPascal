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
// package org.allbinary.game.resource
unit ResourceLoadingLevelFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ResourceLoadingLevel;

type
  {AB:TYPES}
  TResourceLoadingLevelFactory = class(TObject)
  public
    LOAD_EARLY: TResourceLoadingLevel;
    LOAD_TOUCH: TResourceLoadingLevel;
    LOAD_GAME: TResourceLoadingLevel;
    LEVEL: TResourceLoadingLevel;
    MAX_LEVEL: TResourceLoadingLevel;
    LOAD_ALL: TResourceLoadingLevel;
    RESOURCE_LOADING_LEVEL_ARRAY: TArray<TResourceLoadingLevel>;
    class var instance: TResourceLoadingLevelFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TResourceLoadingLevelFactory; static;
        function getLevelString(level: Integer): string; virtual;
  end;

implementation

{AB:CODE}

procedure TResourceLoadingLevelFactory.InitFields;
begin
  Self.LOAD_EARLY := TResourceLoadingLevel.Create('Load Early', High(Integer));
  Self.LOAD_TOUCH := TResourceLoadingLevel.Create('Load Touch', (High(Integer)) - (1));
  Self.LOAD_GAME := TResourceLoadingLevel.Create('Load Game', (High(Integer)) - (2));
  Self.LEVEL := TResourceLoadingLevel.Create('Level', (High(Integer)) - (99));
  Self.MAX_LEVEL := TResourceLoadingLevel.Create('Max Level', (High(Integer)) - (100));
  Self.LOAD_ALL := TResourceLoadingLevel.Create('Load All', -1);
  Self.RESOURCE_LOADING_LEVEL_ARRAY := TArray<TResourceLoadingLevel>.Create(Self.LOAD_ALL, Self.MAX_LEVEL, Self.LEVEL, Self.LOAD_GAME, Self.LOAD_TOUCH, Self.LOAD_EARLY);
end;

constructor TResourceLoadingLevelFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TResourceLoadingLevelFactory.getInstance: TResourceLoadingLevelFactory;
begin
        Exit(TResourceLoadingLevelFactory.instance);
end;
    

function TResourceLoadingLevelFactory.getLevelString(level: Integer): string;
var
  index: Integer;
begin
        for index := 0 to System.Length(Self.RESOURCE_LOADING_LEVEL_ARRAY) - 1 do begin
            if (level) = (Self.RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel()) then begin
                Exit(Self.RESOURCE_LOADING_LEVEL_ARRAY[index].getName());
            end;
        end;
        Exit(IntToStr(level));
end;

initialization
  {AB:INITIALIZATION}
  TResourceLoadingLevelFactory.instance := TResourceLoadingLevelFactory.Create();
  {AB:END}

end.

