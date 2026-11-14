{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary
unit ThreedResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TThreedResources = class(TObject)
  public
    class var threedResources: TThreedResources;
    constructor Create;
        class function getThreedResources: TThreedResources; static;
        procedure add; virtual;
  end;

implementation

{AB:CODE}

constructor TThreedResources.Create;
begin
  inherited Create;
end;
    

class function TThreedResources.getThreedResources: TThreedResources;
begin
        Exit(TThreedResources.threedResources);
end;
    

procedure TThreedResources.add;
begin
end;

initialization
  {AB:INITIALIZATION}
  TThreedResources.threedResources := TThreedResources.Create();
  {AB:END}

end.

