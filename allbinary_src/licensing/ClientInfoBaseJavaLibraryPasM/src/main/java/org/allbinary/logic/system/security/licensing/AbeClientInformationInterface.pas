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
// package org.allbinary.logic.system.security.licensing
unit AbeClientInformationInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericOperatingSystem, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  IAbeClientInformationInterface = interface(IJavaObject) ['IAbeClientInformationInterface']
        procedure init;
        function getOperatingSystemInterface: TGenericOperatingSystem;
        function getName: string;
        function getSpecialName: string;
        function getVersion: string;
        function getLicenseId: string;
        function getLicenseServers: TBasicArrayList;
        function getLicenseServer(index: Integer): string;
        function getNumberOfLicenseServers: Integer;
        function toHashtable: TABHashtable<TObject, TObject>;
        function isSameId(alicenseId: string): Boolean;
        function isLargerOrDifferentServerList(vector: TBasicArrayList): Boolean;
        function isHardSale: Boolean;
        function toShortString: string;
  end;
  TAbeClientInformationInterface = IAbeClientInformationInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

