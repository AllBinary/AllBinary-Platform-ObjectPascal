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
unit NullRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ARunnable;

type
  {AB:TYPES}
  TNullRunnable = class(TARunnable)
  public
    class var instance: TNullRunnable;
        class function getInstance: TNullRunnable; static;
        constructor Create;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor;


{AB:CODE}
    

class function TNullRunnable.getInstance: TNullRunnable;
begin
        Exit(TNullRunnable.instance);
end;
    

constructor TNullRunnable.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNullRunnable.instance := TNullRunnable.Create();
  {AB:END}

end.

