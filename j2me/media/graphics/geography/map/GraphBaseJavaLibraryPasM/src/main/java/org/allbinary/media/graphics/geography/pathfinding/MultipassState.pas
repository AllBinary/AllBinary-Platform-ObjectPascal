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
// package org.allbinary.media.graphics.geography.pathfinding
unit MultipassState;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMultipassState = class(TObject)
  public
    step: Integer;
    iteration: Integer;
    iteration2: Integer;
    procedure InitFields;
    constructor Create;
  end;

implementation

{AB:CODE}

procedure TMultipassState.InitFields;
begin
  
  
  
end;

constructor TMultipassState.Create;
begin
  inherited Create;
  InitFields;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

