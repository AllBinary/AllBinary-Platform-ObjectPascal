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
unit AndroidUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAndroidUtil = class(TObject)
  public
        constructor Create;
        class function isMemoryRestrictive: Boolean; static;
        class function isAndroid: Boolean; static;
  end;

implementation

{AB:CODE}
    

constructor TAndroidUtil.Create;
begin
    inherited Create;
end;
    

class function TAndroidUtil.isMemoryRestrictive: Boolean;
begin
        Exit(True);
end;
    

class function TAndroidUtil.isAndroid: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

