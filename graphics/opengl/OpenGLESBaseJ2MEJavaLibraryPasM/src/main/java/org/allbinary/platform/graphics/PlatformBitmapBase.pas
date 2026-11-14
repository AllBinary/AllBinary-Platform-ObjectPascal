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
unit PlatformBitmapBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TPlatformBitmapBase = class(TObject)
  public
    constructor Create;
        function getImage: TImage; virtual;
  end;

implementation
uses
  NullImage;


{AB:CODE}

constructor TPlatformBitmapBase.Create;
begin
  inherited Create;
end;
    

function TPlatformBitmapBase.getImage: TImage;
begin
        Exit(TNullImage.NULL_IMAGE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

