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
unit AllCommandsVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor;

type
  {AB:TYPES}
  TAllCommandsVisitor = class(TVisitor)
  public
        constructor Create;
        function visit(anyType: TObject): TObject; override;
  end;

implementation
uses
  BooleanFactory;


{AB:CODE}
    

constructor TAllCommandsVisitor.Create;
begin
    inherited Create;
end;
    

function TAllCommandsVisitor.visit(anyType: TObject): TObject;
begin
        Exit(TJava.Box(TBooleanFactory.getInstance().TRUE_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

