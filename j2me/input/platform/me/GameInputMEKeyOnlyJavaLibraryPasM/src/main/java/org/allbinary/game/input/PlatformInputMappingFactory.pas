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
// package org.allbinary.game.input
unit PlatformInputMappingFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PersistentInputMapping, LogUtil;

type
  {AB:TYPES}
  TPlatformInputMappingFactory = class(TObject)
  public
    logUtil: TLogUtil;
    inputToGameKeyMapping: TPersistentInputMapping;
    class var instance: TPlatformInputMappingFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPlatformInputMappingFactory; static;
        function getPersistentInputMappingInstance: TPersistentInputMapping; virtual;
  end;

implementation
uses
  NormalJ2MEGameInputMapping, CommonStrings;


{AB:CODE}

procedure TPlatformInputMappingFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.inputToGameKeyMapping := TPersistentInputMapping.getNullInstance();
end;

constructor TPlatformInputMappingFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPlatformInputMappingFactory.getInstance: TPlatformInputMappingFactory;
begin
        Exit(TPlatformInputMappingFactory.instance);
end;
    

function TPlatformInputMappingFactory.getPersistentInputMappingInstance: TPersistentInputMapping;
var
  commonStrings_: TCommonStrings;
begin
        try
            if (Self.inputToGameKeyMapping) = (TPersistentInputMapping.getNullInstance()) then begin
                Self.inputToGameKeyMapping := TNormalJ2MEGameInputMapping.Create();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
        end;
        Exit(Self.inputToGameKeyMapping);
end;

initialization
  {AB:INITIALIZATION}
  TPlatformInputMappingFactory.instance := TPlatformInputMappingFactory.Create();
  {AB:END}

end.

