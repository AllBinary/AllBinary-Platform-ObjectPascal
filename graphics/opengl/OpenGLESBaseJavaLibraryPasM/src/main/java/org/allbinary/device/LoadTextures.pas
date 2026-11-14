{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.device
unit LoadTextures;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10;

type
  {AB:TYPES}
  TLoadTextures = class(TObject)
  public
    constructor Create;
        procedure load(gl: IGL10); virtual;
  end;

implementation

{AB:CODE}

constructor TLoadTextures.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TLoadTextures.load(gl: IGL10);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

