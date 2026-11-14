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
// package org.allbinary.graphics.pipeline
unit RandomRotationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyRandomFactory, AngleFactory, BasicArrayList;

type
  {AB:TYPES}
  TRandomRotationFactory = class(TObject)
  public
    myRandomFactory: TMyRandomFactory;
    angleFactory: TAngleFactory;
    class var instance: TRandomRotationFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRandomRotationFactory; static;
        function getInstanceList(vector: TBasicArrayList; howMuch: Integer): TBasicArrayList; virtual;
        function getNextRandomAngle(howMuch: Integer): Integer; virtual;
  end;

implementation
uses
  BasicGraphicsPipeline;


{AB:CODE}

procedure TRandomRotationFactory.InitFields;
begin
  Self.myRandomFactory := TMyRandomFactory.getInstance();
  Self.angleFactory := TAngleFactory.getInstance();
end;

constructor TRandomRotationFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRandomRotationFactory.getInstance: TRandomRotationFactory;
begin
        Exit(TRandomRotationFactory.instance);
end;
    

// throws Exception
function TRandomRotationFactory.getInstanceList(vector: TBasicArrayList; howMuch: Integer): TBasicArrayList;
var
  graphicsPipe: TBasicGraphicsPipeline;
begin
        graphicsPipe := TBasicGraphicsPipeline.Create(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.rotateToAngle(Self.angleFactory.getAt(Self.getNextRandomAngle(howMuch)));
        Exit(graphicsPipe.getMatrix());
end;
    

function TRandomRotationFactory.getNextRandomAngle(howMuch: Integer): Integer;
begin
        Exit(Self.myRandomFactory.getNextInt((howMuch) * (10)));
end;

initialization
  {AB:INITIALIZATION}
  TRandomRotationFactory.instance := TRandomRotationFactory.Create();
  {AB:END}

end.

