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
// package org.allbinary.graphics.form
unit VerticalFormProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, ScrollCurrentSelectionForm;

type
  {AB:TYPES}
  TVerticalFormProcessor = class(TProcessor)
  public
    scrollCurrentSelectionForm: TScrollCurrentSelectionForm;
    procedure InitFields;
        constructor Create(scrollCurrentSelectionForm_: TScrollCurrentSelectionForm);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TVerticalFormProcessor.InitFields;
begin
  
end;
    

constructor TVerticalFormProcessor.Create(scrollCurrentSelectionForm_: TScrollCurrentSelectionForm);
begin
    inherited Create;
    InitFields;
        Self.scrollCurrentSelectionForm := scrollCurrentSelectionForm_;
end;
    

// throws Exception
procedure TVerticalFormProcessor.process;
begin
        Self.scrollCurrentSelectionForm.processVerticalForm();
        Self.scrollCurrentSelectionForm.processor := TProcessor.getInstance();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

