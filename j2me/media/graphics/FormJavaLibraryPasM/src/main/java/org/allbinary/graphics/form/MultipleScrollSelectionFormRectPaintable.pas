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
unit MultipleScrollSelectionFormRectPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, MultipleScrollSelectionHorizontalForm;

type
  {AB:TYPES}
  TMultipleScrollSelectionFormRectPaintable = class(TPaintable)
  public
    multipleScrollSelectionForm: TMultipleScrollSelectionHorizontalForm;
    procedure InitFields;
        constructor Create(multipleScrollSelectionForm: TMultipleScrollSelectionHorizontalForm);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TMultipleScrollSelectionFormRectPaintable.InitFields;
begin
  
end;
    

constructor TMultipleScrollSelectionFormRectPaintable.Create(multipleScrollSelectionForm: TMultipleScrollSelectionHorizontalForm);
begin
    inherited Create;
    InitFields;
        Self.multipleScrollSelectionForm := multipleScrollSelectionForm;
end;
    

procedure TMultipleScrollSelectionFormRectPaintable.paint(graphics_: TGraphics);
begin
        Self.multipleScrollSelectionForm.fillRect(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

