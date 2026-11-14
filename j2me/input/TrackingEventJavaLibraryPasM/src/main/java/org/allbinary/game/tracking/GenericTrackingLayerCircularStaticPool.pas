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
// package org.allbinary.game.tracking
unit GenericTrackingLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerCircularPool;

type
  {AB:TYPES}
  TGenericTrackingLayerCircularStaticPool = class(TAllBinaryLayerCircularPool)
  public
    class var SINGLETON: TGenericTrackingLayerCircularStaticPool;
        constructor Create;
        class function getInstance: TGenericTrackingLayerCircularStaticPool; static;
  end;

implementation

{AB:CODE}
    

constructor TGenericTrackingLayerCircularStaticPool.Create;
begin
    inherited Create;
end;
    

class function TGenericTrackingLayerCircularStaticPool.getInstance: TGenericTrackingLayerCircularStaticPool;
begin
        Exit(TGenericTrackingLayerCircularStaticPool.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TGenericTrackingLayerCircularStaticPool.SINGLETON := TGenericTrackingLayerCircularStaticPool.Create();
  {AB:END}

end.

