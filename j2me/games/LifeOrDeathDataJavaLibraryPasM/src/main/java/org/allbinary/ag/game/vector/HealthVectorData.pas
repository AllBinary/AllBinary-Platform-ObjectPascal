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
// package org.allbinary.ag.game.vector
unit HealthVectorData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THealthVectorData = class(TObject)
  public
    class var points: TArray<TArray<TArray<Integer>>>;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor THealthVectorData.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  THealthVectorData.points := [[TArray<Integer>.Create(2, 1), TArray<Integer>.Create(3, 2), TArray<Integer>.Create(3, 2), TArray<Integer>.Create(4, 1), TArray<Integer>.Create(4, 1), TArray<Integer>.Create(5, 1), TArray<Integer>.Create(5, 1), TArray<Integer>.Create(6, 2), TArray<Integer>.Create(6, 2), TArray<Integer>.Create(6, 3), TArray<Integer>.Create(6, 3), TArray<Integer>.Create(3, 6), TArray<Integer>.Create(3, 6), TArray<Integer>.Create(0, 3), TArray<Integer>.Create(0, 3), TArray<Integer>.Create(0, 2), TArray<Integer>.Create(0, 2), TArray<Integer>.Create(1, 1), TArray<Integer>.Create(1, 1), TArray<Integer>.Create(2, 1), TArray<Integer>.Create(1000, 1000)]];
  {AB:END}

end.

