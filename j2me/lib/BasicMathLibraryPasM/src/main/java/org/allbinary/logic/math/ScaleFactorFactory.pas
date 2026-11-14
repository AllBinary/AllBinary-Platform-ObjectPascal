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
// package org.allbinary.logic.math
unit ScaleFactorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TScaleFactorFactory = class(TObject)
  public
    DEFAULT_SCALE_FACTOR: Integer;
    DEFAULT_SCALE_VALUE: Integer;
    class var instance: TScaleFactorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TScaleFactorFactory; static;
  end;

implementation

{AB:CODE}

procedure TScaleFactorFactory.InitFields;
begin
  Self.DEFAULT_SCALE_FACTOR := 10;
  Self.DEFAULT_SCALE_VALUE := 1024;
end;

constructor TScaleFactorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TScaleFactorFactory.getInstance: TScaleFactorFactory;
begin
        Exit(TScaleFactorFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TScaleFactorFactory.instance := TScaleFactorFactory.Create();
  {AB:END}

end.

