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
// package org.allbinary.logic.control.validate
unit ValidatorBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, ABHashtable, ValidatorBaseInterface;

type
  {AB:TYPES}
  TValidatorBase = class(TInterfacedObject, IValidatorBaseInterface)
  public
    class var instance: TValidatorBase;
    function JavaObject: TObject;
        class function getInstance: TValidatorBase; static;
        constructor Create;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toHashtable: TABHashtable<TObject, TObject>; virtual;
        function toList: TBasicArrayList; virtual;
  end;

implementation
uses
  StdUtil, BooleanFactory, StringUtil, BasicArrayListUtil;


{AB:CODE}

function TValidatorBase.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TValidatorBase.getInstance: TValidatorBase;
begin
        Exit(TValidatorBase.instance);
end;
    

constructor TValidatorBase.Create;
begin
    inherited Create;
end;
    

function TValidatorBase.isValid: Boolean;
begin
        Exit(TBooleanFactory.getInstance().TRUE_);
end;
    

function TValidatorBase.validationInfo: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TValidatorBase.toHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

function TValidatorBase.toList: TBasicArrayList;
begin
        Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
end;

initialization
  {AB:INITIALIZATION}
  TValidatorBase.instance := TValidatorBase.Create();
  {AB:END}

end.

