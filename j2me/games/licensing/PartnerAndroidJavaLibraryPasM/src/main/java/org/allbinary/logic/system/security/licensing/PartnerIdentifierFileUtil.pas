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
// package org.allbinary.logic.system.security.licensing
unit PartnerIdentifierFileUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TPartnerIdentifierFileUtil = class(TObject)
  public
    logUtil: TLogUtil;
    FILE_NAME: string;
    class var instance: TPartnerIdentifierFileUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPartnerIdentifierFileUtil; static;
        function get: string; virtual;
  end;

implementation
uses
  ResourceUtil, StringUtil, CommonStrings;


{AB:CODE}

procedure TPartnerIdentifierFileUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.FILE_NAME := 'partner.txt';
end;

constructor TPartnerIdentifierFileUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPartnerIdentifierFileUtil.getInstance: TPartnerIdentifierFileUtil;
begin
        Exit(TPartnerIdentifierFileUtil.instance);
end;
    

function TPartnerIdentifierFileUtil.get: string;
var
  resourceUtil_: TResourceUtil;
  inputStream_: TInputStream;
  inputStreamReader_: TInputStreamReader;
  chars: TArray<WideChar>;
  size: Integer;
  partnerString: string;
  commonStrings_: TCommonStrings;
begin
        try
            resourceUtil_ := TResourceUtil.getInstance();
            inputStream_ := resourceUtil_.getResourceAsStream(Self.FILE_NAME);
            inputStreamReader_ := TInputStreamReader.Create(inputStream_);
            chars := TJava.NewArray<WideChar>(30);
            size := inputStreamReader_.read(chars);
            partnerString := TStringUtil.getInstance().EMPTY_STRING;
            if (size) > (0) then begin
                partnerString := TJava.NewString(chars, 0, size);
            end;
            inputStreamReader_.close();
            Exit(partnerString);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET, TJava.Box(e));
            Exit(TStringUtil.getInstance().NULL_STRING);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPartnerIdentifierFileUtil.instance := TPartnerIdentifierFileUtil.Create();
  {AB:END}

end.

