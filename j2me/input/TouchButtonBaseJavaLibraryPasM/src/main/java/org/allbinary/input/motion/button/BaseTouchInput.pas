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
unit BaseTouchInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, BasicArrayList, BasicArrayListUtil;

type
  {AB:TYPES}
  TBaseTouchInput = class(TObject)
  public
    commonStrings: TCommonStrings;
    basicArrayListUtil: TBasicArrayListUtil;
    procedure InitFields;
        constructor Create;
        function getList: TBasicArrayList; virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TBaseTouchInput.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TBaseTouchInput.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TBaseTouchInput.getList: TBasicArrayList;
begin
        Exit(Self.basicArrayListUtil.getImmutableInstance());
end;
    

function TBaseTouchInput.toString: string;
begin
        Exit(Self.ClassType.ClassName);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

