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
// package org.allbinary.game.input
unit GameInputProcessorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputProcessor;

type
  {AB:TYPES}
  TGameInputProcessorUtil = class(TObject)
  public
    constructor Create;
        class procedure init(inputProcessorArray: TArray<TGameInputProcessor>); static;
  end;

implementation
uses
  InputFactory;


{AB:CODE}

constructor TGameInputProcessorUtil.Create;
begin
  inherited Create;
end;
    

class procedure TGameInputProcessorUtil.init(inputProcessorArray: TArray<TGameInputProcessor>);
var
  noInputProcessor: TGameInputProcessor;
  total: Integer;
  inputProcessorCanBeNull: TGameInputProcessor;
  index: Integer;
begin
        noInputProcessor := TGameInputProcessor.getInstance();
        total := TInputFactory.getInstance().MAX;
        for index := 0 to total - 1 do begin
            inputProcessorCanBeNull := inputProcessorArray[index];
            if (inputProcessorCanBeNull) = (nil) then begin
                inputProcessorArray[index] := noInputProcessor;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

