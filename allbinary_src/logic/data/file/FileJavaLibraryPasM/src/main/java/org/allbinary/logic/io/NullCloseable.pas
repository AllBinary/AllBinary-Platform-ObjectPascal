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
// package org.allbinary.logic.io
unit NullCloseable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNullCloseable = class(TInterfacedObject, ICloseable)
  public
    class var NULL_CLOSEABLE: TNullCloseable;
    function JavaObject: TObject;
    constructor Create;
        procedure close; virtual;
  end;

implementation

{AB:CODE}

function TNullCloseable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullCloseable.Create;
begin
  inherited Create;
end;
    

// throws IOException
procedure TNullCloseable.close;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullCloseable.NULL_CLOSEABLE := TNullCloseable.Create();
  {AB:END}

end.

