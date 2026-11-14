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
// package org.allbinary.logic.system.hardware.components
unit Component;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TComponent = class(TObject)
  public
    name: string;
    procedure InitFields;
        constructor Create(componentName: string);
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TComponent.InitFields;
begin
  
end;
    

constructor TComponent.Create(componentName: string);
begin
    inherited Create;
    InitFields;
        Self.name := componentName;
end;
    

function TComponent.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

