{

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
unit AboutPaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Paintable;

type
  {AB:TYPES}
  TAboutPaintableFactory = class(TObject)
  public
    paintableArray: TArray<TPaintable>;
    class var instance: TAboutPaintableFactory;
    procedure InitFields;
        class function getInstance: TAboutPaintableFactory; static;
        constructor Create;
  end;

implementation
uses
  AboutPaintable, NullPaintable, StringUtil;


{AB:CODE}

procedure TAboutPaintableFactory.InitFields;
begin
  Self.paintableArray := TArray<TPaintable>.Create(TNullPaintable.getInstance());
end;
    

class function TAboutPaintableFactory.getInstance: TAboutPaintableFactory;
begin
        Exit(TAboutPaintableFactory.instance);
end;
    

constructor TAboutPaintableFactory.Create;
var
  INFO: TArray<string>;
  DEVELOPERS: TArray<string>;
begin
    inherited Create;
    InitFields;
        INFO := TArray<string>.Create('Built with the', 'AllBinary Platform', TStringUtil.getInstance().EMPTY_STRING, 'Comments or Questions:', 'support@allbinary.com');
        DEVELOPERS := TArray<string>.Create('Developed By:', 'Travis Berthelot');
        Self.paintableArray := TAboutPaintable.getInstance(INFO, DEVELOPERS).getPaintableArrayInstance();
end;

initialization
  {AB:INITIALIZATION}
  TAboutPaintableFactory.instance := TAboutPaintableFactory.Create();
  {AB:END}

end.

