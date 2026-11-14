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
// package org.allbinary.game.ag.ai
unit BasicProbabilityAIDataFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable;

type
  {AB:TYPES}
  TBasicProbabilityAIDataFactory = class(TObject)
  public
    constructor Create;
        function getInstance: TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  InputProbability, Canvas, SmallIntegerSingletonFactory, NoTimeDelayHelper;


{AB:CODE}

constructor TBasicProbabilityAIDataFactory.Create;
begin
  inherited Create;
end;
    

function TBasicProbabilityAIDataFactory.getInstance: TABHashtable<TObject, TObject>;
var
  likelyhoodIntegerArray: TArray<TArray<Integer>>;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  repeatLikelyhoodIntegerArray: TArray<Integer>;
  inputProbability_: TInputProbability;
begin
        likelyhoodIntegerArray := TJava.NewArray2<Integer>((TCanvas.KEY_NUM9) + (1), 2);
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        likelyhoodIntegerArray[TCanvas.UP][0] := smallIntegerSingletonFactory_.getAt(0);
        likelyhoodIntegerArray[TCanvas.UP][1] := smallIntegerSingletonFactory_.getAt(10);
        likelyhoodIntegerArray[TCanvas.DOWN][0] := smallIntegerSingletonFactory_.getAt(10);
        likelyhoodIntegerArray[TCanvas.DOWN][1] := smallIntegerSingletonFactory_.getAt(14);
        likelyhoodIntegerArray[TCanvas.LEFT][0] := smallIntegerSingletonFactory_.getAt(14);
        likelyhoodIntegerArray[TCanvas.LEFT][1] := smallIntegerSingletonFactory_.getAt(18);
        likelyhoodIntegerArray[TCanvas.RIGHT][0] := smallIntegerSingletonFactory_.getAt(18);
        likelyhoodIntegerArray[TCanvas.RIGHT][1] := smallIntegerSingletonFactory_.getAt(22);
        likelyhoodIntegerArray[TCanvas.KEY_NUM7][0] := smallIntegerSingletonFactory_.getAt(22);
        likelyhoodIntegerArray[TCanvas.KEY_NUM7][1] := smallIntegerSingletonFactory_.getAt(26);
        likelyhoodIntegerArray[TCanvas.KEY_NUM9][0] := smallIntegerSingletonFactory_.getAt(26);
        likelyhoodIntegerArray[TCanvas.KEY_NUM9][1] := smallIntegerSingletonFactory_.getAt(30);
        likelyhoodIntegerArray[TCanvas.KEY_NUM1][0] := smallIntegerSingletonFactory_.getAt(30);
        likelyhoodIntegerArray[TCanvas.KEY_NUM1][1] := smallIntegerSingletonFactory_.getAt(40);
        repeatLikelyhoodIntegerArray := TJava.NewArray<Integer>((TCanvas.KEY_NUM9) + (1));
        repeatLikelyhoodIntegerArray[TCanvas.UP] := smallIntegerSingletonFactory_.getAt(0);
        repeatLikelyhoodIntegerArray[TCanvas.DOWN] := smallIntegerSingletonFactory_.getAt(0);
        repeatLikelyhoodIntegerArray[TCanvas.LEFT] := smallIntegerSingletonFactory_.getAt(0);
        repeatLikelyhoodIntegerArray[TCanvas.RIGHT] := smallIntegerSingletonFactory_.getAt(0);
        repeatLikelyhoodIntegerArray[TCanvas.KEY_NUM7] := smallIntegerSingletonFactory_.getAt(0);
        repeatLikelyhoodIntegerArray[TCanvas.KEY_NUM9] := smallIntegerSingletonFactory_.getAt(0);
        repeatLikelyhoodIntegerArray[TCanvas.KEY_NUM1] := smallIntegerSingletonFactory_.getAt(10);
        inputProbability_ := TInputProbability.Create(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, TNoTimeDelayHelper.SINGLETON);
        Exit(inputProbability_.toHashtable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

