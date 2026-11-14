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
unit GameInputProcessorComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputProcessorInterface, PlayerGameInput;

type
  {AB:TYPES}
  TGameInputProcessorComposite = class(TPlayerGameInput)
  public
    name: string;
    gameInputProcessorInterface: IGameInputProcessorInterface;
    NAME_LABEL: string;
    procedure InitFields;
        constructor Create(name: string; gameInputProcessorInterface_: IGameInputProcessorInterface);
        procedure update; override;
        function toString: string; override;
  end;

implementation
uses
  LogUtil, StringMaker, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TGameInputProcessorComposite.InitFields;
begin
  
  
  Self.NAME_LABEL := ' GameInputProcessorInterface: ';
end;
    

constructor TGameInputProcessorComposite.Create(name: string; gameInputProcessorInterface_: IGameInputProcessorInterface);
begin
        inherited Create(TBasicArrayListD.Create(), TBasicArrayListD.Create(), -1);
        InitFields;
        Self.name := name;
        Self.gameInputProcessorInterface := gameInputProcessorInterface_;
end;
    

procedure TGameInputProcessorComposite.update;
var
  list: TBasicArrayList;
begin
    TJava.MonitorEnter(Self);
    try
        try
            list := Self.getGameKeyEventList();
            Self.gameInputProcessorInterface.onInput(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.UPDATE, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGameInputProcessorComposite.toString: string;
begin
        Exit(TStringMaker.Create().append(inherited toString()).append(Self.NAME_LABEL).append(Self.name).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

