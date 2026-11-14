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
// package org.allbinary.animation
unit VectorMirrorGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, VectorAnimationUtil;

type
  {AB:TYPES}
  TVectorMirrorGenerator = class(TObject)
  public
    logUtil: TLogUtil;
    vectorAnimationUtil: TVectorAnimationUtil;
    class var instance: TVectorMirrorGenerator;
    procedure InitFields;
        class function getInstance: TVectorMirrorGenerator; overload; static;
        constructor Create;
        function getInstance(points: TArray<TArray<TArray<Integer>>>; width: Integer): TArray<TArray<TArray<Integer>>>; overload; virtual;
        function getInstance(pointBasicArrayList: TBasicArrayList; width: Integer): TBasicArrayList; overload; virtual;
  end;

implementation
uses
  PointFactory, BasicGraphicsPipeline, NullUtil, CommonStrings, BasicArrayListS;


{AB:CODE}

procedure TVectorMirrorGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.vectorAnimationUtil := TVectorAnimationUtil.getInstance();
end;
    

class function TVectorMirrorGenerator.getInstance: TVectorMirrorGenerator;
begin
        Exit(TVectorMirrorGenerator.instance);
end;
    

constructor TVectorMirrorGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TVectorMirrorGenerator.getInstance(points: TArray<TArray<TArray<Integer>>>; width: Integer): TArray<TArray<TArray<Integer>>>;
var
  pointFactory_: TPointFactory;
  pointBasicArrayList: TBasicArrayList;
  nextPoints: TArray<TArray<Integer>>;
  size2: Integer;
  size: Integer;
  pointsBasicArrayList: TBasicArrayList;
  index: Integer;
  frame: Integer;
  newPoints: TArray<TArray<TArray<Integer>>>;
  commonStrings_: TCommonStrings;
begin
        try
            pointFactory_ := TPointFactory.getInstance();
            
            
            
            size := System.Length(points);
            pointsBasicArrayList := TBasicArrayListS.Create(size);
            for frame := 0 to size - 1 do begin
                nextPoints := points[frame];
                size2 := System.Length(nextPoints);
                pointBasicArrayList := TBasicArrayListS.Create(size2);
                for index := 0 to size2 - 1 do begin
                    pointBasicArrayList.add(TJava.Box(pointFactory_.createXY(nextPoints[index][0], nextPoints[index][1])));
                end;
                pointsBasicArrayList.add(TJava.Box(pointBasicArrayList));
            end;
            for index := 0 to System.Length(points) - 1 do begin
                pointsBasicArrayList.add(TJava.Box(Self.getInstance(TBasicArrayList(TJava.ToObject(pointsBasicArrayList.objectArray[index])), width)));
            end;
            newPoints := Self.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList);
            Exit(newPoints);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY);
            end;
        end;
end;
    

// throws Exception
function TVectorMirrorGenerator.getInstance(pointBasicArrayList: TBasicArrayList; width: Integer): TBasicArrayList;
var
  graphicsPipe: TBasicGraphicsPipeline;
begin
        graphicsPipe := TBasicGraphicsPipeline.Create(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.mirror(width);
        Exit(graphicsPipe.getMatrix());
end;

initialization
  {AB:INITIALIZATION}
  TVectorMirrorGenerator.instance := TVectorMirrorGenerator.Create();
  {AB:END}

end.

