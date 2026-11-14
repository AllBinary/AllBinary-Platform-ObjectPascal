{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
unit TouchButtonResource;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTouchButtonResource = class(TObject)
  public
    RESOURCE: string;
    HINT: string;
    procedure InitFields;
        constructor Create(resource: string; hint: string);
  end;

implementation

{AB:CODE}

procedure TTouchButtonResource.InitFields;
begin
  
  
end;
    

constructor TTouchButtonResource.Create(resource: string; hint: string);
begin
    inherited Create;
    InitFields;
        Self.RESOURCE := resource;
        Self.HINT := hint;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

