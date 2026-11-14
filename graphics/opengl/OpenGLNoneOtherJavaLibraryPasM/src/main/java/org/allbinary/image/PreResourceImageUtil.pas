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
unit PreResourceImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, Image;

type
  {AB:TYPES}
  TPreResourceImageUtil = class(TObject)
  public
    class var instance: TPreResourceImageUtil;
    constructor Create;
        class function getInstance: TPreResourceImageUtil; static;
        function encapsulate(image_: TImage): TImage; virtual;
        procedure updateGL(gl_: IGL; image_: TImage); virtual;
        procedure update(graphics_: TGraphics; image_: TImage); virtual;
  end;

implementation

{AB:CODE}

constructor TPreResourceImageUtil.Create;
begin
  inherited Create;
end;
    

class function TPreResourceImageUtil.getInstance: TPreResourceImageUtil;
begin
        Exit(TPreResourceImageUtil.instance);
end;
    

function TPreResourceImageUtil.encapsulate(image_: TImage): TImage;
begin
        Exit(image_);
end;
    

procedure TPreResourceImageUtil.updateGL(gl_: IGL; image_: TImage);
begin
end;
    

procedure TPreResourceImageUtil.update(graphics_: TGraphics; image_: TImage);
begin
end;

initialization
  {AB:INITIALIZATION}
  TPreResourceImageUtil.instance := TPreResourceImageUtil.Create();
  {AB:END}

end.

