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
// package org.allbinary.logic.communication.log
unit LogFormatUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // NoPlatform
  TLogFormatUtil = class(TObject)
  public
    class var instance: TLogFormatUtil;
        class function getInstance: TLogFormatUtil; static;
        constructor Create;
        function get(className: string; functionName: string; specialMessage: string; exception: TObject): string; virtual;
        function getS(className: string; functionName: string; specialMessage: string): string; virtual;
        function getO(exception: TObject): string; virtual;
  end;

implementation
uses
  NullUtil, ExceptionUtil, StringMaker, StringUtil, CommonLabels, CommonSeps, TimeStampUtil;


{AB:CODE}
    

class function TLogFormatUtil.getInstance: TLogFormatUtil;
begin
        Exit(TLogFormatUtil.instance);
end;
    

constructor TLogFormatUtil.Create;
begin
    inherited Create;
end;
    

function TLogFormatUtil.get(className: string; functionName: string; specialMessage: string; exception: TObject): string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLogFormatUtil.getS(className: string; functionName: string; specialMessage: string): string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLogFormatUtil.getO(exception: TObject): string;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TLogFormatUtil.instance := TLogFormatUtil.Create();
  {AB:END}

end.

