{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.system
unit PlatformAssetManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPlatformAssetManager = class(TObject)
  public
    class var instance: TPlatformAssetManager;
    constructor Create;
        class function getInstance: TPlatformAssetManager; static;
        function getResourceAsStream(resource: string): TInputStream; virtual;
  end;

implementation
uses
  ResourceUtil;


{AB:CODE}

constructor TPlatformAssetManager.Create;
begin
  inherited Create;
end;
    

class function TPlatformAssetManager.getInstance: TPlatformAssetManager;
begin
        Exit(TPlatformAssetManager.instance);
end;
    

// throws Exception
function TPlatformAssetManager.getResourceAsStream(resource: string): TInputStream;
var
  resourceUtil_: TResourceUtil;
  inputStream_: TInputStream;
begin
        resourceUtil_ := TResourceUtil.getInstance();
        inputStream_ := resourceUtil_.getResourceAsStream(resource);
        Exit(inputStream_);
end;

initialization
  {AB:INITIALIZATION}
  TPlatformAssetManager.instance := TPlatformAssetManager.Create();
  {AB:END}

end.

