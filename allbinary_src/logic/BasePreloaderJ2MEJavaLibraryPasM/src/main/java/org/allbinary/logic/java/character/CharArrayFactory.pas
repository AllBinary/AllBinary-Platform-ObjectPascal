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
// package org.allbinary.logic.java.character
unit CharArrayFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCharArrayFactory = class(TObject)
  public
    zeroCharArray: TArray<WideChar>;
    class var instance: TCharArrayFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCharArrayFactory; static;
        function getZeroCharArray: TArray<WideChar>; virtual;
  end;

implementation

{AB:CODE}

procedure TCharArrayFactory.InitFields;
begin
  Self.zeroCharArray := TJava.NewArray<WideChar>(0);
end;

constructor TCharArrayFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCharArrayFactory.getInstance: TCharArrayFactory;
begin
        Exit(TCharArrayFactory.instance);
end;
    

function TCharArrayFactory.getZeroCharArray: TArray<WideChar>;
begin
        Exit(Self.zeroCharArray);
end;

initialization
  {AB:INITIALIZATION}
  TCharArrayFactory.instance := TCharArrayFactory.Create();
  {AB:END}

end.

