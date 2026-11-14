// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABCustomItemInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics;

type
  {AB:TYPES}
  IABCustomItemInterface = interface(IJavaObject) ['IABCustomItemInterface']
        function getMinimumWidth: Integer;
        function getMinimumHeight: Integer;
        function getLabel: string;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer);
        procedure paintUnselected(graphics_: TGraphics; x: Integer; y: Integer);
  end;
  TABCustomItemInterface = IABCustomItemInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

