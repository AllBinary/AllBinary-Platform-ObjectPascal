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
unit FormUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle;

type
  {AB:TYPES}
  TFormUtil = class(TObject)
  public
    class var instance: TFormUtil;
    constructor Create;
        class function getInstance: TFormUtil; static;
        function createFormRectangle: TRectangle; virtual;
  end;

implementation
uses
  PointFactory, DisplayInfoSingleton, LogUtil;


{AB:CODE}

constructor TFormUtil.Create;
begin
  inherited Create;
end;
    

class function TFormUtil.getInstance: TFormUtil;
begin
        Exit(TFormUtil.instance);
end;
    

function TFormUtil.createFormRectangle: TRectangle;
var
  displayInfo: TDisplayInfoSingleton;
  pointFactory_: TPointFactory;
  rectangle_: TRectangle;
begin
        displayInfo := TDisplayInfoSingleton.getInstance();
        pointFactory_ := TPointFactory.getInstance();
        rectangle_ := TRectangle.Create(pointFactory_.createXY(30, 10), (displayInfo.getLastWidth()) - (30), (displayInfo.getLastHeight()) - (35));
        Exit(rectangle_);
end;

initialization
  {AB:INITIALIZATION}
  TFormUtil.instance := TFormUtil.Create();
  {AB:END}

end.

