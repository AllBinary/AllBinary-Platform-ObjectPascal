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
// package org.allbinary.logic.math.vector
unit Vertex;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicDecimal;

type
  {AB:TYPES}
  TVertex = class(TObject)
  public
    x: TBasicDecimal;
    y: TBasicDecimal;
    z: TBasicDecimal;
    procedure InitFields;
        constructor Create;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, PositionStrings, CommonSeps;


{AB:CODE}

procedure TVertex.InitFields;
begin
  Self.x := TBasicDecimal.Create(0);
  Self.y := TBasicDecimal.Create(0);
  Self.z := TBasicDecimal.Create(0);
end;
    

constructor TVertex.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TVertex.toString: string;
var
  stringBuffer: TStringMaker;
  positionStrings_: TPositionStrings;
begin
        stringBuffer := TStringMaker.Create();
        positionStrings_ := TPositionStrings.getInstance();
        stringBuffer.append(positionStrings_.X_LABEL);
        stringBuffer.append(Self.x.toString());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings_.Y_LABEL);
        stringBuffer.append(Self.y.toString());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings_.Z_LABEL);
        stringBuffer.append(Self.z.toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

