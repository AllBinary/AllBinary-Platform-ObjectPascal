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
// package org.allbinary.graphics.paint
unit StatePaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StatePaintable;

type
  {AB:TYPES}
  TStatePaintableFactory = class(TObject)
  public
    class var instance: TStatePaintable;
    constructor Create;
        class function getInstance: TStatePaintable; static;
  end;

implementation

{AB:CODE}

constructor TStatePaintableFactory.Create;
begin
  inherited Create;
end;
    

class function TStatePaintableFactory.getInstance: TStatePaintable;
begin
        Exit(TStatePaintableFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TStatePaintableFactory.instance := TStatePaintable.Create();
  {AB:END}

end.

