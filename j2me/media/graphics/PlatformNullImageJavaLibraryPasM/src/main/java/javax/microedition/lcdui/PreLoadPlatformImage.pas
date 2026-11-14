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
unit PreLoadPlatformImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlatformImage;

type
  {AB:TYPES}
  // PlatformNullImageJavaLibrary
  TPreLoadPlatformImage = class(TPlatformImage)
  public
    class var instance: TPreLoadPlatformImage;
    constructor Create;
        class function getInstance: TPreLoadPlatformImage; static;
  end;

implementation

{AB:CODE}

constructor TPreLoadPlatformImage.Create;
begin
  inherited Create;
end;
    

class function TPreLoadPlatformImage.getInstance: TPreLoadPlatformImage;
begin
        Exit(TPreLoadPlatformImage.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPreLoadPlatformImage.instance := TPreLoadPlatformImage.Create();
  {AB:END}

end.

