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
// package org.allbinary
unit AppletUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // import org.allbinary.logic.communication.log.PreLogUtil;
  TAppletUtil = class(TObject)
  public
    class var applet: Boolean;
        constructor Create;
        class procedure setApplet; static;
        class function isAppletLoader(anyType: TObject): Boolean; static;
  end;

implementation

{AB:CODE}
    

constructor TAppletUtil.Create;
begin
    inherited Create;
end;
    

class procedure TAppletUtil.setApplet;
begin
        TAppletUtil.applet := True;
end;
    

class function TAppletUtil.isAppletLoader(anyType: TObject): Boolean;
begin
        Exit(TAppletUtil.applet);
end;

initialization
  {AB:INITIALIZATION}
  TAppletUtil.applet := False;
  {AB:END}

end.

