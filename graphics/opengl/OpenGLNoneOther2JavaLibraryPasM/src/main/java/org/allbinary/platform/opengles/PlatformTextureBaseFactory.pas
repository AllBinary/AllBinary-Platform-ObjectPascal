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
// package org.allbinary.platform.opengles
unit PlatformTextureBaseFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, CommonStrings;

type
  {AB:TYPES}
  TPlatformTextureBaseFactory = class(TObject)
  public
    commonStrings: TCommonStrings;
    class var NULL_PLATFORM_TEXTURE_BASE_FACTORY: TPlatformTextureBaseFactory;
    procedure InitFields;
    constructor Create;
        procedure load(gl: IGL10; target: Integer; level: Integer; image_: TImage; border: Integer; flip: Boolean); virtual;
  end;

implementation

{AB:CODE}

procedure TPlatformTextureBaseFactory.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TPlatformTextureBaseFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TPlatformTextureBaseFactory.load(gl: IGL10; target: Integer; level: Integer; image_: TImage; border: Integer; flip: Boolean);
begin
end;

initialization
  {AB:INITIALIZATION}
  TPlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY := TPlatformTextureBaseFactory.Create();
  {AB:END}

end.

