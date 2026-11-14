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
unit HighScoresFactoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, HighScoresResultsListener, HighScoresHelperBaseInterface;

type
  {AB:TYPES}
  IHighScoresFactoryInterface = interface(IJavaObject) ['IHighScoresFactoryInterface']
        procedure fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener);
        procedure fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean);
        function createHighScoresHelper: IHighScoresHelperBaseInterface;
  end;
  THighScoresFactoryInterface = IHighScoresFactoryInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

