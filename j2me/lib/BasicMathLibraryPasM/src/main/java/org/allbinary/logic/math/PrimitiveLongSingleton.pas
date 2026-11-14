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
// package org.allbinary.logic.math
unit PrimitiveLongSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPrimitiveLongSingleton = class(TObject)
  public
    UNK: TArray<WideChar>;
    NUMBER_ARRAY: TArray<ShortInt>;
    NUMBER_CHAR_ARRAY: TArray<WideChar>;
    NUMBER_CHAR_ARRAYS: TArray<TArray<WideChar>>;
    ZERO: TArray<WideChar>;
    class var instance: TPrimitiveLongSingleton;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPrimitiveLongSingleton; static;
        function getNumberFromChar(numberAsChar: WideChar): ShortInt; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TPrimitiveLongSingleton.InitFields;
begin
  Self.UNK := TArray<WideChar>.Create('U', 'n', 'k');
  Self.NUMBER_ARRAY := TArray<ShortInt>.Create(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
  Self.NUMBER_CHAR_ARRAY := TArray<WideChar>.Create('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
  Self.NUMBER_CHAR_ARRAYS := [TArray<WideChar>.Create('0'), TArray<WideChar>.Create('1'), TArray<WideChar>.Create('2'), TArray<WideChar>.Create('3'), TArray<WideChar>.Create('4'), TArray<WideChar>.Create('5'), TArray<WideChar>.Create('6'), TArray<WideChar>.Create('7'), TArray<WideChar>.Create('8'), TArray<WideChar>.Create('9')];
  Self.ZERO := TArray<WideChar>.Create(Self.NUMBER_CHAR_ARRAY[0]);
end;

constructor TPrimitiveLongSingleton.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPrimitiveLongSingleton.getInstance: TPrimitiveLongSingleton;
begin
        Exit(TPrimitiveLongSingleton.instance);
end;
    

// throws Exception
function TPrimitiveLongSingleton.getNumberFromChar(numberAsChar: WideChar): ShortInt;
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.NUMBER_CHAR_ARRAY);
        for index := 0 to size - 1 do begin
            if (Self.NUMBER_CHAR_ARRAY[index]) = (numberAsChar) then begin
                Exit(Self.NUMBER_ARRAY[index]);
            end;
        end;
        raise SysUtils.Exception.Create(TStringMaker.Create().append('numberAsChar was not in array: ').appendchar(numberAsChar).toString());
end;

initialization
  {AB:INITIALIZATION}
  TPrimitiveLongSingleton.instance := TPrimitiveLongSingleton.Create();
  {AB:END}

end.

