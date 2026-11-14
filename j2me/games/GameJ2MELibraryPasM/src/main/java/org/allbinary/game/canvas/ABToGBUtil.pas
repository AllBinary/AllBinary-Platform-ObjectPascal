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
// package org.allbinary.game.canvas
unit ABToGBUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, AllBinaryGameLayerManager;

type
  {AB:TYPES}
  TABToGBUtil = class(TObject)
  public
    abCanvas: TCanvas;
    allBinaryGameLayerManager: TAllBinaryGameLayerManager;
    class var instance: TABToGBUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TABToGBUtil; static;
  end;

implementation
uses
  NullCanvas;


{AB:CODE}

procedure TABToGBUtil.InitFields;
begin
  Self.abCanvas := TNullCanvas.NULL_CANVAS;
  Self.allBinaryGameLayerManager := TAllBinaryGameLayerManager.getNullInstance();
end;

constructor TABToGBUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TABToGBUtil.getInstance: TABToGBUtil;
begin
        Exit(TABToGBUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TABToGBUtil.instance := TABToGBUtil.Create();
  {AB:END}

end.

