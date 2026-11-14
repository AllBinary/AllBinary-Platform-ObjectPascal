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
unit PaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Paintable;

type
  {AB:TYPES}
  TPaintableFactory = class(TObject)
  public
    constructor Create;
        function getInstance: TPaintable; virtual;
  end;

implementation
uses
  NullPaintable;


{AB:CODE}

constructor TPaintableFactory.Create;
begin
  inherited Create;
end;
    

function TPaintableFactory.getInstance: TPaintable;
begin
        Exit(TNullPaintable.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

