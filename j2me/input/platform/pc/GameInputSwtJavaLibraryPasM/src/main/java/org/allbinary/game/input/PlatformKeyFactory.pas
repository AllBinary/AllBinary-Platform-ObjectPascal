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
// package org.allbinary.game.input
unit PlatformKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input;

type
  {AB:TYPES}
  TPlatformKeyFactory = class(TObject)
  public
    class var instance: TObject;
    constructor Create;
        class function getInstance: TPlatformKeyFactory; static;
        function getString(keyCode: Integer): string; virtual;
        function isSubmission(input_: TInput): Boolean; virtual;
        function isDelete(input_: TInput): Boolean; virtual;
        function isBackSpace(input_: TInput): Boolean; virtual;
        function isUp(input_: TInput): Boolean; virtual;
        function isDown(input_: TInput): Boolean; virtual;
        function isEnter(input_: TInput): Boolean; virtual;
        function isLeft(input_: TInput): Boolean; virtual;
        function isRight(input_: TInput): Boolean; virtual;
  end;

implementation
uses
  PCGameKey, PCKeyFactory, NullUtil;


{AB:CODE}

constructor TPlatformKeyFactory.Create;
begin
  inherited Create;
end;
    

class function TPlatformKeyFactory.getInstance: TPlatformKeyFactory;
begin
        if (TPlatformKeyFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TPlatformKeyFactory.instance := TPlatformKeyFactory.Create();
        end;
        Exit(TPlatformKeyFactory(TJava.ToObject(TPlatformKeyFactory.instance)));
end;
    

function TPlatformKeyFactory.getString(keyCode: Integer): string;
begin
        Exit(TPCGameKey.getString(keyCode));
end;
    

function TPlatformKeyFactory.isSubmission(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isSubmission(input_));
end;
    

function TPlatformKeyFactory.isDelete(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isDelete(input_));
end;
    

function TPlatformKeyFactory.isBackSpace(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isBackSpace(input_));
end;
    

function TPlatformKeyFactory.isUp(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isUp(input_));
end;
    

function TPlatformKeyFactory.isDown(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isDown(input_));
end;
    

function TPlatformKeyFactory.isEnter(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isEnter(input_));
end;
    

function TPlatformKeyFactory.isLeft(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isLeft(input_));
end;
    

function TPlatformKeyFactory.isRight(input_: TInput): Boolean;
begin
        Exit(TPCKeyFactory.getInstance().isRight(input_));
end;

initialization
  {AB:INITIALIZATION}
  TPlatformKeyFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

