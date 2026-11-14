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
// package org.allbinary.animation.resource
unit BaseResourceAnimationInterfaceFactoryInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAnimationInterfaceFactoryInterface, Rectangle, ImageCache, LogUtil, CommonStrings, ABHashtable, FeatureResourceAnimationInterfaceFactoryInterface, GameFeatureControlledInterface, RectangleResourceFactoryInterface, ResourceAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TBaseResourceAnimationInterfaceFactoryInterfaceFactory = class(TInterfacedObject, IFeatureResourceAnimationInterfaceFactoryInterface, IGameFeatureControlledInterface, IRectangleResourceFactoryInterface, IResourceAnimationInterfaceFactoryInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    hashtable: TABHashtable<TObject, TObject>;
    rectangleHashtable: TABHashtable<TObject, TObject>;
    rectangleArrayOfArraysHashtable: TABHashtable<TObject, TObject>;
    name: string;
    initialized: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; hashtable: TABHashtable<TObject, TObject>; rectangleHashtable: TABHashtable<TObject, TObject>; rectangleArrayHashtable: TABHashtable<TObject, TObject>);
        function getName: string; virtual;
        procedure init(level: Integer); virtual;
        procedure initImageCache(imageCache_: TImageCache; level: Integer); virtual;
        procedure add(resource: string; animationInterfaceFactoryInterface: IBasicAnimationInterfaceFactoryInterface); virtual;
        function getBasicAnimationInterfaceFactoryInstance(resource: string): IBasicAnimationInterfaceFactoryInterface; virtual;
        function getRectangle(resource: string): TRectangle; virtual;
        procedure addRectangle(resource: string; rectangle_: TRectangle); virtual;
        function getRectangleArrayOfArrays(resource: string): TArray<TArray<TRectangle>>; virtual;
        procedure addRectangleArrayOfArrays(resource: string; rectangleArrayOfArrays: TArray<TArray<TRectangle>>); virtual;
        function isFeature: Boolean; virtual;
        function isLoadingLevel(level: Integer): Boolean; virtual;
        function toString: string; virtual;
        function getHashtable: TABHashtable<TObject, TObject>; virtual;
        function getRectangleHashtable: TABHashtable<TObject, TObject>; virtual;
        function getRectangleArrayOfArraysHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setInitialized(initialized: Boolean); virtual;
        function isInitialized: Boolean; virtual;
  end;

implementation
uses
  NullAnimationFactory, ResourceLoadingLevelFactory, RectangleFactory, StringMaker, CommonSeps;


{AB:CODE}

procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
end;

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBaseResourceAnimationInterfaceFactoryInterfaceFactory.Create(name: string; hashtable: TABHashtable<TObject, TObject>; rectangleHashtable: TABHashtable<TObject, TObject>; rectangleArrayHashtable: TABHashtable<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.hashtable := hashtable;
        Self.rectangleHashtable := rectangleHashtable;
        Self.rectangleArrayOfArraysHashtable := rectangleArrayHashtable;
        Self.name := name;
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getName: string;
begin
        Exit(Self.name);
end;
    

// throws Exception
procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.init(level: Integer);
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(TStringMaker.Create().append('Available List of Animations: ').append(Self.hashtable.toString()).toString(), TJava.Box(Self), commonStrings_.INIT);
        Self.setInitialized(True);
end;
    

// throws Exception
procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.initImageCache(imageCache_: TImageCache; level: Integer);
begin
end;
    

// throws Exception
procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.add(resource: string; animationInterfaceFactoryInterface: IBasicAnimationInterfaceFactoryInterface);
begin
        if Self.hashtable.containsKey(TJava.Box(TJava.Box(resource))) then begin
            raise SysUtils.Exception.Create(TStringMaker.Create().append('Resource Already Created: ').append(resource).toString());
        end;
        Self.hashtable.put(TJava.Box(resource), TJava.Box(animationInterfaceFactoryInterface));
end;
    

// throws Exception
function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getBasicAnimationInterfaceFactoryInstance(resource: string): IBasicAnimationInterfaceFactoryInterface;
var
  basicAnimationInterfaceFactoryInterfaceCanBeNull: TObject;
begin
        basicAnimationInterfaceFactoryInterfaceCanBeNull := TJava.Box(Self.hashtable.get(TJava.Box(resource)));
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull) = (nil) then begin
            Exit(TNullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY);
        end;
        Exit((TJava.ToObject(basicAnimationInterfaceFactoryInterfaceCanBeNull) as IBasicAnimationInterfaceFactoryInterface));
end;
    

// throws Exception
function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getRectangle(resource: string): TRectangle;
var
  rectangleCanBeNull: TObject;
begin
        rectangleCanBeNull := TJava.Box(Self.rectangleHashtable.get(TJava.Box(resource)));
        if (rectangleCanBeNull) = (nil) then begin
            Exit(TRectangleFactory.SINGLETON);
        end;
        Exit(TRectangle(TJava.ToObject(rectangleCanBeNull)));
end;
    

// throws Exception
procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.addRectangle(resource: string; rectangle_: TRectangle);
begin
        Self.rectangleHashtable.put(TJava.Box(resource), TJava.Box(rectangle_));
end;
    

// throws Exception
function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getRectangleArrayOfArrays(resource: string): TArray<TArray<TRectangle>>;
var
  valueCanBeNull: TObject;
  rectangleArrayOfArrays: TArray<TArray<TRectangle>>;
begin
        valueCanBeNull := TJava.Box(Self.rectangleArrayOfArraysHashtable.get(TJava.Box(resource)));
        if (valueCanBeNull) <> (nil) then begin
            rectangleArrayOfArrays := TJava.UnboxArrayOfArrays<TRectangle>(TJava.ToObject(valueCanBeNull));
            Exit(rectangleArrayOfArrays);
        end else begin
            Exit(TRectangleFactory.ARRAY_OF_ARRAYS);
        end;
end;
    

// throws Exception
procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.addRectangleArrayOfArrays(resource: string; rectangleArrayOfArrays: TArray<TArray<TRectangle>>);
begin
        Self.rectangleArrayOfArraysHashtable.put(TJava.Box(resource), TJava.BoxArrayOfArrays<TRectangle>(rectangleArrayOfArrays));
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.isFeature: Boolean;
begin
        Exit(False);
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.isLoadingLevel(level: Integer): Boolean;
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if (level) = (resourceLoadingLevelFactory_.LOAD_ALL.getLevel()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.toString: string;
begin
        Exit(TStringMaker.Create().append(Self.ClassType.ClassName).append(TCommonSeps.getInstance().SEMICOLON).append(TCommonSeps.getInstance().SPACE).append(Self.name).toString());
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getRectangleHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.rectangleHashtable);
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.getRectangleArrayOfArraysHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.rectangleArrayOfArraysHashtable);
end;
    

procedure TBaseResourceAnimationInterfaceFactoryInterfaceFactory.setInitialized(initialized: Boolean);
begin
        Self.initialized := initialized;
end;
    

function TBaseResourceAnimationInterfaceFactoryInterfaceFactory.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

