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
// package org.allbinary.bounds
unit TopULayerBounds;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, BoundsVisitorInterface, LayerBounds;

type
  {AB:TYPES}
  TTopULayerBounds = class(TLayerBounds)
  public
        constructor Create(rectangle_: TRectangle);
        procedure visit(boundsVisitorInterface_: IBoundsVisitorInterface); override;
  end;

implementation

{AB:CODE}
    

constructor TTopULayerBounds.Create(rectangle_: TRectangle);
begin
        inherited Create(rectangle_);
end;
    

procedure TTopULayerBounds.visit(boundsVisitorInterface_: IBoundsVisitorInterface);
begin
        if (boundsVisitorInterface_.getX()) > (Self.rectangle.getMaxX()) then begin
            boundsVisitorInterface_.maxX();
        end;
        if (boundsVisitorInterface_.getX()) < (Self.rectangle.getPoint().getX()) then begin
            boundsVisitorInterface_.minX();
        end;
        if (boundsVisitorInterface_.getY()) < (Self.rectangle.getPoint().getY()) then begin
            boundsVisitorInterface_.minY();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

