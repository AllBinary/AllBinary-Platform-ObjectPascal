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
// package org.allbinary.game.score
unit HighScoresHelperBaseInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScores, HighScoresResultsListener;

type
  {AB:TYPES}
  IHighScoresHelperBaseInterface = interface(IHighScoresResultsListener) ['IHighScoresHelperBaseInterface']
        procedure setSelectedHighScores(selectedHighScores: THighScores);
        function getHighScoresArray: TArray<THighScores>;
        function getSelectedHighScores: THighScores;
  end;
  THighScoresHelperBaseInterface = IHighScoresHelperBaseInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

