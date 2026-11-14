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
// package org.allbinary.graphics.paint
unit InitUpdatePaintableInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InitInterface, UpdateInterface, Graphics, PaintableInterface;

type
  {AB:TYPES}
  IInitUpdatePaintableInterface = interface(IInitInterface) ['IInitUpdatePaintableInterface']
        procedure update; overload;
        procedure paint(graphics_: TGraphics); overload;
        procedure paintThreed(graphics_: TGraphics); overload;
  end;
  TInitUpdatePaintableInterface = IInitUpdatePaintableInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

