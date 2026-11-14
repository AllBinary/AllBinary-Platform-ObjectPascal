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
// package org.allbinary.graphics
unit ResizableEmptyListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ResizableListenerInterface;

type
  {AB:TYPES}
  TResizableEmptyListener = class(TInterfacedObject, IResizableListenerInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onResizable(isResizable: Boolean); virtual;
  end;

implementation

{AB:CODE}

function TResizableEmptyListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TResizableEmptyListener.Create;
begin
  inherited Create;
end;
    

procedure TResizableEmptyListener.onResizable(isResizable: Boolean);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

