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
// package org.allbinary.layer
unit NullLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, ABLayer;

type
  {AB:TYPES}
  TNullLayer = class(TABLayer)
  public
    class var instance: TNullLayer;
        class function getInstance: TNullLayer; static;
        constructor Create;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}
    

class function TNullLayer.getInstance: TNullLayer;
begin
        Exit(TNullLayer.instance);
end;
    

constructor TNullLayer.Create;
begin
        inherited Create(0, 0);
end;
    

procedure TNullLayer.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullLayer.instance := TNullLayer.Create();
  {AB:END}

end.

