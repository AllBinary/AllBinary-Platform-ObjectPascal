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
// package org.allbinary.graphics.form
unit ItemIndexPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, ABCustomItem;

type
  {AB:TYPES}
  TItemIndexPaintable = class(TObject)
  public
    class var instance: TItemIndexPaintable;
    constructor Create;
        class function getInstance: TItemIndexPaintable; static;
        function paint(graphics_: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

constructor TItemIndexPaintable.Create;
begin
  inherited Create;
end;
    

class function TItemIndexPaintable.getInstance: TItemIndexPaintable;
begin
        Exit(TItemIndexPaintable.instance);
end;
    

// throws Exception
function TItemIndexPaintable.paint(graphics_: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  TItemIndexPaintable.instance := TItemIndexPaintable.Create();
  {AB:END}

end.

