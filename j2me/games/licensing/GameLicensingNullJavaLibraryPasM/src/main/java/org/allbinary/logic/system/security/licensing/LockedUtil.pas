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
// package org.allbinary.logic.system.security.licensing
unit LockedUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LockableFeature, LockedUtilInterface;

type
  {AB:TYPES}
  TLockedUtil = class(TInterfacedObject, ILockedUtilInterface)
  public
    class var instance: TLockedUtil;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TLockedUtil; static;
        function isLocked: Boolean; virtual;
        function isLockedFeature(lockableFeatrue: TLockableFeature): Boolean; virtual;
  end;

implementation

{AB:CODE}

function TLockedUtil.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TLockedUtil.Create;
begin
  inherited Create;
end;
    

class function TLockedUtil.getInstance: TLockedUtil;
begin
        Exit(TLockedUtil.instance);
end;
    

function TLockedUtil.isLocked: Boolean;
begin
        Exit(True);
end;
    

function TLockedUtil.isLockedFeature(lockableFeatrue: TLockableFeature): Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TLockedUtil.instance := TLockedUtil.Create();
  {AB:END}

end.

