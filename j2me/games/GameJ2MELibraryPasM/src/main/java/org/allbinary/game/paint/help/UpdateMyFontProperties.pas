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
// package org.allbinary.game.paint.help
unit UpdateMyFontProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TUpdateMyFontProperties = class(TObject)
  public
    actionStringArray: TArray<string>;
    keymappingBeginWidthArray: TArray<Integer>;
    actionStringDeltaXArray: TArray<Integer>;
    inputDeltaXArray: TArray<TArray<Integer>>;
    sepArray: TArray<TArray<string>>;
    sepWidthArray: TArray<TArray<Integer>>;
    charHeight: Integer;
    procedure InitFields;
    constructor Create;
  end;

implementation
uses
  NullUtil, StringUtil;


{AB:CODE}

procedure TUpdateMyFontProperties.InitFields;
begin
  Self.actionStringArray := TStringUtil.getInstance().getArrayInstance();
  Self.keymappingBeginWidthArray := TNullUtil.getInstance().NULL_INT_ARRAY;
  Self.actionStringDeltaXArray := TNullUtil.getInstance().NULL_INT_ARRAY;
  Self.inputDeltaXArray := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
  Self.sepArray := TStringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
  Self.sepWidthArray := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
  
end;

constructor TUpdateMyFontProperties.Create;
begin
  inherited Create;
  InitFields;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

