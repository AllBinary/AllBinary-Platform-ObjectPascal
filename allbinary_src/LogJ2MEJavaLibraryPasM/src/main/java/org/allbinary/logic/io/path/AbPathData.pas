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
// package org.allbinary.logic.io.path
unit AbPathData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAbPathData = class(TObject)
  public
    EXTENSION_SEP: string;
    SEPARATORCHAR: WideChar;
    SEPARATOR: string;
    class var instance: TAbPathData;
    procedure InitFields;
        class function getInstance: TAbPathData; static;
        constructor Create;
  end;

implementation
uses
  FilePathData, StringUtil, CommonSeps;


{AB:CODE}

procedure TAbPathData.InitFields;
begin
  Self.EXTENSION_SEP := TCommonSeps.getInstance().PERIOD;
  Self.SEPARATORCHAR := '/';
  Self.SEPARATOR := TCommonSeps.getInstance().FORWARD_SLASH;
end;
    

class function TAbPathData.getInstance: TAbPathData;
begin
        Exit(TAbPathData.instance);
end;
    

constructor TAbPathData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAbPathData.instance := TAbPathData.Create();
  {AB:END}

end.

