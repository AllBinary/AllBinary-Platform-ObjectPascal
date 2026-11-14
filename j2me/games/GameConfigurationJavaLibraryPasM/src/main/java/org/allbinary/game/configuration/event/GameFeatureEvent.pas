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
// package org.allbinary.game.configuration.event
unit GameFeatureEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject;

type
  {AB:TYPES}
  TGameFeatureEvent = class(TAllBinaryEventObject)
  public
    whatChanged: string;
    procedure InitFields;
        constructor Create(anyType: TObject; whatChanged: string);
        function getWhatChanged: string; virtual;
        function getGameOption: TObject; virtual;
  end;

implementation

{AB:CODE}

procedure TGameFeatureEvent.InitFields;
begin
  
end;
    

constructor TGameFeatureEvent.Create(anyType: TObject; whatChanged: string);
begin
        inherited Create(anyType);
        InitFields;
        Self.whatChanged := whatChanged;
end;
    

function TGameFeatureEvent.getWhatChanged: string;
begin
        Exit(Self.whatChanged);
end;
    

function TGameFeatureEvent.getGameOption: TObject;
begin
        Exit(TJava.Box(Self.getSource()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

