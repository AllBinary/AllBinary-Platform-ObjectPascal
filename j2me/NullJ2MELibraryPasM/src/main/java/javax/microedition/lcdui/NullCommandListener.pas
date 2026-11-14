// Generated Code Do Not Modify
// package javax.microedition.lcdui
unit NullCommandListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, Displayable, CommandListener;

type
  {AB:TYPES}
  TNullCommandListener = class(TInterfacedObject, ICommandListener)
  public
    class var NULL_COMMAND_LISTENER: TNullCommandListener;
    function JavaObject: TObject;
    constructor Create;
        procedure commandAction(c: TCommand; d: TDisplayable); virtual;
  end;

implementation

{AB:CODE}

function TNullCommandListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullCommandListener.Create;
begin
  inherited Create;
end;
    

procedure TNullCommandListener.commandAction(c: TCommand; d: TDisplayable);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullCommandListener.NULL_COMMAND_LISTENER := TNullCommandListener.Create();
  {AB:END}

end.

