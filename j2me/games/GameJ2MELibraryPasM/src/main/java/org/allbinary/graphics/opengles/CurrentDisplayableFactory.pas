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
unit CurrentDisplayableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable, GameRunnable, CanvasStrings, MyCanvas, StringUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TCurrentDisplayableFactory = class(TObject)
  public
    commonStrings: TCommonStrings;
    canvasStrings: TCanvasStrings;
    stringUtil: TStringUtil;
    SET_DISPLAYABLE: string;
    SET_RUNNABLE: string;
    CLEAR_RUNNABLE: string;
    SET_USED_RUNNABLE: string;
    RUNNABLE_: string;
    RUNNABLE_WAS_ALREADY_IN_USE: string;
    DEFAULT_CHILD_NAME_LIST: TBasicArrayList;
    displayable: TDisplayable;
    openGlReadydisplayable: TDisplayable;
    runnable: TGameRunnable;
    usedRunnable: TGameRunnable;
    class var instance: TCurrentDisplayableFactory;
    procedure InitFields;
        class function getInstance: TCurrentDisplayableFactory; static;
        constructor Create;
        procedure setMyCanvas(displayable_: TMyCanvas); virtual;
        procedure setDisplayable(displayable_: TDisplayable); virtual;
        procedure setOpenGlReadydisplayable(openGlReadydisplayable: TDisplayable); virtual;
        function getOpenGlReadydisplayable: TDisplayable; virtual;
        procedure setRunnable(runnable: TGameRunnable); virtual;
        procedure clearRunnable; virtual;
        procedure update;
        function getDisplayable: TDisplayable; virtual;
        function getUsedRunnable: TGameRunnable; virtual;
        procedure setUsedRunnable(usedRunnable: TGameRunnable); virtual;
  end;

implementation
uses
  OpenGLFeatureFactory, J2MEUtil, Features, AllBinaryGameCanvas, DemoCanvas, GameInputMappingCanvas, GameInputMappingInstructionsCanvas, NullDisplayable, NullWaitGameRunnable, SWTUtil, HighScoresCanvas, GraphicsStrings, PreLogUtil, StringMaker, CommonSeps, NullRunnable, BasicArrayListD;


{AB:CODE}

procedure TCurrentDisplayableFactory.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.canvasStrings := TCanvasStrings.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.SET_DISPLAYABLE := 'setDisplayable';
  Self.SET_RUNNABLE := 'setRunnable';
  Self.CLEAR_RUNNABLE := 'clearRunnable';
  Self.SET_USED_RUNNABLE := 'setUsedRunnable';
  Self.RUNNABLE_ := 'Runnable: ';
  Self.RUNNABLE_WAS_ALREADY_IN_USE := 'Runnable was already in use: ';
  Self.DEFAULT_CHILD_NAME_LIST := TBasicArrayListD.Create();
  Self.displayable := TNullDisplayable.getInstance();
  Self.openGlReadydisplayable := TNullDisplayable.getInstance();
  Self.runnable := TNullWaitGameRunnable.getInstance();
  Self.usedRunnable := TNullWaitGameRunnable.getInstance();
end;
    

class function TCurrentDisplayableFactory.getInstance: TCurrentDisplayableFactory;
begin
        Exit(TCurrentDisplayableFactory.instance);
end;
    

constructor TCurrentDisplayableFactory.Create;
begin
    inherited Create;
    InitFields;
        Self.DEFAULT_CHILD_NAME_LIST.add(TJava.Box(Self.canvasStrings.ABOUT));
        Self.DEFAULT_CHILD_NAME_LIST.add(TJava.Box(Self.canvasStrings.OPTIONS));
        Self.DEFAULT_CHILD_NAME_LIST.add(TJava.Box(TGameInputMappingCanvas.NAME));
        Self.DEFAULT_CHILD_NAME_LIST.add(TJava.Box(TGameInputMappingInstructionsCanvas.NAME));
        Self.DEFAULT_CHILD_NAME_LIST.add(TJava.Box(THighScoresCanvas.NAME));
end;
    

procedure TCurrentDisplayableFactory.setMyCanvas(displayable_: TMyCanvas);
begin
        if (TJava.ToObject(Self.displayable) is TMyCanvas) then begin
            if displayable_.hasChild(TMyCanvas(TJava.ToObject(Self.displayable))) then begin
                TPreLogUtil.put(TStringMaker.Create().append('Child Displayable is already set for: ').append(Self.stringUtil.toString(displayable_)).toString(), TJava.Box(Self), Self.SET_DISPLAYABLE);
                Exit;
            end;
        end;
        Self.setDisplayable(displayable_);
