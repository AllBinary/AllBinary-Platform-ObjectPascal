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
// package org.allbinary.business.error
unit ErrorData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TErrorData = class(TObject)
  public
    NAME: string;
    TEXT: string;
    class var instance: TErrorData;
    procedure InitFields;
        class function getInstance: TErrorData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TErrorData.InitFields;
begin
  Self.NAME := 'ERROR_NAME';
  Self.TEXT := 'ERROR_TEXT';
end;
    

class function TErrorData.getInstance: TErrorData;
begin
        Exit(TErrorData.instance);
end;
    

constructor TErrorData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TErrorData.instance := TErrorData.Create();
  {AB:END}

end.

