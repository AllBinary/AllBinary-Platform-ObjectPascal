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
// package org.allbinary.logic.math
unit PrimitiveIntUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPrimitiveIntUtil = class(TObject)
  public
        constructor Create;
        class function getArrayInstance: TArray<Integer>; static;
        class function getTwoDimensionalArrayInstance: TArray<TArray<Integer>>; static;
  end;

implementation
uses
  NullUtil;


{AB:CODE}
    

constructor TPrimitiveIntUtil.Create;
begin
    inherited Create;
end;
    

class function TPrimitiveIntUtil.getArrayInstance: TArray<Integer>;
begin
        Exit(TNullUtil.getInstance().NULL_INT_ARRAY);
end;
    

class function TPrimitiveIntUtil.getTwoDimensionalArrayInstance: TArray<TArray<Integer>>;
begin
        Exit(TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

