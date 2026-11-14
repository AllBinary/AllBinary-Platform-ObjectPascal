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
// package org.allbinary.graphics.form.item
unit CommandTextItemArrayFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, Visitor, BasicArrayList, ABCustomItem;

type
  {AB:TYPES}
  TCommandTextItemArrayFactory = class(TObject)
  public
    list: TBasicArrayList;
    visitorInterface: TVisitor;
    procedure InitFields;
        constructor Create(visitorInterface: TVisitor);
        function getInstance(vector: TObject; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TArray<TABCustomItem>;
  end;

implementation
uses
  CommandTextItem, Command, ImageItem, DisplayInfoSingleton, ScreenInfo, VectorUtil, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TCommandTextItemArrayFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  
end;
    

constructor TCommandTextItemArrayFactory.Create(visitorInterface: TVisitor);
begin
    inherited Create;
    InitFields;
        Self.visitorInterface := visitorInterface;
end;
    

function TCommandTextItemArrayFactory.getInstance(vector: TObject; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TArray<TABCustomItem>;
var
  vectorUtil_: TVectorUtil;
  size: Integer;
  textItem: TCommandTextItem;
  priorityLimit: Integer;
  displayInfo: TDisplayInfoSingleton;
  isLargeEnoughDisplayForBigMenu: Boolean;
  command_: TCommand;
  aBoolean: Boolean;
  index: Integer;
  textItemArray: TArray<TABCustomItem>;
  size2: Integer;
begin
        vectorUtil_ := TVectorUtil.getInstance();
        size := vectorUtil_.getSize(TJava.Box(vector));
        Self.list.clear();
        
        priorityLimit := 7;
        displayInfo := TDisplayInfoSingleton.getInstance();
        isLargeEnoughDisplayForBigMenu := (((displayInfo.isPortrait()) and ((displayInfo.getLastHeight()) >= (TScreenInfo.getInstance().MEDIUM_WIDTH)))) or (((not (displayInfo.isPortrait())) and ((displayInfo.getLastWidth()) >= (TScreenInfo.getInstance().MEDIUM_WIDTH))));
        if (not (isLargeEnoughDisplayForBigMenu)) and ((size) > (3)) then begin
            priorityLimit := 3;
        end;
        
        for index := 0 to size - 1 do begin
            command_ := TCommand(TJava.ToObject(vectorUtil_.elementAt(TJava.Box(vector), index)));
            if (command_.getPriority()) < (priorityLimit) then begin
                aBoolean := Boolean(Self.visitorInterface.visit(command_));
                if (aBoolean) then begin
                    textItem := TCommandTextItem.Create(command_, TImageItem.LAYOUT_DEFAULT, TStringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor);
                    Self.list.add(TJava.Box(textItem));
                end;
            end;
        end;
        textItemArray := TJava.NewArray<TABCustomItem>(Self.list.size());
        size2 := System.Length(textItemArray);
        for index := 0 to size2 - 1 do begin
            textItemArray[index] := TABCustomItem(TJava.ToObject(Self.list.objectArray[index]));
        end;
        Exit(textItemArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

