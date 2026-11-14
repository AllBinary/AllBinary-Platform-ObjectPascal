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
// package org.allbinary.logic.communication.log
unit ForcedLogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TForcedLogUtil = class(TObject)
  public
    constructor Create;
        class procedure log(message: string; anyType: TObject); static;
  end;

implementation
uses
  CommonStrings, PreLogUtil;


{AB:CODE}

constructor TForcedLogUtil.Create;
begin
  inherited Create;
end;
    

class procedure TForcedLogUtil.log(message: string; anyType: TObject);
begin
        try
            raise SysUtils.Exception.Create(message);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(TCommonStrings.getInstance().EXCEPTION, TJava.Box(anyType), 'log', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

