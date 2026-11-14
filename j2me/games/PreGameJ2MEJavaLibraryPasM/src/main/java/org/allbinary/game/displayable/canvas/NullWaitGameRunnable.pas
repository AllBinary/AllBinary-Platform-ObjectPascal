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
// package org.allbinary.game.displayable.canvas
unit NullWaitGameRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameRunnable;

type
  {AB:TYPES}
  TNullWaitGameRunnable = class(TGameRunnable)
  public
    class var instance: TGameRunnable;
    constructor Create;
        class function getInstance: TGameRunnable; static;
  end;

implementation

{AB:CODE}

constructor TNullWaitGameRunnable.Create;
begin
  inherited Create;
end;
    

class function TNullWaitGameRunnable.getInstance: TGameRunnable;
begin
        Exit(TNullWaitGameRunnable.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNullWaitGameRunnable.instance := TNullWaitGameRunnable.Create();
  {AB:END}

end.

