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
unit AngleIncrementInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AngleIncrementInfo;

type
  {AB:TYPES}
  TAngleIncrementInfoFactory = class(TObject)
  public
    angleIncrementInfo: TArray<TAngleIncrementInfo>;
    class var instance: TAngleIncrementInfoFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAngleIncrementInfoFactory; static;
        function getAt(angleIncrement: SmallInt): TAngleIncrementInfo; virtual;
  end;

implementation
uses
  AngleFactory;


{AB:CODE}

procedure TAngleIncrementInfoFactory.InitFields;
begin
  Self.angleIncrementInfo := TJava.NewArray<TAngleIncrementInfo>(Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE)));
end;

constructor TAngleIncrementInfoFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAngleIncrementInfoFactory.getInstance: TAngleIncrementInfoFactory;
begin
        Exit(TAngleIncrementInfoFactory.instance);
end;
    

function TAngleIncrementInfoFactory.getAt(angleIncrement: SmallInt): TAngleIncrementInfo;
var
  halfAngleIncrement: Integer;
  angleIncrementInfo_: TAngleIncrementInfo;
  angleIncrementInfoCanBeNull: TAngleIncrementInfo;
begin
        halfAngleIncrement := (TJava.SignedRightShift(Integer(angleIncrement), 1));
        
        angleIncrementInfoCanBeNull := Self.angleIncrementInfo[halfAngleIncrement];
        if (angleIncrementInfoCanBeNull) = (nil) then begin
            angleIncrementInfo_ := TAngleIncrementInfo.Create(angleIncrement);
            Self.angleIncrementInfo[halfAngleIncrement] := angleIncrementInfo_;
            Exit(angleIncrementInfo_);
        end else begin
            angleIncrementInfo_ := angleIncrementInfoCanBeNull;
        end;
        Exit(angleIncrementInfo_);
end;

initialization
  {AB:INITIALIZATION}
  TAngleIncrementInfoFactory.instance := TAngleIncrementInfoFactory.Create();
  {AB:END}

end.

