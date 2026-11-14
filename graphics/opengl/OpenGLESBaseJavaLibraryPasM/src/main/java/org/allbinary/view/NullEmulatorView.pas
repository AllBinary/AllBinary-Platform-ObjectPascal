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
// package org.allbinary.view
unit NullEmulatorView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable, MIDlet, EmulatorViewInterface;

type
  {AB:TYPES}
  TNullEmulatorView = class(TInterfacedObject, IEmulatorViewInterface)
  public
    class var NULL_EMULATOR_VIEW: TNullEmulatorView;
    function JavaObject: TObject;
    constructor Create;
        procedure setMidlet(midlet_: TMIDlet); virtual;
        procedure onEmulatorInitComplete(midletActivity: TObject); virtual;
        procedure onSetDisplayable(displayable_: TDisplayable); virtual;
  end;

implementation

{AB:CODE}

function TNullEmulatorView.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullEmulatorView.Create;
begin
  inherited Create;
end;
    

procedure TNullEmulatorView.setMidlet(midlet_: TMIDlet);
begin
end;
    

procedure TNullEmulatorView.onEmulatorInitComplete(midletActivity: TObject);
begin
end;
    

procedure TNullEmulatorView.onSetDisplayable(displayable_: TDisplayable);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullEmulatorView.NULL_EMULATOR_VIEW := TNullEmulatorView.Create();
  {AB:END}

end.

