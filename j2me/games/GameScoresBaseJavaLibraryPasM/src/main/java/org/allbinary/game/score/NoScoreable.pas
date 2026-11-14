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
// package org.allbinary.game.score
unit NoScoreable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Scoreable;

type
  {AB:TYPES}
  TNoScoreable = class(TScoreable)
  public
    class var SINGLETON: TNoScoreable;
        class function getInstance: TNoScoreable; static;
        constructor Create;
        procedure addPoints(points: Integer); override;
        procedure removePoints(points: Integer); override;
  end;

implementation

{AB:CODE}
    

class function TNoScoreable.getInstance: TNoScoreable;
begin
        Exit(TNoScoreable.SINGLETON);
end;
    

constructor TNoScoreable.Create;
begin
        inherited Create(0);
end;
    

procedure TNoScoreable.addPoints(points: Integer);
begin
end;
    

procedure TNoScoreable.removePoints(points: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNoScoreable.SINGLETON := TNoScoreable.Create();
  {AB:END}

end.

