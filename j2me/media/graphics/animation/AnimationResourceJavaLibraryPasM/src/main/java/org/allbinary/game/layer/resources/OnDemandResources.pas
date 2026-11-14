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
// package org.allbinary.game.layer.resources
unit OnDemandResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseResourceAnimationInterfaceFactoryInterfaceFactory, ImageCache, LogUtil;

type
  {AB:TYPES}
  TOnDemandResources = class(TObject)
  public
    logUtil: TLogUtil;
    class var NULL_ON_DEMAND_RESOURCES: TOnDemandResources;
    procedure InitFields;
        constructor Create;
        procedure waitFor; virtual;
        procedure init; virtual;
        function initAt(imageCache_: TImageCache; resourceAnimationInterfaceFactoryInterfaceFactory: TBaseResourceAnimationInterfaceFactoryInterfaceFactory; portion: Integer; loadingString: string; index: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TOnDemandResources.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TOnDemandResources.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TOnDemandResources.waitFor;
begin
end;
    

// throws Exception
procedure TOnDemandResources.init;
begin
end;
    

// throws Exception
function TOnDemandResources.initAt(imageCache_: TImageCache; resourceAnimationInterfaceFactoryInterfaceFactory: TBaseResourceAnimationInterfaceFactoryInterfaceFactory; portion: Integer; loadingString: string; index: Integer): Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  TOnDemandResources.NULL_ON_DEMAND_RESOURCES := TOnDemandResources.Create();
  {AB:END}

end.

