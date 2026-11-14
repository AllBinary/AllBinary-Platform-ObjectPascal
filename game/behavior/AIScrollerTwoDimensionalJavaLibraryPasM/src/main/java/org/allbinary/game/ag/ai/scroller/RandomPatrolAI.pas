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
// package org.allbinary.game.ag.ai.scroller
unit RandomPatrolAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInput, AllBinaryLayer, AllBinaryLayerManager, ABHashtable, BasePatrolAI;

type
  {AB:TYPES}
  TRandomPatrolAI = class(TBasePatrolAI)
  public
    changedDirection: Boolean;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure updateRandomDistance;
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure nextDirection; override;
  end;

implementation
uses
  Canvas, MyRandomFactory;


{AB:CODE}

procedure TRandomPatrolAI.InitFields;
begin
  Self.changedDirection := True;
end;
    

constructor TRandomPatrolAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(hashtable, ownerLayerInterface, gameInput_);
        InitFields;
        Self.updateRandomDistance();
end;
    

procedure TRandomPatrolAI.updateRandomDistance;
begin
        Self.currentDistance := TMyRandomFactory.getInstance().getAbsoluteNextInt(Self.maxDistance.intValue());
end;
    

// throws Exception
procedure TRandomPatrolAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        inherited update();
        inherited processKeyAI(Self.keyDirection);
        if Self.changedDirection then begin
            inherited processKeyAI(TCanvas.KEY_NUM1);
            Self.updateRandomDistance();
            Self.changedDirection := False;
        end;
end;
    

procedure TRandomPatrolAI.nextDirection;
begin
        inherited nextDirection();
        Self.changedDirection := True;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

