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
// package org.allbinary.game.configuration.feature
unit GameFeatureCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Graphics;

type
  {AB:TYPES}
  TGameFeatureCanvas = class(TCanvas)
  public
        constructor Create;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}
    

constructor TGameFeatureCanvas.Create;
begin
    inherited Create;
end;
    

procedure TGameFeatureCanvas.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

