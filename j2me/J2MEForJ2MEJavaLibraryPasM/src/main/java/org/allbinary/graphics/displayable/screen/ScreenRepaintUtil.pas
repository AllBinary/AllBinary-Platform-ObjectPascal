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
// package org.allbinary.graphics.displayable.screen
unit ScreenRepaintUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable;

type
  {AB:TYPES}
  TScreenRepaintUtil = class(TObject)
  public
    constructor Create;
        class procedure repaint(displayable_: TDisplayable); static;
  end;

implementation

{AB:CODE}

constructor TScreenRepaintUtil.Create;
begin
  inherited Create;
end;
    

class procedure TScreenRepaintUtil.repaint(displayable_: TDisplayable);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

