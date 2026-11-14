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
// package org.allbinary.game.displayable
unit GameLevelDisplayChangeEventListenersFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DisplayChangeEventListener, BasicArrayList;

type
  {AB:TYPES}
  TGameLevelDisplayChangeEventListenersFactory = class(TObject)
  public
    list: TBasicArrayList;
    class var instance: TGameLevelDisplayChangeEventListenersFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameLevelDisplayChangeEventListenersFactory; static;
        procedure add(displayChangeEventListener_: IDisplayChangeEventListener);
        procedure clear;
  end;

implementation
uses
  DisplayChangeEventHandler, BasicEventHandler, BasicArrayListD, EventListenerInterface;


{AB:CODE}

procedure TGameLevelDisplayChangeEventListenersFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;

constructor TGameLevelDisplayChangeEventListenersFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameLevelDisplayChangeEventListenersFactory.getInstance: TGameLevelDisplayChangeEventListenersFactory;
begin
        Exit(TGameLevelDisplayChangeEventListenersFactory.instance);
end;
    

procedure TGameLevelDisplayChangeEventListenersFactory.add(displayChangeEventListener_: IDisplayChangeEventListener);
begin
        Self.list.add(TJava.Box(displayChangeEventListener_));
        TDisplayChangeEventHandler.getInstance().addListenerInterface((TJava.ToObject(displayChangeEventListener_) as IEventListenerInterface));
end;
    

procedure TGameLevelDisplayChangeEventListenersFactory.clear;
var
  displayChangeEventHandler_: TBasicEventHandler;
  displayChangeEventListener_: IDisplayChangeEventListener;
  index: Integer;
begin
        displayChangeEventHandler_ := TDisplayChangeEventHandler.getInstance();
        
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            displayChangeEventListener_ := (TJava.ToObject(Self.list.objectArray[index]) as IDisplayChangeEventListener);
            displayChangeEventHandler_.removeListener(displayChangeEventListener_);
        end;
        Self.list.clear();
end;

initialization
  {AB:INITIALIZATION}
  TGameLevelDisplayChangeEventListenersFactory.instance := TGameLevelDisplayChangeEventListenersFactory.Create();
  {AB:END}

end.

