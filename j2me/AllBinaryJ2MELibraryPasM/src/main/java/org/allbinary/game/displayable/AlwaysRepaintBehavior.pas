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
unit AlwaysRepaintBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, RepaintBehavior;

type
  {AB:TYPES}
  TAlwaysRepaintBehavior = class(TRepaintBehavior)
  public
    NAME: string;
    class var instanceC: TAlwaysRepaintBehavior;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAlwaysRepaintBehavior; static;
        procedure repaint(canvas_: TCanvas); override;
        procedure onChangeRepaint(canvas_: TCanvas); override;
  end;

implementation
uses
  RepaintRunnable, Features, DisplayInfoSingleton, OpenGLFeatureFactory, LogUtil, CommonStrings, NullRunnable;


{AB:CODE}

procedure TAlwaysRepaintBehavior.InitFields;
begin
  Self.NAME := 'AlwaysRepaintBehavior';
end;

constructor TAlwaysRepaintBehavior.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAlwaysRepaintBehavior.getInstance: TAlwaysRepaintBehavior;
begin
        Exit(TAlwaysRepaintBehavior.instanceC);
end;
    

procedure TAlwaysRepaintBehavior.repaint(canvas_: TCanvas);
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
    

procedure TAlwaysRepaintBehavior.onChangeRepaint(canvas_: TCanvas);
begin
end;

initialization
  {AB:INITIALIZATION}
  TAlwaysRepaintBehavior.instanceC := TAlwaysRepaintBehavior.Create();
  {AB:END}

end.

