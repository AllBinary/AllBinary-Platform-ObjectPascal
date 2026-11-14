{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.image
unit AnimationFactoryInitializationVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAnimationFactoryInitializationVisitor = class(TObject)
  public
    width: Integer;
    height: Integer;
    dx: Integer;
    dy: Integer;
    originalDx: Integer;
    originalDy: Integer;
    procedure InitFields;
    constructor Create;
        procedure visit; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, PositionStrings, CommonLabels, CommonSeps;


{AB:CODE}

procedure TAnimationFactoryInitializationVisitor.InitFields;
begin
  
  
  
  
  
  
end;

constructor TAnimationFactoryInitializationVisitor.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAnimationFactoryInitializationVisitor.visit;
begin
end;
    

function TAnimationFactoryInitializationVisitor.toString: string;
var
  commonSeps_: TCommonSeps;
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
begin
        commonSeps_ := TCommonSeps.getInstance();
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TPositionStrings.getInstance().DX_LABEL).appendfloat(Self.dx);
        stringBuffer.append(TPositionStrings.getInstance().DY_LABEL).appendfloat(Self.dy);
        stringBuffer.append(commonLabels_.WIDTH_LABEL);
        stringBuffer.appendint(Self.width);
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Self.height);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

