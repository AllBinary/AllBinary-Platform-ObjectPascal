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
// package org.allbinary.input.motion
unit AllMotionRecognizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAllMotionRecognizer = class(TObject)
  public
    id: Integer;
    class var index: Integer;
    procedure InitFields;
        constructor Create;
        procedure processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processMovedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processScrolledMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        function getId: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TAllMotionRecognizer.InitFields;
begin
  
end;
    

constructor TAllMotionRecognizer.Create;
begin
    inherited Create;
    InitFields;
        Self.id := TJava.PostInc(TAllMotionRecognizer.index);
end;
    

// throws Exception
procedure TAllMotionRecognizer.processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

// throws Exception
procedure TAllMotionRecognizer.processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

// throws Exception
procedure TAllMotionRecognizer.processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

// throws Exception
procedure TAllMotionRecognizer.processMovedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

// throws Exception
procedure TAllMotionRecognizer.processScrolledMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

function TAllMotionRecognizer.getId: Integer;
begin
        Exit(Self.id);
end;

initialization
  {AB:INITIALIZATION}
  TAllMotionRecognizer.index := 0;
  {AB:END}

end.

