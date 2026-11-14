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
unit ProcessPaintableSingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ProcessPaintable;

type
  {AB:TYPES}
  TProcessPaintableSingletonFactory = class(TObject)
  public
    class var SINGLETON: TProcessPaintable;
        constructor Create;
        class function getInstance: TProcessPaintable; static;
  end;

implementation

{AB:CODE}
    

constructor TProcessPaintableSingletonFactory.Create;
begin
    inherited Create;
end;
    

class function TProcessPaintableSingletonFactory.getInstance: TProcessPaintable;
begin
        Exit(TProcessPaintableSingletonFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TProcessPaintableSingletonFactory.SINGLETON := TProcessPaintable.Create();
  {AB:END}

end.

