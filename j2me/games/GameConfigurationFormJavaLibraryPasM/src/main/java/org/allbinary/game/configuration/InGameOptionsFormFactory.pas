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
// package org.allbinary.game.configuration
unit InGameOptionsFormFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, BasicColor, CommandForm, Init, LogUtil;

type
  {AB:TYPES}
  TInGameOptionsFormFactory = class(TObject)
  public
    logUtil: TLogUtil;
    SINGLETON: TCommandForm;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInGameOptionsFormFactory; static;
        procedure init(commandListener_: ICommandListener; initInterface: TInit; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor); virtual;
        function get: TCommandForm; virtual;
  end;

implementation
uses
  InGameOptionsForm, NullUtil, CommonStrings;


{AB:CODE}

procedure TInGameOptionsFormFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.SINGLETON := TCommandForm.getNullCommandForm();
end;

constructor TInGameOptionsFormFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInGameOptionsFormFactory.getInstance: TInGameOptionsFormFactory;
begin
        if (TInGameOptionsFormFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TInGameOptionsFormFactory.instance := TInGameOptionsFormFactory.Create();
        end;
        Exit(TInGameOptionsFormFactory(TJava.ToObject(TInGameOptionsFormFactory.instance)));
end;
    

procedure TInGameOptionsFormFactory.init(commandListener_: ICommandListener; initInterface: TInit; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  commonStrings_: TCommonStrings;
begin
        try
            if (Self.SINGLETON) = (TCommandForm.getNullCommandForm()) then begin
                initInterface.init();
                Self.SINGLETON := TInGameOptionsForm.Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
            end;
        end;
end;
    

function TInGameOptionsFormFactory.get: TCommandForm;
begin
        Exit(Self.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TInGameOptionsFormFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

