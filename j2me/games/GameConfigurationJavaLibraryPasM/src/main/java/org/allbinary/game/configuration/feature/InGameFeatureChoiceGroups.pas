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
// package org.allbinary.game.configuration.feature
unit InGameFeatureChoiceGroups;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  TInGameFeatureChoiceGroups = class(TObject)
  public
    hashtable: TABHashtable<TObject, TObject>;
    class var gameFeatureChoiceGroupsExclusive: TInGameFeatureChoiceGroups;
    class var gameFeatureChoiceGroupsMultiple: TInGameFeatureChoiceGroups;
    procedure InitFields;
        constructor Create;
        class function getExclusiveInstance: TInGameFeatureChoiceGroups; static;
        class function getMultipleInstance: TInGameFeatureChoiceGroups; static;
        function get: TABHashtable<TObject, TObject>; virtual;
        procedure add(name: string; list: TBasicArrayList); virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure TInGameFeatureChoiceGroups.InitFields;
begin
  Self.hashtable := TStdUtil.getInstance().createHashtable();
end;
    

constructor TInGameFeatureChoiceGroups.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TInGameFeatureChoiceGroups.getExclusiveInstance: TInGameFeatureChoiceGroups;
begin
        Exit(TInGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive);
end;
    

class function TInGameFeatureChoiceGroups.getMultipleInstance: TInGameFeatureChoiceGroups;
begin
        Exit(TInGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple);
end;
    

function TInGameFeatureChoiceGroups.get: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;
    

procedure TInGameFeatureChoiceGroups.add(name: string; list: TBasicArrayList);
begin
        Self.hashtable.put(TJava.Box(name), TJava.Box(list));
end;

initialization
  {AB:INITIALIZATION}
  TInGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive := TInGameFeatureChoiceGroups.Create();
  TInGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple := TInGameFeatureChoiceGroups.Create();
  {AB:END}

end.

