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
// package org.allbinary.direction
unit DirectionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction;

type
  {AB:TYPES}
  TDirectionFactory = class(TObject)
  public
    NAME: string;
    LEFT: TDirection;
    RIGHT: TDirection;
    DOWN: TDirection;
    UP: TDirection;
    UP_LEFT: TDirection;
    UP_RIGHT: TDirection;
    DOWN_LEFT: TDirection;
    DOWN_RIGHT: TDirection;
    NOT_BORDERED_WITH: TDirection;
    NO_DIRECTION: TDirection;
    TOP: TDirection;
    BOTTOM: TDirection;
    ALL_DIRECTION: TDirection;
    class var instance: TDirectionFactory;
    procedure InitFields;
        class function getInstance: TDirectionFactory; static;
        constructor Create;
  end;

implementation
uses
  StringMaker, CommonPhoneStrings, CommonSeps;


{AB:CODE}

procedure TDirectionFactory.InitFields;
begin
  Self.NAME := 'DIRECTION';
  Self.LEFT := TDirection.Create(TCommonPhoneStrings.getInstance().LEFT, 'WEST', 0, 1);
  Self.RIGHT := TDirection.Create(TCommonPhoneStrings.getInstance().RIGHT, 'EAST', 1, 0);
  Self.DOWN := TDirection.Create(TCommonPhoneStrings.getInstance().DOWN, 'SOUTH', 2, 0);
  Self.UP := TDirection.Create(TCommonPhoneStrings.getInstance().UP, 'NORTH', 3, 0);
  
  
  
  
  Self.NOT_BORDERED_WITH := TDirection.Create('NOT_BORDERED_WITH', 'NOT_BORDERED_WITH', 8, 0);
  Self.NO_DIRECTION := TDirection.Create('NO_DIRECTION', 'NO_DIRECTION', 9, 0);
  Self.TOP := TDirection.Create('TOP', 'TOP', 10, 0);
  Self.BOTTOM := TDirection.Create('BOTTOM', 'BOTTOM', 11, 0);
  Self.ALL_DIRECTION := TDirection.Create('ALL_DIRECTION', 'ALL_DIRECTION', 12, 0);
end;
    

class function TDirectionFactory.getInstance: TDirectionFactory;
begin
        Exit(TDirectionFactory.instance);
end;
    

constructor TDirectionFactory.Create;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        Self.UP_LEFT := TDirection.Create('UP LEFT', stringBuffer.append(Self.UP.getOtherName()).append(commonSeps_.SPACE).append(Self.LEFT.getOtherName()).toString(), 4, 0);
        stringBuffer.delete_(0, stringBuffer.length());
        Self.UP_RIGHT := TDirection.Create('UP RIGHT', stringBuffer.append(Self.UP.getOtherName()).append(commonSeps_.SPACE).append(Self.RIGHT.getOtherName()).toString(), 5, 0);
        stringBuffer.delete_(0, stringBuffer.length());
        Self.DOWN_LEFT := TDirection.Create('DOWN LEFT', stringBuffer.append(Self.DOWN.getOtherName()).append(commonSeps_.SPACE).append(Self.LEFT.getOtherName()).toString(), 6, 0);
        stringBuffer.delete_(0, stringBuffer.length());
        Self.DOWN_RIGHT := TDirection.Create('DOWN RIGHT', stringBuffer.append(Self.DOWN.getOtherName()).append(commonSeps_.SPACE).append(Self.RIGHT.getOtherName()).toString(), 7, 0);
end;

initialization
  {AB:INITIALIZATION}
  TDirectionFactory.instance := TDirectionFactory.Create();
  {AB:END}

end.

