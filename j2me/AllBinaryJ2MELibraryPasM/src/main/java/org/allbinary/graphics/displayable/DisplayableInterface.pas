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
// package org.allbinary.graphics.displayable
unit DisplayableInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener;

type
  {AB:TYPES}
  IDisplayableInterface = interface(IJavaObject) ['IDisplayableInterface']
        procedure addCommand(cmd: TCommand);
        function getHeight: Integer;
        function getWidth: Integer;
        procedure removeCommand(cmd: TCommand);
        procedure setCommandListener(l: ICommandListener);
  end;
  TDisplayableInterface = IDisplayableInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

