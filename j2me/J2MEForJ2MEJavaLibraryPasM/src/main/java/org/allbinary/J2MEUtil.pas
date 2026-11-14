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
unit J2MEUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TJ2MEUtil = class(TObject)
  public
        constructor Create;
        class function isJ2ME: Boolean; static;
        class function isJ2SE: Boolean; static;
        class function isHTML: Boolean; static;
  end;

implementation

{AB:CODE}
    

constructor TJ2MEUtil.Create;
begin
    inherited Create;
end;
    

class function TJ2MEUtil.isJ2ME: Boolean;
begin
        Exit(True);
end;
    

class function TJ2MEUtil.isJ2SE: Boolean;
begin
        Exit(False);
end;
    

class function TJ2MEUtil.isHTML: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

