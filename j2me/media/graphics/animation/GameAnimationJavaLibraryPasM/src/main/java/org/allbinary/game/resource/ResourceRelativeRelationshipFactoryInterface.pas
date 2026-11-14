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
// package org.allbinary.game.resource
unit ResourceRelativeRelationshipFactoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameFeatureControlledInterface, RelativeRelationship, BasicArrayList;

type
  {AB:TYPES}
  IResourceRelativeRelationshipFactoryInterface = interface(IGameFeatureControlledInterface) ['IResourceRelativeRelationshipFactoryInterface']
        function getResourceRelativeRelationshipList(resource: string): TBasicArrayList;
        procedure addResourceRelativeRelationship(resource: string; relativeRelationship_: TRelativeRelationship);
  end;
  TResourceRelativeRelationshipFactoryInterface = IResourceRelativeRelationshipFactoryInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

