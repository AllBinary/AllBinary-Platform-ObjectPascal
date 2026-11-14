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
    FILE_: string;
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
  Features, MainFeatureFactory, NullUtil, AbDataInputStream, AbDataOutputStream, FileStreamFactory, NullCloseable, StreamUtil, FileFactory, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TApplicationConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.fullscreen := True;
  Self.showTitleBar := False;
  Self.progressBarView := False;
  Self.FILE_ := 'ReloadConfiguration.dat';
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
            if TFileFactory.getInstance().isFile(Self.FILE_) then begin
                Self.read();
            end else begin
                Self.write();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TApplicationConfiguration.read;
var
  fileInputStreamFactory: TFileStreamFactory;
  fileInputStream: TInputStream;
  dataInputStream: TAbDataInputStream;
  fullScreen: Integer;
  progressBarView: Integer;
  showTitleBar: Integer;
begin
        fileInputStreamFactory := TFileStreamFactory.getInstance();
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
        dataInputStream := TAbDataInputStream.Create(fileInputStream);
        fullScreen := dataInputStream.readInt();
        if (fullScreen) = (0) then begin
            Self.setFullscreen(False);
        end else if (fullScreen) = (1) then begin
            Self.setFullscreen(True);
        end else begin
            raise SysUtils.Exception.Create('Invalid FullScreen ActivityConfiguration');
        end;
        progressBarView := dataInputStream.readInt();
        if (progressBarView) = (0) then begin
            Self.setProgressBarView(False);
        end else if (progressBarView) = (1) then begin
            Self.setProgressBarView(True);
        end else begin
            raise SysUtils.Exception.Create('Invalid ProgressBarView ActivityConfiguration');
        end;
        showTitleBar := dataInputStream.readInt();
        if (showTitleBar) = (0) then begin
            Self.setShowTitleBar(False);
        end else if (showTitleBar) = (1) then begin
            Self.setShowTitleBar(True);
        end else begin
            raise SysUtils.Exception.Create('Invalid ShowTitleBar ActivityConfiguration');
        end;
        Self.logUtil.putF('Read Configuration: ' + Self.toString(), TJava.Box(Self), 'read');
end;
    

// throws Exception
procedure TApplicationConfiguration.write;
var
  closeable_: ICloseable;
  fileInputStreamFactory: TFileStreamFactory;
  fileOutputStream: TOutputStream;
  dataOutputStream: TAbDataOutputStream;
begin
        closeable_ := TNullCloseable.NULL_CLOSEABLE;
        try
        try
            Self.logUtil.putF('Write Configuration: ' + Self.toString(), TJava.Box(Self), 'write');
            fileInputStreamFactory := TFileStreamFactory.getInstance();
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
            dataOutputStream := TAbDataOutputStream.Create(fileOutputStream);
            closeable_ := dataOutputStream;
            if Self.isFullscreen() then begin
                dataOutputStream.writeInt(1);
            end else begin
                dataOutputStream.writeInt(0);
            end;
            if Self.isProgressBarView() then begin
                dataOutputStream.writeInt(1);
            end else begin
                dataOutputStream.writeInt(0);
            end;
            if Self.isShowTitleBar() then begin
                dataOutputStream.writeInt(1);
            end else begin
                dataOutputStream.writeInt(0);
            end;
            dataOutputStream.flush();
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            TStreamUtil.getInstance().close(closeable_);
        end;
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

