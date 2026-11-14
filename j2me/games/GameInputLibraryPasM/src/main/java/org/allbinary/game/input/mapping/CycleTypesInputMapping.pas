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
// AB:CYCLE TYPES InputMapping InputToGameKeyMapping
// The units InputMapping InputToGameKeyMapping use each other in their interface sections, so their types are declared together here.
unit CycleTypesInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input, LogUtil, CommonStrings, BasicArrayList, ABHashtable, Canvas, GameKey, GameKeyFactory;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TInputMapping = class;
  TInputToGameKeyMapping = class;
  {AB:TYPES}
  { InputMapping }
  TInputMapping = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    hashtable: TABHashtable<TObject, TObject>;
    mappedList: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function getTotalMapped: Integer; virtual;
        function isDefaultNew: Boolean; virtual;
        function getDefault: TInputToGameKeyMapping; virtual;
        procedure removeAll; virtual;
        procedure remove(input_: TInput; mappedToInput: TInput); virtual;
        procedure addMapping(inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        procedure add(input_: TInput; mappedToInput: TInput); virtual;
        function isMapped(input_: TInput): Boolean; virtual;
        function getMappedInput(id: TInput): TBasicArrayList; virtual;
        function getHashtable: TABHashtable<TObject, TObject>; virtual;
  end;

  { InputToGameKeyMapping }
  TInputToGameKeyMapping = class(TInputMapping)
  public
    gameKeyFactory: TGameKeyFactory;
    mappedGameKeys: TArray<TGameKey>;
    platformToGameKeyMapping: TArray<TGameKey>;
    negativePlatformToGameKeyMapping: TArray<TGameKey>;
    class var instance: TObject;
    procedure InitFields;
        class function getNullInstance: TInputToGameKeyMapping; static;
        constructor Create;
        procedure clear;
        procedure removeAll; override;
        procedure addMapping(inputToGameKeyMapping_: TInputToGameKeyMapping); override;
        procedure addAll(input_: TInput; list: TBasicArrayList);
        procedure add(input_: TInput; mappedToInput: TInput); override;
        procedure remove(input_: TInput; mappedToInput: TInput); override;
        procedure set_(input_: TInput; mappedToInput: TInput);
        function getMaxMappable: Integer; virtual;
        function getReverseInstance(id: Integer): TBasicArrayList; virtual;
        procedure initGameKey(canvas_: TCanvas; gameKey_: TGameKey);
        function getSmallestCanvasGameKeyCode(canvas_: TCanvas): Integer;
        procedure init(canvas_: TCanvas); virtual;
        function getInstanceForCanvas(canvas_: TCanvas; id: Integer): TGameKey; virtual;
        function getInstance(id: Integer): TGameKey; virtual;
  end;


implementation
uses
  StringMaker, StringUtil, CommonLabels, BasicArrayListD, StdUtil, InputFactory, NullUtil, PreLogUtil, CommonSeps;


{AB:CODE}

procedure TInputMapping.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.mappedList := TBasicArrayListD.Create();
end;
    

constructor TInputMapping.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInputMapping.getTotalMapped: Integer;
begin
        Exit(Self.hashtable.size());
end;
    

function TInputMapping.isDefaultNew: Boolean;
begin
        Exit(False);
end;
    

function TInputMapping.getDefault: TInputToGameKeyMapping;
begin
        Exit(TInputToGameKeyMapping.getNullInstance());
end;
    

procedure TInputMapping.removeAll;
begin
        Self.hashtable.clear();
        Self.mappedList.clear();
end;
    

procedure TInputMapping.remove(input_: TInput; mappedToInput: TInput);
var
  stringBuffer: TStringMaker;
  stringUtil_: TStringUtil;
  list: TBasicArrayList;
begin
        stringBuffer := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        stringBuffer.append(TCommonLabels.getInstance().START_LABEL);
        stringBuffer.append(stringUtil_.toString(input_));
        stringBuffer.append(' == ');
        stringBuffer.append(stringUtil_.toString(mappedToInput));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'InputMapping::remove');
        list := Self.getMappedInput(input_);
        if list.contains(TJava.Box(mappedToInput)) then begin
            list.remove(mappedToInput);
            Self.mappedList.remove(mappedToInput);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('Removed: ');
            stringBuffer.append(stringUtil_.toString(input_));
            stringBuffer.append(' == ');
            stringBuffer.append(stringUtil_.toString(mappedToInput));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'InputMapping::remove');
        end else begin
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('Not Deleted: ');
            stringBuffer.append(stringUtil_.toString(input_));
            stringBuffer.append(' == ');
            stringBuffer.append(stringUtil_.toString(mappedToInput));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'InputMapping::remove');
        end;
end;
    

