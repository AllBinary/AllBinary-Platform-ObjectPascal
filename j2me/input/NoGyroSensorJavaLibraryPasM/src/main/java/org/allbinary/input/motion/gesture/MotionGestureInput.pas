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
// package org.allbinary.input.motion.gesture
unit MotionGestureInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input;

type
  {AB:TYPES}
  TMotionGestureInput = class(TInput)
  public
        constructor Create(id: Integer; name: string);
  end;

implementation
uses
  InputFactory;


{AB:CODE}
    

constructor TMotionGestureInput.Create(id: Integer; name: string);
var
  inputFactory_: TInputFactory;
begin
        inherited Create(id, name);
        inputFactory_ := TInputFactory.getInstance();
        inputFactory_.add(Self.getId(), Self);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

