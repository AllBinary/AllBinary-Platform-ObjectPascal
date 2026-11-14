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
// package org.allbinary
unit PostGameCommandFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas;

type
  {AB:TYPES}
  TPostGameCommandFactory = class(TObject)
  public
    class var instance: TPostGameCommandFactory;
    constructor Create;
        class function getInstance: TPostGameCommandFactory; static;
        procedure addCommands(canvas_: TCanvas); virtual;
  end;

implementation
uses
  MultiPlayerGameFeatureFactory;


{AB:CODE}

constructor TPostGameCommandFactory.Create;
begin
  inherited Create;
end;
    

class function TPostGameCommandFactory.getInstance: TPostGameCommandFactory;
begin
        Exit(TPostGameCommandFactory.instance);
end;
    

procedure TPostGameCommandFactory.addCommands(canvas_: TCanvas);
begin
        TMultiPlayerGameFeatureFactory.getInstance().addCommands(canvas_);
end;

initialization
  {AB:INITIALIZATION}
  TPostGameCommandFactory.instance := TPostGameCommandFactory.Create();
  {AB:END}

end.

