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
// package org.allbinary.input.motion.button
unit TouchScreenType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTouchScreenType = class(TObject)
  public
    name: string;
    procedure InitFields;
        constructor Create(name: string);
        function getName: string; virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TTouchScreenType.InitFields;
begin
  
end;
    

constructor TTouchScreenType.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
end;
    

function TTouchScreenType.getName: string;
begin
        Exit(Self.name);
end;
    

function TTouchScreenType.toString: string;
begin
        Exit(Self.getName());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

