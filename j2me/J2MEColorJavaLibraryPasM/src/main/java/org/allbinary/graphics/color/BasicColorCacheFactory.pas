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
// package org.allbinary.graphics.color
unit BasicColorCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicColor;

type
  {AB:TYPES}
  TBasicColorCacheFactory = class(TObject)
  public
    hashtable: TABHashtable<TObject, TObject>;
    class var instance: TBasicColorCacheFactory;
    procedure InitFields;
        class function getInstance: TBasicColorCacheFactory; static;
        constructor Create;
        procedure add(basicDefaultColor: TBasicColor); virtual;
        function getAndOrCreate(integer_: Integer): TBasicColor; virtual;
  end;

implementation
uses
  BasicColorFactory, StdUtil;


{AB:CODE}

procedure TBasicColorCacheFactory.InitFields;
begin
  Self.hashtable := TStdUtil.getInstance().createHashtable();
end;
    

class function TBasicColorCacheFactory.getInstance: TBasicColorCacheFactory;
begin
        Exit(TBasicColorCacheFactory.instance);
end;
    

constructor TBasicColorCacheFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicColorCacheFactory.add(basicDefaultColor: TBasicColor);
begin
        Self.hashtable.put(TJava.Box(basicDefaultColor.intValue()), TJava.Box(basicDefaultColor));
end;
    

function TBasicColorCacheFactory.getAndOrCreate(integer_: Integer): TBasicColor;
var
  basicColor_: TBasicColor;
begin
    TJava.MonitorEnter(Self);
    try
        basicColor_ := TBasicColor(TJava.ToObject(Self.hashtable.get(TJava.Box(integer_))));
        if (basicColor_) = (nil) then begin
            basicColor_ := TBasicColorFactory.getInstance().createInstance((integer_));
            Self.hashtable.put(TJava.Box(integer_), TJava.Box(basicColor_));
        end;
        Exit(basicColor_);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TBasicColorCacheFactory.instance := TBasicColorCacheFactory.Create();
  {AB:END}

end.

