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
// package org.allbinary.image
unit ImageTypeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TImageTypeUtil = class(TObject)
  public
    PNG: string;
    JPG: string;
    GIF: string;
    list: TBasicArrayList;
    class var SINGLETON: TImageTypeUtil;
    procedure InitFields;
        constructor Create;
        function isSupported(mediaFileType: string): Boolean; virtual;
        class function getInstance: TImageTypeUtil; static;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TImageTypeUtil.InitFields;
begin
  Self.PNG := 'png';
  Self.JPG := 'jpg';
  Self.GIF := 'gif';
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TImageTypeUtil.Create;
begin
    inherited Create;
    InitFields;
        Self.list.add(TJava.Box(Self.JPG));
        Self.list.add(TJava.Box(Self.GIF));
        Self.list.add(TJava.Box(Self.PNG));
end;
    

function TImageTypeUtil.isSupported(mediaFileType: string): Boolean;
var
  name: string;
  index: Integer;
begin
        mediaFileType := LowerCase(mediaFileType);
        for index := (Self.list.size()) - (1) downto 0 do begin
            name := TJava.UnboxString(TJava.ToObject(Self.list.get(index)));
            if (CompareStr(mediaFileType, name)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

class function TImageTypeUtil.getInstance: TImageTypeUtil;
begin
        Exit(TImageTypeUtil.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TImageTypeUtil.SINGLETON := TImageTypeUtil.Create();
  {AB:END}

end.

