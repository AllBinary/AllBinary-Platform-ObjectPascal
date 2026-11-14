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
// package org.allbinary.logic.util.cache
unit CachePolicyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CachePolicy;

type
  {AB:TYPES}
  TCachePolicyFactory = class(TObject)
  public
    NAME: string;
    MAX_TIME_THOUSAND_MAX: TCachePolicy;
    THIRTY_MINUTES_TEN_THOUSAND_MAX: TCachePolicy;
    THIRTY_MINUTES_FIFTY_THOUSAND_MAX: TCachePolicy;
    ONE_MINUTE_FIVE_MAX: TCachePolicy;
    ONE_MINUTE_TEN_MAX: TCachePolicy;
    ONE_MINUTE_ONE_HUNDRED_MAX: TCachePolicy;
    class var instance: TCachePolicyFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCachePolicyFactory; static;
  end;

implementation

{AB:CODE}

procedure TCachePolicyFactory.InitFields;
begin
  Self.NAME := 'lru';
  Self.MAX_TIME_THOUSAND_MAX := TCachePolicy.Create(Self.NAME, High(Int64), 1000);
  Self.THIRTY_MINUTES_TEN_THOUSAND_MAX := TCachePolicy.Create(Self.NAME, ((1000) * (60)) * (30), 10000);
  Self.THIRTY_MINUTES_FIFTY_THOUSAND_MAX := TCachePolicy.Create(Self.NAME, ((1000) * (60)) * (30), 100000);
  Self.ONE_MINUTE_FIVE_MAX := TCachePolicy.Create(Self.NAME, ((1000) * (60)) * (1), 5);
  Self.ONE_MINUTE_TEN_MAX := TCachePolicy.Create(Self.NAME, ((1000) * (60)) * (1), 10);
  Self.ONE_MINUTE_ONE_HUNDRED_MAX := TCachePolicy.Create(Self.NAME, ((1000) * (60)) * (1), 100);
end;

constructor TCachePolicyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCachePolicyFactory.getInstance: TCachePolicyFactory;
begin
        Exit(TCachePolicyFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCachePolicyFactory.instance := TCachePolicyFactory.Create();
  {AB:END}

end.

