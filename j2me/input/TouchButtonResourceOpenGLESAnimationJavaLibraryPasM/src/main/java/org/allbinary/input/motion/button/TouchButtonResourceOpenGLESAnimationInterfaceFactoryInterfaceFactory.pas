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
unit TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;

type
  {AB:TYPES}
  TTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory = class(TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)
  public
        constructor Create;
        procedure init(level: Integer); override;
        function isFeature: Boolean; override;
  end;

implementation
uses
  Features, OpenGLFeatureFactory, OpenGLImageCacheFactory;


{AB:CODE}
    

constructor TTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.Create;
begin
        inherited Create('OpenGL TouchButton Animations');
end;
    

// throws Exception
procedure TTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.init(level: Integer);
begin
        inherited initImageCache(TOpenGLImageCacheFactory.getInstance(), level);
end;
    

function TTouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.isFeature: Boolean;
begin
        if TFeatures.getInstance().isDefault(TOpenGLFeatureFactory.getInstance().OPENGL) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

