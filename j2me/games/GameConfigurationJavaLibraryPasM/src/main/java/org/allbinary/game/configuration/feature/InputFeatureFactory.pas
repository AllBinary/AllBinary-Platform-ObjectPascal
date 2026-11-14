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
// package org.allbinary.game.configuration.feature
unit InputFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputFeature;

type
  {AB:TYPES}
  TInputFeatureFactory = class(TObject)
  public
    REMOVE_DUPLICATE_KEY_PRESSES: TInputFeature;
    INPUT_MAPPING: TInputFeature;
    MULTI_KEY_PRESS: TInputFeature;
    SINGLE_KEY_REPEAT_PRESS: TInputFeature;
    SINGLE_KEY_PRESS: TInputFeature;
    class var instance: TInputFeatureFactory;
    procedure InitFields;
        class function getInstance: TInputFeatureFactory; static;
        constructor Create;
        function isSingleKeyProcessing: Boolean; virtual;
  end;

implementation
uses
  Features;


{AB:CODE}

procedure TInputFeatureFactory.InitFields;
begin
  Self.REMOVE_DUPLICATE_KEY_PRESSES := TInputFeature.Create('Remove Duplicate Key Presses');
  Self.INPUT_MAPPING := TInputFeature.Create('Input Mapping');
  Self.MULTI_KEY_PRESS := TInputFeature.Create('Multi Key Press');
  Self.SINGLE_KEY_REPEAT_PRESS := TInputFeature.Create('Single Key Repeat Press');
  Self.SINGLE_KEY_PRESS := TInputFeature.Create('Single Key Press');
end;
    

class function TInputFeatureFactory.getInstance: TInputFeatureFactory;
begin
        Exit(TInputFeatureFactory.instance);
end;
    

constructor TInputFeatureFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInputFeatureFactory.isSingleKeyProcessing: Boolean;
var
  features_: TFeatures;
begin
        features_ := TFeatures.getInstance();
        if (features_.isFeature(Self.SINGLE_KEY_REPEAT_PRESS)) or (features_.isFeature(Self.SINGLE_KEY_PRESS)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInputFeatureFactory.instance := TInputFeatureFactory.Create();
  {AB:END}

end.

