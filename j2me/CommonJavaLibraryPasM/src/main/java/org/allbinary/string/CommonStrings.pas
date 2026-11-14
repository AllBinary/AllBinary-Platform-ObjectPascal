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
unit CommonStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCommonStrings = class(TObject)
  public
    EMPTY: string;
    CREATE_IMAGE: string;
    PLEASE_WAIT: string;
    PLEASE_WAIT_FOR_SERVER: string;
    PERIODS: string;
    LOADING: string;
    CONSTRUCTOR_: string;
    START: string;
    END_: string;
    EXCEPTION: string;
    EXCEPTION_LABEL: string;
    CLEANUP: string;
    INIT: string;
    CLOSE: string;
    UP: string;
    DOWN: string;
    LEFT: string;
    RIGHT: string;
    DIRECTION_NAME: TArray<string>;
    CREATE_: string;
    REMOVE: string;
    UPDATE: string;
    DELETE__: string;
    delete_: string;
    LOAD: string;
    SAVE: string;
    ADD: string;
    DROP: string;
    INSERT: string;
    VISIT: string;
    START_METHOD_NAME: string;
    END_METHOD_NAME: string;
    GET: string;
    PROCESS: string;
    GET_INSTANCE: string;
    GET_LIST: string;
    RUN: string;
    START_RUNNABLE: string;
    RUNNING: string;
    END_RUNNABLE: string;
    DISABLE: string;
    ENABLE: string;
    SUCCESS: string;
    FAILURE: string;
    NOT_IMPLEMENTED: string;
    UNKNOWN: string;
    ON_EVENT: string;
    IS_VALID: string;
    TOSTRING: string;
    ADD_LISTENER: string;
    REMOVE_LISTENER: string;
    SIZE: string;
    class var instance: TCommonStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommonStrings; static;
  end;

implementation
uses
  JsType, JsMethod, JsProperty;


{AB:CODE}

procedure TCommonStrings.InitFields;
begin
  Self.EMPTY := 'Empty';
  Self.CREATE_IMAGE := 'createImage';
  Self.PLEASE_WAIT := 'Please Wait';
  Self.PLEASE_WAIT_FOR_SERVER := 'Please Wait Getting Data From Server...';
  Self.PERIODS := '...';
  Self.LOADING := 'Loading...';
  Self.CONSTRUCTOR_ := 'Constructor';
  Self.START := 'Start';
  Self.END_ := 'End';
  Self.EXCEPTION := 'Exception';
  Self.EXCEPTION_LABEL := 'Exception: ';
  Self.CLEANUP := 'cleanup';
  Self.INIT := 'init';
  Self.CLOSE := 'close';
  Self.UP := 'up';
  Self.DOWN := 'down';
  Self.LEFT := 'left';
  Self.RIGHT := 'right';
  Self.DIRECTION_NAME := [Self.DOWN, Self.LEFT, Self.RIGHT, Self.UP];
  Self.CREATE_ := 'Create';
  Self.REMOVE := 'Remove';
  Self.UPDATE := 'Update';
  Self.DELETE__ := 'Delete';
  Self.delete_ := 'delete';
  Self.LOAD := 'load';
  Self.SAVE := 'save';
  Self.ADD := 'Add';
  Self.DROP := 'Drop';
  Self.INSERT := 'Insert';
  Self.VISIT := 'visit';
  Self.START_METHOD_NAME := Self.START;
  Self.END_METHOD_NAME := 'end';
  Self.GET := 'get';
  Self.PROCESS := 'process';
  Self.GET_INSTANCE := 'getInstance';
  Self.GET_LIST := 'getList';
  Self.RUN := 'run';
  Self.START_RUNNABLE := 'Start Runnable';
  Self.RUNNING := 'Running';
  Self.END_RUNNABLE := 'End Runnable';
  Self.DISABLE := 'disable';
  Self.ENABLE := 'enable';
  Self.SUCCESS := 'Command Success';
  Self.FAILURE := 'Command Failed';
  Self.NOT_IMPLEMENTED := 'Not Implemented';
  Self.UNKNOWN := 'Unknown';
  Self.ON_EVENT := 'onEvent';
  Self.IS_VALID := 'isValid';
  Self.TOSTRING := 'toString';
  Self.ADD_LISTENER := 'addListener';
  Self.REMOVE_LISTENER := 'removeListener';
  Self.SIZE := 'size';
end;

constructor TCommonStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommonStrings.getInstance: TCommonStrings;
begin
        Exit(TCommonStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCommonStrings.instance := TCommonStrings.Create();
  {AB:END}

end.

