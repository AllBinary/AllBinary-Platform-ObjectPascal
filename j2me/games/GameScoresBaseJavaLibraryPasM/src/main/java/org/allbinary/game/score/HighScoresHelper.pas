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
unit HighScoresHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CircularIndexUtil, HighScores, HighScoresHelperBase;

type
  {AB:TYPES}
  THighScoresHelper = class(THighScoresHelperBase)
  public
    circularIndexUtil: TCircularIndexUtil;
    lastIndex: Integer;
    procedure InitFields;
    constructor Create;
        procedure setHighScoresArray(highScoresArrayP: TArray<THighScores>); override;
        function getNextHighScores: THighScores; override;
        function isAnyHighScores: Boolean; override;
  end;

implementation

{AB:CODE}

procedure THighScoresHelper.InitFields;
begin
  Self.circularIndexUtil := TCircularIndexUtil.createInstanceAt(0, 0);
  Self.lastIndex := -1;
end;

constructor THighScoresHelper.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure THighScoresHelper.setHighScoresArray(highScoresArrayP: TArray<THighScores>);
begin
        inherited setHighScoresArray(highScoresArrayP);
        Self.circularIndexUtil.setSize(System.Length(Self.highScoresArrayP));
end;
    

function THighScoresHelper.getNextHighScores: THighScores;
var
  highScores_: THighScores;
  index: Integer;
begin
        highScores_ := Self.highScoresArrayP[Self.circularIndexUtil.getIndex()];
        index := 0;
        while ((((highScores_.getTotal()) < (1)) or ((Self.lastIndex) = (Self.circularIndexUtil.getIndex())))) and ((index) < (System.Length(Self.highScoresArrayP))) do begin
            Self.circularIndexUtil.next();
            highScores_ := Self.highScoresArrayP[Self.circularIndexUtil.getIndex()];
            Inc(index);
        end;
        Self.lastIndex := Self.circularIndexUtil.getIndex();
        Exit(highScores_);
end;
    

function THighScoresHelper.isAnyHighScores: Boolean;
var
  anyScores: Boolean;
  highScores_: THighScores;
  index: Integer;
begin
        if (System.Length(Self.highScoresArrayP)) < (1) then begin
            Exit(False);
        end;
        anyScores := False;
        
        for index := (System.Length(Self.highScoresArrayP)) - (1) downto 0 do begin
            highScores_ := Self.highScoresArrayP[index];
            if (highScores_.getTotal()) > (0) then begin
                anyScores := True;
            end;
        end;
        Exit(anyScores);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

