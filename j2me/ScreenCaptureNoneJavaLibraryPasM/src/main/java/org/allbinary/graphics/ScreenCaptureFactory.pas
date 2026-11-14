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
unit ScreenCaptureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScreenCapture;

type
  {AB:TYPES}
  TScreenCaptureFactory = class(TObject)
  public
    class var instance: TScreenCapture;
    constructor Create;
        class function getInstance: TScreenCapture; static;
  end;

implementation
uses
  ScreenCaptureNoneFactory;


{AB:CODE}

constructor TScreenCaptureFactory.Create;
begin
  inherited Create;
end;
    

class function TScreenCaptureFactory.getInstance: TScreenCapture;
begin
        Exit(TScreenCaptureFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TScreenCaptureFactory.instance := TScreenCaptureNoneFactory.getInstance();
  {AB:END}

end.