// throws Exception
procedure TInputMapping.addMapping(inputToGameKeyMapping_: TInputToGameKeyMapping);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TInputMapping.add(input_: TInput; mappedToInput: TInput);
var
  list: TBasicArrayList;
begin
        list := Self.getMappedInput(input_);
        if not (list.contains(TJava.Box(mappedToInput))) then begin
            list.add(TJava.Box(mappedToInput));
            Self.mappedList.add(TJava.Box(mappedToInput));
        end;
end;
    

function TInputMapping.isMapped(input_: TInput): Boolean;
begin
        Exit(Self.mappedList.contains(TJava.Box(input_)));
end;
    

function TInputMapping.getMappedInput(id: TInput): TBasicArrayList;
var
  mappingInputCanBeNullList: TObject;
  list: TBasicArrayList;
begin
        mappingInputCanBeNullList := TJava.Box(Self.hashtable.get(TJava.Box(id)));
        if (mappingInputCanBeNullList) = (nil) then begin
            list := TBasicArrayListD.Create();
            Self.hashtable.put(TJava.Box(id), TJava.Box(list));
            Exit(list);
        end;
        Exit(TBasicArrayList(TJava.ToObject(mappingInputCanBeNullList)));
end;
    

function TInputMapping.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;


procedure TInputToGameKeyMapping.InitFields;
begin
  Self.gameKeyFactory := TGameKeyFactory.getInstance();
  Self.mappedGameKeys := TArray<TGameKey>.Create(Self.gameKeyFactory.UP, Self.gameKeyFactory.DOWN, Self.gameKeyFactory.LEFT, Self.gameKeyFactory.RIGHT);
  Self.platformToGameKeyMapping := TJava.NewArray<TGameKey>(TInputFactory.getInstance().MAX);
  Self.negativePlatformToGameKeyMapping := nil;
end;
    

class function TInputToGameKeyMapping.getNullInstance: TInputToGameKeyMapping;
begin
        if (TInputToGameKeyMapping.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TInputToGameKeyMapping.instance := TInputToGameKeyMapping.Create();
        end;
        Exit(TInputToGameKeyMapping(TJava.ToObject(TInputToGameKeyMapping.instance)));
end;
    

constructor TInputToGameKeyMapping.Create;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.clear();
end;
    

procedure TInputToGameKeyMapping.clear;
var
  index: Integer;
begin
        for index := (System.Length(Self.platformToGameKeyMapping)) - (1) downto 0 do begin
            Self.platformToGameKeyMapping[index] := Self.gameKeyFactory.NONE;
        end;
end;
    

procedure TInputToGameKeyMapping.removeAll;
begin
        inherited removeAll();
        Self.clear();
end;
    

procedure TInputToGameKeyMapping.addMapping(inputToGameKeyMapping_: TInputToGameKeyMapping);
var
  input_: TInput;
  index: Integer;
begin
        for index := (inputToGameKeyMapping_.getMaxMappable()) - (1) downto 0 do begin
            input_ := inputToGameKeyMapping_.getInstance(index);
            if (input_) <> (Self.gameKeyFactory.NONE) then begin
                Self.addAll(input_, inputToGameKeyMapping_.getMappedInput(input_));
            end;
        end;
end;
    

procedure TInputToGameKeyMapping.addAll(input_: TInput; list: TBasicArrayList);
var
  mappedToInput: TInput;
  index: Integer;
begin
        for index := (list.size()) - (1) downto 0 do begin
            mappedToInput := TInput(TJava.ToObject(list.objectArray[index]));
            Self.add(input_, mappedToInput);
        end;
end;
    

procedure TInputToGameKeyMapping.add(input_: TInput; mappedToInput: TInput);
begin
        inherited add(input_, mappedToInput);
        Self.set_(input_, mappedToInput);
end;
    

procedure TInputToGameKeyMapping.remove(input_: TInput; mappedToInput: TInput);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(TStringUtil.getInstance().toString(input_)).append(' == ').append(TStringUtil.getInstance().toString(mappedToInput)).toString(), TJava.Box(Self), 'InputToGameKeyMapping::remove');
        inherited remove(input_, mappedToInput);
        Self.set_(input_, Self.gameKeyFactory.NONE);
end;
    

procedure TInputToGameKeyMapping.set_(input_: TInput; mappedToInput: TInput);
var
  id: Integer;
begin
        id := mappedToInput.getId();
        if ((id) >= (0)) and ((id) < (System.Length(Self.platformToGameKeyMapping))) then begin
            Self.platformToGameKeyMapping[id] := TGameKey(TJava.ToObject(input_));
        end;
end;
    

function TInputToGameKeyMapping.getMaxMappable: Integer;
begin
        Exit(System.Length(Self.platformToGameKeyMapping));
