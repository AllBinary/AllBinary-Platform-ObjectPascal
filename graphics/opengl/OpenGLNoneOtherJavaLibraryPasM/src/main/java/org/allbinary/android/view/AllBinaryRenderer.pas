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
// package org.allbinary.android.view
unit AllBinaryRenderer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAllBinaryRenderer = class(TObject)
  public
    class var instance: TAllBinaryRenderer;
    constructor Create;
        class function getInstance: TAllBinaryRenderer; static;
        procedure setRunnable(runnable: IRunnable); virtual;
        procedure clearRunnable; virtual;
  end;

implementation

{AB:CODE}

constructor TAllBinaryRenderer.Create;
begin
  inherited Create;
end;
    

class function TAllBinaryRenderer.getInstance: TAllBinaryRenderer;
begin
        Exit(TAllBinaryRenderer.instance);
end;
    

procedure TAllBinaryRenderer.setRunnable(runnable: IRunnable);
begin
end;
    

procedure TAllBinaryRenderer.clearRunnable;
begin
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryRenderer.instance := TAllBinaryRenderer.Create();
  {AB:END}

end.

