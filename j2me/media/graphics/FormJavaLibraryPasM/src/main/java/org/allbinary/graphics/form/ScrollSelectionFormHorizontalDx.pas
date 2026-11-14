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
unit ScrollSelectionFormHorizontalDx;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem, ScrollSelectionForm, ItemIndexDx;

type
  {AB:TYPES}
  TScrollSelectionFormHorizontalDx = class(TItemIndexDx)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(scrollSelectionForm_: TScrollSelectionForm);
        function getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;

implementation

{AB:CODE}

procedure TScrollSelectionFormHorizontalDx.InitFields;
begin
  
end;
    

constructor TScrollSelectionFormHorizontalDx.Create(scrollSelectionForm_: TScrollSelectionForm);
begin
    inherited Create;
    InitFields;
        Self.scrollSelectionForm := scrollSelectionForm_;
end;
    

// throws Exception
function TScrollSelectionFormHorizontalDx.getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit(Self.scrollSelectionForm.getSelectedIndexForPointHorizontalDx(index, item, dx, dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

