{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
unit AbPathUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath;

type
  {AB:TYPES}
  TAbPathUtil = class(TObject)
  public
    NO_ABPATH: TAbPath;
    class var instance: TAbPathUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAbPathUtil; static;
  end;

implementation

{AB:CODE}

procedure TAbPathUtil.InitFields;
begin
  Self.NO_ABPATH := TAbPath.createAbPath();
end;

constructor TAbPathUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAbPathUtil.getInstance: TAbPathUtil;
begin
        Exit(TAbPathUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TAbPathUtil.instance := TAbPathUtil.Create();
  {AB:END}

end.

