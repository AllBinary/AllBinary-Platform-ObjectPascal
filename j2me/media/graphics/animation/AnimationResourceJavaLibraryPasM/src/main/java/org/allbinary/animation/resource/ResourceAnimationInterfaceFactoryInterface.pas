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
// package org.allbinary.animation.resource
unit ResourceAnimationInterfaceFactoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  IResourceAnimationInterfaceFactoryInterface = interface(IJavaObject) ['IResourceAnimationInterfaceFactoryInterface']
        function getBasicAnimationInterfaceFactoryInstance(resource: string): IBasicAnimationInterfaceFactoryInterface;
  end;
  TResourceAnimationInterfaceFactoryInterface = IResourceAnimationInterfaceFactoryInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

