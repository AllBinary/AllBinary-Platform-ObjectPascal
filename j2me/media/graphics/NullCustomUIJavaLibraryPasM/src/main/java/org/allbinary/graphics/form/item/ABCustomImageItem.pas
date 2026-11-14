// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABCustomImageItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, ABCustomItem;

type
  {AB:TYPES}
  TABCustomImageItem = class(TABCustomItem)
  public
    yOffset: Integer;
    procedure InitFields;
        constructor Create(label_: string; image_: TImage; layout: Integer; altText: string; basicColor_: TBasicColor; yOffset: Integer);
        function getImage: TImage; virtual;
  end;

implementation
uses
  NullImage;


{AB:CODE}

procedure TABCustomImageItem.InitFields;
begin
  Self.yOffset := 0;
end;
    

constructor TABCustomImageItem.Create(label_: string; image_: TImage; layout: Integer; altText: string; basicColor_: TBasicColor; yOffset: Integer);
begin
        inherited Create(label_, basicColor_, basicColor_);
        InitFields;
end;
    

function TABCustomImageItem.getImage: TImage;
begin
        Exit(TNullImage.NULL_IMAGE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

