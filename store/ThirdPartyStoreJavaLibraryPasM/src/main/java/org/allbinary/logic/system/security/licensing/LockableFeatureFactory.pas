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
unit LockableFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TLockableFeatureFactory = class(TObject)
  public
    list: TBasicArrayList;
    class var instance: TLockableFeatureFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLockableFeatureFactory; static;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TLockableFeatureFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;

constructor TLockableFeatureFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLockableFeatureFactory.getInstance: TLockableFeatureFactory;
begin
        Exit(TLockableFeatureFactory.instance);
end;
    

function TLockableFeatureFactory.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  TLockableFeatureFactory.instance := TLockableFeatureFactory.Create();
  {AB:END}

end.

