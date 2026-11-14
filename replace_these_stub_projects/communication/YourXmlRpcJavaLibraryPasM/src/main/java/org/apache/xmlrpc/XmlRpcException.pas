// Generated Code Do Not Modify
// package org.apache.xmlrpc
unit XmlRpcException;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TXmlRpcException = class(SysUtils.Exception)
  public
        constructor Create(code: Integer; message: string);
  end;

implementation

{AB:CODE}
    

constructor TXmlRpcException.Create(code: Integer; message: string);
begin
        inherited Create(message);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

