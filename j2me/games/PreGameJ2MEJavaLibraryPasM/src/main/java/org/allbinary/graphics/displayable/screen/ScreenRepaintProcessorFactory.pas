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
// package org.allbinary.graphics.displayable.screen
unit ScreenRepaintProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable, Processor;

type
  {AB:TYPES}
  TScreenRepaintProcessorFactory = class(TObject)
  public
    class var instance: TScreenRepaintProcessorFactory;
        class function getInstance: TScreenRepaintProcessorFactory; static;
        constructor Create;
        function create_(displayable_: TDisplayable): TProcessor; virtual;
  end;

implementation
uses
  ScreenRepaintProcessor, J2MEUtil;


{AB:CODE}
    

class function TScreenRepaintProcessorFactory.getInstance: TScreenRepaintProcessorFactory;
begin
        Exit(TScreenRepaintProcessorFactory.instance);
end;
    

constructor TScreenRepaintProcessorFactory.Create;
begin
    inherited Create;
end;
    

function TScreenRepaintProcessorFactory.create_(displayable_: TDisplayable): TProcessor;
begin
        if not (TJ2MEUtil.isJ2ME()) then begin
            Exit(TScreenRepaintProcessor.Create(displayable_));
        end else begin
            Exit(TProcessor.getInstance());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TScreenRepaintProcessorFactory.instance := TScreenRepaintProcessorFactory.Create();
  {AB:END}

end.

