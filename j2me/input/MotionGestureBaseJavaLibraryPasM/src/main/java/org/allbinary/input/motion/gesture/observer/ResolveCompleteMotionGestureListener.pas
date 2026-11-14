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
// package org.allbinary.input.motion.gesture.observer
unit ResolveCompleteMotionGestureListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, CompleteMotionGestureListenerInterface;

type
  {AB:TYPES}
  TResolveCompleteMotionGestureListener = class(TInterfacedObject, ICompleteMotionGestureListenerInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure onMotionGestureCompleted(list: TBasicArrayList); virtual;
  end;

implementation
uses
  CompleteMotionGestureInputEventHandler, GameKeyCompleteMotionGestureInputEvent, GameKeyFromMotionGestureEventListener, MotionGestureToMotionGestureActionAssociation, MotionGestureConfiguration, MotionGestureConfigurationFactory, CommonStrings;


{AB:CODE}

procedure TResolveCompleteMotionGestureListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TResolveCompleteMotionGestureListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TResolveCompleteMotionGestureListener.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF('MotionGesture to CompleteMotionGesture Reciever', TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        TCompleteMotionGestureInputEventHandler.getInstance().addListener(TGameKeyFromMotionGestureEventListener.Create());
end;
    

// throws Exception
procedure TResolveCompleteMotionGestureListener.onMotionGestureCompleted(list: TBasicArrayList);
var
  configuration: TMotionGestureConfiguration;
  commandActionsList: TBasicArrayList;
  size: Integer;
  association: TMotionGestureToMotionGestureActionAssociation;
  completeMotionGestureInputEvent: TGameKeyCompleteMotionGestureInputEvent;
  index: Integer;
begin
        configuration := TMotionGestureConfigurationFactory.getInstance();
        commandActionsList := configuration.getAssociateCommandActionsList();
        size := commandActionsList.size();
        for index := (size) - (1) downto 0 do begin
            association := TMotionGestureToMotionGestureActionAssociation(TJava.ToObject(commandActionsList.objectArray[index]));
            if (association.isMotionGestureArrayEquals(list)) = (True) then begin
                completeMotionGestureInputEvent := TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(association.getCommandAction()));
                TCompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent);
                Break;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

