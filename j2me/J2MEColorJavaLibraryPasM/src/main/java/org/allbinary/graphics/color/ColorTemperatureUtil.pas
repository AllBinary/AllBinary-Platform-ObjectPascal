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
// package org.allbinary.graphics.color
unit ColorTemperatureUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColorFactory, BasicColor;

type
  {AB:TYPES}
  TColorTemperatureUtil = class(TObject)
  public
    basicColorFactory: TBasicColorFactory;
    class var instance: TColorTemperatureUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TColorTemperatureUtil; static;
        function getBasicColor(thirdTemp: Integer): TBasicColor; virtual;
  end;

implementation

{AB:CODE}

procedure TColorTemperatureUtil.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
end;

constructor TColorTemperatureUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TColorTemperatureUtil.getInstance: TColorTemperatureUtil;
begin
        Exit(TColorTemperatureUtil.instance);
end;
    

function TColorTemperatureUtil.getBasicColor(thirdTemp: Integer): TBasicColor;
var
  basicColor_: TBasicColor;
begin
        basicColor_ := Self.basicColorFactory.RED;
        if (thirdTemp) > (3700) then begin
            basicColor_ := Self.basicColorFactory.PURPLE;
        end else if (thirdTemp) > (3200) then begin
            basicColor_ := Self.basicColorFactory.BLUE;
        end else if (thirdTemp) > (2700) then begin
            basicColor_ := Self.basicColorFactory.PUCE;
        end else if (thirdTemp) > (2200) then begin
            basicColor_ := Self.basicColorFactory.WHITE;
        end else if (thirdTemp) > (1700) then begin
            basicColor_ := Self.basicColorFactory.GREEN;
        end else if (thirdTemp) > (1200) then begin
            basicColor_ := Self.basicColorFactory.YELLOW;
        end else if (thirdTemp) > (700) then begin
            basicColor_ := Self.basicColorFactory.ORANGE;
        end;
        Exit(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  TColorTemperatureUtil.instance := TColorTemperatureUtil.Create();
  {AB:END}

end.

