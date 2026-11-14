{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.apache.xmlrpc
unit NullXmlRpcHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, XmlRpcHandler;

type
  {AB:TYPES}
  TNullXmlRpcHandler = class(TInterfacedObject, IXmlRpcHandler)
  public
    class var NULL_XML_RPC_HANDLER: TNullXmlRpcHandler;
    function JavaObject: TObject;
    constructor Create;
        function execute(method: string; params: TBasicArrayList): TObject; virtual;
  end;

implementation
uses
  BasicArrayListD, NullUtil;


{AB:CODE}

function TNullXmlRpcHandler.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullXmlRpcHandler.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TNullXmlRpcHandler.execute(method: string; params: TBasicArrayList): TObject;
begin
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;

initialization
  {AB:INITIALIZATION}
  TNullXmlRpcHandler.NULL_XML_RPC_HANDLER := TNullXmlRpcHandler.Create();
  {AB:END}

end.

