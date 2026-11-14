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
// package org.allbinary.canvas
unit Processor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TProcessor = class(TObject)
  public
    class var SINGLETON: TProcessor;
    constructor Create;
        class function getInstance: TProcessor; static;
        procedure process; virtual;
        procedure processt(timeDelta: Int64); virtual;
  end;

implementation

{AB:CODE}

constructor TProcessor.Create;
begin
  inherited Create;
end;
    

class function TProcessor.getInstance: TProcessor;
begin
        Exit(TProcessor.SINGLETON);
end;
    

// throws Exception
procedure TProcessor.process;
begin
end;
    

// throws Exception
procedure TProcessor.processt(timeDelta: Int64);
begin
end;

initialization
  {AB:INITIALIZATION}
  TProcessor.SINGLETON := TProcessor.Create();
  {AB:END}

end.

