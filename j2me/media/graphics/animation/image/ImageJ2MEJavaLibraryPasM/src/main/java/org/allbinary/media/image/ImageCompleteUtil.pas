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
// package org.allbinary.media.image
unit ImageCompleteUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TImageCompleteUtil = class(TObject)
  public
    class var instance: TImageCompleteUtil;
    constructor Create;
        class function getInstance: TImageCompleteUtil; static;
        procedure waitForImage(image_: TImage; name: string); virtual;
  end;

implementation

{AB:CODE}

constructor TImageCompleteUtil.Create;
begin
  inherited Create;
end;
    

class function TImageCompleteUtil.getInstance: TImageCompleteUtil;
begin
        Exit(TImageCompleteUtil.instance);
end;
    

// throws Exception
procedure TImageCompleteUtil.waitForImage(image_: TImage; name: string);
begin
end;

initialization
  {AB:INITIALIZATION}
  TImageCompleteUtil.instance := TImageCompleteUtil.Create();
  {AB:END}

end.

