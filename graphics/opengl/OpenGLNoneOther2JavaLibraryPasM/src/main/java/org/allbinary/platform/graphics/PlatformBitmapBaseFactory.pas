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
// package org.allbinary.platform.graphics
unit PlatformBitmapBaseFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PlatformBitmapBase;

type
  {AB:TYPES}
  TPlatformBitmapBaseFactory = class(TObject)
  public
    class var NULL_PLATFORM_BITMAP_BASE_FACTORY: TPlatformBitmapBaseFactory;
    constructor Create;
        function createBitmap(image_: TImage): TPlatformBitmapBase; virtual;
  end;

implementation

{AB:CODE}

constructor TPlatformBitmapBaseFactory.Create;
begin
  inherited Create;
end;
    

function TPlatformBitmapBaseFactory.createBitmap(image_: TImage): TPlatformBitmapBase;
begin
        Exit(TPlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE);
end;

initialization
  {AB:INITIALIZATION}
  TPlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY := TPlatformBitmapBaseFactory.Create();
  {AB:END}

end.

