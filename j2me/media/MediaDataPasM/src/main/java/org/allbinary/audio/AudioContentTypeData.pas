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
// package org.allbinary.audio
unit AudioContentTypeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAudioContentTypeData = class(TObject)
  public
    name: string;
    procedure InitFields;
        constructor Create(name: string);
        function getName: string; virtual;
  end;

implementation

{AB:CODE}

procedure TAudioContentTypeData.InitFields;
begin
  
end;
    

constructor TAudioContentTypeData.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
end;
    

function TAudioContentTypeData.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

