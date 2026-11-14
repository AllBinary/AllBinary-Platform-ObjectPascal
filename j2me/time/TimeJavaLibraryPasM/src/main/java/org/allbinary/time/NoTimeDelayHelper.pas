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
// package org.allbinary.time
unit NoTimeDelayHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TimeDelayHelper;

type
  {AB:TYPES}
  TNoTimeDelayHelper = class(TTimeDelayHelper)
  public
    class var SINGLETON: TNoTimeDelayHelper;
        constructor Create;
        function isTimeTNT: Boolean; override;
        function isTimeSinceTNT(delay: Integer): Boolean; override;
        function isTime(currentTime: Int64): Boolean; override;
        function isTimeSince(delay: Integer; currentTime: Int64): Boolean; override;
  end;

implementation

{AB:CODE}
    

constructor TNoTimeDelayHelper.Create;
begin
        inherited Create(0);
end;
    

function TNoTimeDelayHelper.isTimeTNT: Boolean;
begin
        Exit(True);
end;
    

function TNoTimeDelayHelper.isTimeSinceTNT(delay: Integer): Boolean;
begin
        Exit(True);
end;
    

function TNoTimeDelayHelper.isTime(currentTime: Int64): Boolean;
begin
        Exit(True);
end;
    

function TNoTimeDelayHelper.isTimeSince(delay: Integer; currentTime: Int64): Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TNoTimeDelayHelper.SINGLETON := TNoTimeDelayHelper.Create();
  {AB:END}

end.

