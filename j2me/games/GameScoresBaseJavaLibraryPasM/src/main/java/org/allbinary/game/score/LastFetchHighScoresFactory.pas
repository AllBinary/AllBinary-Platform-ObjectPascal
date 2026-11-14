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
unit LastFetchHighScoresFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScores;

type
  {AB:TYPES}
  TLastFetchHighScoresFactory = class(TObject)
  public
    highScoresArray: TArray<THighScores>;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLastFetchHighScoresFactory; static;
  end;

implementation
uses
  NoHighScoresFactory, NullUtil;


{AB:CODE}

procedure TLastFetchHighScoresFactory.InitFields;
begin
  Self.highScoresArray := TNoHighScoresFactory.getInstance().NO_HIGH_SCORES;
end;

constructor TLastFetchHighScoresFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLastFetchHighScoresFactory.getInstance: TLastFetchHighScoresFactory;
begin
        if (TLastFetchHighScoresFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TLastFetchHighScoresFactory.instance := TLastFetchHighScoresFactory.Create();
        end;
        Exit(TLastFetchHighScoresFactory(TJava.ToObject(TLastFetchHighScoresFactory.instance)));
end;

initialization
  {AB:INITIALIZATION}
  TLastFetchHighScoresFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

