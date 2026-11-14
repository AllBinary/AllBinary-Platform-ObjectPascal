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
// package org.allbinary.game.layer
unit SpriteFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Sprite, LogUtil, SpriteFactoryInterface;

type
  {AB:TYPES}
  TSpriteFactory = class(TInterfacedObject, ISpriteFactoryInterface)
  public
    logUtil: TLogUtil;
    class var instance: TSpriteFactory;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TSpriteFactory; static;
        function createSprite(image_: TImage; frameWidth: Integer; frameHeight: Integer): TSprite; virtual;
  end;

implementation

{AB:CODE}

procedure TSpriteFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TSpriteFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TSpriteFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSpriteFactory.getInstance: TSpriteFactory;
begin
        Exit(TSpriteFactory.instance);
end;
    

function TSpriteFactory.createSprite(image_: TImage; frameWidth: Integer; frameHeight: Integer): TSprite;
begin
        Exit(TSprite.Create(image_, frameWidth, frameHeight));
end;

initialization
  {AB:INITIALIZATION}
  TSpriteFactory.instance := TSpriteFactory.Create();
  {AB:END}

end.

