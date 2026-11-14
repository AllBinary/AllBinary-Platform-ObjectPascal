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
// package org.allbinary.media.audio
unit EarlySoundsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Sound, BaseSoundsFactory;

type
  {AB:TYPES}
  TEarlySoundsFactory = class(TBaseSoundsFactory)
  public
    class var instance: TEarlySoundsFactory;
    constructor Create;
        function getSoundInterfaceArray: TArray<TSound>; override;
        class function getInstance: TEarlySoundsFactory; static;
  end;

implementation
uses
  SelectSound, ErrorSound;


{AB:CODE}

constructor TEarlySoundsFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TEarlySoundsFactory.getSoundInterfaceArray: TArray<TSound>;
var
  soundInterfaceArray: TArray<TSound>;
  index: Integer;
begin
        soundInterfaceArray := TJava.NewArray<TSound>(2);
        index := 0;
        soundInterfaceArray[TJava.PostInc(index)] := TSelectSound.getInstance();
        soundInterfaceArray[TJava.PostInc(index)] := TErrorSound.getInstance();
        Exit(soundInterfaceArray);
end;
    

class function TEarlySoundsFactory.getInstance: TEarlySoundsFactory;
begin
        Exit(TEarlySoundsFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TEarlySoundsFactory.instance := TEarlySoundsFactory.Create();
  {AB:END}

end.

