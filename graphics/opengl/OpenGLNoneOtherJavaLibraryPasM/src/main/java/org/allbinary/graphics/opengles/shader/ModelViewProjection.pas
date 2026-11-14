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
// package org.allbinary.graphics.opengles.shader
unit ModelViewProjection;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TModelViewProjection = class(TObject)
  public
    class var instance: TModelViewProjection;
    constructor Create;
        class function getInstance: TModelViewProjection; static;
        function get: TArray<Single>; virtual;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

constructor TModelViewProjection.Create;
begin
  inherited Create;
end;
    

class function TModelViewProjection.getInstance: TModelViewProjection;
begin
        Exit(TModelViewProjection.instance);
end;
    

function TModelViewProjection.get: TArray<Single>;
begin
        Exit(TNullUtil.getInstance().NULL_FLOAT_ARRAY);
end;

initialization
  {AB:INITIALIZATION}
  TModelViewProjection.instance := TModelViewProjection.Create();
  {AB:END}

end.

