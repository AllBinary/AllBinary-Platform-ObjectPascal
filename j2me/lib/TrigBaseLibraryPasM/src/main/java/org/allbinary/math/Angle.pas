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
// package org.allbinary.math
unit Angle;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAngle = class(TObject)
  public
    value: SmallInt;
    procedure InitFields;
        constructor Create(angle: SmallInt);
        function getValue: SmallInt; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor;


{AB:CODE}

procedure TAngle.InitFields;
begin
  
end;
    

constructor TAngle.Create(angle: SmallInt);
begin
    inherited Create;
    InitFields;
        Self.value := angle;
end;
    

function TAngle.getValue: SmallInt;
begin
        Exit(Self.value);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

