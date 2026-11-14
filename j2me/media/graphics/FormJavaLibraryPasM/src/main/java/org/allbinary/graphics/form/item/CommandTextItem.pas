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
unit CommandTextItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, BasicColor, ABTextItem;

type
  {AB:TYPES}
  TCommandTextItem = class(TABTextItem)
  public
    command: TCommand;
    procedure InitFields;
        constructor Create(command_: TCommand; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        function isFocusable: Boolean; override;
        function getCommand: TCommand; virtual;
  end;

implementation

{AB:CODE}

procedure TCommandTextItem.InitFields;
begin
  
end;
    

constructor TCommandTextItem.Create(command_: TCommand; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(command_.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.command := command_;
end;
    

function TCommandTextItem.isFocusable: Boolean;
begin
        Exit(True);
end;
    

function TCommandTextItem.getCommand: TCommand;
begin
        Exit(Self.command);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

