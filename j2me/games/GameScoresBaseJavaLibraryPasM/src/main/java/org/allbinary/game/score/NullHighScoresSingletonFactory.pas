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
unit NullHighScoresSingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScores;

type
  {AB:TYPES}
  TNullHighScoresSingletonFactory = class(TObject)
  public
    class var SINGLETON: THighScores;
    constructor Create;
        class function getInstance: THighScores; static;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

constructor TNullHighScoresSingletonFactory.Create;
begin
  inherited Create;
end;
    

class function TNullHighScoresSingletonFactory.getInstance: THighScores;
begin
        Exit(TNullHighScoresSingletonFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TNullHighScoresSingletonFactory.SINGLETON := THighScores.Create(TCommonStrings.getInstance().LOADING, 'High Scores Not Loaded', TCommonStrings.getInstance().PERIODS);
  {AB:END}

end.

