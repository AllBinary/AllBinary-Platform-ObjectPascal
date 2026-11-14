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
// package org.allbinary.data.tree.dom
unit DomData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TDomData = class(TObject)
  public
    class var ID: string;
    class var CHILD: string;
    class var NAME: string;
    class var VALUE: string;
    class var INDEX: string;
        constructor Create;
  end;

implementation

{AB:CODE}
    

constructor TDomData.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TDomData.ID := 'id';
  TDomData.CHILD := 'child';
  TDomData.NAME := 'name';
  TDomData.VALUE := 'value';
  TDomData.INDEX := 'index';
  {AB:END}

end.

