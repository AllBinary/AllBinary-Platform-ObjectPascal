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
unit LogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Log;

type
  {AB:TYPES}
  // ActualPlatform
  TLogUtil = class(TObject)
  public
    class var instance: TLogUtil;
        class function getInstance: TLogUtil; static;
        constructor Create;
        procedure putP(log_: TLog); virtual;
        procedure putF(specialMessage: string; anyType: TObject; functionName: string); virtual;
        procedure putFS(specialMessage: string; className: string; functionName: string); virtual;
        procedure put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); virtual;
  end;

implementation

{AB:CODE}
    

class function TLogUtil.getInstance: TLogUtil;
begin
        Exit(TLogUtil.instance);
end;
    

constructor TLogUtil.Create;
begin
    inherited Create;
end;
    

procedure TLogUtil.putP(log_: TLog);
begin
end;
    

procedure TLogUtil.putF(specialMessage: string; anyType: TObject; functionName: string);
begin
end;
    

procedure TLogUtil.putFS(specialMessage: string; className: string; functionName: string);
begin
end;
    

procedure TLogUtil.put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TLogUtil.instance := TLogUtil.Create();
  {AB:END}

end.

