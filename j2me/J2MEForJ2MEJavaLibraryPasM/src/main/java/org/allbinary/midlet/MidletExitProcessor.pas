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
unit MidletExitProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MIDlet, Processor;

type
  {AB:TYPES}
  TMidletExitProcessor = class(TProcessor)
  public
    midlet: TMIDlet;
    procedure InitFields;
        constructor Create(midlet_: TMIDlet);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TMidletExitProcessor.InitFields;
begin
  
end;
    

constructor TMidletExitProcessor.Create(midlet_: TMIDlet);
begin
    inherited Create;
    InitFields;
        Self.midlet := midlet_;
end;
    

// throws Exception
procedure TMidletExitProcessor.process;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