end;
    

procedure TCurrentDisplayableFactory.setDisplayable(displayable_: TDisplayable);
begin
        Self.displayable := displayable_;
        Self.setOpenGlReadydisplayable(displayable_);
end;
    

procedure TCurrentDisplayableFactory.setOpenGlReadydisplayable(openGlReadydisplayable: TDisplayable);
begin
        Self.openGlReadydisplayable := openGlReadydisplayable;
        Self.update();
end;
    

function TCurrentDisplayableFactory.getOpenGlReadydisplayable: TDisplayable;
begin
        Exit(Self.openGlReadydisplayable);
end;
    

procedure TCurrentDisplayableFactory.setRunnable(runnable: TGameRunnable);
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.RUNNABLE_).append(Self.stringUtil.toString(runnable)).toString(), TJava.Box(Self), Self.SET_RUNNABLE);
        Self.runnable := runnable;
        if (Self.usedRunnable) <> (Self.runnable) then begin
            Self.update();
        end else begin
            TPreLogUtil.put(TStringMaker.Create().append(Self.RUNNABLE_WAS_ALREADY_IN_USE).append(Self.stringUtil.toString(runnable)).toString(), TJava.Box(Self), Self.SET_RUNNABLE);
        end;
end;
    

procedure TCurrentDisplayableFactory.clearRunnable;
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.RUNNABLE_).append(Self.stringUtil.toString(TNullRunnable.getInstance())).toString(), TJava.Box(Self), Self.CLEAR_RUNNABLE);
        Self.setUsedRunnable(TNullWaitGameRunnable.getInstance());
end;
    

procedure TCurrentDisplayableFactory.update;
var
  commonSeps_: TCommonSeps;
  features_: TFeatures;
  stringMaker_: TStringMaker;
begin
        TJava.MonitorEnter(Self);
        try
            commonSeps_ := TCommonSeps.getInstance();
            features_ := TFeatures.getInstance();
            stringMaker_ := TStringMaker.Create();
            stringMaker_.append(Self.stringUtil.toString(Self.openGlReadydisplayable));
            if (TSWTUtil.isSWT) and (not (features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL))) then begin
                TPreLogUtil.put(stringMaker_.append(commonSeps_.SPACE).append(TSWTUtil.SWT).append(commonSeps_.SPACE).append(Self.RUNNABLE_).append(Self.stringUtil.toString(TNullRunnable.getInstance())).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                Self.setUsedRunnable(TNullWaitGameRunnable.getInstance());
            end else if TJ2MEUtil.isHTML() then begin
                TPreLogUtil.put(stringMaker_.append(commonSeps_.SPACE).append(TGraphicsStrings.getInstance().HTML).append(commonSeps_.SPACE).append(Self.RUNNABLE_).append(Self.stringUtil.toString(Self.runnable)).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                Self.setUsedRunnable(Self.runnable);
            end else if (((TJava.ToObject(Self.openGlReadydisplayable) is TDemoCanvas)) or ((TJava.ToObject(Self.openGlReadydisplayable) is TAllBinaryGameCanvas))) or (features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL)) then begin
                TPreLogUtil.put(stringMaker_.append(commonSeps_.SPACE).append(TOpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps_.SPACE).append(Self.RUNNABLE_).append(Self.stringUtil.toString(Self.runnable)).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                Self.setUsedRunnable(Self.runnable);
            end else begin
                TPreLogUtil.put(stringMaker_.append(Self.RUNNABLE_).append(Self.stringUtil.toString(TNullRunnable.getInstance())).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                Self.setUsedRunnable(TNullWaitGameRunnable.getInstance());
            end;
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

function TCurrentDisplayableFactory.getDisplayable: TDisplayable;
begin
        Exit(Self.displayable);
end;
    

function TCurrentDisplayableFactory.getUsedRunnable: TGameRunnable;
begin
        Exit(Self.usedRunnable);
end;
    

procedure TCurrentDisplayableFactory.setUsedRunnable(usedRunnable: TGameRunnable);
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.RUNNABLE_).append(Self.stringUtil.toString(Self.runnable)).append(TCommonSeps.getInstance().COLON_SEP).append(Self.stringUtil.toString(usedRunnable)).toString(), TJava.Box(Self), Self.SET_USED_RUNNABLE);
        Self.usedRunnable := usedRunnable;
end;

initialization
  {AB:INITIALIZATION}
  TCurrentDisplayableFactory.instance := TCurrentDisplayableFactory.Create();
  {AB:END}

end.

