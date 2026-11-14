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
// package org.allbinary.game.ag.ai
unit LastKeyAIVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Visitor;

type
  {AB:TYPES}
  TLastKeyAIVisitor = class(TVisitor)
  public
    logUtil: TLogUtil;
    TRUE_: Boolean;
    procedure InitFields;
        constructor Create;
        function visit(anyType: TObject): TObject; override;
  end;

implementation
uses
  BasicAI, BooleanFactory, CommonStrings;


{AB:CODE}

procedure TLastKeyAIVisitor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.TRUE_ := TBooleanFactory.getInstance().TRUE_;
end;
    

constructor TLastKeyAIVisitor.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TLastKeyAIVisitor.visit(anyType: TObject): TObject;
var
  basicAI_: TBasicAI;
  key: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            basicAI_ := TBasicAI(TJava.ToObject(anyType));
            key := basicAI_.getLastKey();
            if (key) <> (-1) then begin
                basicAI_.processKeyAI(key);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.VISIT, TJava.Box(e));
            end;
        end;
        Exit(TJava.Box(Self.TRUE_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

