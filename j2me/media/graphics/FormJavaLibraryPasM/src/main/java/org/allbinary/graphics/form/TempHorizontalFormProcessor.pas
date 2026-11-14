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
unit TempHorizontalFormProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, ScrollCurrentSelectionForm;

type
  {AB:TYPES}
  TTempHorizontalFormProcessor = class(TProcessor)
  public
    scrollCurrentSelectionForm: TScrollCurrentSelectionForm;
    procedure InitFields;
        constructor Create(scrollCurrentSelectionForm_: TScrollCurrentSelectionForm);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TTempHorizontalFormProcessor.InitFields;
begin
  
end;
    

constructor TTempHorizontalFormProcessor.Create(scrollCurrentSelectionForm_: TScrollCurrentSelectionForm);
begin
    inherited Create;
    InitFields;
        Self.scrollCurrentSelectionForm := scrollCurrentSelectionForm_;
end;
    

// throws Exception
procedure TTempHorizontalFormProcessor.process;
begin
        Self.scrollCurrentSelectionForm.processTempHorizontalForm();
        Self.scrollCurrentSelectionForm.processor := TProcessor.getInstance();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

