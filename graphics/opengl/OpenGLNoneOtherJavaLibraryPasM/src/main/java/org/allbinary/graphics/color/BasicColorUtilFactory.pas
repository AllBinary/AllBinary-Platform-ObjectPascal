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
// package org.allbinary.graphics.color
unit BasicColorUtilFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColorUtil;

type
  {AB:TYPES}
  TBasicColorUtilFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TBasicColorUtil; static;
  end;

implementation

{AB:CODE}

constructor TBasicColorUtilFactory.Create;
begin
  inherited Create;
end;
    

class function TBasicColorUtilFactory.getInstance: TBasicColorUtil;
begin
        Exit(TBasicColorUtil.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

