{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package javax.microedition.lcdui
unit ChoiceGroupImageFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MIDPUtil, Image;

type
  {AB:TYPES}
  TChoiceGroupImageFactory = class(TObject)
  public
    multiOff: TArray<ShortInt>;
    multiOn: TArray<ShortInt>;
    radioOff: TArray<ShortInt>;
    radioOn: TArray<ShortInt>;
    midpUtil: TMIDPUtil;
    imgMultiOffO: TImage;
    imgMultiOnO: TImage;
    imgRadioOffO: TImage;
    imgRadioOnO: TImage;
    imgMultiOff: TImage;
    imgMultiOn: TImage;
    imgRadioOff: TImage;
    imgRadioOn: TImage;
    imageArray: TArray<TImage>;
    class var instance: TChoiceGroupImageFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TChoiceGroupImageFactory; static;
        function getImageArray: TArray<TImage>; virtual;
        procedure init(imageArray: TArray<TImage>); virtual;
  end;

implementation

{AB:CODE}

procedure TChoiceGroupImageFactory.InitFields;
begin
  Self.multiOff := TArray<ShortInt>.Create(ShortInt(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ShortInt(-12), ShortInt(-117), 0, 0, 0, 6, 80, 76, 84, 69, ShortInt(-1), ShortInt(-1), ShortInt(-1), ShortInt(-69), ShortInt(-69), ShortInt(-69), ShortInt(-57), 75, ShortInt(-33), ShortInt(-8), 0, 0, 0, 30, 73, 68, 65, 84, 120, ShortInt(-38), 99, 96, 96, 96, 96, 12, 101, ShortInt(-8), ShortInt(-51), ShortInt(-32), ShortInt(-64), 32, ShortInt(-64), ShortInt(-60), ShortInt(-64), ShortInt(-64), ShortInt(-128), 11, 51, ShortInt(-122), 50, ShortInt(-4), 6, 0, 63, 116, 3, 1, 53, ShortInt(-108), 39, ShortInt(-26), 0, 0, 0, 0, 73, 69, 78, 68, ShortInt(-82), 66, 96, ShortInt(-126));
  Self.multiOn := TArray<ShortInt>.Create(ShortInt(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, ShortInt(-12), ShortInt(-117), 0, 0, 0, 12, 80, 76, 84, 69, ShortInt(-1), ShortInt(-1), ShortInt(-1), ShortInt(-69), ShortInt(-69), ShortInt(-69), 106, 106, 106, 2, 2, 2, 106, ShortInt(-103), 14, ShortInt(-47), 0, 0, 0, 53, 73, 68, 65, 84, 120, ShortInt(-38), 99, 96, 96, 124, ShortInt(-64), ShortInt(-16), ShortInt(-1), ShortInt(-77), 3, ShortInt(-45), 65, ShortInt(-111), 15, 76, 12, 108, 12, 76, 12, ShortInt(-4), 12, 76, 12, 18, 12, 76, ShortInt(-68), 127, 24, ShortInt(-104), 126, 45, 96, 96, ShortInt(-7), ShortInt(-11), ShortInt(-109), ShortInt(-127), ShortInt(-23), ShortInt(-65), 3, 3, ShortInt(-29), 127, ShortInt(-122), ShortInt(-113), 0, 5, 37, 12, ShortInt(-34), 1, ShortInt(-99), ShortInt(-83), 100, 0, 0, 0, 0, 73, 69, 78, 68, ShortInt(-82), 66, 96, ShortInt(-126));
  Self.radioOff := TArray<ShortInt>.Create(ShortInt(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ShortInt(-44), ShortInt(-62), ShortInt(-97), ShortInt(-75), 0, 0, 0, 9, 80, 76, 84, 69, ShortInt(-1), ShortInt(-1), ShortInt(-1), ShortInt(-69), ShortInt(-69), ShortInt(-69), 106, 106, 106, ShortInt(-44), 13, ShortInt(-1), ShortInt(-24), 0, 0, 0, 42, 73, 68, 65, 84, 120, ShortInt(-38), 99, 96, 90, ShortInt(-59), ShortInt(-64), 32, ShortInt(-63), 48, ShortInt(-127), 65, ShortInt(-127), 65, ShortInt(-127), 41, ShortInt(-127), ShortInt(-31), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, ShortInt(-6), ShortInt(-63), 80, ShortInt(-64), ShortInt(-64), ShortInt(-76), ShortInt(-118), 1, 0, 113, 24, 5, 61, 73, ShortInt(-68), ShortInt(-100), 98, 0, 0, 0, 0, 73, 69, 78, 68, ShortInt(-82), 66, 96, ShortInt(-126));
  Self.radioOn := TArray<ShortInt>.Create(ShortInt(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, ShortInt(-44), ShortInt(-62), ShortInt(-97), ShortInt(-75), 0, 0, 0, 12, 80, 76, 84, 69, ShortInt(-1), ShortInt(-1), ShortInt(-1), ShortInt(-69), ShortInt(-69), ShortInt(-69), 106, 106, 106, 2, 2, 2, 106, ShortInt(-103), 14, ShortInt(-47), 0, 0, 0, 50, 73, 68, 65, 84, 120, ShortInt(-38), 5, ShortInt(-63), 65, 13, 0, 32, 12, 4, ShortInt(-63), ShortInt(-19), ShortInt(-11), ShortInt(-117), 1, 18, 68, ShortInt(-100), 10, 52, 19, 94, 72, 64, 17, 101, ShortInt(-122), 44, ShortInt(-44), ShortInt(-29), 98, ShortInt(-52), 89, 77, ShortInt(-102), 40, 2, 85, ShortInt(-95), ShortInt(-73), ShortInt(-63), ShortInt(-104), ShortInt(-63), 37, ShortInt(-117), 15, ShortInt(-40), 119, 10, 41, 78, 26, ShortInt(-79), 59, 0, 0, 0, 0, 73, 69, 78, 68, ShortInt(-82), 66, 96, ShortInt(-126));
  Self.midpUtil := TMIDPUtil.getInstance();
  Self.imgMultiOffO := Self.midpUtil.createImageFromByteArray(Self.multiOff, 0, System.Length(Self.multiOff));
  Self.imgMultiOnO := Self.midpUtil.createImageFromByteArray(Self.multiOn, 0, System.Length(Self.multiOn));
  Self.imgRadioOffO := Self.midpUtil.createImageFromByteArray(Self.radioOff, 0, System.Length(Self.radioOff));
  Self.imgRadioOnO := Self.midpUtil.createImageFromByteArray(Self.radioOn, 0, System.Length(Self.radioOn));
  Self.imgMultiOff := Self.imgMultiOffO;
  Self.imgMultiOn := Self.imgMultiOnO;
  Self.imgRadioOff := Self.imgRadioOffO;
  Self.imgRadioOn := Self.imgRadioOnO;
  Self.imageArray := TArray<TImage>.Create(Self.imgMultiOff, Self.imgMultiOn, Self.imgRadioOff, Self.imgRadioOn);
end;

constructor TChoiceGroupImageFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TChoiceGroupImageFactory.getInstance: TChoiceGroupImageFactory;
begin
        Exit(TChoiceGroupImageFactory.instance);
end;
    

function TChoiceGroupImageFactory.getImageArray: TArray<TImage>;
begin
        Exit(Self.imageArray);
end;
    

procedure TChoiceGroupImageFactory.init(imageArray: TArray<TImage>);
begin
        Self.imgMultiOff := imageArray[0];
        Self.imageArray[0] := Self.imgMultiOff;
        Self.imgMultiOn := imageArray[1];
        Self.imageArray[1] := Self.imgMultiOn;
        Self.imgRadioOff := imageArray[2];
        Self.imageArray[2] := Self.imgRadioOff;
        Self.imgRadioOn := imageArray[3];
        Self.imageArray[3] := Self.imgRadioOn;
end;

initialization
  {AB:INITIALIZATION}
  TChoiceGroupImageFactory.instance := TChoiceGroupImageFactory.Create();
  {AB:END}

end.

