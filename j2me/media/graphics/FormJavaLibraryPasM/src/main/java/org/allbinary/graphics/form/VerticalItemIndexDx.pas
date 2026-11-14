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
unit VerticalItemIndexDx;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem, ScrollCurrentSelectionForm, ItemIndexDx;

type
  {AB:TYPES}
  TVerticalItemIndexDx = class(TItemIndexDx)
  public
    scrollCurrentSelectionForm: TScrollCurrentSelectionForm;
    procedure InitFields;
        constructor Create(scrollCurrentSelectionForm_: TScrollCurrentSelectionForm);
        function getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;

implementation

{AB:CODE}

procedure TVerticalItemIndexDx.InitFields;
begin
  
end;
    

constructor TVerticalItemIndexDx.Create(scrollCurrentSelectionForm_: TScrollCurrentSelectionForm);
begin
    inherited Create;
    InitFields;
        Self.scrollCurrentSelectionForm := scrollCurrentSelectionForm_;
end;
    

// throws Exception
function TVerticalItemIndexDx.getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit(Self.scrollCurrentSelectionForm.getXVerticalForm(index, item, dx, dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

