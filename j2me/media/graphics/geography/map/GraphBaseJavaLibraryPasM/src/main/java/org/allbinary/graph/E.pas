// Generated Code Do Not Modify
// package org.allbinary.graph
unit E;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TE = class(TObject)
  public
    class var e: TE;
    constructor Create;
        function newInstance: TE; virtual;
  end;

implementation

{AB:CODE}

constructor TE.Create;
begin
  inherited Create;
end;
    

function TE.newInstance: TE;
begin
        Exit(TE.e);
end;

initialization
  {AB:INITIALIZATION}
  TE.e := TE.Create();
  {AB:END}

end.

