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
unit ViewPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ViewPositionBase, ViewPositionFactoryInterface;

type
  {AB:TYPES}
  TViewPositionFactory = class(TInterfacedObject, IViewPositionFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance: TViewPositionBase; virtual;
  end;

implementation
uses
  ViewPosition;


{AB:CODE}

function TViewPositionFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TViewPositionFactory.Create;
begin
  inherited Create;
end;
    

function TViewPositionFactory.getInstance: TViewPositionBase;
begin
        Exit(TViewPosition.getInstanceD());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

