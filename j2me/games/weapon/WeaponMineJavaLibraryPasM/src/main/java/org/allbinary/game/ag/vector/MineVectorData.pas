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
// package org.allbinary.game.ag.vector
unit MineVectorData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMineVectorData = class(TObject)
  public
    class var points: TArray<TArray<TArray<Integer>>>;
        constructor Create;
  end;

implementation

{AB:CODE}
    

constructor TMineVectorData.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TMineVectorData.points := [[TArray<Integer>.Create(10, 5), TArray<Integer>.Create(2, 6), TArray<Integer>.Create(1000, 1000), TArray<Integer>.Create(2, 2), TArray<Integer>.Create(10, 9), TArray<Integer>.Create(1000, 1000), TArray<Integer>.Create(10, 2), TArray<Integer>.Create(2, 9), TArray<Integer>.Create(1000, 1000), TArray<Integer>.Create(2, 5), TArray<Integer>.Create(10, 6), TArray<Integer>.Create(1000, 1000), TArray<Integer>.Create(7, 9), TArray<Integer>.Create(5, 2), TArray<Integer>.Create(1000, 1000), TArray<Integer>.Create(7, 2), TArray<Integer>.Create(5, 9), TArray<Integer>.Create(1000, 1000)]];
  {AB:END}

end.

