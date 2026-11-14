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
// package org.allbinary.string
unit CommonStateStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCommonStateStrings = class(TObject)
  public
    CONTEXT: string;
    FINISH: string;
    CREATE_: string;
    START: string;
    RESTART: string;
    RESUME: string;
    PAUSE: string;
    STOP: string;
    DESTROY: string;
    BIND: string;
    ON_SAVE_INSTANCE_STATE: string;
    ON_START_COMMAND: string;
    class var instance: TCommonStateStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommonStateStrings; static;
  end;

implementation

{AB:CODE}

procedure TCommonStateStrings.InitFields;
begin
  Self.CONTEXT := 'Context: ';
  Self.FINISH := 'finish';
  Self.CREATE_ := 'onCreate';
  Self.START := 'onStart';
  Self.RESTART := 'onRestart';
  Self.RESUME := 'onResume';
  Self.PAUSE := 'onPause';
  Self.STOP := 'onStop';
  Self.DESTROY := 'onDestroy';
  Self.BIND := 'onBind';
  Self.ON_SAVE_INSTANCE_STATE := 'onSaveInstanceState';
  Self.ON_START_COMMAND := 'onStartCommand';
end;

constructor TCommonStateStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommonStateStrings.getInstance: TCommonStateStrings;
begin
        Exit(TCommonStateStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCommonStateStrings.instance := TCommonStateStrings.Create();
  {AB:END}

end.

