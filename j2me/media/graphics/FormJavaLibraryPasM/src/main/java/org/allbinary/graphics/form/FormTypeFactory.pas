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
// package org.allbinary.graphics.form
unit FormTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FormType;

type
  {AB:TYPES}
  TFormTypeFactory = class(TObject)
  public
    UNK: string;
    NULL_FORM_TYPE: TFormType;
    TEMP_HORIZONTAL_FORM: TFormType;
    HORIZONTAL_FORM: TFormType;
    VERTICAL_CENTER_FORM: TFormType;
    class var instance: TFormTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFormTypeFactory; static;
        function getFormType: TFormType; virtual;
  end;

implementation
uses
  DisplayInfoSingleton, StringUtil;


{AB:CODE}

procedure TFormTypeFactory.InitFields;
begin
  Self.UNK := 'Unknown FormType';
  Self.NULL_FORM_TYPE := TFormType.Create(TStringUtil.getInstance().NULL_STRING);
  Self.TEMP_HORIZONTAL_FORM := TFormType.Create('TempHorizontal');
  Self.HORIZONTAL_FORM := TFormType.Create('Horizontal');
  Self.VERTICAL_CENTER_FORM := TFormType.Create('Vertical');
end;

constructor TFormTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFormTypeFactory.getInstance: TFormTypeFactory;
begin
        Exit(TFormTypeFactory.instance);
end;
    

function TFormTypeFactory.getFormType: TFormType;
var
  displayInfo: TDisplayInfoSingleton;
  formType_: TFormType;
begin
        displayInfo := TDisplayInfoSingleton.getInstance();
        
        if displayInfo.isPortrait() then begin
            formType_ := Self.VERTICAL_CENTER_FORM;
        end else begin
            formType_ := Self.HORIZONTAL_FORM;
        end;
        Exit(formType_);
end;

initialization
  {AB:INITIALIZATION}
  TFormTypeFactory.instance := TFormTypeFactory.Create();
  {AB:END}

end.

