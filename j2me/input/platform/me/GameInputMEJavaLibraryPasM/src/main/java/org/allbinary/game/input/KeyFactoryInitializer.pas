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
// package org.allbinary.game.input
unit KeyFactoryInitializer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Init, LogUtil;

type
  {AB:TYPES}
  TKeyFactoryInitializer = class(TInit)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        procedure init; override;
  end;

implementation

{AB:CODE}

procedure TKeyFactoryInitializer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TKeyFactoryInitializer.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TKeyFactoryInitializer.init;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.INIT);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

