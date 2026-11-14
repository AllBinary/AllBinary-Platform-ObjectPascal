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
unit MyFormUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Rectangle, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TMyFormUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    popupMenuRectangle: TRectangle;
    class var instance: TMyFormUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMyFormUtil; static;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getPopupMenuRectangle: TRectangle; virtual;
  end;

implementation
uses
  Font, Features, PointFactory, RectangleFactory, DisplayInfoSingleton, MyFontProcessor, OpenGLFeatureFactory, SWTJOGLProcessor;


{AB:CODE}

procedure TMyFormUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.popupMenuRectangle := TRectangleFactory.SINGLETON;
end;

constructor TMyFormUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMyFormUtil.getInstance: TMyFormUtil;
begin
        Exit(TMyFormUtil.instance);
end;
    

procedure TMyFormUtil.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  displayInfo: TDisplayInfoSingleton;
  features_: TFeatures;
  isOpenGL: Boolean;
  TOTAL_CHAR_WIDTH: Integer;
  width: Integer;
  pointFactory_: TPointFactory;
begin
        font_ := graphics_.getFont();
        displayInfo := TDisplayInfoSingleton.getInstance();
        features_ := TFeatures.getInstance();
        isOpenGL := features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL);
        TOTAL_CHAR_WIDTH := TJava.IfThen<Variant>((TSWTJOGLProcessor.getInstance().isJOGL()) and (isOpenGL), 2, 3);
        width := TMyFontProcessor.defaultStringWidth(font_, TOTAL_CHAR_WIDTH);
        pointFactory_ := TPointFactory.getInstance();
        if (displayInfo.getLastHeight()) < (320) then begin
            Self.popupMenuRectangle := TRectangle.Create(pointFactory_.createXY(0, 25), width, (((font_.getHeight()) * (4))) + (2));
        end else begin
            Self.popupMenuRectangle := TRectangle.Create(pointFactory_.createXY(0, (displayInfo.getLastHalfHeight()) - (70)), width, ((font_.getHeight()) * (5)));
        end;
end;
    

function TMyFormUtil.getPopupMenuRectangle: TRectangle;
begin
        Exit(Self.popupMenuRectangle);
end;

initialization
  {AB:INITIALIZATION}
  TMyFormUtil.instance := TMyFormUtil.Create();
  {AB:END}

end.

