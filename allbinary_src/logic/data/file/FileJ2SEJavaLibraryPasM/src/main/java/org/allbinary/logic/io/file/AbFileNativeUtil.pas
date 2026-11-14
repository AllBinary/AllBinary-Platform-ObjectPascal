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
// package org.allbinary.logic.io.file
unit AbFileNativeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TAbFileNativeUtil = class(TObject)
  public
    constructor Create;
        class function get(file_: TAbFile): TFile; static;
  end;

implementation

{AB:CODE}

constructor TAbFileNativeUtil.Create;
begin
  inherited Create;
end;
    

class function TAbFileNativeUtil.get(file_: TAbFile): TFile;
begin
        Exit(file_.getFile());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