end;
    

function TInputToGameKeyMapping.getReverseInstance(id: Integer): TBasicArrayList;
var
  list: TBasicArrayList;
  inputFactory_: TInputFactory;
  input_: TInput;
  index: Integer;
begin
        list := TBasicArrayListD.Create();
        inputFactory_ := TInputFactory.getInstance();
        for index := 0 to System.Length(Self.platformToGameKeyMapping) - 1 do begin
            if (Self.platformToGameKeyMapping[index].getId()) = (id) then begin
                input_ := inputFactory_.getInstanceById(index);
                if (input_) <> (nil) then begin
                    list.add(TJava.Box(input_));
                end;
            end;
        end;
        Exit(list);
end;
    

// throws Exception
procedure TInputToGameKeyMapping.initGameKey(canvas_: TCanvas; gameKey_: TGameKey);
var
  key: Integer;
begin
        key := canvas_.getKeyCode(gameKey_.getId());
        if ((key) < (0)) and ((-key) < (System.Length(Self.negativePlatformToGameKeyMapping))) then begin
            Self.negativePlatformToGameKeyMapping[-key] := gameKey_;
        end else if (key) > (0) then begin
            if (Self.platformToGameKeyMapping[key]) = (Self.gameKeyFactory.NONE) then begin
                Self.platformToGameKeyMapping[key] := gameKey_;
            end;
        end else begin
            TPreLogUtil.putOE(TStringMaker.Create().append(gameKey_.toString()).append(TCommonSeps.getInstance().COLON_SEP).appendint(key).toString(), TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(SysUtils.Exception.Create('')));
        end;
end;
    

// throws Exception
function TInputToGameKeyMapping.getSmallestCanvasGameKeyCode(canvas_: TCanvas): Integer;
var
  nextKey: Integer;
  smallestKey: Integer;
  index: Integer;
begin
        nextKey := 0;
        smallestKey := 0;
        index := System.Length(Self.mappedGameKeys);
        while (TJava.PreDec(index)) >= (0) do begin
            nextKey := canvas_.getKeyCode(Self.mappedGameKeys[index].getId());
            if (nextKey) < (smallestKey) then begin
                smallestKey := nextKey;
            end;
        end;
        Exit(smallestKey);
end;
    

procedure TInputToGameKeyMapping.init(canvas_: TCanvas);
var
  negativePlatformToGameKeyMapping: TArray<TGameKey>;
  smallestKey: Integer;
  index: Integer;
begin
        try
            negativePlatformToGameKeyMapping := nil;
            smallestKey := Self.getSmallestCanvasGameKeyCode(canvas_);
            if (smallestKey) < (0) then begin
                Dec(smallestKey);
                if (smallestKey) < (-256) then begin
                    smallestKey := -256;
                end;
                negativePlatformToGameKeyMapping := TJava.NewArray<TGameKey>(-smallestKey);
                index := System.Length(negativePlatformToGameKeyMapping);
                while (TJava.PreDec(index)) >= (0) do begin
                    negativePlatformToGameKeyMapping[index] := Self.gameKeyFactory.NONE;
                end;
                Self.negativePlatformToGameKeyMapping := negativePlatformToGameKeyMapping;
            end;
            index := System.Length(Self.mappedGameKeys);
            while (TJava.PreDec(index)) >= (0) do begin
                Self.initGameKey(canvas_, Self.mappedGameKeys[index]);
            end;
        except
            on t: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(t));
            end;
        end;
end;
    

function TInputToGameKeyMapping.getInstanceForCanvas(canvas_: TCanvas; id: Integer): TGameKey;
begin
        if ((id) >= (0)) and ((id) < (System.Length(Self.platformToGameKeyMapping))) then begin
            Exit(Self.platformToGameKeyMapping[id]);
        end else if ((id) < (0)) and ((-id) < (System.Length(Self.negativePlatformToGameKeyMapping))) then begin
            Exit(Self.negativePlatformToGameKeyMapping[-id]);
        end else begin
            Exit(Self.gameKeyFactory.NONE);
        end;
end;
    

function TInputToGameKeyMapping.getInstance(id: Integer): TGameKey;
begin
        if ((id) >= (0)) and ((id) < (System.Length(Self.platformToGameKeyMapping))) then begin
            Exit(Self.platformToGameKeyMapping[id]);
        end else if ((id) < (0)) and ((-id) < (System.Length(Self.negativePlatformToGameKeyMapping))) then begin
            Exit(Self.negativePlatformToGameKeyMapping[-id]);
        end else begin
            Exit(Self.gameKeyFactory.NONE);
        end;
end;


initialization
  {AB:INITIALIZATION}
  TInputToGameKeyMapping.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.
