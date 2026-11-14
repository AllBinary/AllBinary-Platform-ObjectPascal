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
unit GameYouLoseSound;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Sound, CompositeSound;

type
  {AB:TYPES}
  // Use 8hz16bitmono for most J2ME
  TGameYouLoseSound = class(TCompositeSound)
  public
    class var soundInterface: TSound;
        constructor Create;
        class function getInstance: TSound; static;
  end;

implementation

{AB:CODE}
    

constructor TGameYouLoseSound.Create;
begin
        inherited Create('resource:/wav/youlose.wav');
end;
    

class function TGameYouLoseSound.getInstance: TSound;
begin
        Exit(TGameYouLoseSound.soundInterface);
end;

initialization
  {AB:INITIALIZATION}
  TGameYouLoseSound.soundInterface := TGameYouLoseSound.Create();
  {AB:END}

end.

