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
// package javax.microedition.lcdui
unit PostLoadPlatformImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlatformImage;

type
  {AB:TYPES}
  // PlatformNullImageJavaLibrary
  TPostLoadPlatformImage = class(TPlatformImage)
  public
    class var instance: TPostLoadPlatformImage;
    constructor Create;
        class function getInstance: TPostLoadPlatformImage; static;
  end;

implementation

{AB:CODE}

constructor TPostLoadPlatformImage.Create;
begin
  inherited Create;
end;
    

class function TPostLoadPlatformImage.getInstance: TPostLoadPlatformImage;
begin
        Exit(TPostLoadPlatformImage.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPostLoadPlatformImage.instance := TPostLoadPlatformImage.Create();
  {AB:END}

end.

