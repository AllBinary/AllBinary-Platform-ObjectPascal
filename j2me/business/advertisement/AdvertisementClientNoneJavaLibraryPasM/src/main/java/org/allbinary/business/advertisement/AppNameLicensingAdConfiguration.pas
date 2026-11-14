// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
unit AppNameLicensingAdConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdConfiguration;

type
  {AB:TYPES}
  TAppNameLicensingAdConfiguration = class(TAdConfiguration)
  public
        constructor Create;
  end;

implementation
uses
  StringUtil;


{AB:CODE}
    

constructor TAppNameLicensingAdConfiguration.Create;
begin
        inherited Create(TArray<TObject>.Create(TJava.Box(TStringUtil.getInstance().EMPTY_STRING), TJava.Box(TStringUtil.getInstance().EMPTY_STRING), TJava.Box(TStringUtil.getInstance().EMPTY_STRING)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

