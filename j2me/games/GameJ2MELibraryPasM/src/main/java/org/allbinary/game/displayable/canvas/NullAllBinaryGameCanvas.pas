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
unit NullAllBinaryGameCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, AllBinaryGameLayerManager, AllBinaryGameCanvasInterface, DisplayableInterface;

type
  {AB:TYPES}
  TNullAllBinaryGameCanvas = class(TInterfacedObject, IAllBinaryGameCanvasInterface, IDisplayableInterface)
  public
    class var NULL_ALLBINARY_GAME_CANVAS: TNullAllBinaryGameCanvas;
    function JavaObject: TObject;
    constructor Create;
        function getLayerManager: TAllBinaryGameLayerManager; virtual;
        procedure addCommand(cmd: TCommand); virtual;
        function getHeight: Integer; virtual;
        function getWidth: Integer; virtual;
        procedure removeCommand(cmd: TCommand); virtual;
        procedure setCommandListener(l: ICommandListener); virtual;
  end;

implementation

{AB:CODE}

function TNullAllBinaryGameCanvas.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullAllBinaryGameCanvas.Create;
begin
  inherited Create;
end;
    

function TNullAllBinaryGameCanvas.getLayerManager: TAllBinaryGameLayerManager;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullAllBinaryGameCanvas.addCommand(cmd: TCommand);
begin
        raise SysUtils.Exception.Create('');
end;
    

function TNullAllBinaryGameCanvas.getHeight: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TNullAllBinaryGameCanvas.getWidth: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullAllBinaryGameCanvas.removeCommand(cmd: TCommand);
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullAllBinaryGameCanvas.setCommandListener(l: ICommandListener);
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TNullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS := TNullAllBinaryGameCanvas.Create();
  {AB:END}

end.

