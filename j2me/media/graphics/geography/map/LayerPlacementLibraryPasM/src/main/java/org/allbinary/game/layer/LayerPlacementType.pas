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
// package org.allbinary.game.layer
unit LayerPlacementType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLayerPlacementType = class(TObject)
  public
    type_: Integer;
    procedure InitFields;
        constructor Create(type_: Integer);
        function getType: Integer; virtual;
        procedure setType(type_: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TLayerPlacementType.InitFields;
begin
  
end;
    

constructor TLayerPlacementType.Create(type_: Integer);
begin
    inherited Create;
    InitFields;
        Self.type_ := type_;
end;
    

function TLayerPlacementType.getType: Integer;
begin
        Exit(Self.type_);
end;
    

procedure TLayerPlacementType.setType(type_: Integer);
begin
        Self.type_ := type_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

