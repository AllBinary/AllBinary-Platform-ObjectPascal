{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package javax.microedition.lcdui
unit NullImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TNullImage = class(TObject)
  public
    class var NULL_IMAGE_ARRAY: TArray<TImage>;
    class var NULL_IMAGE: TImage;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor TNullImage.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNullImage.NULL_IMAGE_ARRAY := nil;
  TNullImage.NULL_IMAGE := TImage.Create();
  {AB:END}

end.

