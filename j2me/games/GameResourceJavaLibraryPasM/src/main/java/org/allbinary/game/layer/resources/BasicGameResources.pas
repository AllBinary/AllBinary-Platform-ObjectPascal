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
// package org.allbinary.game.layer.resources
unit BasicGameResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StringMaker;

type
  {AB:TYPES}
  TBasicGameResources = class(TObject)
  public
    logUtil: TLogUtil;
    RESOURCE: string;
    RESOURCE_DESTROY: string;
    class var stringBuffer: TStringMaker;
    procedure InitFields;
        constructor Create;
        procedure init(ROOT: string; SIZE: TArray<string>); virtual;
        procedure append(ROOT: string; sizeString: string); virtual;
        function getString: string; virtual;
  end;

implementation
uses
  GameGraphicsResourceUtil, GameConfigurationCentral, StringUtil, CommonStrings;


{AB:CODE}

procedure TBasicGameResources.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.RESOURCE := TStringUtil.getInstance().EMPTY_STRING;
  Self.RESOURCE_DESTROY := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TBasicGameResources.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicGameResources.init(ROOT: string; SIZE: TArray<string>);
var
  scale: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            scale := TGameConfigurationCentral.getInstance().SCALE.getValue().intValue();
            if ((scale) > (1)) and (((scale) - (1)) < (System.Length(SIZE))) then begin
                Self.append(ROOT, SIZE[(scale) - (1)]);
            end else begin
                raise SysUtils.Exception.Create(TStringMaker.Create().append('Invalid Value: ').appendint(scale).toString());
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TBasicGameResources.append(ROOT: string; sizeString: string);
var
  DESTROY: string;
  string_: string;
begin
        DESTROY := '_destroy';
        string_ := Self.getString();
        TBasicGameResources.stringBuffer.delete_(0, TBasicGameResources.stringBuffer.length());
        TBasicGameResources.stringBuffer.append(ROOT);
        TBasicGameResources.stringBuffer.append(string_);
        TBasicGameResources.stringBuffer.append(sizeString);
        Self.RESOURCE := TBasicGameResources.stringBuffer.toString();
        TBasicGameResources.stringBuffer.delete_(0, TBasicGameResources.stringBuffer.length());
        TBasicGameResources.stringBuffer.append(ROOT);
        TBasicGameResources.stringBuffer.append(DESTROY);
        TBasicGameResources.stringBuffer.append(string_);
        TBasicGameResources.stringBuffer.append(sizeString);
        Self.RESOURCE_DESTROY := TBasicGameResources.stringBuffer.toString();
end;
    

// throws Exception
function TBasicGameResources.getString: string;
begin
        Exit(TGameGraphicsResourceUtil.getInstance().getName());
end;

initialization
  {AB:INITIALIZATION}
  TBasicGameResources.stringBuffer := TStringMaker.Create();
  {AB:END}

end.

