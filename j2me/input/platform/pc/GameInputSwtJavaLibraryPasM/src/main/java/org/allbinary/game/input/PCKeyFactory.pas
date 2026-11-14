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
// package org.allbinary.game.input
unit PCKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PCGameKey, Input;

type
  {AB:TYPES}
  TPCKeyFactory = class(TObject)
  public
    UNKNOWN: TPCGameKey;
    ENTER: TPCGameKey;
    _A: TPCGameKey;
    _B: TPCGameKey;
    _C: TPCGameKey;
    _D: TPCGameKey;
    _E: TPCGameKey;
    _F: TPCGameKey;
    _G: TPCGameKey;
    _H: TPCGameKey;
    _I: TPCGameKey;
    _J: TPCGameKey;
    _K: TPCGameKey;
    _L: TPCGameKey;
    _M: TPCGameKey;
    _N: TPCGameKey;
    _O: TPCGameKey;
    _P: TPCGameKey;
    _Q: TPCGameKey;
    _R: TPCGameKey;
    _S: TPCGameKey;
    _T: TPCGameKey;
    _U: TPCGameKey;
    _V: TPCGameKey;
    _W: TPCGameKey;
    _X: TPCGameKey;
    _Y: TPCGameKey;
    _Z: TPCGameKey;
    a: TPCGameKey;
    b: TPCGameKey;
    c: TPCGameKey;
    d: TPCGameKey;
    e: TPCGameKey;
    f: TPCGameKey;
    g: TPCGameKey;
    h: TPCGameKey;
    i: TPCGameKey;
    j: TPCGameKey;
    k: TPCGameKey;
    l: TPCGameKey;
    m: TPCGameKey;
    n: TPCGameKey;
    o: TPCGameKey;
    p: TPCGameKey;
    q: TPCGameKey;
    r: TPCGameKey;
    s: TPCGameKey;
    t: TPCGameKey;
    u: TPCGameKey;
    v: TPCGameKey;
    w: TPCGameKey;
    x: TPCGameKey;
    y: TPCGameKey;
    z: TPCGameKey;
    ZERO: TPCGameKey;
    ONE: TPCGameKey;
    TWO: TPCGameKey;
    THREE: TPCGameKey;
    FOUR: TPCGameKey;
    FIVE: TPCGameKey;
    SIX: TPCGameKey;
    SEVEN: TPCGameKey;
    EIGHT: TPCGameKey;
    NINE: TPCGameKey;
    DPAD_UP: TPCGameKey;
    DPAD_DOWN: TPCGameKey;
    DPAD_LEFT: TPCGameKey;
    DPAD_RIGHT: TPCGameKey;
    DPAD_UP2: TPCGameKey;
    DPAD_DOWN2: TPCGameKey;
    DPAD_LEFT2: TPCGameKey;
    DPAD_RIGHT2: TPCGameKey;
    COMMA: TPCGameKey;
    SPACE: TPCGameKey;
    DEL: TPCGameKey;
    STAR: TPCGameKey;
    QUESTION: TPCGameKey;
    PERIOD: TPCGameKey;
    ESCAPE: TPCGameKey;
    BACK_SPACE: TPCGameKey;
    class var SINGLETON: TPCKeyFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPCKeyFactory; static;
        function isSubmission(input_: TInput): Boolean; virtual;
        function isDelete(input_: TInput): Boolean; virtual;
        function isBackSpace(input_: TInput): Boolean; virtual;
        function isUp(input_: TInput): Boolean; virtual;
        function isDown(input_: TInput): Boolean; virtual;
        function isLeft(input_: TInput): Boolean; virtual;
        function isRight(input_: TInput): Boolean; virtual;
        function isEnter(input_: TInput): Boolean; virtual;
  end;

implementation
uses
  PositionStrings, CommonPhoneStrings, CommonSeps;


{AB:CODE}

