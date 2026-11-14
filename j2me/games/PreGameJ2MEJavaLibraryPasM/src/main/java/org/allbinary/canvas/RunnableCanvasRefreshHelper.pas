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
// package org.allbinary.canvas
unit RunnableCanvasRefreshHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyCanvas, Processor;

type
  {AB:TYPES}
  TRunnableCanvasRefreshHelper = class(TProcessor)
  public
    runnableCanvas: TMyCanvas;
    procedure InitFields;
        constructor Create(runnableCanvas: TMyCanvas);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TRunnableCanvasRefreshHelper.InitFields;
begin
  
end;
    

constructor TRunnableCanvasRefreshHelper.Create(runnableCanvas: TMyCanvas);
begin
    inherited Create;
    InitFields;
        Self.runnableCanvas := runnableCanvas;
end;
    

procedure TRunnableCanvasRefreshHelper.process;
begin
        Self.runnableCanvas.repaint();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

