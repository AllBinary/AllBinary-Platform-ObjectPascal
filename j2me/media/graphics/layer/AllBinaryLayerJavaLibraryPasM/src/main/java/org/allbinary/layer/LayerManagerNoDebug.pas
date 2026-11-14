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
// package org.allbinary.layer
unit LayerManagerNoDebug;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerManagerLoggingBase;

type
  {AB:TYPES}
  TLayerManagerNoDebug = class(TLayerManagerLoggingBase)
  public
    class var instance: TLayerManagerNoDebug;
    constructor Create;
        class function getInstance: TLayerManagerNoDebug; static;
  end;

implementation

{AB:CODE}

constructor TLayerManagerNoDebug.Create;
begin
  inherited Create;
end;
    

class function TLayerManagerNoDebug.getInstance: TLayerManagerNoDebug;
begin
        Exit(TLayerManagerNoDebug.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLayerManagerNoDebug.instance := TLayerManagerNoDebug.Create();
  {AB:END}

end.

