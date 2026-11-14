// Generated Code Do Not Modify
// package org.allbinary.util
unit BasicArrayList;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArrayUtil;

type
  {AB:TYPES}
  // This is a very fast and simple resizable list.
  TBasicArrayList = class(TObject)
  public
    arrayUtil: TArrayUtil;
    objectArray: TArray<TObject>;
    currentIndex: Integer;
    class var SIZE_: string;
    procedure InitFields;
        constructor Create(objectArray: TArray<TObject>);
        procedure addAt(index: Integer; element: TObject); virtual;
        function add(anyType: TObject): Boolean; virtual;
        function removeAt(index: Integer): TObject; virtual;
        function remove(anyType: TObject): Boolean; virtual;
        function removeAll2(list: TBasicArrayList): Boolean; virtual;
        function addAll2(list: TBasicArrayList): Boolean; virtual;
        function addAllList(list: TBasicArrayList): Boolean; virtual;
        function addAll(newObjectArray: TArray<TObject>): Boolean; virtual;
        procedure ensureCapacity(minSize: Integer); virtual;
        procedure trimToSize; virtual;
        function indexOf(anyType: TObject): Integer; virtual;
        function lastIndexOf(anyType: TObject): Integer; virtual;
        function get(index: Integer): TObject; virtual;
        function set_(index: Integer; element: TObject): TObject; virtual;
        procedure clear; virtual;
        function size: Integer; virtual;
        function isEmpty: Boolean; virtual;
        function contains(anyType: TObject): Boolean; virtual;
        function toArray: TArray<TObject>; virtual;
        function toArrayType(objectArray: TArray<TObject>): TArray<TObject>; virtual;
        function clone: TObject; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  BasicArrayListS, JsType, StringMaker, CommonLabels, CommonSeps, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TBasicArrayList.InitFields;
begin
  Self.arrayUtil := TArrayUtil.getInstance();
  
  Self.currentIndex := 0;
end;
    

constructor TBasicArrayList.Create(objectArray: TArray<TObject>);
begin
    inherited Create;
    InitFields;
        Self.objectArray := objectArray;
end;
    

procedure TBasicArrayList.addAt(index: Integer; element: TObject);
var
  stringBuffer: TStringMaker;
begin
        if ((index) > (Self.currentIndex)) or ((index) < (0)) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        Self.ensureCapacity((Self.currentIndex) + (1));
        TJava.ArrayCopy<TObject>(Self.objectArray, index, Self.objectArray, (index) + (1), (Self.currentIndex) - (index));
        Self.objectArray[index] := element;
        Inc(Self.currentIndex);
end;
    

function TBasicArrayList.add(anyType: TObject): Boolean;
begin
        Self.ensureCapacity((Self.currentIndex) + (1));
        Self.objectArray[TJava.PostInc(Self.currentIndex)] := anyType;
        Exit(True);
end;
    

function TBasicArrayList.removeAt(index: Integer): TObject;
var
  stringBuffer: TStringMaker;
  oldValue: TObject;
  numMoved: Integer;
begin
        if (index) >= (Self.currentIndex) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        oldValue := TJava.Box(Self.objectArray[index]);
        numMoved := ((Self.currentIndex) - (index)) - (1);
        if (numMoved) > (0) then begin
            TJava.ArrayCopy<TObject>(Self.objectArray, (index) + (1), Self.objectArray, index, numMoved);
        end;
        Self.objectArray[TJava.PreDec(Self.currentIndex)] := nil;
        Exit(TJava.Box(oldValue));
end;
    

function TBasicArrayList.remove(anyType: TObject): Boolean;
var
  numMoved: Integer;
  index: Integer;
begin
        if (anyType) = (nil) then begin
            for index := 0 to Self.currentIndex - 1 do begin
                if (Self.objectArray[index]) = (nil) then begin
                    numMoved := ((Self.currentIndex) - (index)) - (1);
                    if (numMoved) > (0) then begin
                        TJava.ArrayCopy<TObject>(Self.objectArray, (index) + (1), Self.objectArray, index, numMoved);
                    end;
                    Self.objectArray[TJava.PreDec(Self.currentIndex)] := nil;
                    Exit(True);
                end;
            end;
        end else begin
            for index := 0 to Self.currentIndex - 1 do begin
                if ((anyType) = (Self.objectArray[index])) or (anyType.equals(Self.objectArray[index])) then begin
                    numMoved := ((Self.currentIndex) - (index)) - (1);
                    if (numMoved) > (0) then begin
                        TJava.ArrayCopy<TObject>(Self.objectArray, (index) + (1), Self.objectArray, index, numMoved);
                    end;
                    Self.objectArray[TJava.PreDec(Self.currentIndex)] := nil;
                    Exit(True);
                end;
            end;
        end;
        Exit(False);
end;
    

function TBasicArrayList.removeAll2(list: TBasicArrayList): Boolean;
var
  result_: Boolean;
  size: Integer;
  index: Integer;
begin
        result_ := True;
        size := list.size();
        for index := 0 to size - 1 do begin
            if Self.remove(list.get(index)) then begin
            end else begin
                result_ := False;
            end;
        end;
        Exit(result_);
end;
    

function TBasicArrayList.addAll2(list: TBasicArrayList): Boolean;
var
  listSize: Integer;
  index: Integer;
begin
        Self.ensureCapacity((Self.currentIndex) + (list.currentIndex));
        listSize := list.currentIndex;
        for index := 0 to listSize - 1 do begin
            Self.objectArray[TJava.PostInc(Self.currentIndex)] := list.objectArray[index];
        end;
        Exit(True);
