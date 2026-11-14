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
// package org.allbinary.graphics
unit RectangleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle;

type
  {AB:TYPES}
  TRectangleFactory = class(TObject)
  public
    class var SINGLETON: TRectangle;
    class var ARRAY_OF_ARRAYS: TArray<TArray<TRectangle>>;
    constructor Create;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

constructor TRectangleFactory.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TRectangleFactory.SINGLETON := TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0);
  TRectangleFactory.ARRAY_OF_ARRAYS := TJava.NewArray2<TRectangle>(0, 0);
  {AB:END}

end.

