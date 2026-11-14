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
// package org.allbinary.animation
unit NullIndexedAnimationInner;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, NullIndexedAnimation;

type
  {AB:TYPES}
  TNullIndexedAnimationInner = class(TNullIndexedAnimation)
  public
        constructor Create;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  IndexedAnimationBehavior;


{AB:CODE}
    

constructor TNullIndexedAnimationInner.Create;
begin
        inherited Create(TIndexedAnimationBehavior.Create(1, 250));
end;
    

procedure TNullIndexedAnimationInner.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

