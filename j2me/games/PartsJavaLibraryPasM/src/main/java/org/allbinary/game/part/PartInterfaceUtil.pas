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
// package org.allbinary.game.part
unit PartInterfaceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PartInterface;

type
  {AB:TYPES}
  TPartInterfaceUtil = class(TObject)
  public
    class var SINGLETON: TArray<IPartInterface>;
    constructor Create;
        class function getZeroArray: TArray<IPartInterface>; static;
  end;

implementation

{AB:CODE}

constructor TPartInterfaceUtil.Create;
begin
  inherited Create;
end;
    

class function TPartInterfaceUtil.getZeroArray: TArray<IPartInterface>;
begin
        Exit(TPartInterfaceUtil.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TPartInterfaceUtil.SINGLETON := nil;
  {AB:END}

end.

