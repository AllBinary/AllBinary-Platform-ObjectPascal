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
unit TouchButtonVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonInput;

type
  {AB:TYPES}
  TTouchButtonVisitor = class(TObject)
  public
    constructor Create;
        procedure process(touchButtonInput_: TTouchButtonInput; string_: string); virtual;
  end;

implementation

{AB:CODE}

constructor TTouchButtonVisitor.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TTouchButtonVisitor.process(touchButtonInput_: TTouchButtonInput; string_: string);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

