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
// package org.allbinary.game.ai
unit ArtificialIntelligenceInterfaceFactoryInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList, ArtificialIntelligenceInterfaceFactoryInterface;

type
  {AB:TYPES}
  TArtificialIntelligenceInterfaceFactoryInterfaceFactory = class(TObject)
  public
    list: TBasicArrayList;
    class var SINGLETON: TArtificialIntelligenceInterfaceFactoryInterfaceFactory;
    procedure InitFields;
    constructor Create;
        procedure clear; virtual;
        class function getInstance: TArtificialIntelligenceInterfaceFactoryInterfaceFactory; static;
        function getInstanceFromCollection(hashtable: TABHashtable<TObject, TObject>): IArtificialIntelligenceInterfaceFactoryInterface; virtual;
        procedure add(artificialIntelligenceInterfaceFactoryInterface_: IArtificialIntelligenceInterfaceFactoryInterface); virtual;
  end;

implementation
uses
  BasicAI, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TArtificialIntelligenceInterfaceFactoryInterfaceFactory.InitFields;
begin
  Self.list := TBasicArrayListUtil.getInstance().getImmutableInstance();
end;

constructor TArtificialIntelligenceInterfaceFactoryInterfaceFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TArtificialIntelligenceInterfaceFactoryInterfaceFactory.clear;
begin
        Self.list := TBasicArrayListD.Create();
end;
    

class function TArtificialIntelligenceInterfaceFactoryInterfaceFactory.getInstance: TArtificialIntelligenceInterfaceFactoryInterfaceFactory;
begin
        Exit(TArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON);
end;
    

function TArtificialIntelligenceInterfaceFactoryInterfaceFactory.getInstanceFromCollection(hashtable: TABHashtable<TObject, TObject>): IArtificialIntelligenceInterfaceFactoryInterface;
var
  typeInteger: Integer;
  type_: Integer;
  artificialIntelligenceInterfaceFactoryInterface_: IArtificialIntelligenceInterfaceFactoryInterface;
begin
        typeInteger := Integer(hashtable.get(TJava.Box(TJava.Box(TBasicAI.ID))));
        type_ := (typeInteger);
        artificialIntelligenceInterfaceFactoryInterface_ := (TJava.ToObject(Self.list.objectArray[(type_) - (1)]) as IArtificialIntelligenceInterfaceFactoryInterface);
        Exit(artificialIntelligenceInterfaceFactoryInterface_);
end;
    

procedure TArtificialIntelligenceInterfaceFactoryInterfaceFactory.add(artificialIntelligenceInterfaceFactoryInterface_: IArtificialIntelligenceInterfaceFactoryInterface);
begin
        Self.list.add(TJava.Box(artificialIntelligenceInterfaceFactoryInterface_));
end;

initialization
  {AB:INITIALIZATION}
  TArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON := TArtificialIntelligenceInterfaceFactoryInterfaceFactory.Create();
  {AB:END}

end.

