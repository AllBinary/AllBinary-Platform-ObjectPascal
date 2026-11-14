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
// package org.allbinary.util
unit ImmutableBasicArrayList;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayListS;

type
  {AB:TYPES}
  TImmutableBasicArrayList = class(TBasicArrayListS)
  public
    name: string;
    procedure InitFields;
        constructor Create(name: string; size: Integer);
        function add(e: TObject): Boolean; override;
        procedure addAt(index: Integer; element: TObject); override;
        function toString: string; override;
  end;

implementation
uses
  JsType, ForcedLogUtil;


{AB:CODE}

procedure TImmutableBasicArrayList.InitFields;
begin
  
end;
    

constructor TImmutableBasicArrayList.Create(name: string; size: Integer);
begin
        inherited Create(size);
        InitFields;
        Self.name := name;
end;
    

function TImmutableBasicArrayList.add(e: TObject): Boolean;
begin
        TForcedLogUtil.log(Self.name, TJava.Box(Self));
        Exit(True);
end;
    

procedure TImmutableBasicArrayList.addAt(index: Integer; element: TObject);
begin
        TForcedLogUtil.log(Self.name, TJava.Box(Self));
end;
    

function TImmutableBasicArrayList.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

