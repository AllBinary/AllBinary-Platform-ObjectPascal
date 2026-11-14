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
unit DemoCanvasProgressUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DemoCanvas;

type
  {AB:TYPES}
  TDemoCanvasProgressUtil = class(TObject)
  public
    constructor Create;
        class procedure showProgress(demoCanvas_: TDemoCanvas); static;
        class procedure showProgressOptionallyInTheBackground(demoCanvas_: TDemoCanvas; background: Boolean); static;
  end;

implementation
uses
  ProgressCanvas, ProgressCanvasFactory, PaintableComposite, PaintableInterface;


{AB:CODE}

constructor TDemoCanvasProgressUtil.Create;
begin
  inherited Create;
end;
    

class procedure TDemoCanvasProgressUtil.showProgress(demoCanvas_: TDemoCanvas);
begin
        TDemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas_, False);
end;
    

class procedure TDemoCanvasProgressUtil.showProgressOptionallyInTheBackground(demoCanvas_: TDemoCanvas; background: Boolean);
var
  progressCanvas_: TProgressCanvas;
  paintableArray: TArray<IPaintableInterface>;
begin
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.startBackground(background);
        paintableArray := TJava.NewArray<IPaintableInterface>(2);
        paintableArray[0] := progressCanvas_;
        paintableArray[1] := demoCanvas_.getDefaultPaintableInterface();
        demoCanvas_.setDefaultPaintableInterface(TPaintableComposite.Create(paintableArray));
        demoCanvas_.setPaintableInterface(demoCanvas_.getDefaultPaintableInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

