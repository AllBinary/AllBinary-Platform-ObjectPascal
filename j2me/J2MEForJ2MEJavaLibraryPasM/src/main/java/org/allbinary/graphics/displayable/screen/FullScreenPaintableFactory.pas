{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
unit FullScreenPaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Paintable;

type
  {AB:TYPES}
  TFullScreenPaintableFactory = class(TObject)
  public
    paintable: TPaintable;
    class var instance: TFullScreenPaintableFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFullScreenPaintableFactory; static;
  end;

implementation
uses
  NullPaintable;


{AB:CODE}

procedure TFullScreenPaintableFactory.InitFields;
begin
  Self.paintable := TNullPaintable.getInstance();
end;

constructor TFullScreenPaintableFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFullScreenPaintableFactory.getInstance: TFullScreenPaintableFactory;
begin
        Exit(TFullScreenPaintableFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TFullScreenPaintableFactory.instance := TFullScreenPaintableFactory.Create();
  {AB:END}

end.

