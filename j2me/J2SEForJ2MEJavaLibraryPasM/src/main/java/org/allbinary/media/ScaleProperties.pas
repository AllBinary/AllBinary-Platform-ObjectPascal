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
// package org.allbinary.media
unit ScaleProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TScaleProperties = class(TObject)
  public
    scaleX: Single;
    scaleY: Single;
    scaleWidth: Integer;
    scaleHeight: Integer;
    shouldScale: Boolean;
    class var instance: TScaleProperties;
    procedure InitFields;
    constructor Create;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels;


{AB:CODE}

procedure TScaleProperties.InitFields;
begin
  
  
  
  
  
end;

constructor TScaleProperties.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TScaleProperties.toString: string;
begin
        Exit(TStringMaker.Create().append(TCommonLabels.getInstance().COLON_SEP).appendboolean(Self.shouldScale).append('scaleX: ').appendfloat(Self.scaleX).append('scaleY: ').appendfloat(Self.scaleY).append('scaleWidth: ').appendint(Self.scaleWidth).append('scaleHeight: ').appendint(Self.scaleHeight).toString());
end;

initialization
  {AB:INITIALIZATION}
  TScaleProperties.instance := TScaleProperties.Create();
  {AB:END}

end.

