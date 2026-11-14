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
// package org.allbinary.game.displayable.canvas
unit TitleResource;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTitleResource = class(TObject)
  public
    class var RESOURCE_TITLE: string;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor TTitleResource.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TTitleResource.RESOURCE_TITLE := '/title_sprite_100_by_100.png';
  {AB:END}

end.

