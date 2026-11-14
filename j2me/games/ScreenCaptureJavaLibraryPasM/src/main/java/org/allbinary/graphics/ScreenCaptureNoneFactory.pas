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
// package org.allbinary.graphics
unit ScreenCaptureNoneFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScreenCapture;

type
  {AB:TYPES}
  TScreenCaptureNoneFactory = class(TObject)
  public
    class var instance: TScreenCapture;
    constructor Create;
        class function getInstance: TScreenCapture; static;
  end;

implementation

{AB:CODE}

constructor TScreenCaptureNoneFactory.Create;
begin
  inherited Create;
end;
    

class function TScreenCaptureNoneFactory.getInstance: TScreenCapture;
begin
        Exit(TScreenCaptureNoneFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TScreenCaptureNoneFactory.instance := TScreenCapture.Create();
  {AB:END}

end.

