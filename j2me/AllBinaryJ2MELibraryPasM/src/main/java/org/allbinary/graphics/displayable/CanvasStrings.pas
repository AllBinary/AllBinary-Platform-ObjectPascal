{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
unit CanvasStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TCanvasStrings = class(TObject)
  public
    CONSTRUCTOR_: string;
    PAUSE: string;
    UN_PAUSE: string;
    SET_FULL_SCREEN_MODE: string;
    SIZE_CHANGED: string;
    SCALED_IMAGES: string;
    PAINT: string;
    ON_DISPLAY_CHANGE_EVENT: string;
    UPDATE_MEASUREMENT: string;
    FD_WIDTH: string;
    FD_HEIGHT: string;
    EMPTY_CHILD_NAME_LIST: TBasicArrayList;
    ABOUT: string;
    OPTIONS: string;
    FONT_ATLAS: string;
    OBJ_MODEL: string;
    MD2_MODEL: string;
    _PNG: string;
    class var instance: TCanvasStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCanvasStrings; static;
  end;

implementation
uses
  BasicArrayListUtil;


{AB:CODE}

procedure TCanvasStrings.InitFields;
begin
  Self.CONSTRUCTOR_ := 'MyCanvas::MyCanvas';
  Self.PAUSE := 'MyCanvas::pause';
  Self.UN_PAUSE := 'MyCanvas::unPause';
  Self.SET_FULL_SCREEN_MODE := 'setFullScreenMode';
  Self.SIZE_CHANGED := 'sizeChanged';
  Self.SCALED_IMAGES := 'scaledImages';
  Self.PAINT := 'paint';
  Self.ON_DISPLAY_CHANGE_EVENT := 'onDisplayChangeEvent';
  Self.UPDATE_MEASUREMENT := 'updateMeasurement';
  Self.FD_WIDTH := ' font/display width: ';
  Self.FD_HEIGHT := ' font/display height: ';
  Self.EMPTY_CHILD_NAME_LIST := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.ABOUT := 'About';
  Self.OPTIONS := 'Options';
  Self.FONT_ATLAS := '/font.png';
  Self.OBJ_MODEL := '_obj';
  Self.MD2_MODEL := '_md2';
  Self._PNG := '.png';
end;

constructor TCanvasStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCanvasStrings.getInstance: TCanvasStrings;
begin
        Exit(TCanvasStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCanvasStrings.instance := TCanvasStrings.Create();
  {AB:END}

end.

