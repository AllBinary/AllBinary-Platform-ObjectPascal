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
unit ScreenRepaintProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable, Processor;

type
  {AB:TYPES}
  TScreenRepaintProcessor = class(TProcessor)
  public
    displayable: TDisplayable;
    procedure InitFields;
        constructor Create(displayable_: TDisplayable);
        procedure process; override;
  end;

implementation
uses
  ScreenRepaintUtil;


{AB:CODE}

procedure TScreenRepaintProcessor.InitFields;
begin
  
end;
    

constructor TScreenRepaintProcessor.Create(displayable_: TDisplayable);
begin
    inherited Create;
    InitFields;
        Self.displayable := displayable_;
end;
    

// throws Exception
procedure TScreenRepaintProcessor.process;
begin
        TScreenRepaintUtil.repaint(Self.displayable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

