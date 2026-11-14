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
unit NullOutputStream;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNullOutputStream = class(TOutputStream)
  public
    class var NULL_OUTPUT_STREAM: TNullOutputStream;
    constructor Create;
        procedure write(b: Integer); overload; override;
        procedure write(b: TArray<ShortInt>; off: Integer; len: Integer); overload; override;
        procedure close; override;
  end;

implementation

{AB:CODE}

constructor TNullOutputStream.Create;
begin
  inherited Create;
end;
    

// throws IOException
procedure TNullOutputStream.write(b: Integer);
begin
end;
    

// throws IOException
procedure TNullOutputStream.write(b: TArray<ShortInt>; off: Integer; len: Integer);
begin
end;
    

procedure TNullOutputStream.close;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullOutputStream.NULL_OUTPUT_STREAM := TNullOutputStream.Create();
  {AB:END}

end.

