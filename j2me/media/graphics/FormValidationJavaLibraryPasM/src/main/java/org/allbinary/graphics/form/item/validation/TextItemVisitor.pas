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
// package org.allbinary.graphics.form.item.validation
unit TextItemVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor;

type
  {AB:TYPES}
  TTextItemVisitor = class(TVisitor)
  public
        constructor Create;
        function visit(anyType: TObject): TObject; override;
  end;

implementation
uses
  BooleanFactory;


{AB:CODE}
    

constructor TTextItemVisitor.Create;
begin
    inherited Create;
end;
    

function TTextItemVisitor.visit(anyType: TObject): TObject;
var
  value: string;
begin
        value := TJava.UnboxString(TJava.ToObject(anyType));
        if (System.Length(value)) < (2) then begin
            Exit(TJava.Box(TBooleanFactory.getInstance().TRUE_));
        end else begin
            Exit(TJava.Box(TBooleanFactory.getInstance().FALSE_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

