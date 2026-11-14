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
// package org.allbinary.animation.caption
unit CaptionResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCaptionResources = class(TObject)
  public
    class var RESOURCE: string;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor TCaptionResources.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TCaptionResources.RESOURCE := '/character_message_bubbled_box.png';
  {AB:END}

end.

