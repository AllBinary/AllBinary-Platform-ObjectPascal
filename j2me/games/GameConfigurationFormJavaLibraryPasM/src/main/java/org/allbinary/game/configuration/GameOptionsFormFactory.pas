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
unit GameOptionsFormFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, BasicColor, CommandForm, LogUtil;

type
  {AB:TYPES}
  TGameOptionsFormFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TGameOptionsFormFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TGameOptionsFormFactory; static;
        function init(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TCommandForm; virtual;
  end;

implementation
uses
  GameOptionsForm, CommonStrings;


{AB:CODE}

procedure TGameOptionsFormFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TGameOptionsFormFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TGameOptionsFormFactory.getInstance: TGameOptionsFormFactory;
begin
        Exit(TGameOptionsFormFactory.instance);
end;
    

function TGameOptionsFormFactory.init(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TCommandForm;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TGameOptionsForm.Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
            Exit(TCommandForm.getNullCommandForm());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameOptionsFormFactory.instance := TGameOptionsFormFactory.Create();
  {AB:END}

end.

