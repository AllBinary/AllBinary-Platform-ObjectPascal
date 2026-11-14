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
// package org.allbinary.graphics.opengles
unit OpenGLOptions;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLOptions = class(TObject)
  public
    constructor Create;
        procedure init; virtual;
  end;

implementation
uses
  OpenGLFeatureFactory, Features, GameFeatureChoiceGroups, BasicArrayList, BasicArrayListD;


{AB:CODE}

constructor TOpenGLOptions.Create;
begin
  inherited Create;
end;
    

procedure TOpenGLOptions.init;
var
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  openGLMultipleList: TBasicArrayList;
  openGLVersionSelectorMultipleList: TBasicArrayList;
  openGLImageColorMultipleList: TBasicArrayList;
begin
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        if TFeatures.getInstance().isFeature(openGLFeatureFactory_.OPENGL_OPTIONS) then begin
            openGLMultipleList := TBasicArrayListD.Create();
            openGLMultipleList.add(TJava.Box(openGLFeatureFactory_.OPENGL));
            TGameFeatureChoiceGroups.getMultipleInstance().add('OpenGL (Complete Restart)', openGLMultipleList);
            openGLVersionSelectorMultipleList := TBasicArrayListD.Create();
            openGLVersionSelectorMultipleList.add(TJava.Box(openGLFeatureFactory_.OPENGL_AUTO_SELECT));
            openGLVersionSelectorMultipleList.add(TJava.Box(openGLFeatureFactory_.OPENGL_MINIMUM));
            TGameFeatureChoiceGroups.getExclusiveInstance().add('OpenGL Version Selector', openGLVersionSelectorMultipleList);
            openGLImageColorMultipleList := TBasicArrayListD.Create();
            openGLImageColorMultipleList.add(TJava.Box(openGLFeatureFactory_.IMAGE_COLOR_DEPTH_4444));
            openGLImageColorMultipleList.add(TJava.Box(openGLFeatureFactory_.IMAGE_COLOR_DEPTH_8888));
            TGameFeatureChoiceGroups.getExclusiveInstance().add('OpenGL Image Color RGBA', openGLImageColorMultipleList);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

