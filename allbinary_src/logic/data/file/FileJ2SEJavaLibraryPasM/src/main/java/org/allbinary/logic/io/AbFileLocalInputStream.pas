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
// package org.allbinary.logic.io
unit AbFileLocalInputStream;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, AbFileInputStream;

type
  {AB:TYPES}
  TAbFileLocalInputStream = class(TAbFileInputStream)
  public
        constructor Create(file_: TAbFile);
  end;

implementation
uses
  AbFileNativeUtil;


{AB:CODE}
    

constructor TAbFileLocalInputStream.Create(file_: TAbFile);
begin
        inherited Create(TAbFileNativeUtil.get(file_).getPath());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

