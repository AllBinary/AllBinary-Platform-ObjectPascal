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
// package org.allbinary.graphics.form
unit FormPlayerGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, PlayerGameInputCompositeInterface;

type
  {AB:TYPES}
  TFormPlayerGameInputProcessor = class(TProcessor)
  public
    playerGameInputCompositeInterface: IPlayerGameInputCompositeInterface;
    procedure InitFields;
        constructor Create(playerGameInputCompositeInterface_: IPlayerGameInputCompositeInterface);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TFormPlayerGameInputProcessor.InitFields;
begin
  
end;
    

constructor TFormPlayerGameInputProcessor.Create(playerGameInputCompositeInterface_: IPlayerGameInputCompositeInterface);
begin
    inherited Create;
    InitFields;
        Self.playerGameInputCompositeInterface := playerGameInputCompositeInterface_;
end;
    

// throws Exception
procedure TFormPlayerGameInputProcessor.process;
begin
        Self.playerGameInputCompositeInterface.getPlayerGameInput().update();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

