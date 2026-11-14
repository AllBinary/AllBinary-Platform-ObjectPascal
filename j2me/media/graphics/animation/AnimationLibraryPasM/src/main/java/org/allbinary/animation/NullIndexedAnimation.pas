// Generated Code Do Not Modify
// package org.allbinary.animation
unit NullIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationBehavior, IndexedAnimation;

type
  {AB:TYPES}
  TNullIndexedAnimation = class(TIndexedAnimation)
  public
        constructor Create(animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
  end;

implementation

{AB:CODE}
    

constructor TNullIndexedAnimation.Create(animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
end;
    

// throws Exception
function TNullIndexedAnimation.getAnimationSize: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

