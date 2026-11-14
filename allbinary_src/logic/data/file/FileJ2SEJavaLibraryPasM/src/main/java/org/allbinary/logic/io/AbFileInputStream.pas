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
unit AbFileInputStream;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TAbFileInputStream = class(TFileInputStream)
  public
        constructor Create(name: string);
        class function createFromAbFile(file_: TAbFile): TAbFileInputStream; static;
        class function createFromFile(file_: TFile): TAbFileInputStream; static;
  end;

implementation
uses
  AbFileNativeUtil;


{AB:CODE}
    

constructor TAbFileInputStream.Create(name: string);
begin
        inherited Create(name);
end;
    

// throws FileNotFoundException
class function TAbFileInputStream.createFromAbFile(file_: TAbFile): TAbFileInputStream;
begin
        Exit(TAbFileInputStream.Create(TAbFileNativeUtil.get(file_).getPath()));
end;
    

// throws FileNotFoundException
class function TAbFileInputStream.createFromFile(file_: TFile): TAbFileInputStream;
begin
        Exit(TAbFileInputStream.Create(file_.getPath()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

