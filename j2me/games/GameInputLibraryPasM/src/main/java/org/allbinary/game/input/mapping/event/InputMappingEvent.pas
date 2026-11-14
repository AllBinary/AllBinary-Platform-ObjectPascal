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
// package org.allbinary.game.input.mapping.event
unit InputMappingEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputToGameKeyMapping, AllBinaryEventObject;

type
  {AB:TYPES}
  TInputMappingEvent = class(TAllBinaryEventObject)
  public
    inputToGameKeyMapping: TInputToGameKeyMapping;
    procedure InitFields;
        constructor Create(anyType: TObject);
        procedure setInputToGameKeyMapping(inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        function getInputToGameKeyMapping: TInputToGameKeyMapping; virtual;
  end;

implementation

{AB:CODE}

procedure TInputMappingEvent.InitFields;
begin
  Self.inputToGameKeyMapping := TInputToGameKeyMapping.getNullInstance();
end;
    

constructor TInputMappingEvent.Create(anyType: TObject);
begin
        inherited Create(anyType);
        InitFields;
end;
    

procedure TInputMappingEvent.setInputToGameKeyMapping(inputToGameKeyMapping_: TInputToGameKeyMapping);
begin
        Self.inputToGameKeyMapping := inputToGameKeyMapping_;
end;
    

function TInputMappingEvent.getInputToGameKeyMapping: TInputToGameKeyMapping;
begin
        Exit(Self.inputToGameKeyMapping);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

