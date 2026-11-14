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
// package org.allbinary.logic.system.security.crypt.jcehelper
unit KeySpecFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TKeySpecFactory = class(TObject)
  public
    DES: string;
    DESEDE: string;
    BLOWFISH: string;
    class var instance: TKeySpecFactory;
    procedure InitFields;
        class function getInstance: TKeySpecFactory; overload; static;
        constructor Create;
        function getInstance(algorithm: string; keyData: TArray<ShortInt>): TKeySpec; overload; virtual;
  end;

implementation
uses
  TsUtil, PreLogUtil, CommonStrings;


{AB:CODE}

procedure TKeySpecFactory.InitFields;
begin
  Self.DES := 'DES';
  Self.DESEDE := 'DESede';
  Self.BLOWFISH := 'Blowfish';
end;
    

class function TKeySpecFactory.getInstance: TKeySpecFactory;
begin
        Exit(TKeySpecFactory.instance);
end;
    

constructor TKeySpecFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TKeySpecFactory.getInstance(algorithm: string; keyData: TArray<ShortInt>): TKeySpec;
var
  tsUtil_: TTsUtil;
  commonStrings_: TCommonStrings;
begin
        try
            tsUtil_ := TTsUtil.getInstance();
            if (tsUtil_.compareTo(algorithm, Self.DES)) = (0) then begin
                Exit(TDESKeySpec.Create(keyData));
            end else if (tsUtil_.compareTo(algorithm, Self.DESEDE)) = (0) then begin
                Exit(TDESedeKeySpec.Create(keyData));
            end else begin
                raise SysUtils.Exception.Create('');
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            raise SysUtils.Exception.Create('');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TKeySpecFactory.instance := TKeySpecFactory.Create();
  {AB:END}

end.

