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
// package org.allbinary.game.ag.ai
unit LastKeyAIVisitorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LastKeyAIVisitor;

type
  {AB:TYPES}
  TLastKeyAIVisitorFactory = class(TObject)
  public
    class var instance: TLastKeyAIVisitor;
    constructor Create;
        class function getInstance: TLastKeyAIVisitor; static;
  end;

implementation

{AB:CODE}

constructor TLastKeyAIVisitorFactory.Create;
begin
  inherited Create;
end;
    

class function TLastKeyAIVisitorFactory.getInstance: TLastKeyAIVisitor;
begin
        Exit(TLastKeyAIVisitorFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLastKeyAIVisitorFactory.instance := TLastKeyAIVisitor.Create();
  {AB:END}

end.

