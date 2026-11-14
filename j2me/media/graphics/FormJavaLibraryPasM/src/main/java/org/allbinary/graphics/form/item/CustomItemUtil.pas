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
// package org.allbinary.graphics.form.item
unit CustomItemUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem;

type
  {AB:TYPES}
  TCustomItemUtil = class(TObject)
  public
    CUSTOM_ITEM_ARRAY: TArray<TABCustomItem>;
    class var instance: TCustomItemUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCustomItemUtil; static;
  end;

implementation

{AB:CODE}

procedure TCustomItemUtil.InitFields;
begin
  Self.CUSTOM_ITEM_ARRAY := nil;
end;

constructor TCustomItemUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCustomItemUtil.getInstance: TCustomItemUtil;
begin
        Exit(TCustomItemUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCustomItemUtil.instance := TCustomItemUtil.Create();
  {AB:END}

end.

