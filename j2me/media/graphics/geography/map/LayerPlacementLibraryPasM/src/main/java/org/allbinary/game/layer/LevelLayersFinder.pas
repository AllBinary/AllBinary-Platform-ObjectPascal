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
// package org.allbinary.game.layer
unit LevelLayersFinder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList, EnumerationUtil;

type
  {AB:TYPES}
  TLevelLayersFinder = class(TObject)
  public
    enumerationUtil: TEnumerationUtil;
    class var instance: TLevelLayersFinder;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLevelLayersFinder; static;
        function get(hashtable: TABHashtable<TObject, TObject>): TBasicArrayList; virtual;
  end;

implementation
uses
  ABLayer, SmallIntegerSingletonFactory, BasicArrayListD;


{AB:CODE}

procedure TLevelLayersFinder.InitFields;
begin
  Self.enumerationUtil := TEnumerationUtil.getInstance();
end;

constructor TLevelLayersFinder.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLevelLayersFinder.getInstance: TLevelLayersFinder;
begin
        Exit(TLevelLayersFinder.instance);
end;
    

function TLevelLayersFinder.get(hashtable: TABHashtable<TObject, TObject>): TBasicArrayList;
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  list: TBasicArrayList;
  enumeration: TObject;
  layerHashtableCanBeNull: TABHashtable<TObject, TObject>;
  integerCanBeNull: Integer;
  cachedIntegerCanBeNull: Integer;
begin
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        list := TBasicArrayListD.Create();
        enumeration := hashtable.keys();
        
        
        
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            layerHashtableCanBeNull := TABHashtable<TObject, TObject>(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(Self.enumerationUtil.nextElement(enumeration))))));
            integerCanBeNull := Integer(layerHashtableCanBeNull.get(TJava.Box(TJava.Box(TABLayer.ID))));
            cachedIntegerCanBeNull := smallIntegerSingletonFactory_.getAt((integerCanBeNull));
            if not (list.contains(TJava.Box(cachedIntegerCanBeNull))) then begin
                list.add(TJava.Box(cachedIntegerCanBeNull));
            end;
        end;
        Exit(list);
end;

initialization
  {AB:INITIALIZATION}
  TLevelLayersFinder.instance := TLevelLayersFinder.Create();
  {AB:END}

end.

