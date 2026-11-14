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
unit RemoteErrorHighScoresSingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScores;

type
  {AB:TYPES}
  TRemoteErrorHighScoresSingletonFactory = class(TObject)
  public
    class var SINGLETON: THighScores;
    constructor Create;
        class function getInstance: THighScores; static;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

constructor TRemoteErrorHighScoresSingletonFactory.Create;
begin
  inherited Create;
end;
    

class function TRemoteErrorHighScoresSingletonFactory.getInstance: THighScores;
begin
        Exit(TRemoteErrorHighScoresSingletonFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TRemoteErrorHighScoresSingletonFactory.SINGLETON := THighScores.Create(TCommonStrings.getInstance().LOADING, 'Remote High Scores Did Not Load', TCommonStrings.getInstance().PERIODS);
  {AB:END}

end.

