// Generated Code Do Not Modify
// package org.allbinary.game.input.analog
unit AnalogLocationInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AnalogLocationInput;

type
  {AB:TYPES}
  TAnalogLocationInputFactory = class(TObject)
  public
    list: TBasicArrayList;
    class var instance: TAnalogLocationInputFactory;
    procedure InitFields;
        class function getInstance: TAnalogLocationInputFactory; static;
        constructor Create;
        procedure addPlayer(playerInputId: Integer); virtual;
        function getInstanceForPlayer(playerInputId: Integer): TAnalogLocationInput; virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TAnalogLocationInputFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TAnalogLocationInputFactory.getInstance: TAnalogLocationInputFactory;
begin
        Exit(TAnalogLocationInputFactory.instance);
end;
    

constructor TAnalogLocationInputFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TAnalogLocationInputFactory.addPlayer(playerInputId: Integer);
var
  analogLocationInput_: TAnalogLocationInput;
begin
        analogLocationInput_ := TAnalogLocationInput.NULL_ANALOG_LOCATION_INPUT;
        if (playerInputId) < (Self.list.size()) then begin
            analogLocationInput_ := TAnalogLocationInput(TJava.ToObject(Self.list.get(playerInputId)));
        end;
        if (analogLocationInput_) = (TAnalogLocationInput.NULL_ANALOG_LOCATION_INPUT) then begin
            analogLocationInput_ := TAnalogLocationInput.Create(playerInputId);
            Self.list.add(TJava.Box(analogLocationInput_));
        end;
end;
    

function TAnalogLocationInputFactory.getInstanceForPlayer(playerInputId: Integer): TAnalogLocationInput;
begin
        Exit(TAnalogLocationInput(TJava.ToObject(Self.list.get(playerInputId))));
end;
    

function TAnalogLocationInputFactory.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  TAnalogLocationInputFactory.instance := TAnalogLocationInputFactory.Create();
  {AB:END}

end.

