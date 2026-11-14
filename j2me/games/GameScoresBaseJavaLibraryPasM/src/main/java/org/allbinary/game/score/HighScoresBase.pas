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
unit HighScoresBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, CommonStrings, HighScoresResultsListener, HighScoresHelperBaseInterface, HighScoresFactoryInterface;

type
  {AB:TYPES}
  THighScoresBase = class(TInterfacedObject, IHighScoresFactoryInterface)
  public
    commonStrings: TCommonStrings;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener); virtual;
        procedure fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean); virtual;
        function createHighScoresHelper: IHighScoresHelperBaseInterface; virtual;
  end;

implementation

{AB:CODE}

procedure THighScoresBase.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;

function THighScoresBase.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THighScoresBase.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure THighScoresBase.fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener);
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure THighScoresBase.fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean);
begin
        raise SysUtils.Exception.Create('');
end;
    

function THighScoresBase.createHighScoresHelper: IHighScoresHelperBaseInterface;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

