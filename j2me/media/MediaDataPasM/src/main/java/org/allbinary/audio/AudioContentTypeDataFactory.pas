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
// package org.allbinary.audio
unit AudioContentTypeDataFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AudioContentTypeData;

type
  {AB:TYPES}
  TAudioContentTypeDataFactory = class(TObject)
  public
    MIME_AUDIO_TONE: TAudioContentTypeData;
    MIME_AUDIO_AMR: TAudioContentTypeData;
    MIME_AUDIO_AMR_WB: TAudioContentTypeData;
    MIME_AUDIO_WAV: TAudioContentTypeData;
    MIME_AUDIO_MIDI: TAudioContentTypeData;
    MIME_AUDIO_SP_MIDI: TAudioContentTypeData;
    class var instance: TAudioContentTypeDataFactory;
    procedure InitFields;
        class function getInstance: TAudioContentTypeDataFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TAudioContentTypeDataFactory.InitFields;
begin
  Self.MIME_AUDIO_TONE := TAudioContentTypeData.Create('audio/x-tone-seq');
  Self.MIME_AUDIO_AMR := TAudioContentTypeData.Create('audio/amr');
  Self.MIME_AUDIO_AMR_WB := TAudioContentTypeData.Create('audio/amr-wb');
  Self.MIME_AUDIO_WAV := TAudioContentTypeData.Create('audio/x-wav');
  Self.MIME_AUDIO_MIDI := TAudioContentTypeData.Create('audio/midi');
  Self.MIME_AUDIO_SP_MIDI := TAudioContentTypeData.Create('audio/sp-midi');
end;
    

class function TAudioContentTypeDataFactory.getInstance: TAudioContentTypeDataFactory;
begin
        Exit(TAudioContentTypeDataFactory.instance);
end;
    

constructor TAudioContentTypeDataFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAudioContentTypeDataFactory.instance := TAudioContentTypeDataFactory.Create();
  {AB:END}

end.

