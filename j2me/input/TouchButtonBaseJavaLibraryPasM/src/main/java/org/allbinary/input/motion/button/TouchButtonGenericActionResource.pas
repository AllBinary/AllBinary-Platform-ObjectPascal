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
// package org.allbinary.input.motion.button
unit TouchButtonGenericActionResource;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonResource;

type
  {AB:TYPES}
  TTouchButtonGenericActionResource = class(TTouchButtonResource)
  public
    class var instance: TTouchButtonResource;
        class function getInstance: TTouchButtonResource; static;
        constructor Create;
  end;

implementation

{AB:CODE}
    

class function TTouchButtonGenericActionResource.getInstance: TTouchButtonResource;
begin
        Exit(TTouchButtonGenericActionResource.instance);
end;
    

constructor TTouchButtonGenericActionResource.Create;
begin
        inherited Create('/touch_button_generic_action_64_by_64.png', '/touch_button_generic_action_hint_64_by_64.png');
end;

initialization
  {AB:INITIALIZATION}
  TTouchButtonGenericActionResource.instance := TTouchButtonGenericActionResource.Create();
  {AB:END}

end.

