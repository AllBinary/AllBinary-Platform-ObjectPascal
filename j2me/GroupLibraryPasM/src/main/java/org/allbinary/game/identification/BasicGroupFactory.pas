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
// package org.allbinary.game.identification
unit BasicGroupFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Group;

type
  {AB:TYPES}
  TBasicGroupFactory = class(TObject)
  public
    NAME: string;
    NO_SUCH_GROUP: string;
    GOOD: TGroup;
    ENEMY: TGroup;
    ENEMY_ON_LEVEL: TGroup;
    NONE: TGroup;
    GOOD_ARRAY: TArray<TGroup>;
    ENEMY_ARRAY: TArray<TGroup>;
    ENEMY_ON_LEVEL_ARRAY: TArray<TGroup>;
    NONE_ARRAY: TArray<TGroup>;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicGroupFactory; static;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

procedure TBasicGroupFactory.InitFields;
begin
  Self.NAME := 'GROUP_NAME';
  Self.NO_SUCH_GROUP := 'No Such Group: ';
  Self.GOOD := TGroup.Create('Good Guys', SmallInt(0));
  Self.ENEMY := TGroup.Create('Bad Guys', SmallInt(1));
  Self.ENEMY_ON_LEVEL := TGroup.Create('Bad Guys on Level', SmallInt(2));
  Self.NONE := TGroup.Create('Not On A Team', SmallInt(3));
  Self.GOOD_ARRAY := TArray<TGroup>.Create(Self.GOOD);
  Self.ENEMY_ARRAY := TArray<TGroup>.Create(Self.ENEMY);
  Self.ENEMY_ON_LEVEL_ARRAY := TArray<TGroup>.Create(Self.ENEMY, Self.ENEMY_ON_LEVEL);
  Self.NONE_ARRAY := TArray<TGroup>.Create(Self.NONE);
end;

constructor TBasicGroupFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicGroupFactory.getInstance: TBasicGroupFactory;
begin
        if (TBasicGroupFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TBasicGroupFactory.instance := TBasicGroupFactory.Create();
        end;
        Exit(TBasicGroupFactory(TJava.ToObject(TBasicGroupFactory.instance)));
end;

initialization
  {AB:INITIALIZATION}
  TBasicGroupFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

