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
// package org.allbinary.input.motion.button
unit TouchButtonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TTouchButtonFactory = class(TObject)
  public
    LIST_: TBasicArrayList;
    list: TBasicArrayList;
    savedList: TBasicArrayList;
    saved: Boolean;
    class var SINGLETON: TTouchButtonFactory;
    procedure InitFields;
        class function getInstance: TTouchButtonFactory; static;
        constructor Create;
        procedure defaultList; virtual;
        procedure toggle(save: Boolean; list: TBasicArrayList); virtual;
        procedure setList(list: TBasicArrayList); virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListUtil;


{AB:CODE}

procedure TTouchButtonFactory.InitFields;
begin
  Self.LIST_ := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.list := Self.LIST_;
  Self.savedList := Self.LIST_;
  Self.saved := False;
end;
    

class function TTouchButtonFactory.getInstance: TTouchButtonFactory;
begin
        Exit(TTouchButtonFactory.SINGLETON);
end;
    

constructor TTouchButtonFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TTouchButtonFactory.defaultList;
begin
        Self.list := Self.LIST_;
        Self.toggle(False, Self.LIST_);
end;
    

procedure TTouchButtonFactory.toggle(save: Boolean; list: TBasicArrayList);
begin
    TJava.MonitorEnter(Self);
    try
        if (list) <> (TBasicArrayListUtil.getInstance().getImmutableInstance()) then begin
            Self.savedList := list;
            if not (Self.saved) then begin
                Self.list := Self.savedList;
            end;
        end else begin
            if save then begin
                if not (Self.saved) then begin
                    Self.saved := True;
                    Self.savedList := Self.list;
                    Self.list := Self.LIST_;
                end else begin
                end;
            end else begin
                Self.list := Self.savedList;
                Self.saved := False;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TTouchButtonFactory.setList(list: TBasicArrayList);
begin
        if (list) = (nil) then begin
            raise SysUtils.Exception.Create('Null List');
        end;
        Self.list := list;
end;
    

function TTouchButtonFactory.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  TTouchButtonFactory.SINGLETON := TTouchButtonFactory.Create();
  {AB:END}

end.

