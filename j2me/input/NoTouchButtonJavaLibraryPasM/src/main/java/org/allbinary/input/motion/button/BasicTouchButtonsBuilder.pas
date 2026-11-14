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
// package org.allbinary.input.motion.button
unit BasicTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, BaseTouchInput;

type
  {AB:TYPES}
  TBasicTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    class var SINGLETON: TBasicTouchButtonsBuilder;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBaseTouchInput; static;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  CommonStrings, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TBasicTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TBasicTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicTouchButtonsBuilder.getInstance: TBaseTouchInput;
begin
        Exit(TBasicTouchButtonsBuilder.SINGLETON);
end;
    

function TBasicTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.GET_LIST);
            list := TBasicArrayListD.Create();
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_LIST, TJava.Box(e));
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TBasicTouchButtonsBuilder.SINGLETON := TBasicTouchButtonsBuilder.Create();
  {AB:END}

end.

