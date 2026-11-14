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
// package org.allbinary
unit DisposalUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Resource;

type
  {AB:TYPES}
  TDisposalUtil = class(TObject)
  public
    class var instance: TDisposalUtil;
    constructor Create;
        class function getInstance: TDisposalUtil; static;
        procedure disposeImage(image_: TImage); virtual;
        procedure disposeResource(resource_: TResource); virtual;
  end;

implementation

{AB:CODE}

constructor TDisposalUtil.Create;
begin
  inherited Create;
end;
    

class function TDisposalUtil.getInstance: TDisposalUtil;
begin
        Exit(TDisposalUtil.instance);
end;
    

procedure TDisposalUtil.disposeImage(image_: TImage);
begin
end;
    

procedure TDisposalUtil.disposeResource(resource_: TResource);
begin
        if not (resource_.isDisposed()) then begin
            resource_.dispose_();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TDisposalUtil.instance := TDisposalUtil.Create();
  {AB:END}

end.

