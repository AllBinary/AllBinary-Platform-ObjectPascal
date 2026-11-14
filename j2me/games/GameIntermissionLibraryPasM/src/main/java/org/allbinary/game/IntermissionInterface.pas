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
// package org.allbinary.game
unit IntermissionInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TimeDelayHelper, IntermissionEnableListenerInterface;

type
  {AB:TYPES}
  IIntermissionInterface = interface(IJavaObject) ['IIntermissionInterface']
        function getTimeDelayHelper: TTimeDelayHelper;
        function isEnabled: Boolean;
        procedure setEnabled(value: Boolean);
        procedure setListener(enableListener: IIntermissionEnableListenerInterface);
  end;
  TIntermissionInterface = IIntermissionInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

