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
// package org.allbinary.canvas
unit GameStatisticsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringMaker, BaseGameStatistics;

type
  {AB:TYPES}
  // ActualPlatform
  TGameStatisticsFactory = class(TBaseGameStatistics)
  public
    stringBuffer: TStringMaker;
    class var instance: TGameStatisticsFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameStatisticsFactory; static;
        procedure add(string_: string); override;
        function toString: string; override;
  end;

implementation

{AB:CODE}

procedure TGameStatisticsFactory.InitFields;
begin
  Self.stringBuffer := TStringMaker.Create();
end;

constructor TGameStatisticsFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameStatisticsFactory.getInstance: TGameStatisticsFactory;
begin
        Exit(TGameStatisticsFactory.instance);
end;
    

procedure TGameStatisticsFactory.add(string_: string);
begin
        if (Self.stringBuffer.length()) > (12000) then begin
            Self.stringBuffer.delete_(0, Self.stringBuffer.length());
            Self.stringBuffer.append('Old Stats Cleared');
        end;
        Self.stringBuffer.append(string_);
end;
    

function TGameStatisticsFactory.toString: string;
begin
        Exit(TStringMaker.Create().append(inherited toString()).append(Self.stringBuffer.toString()).toString());
end;

initialization
  {AB:INITIALIZATION}
  TGameStatisticsFactory.instance := TGameStatisticsFactory.Create();
  {AB:END}

end.

