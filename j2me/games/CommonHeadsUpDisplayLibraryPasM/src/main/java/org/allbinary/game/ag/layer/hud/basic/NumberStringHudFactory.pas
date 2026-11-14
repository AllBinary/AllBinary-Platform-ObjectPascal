{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.hud.basic
unit NumberStringHudFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NumberStringHud;

type
  {AB:TYPES}
  TNumberStringHudFactory = class(TObject)
  public
    NULL_NUMBER_STRING_HUD: TNumberStringHud;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TNumberStringHudFactory; static;
        function createHud: TNumberStringHud; virtual;
  end;

implementation
uses
  BasicHudFactory, BasicColorFactory, NullUtil, LogUtil, StringUtil, CommonStrings;


{AB:CODE}

procedure TNumberStringHudFactory.InitFields;
begin
  Self.NULL_NUMBER_STRING_HUD := Self.createHud();
end;

constructor TNumberStringHudFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TNumberStringHudFactory.getInstance: TNumberStringHudFactory;
begin
        if (TNumberStringHudFactory.instance) = (TNullUtil.getInstance()) then begin
            TNumberStringHudFactory.instance := TNumberStringHudFactory.Create();
        end;
        Exit(TNumberStringHudFactory(TJava.ToObject(TNumberStringHudFactory.instance)));
end;
    

function TNumberStringHudFactory.createHud: TNumberStringHud;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TNumberStringHud.Create(TStringUtil.getInstance().EMPTY_STRING, 9, TBasicHudFactory.getInstance().ABSOLUTE_, 1, 0, TBasicColorFactory.getInstance().NULL_COLOR));
        except
            on e: SysUtils.Exception do begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            raise SysUtils.Exception.Create('');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TNumberStringHudFactory.instance := TJava.Box(TNullUtil.getInstance());
  {AB:END}

end.

