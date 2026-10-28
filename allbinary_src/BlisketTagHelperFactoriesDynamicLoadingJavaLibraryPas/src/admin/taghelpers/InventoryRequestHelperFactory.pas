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
// package admin.taghelpers
unit InventoryRequestHelperFactory;

{$mode delphi}{$H+}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AllBinaryJava, LicensingException, TagHelperFactoryInterface;

type
  TInventoryRequestHelperFactory = class(TInterfacedObject, ITagHelperFactoryInterface)
  public
    class var CLASSNAME: string;
    class var FACTORYNAME: string;
        constructor Create;
        function getInstance(hashMap: THashMap; pageContext: TPageContext): TAny; virtual;
  end;

implementation

    

constructor TInventoryRequestHelperFactory.Create;
begin
    inherited Create;
end;
    

// throws LicensingException
function TInventoryRequestHelperFactory.getInstance(hashMap: THashMap; pageContext: TPageContext): TAny;
begin
        Exit(THelperFactory.getInstance(TInventoryRequestHelperFactory.FACTORYNAME, TInventoryRequestHelperFactory.CLASSNAME, hashMap, pageContext));
end;

initialization
  TInventoryRequestHelperFactory.CLASSNAME := 'admin.taghelpers.InventoryRequestHelper';
  TInventoryRequestHelperFactory.FACTORYNAME := 'InventoryRequestHelperFactory';

end.

