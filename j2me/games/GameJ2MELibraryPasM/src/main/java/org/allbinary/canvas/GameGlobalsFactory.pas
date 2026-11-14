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
// package org.allbinary.canvas
unit GameGlobalsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TGameGlobalsFactory = class(TObject)
  public
    newCanvas: Boolean;
    newDisplaybleTime: Int64;
    point: TGPoint;
    class var instance: TGameGlobalsFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameGlobalsFactory; static;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

procedure TGameGlobalsFactory.InitFields;
begin
  Self.newCanvas := True;
  Self.newDisplaybleTime := Int64(Low(Integer));
  Self.point := TPointFactory.getInstance().ZERO_ZERO;
end;

constructor TGameGlobalsFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameGlobalsFactory.getInstance: TGameGlobalsFactory;
begin
        Exit(TGameGlobalsFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameGlobalsFactory.instance := TGameGlobalsFactory.Create();
  {AB:END}

end.

