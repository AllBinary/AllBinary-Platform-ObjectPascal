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
// package org.allbinary.image
unit PaintableToImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PaintableInterface;

type
  {AB:TYPES}
  TPaintableToImageUtil = class(TObject)
  public
    class var instance: TPaintableToImageUtil;
    constructor Create;
        class function getImage(paintableInterface_: IPaintableInterface; width: Integer; height: Integer): TImage; static;
  end;

implementation
uses
  GameFeatureImageCacheFactory, Graphics;


{AB:CODE}

constructor TPaintableToImageUtil.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TPaintableToImageUtil.getImage(paintableInterface_: IPaintableInterface; width: Integer; height: Integer): TImage;
var
  image_: TImage;
  graphics_: TGraphics;
begin
        image_ := TGameFeatureImageCacheFactory.getInstance().get(TJava.ToObject(TPaintableToImageUtil.instance).ClassType.ClassName, width, height);
        graphics_ := image_.getGraphics();
        paintableInterface_.paint(graphics_);
        Exit(image_);
end;

initialization
  {AB:INITIALIZATION}
  TPaintableToImageUtil.instance := TPaintableToImageUtil.Create();
  {AB:END}

end.

