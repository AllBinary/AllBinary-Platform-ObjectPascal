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
unit TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseResourceAnimationInterfaceFactoryInterfaceFactory, ImageCache;

type
  {AB:TYPES}
  TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = class(TBaseResourceAnimationInterfaceFactoryInterfaceFactory)
  public
        class function createFactory: TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; static;
        constructor Create(name: string);
        procedure init(level: Integer); override;
        procedure initImageCache(imageCache_: TImageCache; level: Integer); override;
        function isLoadingLevel(level: Integer): Boolean; override;
        function isFeature: Boolean; override;
  end;

implementation
uses
  Features, ResourceLoadingLevelFactory, OpenGLFeatureFactory, ImageCacheFactory, StdUtil;


{AB:CODE}
    

class function TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.createFactory: TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;
begin
        Exit(TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.Create('TouchButton Animations'));
end;
    

constructor TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.Create(name: string);
begin
        inherited Create(name, TStdUtil.getInstance().createHashtable(), TStdUtil.getInstance().createHashtable(), TStdUtil.getInstance().createHashtable());
end;
    

// throws Exception
procedure TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.init(level: Integer);
begin
        Self.initImageCache(TImageCacheFactory.getInstance(), level);
end;
    

// throws Exception
procedure TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.initImageCache(imageCache_: TImageCache; level: Integer);
begin
        if Self.isInitialized() then begin
            Exit;
        end;
        inherited init(level);
end;
    

function TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.isLoadingLevel(level: Integer): Boolean;
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if (level) = (resourceLoadingLevelFactory_.LOAD_TOUCH.getLevel()) then begin
            Exit(True);
        end else begin
            Exit(inherited isLoadingLevel(level));
        end;
end;
    

function TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.isFeature: Boolean;
begin
        if not (TFeatures.getInstance().isDefault(TOpenGLFeatureFactory.getInstance().OPENGL)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

