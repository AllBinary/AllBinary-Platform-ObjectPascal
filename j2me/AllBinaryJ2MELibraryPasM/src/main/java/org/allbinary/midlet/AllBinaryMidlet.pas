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
// package org.allbinary.midlet
unit AllBinaryMidlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Display, Displayable, MIDlet, LogUtil, CommonStrings, ABHashtable;

type
  {AB:TYPES}
  TAllBinaryMidlet = class(TMIDlet, ICommandListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    SET_DISPLAY: string;
    SETTING_: string;
    _DISPLAY_: string;
    SETTING_NO_TITLE: string;
    hashtable: TABHashtable<TObject, TObject>;
    midletDestroyed: Boolean;
    class var NULL_ALLBINARY_MIDLET: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        class function getNullInstance: TAllBinaryMidlet; static;
        constructor Create;
        procedure setDisplay(newDisplay: TDisplayable); virtual;
        function getDisplay: TDisplay; virtual;
        function getCurrentDisplayable: TDisplayable; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function isDestroyed: Boolean; virtual;
        procedure startApp; virtual;
        procedure pauseApp; virtual;
        procedure destroyAppInRunnable(unconditional: Boolean; isProgress: Boolean); virtual;
        procedure destroyApp(unconditional: Boolean); virtual;
        procedure setStartStateHashtable(hashtable: TABHashtable<TObject, TObject>); virtual;
        function getStartStateHashtable: TABHashtable<TObject, TObject>; virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure commandAction(command_: TCommand; displayable_: TDisplayable); virtual;
  end;

implementation
uses
  NullCanvas, MIDletStateChangeException, StdUtil, ForcedLogUtil, PreLogUtil, StringMaker, StringUtil, EventStrings, CommonLabels, Memory, NullUtil;


{AB:CODE}

procedure TAllBinaryMidlet.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.SET_DISPLAY := 'setDisplay';
  Self.SETTING_ := 'Setting: ';
  Self._DISPLAY_ := ' Display: ';
  Self.SETTING_NO_TITLE := 'Setting: No Title, Display: ';
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  
end;

function TAllBinaryMidlet.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TAllBinaryMidlet.getNullInstance: TAllBinaryMidlet;
begin
        if (TAllBinaryMidlet.NULL_ALLBINARY_MIDLET) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TAllBinaryMidlet.NULL_ALLBINARY_MIDLET := TAllBinaryMidlet.Create();
        end;
        Exit(TAllBinaryMidlet(TJava.ToObject(TAllBinaryMidlet.NULL_ALLBINARY_MIDLET)));
end;
    

constructor TAllBinaryMidlet.Create;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), 'AllBinaryMidlet::AllBinaryMidlet');
end;
    

procedure TAllBinaryMidlet.setDisplay(newDisplay: TDisplayable);
var
  title: string;
  display_: TDisplay;
begin
        title := TStringUtil.getInstance().EMPTY_STRING;
        if (newDisplay) <> (TNullCanvas.NULL_CANVAS) then begin
            title := newDisplay.getTitle();
            Self.logUtil.putF(TStringMaker.Create().append(Self.SETTING_).append(title).append(Self._DISPLAY_).append(TStringUtil.getInstance().toString(newDisplay)).toString(), TJava.Box(Self), Self.SET_DISPLAY);
        end;
        display_ := Self.getDisplay();
        display_.setCurrent(newDisplay);
end;
    

function TAllBinaryMidlet.getDisplay: TDisplay;
begin
        Exit(TDisplay.getDisplay(Self));
end;
    

function TAllBinaryMidlet.getCurrentDisplayable: TDisplayable;
begin
        Exit(TDisplay.getDisplay(Self).getCurrent());
end;
    

procedure TAllBinaryMidlet.setDestroyed(destroyed: Boolean);
begin
        Self.midletDestroyed := destroyed;
end;
    

function TAllBinaryMidlet.isDestroyed: Boolean;
begin
        Exit(Self.midletDestroyed);
end;
    

// throws MIDletStateChangeException
procedure TAllBinaryMidlet.startApp;
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TAllBinaryMidlet.pauseApp;
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TAllBinaryMidlet.destroyAppInRunnable(unconditional: Boolean; isProgress: Boolean);
begin
end;
    

procedure TAllBinaryMidlet.destroyApp(unconditional: Boolean);
var
  METHOD_NAME: string;
begin
        METHOD_NAME := 'AllBinaryMidlet::destroyApp';
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), METHOD_NAME);
            TPreLogUtil.put(TMemory.getInfo(), TJava.Box(Self), METHOD_NAME);
            Self.setDestroyed(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryMidlet.setStartStateHashtable(hashtable: TABHashtable<TObject, TObject>);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(TStringUtil.getInstance().toString(hashtable)).toString(), TJava.Box(Self), 'setStartStateHashtable');
        Self.hashtable := hashtable;
end;
    

// throws Exception
function TAllBinaryMidlet.getStartStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(TStringUtil.getInstance().toString(Self.hashtable)).toString(), TJava.Box(Self), 'getStartStateHashtable');
        Exit(Self.hashtable);
end;
    

// throws Exception
function TAllBinaryMidlet.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getStateHashtable');
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

procedure TAllBinaryMidlet.commandAction(command_: TCommand; displayable_: TDisplayable);
begin
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryMidlet.NULL_ALLBINARY_MIDLET := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

