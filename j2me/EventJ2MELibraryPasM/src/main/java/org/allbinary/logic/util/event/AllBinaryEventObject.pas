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
// package org.allbinary.logic.util.event
unit AllBinaryEventObject;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAllBinaryEventObject = class(TObject)
  public
    source: TObject;
    class var NULL_EVENT: TAllBinaryEventObject;
    procedure InitFields;
        constructor Create(anyType: TObject);
        function getSource: TObject; virtual;
        procedure setSource(source: TObject); virtual;
  end;

implementation
uses
  JsType, NullUtil, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TAllBinaryEventObject.InitFields;
begin
  
end;
    

constructor TAllBinaryEventObject.Create(anyType: TObject);
begin
    inherited Create;
    InitFields;
        Self.source := TJava.Box(anyType);
end;
    

function TAllBinaryEventObject.getSource: TObject;
begin
        Exit(TJava.Box(Self.source));
end;
    

procedure TAllBinaryEventObject.setSource(source: TObject);
begin
        Self.source := TJava.Box(source);
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryEventObject.NULL_EVENT := TAllBinaryEventObject.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
  {AB:END}

end.

