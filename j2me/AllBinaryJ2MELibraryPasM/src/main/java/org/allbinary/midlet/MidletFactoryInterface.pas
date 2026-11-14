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
// package org.allbinary.midlet
unit MidletFactoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MIDlet;

type
  {AB:TYPES}
  IMidletFactoryInterface = class(TObject)
  public
    constructor Create;
        function getInstance: TMIDlet; virtual;
  end;

implementation
uses
  AllBinaryMidlet;


{AB:CODE}

constructor IMidletFactoryInterface.Create;
begin
  inherited Create;
end;
    

function IMidletFactoryInterface.getInstance: TMIDlet;
begin
        Exit(TAllBinaryMidlet.getNullInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

