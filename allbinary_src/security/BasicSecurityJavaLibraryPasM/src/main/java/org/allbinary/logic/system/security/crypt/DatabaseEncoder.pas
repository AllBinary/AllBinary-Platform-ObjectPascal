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
// package org.allbinary.logic.system.security.crypt
unit DatabaseEncoder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TDatabaseEncoder = class(TObject)
  public
        constructor Create;
        class function encode(value: TArray<ShortInt>): string; static;
        class function decode(value: string): TArray<ShortInt>; static;
  end;

implementation
uses
  NullUtil, PreLogUtil, StringMaker, StringUtil, Tokenizer, CommonSeps, CommonStrings, BasicArrayList, BasicArrayListD;


{AB:CODE}
    

constructor TDatabaseEncoder.Create;
begin
    inherited Create;
end;
    

class function TDatabaseEncoder.encode(value: TArray<ShortInt>): string;
var
  array_: TArray<ShortInt>;
  stringBuffer: TStringMaker;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            array_ := value;
            stringBuffer := TStringMaker.Create();
            for index := 0 to System.Length(array_) - 1 do begin
                stringBuffer.append(array_[index].toString());
                if (index) < ((System.Length(array_)) - (1)) then begin
                    stringBuffer.append(TCommonSeps.getInstance().SPACE);
                end;
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box('DatabaseEncoder'), 'decode', TJava.Box(e));
            Exit(TStringUtil.getInstance().EMPTY_STRING);
            end;
        end;
end;
    

class function TDatabaseEncoder.decode(value: string): TArray<ShortInt>;
var
  tokenizer_: TTokenizer;
  vector: TBasicArrayList;
  size: Integer;
  decode: TArray<ShortInt>;
  byteOfData: string;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            tokenizer_ := TTokenizer.Create(TCommonSeps.getInstance().SPACE);
            vector := tokenizer_.getTokensFromString(value, TBasicArrayListD.Create());
            size := vector.size();
            decode := TJava.NewArray<ShortInt>(size);
            
            for index := 0 to size - 1 do begin
                byteOfData := TJava.UnboxString(TJava.ToObject(vector.objectArray[index]));
                decode[index] := ShortInt(StrToInt(byteOfData));
            end;
            Exit(decode);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putSE(commonStrings_.EXCEPTION, 'DatabaseEncoder', 'decode', TJava.Box(e));
            Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

