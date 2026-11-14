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
// package org.allbinary.game.ag.layer.weapon.mine
unit MineWeaponResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGameResources;

type
  {AB:TYPES}
  TMineWeaponResources = class(TBasicGameResources)
  public
    DROP_TEXT_RESOURCE: string;
    DROP_RESOURCE: string;
    DROP_ICON_RESOURCE: string;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TMineWeaponResources; static;
        constructor Create;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

procedure TMineWeaponResources.InitFields;
begin
  Self.DROP_TEXT_RESOURCE := '/mine_drop_text_20_by_20.png';
  Self.DROP_RESOURCE := '/mine_drop_20_by_20.png';
  Self.DROP_ICON_RESOURCE := '/mine_drop_icon_20_by_20.png';
end;
    

class function TMineWeaponResources.getInstance: TMineWeaponResources;
begin
        if (TMineWeaponResources.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TMineWeaponResources.instance := TMineWeaponResources.Create();
        end;
        Exit(TMineWeaponResources(TJava.ToObject(TMineWeaponResources.instance)));
end;
    

constructor TMineWeaponResources.Create;
var
  ROOT: string;
  SMALL: string;
  MEDIUM: string;
  SIZE_FOUR: string;
  SIZE_FIVE: string;
  SIZE_SIX: string;
  SIZE: TArray<string>;
begin
    inherited Create;
    InitFields;
        ROOT := '/mine';
        SMALL := '_20_by_20.png';
        MEDIUM := SMALL;
        SIZE_FOUR := SMALL;
        SIZE_FIVE := SMALL;
        SIZE_SIX := SMALL;
        SIZE := TArray<string>.Create(SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX);
        inherited init(ROOT, SIZE);
end;

initialization
  {AB:INITIALIZATION}
  TMineWeaponResources.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

