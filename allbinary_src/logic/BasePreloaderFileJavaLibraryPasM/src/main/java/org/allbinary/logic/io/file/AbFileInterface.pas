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
// package org.allbinary.logic.io.file
unit AbFileInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  IAbFileInterface = interface(IJavaObject) ['IAbFileInterface']
        function canRead: Boolean;
        function canWrite: Boolean;
        function createNewFile: Boolean;
        function delete_: Boolean;
        procedure deleteOnExit;
        function exists: Boolean;
        function getAbsolutePath: string;
        function getCanonicalPath: string;
        function getParent: string;
        function getPath: string;
        function isAbsolute: Boolean;
        function isDirectory: Boolean;
        function isFile: Boolean;
        function isHidden: Boolean;
        function lastModified: Int64;
        function length: Int64;
        function list: TArray<string>;
        function listWithFilter(filter: IFilenameFilter): TArray<string>;
        function mkdir: Boolean;
        function mkdirs: Boolean;
        function setLastModified(time: Int64): Boolean;
        function setReadOnly: Boolean;
        function toString: string;
        function toURI: TURI;
  end;
  TAbFileInterface = IAbFileInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

