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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABKeyEventWrapper, PCGameKey, Input;

type
  {AB:TYPES}
  TPCKeyFactory = class(TObject)
  public
    keyEventWrapper: TABKeyEventWrapper;
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
  Self.keyEventWrapper := TABKeyEventWrapper.getInstance();
  Self.UNKNOWN := TPCGameKey.Create(Self.keyEventWrapper.VK_UNDEFINED, 'UNKNOWN');
  Self.ENTER := TPCGameKey.Create(5, 'Enter');
  Self._A := TPCGameKey.Create(Self.keyEventWrapper.VK_A, 'A');
  Self._B := TPCGameKey.Create(Self.keyEventWrapper.VK_B, 'B');
  Self._C := TPCGameKey.Create(Self.keyEventWrapper.VK_C, 'C');
  Self._D := TPCGameKey.Create(Self.keyEventWrapper.VK_D, 'D');
  Self._E := TPCGameKey.Create(Self.keyEventWrapper.VK_E, 'E');
  Self._F := TPCGameKey.Create(Self.keyEventWrapper.VK_F, 'F');
  Self._G := TPCGameKey.Create(Self.keyEventWrapper.VK_G, 'G');
  Self._H := TPCGameKey.Create(Self.keyEventWrapper.VK_H, 'H');
  Self._I := TPCGameKey.Create(Self.keyEventWrapper.VK_I, 'I');
  Self._J := TPCGameKey.Create(Self.keyEventWrapper.VK_J, 'J');
  Self._K := TPCGameKey.Create(Self.keyEventWrapper.VK_K, 'K');
  Self._L := TPCGameKey.Create(Self.keyEventWrapper.VK_L, 'L');
  Self._M := TPCGameKey.Create(Self.keyEventWrapper.VK_M, 'M');
  Self._N := TPCGameKey.Create(Self.keyEventWrapper.VK_N, 'N');
  Self._O := TPCGameKey.Create(Self.keyEventWrapper.VK_O, 'O');
  Self._P := TPCGameKey.Create(Self.keyEventWrapper.VK_P, 'P');
  Self._Q := TPCGameKey.Create(Self.keyEventWrapper.VK_Q, 'Q');
  Self._R := TPCGameKey.Create(Self.keyEventWrapper.VK_R, 'R');
  Self._S := TPCGameKey.Create(Self.keyEventWrapper.VK_S, 'S');
  Self._T := TPCGameKey.Create(Self.keyEventWrapper.VK_T, 'T');
  Self._U := TPCGameKey.Create(Self.keyEventWrapper.VK_U, 'U');
  Self._V := TPCGameKey.Create(Self.keyEventWrapper.VK_V, 'V');
  Self._W := TPCGameKey.Create(Self.keyEventWrapper.VK_W, 'W');
  Self._X := TPCGameKey.Create(Self.keyEventWrapper.VK_X, 'X');
  Self._Y := TPCGameKey.Create(Self.keyEventWrapper.VK_Y, 'Y');
  Self._Z := TPCGameKey.Create(Self.keyEventWrapper.VK_Z, 'Z');
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
  Self.ZERO := TPCGameKey.Create(Self.keyEventWrapper.VK_0, TCommonPhoneStrings.getInstance().ZERO);
  Self.ONE := TPCGameKey.Create(Self.keyEventWrapper.VK_1, TCommonPhoneStrings.getInstance().ONE);
  Self.TWO := TPCGameKey.Create(Self.keyEventWrapper.VK_2, TCommonPhoneStrings.getInstance().TWO);
  Self.THREE := TPCGameKey.Create(Self.keyEventWrapper.VK_3, TCommonPhoneStrings.getInstance().THREE);
  Self.FOUR := TPCGameKey.Create(Self.keyEventWrapper.VK_4, TCommonPhoneStrings.getInstance().FOUR);
  Self.FIVE := TPCGameKey.Create(Self.keyEventWrapper.VK_5, TCommonPhoneStrings.getInstance().FIVE);
  Self.SIX := TPCGameKey.Create(Self.keyEventWrapper.VK_6, TCommonPhoneStrings.getInstance().SIX);
  Self.SEVEN := TPCGameKey.Create(Self.keyEventWrapper.VK_7, TCommonPhoneStrings.getInstance().SEVEN);
  Self.EIGHT := TPCGameKey.Create(Self.keyEventWrapper.VK_8, TCommonPhoneStrings.getInstance().EIGHT);
  Self.NINE := TPCGameKey.Create(Self.keyEventWrapper.VK_9, TCommonPhoneStrings.getInstance().NINE);
  Self.DPAD_UP := TPCGameKey.Create(Self.keyEventWrapper.VK_UP, TCommonPhoneStrings.getInstance().UP);
  Self.DPAD_DOWN := TPCGameKey.Create(Self.keyEventWrapper.VK_DOWN, TCommonPhoneStrings.getInstance().DOWN);
  Self.DPAD_LEFT := TPCGameKey.Create(Self.keyEventWrapper.VK_LEFT, TCommonPhoneStrings.getInstance().LEFT);
  Self.DPAD_RIGHT := TPCGameKey.Create(Self.keyEventWrapper.VK_RIGHT, TCommonPhoneStrings.getInstance().RIGHT);
  Self.DPAD_UP2 := Self.DPAD_UP;
  Self.DPAD_DOWN2 := Self.DPAD_DOWN;
  Self.DPAD_LEFT2 := Self.DPAD_LEFT;
  Self.DPAD_RIGHT2 := Self.DPAD_RIGHT;
  Self.COMMA := TPCGameKey.Create(Self.keyEventWrapper.VK_COMMA, 'COMMA');
  Self.SPACE := TPCGameKey.Create(Self.keyEventWrapper.VK_SPACE, 'SPACE');
  Self.DEL := TPCGameKey.Create(Self.keyEventWrapper.VK_DELETE, 'DEL');
  Self.STAR := TPCGameKey.Create(42, TCommonPhoneStrings.getInstance().STAR);
  Self.QUESTION := TPCGameKey.Create(47, '?');
  Self.PERIOD := TPCGameKey.Create(Self.keyEventWrapper.VK_PERIOD, TCommonSeps.getInstance().PERIOD);
  Self.ESCAPE := TPCGameKey.Create(Self.keyEventWrapper.VK_ESCAPE, 'Esc');
  Self.BACK_SPACE := TPCGameKey.Create(Self.keyEventWrapper.VK_BACK_SPACE, 'Backspace');
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

