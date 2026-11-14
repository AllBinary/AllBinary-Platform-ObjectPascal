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
// package org.allbinary.graphics.paint
unit StringLocationPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, LocationPaintable;

type
  {AB:TYPES}
  TStringLocationPaintable = class(TLocationPaintable)
  public
    value: string;
    procedure InitFields;
        constructor Create(value: string);
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TStringLocationPaintable.InitFields;
begin
  
end;
    

constructor TStringLocationPaintable.Create(value: string);
begin
    inherited Create;
    InitFields;
        Self.value := value;
end;
    

procedure TStringLocationPaintable.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawString(Self.value, x, y, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

