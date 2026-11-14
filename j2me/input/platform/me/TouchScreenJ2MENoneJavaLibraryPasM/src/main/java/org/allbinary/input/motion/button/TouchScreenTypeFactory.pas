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
unit TouchScreenTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTouchScreenTypeFactory = class(TObject)
  public
    class var instance: TTouchScreenTypeFactory;
    constructor Create;
        class function getInstance: TTouchScreenTypeFactory; static;
        procedure TouchScreenTypeFactory; virtual;
  end;

implementation
uses
  TouchScreenFactory;


{AB:CODE}

constructor TTouchScreenTypeFactory.Create;
begin
  inherited Create;
end;
    

class function TTouchScreenTypeFactory.getInstance: TTouchScreenTypeFactory;
begin
        Exit(TTouchScreenTypeFactory.instance);
end;
    

procedure TTouchScreenTypeFactory.TouchScreenTypeFactory;
var
  touchScreenFactory_: TTouchScreenFactory;
begin
        touchScreenFactory_ := TTouchScreenFactory.getInstance();
        touchScreenFactory_.setTouch(False);
end;

initialization
  {AB:INITIALIZATION}
  TTouchScreenTypeFactory.instance := TTouchScreenTypeFactory.Create();
  {AB:END}

end.

