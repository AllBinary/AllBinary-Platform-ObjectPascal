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
unit NullLocationPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LocationPaintable;

type
  {AB:TYPES}
  TNullLocationPaintable = class(TLocationPaintable)
  public
    class var instanceC: TNullLocationPaintable;
    constructor Create;
        class function getInstance: TNullLocationPaintable; static;
  end;

implementation

{AB:CODE}

constructor TNullLocationPaintable.Create;
begin
  inherited Create;
end;
    

class function TNullLocationPaintable.getInstance: TNullLocationPaintable;
begin
        Exit(TNullLocationPaintable.instanceC);
end;

initialization
  {AB:INITIALIZATION}
  TNullLocationPaintable.instanceC := TNullLocationPaintable.Create();
  {AB:END}

end.

