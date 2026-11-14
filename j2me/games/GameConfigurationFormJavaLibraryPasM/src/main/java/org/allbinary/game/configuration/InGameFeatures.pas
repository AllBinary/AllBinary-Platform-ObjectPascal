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
// package org.allbinary.game.configuration
unit InGameFeatures;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Init;

type
  {AB:TYPES}
  TInGameFeatures = class(TInit)
  public
    constructor Create;
        procedure init; override;
        procedure addToInGameMenu;
        function isAny: Boolean; virtual;
  end;

implementation
uses
  Features, GameFeatureChoiceGroups, InGameFeatureChoiceGroups, SensorFeatureFactory, TouchFeatureFactory, OrientationData, BasicArrayList, BasicArrayListD;


{AB:CODE}

constructor TInGameFeatures.Create;
begin
  inherited Create;
end;
    

procedure TInGameFeatures.init;
var
  LABEL_: string;
  orientationData_: TOrientationData;
  exclusiveOrientationSensorVector: TBasicArrayList;
  inGameFeatureChoiceGroups_: TInGameFeatureChoiceGroups;
  inGameExclusiveOrientationSensorVectorCanBeNull: TObject;
  inGameExclusiveOrientationSensorVector: TBasicArrayList;
  features_: TFeatures;
  exclusiveScreenButtonsVector: TBasicArrayList;
  touchFeatureFactory_: TTouchFeatureFactory;
begin
        LABEL_ := 'Screen Buttons';
        orientationData_ := TOrientationData.getInstance();
        exclusiveOrientationSensorVector := TBasicArrayList(TJava.ToObject(TGameFeatureChoiceGroups.getExclusiveInstance().get().get(TJava.Box(orientationData_.ORIENTATION_SENSOR_INPUT))));
        inGameFeatureChoiceGroups_ := TInGameFeatureChoiceGroups.getExclusiveInstance();
        if (exclusiveOrientationSensorVector) <> (nil) then begin
            inGameExclusiveOrientationSensorVectorCanBeNull := TJava.Box(inGameFeatureChoiceGroups_.get().get(TJava.Box(orientationData_.ORIENTATION_SENSOR_INPUT)));
            if (inGameExclusiveOrientationSensorVectorCanBeNull) = (nil) then begin
                Self.addToInGameMenu();
            end else begin
                inGameExclusiveOrientationSensorVector := TBasicArrayList(TJava.ToObject(inGameExclusiveOrientationSensorVectorCanBeNull));
                if (inGameExclusiveOrientationSensorVector.size()) = (0) then begin
                    Self.addToInGameMenu();
                end;
            end;
        end;
        features_ := TFeatures.getInstance();
        if ((features_.isFeature(TTouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS)) or (features_.isFeature(TTouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS))) or (features_.isFeature(TTouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS)) then begin
            exclusiveScreenButtonsVector := TBasicArrayListD.Create();
            touchFeatureFactory_ := TTouchFeatureFactory.getInstance();
            exclusiveScreenButtonsVector.add(TJava.Box(touchFeatureFactory_.AUTO_HIDE_SHOW_SCREEN_BUTTONS));
            exclusiveScreenButtonsVector.add(TJava.Box(touchFeatureFactory_.SHOW_SCREEN_BUTTONS));
            exclusiveScreenButtonsVector.add(TJava.Box(touchFeatureFactory_.HIDE_SCREEN_BUTTONS));
            inGameFeatureChoiceGroups_.add(LABEL_, exclusiveScreenButtonsVector);
        end;
end;
    

procedure TInGameFeatures.addToInGameMenu;
var
  orientationData_: TOrientationData;
  inGameExclusiveOrientationSensorVector: TBasicArrayList;
begin
        orientationData_ := TOrientationData.getInstance();
        inGameExclusiveOrientationSensorVector := TBasicArrayListD.Create();
        inGameExclusiveOrientationSensorVector.add(TJava.Box(TSensorFeatureFactory.getInstance().ORIENTATION_SENSORS));
        inGameExclusiveOrientationSensorVector.add(TJava.Box(TSensorFeatureFactory.getInstance().NO_ORIENTATION));
        TInGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData_.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector);
end;
    

function TInGameFeatures.isAny: Boolean;
var
  features_: TFeatures;
  touchFeatureFactory_: TTouchFeatureFactory;
  exclusiveOrientationSensorVector: TBasicArrayList;
begin
        features_ := TFeatures.getInstance();
        touchFeatureFactory_ := TTouchFeatureFactory.getInstance();
        if ((features_.isFeature(touchFeatureFactory_.SHOW_SCREEN_BUTTONS)) or (features_.isFeature(touchFeatureFactory_.AUTO_HIDE_SHOW_SCREEN_BUTTONS))) or (features_.isFeature(touchFeatureFactory_.HIDE_SCREEN_BUTTONS)) then begin
            Exit(True);
        end;
        exclusiveOrientationSensorVector := TBasicArrayList(TJava.ToObject(TGameFeatureChoiceGroups.getExclusiveInstance().get().get(TJava.Box(TOrientationData.getInstance().ORIENTATION_SENSOR_INPUT))));
        if (exclusiveOrientationSensorVector) <> (nil) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

