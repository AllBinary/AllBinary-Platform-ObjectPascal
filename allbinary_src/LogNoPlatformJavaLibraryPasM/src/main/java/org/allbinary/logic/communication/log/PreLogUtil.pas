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
unit PreLogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // NoPlatform
  TPreLogUtil = class(TObject)
  public
        constructor Create;
        class procedure put(specialMessage: string; anyType: TObject; functionName: string); static;
        class procedure putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); static;
        class procedure putSE(specialMessage: string; className: string; functionName: string; exception: TObject); static;
  end;

implementation
uses
  NullUtil;


{AB:CODE}
    

constructor TPreLogUtil.Create;
begin
    inherited Create;
end;
    

class procedure TPreLogUtil.put(specialMessage: string; anyType: TObject; functionName: string);
begin
        TPreLogUtil.putOE(specialMessage, anyType, functionName, TNullUtil.getInstance().NULL_OBJECT);
end;
    

class procedure TPreLogUtil.putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
begin
        raise SysUtils.Exception.Create('');
end;
    

class procedure TPreLogUtil.putSE(specialMessage: string; className: string; functionName: string; exception: TObject);
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

