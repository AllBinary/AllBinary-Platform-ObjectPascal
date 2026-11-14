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
// package org.allbinary.graphics.form
unit ItemIndexDx;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem;

type
  {AB:TYPES}
  TItemIndexDx = class(TObject)
  public
    class var instance: TItemIndexDx;
    constructor Create;
        class function getInstance: TItemIndexDx; static;
        function getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

constructor TItemIndexDx.Create;
begin
  inherited Create;
end;
    

class function TItemIndexDx.getInstance: TItemIndexDx;
begin
        Exit(TItemIndexDx.instance);
end;
    

// throws Exception
function TItemIndexDx.getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  TItemIndexDx.instance := TItemIndexDx.Create();
  {AB:END}

end.

