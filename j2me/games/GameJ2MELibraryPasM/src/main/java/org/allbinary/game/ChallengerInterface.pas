{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.game
unit ChallengerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  IChallengerInterface = interface(IJavaObject) ['IChallengerInterface']
        procedure setWinner(isWinner: Boolean);
  end;
  TChallengerInterface = IChallengerInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

