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
// package org.allbinary.input.motion.button
unit TouchButtonsBuilderFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseTouchInput;

type
  {AB:TYPES}
  TTouchButtonsBuilderFactory = class(TObject)
  public
    class var NO_TOUCH_BUTTON_BUILDER_FACTORY: TTouchButtonsBuilderFactory;
    constructor Create;
        function getInstance: TBaseTouchInput; virtual;
  end;

implementation
uses
  NoButtonsTouchInputFactory;


{AB:CODE}

constructor TTouchButtonsBuilderFactory.Create;
begin
  inherited Create;
end;
    

function TTouchButtonsBuilderFactory.getInstance: TBaseTouchInput;
begin
        Exit(TNoButtonsTouchInputFactory.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  TTouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY := TTouchButtonsBuilderFactory.Create();
  {AB:END}

end.

