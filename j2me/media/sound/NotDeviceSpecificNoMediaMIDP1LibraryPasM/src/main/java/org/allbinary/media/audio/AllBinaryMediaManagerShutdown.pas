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
// package org.allbinary.media.audio
unit AllBinaryMediaManagerShutdown;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SoundsFactoryInterface;

type
  {AB:TYPES}
  TAllBinaryMediaManagerShutdown = class(TObject)
  public
    class var instance: TAllBinaryMediaManagerShutdown;
    constructor Create;
        class procedure shutdown(soundsFactoryInterface_: ISoundsFactoryInterface); static;
  end;

implementation
uses
  AllBinaryMediaManager, LogUtil, CommonStrings;


{AB:CODE}

constructor TAllBinaryMediaManagerShutdown.Create;
begin
  inherited Create;
end;
    

// throws Exception
class procedure TAllBinaryMediaManagerShutdown.shutdown(soundsFactoryInterface_: ISoundsFactoryInterface);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.putF(commonStrings_.START, TJava.Box(TAllBinaryMediaManagerShutdown.instance), 'shutdown');
        TAllBinaryMediaManager.shutdown(soundsFactoryInterface_);
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryMediaManagerShutdown.instance := TAllBinaryMediaManagerShutdown.Create();
  {AB:END}

end.

