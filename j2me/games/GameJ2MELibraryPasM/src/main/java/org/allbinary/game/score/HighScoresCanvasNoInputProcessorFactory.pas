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
// package org.allbinary.game.score
unit HighScoresCanvasNoInputProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScoresCanvas, HighScoresCanvasInputProcessor, HighScoresCanvasInputProcessorFactoryInterface;

type
  {AB:TYPES}
  THighScoresCanvasNoInputProcessorFactory = class(TInterfacedObject, IHighScoresCanvasInputProcessorFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(highScoresCanvas_: THighScoresCanvas): THighScoresCanvasInputProcessor; virtual;
  end;

implementation

{AB:CODE}

function THighScoresCanvasNoInputProcessorFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor THighScoresCanvasNoInputProcessorFactory.Create;
begin
  inherited Create;
end;
    

function THighScoresCanvasNoInputProcessorFactory.getInstance(highScoresCanvas_: THighScoresCanvas): THighScoresCanvasInputProcessor;
begin
        Exit(THighScoresCanvasInputProcessor.Create(highScoresCanvas_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

