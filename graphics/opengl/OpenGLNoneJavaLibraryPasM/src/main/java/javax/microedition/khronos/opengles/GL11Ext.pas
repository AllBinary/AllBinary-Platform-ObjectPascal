// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles
unit GL11Ext;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL;

type
  {AB:TYPES}
  IGL11Ext = interface(IGL) ['IGL11Ext']
        procedure glTexParameterfv(target: Integer; pname: Integer; param: TArray<Single>; offset: Integer);
        procedure glCurrentPaletteMatrixOES(matrixpaletteindex: Integer);
        procedure glDrawTexfOES(x: Single; y: Single; z: Single; width: Single; height: Single);
        procedure glDrawTexfvOES(coords: TArray<Single>; offset: Integer); overload;
        procedure glDrawTexfvOES(coords: TFloatBuffer); overload;
        procedure glDrawTexiOES(x: Integer; y: Integer; z: Integer; width: Integer; height: Integer);
        procedure glDrawTexivOES(coords: TArray<Integer>; offset: Integer); overload;
        procedure glDrawTexivOES(coords: TIntBuffer); overload;
        procedure glDrawTexsOES(x: SmallInt; y: SmallInt; z: SmallInt; width: SmallInt; height: SmallInt);
        procedure glDrawTexsvOES(coords: TArray<SmallInt>; offset: Integer); overload;
        procedure glDrawTexsvOES(coords: TShortBuffer); overload;
        procedure glDrawTexxOES(x: Integer; y: Integer; z: Integer; width: Integer; height: Integer);
        procedure glDrawTexxvOES(coords: TArray<Integer>; offset: Integer); overload;
        procedure glDrawTexxvOES(coords: TIntBuffer); overload;
        procedure glEnable(cap: Integer);
        procedure glEnableClientState(array_: Integer);
        procedure glLoadPaletteFromModelViewMatrixOES;
        procedure glMatrixIndexPointerOES(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); overload;
        procedure glMatrixIndexPointerOES(size: Integer; type_: Integer; stride: Integer; offset: Integer); overload;
        procedure glWeightPointerOES(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); overload;
        procedure glWeightPointerOES(size: Integer; type_: Integer; stride: Integer; offset: Integer); overload;
  end;
  TGL11Ext = IGL11Ext;

  IGL11ExtFields = type helper for IGL11Ext
  public
    class var GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES: Integer;
    class var GL_MATRIX_INDEX_ARRAY_OES: Integer;
    class var GL_MATRIX_INDEX_ARRAY_POINTER_OES: Integer;
    class var GL_MATRIX_INDEX_ARRAY_SIZE_OES: Integer;
    class var GL_MATRIX_INDEX_ARRAY_STRIDE_OES: Integer;
    class var GL_MATRIX_INDEX_ARRAY_TYPE_OES: Integer;
    class var GL_MATRIX_PALETTE_OES: Integer;
    class var GL_MAX_PALETTE_MATRICES_OES: Integer;
    class var GL_MAX_VERTEX_UNITS_OES: Integer;
    class var GL_TEXTURE_CROP_RECT_OES: Integer;
    class var GL_WEIGHT_ARRAY_BUFFER_BINDING_OES: Integer;
    class var GL_WEIGHT_ARRAY_OES: Integer;
    class var GL_WEIGHT_ARRAY_POINTER_OES: Integer;
    class var GL_WEIGHT_ARRAY_SIZE_OES: Integer;
    class var GL_WEIGHT_ARRAY_STRIDE_OES: Integer;
    class var GL_WEIGHT_ARRAY_TYPE_OES: Integer;
  end;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  IGL11Ext.GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES := 35742;
  IGL11Ext.GL_MATRIX_INDEX_ARRAY_OES := 34884;
  IGL11Ext.GL_MATRIX_INDEX_ARRAY_POINTER_OES := 34889;
  IGL11Ext.GL_MATRIX_INDEX_ARRAY_SIZE_OES := 34886;
  IGL11Ext.GL_MATRIX_INDEX_ARRAY_STRIDE_OES := 34888;
  IGL11Ext.GL_MATRIX_INDEX_ARRAY_TYPE_OES := 34887;
  IGL11Ext.GL_MATRIX_PALETTE_OES := 34880;
  IGL11Ext.GL_MAX_PALETTE_MATRICES_OES := 34882;
  IGL11Ext.GL_MAX_VERTEX_UNITS_OES := 34468;
  IGL11Ext.GL_TEXTURE_CROP_RECT_OES := 35741;
  IGL11Ext.GL_WEIGHT_ARRAY_BUFFER_BINDING_OES := 34974;
  IGL11Ext.GL_WEIGHT_ARRAY_OES := 34477;
  IGL11Ext.GL_WEIGHT_ARRAY_POINTER_OES := 34476;
  IGL11Ext.GL_WEIGHT_ARRAY_SIZE_OES := 34475;
  IGL11Ext.GL_WEIGHT_ARRAY_STRIDE_OES := 34474;
  IGL11Ext.GL_WEIGHT_ARRAY_TYPE_OES := 34473;
  {AB:END}

end.

