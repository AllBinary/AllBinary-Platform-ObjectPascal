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
// package org.allbinary.input.motion.gesture.configuration
unit MotionGestureConfigurationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureConfiguration;

type
  {AB:TYPES}
  TMotionGestureConfigurationFactory = class(TObject)
  public
    class var config: TMotionGestureConfiguration;
        constructor Create;
        class function getInstance: TMotionGestureConfiguration; static;
  end;

implementation

{AB:CODE}
    

constructor TMotionGestureConfigurationFactory.Create;
begin
    inherited Create;
end;
    

class function TMotionGestureConfigurationFactory.getInstance: TMotionGestureConfiguration;
begin
        Exit(TMotionGestureConfigurationFactory.config);
end;

initialization
  {AB:INITIALIZATION}
  TMotionGestureConfigurationFactory.config := TMotionGestureConfiguration.Create();
  {AB:END}

end.

