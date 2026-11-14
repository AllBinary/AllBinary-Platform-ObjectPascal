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
// package org.allbinary.graphics.color
unit ColorChangeEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, BasicColor;

type
  {AB:TYPES}
  TColorChangeEvent = class(TAllBinaryEventObject)
  public
    basicColor: TBasicColor;
    procedure InitFields;
        constructor Create(anyType: TObject);
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TColorChangeEvent.InitFields;
begin
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
end;
    

constructor TColorChangeEvent.Create(anyType: TObject);
begin
        inherited Create(anyType);
        InitFields;
end;
    

procedure TColorChangeEvent.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function TColorChangeEvent.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

