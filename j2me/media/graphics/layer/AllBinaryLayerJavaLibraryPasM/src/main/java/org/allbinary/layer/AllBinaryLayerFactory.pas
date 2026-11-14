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
unit AllBinaryLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, AllBinaryLayer, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  TAllBinaryLayerFactory = class(TInterfacedObject, IAllBinaryLayerFactoryInterface)
  public
    rectangle: TRectangle;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(rectangle_: TRectangle);
        function getInstance: TAllBinaryLayer; virtual;
  end;

implementation
uses
  StringUtil, ViewPosition;


{AB:CODE}

procedure TAllBinaryLayerFactory.InitFields;
begin
  
end;

function TAllBinaryLayerFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinaryLayerFactory.Create(rectangle_: TRectangle);
begin
    inherited Create;
    InitFields;
        Self.rectangle := rectangle_;
end;
    

function TAllBinaryLayerFactory.getInstance: TAllBinaryLayer;
begin
        Exit(TAllBinaryLayer.Create(TStringUtil.getInstance().EMPTY_STRING, Self.rectangle, TViewPosition.getInstanceD()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

