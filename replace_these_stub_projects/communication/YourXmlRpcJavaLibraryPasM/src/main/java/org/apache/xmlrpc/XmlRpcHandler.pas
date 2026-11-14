// Generated Code Do Not Modify
// package org.apache.xmlrpc
unit XmlRpcHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  IXmlRpcHandler = interface(IJavaObject) ['IXmlRpcHandler']
        function execute(method: string; params: TBasicArrayList): TObject;
  end;
  TXmlRpcHandler = IXmlRpcHandler;

implementation
uses
  BasicArrayListD;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

