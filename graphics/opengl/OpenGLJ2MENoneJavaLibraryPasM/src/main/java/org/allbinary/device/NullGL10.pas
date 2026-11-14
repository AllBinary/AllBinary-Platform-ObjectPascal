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
// package org.allbinary.device
unit NullGL10;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, GL;

type
  {AB:TYPES}
  TNullGL10 = class(TInterfacedObject, IGL10, IGL)
  public
    class var NULL_GL10: TNullGL10;
    function JavaObject: TObject;
    constructor Create;
  end;

implementation

{AB:CODE}

function TNullGL10.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullGL10.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNullGL10.NULL_GL10 := TNullGL10.Create();
  {AB:END}

end.

