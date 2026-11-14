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
unit LogFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Log;

type
  {AB:TYPES}
  // ActualPlatform
  TLogFactory = class(TObject)
  public
    class var LOG: TLog;
    constructor Create;
        class function getInstanceD: TLog; static;
        class function getInstance(specialMessage: string; anyType: TObject; functionName: string; exception: TObject): TLog; static;
        class function getInstanceF(specialMessage: string; anyType: TObject; functionName: string): TLog; static;
  end;

implementation
uses
  NullUtil, StringUtil;


{AB:CODE}

constructor TLogFactory.Create;
begin
  inherited Create;
end;
    

class function TLogFactory.getInstanceD: TLog;
var
  stringUtil_: TStringUtil;
  nullUtil_: TNullUtil;
begin
        stringUtil_ := TStringUtil.getInstance();
        nullUtil_ := TNullUtil.getInstance();
        Exit(TLog.Create(stringUtil_.EMPTY_STRING, TJava.Box(nullUtil_.NULL_OBJECT), stringUtil_.EMPTY_STRING, TJava.Box(nullUtil_.NULL_OBJECT)));
end;
    

class function TLogFactory.getInstance(specialMessage: string; anyType: TObject; functionName: string; exception: TObject): TLog;
begin
        Exit(TLogFactory.LOG);
end;
    

class function TLogFactory.getInstanceF(specialMessage: string; anyType: TObject; functionName: string): TLog;
begin
        Exit(TLogFactory.LOG);
end;

initialization
  {AB:INITIALIZATION}
  TLogFactory.LOG := TLog.Create(TStringUtil.getInstance().EMPTY_STRING, TJava.Box(TNullUtil.getInstance().NULL_OBJECT), TStringUtil.getInstance().EMPTY_STRING, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
  {AB:END}

end.

