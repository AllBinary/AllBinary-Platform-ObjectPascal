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
unit BasicColorArrayIndexer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CircularIndexUtil, BasicColor;

type
  {AB:TYPES}
  TBasicColorArrayIndexer = class(TObject)
  public
    basicColorArray: TArray<TBasicColor>;
    circularIndexUtil: TCircularIndexUtil;
    procedure InitFields;
        constructor Create(basicColorArray: TArray<TBasicColor>);
        procedure next; virtual;
        function get: TBasicColor; virtual;
        function getBasicColorArray: TArray<TBasicColor>; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor;


{AB:CODE}

procedure TBasicColorArrayIndexer.InitFields;
begin
  
  
end;
    

constructor TBasicColorArrayIndexer.Create(basicColorArray: TArray<TBasicColor>);
begin
    inherited Create;
    InitFields;
        Self.basicColorArray := basicColorArray;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(System.Length(Self.basicColorArray));
end;
    

procedure TBasicColorArrayIndexer.next;
begin
        Self.circularIndexUtil.next();
end;
    

function TBasicColorArrayIndexer.get: TBasicColor;
begin
        Exit(Self.basicColorArray[Self.circularIndexUtil.getIndex()]);
end;
    

function TBasicColorArrayIndexer.getBasicColorArray: TArray<TBasicColor>;
begin
        Exit(Self.basicColorArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

