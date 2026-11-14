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
// package org.allbinary.game.displayable.canvas
unit OverlayPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, InitUpdatePaintable, LogUtil;

type
  {AB:TYPES}
  TOverlayPaintable = class(TInitUpdatePaintable)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        procedure update; override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TOverlayPaintable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TOverlayPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOverlayPaintable.update;
var
  commonStrings_: TCommonStrings;
begin
        try
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

procedure TOverlayPaintable.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

