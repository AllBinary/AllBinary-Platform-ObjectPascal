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
// package org.allbinary.graphics.form.item
unit LimitCommandsVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor;

type
  {AB:TYPES}
  TLimitCommandsVisitor = class(TVisitor)
  public
    isNotSmallDisplay: Boolean;
    procedure InitFields;
        constructor Create;
        function visit(anyType: TObject): TObject; override;
  end;

implementation
uses
  Command, GameCommandsFactory, DisplayInfoSingleton, ScreenInfo, BooleanFactory;


{AB:CODE}

procedure TLimitCommandsVisitor.InitFields;
begin
  
end;
    

constructor TLimitCommandsVisitor.Create;
var
  displayInfo: TDisplayInfoSingleton;
begin
    inherited Create;
    InitFields;
        displayInfo := TDisplayInfoSingleton.getInstance();
        Self.isNotSmallDisplay := (((displayInfo.isPortrait()) and ((displayInfo.getLastHeight()) > (TScreenInfo.getInstance().SMALL_WIDTH)))) or (((not (displayInfo.isPortrait())) and ((displayInfo.getLastHeight()) > (TScreenInfo.getInstance().SMALL_HEIGHT))));
end;
    

function TLimitCommandsVisitor.visit(anyType: TObject): TObject;
var
  command_: TCommand;
  booleanFactory_: TBooleanFactory;
begin
        command_ := TCommand(TJava.ToObject(anyType));
        booleanFactory_ := TBooleanFactory.getInstance();
        if (((Self.isNotSmallDisplay) or ((command_.getPriority()) = (1))) or ((command_) = (TGameCommandsFactory.getInstance().EXIT_COMMAND))) or ((command_) = (TGameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND)) then begin
            Exit(TJava.Box(booleanFactory_.TRUE_));
        end else begin
            Exit(TJava.Box(booleanFactory_.FALSE_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

