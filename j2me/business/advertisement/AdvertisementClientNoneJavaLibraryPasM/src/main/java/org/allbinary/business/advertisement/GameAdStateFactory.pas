// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
unit GameAdStateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameAdState, SoftwareInformation, GameAdStateBase, GameAdStateFactoryInterface;

type
  {AB:TYPES}
  TGameAdStateFactory = class(TInterfacedObject, IGameAdStateFactoryInterface)
  public
    gameAdStateArray: TArray<TGameAdState>;
    gameAdState: TGameAdState;
    class var instance: TGameAdStateFactory;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TGameAdStateFactory; static;
        function getCurrentInstance: TGameAdState; virtual;
        function getInstanceForApp(softwareInformation_: TSoftwareInformation): TGameAdStateBase; virtual;
        function isEnabled: Boolean; virtual;
  end;

implementation
uses
  AppNameLicensingAdConfiguration;


{AB:CODE}

procedure TGameAdStateFactory.InitFields;
begin
  Self.gameAdStateArray := TArray<TGameAdState>.Create(TGameAdState.Create(TAppNameLicensingAdConfiguration.Create()));
  Self.gameAdState := Self.gameAdStateArray[0];
end;

function TGameAdStateFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TGameAdStateFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameAdStateFactory.getInstance: TGameAdStateFactory;
begin
        Exit(TGameAdStateFactory.instance);
end;
    

function TGameAdStateFactory.getCurrentInstance: TGameAdState;
begin
        Exit(Self.gameAdState);
end;
    

// throws Exception
function TGameAdStateFactory.getInstanceForApp(softwareInformation_: TSoftwareInformation): TGameAdStateBase;
begin
        Self.gameAdState := Self.gameAdStateArray[0];
        Exit(Self.gameAdStateArray[0]);
end;
    

function TGameAdStateFactory.isEnabled: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TGameAdStateFactory.instance := TGameAdStateFactory.Create();
  {AB:END}

end.

