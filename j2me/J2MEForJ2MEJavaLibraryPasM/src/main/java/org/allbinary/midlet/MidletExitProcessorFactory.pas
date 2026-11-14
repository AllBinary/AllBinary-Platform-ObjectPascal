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
// package org.allbinary.midlet
unit MidletExitProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MIDlet, Processor;

type
  {AB:TYPES}
  TMidletExitProcessorFactory = class(TObject)
  public
    class var instance: TMidletExitProcessorFactory;
    constructor Create;
        class function getInstance: TMidletExitProcessorFactory; static;
        function getExitInstance(midlet_: TMIDlet): TProcessor; virtual;
  end;

implementation
uses
  MidletExitProcessor, AppletUtil, J2MEUtil;


{AB:CODE}

constructor TMidletExitProcessorFactory.Create;
begin
  inherited Create;
end;
    

class function TMidletExitProcessorFactory.getInstance: TMidletExitProcessorFactory;
begin
        Exit(TMidletExitProcessorFactory.instance);
end;
    

function TMidletExitProcessorFactory.getExitInstance(midlet_: TMIDlet): TProcessor;
begin
        if (TAppletUtil.isAppletLoader(TJava.Box(midlet_))) or (TJ2MEUtil.isJ2ME()) then begin
            Exit(TProcessor.getInstance());
        end else begin
            Exit(TMidletExitProcessor.Create(midlet_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  TMidletExitProcessorFactory.instance := TMidletExitProcessorFactory.Create();
  {AB:END}

end.

