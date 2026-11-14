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
// package org.allbinary.input.motion.button
unit TouchScreenFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TouchScreenType;

type
  {AB:TYPES}
  TTouchScreenFactory = class(TObject)
  public
    logUtil: TLogUtil;
    touch: Boolean;
    multiTouch: Boolean;
    multiTouchDistinct: Boolean;
    touchScreenType: TTouchScreenType;
    class var SINGLETON: TTouchScreenFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TTouchScreenFactory; static;
        procedure setMultiTouch(multiTouch: Boolean); virtual;
        function isMultiTouch: Boolean; virtual;
        procedure setTouch(touch: Boolean); virtual;
        function isTouch: Boolean; virtual;
        procedure setMultiTouchDistinct(multiTouchDistinct: Boolean); virtual;
        function isMultiTouchDistinct: Boolean; virtual;
        procedure setTouchScreenType(touchScreenType_: TTouchScreenType); virtual;
        function getTouchScreenType: TTouchScreenType; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  TouchScreenTypesFactory, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TTouchScreenFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  Self.touchScreenType := TTouchScreenTypesFactory.getInstance().NOTOUCH;
end;
    

constructor TTouchScreenFactory.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        try
            Self.setTouch(True);
            Self.setMultiTouch(False);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(TTouchScreenFactory.SINGLETON), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
        end;
end;
    

class function TTouchScreenFactory.getInstance: TTouchScreenFactory;
begin
        Exit(TTouchScreenFactory.SINGLETON);
end;
    

procedure TTouchScreenFactory.setMultiTouch(multiTouch: Boolean);
begin
        Self.multiTouch := multiTouch;
end;
    

function TTouchScreenFactory.isMultiTouch: Boolean;
begin
        Exit(Self.multiTouch);
end;
    

procedure TTouchScreenFactory.setTouch(touch: Boolean);
begin
        Self.touch := touch;
end;
    

function TTouchScreenFactory.isTouch: Boolean;
begin
        Exit(Self.touch);
end;
    

procedure TTouchScreenFactory.setMultiTouchDistinct(multiTouchDistinct: Boolean);
begin
        Self.multiTouchDistinct := multiTouchDistinct;
end;
    

function TTouchScreenFactory.isMultiTouchDistinct: Boolean;
begin
        Exit(Self.multiTouchDistinct);
end;
    

procedure TTouchScreenFactory.setTouchScreenType(touchScreenType_: TTouchScreenType);
begin
        Self.touchScreenType := touchScreenType_;
end;
    

function TTouchScreenFactory.getTouchScreenType: TTouchScreenType;
begin
        Exit(Self.touchScreenType);
end;
    

function TTouchScreenFactory.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('TouchScreen: ');
        stringBuffer.appendboolean(Self.isTouch());
        stringBuffer.append(' MultiTouch: ');
        stringBuffer.appendboolean(Self.isMultiTouch());
        stringBuffer.append(' Distinct MultiTouch: ');
        stringBuffer.appendboolean(Self.isMultiTouchDistinct());
        stringBuffer.append(' TouchScreenType: ');
        stringBuffer.append(TStringUtil.getInstance().toString(Self.getTouchScreenType()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TTouchScreenFactory.SINGLETON := TTouchScreenFactory.Create();
  {AB:END}

end.

