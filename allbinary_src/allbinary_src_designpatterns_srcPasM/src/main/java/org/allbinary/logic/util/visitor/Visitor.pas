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
// package org.allbinary.logic.util.visitor
unit Visitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NullUtil, VisitorInterface;

type
  {AB:TYPES}
  TVisitor = class(TInterfacedObject, IVisitorInterface)
  public
    nullUtil: TNullUtil;
    class var instance: TVisitor;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        function visit(anyType: TObject): TObject; virtual;
        class function getInstance: TVisitor; static;
  end;

implementation

{AB:CODE}

procedure TVisitor.InitFields;
begin
  Self.nullUtil := TNullUtil.getInstance();
end;

function TVisitor.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TVisitor.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TVisitor.visit(anyType: TObject): TObject;
begin
        Exit(TJava.Box(Self.nullUtil.NULL_OBJECT));
end;
    

class function TVisitor.getInstance: TVisitor;
begin
        Exit(TVisitor.instance);
end;

initialization
  {AB:INITIALIZATION}
  TVisitor.instance := TVisitor.Create();
  {AB:END}

end.

