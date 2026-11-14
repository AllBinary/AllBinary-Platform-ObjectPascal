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
// package org.allbinary.graphics.form.item.validation
unit TextItemNumberVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Visitor;

type
  {AB:TYPES}
  TTextItemNumberVisitor = class(TVisitor)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function visit(anyType: TObject): TObject; override;
  end;

implementation
uses
  TextNotificationUtil, BooleanFactory, CommonStrings;


{AB:CODE}

procedure TTextItemNumberVisitor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TTextItemNumberVisitor.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TTextItemNumberVisitor.visit(anyType: TObject): TObject;
var
  value: string;
  stringValidationUtil_: TObject;
  commonStrings_: TCommonStrings;
begin
        value := TJava.UnboxString(TJava.ToObject(anyType));
        if (System.Length(value)) < (2) then begin
            stringValidationUtil_ := nil;
            if TJava.IsNumber(value) then begin
                Exit(TJava.Box(TBooleanFactory.getInstance().TRUE_));
            end else begin
                try
                    TTextNotificationUtil.getInstance().fireError('Numbers Only');
                except
                    on e: SysUtils.Exception do begin
                    commonStrings_ := TCommonStrings.getInstance();
                    Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.VISIT, TJava.Box(e));
                    end;
                end;
                Exit(TJava.Box(TBooleanFactory.getInstance().FALSE_));
            end;
        end else begin
            Exit(TJava.Box(TBooleanFactory.getInstance().FALSE_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

