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
unit NullIntermissionEnableListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, IntermissionEnableListenerInterface;

type
  {AB:TYPES}
  TNullIntermissionEnableListener = class(TInterfacedObject, IIntermissionEnableListenerInterface)
  public
    class var SINGLETON: IIntermissionEnableListenerInterface;
    function JavaObject: TObject;
        class function getInstance: IIntermissionEnableListenerInterface; static;
        constructor Create;
        procedure notifyIntermission(enable: Boolean); virtual;
  end;

implementation

{AB:CODE}

function TNullIntermissionEnableListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TNullIntermissionEnableListener.getInstance: IIntermissionEnableListenerInterface;
begin
        Exit(TNullIntermissionEnableListener.SINGLETON);
end;
    

constructor TNullIntermissionEnableListener.Create;
begin
    inherited Create;
end;
    

procedure TNullIntermissionEnableListener.notifyIntermission(enable: Boolean);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullIntermissionEnableListener.SINGLETON := TNullIntermissionEnableListener.Create();
  {AB:END}

end.

