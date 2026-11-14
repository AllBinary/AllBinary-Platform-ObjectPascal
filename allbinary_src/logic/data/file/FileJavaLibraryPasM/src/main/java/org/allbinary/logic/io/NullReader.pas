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
unit NullReader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNullReader = class(TReader)
  public
    class var NULL_READER: TNullReader;
    constructor Create;
        function read: Integer; overload; override;
        function read(cbuf: TArray<WideChar>; off: Integer; len: Integer): Integer; overload; override;
        function ready: Boolean; override;
        function skip(n: Int64): Int64; override;
        procedure close; override;
  end;

implementation

{AB:CODE}

constructor TNullReader.Create;
begin
  inherited Create;
end;
    

// throws IOException
function TNullReader.read: Integer;
begin
        Exit(-1);
end;
    

// throws IOException
function TNullReader.read(cbuf: TArray<WideChar>; off: Integer; len: Integer): Integer;
begin
        Exit(-1);
end;
    

// throws IOException
function TNullReader.ready: Boolean;
begin
        Exit(False);
end;
    

// throws IOException
function TNullReader.skip(n: Int64): Int64;
begin
        Exit(0);
end;
    

procedure TNullReader.close;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullReader.NULL_READER := TNullReader.Create();
  {AB:END}

end.

