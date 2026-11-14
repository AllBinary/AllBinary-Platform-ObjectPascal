// Generated Code Do Not Modify
// package org.allbinary.configuration
unit ApplicationConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Feature, LogUtil;

type
  {AB:TYPES}
  TApplicationConfiguration = class(TObject)
  public
    logUtil: TLogUtil;
    fullscreen: Boolean;
    showTitleBar: Boolean;
    progressBarView: Boolean;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TApplicationConfiguration; static;
        constructor Create;
        procedure read;
        procedure write; virtual;
        procedure update(gameFeature: TFeature); virtual;
        procedure setFullscreen(fullscreen: Boolean); virtual;
        function isFullscreen: Boolean; virtual;
        procedure setShowTitleBar(showTitleBar: Boolean); virtual;
        function isShowTitleBar: Boolean; virtual;
        procedure setProgressBarView(progressBarView: Boolean); virtual;
        function isProgressBarView: Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  Features, MainFeatureFactory, NullUtil, StringMaker, CommonStrings;


{AB:CODE}

procedure TApplicationConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.fullscreen := True;
  Self.showTitleBar := False;
  Self.progressBarView := False;
end;
    

class function TApplicationConfiguration.getInstance: TApplicationConfiguration;
begin
        if (TApplicationConfiguration.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TApplicationConfiguration.instance := TApplicationConfiguration.Create();
        end;
        Exit(TApplicationConfiguration(TJava.ToObject(TApplicationConfiguration.instance)));
end;
    

constructor TApplicationConfiguration.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        try
            Self.read();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TApplicationConfiguration.read;
begin
        Self.setFullscreen(True);
        Self.setProgressBarView(False);
        Self.setShowTitleBar(False);
        Self.logUtil.putF('Read Configuration: ' + Self.toString(), TJava.Box(Self), 'read');
end;
    

// throws Exception
procedure TApplicationConfiguration.write;
begin
end;
    

// throws Exception
procedure TApplicationConfiguration.update(gameFeature: TFeature);
var
  features_: TFeatures;
begin
        if (gameFeature) = (TMainFeatureFactory.getInstance().FULL_SCREEN) then begin
            features_ := TFeatures.getInstance();
            if features_.isFeature(gameFeature) then begin
                if not (Self.isFullscreen()) then begin
                    Self.setFullscreen(True);
                    Self.write();
                end;
            end else begin
                if Self.isFullscreen() then begin
                    Self.setFullscreen(False);
                    Self.write();
                end;
            end;
        end;
end;
    

procedure TApplicationConfiguration.setFullscreen(fullscreen: Boolean);
begin
        Self.fullscreen := fullscreen;
end;
    

function TApplicationConfiguration.isFullscreen: Boolean;
begin
        Exit(Self.fullscreen);
end;
    

procedure TApplicationConfiguration.setShowTitleBar(showTitleBar: Boolean);
begin
        Self.showTitleBar := showTitleBar;
end;
    

function TApplicationConfiguration.isShowTitleBar: Boolean;
begin
        Exit(Self.showTitleBar);
end;
    

procedure TApplicationConfiguration.setProgressBarView(progressBarView: Boolean);
begin
        Self.progressBarView := progressBarView;
end;
    

function TApplicationConfiguration.isProgressBarView: Boolean;
begin
        Exit(Self.progressBarView);
end;
    

function TApplicationConfiguration.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('isFullscreen: ');
        stringBuffer.appendboolean(Self.isFullscreen());
        stringBuffer.append(' isProgressBarView: ');
        stringBuffer.appendboolean(Self.isProgressBarView());
        stringBuffer.append(' isShowTitleBar: ');
        stringBuffer.appendboolean(Self.isShowTitleBar());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TApplicationConfiguration.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

