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
unit PrimaryPlayerQueueFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerQueue;

type
  {AB:TYPES}
  TPrimaryPlayerQueueFactory = class(TObject)
  public
    class var SINGLETON: TPlayerQueue;
    constructor Create;
        class function getInstance: TPlayerQueue; static;
  end;

implementation

{AB:CODE}

constructor TPrimaryPlayerQueueFactory.Create;
begin
  inherited Create;
end;
    

class function TPrimaryPlayerQueueFactory.getInstance: TPlayerQueue;
begin
        Exit(TPrimaryPlayerQueueFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TPrimaryPlayerQueueFactory.SINGLETON := TPlayerQueue.Create(4);
  {AB:END}

end.

