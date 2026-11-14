// Generated Code Do Not Modify
// package org.allbinary.time
unit StupidTimer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NullUtil, LogUtil, Visitor, CommonStrings, ThreadObjectUtil, TimeDelayHelper;

type
  {AB:TYPES}
  TStupidTimer = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    nullUtil: TNullUtil;
    threadObjectUtil: TThreadObjectUtil;
    procedure InitFields;
    constructor Create;
        function visitBool(visitorInterface: TVisitor): Boolean;
        procedure visit(visitorInterface: TVisitor; timeDelayHelper_: TTimeDelayHelper);
        procedure stopWaiting; virtual;
  end;

implementation
uses
  PreLogUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TStupidTimer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.nullUtil := TNullUtil.getInstance();
  Self.threadObjectUtil := TThreadObjectUtil.getInstance();
end;

constructor TStupidTimer.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TStupidTimer.visitBool(visitorInterface: TVisitor): Boolean;
var
  result_: Boolean;
  result2: Boolean;
begin
        result_ := Boolean(visitorInterface.visit(Self.nullUtil.NULL_OBJECT));
        result2 := (result_);
        Exit(result2);
end;
    

// throws Exception
procedure TStupidTimer.visit(visitorInterface: TVisitor; timeDelayHelper_: TTimeDelayHelper);
var
  tookTooLong: Boolean;
  WAITING_FOR: string;
  index: Integer;
begin
        tookTooLong := False;
        WAITING_FOR := 'Waiting for: ';
        TPreLogUtil.put(TStringMaker.Create().append(WAITING_FOR).append(TStringUtil.getInstance().toString(visitorInterface)).toString(), TJava.Box(Self), Self.commonStrings.VISIT);
        index := 0;
        while Self.visitBool(visitorInterface) do begin
            if ((index) mod (10)) = (0) then begin
                TPreLogUtil.put(TStringMaker.Create().append(WAITING_FOR).appendint(index).toString(), TJava.Box(Self), Self.commonStrings.VISIT);
            end;
            Inc(index);
            TJava.MonitorEnter(Self);
            try
                Self.threadObjectUtil.waitObjectFor(TJava.Box(Self), 1800);
            finally
                TJava.MonitorExit(Self);
            end;
            if timeDelayHelper_.isTimeTNT() then begin
                tookTooLong := True;
                Break;
            end;
        end;
        if tookTooLong then begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.VISIT, TJava.Box(SysUtils.Exception.Create(TStringMaker.Create().append('Took Too Long: ').append(TStringUtil.getInstance().toString(visitorInterface)).toString())));
        end else begin
            TPreLogUtil.put(timeDelayHelper_.toString(), TJava.Box(Self), Self.commonStrings.VISIT);
        end;
end;
    

// throws Exception
procedure TStupidTimer.stopWaiting;
begin
        TJava.MonitorEnter(Self);
        try
            Self.threadObjectUtil.notifyObject(TJava.Box(Self));
        finally
            TJava.MonitorExit(Self);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

