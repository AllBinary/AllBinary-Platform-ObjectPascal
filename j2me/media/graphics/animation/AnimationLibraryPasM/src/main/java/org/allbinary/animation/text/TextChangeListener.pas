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
// package org.allbinary.animation.text
unit TextChangeListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTextChangeListener = class(TObject)
  public
    class var instance: TTextChangeListener;
    constructor Create;
        class function getInstance: TTextChangeListener; static;
        procedure onMeasure; virtual;
  end;

implementation

{AB:CODE}

constructor TTextChangeListener.Create;
begin
  inherited Create;
end;
    

class function TTextChangeListener.getInstance: TTextChangeListener;
begin
        Exit(TTextChangeListener.instance);
end;
    

procedure TTextChangeListener.onMeasure;
begin
end;

initialization
  {AB:INITIALIZATION}
  TTextChangeListener.instance := TTextChangeListener.Create();
  {AB:END}

end.

