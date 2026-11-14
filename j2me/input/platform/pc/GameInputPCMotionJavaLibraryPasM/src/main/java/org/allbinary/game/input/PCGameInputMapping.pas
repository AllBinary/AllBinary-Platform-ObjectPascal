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
unit PCGameInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PersistentInputMapping, AbeClientInformationInterface, Input;

type
  {AB:TYPES}
  TPCGameInputMapping = class(TPersistentInputMapping)
  public
        constructor Create;
        procedure init(abeClientInformation: IAbeClientInformationInterface); override;
        function isDelete(input_: TInput): Boolean; override;
        function isSystemInput(input_: TInput): Boolean; override;
  end;

implementation
uses
  PCKeyFactory, GamePersistanceStrings, BasicTouchInputFactory, TouchMotionGestureFactory, TrackballMotionGestureFactory;


{AB:CODE}
    

constructor TPCGameInputMapping.Create;
begin
        inherited Create(TGamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
end;
    

// throws Exception
procedure TPCGameInputMapping.init(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.INIT);
        TPCKeyFactory.getInstance();
        TTouchMotionGestureFactory.getInstance();
        TTrackballMotionGestureFactory.getInstance();
        TBasicTouchInputFactory.getInstance();
        inherited init(abeClientInformation);
        if ((Self.getTotalMapped()) = (0)) or (Self.isDefaultNew()) then begin
            Self.getInputMapping().addMapping(Self.getDefault());
            Self.save(abeClientInformation);
        end;
end;
    

function TPCGameInputMapping.isDelete(input_: TInput): Boolean;
begin
        if (input_) = (TPCKeyFactory.getInstance().DEL) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TPCGameInputMapping.isSystemInput(input_: TInput): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

