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
unit ItemPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics;

type
  {AB:TYPES}
  TItemPaintable = class(TObject)
  public
    constructor Create;
        procedure paint(graphics_: TGraphics; currentIndex: Integer; x: Integer; y: Integer); virtual;
  end;

implementation

{AB:CODE}

constructor TItemPaintable.Create;
begin
  inherited Create;
end;
    

procedure TItemPaintable.paint(graphics_: TGraphics; currentIndex: Integer; x: Integer; y: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

