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
unit MotionRecognizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMotionRecognizer = class(TObject)
  public
    constructor Create;
        procedure processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
  end;

implementation

{AB:CODE}

constructor TMotionRecognizer.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TMotionRecognizer.processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

// throws Exception
procedure TMotionRecognizer.processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;
    

// throws Exception
procedure TMotionRecognizer.processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

