{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.caption
unit CaptionAnimationHelperBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor;

type
  {AB:TYPES}
  TCaptionAnimationHelperBase = class(TAnimation)
  public
    class var INSTANCE: TCaptionAnimationHelperBase;
    constructor Create;
        function isShowing: Boolean; virtual;
        procedure tick; virtual;
        procedure update(message: string; basicColor_: TBasicColor); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

constructor TCaptionAnimationHelperBase.Create;
begin
  inherited Create;
end;
    

function TCaptionAnimationHelperBase.isShowing: Boolean;
begin
        Exit(False);
end;
    

procedure TCaptionAnimationHelperBase.tick;
begin
end;
    

procedure TCaptionAnimationHelperBase.update(message: string; basicColor_: TBasicColor);
begin
end;
    

procedure TCaptionAnimationHelperBase.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TCaptionAnimationHelperBase.INSTANCE := TCaptionAnimationHelperBase.Create();
  {AB:END}

end.

