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
unit NumberOnOwnGroupSequenceAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, GameInput, AllBinaryLayer, LogUtil, ABHashtable;

type
  {AB:TYPES}
  TNumberOnOwnGroupSequenceAIFactory = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; artificialIntelligenceInterface_: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  NumberInSameGroupSequence, NumberOnOwnGroupSequenceAI, StringMaker, CommonStrings, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TNumberOnOwnGroupSequenceAIFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TNumberOnOwnGroupSequenceAIFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
function TNumberOnOwnGroupSequenceAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; artificialIntelligenceInterface_: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
var
  integerArray: TArray<Integer>;
  list: TBasicArrayList;
  integerCanBeNull: TObject;
  index: Integer;
  stringBuffer: TStringMaker;
  commonStrings_: TCommonStrings;
  numberOnSameTeam: TArray<Integer>;
begin
        integerArray := TNumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE;
        list := TBasicArrayListD.Create();
        for index := 0 to System.Length(integerArray) - 1 do begin
            integerCanBeNull := TJava.Box(hashtable.get(TJava.Box(TJava.Box(integerArray[index]))));
            if (integerCanBeNull) = (nil) then begin
                Break;
            end;
            list.add(TJava.Box(integerCanBeNull));
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Total AI Properties: ');
        stringBuffer.appendint(list.size());
        stringBuffer.append(' == Total AI: ');
        stringBuffer.appendint(System.Length(artificialIntelligenceInterface_));
        stringBuffer.append(' + 1');
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
        if ((System.Length(artificialIntelligenceInterface_)) - (1)) > (list.size()) then begin
            raise SysUtils.Exception.Create('Not enough AI properties.');
        end;
        if ((System.Length(artificialIntelligenceInterface_)) - (1)) < (list.size()) then begin
            raise SysUtils.Exception.Create('Too Many AI properties.');
        end;
        numberOnSameTeam := TJava.NewArray<Integer>(list.size());
        for index := 0 to System.Length(numberOnSameTeam) - 1 do begin
            numberOnSameTeam[index] := Integer(list.objectArray[index]);
        end;
        Exit(TNumberOnOwnGroupSequenceAI.Create(numberOnSameTeam, artificialIntelligenceInterface_, ownerLayerInterface, gameInput_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

