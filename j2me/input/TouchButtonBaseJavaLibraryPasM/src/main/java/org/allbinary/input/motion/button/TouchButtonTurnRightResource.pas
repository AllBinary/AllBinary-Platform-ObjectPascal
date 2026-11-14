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
// package org.allbinary.input.motion.button
unit TouchButtonTurnRightResource;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonResource;

type
  {AB:TYPES}
  TTouchButtonTurnRightResource = class(TTouchButtonResource)
  public
    class var instance: TTouchButtonResource;
        class function getInstance: TTouchButtonResource; static;
        constructor Create;
  end;

implementation

{AB:CODE}
    

class function TTouchButtonTurnRightResource.getInstance: TTouchButtonResource;
begin
        Exit(TTouchButtonTurnRightResource.instance);
end;
    

constructor TTouchButtonTurnRightResource.Create;
begin
        inherited Create('/touch_button_turn_right_arrow_64_by_64.png', '/touch_button_turn_right_arrow_hint_64_by_64.png');
end;

initialization
  {AB:INITIALIZATION}
  TTouchButtonTurnRightResource.instance := TTouchButtonTurnRightResource.Create();
  {AB:END}

end.

