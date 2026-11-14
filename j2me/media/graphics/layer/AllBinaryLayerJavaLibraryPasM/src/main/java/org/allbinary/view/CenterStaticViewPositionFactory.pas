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
// package org.allbinary.view
unit CenterStaticViewPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ViewPositionBase;

type
  {AB:TYPES}
  TCenterStaticViewPositionFactory = class(TObject)
  public
        constructor Create;
        function getInstance(z: Integer): TViewPositionBase; virtual;
  end;

implementation
uses
  StaticViewPosition, DisplayInfoSingleton;


{AB:CODE}
    

constructor TCenterStaticViewPositionFactory.Create;
begin
    inherited Create;
end;
    

function TCenterStaticViewPositionFactory.getInstance(z: Integer): TViewPositionBase;
var
  displayInfoSingleton_: TDisplayInfoSingleton;
begin
        displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
        Exit(TStaticViewPosition.Create((TJava.SignedRightShift(displayInfoSingleton_.getLastWidth(), 1)), (TJava.SignedRightShift(displayInfoSingleton_.getLastHeight(), 1)), z));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

