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
// package org.allbinary.game.configuration.event
unit GameInitializedEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ResourceLoadingLevel, AllBinaryEventObject;

type
  {AB:TYPES}
  TGameInitializedEvent = class(TAllBinaryEventObject)
  public
    resourceLoadingLevel: TResourceLoadingLevel;
    level: Integer;
    procedure InitFields;
        constructor Create(anyType: TObject);
        procedure setLevel(level: Integer); virtual;
        function getLevel: Integer; virtual;
        procedure setResourceLoadingLevel(resourceLoadingLevel_: TResourceLoadingLevel); virtual;
        function getResourceLoadingLevel: TResourceLoadingLevel; virtual;
  end;

implementation
uses
  ResourceLoadingLevelFactory;


{AB:CODE}

procedure TGameInitializedEvent.InitFields;
begin
  Self.resourceLoadingLevel := TResourceLoadingLevelFactory.getInstance().LEVEL;
  
end;
    

constructor TGameInitializedEvent.Create(anyType: TObject);
begin
        inherited Create(anyType);
        InitFields;
end;
    

procedure TGameInitializedEvent.setLevel(level: Integer);
begin
        Self.level := level;
        Self.resourceLoadingLevel := TResourceLoadingLevelFactory.getInstance().LEVEL;
end;
    

function TGameInitializedEvent.getLevel: Integer;
begin
        Exit(Self.level);
end;
    

procedure TGameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel_: TResourceLoadingLevel);
begin
        Self.resourceLoadingLevel := resourceLoadingLevel_;
        Self.level := Self.resourceLoadingLevel.getLevel();
end;
    

function TGameInitializedEvent.getResourceLoadingLevel: TResourceLoadingLevel;
begin
        Exit(Self.resourceLoadingLevel);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

