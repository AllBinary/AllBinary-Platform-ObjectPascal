{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.math
unit NamedAngle;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Angle;

type
  {AB:TYPES}
  TNamedAngle = class(TAngle)
  public
    name: string;
    procedure InitFields;
        constructor Create(angle: SmallInt; name: string);
  end;

implementation
uses
  JsType, JsProperty, JsConstructor;


{AB:CODE}

procedure TNamedAngle.InitFields;
begin
  
end;
    

constructor TNamedAngle.Create(angle: SmallInt; name: string);
begin
        inherited Create(angle);
        InitFields;
        Self.name := name;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

