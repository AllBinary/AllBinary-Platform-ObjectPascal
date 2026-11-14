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
unit CommandCurrentSelectionFormFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, BasicColor, ABCustomItem, ScrollSelectionForm, FormType;

type
  {AB:TYPES}
  TCommandCurrentSelectionFormFactory = class(TObject)
  public
    constructor Create;
        class function getInstance(title: string; items: TArray<TABCustomItem>; rectangle_: TRectangle; formType_: TFormType; border: Integer; moveForSmallScreen: Boolean; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TScrollSelectionForm; static;
  end;

implementation
uses
  ScrollSelectionFormNoneFactory, CommandCurrentSelectionForm, Features, TouchFeatureFactory;


{AB:CODE}

constructor TCommandCurrentSelectionFormFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TCommandCurrentSelectionFormFactory.getInstance(title: string; items: TArray<TABCustomItem>; rectangle_: TRectangle; formType_: TFormType; border: Integer; moveForSmallScreen: Boolean; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TScrollSelectionForm;
var
  scrollSelectionForm_: TScrollSelectionForm;
begin
        if TFeatures.getInstance().isFeature(TTouchFeatureFactory.getInstance().TOUCH_ENABLED) then begin
            scrollSelectionForm_ := TCommandCurrentSelectionForm.Create(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
            scrollSelectionForm_.init(rectangle_, formType_);
            Exit(scrollSelectionForm_);
        end else begin
            Exit(TScrollSelectionFormNoneFactory.getInstance());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

