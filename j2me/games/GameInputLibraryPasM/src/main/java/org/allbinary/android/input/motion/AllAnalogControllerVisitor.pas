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
// package org.allbinary.android.input.motion
unit AllAnalogControllerVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, AnalogLocationInputProcessor, AnalogControllerVisitor;

type
  {AB:TYPES}
  TAllAnalogControllerVisitor = class(TAnalogControllerVisitor)
  public
    constructor Create;
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInputProcessor_: TAnalogLocationInputProcessor); override;
  end;

implementation
uses
  AnalogLocationInput, AnalogLocationInputFactory, BasicArrayList;


{AB:CODE}

constructor TAllAnalogControllerVisitor.Create;
begin
  inherited Create;
end;
    

procedure TAllAnalogControllerVisitor.process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInputProcessor_: TAnalogLocationInputProcessor);
var
  analogLocationInputList: TBasicArrayList;
  analogLocationInput_: TAnalogLocationInput;
  index: Integer;
begin
        analogLocationInputList := TAnalogLocationInputFactory.getInstance().getList();
        
        for index := (analogLocationInputList.size()) - (1) downto 0 do begin
            analogLocationInput_ := TAnalogLocationInput(TJava.ToObject(analogLocationInputList.get(index)));
            analogLocationInputProcessor_.process(allbinaryLayerManager_, analogLocationInput_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

