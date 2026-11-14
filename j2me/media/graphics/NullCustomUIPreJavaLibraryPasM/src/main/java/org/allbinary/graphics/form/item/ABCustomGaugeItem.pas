// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABCustomGaugeItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, ABCustomItem;

type
  {AB:TYPES}
  TABCustomGaugeItem = class(TABCustomItem)
  public
    class var NULL_GAUGE_ITEM: TABCustomGaugeItem;
        constructor Create(label_: string; maxValue: Integer; initialValue: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
  end;

implementation
uses
  BasicColorFactory, StringUtil;


{AB:CODE}
    

constructor TABCustomGaugeItem.Create(label_: string; maxValue: Integer; initialValue: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(label_, backgroundBasicColor, foregroundBasicColor);
end;

initialization
  {AB:INITIALIZATION}
  TABCustomGaugeItem.NULL_GAUGE_ITEM := TABCustomGaugeItem.Create(TStringUtil.getInstance().EMPTY_STRING, 1, 0, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
  {AB:END}

end.