procedure TPCKeyFactory.InitFields;
begin
  Self.UNKNOWN := TPCGameKey.Create(254, 'UNKNOWN');
  Self.ENTER := TPCGameKey.Create(13, 'Enter');
  Self._A := TPCGameKey.Create(65, 'A');
  Self._B := TPCGameKey.Create(66, 'B');
  Self._C := TPCGameKey.Create(67, 'C');
  Self._D := TPCGameKey.Create(68, 'D');
  Self._E := TPCGameKey.Create(69, 'E');
  Self._F := TPCGameKey.Create(70, 'F');
  Self._G := TPCGameKey.Create(71, 'G');
  Self._H := TPCGameKey.Create(72, 'H');
  Self._I := TPCGameKey.Create(73, 'I');
  Self._J := TPCGameKey.Create(74, 'J');
  Self._K := TPCGameKey.Create(75, 'K');
  Self._L := TPCGameKey.Create(76, 'L');
  Self._M := TPCGameKey.Create(77, 'M');
  Self._N := TPCGameKey.Create(78, 'N');
  Self._O := TPCGameKey.Create(79, 'O');
  Self._P := TPCGameKey.Create(80, 'P');
  Self._Q := TPCGameKey.Create(81, 'Q');
  Self._R := TPCGameKey.Create(82, 'R');
  Self._S := TPCGameKey.Create(83, 'S');
  Self._T := TPCGameKey.Create(84, 'T');
  Self._U := TPCGameKey.Create(85, 'U');
  Self._V := TPCGameKey.Create(86, 'V');
  Self._W := TPCGameKey.Create(87, 'W');
  Self._X := TPCGameKey.Create(88, 'X');
  Self._Y := TPCGameKey.Create(89, 'Y');
  Self._Z := TPCGameKey.Create(90, 'Z');
  Self.a := TPCGameKey.Create(97, 'a');
  Self.b := TPCGameKey.Create(98, 'b');
  Self.c := TPCGameKey.Create(99, 'c');
  Self.d := TPCGameKey.Create(100, 'd');
  Self.e := TPCGameKey.Create(101, 'e');
  Self.f := TPCGameKey.Create(102, 'f');
  Self.g := TPCGameKey.Create(103, 'g');
  Self.h := TPCGameKey.Create(104, 'h');
  Self.i := TPCGameKey.Create(105, 'i');
  Self.j := TPCGameKey.Create(106, 'j');
  Self.k := TPCGameKey.Create(107, 'k');
  Self.l := TPCGameKey.Create(108, 'l');
  Self.m := TPCGameKey.Create(109, 'm');
  Self.n := TPCGameKey.Create(110, 'n');
  Self.o := TPCGameKey.Create(111, 'o');
  Self.p := TPCGameKey.Create(112, 'p');
  Self.q := TPCGameKey.Create(113, 'q');
  Self.r := TPCGameKey.Create(114, 'r');
  Self.s := TPCGameKey.Create(115, 's');
  Self.t := TPCGameKey.Create(116, 't');
  Self.u := TPCGameKey.Create(117, 'u');
  Self.v := TPCGameKey.Create(118, 'v');
  Self.w := TPCGameKey.Create(119, 'w');
  Self.x := TPCGameKey.Create(120, TPositionStrings.getInstance().X);
  Self.y := TPCGameKey.Create(121, TPositionStrings.getInstance().Y);
  Self.z := TPCGameKey.Create(122, 'z');
  Self.ZERO := TPCGameKey.Create(48, TCommonPhoneStrings.getInstance().ZERO);
  Self.ONE := TPCGameKey.Create(49, TCommonPhoneStrings.getInstance().ONE);
  Self.TWO := TPCGameKey.Create(50, TCommonPhoneStrings.getInstance().TWO);
  Self.THREE := TPCGameKey.Create(51, TCommonPhoneStrings.getInstance().THREE);
  Self.FOUR := TPCGameKey.Create(52, TCommonPhoneStrings.getInstance().FOUR);
  Self.FIVE := TPCGameKey.Create(53, TCommonPhoneStrings.getInstance().FIVE);
  Self.SIX := TPCGameKey.Create(54, TCommonPhoneStrings.getInstance().SIX);
  Self.SEVEN := TPCGameKey.Create(55, TCommonPhoneStrings.getInstance().SEVEN);
  Self.EIGHT := TPCGameKey.Create(56, TCommonPhoneStrings.getInstance().EIGHT);
  Self.NINE := TPCGameKey.Create(57, TCommonPhoneStrings.getInstance().NINE);
  Self.DPAD_UP := TPCGameKey.Create(38, TCommonPhoneStrings.getInstance().UP);
  Self.DPAD_DOWN := TPCGameKey.Create(40, TCommonPhoneStrings.getInstance().DOWN);
  Self.DPAD_LEFT := TPCGameKey.Create(37, TCommonPhoneStrings.getInstance().LEFT);
  Self.DPAD_RIGHT := TPCGameKey.Create(39, TCommonPhoneStrings.getInstance().RIGHT);
  Self.DPAD_UP2 := Self.DPAD_UP;
  Self.DPAD_DOWN2 := Self.DPAD_DOWN;
  Self.DPAD_LEFT2 := Self.DPAD_LEFT;
  Self.DPAD_RIGHT2 := Self.DPAD_RIGHT;
  Self.COMMA := TPCGameKey.Create(44, 'COMMA');
  Self.SPACE := TPCGameKey.Create(32, 'SPACE');
  Self.DEL := TPCGameKey.Create(46, 'DEL');
  Self.STAR := TPCGameKey.Create(42, TCommonPhoneStrings.getInstance().STAR);
  Self.QUESTION := TPCGameKey.Create(47, '?');
  Self.PERIOD := TPCGameKey.Create(46, TCommonSeps.getInstance().PERIOD);
  Self.ESCAPE := TPCGameKey.Create(27, 'Esc');
  Self.BACK_SPACE := TPCGameKey.Create(8, 'Backspace');
end;

constructor TPCKeyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPCKeyFactory.getInstance: TPCKeyFactory;
begin
        Exit(TPCKeyFactory.SINGLETON);
end;
    

function TPCKeyFactory.isSubmission(input_: TInput): Boolean;
begin
        if (input_) = (Self.ENTER) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isDelete(input_: TInput): Boolean;
begin
        if (input_) = (Self.DEL) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isBackSpace(input_: TInput): Boolean;
begin
        if (input_) = (Self.BACK_SPACE) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isUp(input_: TInput): Boolean;
begin
        if ((input_) = (Self.DPAD_UP)) or ((input_) = (Self.DPAD_UP2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isDown(input_: TInput): Boolean;
begin
        if ((input_) = (Self.DPAD_DOWN)) or ((input_) = (Self.DPAD_DOWN2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isLeft(input_: TInput): Boolean;
begin
        if ((input_) = (Self.DPAD_LEFT)) or ((input_) = (Self.DPAD_LEFT2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isRight(input_: TInput): Boolean;
begin
        if ((input_) = (Self.DPAD_RIGHT)) or ((input_) = (Self.DPAD_RIGHT2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isEnter(input_: TInput): Boolean;
begin
        if (input_) = (Self.ENTER) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TPCKeyFactory.SINGLETON := TPCKeyFactory.Create();
  {AB:END}

end.

