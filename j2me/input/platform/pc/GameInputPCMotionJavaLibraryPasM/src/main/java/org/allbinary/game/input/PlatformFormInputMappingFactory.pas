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
unit PlatformFormInputMappingFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputToGameKeyMapping, LogUtil;

type
  {AB:TYPES}
  TPlatformFormInputMappingFactory = class(TObject)
  public
    logUtil: TLogUtil;
    inputToGameKeyMapping: TInputToGameKeyMapping;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPlatformFormInputMappingFactory; static;
        function getOrCreate: TInputToGameKeyMapping; virtual;
  end;

implementation
uses
  PCKeyFactory, GameKeyFactory, BasicTouchInputFactory, NullUtil, CommonStrings;


{AB:CODE}

procedure TPlatformFormInputMappingFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.inputToGameKeyMapping := TInputToGameKeyMapping.getNullInstance();
end;

constructor TPlatformFormInputMappingFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPlatformFormInputMappingFactory.getInstance: TPlatformFormInputMappingFactory;
begin
        if (TPlatformFormInputMappingFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TPlatformFormInputMappingFactory.instance := TPlatformFormInputMappingFactory.Create();
        end;
        Exit(TPlatformFormInputMappingFactory(TJava.ToObject(TPlatformFormInputMappingFactory.instance)));
end;
    

function TPlatformFormInputMappingFactory.getOrCreate: TInputToGameKeyMapping;
var
  pcKeyFactory_: TPCKeyFactory;
  inputToGameKeyMapping_: TInputToGameKeyMapping;
  gameKeyFactory_: TGameKeyFactory;
  basicTouchInputFactory_: TBasicTouchInputFactory;
  commonStrings_: TCommonStrings;
begin
        try
            if (Self.inputToGameKeyMapping) = (TInputToGameKeyMapping.getNullInstance()) then begin
                pcKeyFactory_ := TPCKeyFactory.getInstance();
                inputToGameKeyMapping_ := TInputToGameKeyMapping.Create();
                gameKeyFactory_ := TGameKeyFactory.getInstance();
                basicTouchInputFactory_ := TBasicTouchInputFactory.getInstance();
                inputToGameKeyMapping_.add(gameKeyFactory_.UP, pcKeyFactory_.DPAD_UP);
                inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, pcKeyFactory_.DPAD_DOWN);
                inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, pcKeyFactory_.DPAD_LEFT);
                inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, pcKeyFactory_.DPAD_RIGHT);
                inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, pcKeyFactory_.ENTER);
                inputToGameKeyMapping_.add(gameKeyFactory_.UP, basicTouchInputFactory_.UP);
                inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, basicTouchInputFactory_.LEFT);
                inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, basicTouchInputFactory_.RIGHT);
                inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, basicTouchInputFactory_.DOWN);
                Self.inputToGameKeyMapping := inputToGameKeyMapping_;
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
  TPlatformFormInputMappingFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

