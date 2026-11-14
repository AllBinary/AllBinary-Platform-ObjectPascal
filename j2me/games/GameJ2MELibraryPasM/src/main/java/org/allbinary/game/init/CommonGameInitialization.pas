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
// package org.allbinary.game.init
unit CommonGameInitialization;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, ResourceInitialization, AbeClientInformationInterface, CommonStrings, BaseGameInitialization;

type
  {AB:TYPES}
  TCommonGameInitialization = class(TBaseGameInitialization)
  public
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create(resourceInitializationArray: TArray<TResourceInitialization>; portion: Integer);
        procedure init(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; level: Integer); override;
        procedure initGame; virtual;
  end;

implementation
uses
  ResourceLoadingLevelFactory, PointFactory, ProgressCanvas, ProgressCanvasFactory, SmallIntegerSingletonFactory, AngleFactory;


{AB:CODE}

procedure TCommonGameInitialization.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TCommonGameInitialization.Create(resourceInitializationArray: TArray<TResourceInitialization>; portion: Integer);
begin
        inherited Create(resourceInitializationArray, portion);
        InitFields;
end;
    

// throws Exception
procedure TCommonGameInitialization.init(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; level: Integer);
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
  progressCanvas_: TProgressCanvas;
begin
        inherited init(abeClientInformation, commandListener_, level);
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if (not (Self.isGameInitialized())) and ((level) = (resourceLoadingLevelFactory_.LOAD_ALL.getLevel())) then begin
            Self.setGameInitialized(True);
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            TSmallIntegerSingletonFactory.getInstance().init();
            progressCanvas_.addNormalPortion(50, 'Integers');
            TPointFactory.getInstance().init();
            progressCanvas_.addNormalPortion(50, 'Points');
            TAngleFactory.getInstance();
            progressCanvas_.addNormalPortion(50, 'Angles');
            Self.initGame();
            Self.resourceInitializationArray[Self.GAME_RESOURCES].init();
        end;
        inherited resourceInitialization(level);
end;
    

// throws Exception
procedure TCommonGameInitialization.initGame;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

