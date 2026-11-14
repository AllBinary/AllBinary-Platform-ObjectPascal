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
// package org.allbinary.bounds.event
unit BoundsChangeEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, AllBinaryEventObject;

type
  {AB:TYPES}
  TBoundsChangeEvent = class(TAllBinaryEventObject)
  public
        constructor Create(rectangle_: TRectangle);
        function getRectangle: TRectangle; virtual;
  end;

implementation

{AB:CODE}
    

constructor TBoundsChangeEvent.Create(rectangle_: TRectangle);
begin
        inherited Create(rectangle_);
end;
    

function TBoundsChangeEvent.getRectangle: TRectangle;
begin
        Exit(TRectangle(TJava.ToObject(Self.getSource())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

