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
unit FormPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, PaintableForm;

type
  {AB:TYPES}
  TFormPaintable = class(TPaintable)
  public
    form: TPaintableForm;
    procedure InitFields;
        constructor Create(form: TPaintableForm);
        procedure paint(graphics_: TGraphics); override;
        function getForm: TPaintableForm; virtual;
  end;

implementation

{AB:CODE}

procedure TFormPaintable.InitFields;
begin
  
end;
    

constructor TFormPaintable.Create(form: TPaintableForm);
begin
    inherited Create;
    InitFields;
        Self.form := form;
end;
    

procedure TFormPaintable.paint(graphics_: TGraphics);
begin
        Self.form.paint(graphics_);
end;
    

function TFormPaintable.getForm: TPaintableForm;
begin
        Exit(Self.form);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

