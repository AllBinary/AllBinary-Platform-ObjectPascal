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
unit DiveAndDirectionalTrackingAICompositeVisitorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor, DiveAndDirectionalTrackingAI;

type
  {AB:TYPES}
  TDiveAndDirectionalTrackingAICompositeVisitorFactory = class(TObject)
  public
    constructor Create;
        function getInstance(diveBombAI: TDiveAndDirectionalTrackingAI): TVisitor; virtual;
  end;

implementation

{AB:CODE}

constructor TDiveAndDirectionalTrackingAICompositeVisitorFactory.Create;
begin
  inherited Create;
end;
    

function TDiveAndDirectionalTrackingAICompositeVisitorFactory.getInstance(diveBombAI: TDiveAndDirectionalTrackingAI): TVisitor;
begin
        Exit(TVisitor.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

