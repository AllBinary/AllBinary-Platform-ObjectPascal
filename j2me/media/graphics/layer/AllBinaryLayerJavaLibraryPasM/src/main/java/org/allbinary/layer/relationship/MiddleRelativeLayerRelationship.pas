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
// package org.allbinary.layer.relationship
unit MiddleRelativeLayerRelationship;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, RelativeLayerRelationship;

type
  {AB:TYPES}
  TMiddleRelativeLayerRelationship = class(TRelativeLayerRelationship)
  public
        constructor Create(layer: TAllBinaryLayer);
  end;

implementation
uses
  PointFactory, BasicArrayListUtil;


{AB:CODE}
    

constructor TMiddleRelativeLayerRelationship.Create(layer: TAllBinaryLayer);
begin
        inherited Create(layer, TPointFactory.getInstance().createXY(layer.getHalfWidth(), layer.getHalfHeight()), TBasicArrayListUtil.getInstance().getImmutableInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

