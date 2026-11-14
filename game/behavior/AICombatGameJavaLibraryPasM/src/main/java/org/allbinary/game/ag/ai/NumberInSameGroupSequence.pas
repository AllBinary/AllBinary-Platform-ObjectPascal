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
unit NumberInSameGroupSequence;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TNumberInSameGroupSequence = class(TObject)
  public
    NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_ONE: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_TWO: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_THREE: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_SIX: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE_NINE: Integer;
    NUMBER_ON_SAME_TEAM_SEQUENCE: TArray<Integer>;
    procedure InitFields;
        class function getInstance: TNumberInSameGroupSequence; static;
        constructor Create;
  end;

implementation
uses
  SmallIntegerSingletonFactory;


{AB:CODE}

procedure TNumberInSameGroupSequence.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
end;
    

class function TNumberInSameGroupSequence.getInstance: TNumberInSameGroupSequence;
begin
        Exit(TNumberInSameGroupSequence.Create());
end;
    

constructor TNumberInSameGroupSequence.Create;
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
begin
    inherited Create;
    InitFields;
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO := smallIntegerSingletonFactory_.getAt(100);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE := smallIntegerSingletonFactory_.getAt(101);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO := smallIntegerSingletonFactory_.getAt(102);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE := smallIntegerSingletonFactory_.getAt(103);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR := smallIntegerSingletonFactory_.getAt(104);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE := smallIntegerSingletonFactory_.getAt(105);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX := smallIntegerSingletonFactory_.getAt(106);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN := smallIntegerSingletonFactory_.getAt(107);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT := smallIntegerSingletonFactory_.getAt(108);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE := smallIntegerSingletonFactory_.getAt(109);
        Self.NUMBER_ON_SAME_TEAM_SEQUENCE := TArray<Integer>.Create(Self.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, Self.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

