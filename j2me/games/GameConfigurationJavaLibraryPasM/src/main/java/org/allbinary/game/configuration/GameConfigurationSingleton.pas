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
// package org.allbinary.game.configuration
unit GameConfigurationSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList, GameConfiguration;

type
  {AB:TYPES}
  TGameConfigurationSingleton = class(TObject)
  public
    list: TBasicArrayList;
    hashtable: TABHashtable<TObject, TObject>;
    class var SINGLETON: TGameConfigurationSingleton;
    procedure InitFields;
        class function getInstance: TGameConfigurationSingleton; static;
        constructor Create;
        function getInstanceByName(name: string): TGameConfiguration; virtual;
        function getOptionsBasicArrayList: TBasicArrayList; virtual;
        procedure add(gameConfiguration_: TGameConfiguration); virtual;
        function getHashtable: TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  StdUtil, BasicArrayListD;


{AB:CODE}

procedure TGameConfigurationSingleton.InitFields;
begin
  
  
end;
    

class function TGameConfigurationSingleton.getInstance: TGameConfigurationSingleton;
begin
        Exit(TGameConfigurationSingleton.SINGLETON);
end;
    

constructor TGameConfigurationSingleton.Create;
begin
    inherited Create;
    InitFields;
        Self.list := TBasicArrayListD.Create();
        Self.hashtable := TStdUtil.getInstance().createHashtable();
end;
    

function TGameConfigurationSingleton.getInstanceByName(name: string): TGameConfiguration;
begin
        Exit(TGameConfiguration(TJava.ToObject(Self.hashtable.get(TJava.Box(name)))));
end;
    

function TGameConfigurationSingleton.getOptionsBasicArrayList: TBasicArrayList;
begin
        Exit(Self.list);
end;
    

procedure TGameConfigurationSingleton.add(gameConfiguration_: TGameConfiguration);
begin
        Self.list.add(TJava.Box(gameConfiguration_));
end;
    

function TGameConfigurationSingleton.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TGameConfigurationSingleton.SINGLETON := TGameConfigurationSingleton.Create();
  {AB:END}

end.

