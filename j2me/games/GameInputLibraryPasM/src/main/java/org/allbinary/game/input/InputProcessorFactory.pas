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
// package org.allbinary.game.input
unit InputProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputProcessor;

type
  {AB:TYPES}
  TInputProcessorFactory = class(TObject)
  public
    inputProcessor: TInputProcessor;
    class var instance: TInputProcessorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInputProcessorFactory; static;
        function getInputProcessor: TInputProcessor; virtual;
  end;

implementation

{AB:CODE}

procedure TInputProcessorFactory.InitFields;
begin
  Self.inputProcessor := TInputProcessor.Create();
end;

constructor TInputProcessorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInputProcessorFactory.getInstance: TInputProcessorFactory;
begin
        Exit(TInputProcessorFactory.instance);
end;
    

function TInputProcessorFactory.getInputProcessor: TInputProcessor;
begin
        Exit(Self.inputProcessor);
end;

initialization
  {AB:INITIALIZATION}
  TInputProcessorFactory.instance := TInputProcessorFactory.Create();
  {AB:END}

end.

