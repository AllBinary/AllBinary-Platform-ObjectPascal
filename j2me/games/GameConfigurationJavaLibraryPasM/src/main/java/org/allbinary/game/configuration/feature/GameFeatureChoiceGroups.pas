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
unit GameFeatureChoiceGroups;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  TGameFeatureChoiceGroups = class(TObject)
  public
    hashtable: TABHashtable<TObject, TObject>;
    class var gameFeatureChoiceGroupsExclusive: TGameFeatureChoiceGroups;
    class var gameFeatureChoiceGroupsMultiple: TGameFeatureChoiceGroups;
    procedure InitFields;
        constructor Create;
        class function getExclusiveInstance: TGameFeatureChoiceGroups; static;
        class function getMultipleInstance: TGameFeatureChoiceGroups; static;
        function get: TABHashtable<TObject, TObject>; virtual;
        procedure add(name: string; list: TBasicArrayList); virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure TGameFeatureChoiceGroups.InitFields;
begin
  Self.hashtable := TStdUtil.getInstance().createHashtable();
end;
    

constructor TGameFeatureChoiceGroups.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TGameFeatureChoiceGroups.getExclusiveInstance: TGameFeatureChoiceGroups;
begin
        Exit(TGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive);
end;
    

class function TGameFeatureChoiceGroups.getMultipleInstance: TGameFeatureChoiceGroups;
begin
        Exit(TGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple);
end;
    

function TGameFeatureChoiceGroups.get: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;
    

procedure TGameFeatureChoiceGroups.add(name: string; list: TBasicArrayList);
begin
        Self.hashtable.put(TJava.Box(name), TJava.Box(list));
end;

initialization
  {AB:INITIALIZATION}
  TGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive := TGameFeatureChoiceGroups.Create();
  TGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple := TGameFeatureChoiceGroups.Create();
  {AB:END}

end.

