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
// package org.allbinary.time
unit GameTickTimeDelayHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameTickTimeDelayHelper;

type
  {AB:TYPES}
  TGameTickTimeDelayHelperFactory = class(TObject)
  public
    class var instance: TGameTickTimeDelayHelper;
        class function getInstance: TGameTickTimeDelayHelper; static;
        constructor Create;
  end;

implementation

{AB:CODE}
    

class function TGameTickTimeDelayHelperFactory.getInstance: TGameTickTimeDelayHelper;
begin
        Exit(TGameTickTimeDelayHelperFactory.instance);
end;
    

constructor TGameTickTimeDelayHelperFactory.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TGameTickTimeDelayHelperFactory.instance := TGameTickTimeDelayHelper.Create(-1);
  {AB:END}

end.

