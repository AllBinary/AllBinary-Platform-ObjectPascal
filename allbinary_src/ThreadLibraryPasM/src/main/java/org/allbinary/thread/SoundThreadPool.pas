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
// package org.allbinary.thread
unit SoundThreadPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ThreadPool;

type
  {AB:TYPES}
  TSoundThreadPool = class(TObject)
  public
    class var instance: TThreadPool;
    constructor Create;
        class function getInstance: TThreadPool; static;
  end;

implementation

{AB:CODE}

constructor TSoundThreadPool.Create;
begin
  inherited Create;
end;
    

class function TSoundThreadPool.getInstance: TThreadPool;
begin
        Exit(TSoundThreadPool.instance);
end;

initialization
  {AB:INITIALIZATION}
  TSoundThreadPool.instance := TThreadPool.Create('Sound', 1, TThreadPool.NORMAL_PRIORITY);
  {AB:END}

end.

