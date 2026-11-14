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
// package org.allbinary.game.displayable
unit RepaintBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, LogUtil;

type
  {AB:TYPES}
  TRepaintBehavior = class(TObject)
  public
    logUtil: TLogUtil;
    NAME: string;
    class var instance: TRepaintBehavior;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRepaintBehavior; static;
        procedure repaint(canvas_: TCanvas); virtual;
        procedure onChangeRepaint(canvas_: TCanvas); virtual;
  end;

implementation
uses
  RepaintRunnable, Features, DisplayInfoSingleton, OpenGLFeatureFactory, CommonStrings, NullRunnable;


{AB:CODE}

procedure TRepaintBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.NAME := 'RepaintBehavior';
end;

constructor TRepaintBehavior.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRepaintBehavior.getInstance: TRepaintBehavior;
begin
        Exit(TRepaintBehavior.instance);
end;
    

procedure TRepaintBehavior.repaint(canvas_: TCanvas);
begin
end;
    

procedure TRepaintBehavior.onChangeRepaint(canvas_: TCanvas);
var
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  thread: TThread;
begin
        features_ := TFeatures.getInstance();
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        if features_.isFeature(openGLFeatureFactory_.OPENGL) then begin
            TDisplayInfoSingleton.getInstance().process();
        end else begin
            thread := TThread.Create(True);
            thread.start();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TRepaintBehavior.instance := TRepaintBehavior.Create();
  {AB:END}

end.

