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
unit VectorRotationGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Angle, AngleFactory, BasicArrayList, VectorInfo, VectorAnimationUtil;

type
  {AB:TYPES}
  TVectorRotationGenerator = class(TObject)
  public
    logUtil: TLogUtil;
    vectorAnimationUtil: TVectorAnimationUtil;
    angleFactory: TAngleFactory;
    class var instance: TVectorRotationGenerator;
    procedure InitFields;
        class function getInstance: TVectorRotationGenerator; overload; static;
        constructor Create;
        function getInstance(vectorRotationInfo: TVectorInfo): TArray<TArray<TArray<Integer>>>; overload; virtual;
        function getInstanceFrames(width: Integer; height: Integer; points: TArray<TArray<Integer>>; frames: Integer): TArray<TArray<TArray<Integer>>>; virtual;
        function getListAtAngle(width: Integer; height: Integer; pointBasicArrayList: TBasicArrayList; angle_: TAngle): TBasicArrayList; virtual;
  end;

implementation
uses
  PointFactory, BasicGraphicsPipeline, NullUtil, CommonStrings, BasicArrayListS;


{AB:CODE}

procedure TVectorRotationGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.vectorAnimationUtil := TVectorAnimationUtil.getInstance();
  Self.angleFactory := TAngleFactory.getInstance();
end;
    

class function TVectorRotationGenerator.getInstance: TVectorRotationGenerator;
begin
        Exit(TVectorRotationGenerator.instance);
end;
    

constructor TVectorRotationGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TVectorRotationGenerator.getInstance(vectorRotationInfo: TVectorInfo): TArray<TArray<TArray<Integer>>>;
begin
        Exit(Self.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames()));
end;
    

function TVectorRotationGenerator.getInstanceFrames(width: Integer; height: Integer; points: TArray<TArray<Integer>>; frames: Integer): TArray<TArray<TArray<Integer>>>;
var
  totalAngle: SmallInt;
  angleIncrement: Integer;
  pointsBasicArrayList: TBasicArrayList;
  pointBasicArrayList: TBasicArrayList;
  pointFactory_: TPointFactory;
  size: Integer;
  index: Integer;
  newPoints: TArray<TArray<TArray<Integer>>>;
  commonStrings_: TCommonStrings;
begin
        try
            totalAngle := Self.angleFactory.TOTAL_ANGLE;
            angleIncrement := (Integer(totalAngle)) div (frames);
            pointsBasicArrayList := TBasicArrayListS.Create((Integer(totalAngle)) div (angleIncrement));
            pointBasicArrayList := TBasicArrayListS.Create(System.Length(points));
            pointFactory_ := TPointFactory.getInstance();
            size := System.Length(points);
            for index := 0 to size - 1 do begin
                pointBasicArrayList.add(TJava.Box(pointFactory_.createXY(points[index][0], points[index][1])));
            end;
            index := 0;
            while (index) < (Integer(totalAngle)) do begin
                pointsBasicArrayList.add(TJava.Box(Self.getListAtAngle(width, height, pointBasicArrayList, Self.angleFactory.getAt(index))));
                index := (index) + (angleIncrement);
            end;
            newPoints := Self.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size());
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
function TVectorRotationGenerator.getListAtAngle(width: Integer; height: Integer; pointBasicArrayList: TBasicArrayList; angle_: TAngle): TBasicArrayList;
var
  graphicsPipe: TBasicGraphicsPipeline;
begin
        graphicsPipe := TBasicGraphicsPipeline.Create(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(-(TJava.SignedRightShift(width, 1)), -(TJava.SignedRightShift(height, 1)));
        graphicsPipe.rotateToAngle(angle_);
        graphicsPipe.translate((TJava.SignedRightShift(width, 1)), (TJava.SignedRightShift(height, 1)));
        Exit(graphicsPipe.getMatrix());
end;

initialization
  {AB:INITIALIZATION}
  TVectorRotationGenerator.instance := TVectorRotationGenerator.Create();
  {AB:END}

end.

