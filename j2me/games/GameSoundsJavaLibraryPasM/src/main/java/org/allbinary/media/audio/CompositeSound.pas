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
unit CompositeSound;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Sound;

type
  {AB:TYPES}
  TCompositeSound = class(TSound)
  public
        constructor Create(resource: string);
        procedure init; override;
  end;

implementation
uses
  PlayerComposite, AllBinaryMediaManager;


{AB:CODE}
    

constructor TCompositeSound.Create(resource: string);
begin
        inherited Create(resource);
end;
    

// throws Exception
procedure TCompositeSound.init;
begin
        Self.setPlayerP(TPlayerComposite.Create(TAllBinaryMediaManager.createPlayer(Self.getResource()), 570));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

