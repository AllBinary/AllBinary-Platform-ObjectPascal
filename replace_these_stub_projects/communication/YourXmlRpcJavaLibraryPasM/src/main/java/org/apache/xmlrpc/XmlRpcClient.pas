// Generated Code Do Not Modify
// package org.apache.xmlrpc
unit XmlRpcClient;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CryptInterface, XmlRpcHandler;

type
  {AB:TYPES}
  TXmlRpcClient = class(TInterfacedObject, IXmlRpcHandler)
  public
    url: TURL;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(url_: string);
        function getURL: TURL; virtual;
        procedure setBasicAuthentication(user: string; password: string); virtual;
        function execute(method: string; params: TBasicArrayList): TObject; virtual;
        function executeWithCrypt(method: string; params: TBasicArrayList; cryptInterface_: ICryptInterface): TObject; virtual;
  end;

implementation
uses
  BasicArrayListD, NullUtil;


{AB:CODE}

procedure TXmlRpcClient.InitFields;
begin
  
end;

function TXmlRpcClient.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TXmlRpcClient.Create(url_: string);
begin
    inherited Create;
    InitFields;
        Self.url := TURL.Create(url_);
end;
    

function TXmlRpcClient.getURL: TURL;
begin
        Exit(Self.url);
end;
    

procedure TXmlRpcClient.setBasicAuthentication(user: string; password: string);
begin
end;
    

// throws XmlRpcException, IOException
function TXmlRpcClient.execute(method: string; params: TBasicArrayList): TObject;
begin
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

// throws XmlRpcException, IOException
function TXmlRpcClient.executeWithCrypt(method: string; params: TBasicArrayList; cryptInterface_: ICryptInterface): TObject;
begin
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

