{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit NullDemoPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DemoPaintableInterface;

type
  {AB:TYPES}
  TNullDemoPaintable = class(TInterfacedObject, IDemoPaintableInterface)
  public
    class var NULL_DEMO_PAINTABLE: TNullDemoPaintable;
    function JavaObject: TObject;
    constructor Create;
        procedure showGamePaintable; virtual;
  end;

implementation

{AB:CODE}

function TNullDemoPaintable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullDemoPaintable.Create;
begin
  inherited Create;
end;
    

procedure TNullDemoPaintable.showGamePaintable;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullDemoPaintable.NULL_DEMO_PAINTABLE := TNullDemoPaintable.Create();
  {AB:END}

end.

