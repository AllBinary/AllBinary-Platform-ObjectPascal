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
unit GameKey;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input;

type
  {AB:TYPES}
  TGameKey = class(TInput)
  public
    class var NULL_GAME_KEY: TGameKey;
        constructor Create(key: Integer; name: string);
        function toString: string; override;
  end;

implementation
uses
  StringMaker, StringUtil;


{AB:CODE}
    

constructor TGameKey.Create(key: Integer; name: string);
begin
        inherited Create(key, name);
end;
    

function TGameKey.toString: string;
begin
        Exit(TStringMaker.Create().append('GameKey ').append(inherited toString()).toString());
end;

initialization
  {AB:INITIALIZATION}
  TGameKey.NULL_GAME_KEY := TGameKey.Create(-1, TStringUtil.getInstance().NULL_STRING);
  {AB:END}

end.

