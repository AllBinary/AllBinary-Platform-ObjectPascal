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
// package org.allbinary.string
unit CommonLabels;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCommonLabels = class(TObject)
  public
    WIDTH_LABEL: string;
    HEIGHT_LABEL: string;
    END_LABEL: string;
    TOTAL_LABEL: string;
    INDEX_LABEL: string;
    START_LABEL: string;
    COMMAND_LABEL: string;
    NAME_LABEL: string;
    START: string;
    ELAPSED: string;
    CURRENT: string;
    NEXT: string;
    ITEM_LABEL: string;
    RESULT_: string;
    COLON_SEP: string;
    class var instance: TCommonLabels;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommonLabels; static;
  end;

implementation
uses
  JsType, JsMethod, JsProperty;


{AB:CODE}

procedure TCommonLabels.InitFields;
begin
  Self.WIDTH_LABEL := ' Width: ';
  Self.HEIGHT_LABEL := ' Height: ';
  Self.END_LABEL := 'End: ';
  Self.TOTAL_LABEL := 'Total: ';
  Self.INDEX_LABEL := 'index: ';
  Self.START_LABEL := 'Start: ';
  Self.COMMAND_LABEL := 'Command: ';
  Self.NAME_LABEL := 'Name: ';
  Self.START := Self.START_LABEL;
  Self.ELAPSED := ' Elapsed: ';
  Self.CURRENT := ' Current: ';
  Self.NEXT := 'Next';
  Self.ITEM_LABEL := 'Item: ';
  Self.RESULT_ := 'Result: ';
  Self.COLON_SEP := ': ';
end;

constructor TCommonLabels.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommonLabels.getInstance: TCommonLabels;
begin
        Exit(TCommonLabels.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCommonLabels.instance := TCommonLabels.Create();
  {AB:END}

end.

