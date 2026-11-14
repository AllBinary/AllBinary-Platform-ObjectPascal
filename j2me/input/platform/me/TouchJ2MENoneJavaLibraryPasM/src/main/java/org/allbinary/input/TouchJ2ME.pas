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
// package org.allbinary.input
unit TouchJ2ME;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // TouchJ2MENone
  TTouchJ2ME = class(TObject)
  public
        constructor Create;
        procedure pointerDragged(x: Integer; y: Integer); virtual;
        procedure pointerPressed(x: Integer; y: Integer); virtual;
        procedure pointerReleased(x: Integer; y: Integer); virtual;
  end;

implementation

{AB:CODE}
    

constructor TTouchJ2ME.Create;
begin
    inherited Create;
end;
    

procedure TTouchJ2ME.pointerDragged(x: Integer; y: Integer);
begin
end;
    

procedure TTouchJ2ME.pointerPressed(x: Integer; y: Integer);
begin
end;
    

procedure TTouchJ2ME.pointerReleased(x: Integer; y: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

