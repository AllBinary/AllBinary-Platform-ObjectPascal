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
unit AnalogLocationInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnalogLocationInput, AllBinaryLayerManager;

type
  {AB:TYPES}
  TAnalogLocationInputProcessor = class(TObject)
  public
    constructor Create;
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInput_: TAnalogLocationInput); virtual;
  end;

implementation

{AB:CODE}

constructor TAnalogLocationInputProcessor.Create;
begin
  inherited Create;
end;
    

procedure TAnalogLocationInputProcessor.process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInput_: TAnalogLocationInput);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

