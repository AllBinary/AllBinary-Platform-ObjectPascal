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
// package org.allbinary.game.layer.special
unit SpecialGameInputInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, PaintableInterface, AllBinaryLayerManager;

type
  {AB:TYPES}
  ISpecialGameInputInterface = interface(IPaintableInterface) ['ISpecialGameInputInterface']
        procedure up;
        procedure down;
        procedure right;
        procedure left;
        procedure strafeLeft;
        procedure strafeRight;
        procedure fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
        procedure special1(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
        procedure special2(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
        procedure special3(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
        procedure special4(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
        procedure special5(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
  end;
  TSpecialGameInputInterface = ISpecialGameInputInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

