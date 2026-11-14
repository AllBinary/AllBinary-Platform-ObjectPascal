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
unit Feature;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable;

type
  {AB:TYPES}
  TFeature = class(TObject)
  public
    name: string;
    class var hashtable: TABHashtable<TObject, TObject>;
    procedure InitFields;
        constructor Create(name: string);
        class function getInstance(name: string): TFeature; static;
        class procedure add(name: string; gameFeature: TFeature); static;
        function toString: string; virtual;
        function getName: string; virtual;
  end;

implementation
uses
  ChangedGameFeatureListener, StdUtil;


{AB:CODE}

procedure TFeature.InitFields;
begin
  
end;
    

constructor TFeature.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        TFeature.add(name, Self);
        TChangedGameFeatureListener.getInstance().add(Self);
end;
    

class function TFeature.getInstance(name: string): TFeature;
begin
        Exit(TFeature(TJava.ToObject(TFeature.hashtable.get(TJava.Box(name)))));
end;
    

class procedure TFeature.add(name: string; gameFeature: TFeature);
begin
        TFeature.hashtable.put(TJava.Box(name), TJava.Box(gameFeature));
end;
    

function TFeature.toString: string;
begin
        Exit(Self.getName());
end;
    

function TFeature.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  TFeature.hashtable := TStdUtil.getInstance().createHashtable();
  {AB:END}

end.

