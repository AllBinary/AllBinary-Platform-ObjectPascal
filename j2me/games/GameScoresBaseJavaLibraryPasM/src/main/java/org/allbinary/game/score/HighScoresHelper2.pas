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
unit HighScoresHelper2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CircularIndexUtil, HighScores, HighScoresHelperBase;

type
  {AB:TYPES}
  THighScoresHelper2 = class(THighScoresHelperBase)
  public
    circularIndexUtil: TCircularIndexUtil;
    selectedHighScores: THighScores;
    procedure InitFields;
    constructor Create;
        procedure setSelectedHighScores(selectedHighScores: THighScores); override;
        function getSelectedHighScores: THighScores; override;
        procedure setHighScoresArray(highScoresArrayP: TArray<THighScores>); override;
        procedure selectHighScores; override;
  end;

implementation
uses
  NullHighScoresSingletonFactory;


{AB:CODE}

procedure THighScoresHelper2.InitFields;
begin
  Self.circularIndexUtil := TCircularIndexUtil.createInstanceAt(0, 0);
  Self.selectedHighScores := TNullHighScoresSingletonFactory.getInstance();
end;

constructor THighScoresHelper2.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure THighScoresHelper2.setSelectedHighScores(selectedHighScores: THighScores);
begin
        Self.selectedHighScores := selectedHighScores;
end;
    

function THighScoresHelper2.getSelectedHighScores: THighScores;
begin
        Exit(Self.selectedHighScores);
end;
    

procedure THighScoresHelper2.setHighScoresArray(highScoresArrayP: TArray<THighScores>);
begin
        inherited setHighScoresArray(highScoresArrayP);
        Self.circularIndexUtil.setSize(System.Length(Self.highScoresArrayP));
        Self.selectHighScores();
end;
    

procedure THighScoresHelper2.selectHighScores;
var
  highScores_: THighScores;
  index: Integer;
begin
        if (System.Length(Self.highScoresArrayP)) = (0) then begin
            Self.setSelectedHighScores(TNullHighScoresSingletonFactory.getInstance());
            Exit;
        end;
        Self.circularIndexUtil.next();
        highScores_ := Self.highScoresArrayP[Self.circularIndexUtil.getIndex()];
        index := 0;
        while ((highScores_.getTotal()) < (1)) and ((index) < (System.Length(Self.highScoresArrayP))) do begin
            highScores_ := Self.highScoresArrayP[Self.circularIndexUtil.next()];
            Inc(index);
        end;
        Self.setSelectedHighScores(highScores_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

