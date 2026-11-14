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
unit SimpleCompositeShaderUpdater;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompositeShaderUpdater;

type
  {AB:TYPES}
  TSimpleCompositeShaderUpdater = class(TCompositeShaderUpdater)
  public
        constructor Create(uniformBlockArray: TArray<string>; uniformArray: TArray<string>; attributeArray: TArray<string>; attributeHandleArray: TArray<Integer>);
  end;

implementation

{AB:CODE}
    

constructor TSimpleCompositeShaderUpdater.Create(uniformBlockArray: TArray<string>; uniformArray: TArray<string>; attributeArray: TArray<string>; attributeHandleArray: TArray<Integer>);
begin
        inherited Create(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

