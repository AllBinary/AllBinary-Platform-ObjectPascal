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
unit NullInitUpdatePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InitUpdatePaintable;

type
  {AB:TYPES}
  TNullInitUpdatePaintable = class(TInitUpdatePaintable)
  public
    class var SINGLETON: TNullInitUpdatePaintable;
        constructor Create;
        class function getInstance: TInitUpdatePaintable; static;
  end;

implementation

{AB:CODE}
    

constructor TNullInitUpdatePaintable.Create;
begin
    inherited Create;
end;
    

class function TNullInitUpdatePaintable.getInstance: TInitUpdatePaintable;
begin
        Exit(TNullInitUpdatePaintable.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TNullInitUpdatePaintable.SINGLETON := TNullInitUpdatePaintable.Create();
  {AB:END}

end.

