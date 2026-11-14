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
// package org.allbinary.emulator.device
unit TrueTypeFontUtilBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTrueTypeFontUtilBase = class(TObject)
  public
        constructor Create(scale: Integer);
        function getAsTextureSize(textureSize: Integer): Integer; virtual;
        function getCellSize(cellSize: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}
    

constructor TTrueTypeFontUtilBase.Create(scale: Integer);
begin
    inherited Create;
end;
    

function TTrueTypeFontUtilBase.getAsTextureSize(textureSize: Integer): Integer;
begin
        Exit(-1);
end;
    

function TTrueTypeFontUtilBase.getCellSize(cellSize: Integer): Integer;
begin
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

