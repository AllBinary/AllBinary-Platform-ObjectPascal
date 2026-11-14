{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.util
unit ABHashtable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TABHashtable<K, V> = class(TJavaHashtable<K, V>)
  public
        constructor Create(initialCapacity: Integer); overload;
        constructor Create; overload;
  end;

implementation

{AB:CODE}
    

constructor TABHashtable<K, V>.Create(initialCapacity: Integer);
begin
        inherited Create(initialCapacity);
end;
    

constructor TABHashtable<K, V>.Create;
begin
        inherited Create();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

