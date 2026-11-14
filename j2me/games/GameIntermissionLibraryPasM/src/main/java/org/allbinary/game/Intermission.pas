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
// package org.allbinary.game
unit Intermission;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TimeDelayHelper, IntermissionEnableListenerInterface, IntermissionInterface;

type
  {AB:TYPES}
  TIntermission = class(TInterfacedObject, IIntermissionInterface)
  public
    enabled: Boolean;
    timeElapsedHelper: TTimeDelayHelper;
    intermissionEnableListener: IIntermissionEnableListenerInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure setListener(enableListener: IIntermissionEnableListenerInterface); virtual;
        function getTimeDelayHelper: TTimeDelayHelper; virtual;
        procedure setEnabled(enabled: Boolean); virtual;
        function isEnabled: Boolean; virtual;
  end;

implementation
uses
  NullIntermissionEnableListener;


{AB:CODE}

procedure TIntermission.InitFields;
begin
  
  Self.timeElapsedHelper := TTimeDelayHelper.Create(0);
  Self.intermissionEnableListener := TNullIntermissionEnableListener.getInstance();
end;

function TIntermission.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TIntermission.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TIntermission.setListener(enableListener: IIntermissionEnableListenerInterface);
begin
        Self.intermissionEnableListener := enableListener;
end;
    

function TIntermission.getTimeDelayHelper: TTimeDelayHelper;
begin
        Exit(Self.timeElapsedHelper);
end;
    

procedure TIntermission.setEnabled(enabled: Boolean);
begin
        Self.enabled := enabled;
        if Self.isEnabled() then begin
            Self.getTimeDelayHelper().setStartTimeTNT();
        end;
        Self.intermissionEnableListener.notifyIntermission(enabled);
end;
    

function TIntermission.isEnabled: Boolean;
begin
        Exit(Self.enabled);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

