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
// package org.allbinary.game.ag.ai.tactical
unit BasicRandomAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, InputProbability, GameInput, MyRandomFactory, AllBinaryLayer, AllBinaryLayerManager, Visitor;

type
  {AB:TYPES}
  TBasicRandomAI = class(TBasicAI)
  public
    i_random: Integer;
    inputProbability: TInputProbability;
    visitor: TVisitor;
    keyArray: TArray<Integer>;
    myRandomFactory: TMyRandomFactory;
    procedure InitFields;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput; inputProbability_: TInputProbability; visitor_: TVisitor);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  Canvas, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TBasicRandomAI.InitFields;
begin
  Self.i_random := 0;
  
  
  Self.keyArray := TArray<Integer>.Create(TCanvas.UP, TCanvas.DOWN, TCanvas.LEFT, TCanvas.RIGHT, TCanvas.KEY_NUM1, TCanvas.KEY_NUM7, TCanvas.KEY_NUM9);
  Self.myRandomFactory := TMyRandomFactory.getInstance();
end;
    

constructor TBasicRandomAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput; inputProbability_: TInputProbability; visitor_: TVisitor);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.inputProbability := inputProbability_;
        Self.visitor := visitor_;
end;
    

// throws Exception
procedure TBasicRandomAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  repeat_: Boolean;
  repeatLikelyhoodIntegerArray: TArray<Integer>;
  likelyhoodIntegerArray: TArray<TArray<Integer>>;
  size: Integer;
  likelyhoodIntegerKeyArray: TArray<Integer>;
  key: Integer;
  index: Integer;
begin
        if Self.inputProbability.getTimeDelayHelper().isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            Self.i_random := Self.myRandomFactory.getAbsoluteNextInt(Self.inputProbability.getMax());
            repeat_ := False;
            repeatLikelyhoodIntegerArray := Self.inputProbability.getRepeatLikelyhoodIntegerArray();
            if ((Self.getLastKey()) <> (-1)) and (((repeatLikelyhoodIntegerArray[Self.getLastKey()])) >= (Self.i_random)) then begin
                repeat_ := True;
            end;
            if not (repeat_) then begin
                likelyhoodIntegerArray := Self.inputProbability.getLikelyhoodIntegerArray();
                Self.i_random := Self.myRandomFactory.getAbsoluteNextInt(Self.inputProbability.getMax());
                size := System.Length(Self.keyArray);
                
                for index := 0 to size - 1 do begin
                    key := Self.keyArray[index];
                    likelyhoodIntegerKeyArray := likelyhoodIntegerArray[key];
                    if ((System.Length(likelyhoodIntegerArray)) >= (key)) and ((likelyhoodIntegerKeyArray[0]) <> (0)) then begin
                        if ((Self.i_random) >= ((likelyhoodIntegerKeyArray[0]))) and ((Self.i_random) < ((likelyhoodIntegerKeyArray[1]))) then begin
                            Self.setLastKey(key);
                            Break;
                        end;
                    end;
                end;
            end;
            Self.visitor.visit(Self);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

