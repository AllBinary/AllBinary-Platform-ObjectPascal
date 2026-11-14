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
// package org.allbinary.content
unit NotificationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command;

type
  {AB:TYPES}
  TNotificationUtil = class(TObject)
  public
    class var SINGLETON: TNotificationUtil;
    constructor Create;
        class function getInstance: TNotificationUtil; static;
        procedure notify(command_: TCommand; resource: string; message: string); virtual;
  end;

implementation

{AB:CODE}

constructor TNotificationUtil.Create;
begin
  inherited Create;
end;
    

class function TNotificationUtil.getInstance: TNotificationUtil;
begin
        Exit(TNotificationUtil.SINGLETON);
end;
    

procedure TNotificationUtil.notify(command_: TCommand; resource: string; message: string);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNotificationUtil.SINGLETON := TNotificationUtil.Create();
  {AB:END}

end.

