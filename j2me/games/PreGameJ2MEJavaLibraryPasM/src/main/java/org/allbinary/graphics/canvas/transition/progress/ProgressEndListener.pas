{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.canvas.transition.progress
unit ProgressEndListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TProgressEndListener = class(TObject)
  public
    class var instance: TProgressEndListener;
    constructor Create;
        procedure onEndEvent; virtual;
  end;

implementation

{AB:CODE}

constructor TProgressEndListener.Create;
begin
  inherited Create;
end;
    

procedure TProgressEndListener.onEndEvent;
begin
end;

initialization
  {AB:INITIALIZATION}
  TProgressEndListener.instance := TProgressEndListener.Create();
  {AB:END}

end.

