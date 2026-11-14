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
// package org.allbinary.direction
unit Direction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TDirection = class(TObject)
  public
    name: string;
    otherName: string;
    value: Integer;
    frameFactor: Integer;
    class var directionArray: TArray<TDirection>;
    procedure InitFields;
        constructor Create(name: string; otherName: string; value: Integer; frameFactor: Integer);
        class function getInstance(direction_: Integer): TDirection; static;
        function getValue: Integer; virtual;
        function getFrameFactor: Integer; virtual;
        function getOtherName: string; virtual;
        function getName: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TDirection.InitFields;
begin
  
  
  
  
end;
    

constructor TDirection.Create(name: string; otherName: string; value: Integer; frameFactor: Integer);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.otherName := otherName;
        Self.value := value;
        Self.frameFactor := frameFactor;
        TDirection.directionArray[value] := Self;
end;
    

class function TDirection.getInstance(direction_: Integer): TDirection;
begin
        Exit(TDirection.directionArray[direction_]);
end;
    

function TDirection.getValue: Integer;
begin
        Exit(Self.value);
end;
    

function TDirection.getFrameFactor: Integer;
begin
        Exit(Self.frameFactor);
end;
    

function TDirection.getOtherName: string;
begin
        Exit(Self.otherName);
end;
    

function TDirection.getName: string;
begin
        Exit(Self.name);
end;
    

function TDirection.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Direction: ');
        stringBuffer.append(Self.getName());
        stringBuffer.append(' Or: ');
        stringBuffer.append(Self.getOtherName());
        stringBuffer.append(' Value: ');
        stringBuffer.appendint(Self.value);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TDirection.directionArray := TJava.NewArray<TDirection>(13);
  {AB:END}

end.

