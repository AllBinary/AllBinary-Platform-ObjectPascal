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
// package org.allbinary.math
unit DistanceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MathUtil;

type
  {AB:TYPES}
  TDistanceUtil = class(TObject)
  public
    mathUtil: TMathUtil;
    class var instance: TDistanceUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDistanceUtil; static;
        function getDistance(x1: Integer; y1: Integer; x2: Integer; y2: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TDistanceUtil.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
end;

constructor TDistanceUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDistanceUtil.getInstance: TDistanceUtil;
begin
        Exit(TDistanceUtil.instance);
end;
    

function TDistanceUtil.getDistance(x1: Integer; y1: Integer; x2: Integer; y2: Integer): Integer;
var
  dx: Integer;
  dy: Integer;
begin
        dx := (x1) - (x2);
        dy := (y1) - (y2);
        Exit(Integer(Trunc(Self.mathUtil.sqrt((((dx) * (dx))) + (((dy) * (dy)))))));
end;

initialization
  {AB:INITIALIZATION}
  TDistanceUtil.instance := TDistanceUtil.Create();
  {AB:END}

end.

