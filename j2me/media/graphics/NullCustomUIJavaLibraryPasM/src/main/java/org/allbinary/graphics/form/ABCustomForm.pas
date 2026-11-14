// Generated Code Do Not Modify
// package org.allbinary.graphics.form
unit ABCustomForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ABCustomItem, LogUtil, CommonStrings, CustomScreen;

type
  {AB:TYPES}
  TABCustomForm = class(TCustomScreen)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create(title: string; items: TArray<TABCustomItem>; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        function getAllitems: TArray<TABCustomItem>; virtual;
        function size: Integer; virtual;
        procedure setSelectedIndex(index: Integer); virtual;
        function getSelectedIndex: Integer; virtual;
        procedure deleteAll; virtual;
        procedure delete_(itemNum: Integer); virtual;
        function append(item: TABCustomItem): Integer; virtual;
        procedure insert(itemNum: Integer; item: TABCustomItem); virtual;
        procedure set_(itemNum: Integer; item: TABCustomItem); virtual;
        function get(itemNum: Integer): TABCustomItem; virtual;
        function getWidth: Integer; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        function getTitle: string; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TABCustomForm.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TABCustomForm.Create(title: string; items: TArray<TABCustomItem>; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
    inherited Create;
    InitFields;
end;
    

function TABCustomForm.getAllitems: TArray<TABCustomItem>;
begin
        Exit(nil);
end;
    

function TABCustomForm.size: Integer;
begin
        Exit(0);
end;
    

procedure TABCustomForm.setSelectedIndex(index: Integer);
begin
end;
    

function TABCustomForm.getSelectedIndex: Integer;
begin
        Exit(0);
end;
    

procedure TABCustomForm.deleteAll;
begin
end;
    

procedure TABCustomForm.delete_(itemNum: Integer);
begin
end;
    

function TABCustomForm.append(item: TABCustomItem): Integer;
begin
        Exit(-1);
end;
    

procedure TABCustomForm.insert(itemNum: Integer; item: TABCustomItem);
begin
end;
    

procedure TABCustomForm.set_(itemNum: Integer; item: TABCustomItem);
begin
end;
    

function TABCustomForm.get(itemNum: Integer): TABCustomItem;
begin
        Exit(TABCustomItem.getNullInstance());
end;
    

function TABCustomForm.getWidth: Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TABCustomForm.paint(graphics_: TGraphics);
begin
end;
    

function TABCustomForm.getTitle: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

