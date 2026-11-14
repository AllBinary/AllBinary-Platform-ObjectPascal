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
// package org.allbinary.logic.math
unit MathData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMathData = class(TObject)
  public
    EQUALS: string;
    PLUS: string;
    GREATER_THAN: string;
    MINUS: string;
    DIVIDE: string;
    MULTIPLY: string;
    class var instance: TMathData;
    procedure InitFields;
        class function getInstance: TMathData; static;
        constructor Create;
  end;

implementation
uses
  CommonPhoneStrings, CommonSeps;


{AB:CODE}

procedure TMathData.InitFields;
begin
  
  Self.PLUS := '+';
  Self.GREATER_THAN := '>';
  
  
  
end;
    

class function TMathData.getInstance: TMathData;
begin
        Exit(TMathData.instance);
end;
    

constructor TMathData.Create;
var
  commonSeps_: TCommonSeps;
begin
    inherited Create;
    InitFields;
        commonSeps_ := TCommonSeps.getInstance();
        Self.EQUALS := commonSeps_.EQUALS;
        Self.MINUS := commonSeps_.DASH;
        Self.DIVIDE := commonSeps_.FORWARD_SLASH;
        Self.MULTIPLY := TCommonPhoneStrings.getInstance().STAR;
end;

initialization
  {AB:INITIALIZATION}
  TMathData.instance := TMathData.Create();
  {AB:END}

end.

