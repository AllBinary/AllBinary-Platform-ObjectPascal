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
// package org.allbinary.logic.communication.log.config.type
unit LogConfigTypes;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TLogConfigTypes = class(TObject)
  public
    class var LOGGING: TBasicArrayList;
        constructor Create;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}
    

constructor TLogConfigTypes.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigTypes.LOGGING := TBasicArrayListD.Create();
  {AB:END}

end.

