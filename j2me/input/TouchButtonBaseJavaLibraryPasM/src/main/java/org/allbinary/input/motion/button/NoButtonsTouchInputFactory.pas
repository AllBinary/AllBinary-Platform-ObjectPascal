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
unit NoButtonsTouchInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseTouchInput;

type
  {AB:TYPES}
  TNoButtonsTouchInputFactory = class(TObject)
  public
    class var instance: TBaseTouchInput;
    constructor Create;
        class function getInstance: TBaseTouchInput; static;
  end;

implementation

{AB:CODE}

constructor TNoButtonsTouchInputFactory.Create;
begin
  inherited Create;
end;
    

class function TNoButtonsTouchInputFactory.getInstance: TBaseTouchInput;
begin
        Exit(TNoButtonsTouchInputFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNoButtonsTouchInputFactory.instance := TBaseTouchInput.Create();
  {AB:END}

end.

