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
unit NullWriter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNullWriter = class(TWriter)
  public
    class var NULL_WRITER: TNullWriter;
    constructor Create;
        procedure write(c: Integer); overload; override;
        procedure write(cbuf: TArray<WideChar>; off: Integer; len: Integer); overload; override;
        procedure write(str: string); overload; override;
        procedure write(str: string; off: Integer; len: Integer); overload; override;
        procedure flush; override;
        procedure close; override;
  end;

implementation

{AB:CODE}

constructor TNullWriter.Create;
begin
  inherited Create;
end;
    

// throws IOException
procedure TNullWriter.write(c: Integer);
begin
end;
    

// throws IOException
procedure TNullWriter.write(cbuf: TArray<WideChar>; off: Integer; len: Integer);
begin
end;
    

// throws IOException
procedure TNullWriter.write(str: string);
begin
end;
    

// throws IOException
procedure TNullWriter.write(str: string; off: Integer; len: Integer);
begin
end;
    

// throws IOException
procedure TNullWriter.flush;
begin
end;
    

// throws IOException
procedure TNullWriter.close;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullWriter.NULL_WRITER := TNullWriter.Create();
  {AB:END}

end.

