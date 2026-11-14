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
// package org.allbinary.input.motion.button
unit TouchScreenFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchScreenType;

type
  {AB:TYPES}
  TTouchScreenFactory = class(TObject)
  public
    multiTouch: Boolean;
    touch: Boolean;
    touchScreenType: TTouchScreenType;
    class var SINGLETON: TTouchScreenFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TTouchScreenFactory; static;
        function isMultiTouch: Boolean; virtual;
        procedure setTouch(touch: Boolean); virtual;
        function isTouch: Boolean; virtual;
        function getTouchScreenType: TTouchScreenType; virtual;
  end;

implementation
uses
  TouchScreenTypesFactory;


{AB:CODE}

procedure TTouchScreenFactory.InitFields;
begin
  
  
  Self.touchScreenType := TTouchScreenTypesFactory.getInstance().NOTOUCH;
end;
    

constructor TTouchScreenFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TTouchScreenFactory.getInstance: TTouchScreenFactory;
begin
        Exit(TTouchScreenFactory.SINGLETON);
end;
    

function TTouchScreenFactory.isMultiTouch: Boolean;
begin
        Exit(Self.multiTouch);
end;
    

procedure TTouchScreenFactory.setTouch(touch: Boolean);
begin
end;
    

function TTouchScreenFactory.isTouch: Boolean;
begin
        Exit(Self.touch);
end;
    

function TTouchScreenFactory.getTouchScreenType: TTouchScreenType;
begin
        Exit(Self.touchScreenType);
end;

initialization
  {AB:INITIALIZATION}
  TTouchScreenFactory.SINGLETON := TTouchScreenFactory.Create();
  {AB:END}

end.

