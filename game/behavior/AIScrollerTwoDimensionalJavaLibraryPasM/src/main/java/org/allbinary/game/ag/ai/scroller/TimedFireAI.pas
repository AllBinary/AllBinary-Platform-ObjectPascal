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
// package org.allbinary.game.ag.ai.scroller
unit TimedFireAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager, TimeDelayHelper;

type
  {AB:TYPES}
  TTimedFireAI = class(TBasicAI)
  public
    maxFireDelayTimeHelper: TTimeDelayHelper;
    delay: Integer;
    class var TIME: Integer;
    procedure InitFields;
        constructor Create(delay: Integer; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  TimeFiredInterface, Canvas, SmallIntegerSingletonFactory, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TTimedFireAI.InitFields;
begin
  Self.maxFireDelayTimeHelper := TTimeDelayHelper.Create(0);
  
end;
    

constructor TTimedFireAI.Create(delay: Integer; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.delay := delay;
end;
    

// throws Exception
procedure TTimedFireAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  timeFiredInterface_: ITimeFiredInterface;
begin
        timeFiredInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as ITimeFiredInterface);
        if (Self.maxFireDelayTimeHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime)) and (((timeFiredInterface_.getLastFireTime()) + (Self.maxFireDelayTimeHelper.delay)) < (Self.maxFireDelayTimeHelper.getStartTime())) then begin
            inherited processKeyAI(TCanvas.KEY_NUM1);
            Self.maxFireDelayTimeHelper.delay := Self.delay;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTimedFireAI.TIME := TSmallIntegerSingletonFactory.getInstance().getAt(1);
  {AB:END}

end.

