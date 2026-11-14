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
// package org.allbinary.animation.text
unit CustomTextBox2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Font, BasicColor, CustomTextBox;

type
  {AB:TYPES}
  TCustomTextBox2 = class(TCustomTextBox)
  public
        constructor Create(cmdListener: ICommandListener; label_: string; text: string; maxSize: Integer; constraints: Integer; font_: TFont; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
  end;

implementation

{AB:CODE}
    

constructor TCustomTextBox2.Create(cmdListener: ICommandListener; label_: string; text: string; maxSize: Integer; constraints: Integer; font_: TFont; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(cmdListener, label_, text, maxSize, constraints, font_, backgroundBasicColor, foregroundBasicColor);
        Self.getTextFieldItem().setFocus(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