end;
    

function TBasicArrayList.addAllList(list: TBasicArrayList): Boolean;
var
  newObjectArray: TArray<TObject>;
begin
        newObjectArray := list.toArray();
        Exit(Self.addAll(newObjectArray));
end;
    

function TBasicArrayList.addAll(newObjectArray: TArray<TObject>): Boolean;
var
  numSize: Integer;
begin
        numSize := System.Length(newObjectArray);
        Self.ensureCapacity((Self.currentIndex) + (numSize));
        TJava.ArrayCopy<TObject>(newObjectArray, 0, Self.objectArray, Self.currentIndex, numSize);
        Self.currentIndex := (Self.currentIndex) + (numSize);
        Exit((numSize) <> (0));
end;
    

procedure TBasicArrayList.ensureCapacity(minSize: Integer);
var
  oldCapacity: Integer;
  newCapacity: Integer;
begin
        oldCapacity := System.Length(Self.objectArray);
        if (minSize) > (oldCapacity) then begin
            newCapacity := ((TJava.SignedRightShift(((oldCapacity) * (3)), 1))) + (1);
            if (newCapacity) < (minSize) then begin
                newCapacity := minSize;
            end;
            Self.objectArray := Self.arrayUtil.copyOf(Self.objectArray, newCapacity);
        end;
end;
    

procedure TBasicArrayList.trimToSize;
var
  oldCapacity: Integer;
begin
        oldCapacity := System.Length(Self.objectArray);
        if (Self.currentIndex) < (oldCapacity) then begin
            Self.objectArray := Self.arrayUtil.copyOf(Self.objectArray, Self.currentIndex);
        end;
end;
    

function TBasicArrayList.indexOf(anyType: TObject): Integer;
var
  i: Integer;
begin
        if (anyType) = (nil) then begin
            for i := 0 to Self.currentIndex - 1 do begin
                if (Self.objectArray[i]) = (nil) then begin
                    Exit(i);
                end;
            end;
        end else begin
            for i := 0 to Self.currentIndex - 1 do begin
                if anyType.equals(Self.objectArray[i]) then begin
                    Exit(i);
                end;
            end;
        end;
        Exit(-1);
end;
    

function TBasicArrayList.lastIndexOf(anyType: TObject): Integer;
var
  i: Integer;
begin
        if (anyType) = (nil) then begin
            for i := (Self.currentIndex) - (1) downto 0 do begin
                if (Self.objectArray[i]) = (nil) then begin
                    Exit(i);
                end;
            end;
        end else begin
            for i := (Self.currentIndex) - (1) downto 0 do begin
                if anyType.equals(Self.objectArray[i]) then begin
                    Exit(i);
                end;
            end;
        end;
        Exit(-1);
end;
    

function TBasicArrayList.get(index: Integer): TObject;
var
  stringBuffer: TStringMaker;
begin
        if (index) >= (Self.currentIndex) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        Exit(TJava.Box(Self.objectArray[index]));
end;
    

function TBasicArrayList.set_(index: Integer; element: TObject): TObject;
var
  stringBuffer: TStringMaker;
  oldValue: TObject;
begin
        if (index) >= (Self.currentIndex) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        oldValue := TJava.Box(Self.objectArray[index]);
        Self.objectArray[index] := element;
        Exit(TJava.Box(oldValue));
end;
    

procedure TBasicArrayList.clear;
var
  i: Integer;
begin
        for i := 0 to Self.currentIndex - 1 do begin
            Self.objectArray[i] := nil;
        end;
        Self.currentIndex := 0;
end;
    

function TBasicArrayList.size: Integer;
begin
        Exit(Self.currentIndex);
end;
    

function TBasicArrayList.isEmpty: Boolean;
begin
        Exit((Self.currentIndex) = (0));
end;
    

function TBasicArrayList.contains(anyType: TObject): Boolean;
begin
        Exit((Self.indexOf(anyType)) >= (0));
end;
    

function TBasicArrayList.toArray: TArray<TObject>;
begin
        Exit(Self.arrayUtil.copyOf(Self.objectArray, Self.currentIndex));
end;
    

function TBasicArrayList.toArrayType(objectArray: TArray<TObject>): TArray<TObject>;
begin
        if (System.Length(objectArray)) < (Self.currentIndex) then begin
            Exit(Self.arrayUtil.copyOfType(Self.objectArray, Self.currentIndex, TObject));
        end;
        TJava.ArrayCopy<TObject>(Self.objectArray, 0, objectArray, 0, Self.currentIndex);
        if (System.Length(objectArray)) > (Self.currentIndex) then begin
            objectArray[Self.currentIndex] := nil;
        end;
        Exit(objectArray);
end;
    

function TBasicArrayList.clone: TObject;
var
  size: Integer;
  list: TBasicArrayList;
  anyType: TObject;
  index: Integer;
begin
        size := Self.size();
        list := TBasicArrayListS.Create(size);
        
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(Self.objectArray[index]);
            list.add(TJava.Box(anyType));
        end;
        Exit(TJava.Box(list));
end;
    

function TBasicArrayList.toString: string;
var
  COMMA_SEP: string;
  stringBuffer: TStringMaker;
  index: Integer;
begin
        COMMA_SEP := TCommonSeps.getInstance().COMMA_SEP;
        stringBuffer := TStringMaker.Create();
        for index := 0 to Self.currentIndex - 1 do begin
            stringBuffer.append(Self.objectArray[index].toString());
            stringBuffer.append(COMMA_SEP);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TBasicArrayList.SIZE_ := ', Size: ';
  {AB:END}

end.

