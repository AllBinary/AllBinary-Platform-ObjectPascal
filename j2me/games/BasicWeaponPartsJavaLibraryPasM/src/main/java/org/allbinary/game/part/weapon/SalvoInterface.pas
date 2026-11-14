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
// package org.allbinary.game.part.weapon
unit SalvoInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeaponProperties, ScoreableInterface, AllBinaryLayerManager;

type
  {AB:TYPES}
  ISalvoInterface = interface(IJavaObject) ['ISalvoInterface']
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt);
        procedure processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface);
  end;
  TSalvoInterface = ISalvoInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

