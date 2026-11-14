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
unit RandomTranslation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TRandomTranslation = class(TObject)
  public
    constructor Create;
        class function getInstance(vector: TBasicArrayList; howMuch: Integer): TBasicArrayList; static;
  end;

implementation
uses
  BasicGraphicsPipeline, MyRandomFactory;


{AB:CODE}

constructor TRandomTranslation.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TRandomTranslation.getInstance(vector: TBasicArrayList; howMuch: Integer): TBasicArrayList;
var
  myRandomFactory_: TMyRandomFactory;
  x: Integer;
  y: Integer;
  graphicsPipe: TBasicGraphicsPipeline;
begin
        myRandomFactory_ := TMyRandomFactory.getInstance();
        x := -myRandomFactory_.getNextInt(howMuch);
        y := myRandomFactory_.getNextInt(howMuch);
        graphicsPipe := TBasicGraphicsPipeline.Create(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(x, y);
        Exit(graphicsPipe.getMatrix());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

