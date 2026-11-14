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
// package org.allbinary.graphics.canvas.transition.progress
unit ProgressCanvasFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PaintableInterface, ProgressCanvas;

type
  {AB:TYPES}
  TProgressCanvasFactory = class(TObject)
  public
    class var PROGRESS_FORM_SCREEN: TObject;
    constructor Create;
        class function getInstance: TProgressCanvas; static;
        class function getLazyInstance: IPaintableInterface; static;
  end;

implementation
uses
  BasicColorFactory, NullPaintable, NullUtil, StringUtil;


{AB:CODE}

constructor TProgressCanvasFactory.Create;
begin
  inherited Create;
end;
    

class function TProgressCanvasFactory.getInstance: TProgressCanvas;
begin
        if (TProgressCanvasFactory.PROGRESS_FORM_SCREEN) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TProgressCanvasFactory.PROGRESS_FORM_SCREEN := TProgressCanvas.Create(TStringUtil.getInstance().EMPTY_STRING, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TProgressCanvas(TJava.ToObject(TProgressCanvasFactory.PROGRESS_FORM_SCREEN)));
end;
    

class function TProgressCanvasFactory.getLazyInstance: IPaintableInterface;
begin
        Exit(TNullPaintable.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  TProgressCanvasFactory.PROGRESS_FORM_SCREEN := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

