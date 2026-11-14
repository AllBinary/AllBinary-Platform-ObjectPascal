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
// package org.allbinary.logic.java
unit FileExtensionData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFileExtensionData = class(TObject)
  public
    DOT_JAVA_SOURCE: string;
    JAVA_SOURCE: string;
    class var instance: TFileExtensionData;
    procedure InitFields;
        class function getInstance: TFileExtensionData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TFileExtensionData.InitFields;
begin
  Self.DOT_JAVA_SOURCE := '.java';
  Self.JAVA_SOURCE := 'java';
end;
    

class function TFileExtensionData.getInstance: TFileExtensionData;
begin
        Exit(TFileExtensionData.instance);
end;
    

constructor TFileExtensionData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TFileExtensionData.instance := TFileExtensionData.Create();
  {AB:END}

end.

