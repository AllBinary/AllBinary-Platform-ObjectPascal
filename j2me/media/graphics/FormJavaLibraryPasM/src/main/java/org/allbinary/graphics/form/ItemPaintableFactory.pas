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
// package org.allbinary.graphics.form
unit ItemPaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ItemPaintable, PaintableForm;

type
  {AB:TYPES}
  TItemPaintableFactory = class(TItemPaintable)
  public
    class var instance: TItemPaintableFactory;
    constructor Create;
        class function getInstance: TItemPaintableFactory; static;
        function getInstanceItemPaintable(paintableForm_: TPaintableForm): TItemPaintable; virtual;
  end;

implementation

{AB:CODE}

constructor TItemPaintableFactory.Create;
begin
  inherited Create;
end;
    

class function TItemPaintableFactory.getInstance: TItemPaintableFactory;
begin
        Exit(TItemPaintableFactory.instance);
end;
    

// throws Exception
function TItemPaintableFactory.getInstanceItemPaintable(paintableForm_: TPaintableForm): TItemPaintable;
begin
        Exit(TItemPaintableFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TItemPaintableFactory.instance := TItemPaintableFactory.Create();
  {AB:END}

end.

