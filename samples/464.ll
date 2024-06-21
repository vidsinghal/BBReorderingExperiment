; ModuleID = 'samples/464.bc'
source_filename = "scipy/stats/_mvnmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { i64, ptr }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.PyMethodDef = type { ptr, ptr, i32, ptr }
%struct.FortranDataDef = type { ptr, i32, %struct.anon, i32, ptr, ptr, ptr }
%struct.anon = type { [40 x i64] }
%struct.tagPyArrayObject_fields = type { %struct._object, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }

@moduledef = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.10, ptr null, i64 -1, ptr @f2py_module_methods, ptr null, ptr null, ptr null, ptr null }, align 8
@_mvn_module = internal global ptr null, align 8
@PyFortran_Type = external global %struct._typeobject, align 8
@PyType_Type = external global %struct._typeobject, align 8
@PyExc_ImportError = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"numpy.core.multiarray failed to import\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't initialize module _mvn (failed to import numpy)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1.23.5\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@.str.4 = private unnamed_addr constant [402 x i8] c"This module '_mvn' is auto-generated with f2py (version:1.23.5).\0AFunctions:\0A    value,inform = mvnun(lower,upper,means,covar,maxpts=d*1000,abseps=1e-06,releps=1e-06)\0A    value,inform = mvnun_weighted(lower,upper,means,weights,covar,maxpts=d*1000,abseps=1e-06,releps=1e-06)\0A    error,value,inform = mvndst(lower,upper,infin,correl,maxpts=2000,abseps=1e-06,releps=1e-06)\0ACOMMON blocks:\0A  /dkblck/ ivls\0A.\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"__f2py_numpy_version__\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"_mvn.error\00", align 1
@_mvn_error = internal global ptr null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"__mvn_error\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dkblck\00", align 1
@_npy_f2py_ARRAY_API = hidden global ptr null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"_mvn\00", align 1
@f2py_module_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [29 x i8] c"numpy.core._multiarray_umath\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"_ARRAY_API\00", align 1
@PyExc_AttributeError = external global ptr, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"_ARRAY_API not found\00", align 1
@PyCapsule_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeError = external global ptr, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"_ARRAY_API is not PyCapsule object\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"_ARRAY_API is NULL pointer\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"module compiled against ABI version 0x%x but this version of numpy is 0x%x\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"module compiled against API version 0x%x but this version of numpy is 0x%x\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"FATAL: module compiled as unknown endian\00", align 1
@.str.19 = private unnamed_addr constant [86 x i8] c"FATAL: module compiled as little endian, but detected different endianness at runtime\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"mvnun\00", align 1
@doc_f2py_rout__mvn_mvnun = internal global [540 x i8] c"value,inform = mvnun(lower,upper,means,covar,[maxpts,abseps,releps])\0A\0AWrapper for ``mvnun``.\0A\0AParameters\0A----------\0Alower : input rank-1 array('d') with bounds (d)\0Aupper : input rank-1 array('d') with bounds (d)\0Ameans : input rank-2 array('d') with bounds (d,n)\0Acovar : input rank-2 array('d') with bounds (d,d)\0A\0AOther Parameters\0A----------------\0Amaxpts : input int, optional\0A    Default: d*1000\0Aabseps : input float, optional\0A    Default: 1e-06\0Areleps : input float, optional\0A    Default: 1e-06\0A\0AReturns\0A-------\0Avalue : float\0Ainform : int\00", align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"mvnun_weighted\00", align 1
@doc_f2py_rout__mvn_mvnun_weighted = internal global [616 x i8] c"value,inform = mvnun_weighted(lower,upper,means,weights,covar,[maxpts,abseps,releps])\0A\0AWrapper for ``mvnun_weighted``.\0A\0AParameters\0A----------\0Alower : input rank-1 array('d') with bounds (d)\0Aupper : input rank-1 array('d') with bounds (d)\0Ameans : input rank-2 array('d') with bounds (d,n)\0Aweights : input rank-1 array('d') with bounds (n)\0Acovar : input rank-2 array('d') with bounds (d,d)\0A\0AOther Parameters\0A----------------\0Amaxpts : input int, optional\0A    Default: d*1000\0Aabseps : input float, optional\0A    Default: 1e-06\0Areleps : input float, optional\0A    Default: 1e-06\0A\0AReturns\0A-------\0Avalue : float\0Ainform : int\00", align 16
@.str.22 = private unnamed_addr constant [7 x i8] c"mvndst\00", align 1
@doc_f2py_rout__mvn_mvndst = internal global [573 x i8] c"error,value,inform = mvndst(lower,upper,infin,correl,[maxpts,abseps,releps])\0A\0AWrapper for ``mvndst``.\0A\0AParameters\0A----------\0Alower : input rank-1 array('d') with bounds (n)\0Aupper : input rank-1 array('d') with bounds (n)\0Ainfin : input rank-1 array('i') with bounds (n)\0Acorrel : input rank-1 array('d') with bounds ((-n + n * n) / 2)\0A\0AOther Parameters\0A----------------\0Amaxpts : input int, optional\0A    Default: 2000\0Aabseps : input float, optional\0A    Default: 1e-06\0Areleps : input float, optional\0A    Default: 1e-06\0A\0AReturns\0A-------\0Aerror : float\0Avalue : float\0Ainform : int\00", align 16
@f2py_routine_defs = internal global <{ { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr }, { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr }, { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr }, %struct.FortranDataDef }> <{ { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr } { ptr @.str.20, i32 -1, [4 x i8] undef, { <{ i64, [39 x i64] }> } { <{ i64, [39 x i64] }> <{ i64 -1, [39 x i64] zeroinitializer }> }, i32 0, ptr @mvnun_, ptr @f2py_rout__mvn_mvnun, ptr @doc_f2py_rout__mvn_mvnun }, { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr } { ptr @.str.21, i32 -1, [4 x i8] undef, { <{ i64, [39 x i64] }> } { <{ i64, [39 x i64] }> <{ i64 -1, [39 x i64] zeroinitializer }> }, i32 0, ptr @mvnun_weighted_, ptr @f2py_rout__mvn_mvnun_weighted, ptr @doc_f2py_rout__mvn_mvnun_weighted }, { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr } { ptr @.str.22, i32 -1, [4 x i8] undef, { <{ i64, [39 x i64] }> } { <{ i64, [39 x i64] }> <{ i64 -1, [39 x i64] zeroinitializer }> }, i32 0, ptr @mvndst_, ptr @f2py_rout__mvn_mvndst, ptr @doc_f2py_rout__mvn_mvndst }, %struct.FortranDataDef zeroinitializer }>, align 16
@__const.f2py_rout__mvn_mvnun.lower_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@_Py_NoneStruct = external global %struct._object, align 8
@__const.f2py_rout__mvn_mvnun.upper_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvnun.means_Dims = private unnamed_addr constant [2 x i64] [i64 -1, i64 -1], align 16
@__const.f2py_rout__mvn_mvnun.covar_Dims = private unnamed_addr constant [2 x i64] [i64 -1, i64 -1], align 16
@f2py_rout__mvn_mvnun.capi_kwlist = internal global [8 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"means\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"covar\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"maxpts\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"abseps\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"releps\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"OOOO|OOO:_mvn.mvnun\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"failed in converting 3rd argument `means' of _mvn.mvnun to C/Fortran array\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"_mvn.mvnun() 2nd keyword (abseps) can't be converted to double\00", align 1
@.str.34 = private unnamed_addr constant [63 x i8] c"_mvn.mvnun() 3rd keyword (releps) can't be converted to double\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"failed in converting 1st argument `lower' of _mvn.mvnun to C/Fortran array\00", align 1
@.str.36 = private unnamed_addr constant [75 x i8] c"failed in converting 2nd argument `upper' of _mvn.mvnun to C/Fortran array\00", align 1
@.str.37 = private unnamed_addr constant [75 x i8] c"failed in converting 4th argument `covar' of _mvn.mvnun to C/Fortran array\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"_mvn.mvnun() 1st keyword (maxpts) can't be converted to int\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@PyComplex_Type = external global %struct._typeobject, align 8
@.str.40 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@PyExc_OverflowError = external global ptr, align 8
@.str.41 = private unnamed_addr constant [41 x i8] c"Python int too large to convert to C int\00", align 1
@__const.f2py_rout__mvn_mvnun_weighted.lower_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvnun_weighted.upper_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvnun_weighted.means_Dims = private unnamed_addr constant [2 x i64] [i64 -1, i64 -1], align 16
@__const.f2py_rout__mvn_mvnun_weighted.weights_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvnun_weighted.covar_Dims = private unnamed_addr constant [2 x i64] [i64 -1, i64 -1], align 16
@f2py_rout__mvn_mvnun_weighted.capi_kwlist = internal global [9 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.42, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null], align 16
@.str.42 = private unnamed_addr constant [8 x i8] c"weights\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"OOOOO|OOO:_mvn.mvnun_weighted\00", align 1
@.str.44 = private unnamed_addr constant [84 x i8] c"failed in converting 3rd argument `means' of _mvn.mvnun_weighted to C/Fortran array\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"_mvn.mvnun_weighted() 2nd keyword (abseps) can't be converted to double\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"_mvn.mvnun_weighted() 3rd keyword (releps) can't be converted to double\00", align 1
@.str.47 = private unnamed_addr constant [84 x i8] c"failed in converting 1st argument `lower' of _mvn.mvnun_weighted to C/Fortran array\00", align 1
@.str.48 = private unnamed_addr constant [84 x i8] c"failed in converting 2nd argument `upper' of _mvn.mvnun_weighted to C/Fortran array\00", align 1
@.str.49 = private unnamed_addr constant [86 x i8] c"failed in converting 4th argument `weights' of _mvn.mvnun_weighted to C/Fortran array\00", align 1
@.str.50 = private unnamed_addr constant [84 x i8] c"failed in converting 5th argument `covar' of _mvn.mvnun_weighted to C/Fortran array\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"_mvn.mvnun_weighted() 1st keyword (maxpts) can't be converted to int\00", align 1
@__const.f2py_rout__mvn_mvndst.lower_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvndst.upper_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvndst.infin_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@__const.f2py_rout__mvn_mvndst.correl_Dims = private unnamed_addr constant [1 x i64] [i64 -1], align 8
@f2py_rout__mvn_mvndst.capi_kwlist = internal global [8 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.52, ptr @.str.53, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null], align 16
@.str.52 = private unnamed_addr constant [6 x i8] c"infin\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"correl\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"OOOO|OOO:_mvn.mvndst\00", align 1
@.str.55 = private unnamed_addr constant [76 x i8] c"failed in converting 1st argument `lower' of _mvn.mvndst to C/Fortran array\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"_mvn.mvndst() 1st keyword (maxpts) can't be converted to int\00", align 1
@.str.57 = private unnamed_addr constant [64 x i8] c"_mvn.mvndst() 2nd keyword (abseps) can't be converted to double\00", align 1
@.str.58 = private unnamed_addr constant [64 x i8] c"_mvn.mvndst() 3rd keyword (releps) can't be converted to double\00", align 1
@.str.59 = private unnamed_addr constant [76 x i8] c"failed in converting 2nd argument `upper' of _mvn.mvndst to C/Fortran array\00", align 1
@.str.60 = private unnamed_addr constant [76 x i8] c"failed in converting 3rd argument `infin' of _mvn.mvndst to C/Fortran array\00", align 1
@.str.61 = private unnamed_addr constant [77 x i8] c"failed in converting 4th argument `correl' of _mvn.mvndst to C/Fortran array\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"ddi\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"ivls\00", align 1
@f2py_dkblck_def = internal global <{ { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr }, %struct.FortranDataDef }> <{ { ptr, i32, [4 x i8], { <{ i64, [39 x i64] }> }, i32, ptr, ptr, ptr } { ptr @.str.63, i32 0, [4 x i8] undef, { <{ i64, [39 x i64] }> } { <{ i64, [39 x i64] }> <{ i64 -1, [39 x i64] zeroinitializer }> }, i32 5, ptr null, ptr null, ptr null }, %struct.FortranDataDef zeroinitializer }>, align 16

; Function Attrs: nounwind uwtable
define ptr @PyInit__mvn() #0 {
entry:
  %retval = alloca ptr, align 8
  %i = alloca i32, align 4
  %m = alloca ptr, align 8
  %d = alloca ptr, align 8
  %s = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  %call = call ptr @PyModule_Create2(ptr noundef @moduledef, i32 noundef 1013)
  store ptr %call, ptr @_mvn_module, align 8, !tbaa !4
  store ptr %call, ptr %m, align 8, !tbaa !4
  call void @Py_SET_TYPE(ptr noundef @PyFortran_Type, ptr noundef @PyType_Type)
  %call1 = call i32 @_import_array()
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Print()
  %0 = load ptr, ptr @PyExc_ImportError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %0, ptr noundef @.str)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @PyErr_Occurred()
  %tobool = icmp ne ptr %call2, null
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @PyExc_ImportError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %1, ptr noundef @.str.1)
  %2 = load ptr, ptr %m, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %m, align 8, !tbaa !4
  %call5 = call ptr @PyModule_GetDict(ptr noundef %3)
  store ptr %call5, ptr %d, align 8, !tbaa !4
  %call6 = call ptr @PyUnicode_FromString(ptr noundef @.str.2)
  store ptr %call6, ptr %s, align 8, !tbaa !4
  %4 = load ptr, ptr %d, align 8, !tbaa !4
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %call7 = call i32 @PyDict_SetItemString(ptr noundef %4, ptr noundef @.str.3, ptr noundef %5)
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %6)
  %call8 = call ptr @PyUnicode_FromString(ptr noundef @.str.4)
  store ptr %call8, ptr %s, align 8, !tbaa !4
  %7 = load ptr, ptr %d, align 8, !tbaa !4
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  %call9 = call i32 @PyDict_SetItemString(ptr noundef %7, ptr noundef @.str.5, ptr noundef %8)
  %9 = load ptr, ptr %s, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %9)
  %call10 = call ptr @PyUnicode_FromString(ptr noundef @.str.2)
  store ptr %call10, ptr %s, align 8, !tbaa !4
  %10 = load ptr, ptr %d, align 8, !tbaa !4
  %11 = load ptr, ptr %s, align 8, !tbaa !4
  %call11 = call i32 @PyDict_SetItemString(ptr noundef %10, ptr noundef @.str.6, ptr noundef %11)
  %12 = load ptr, ptr %s, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %12)
  %call12 = call ptr @PyErr_NewException(ptr noundef @.str.7, ptr noundef null, ptr noundef null)
  store ptr %call12, ptr @_mvn_error, align 8, !tbaa !4
  %13 = load ptr, ptr %d, align 8, !tbaa !4
  %14 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  %call13 = call i32 @PyDict_SetItemString(ptr noundef %13, ptr noundef @.str.8, ptr noundef %14)
  %15 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %15)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.FortranDataDef], ptr @f2py_routine_defs, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.FortranDataDef, ptr %arrayidx, i32 0, i32 0
  %17 = load ptr, ptr %name, align 16, !tbaa !10
  %cmp14 = icmp ne ptr %17, null
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [4 x %struct.FortranDataDef], ptr @f2py_routine_defs, i64 0, i64 %idxprom15
  %call17 = call ptr @PyFortranObject_NewAsAttr(ptr noundef %arrayidx16)
  store ptr %call17, ptr %tmp, align 8, !tbaa !4
  %19 = load ptr, ptr %d, align 8, !tbaa !4
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [4 x %struct.FortranDataDef], ptr @f2py_routine_defs, i64 0, i64 %idxprom18
  %name20 = getelementptr inbounds %struct.FortranDataDef, ptr %arrayidx19, i32 0, i32 0
  %21 = load ptr, ptr %name20, align 16, !tbaa !10
  %22 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call21 = call i32 @PyDict_SetItemString(ptr noundef %19, ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call22 = call ptr @PyFortranObject_New(ptr noundef @f2py_dkblck_def, ptr noundef @f2py_init_dkblck)
  store ptr %call22, ptr %tmp, align 8, !tbaa !4
  %25 = load ptr, ptr %d, align 8, !tbaa !4
  %26 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call23 = call i32 @F2PyDict_SetItemString(ptr noundef %25, ptr noundef @.str.9, ptr noundef %26)
  %27 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %27)
  %28 = load ptr, ptr %m, align 8, !tbaa !4
  store ptr %28, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @PyModule_Create2(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_SET_TYPE(ptr noundef %ob, ptr noundef %type) #3 {
entry:
  %ob.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %ob_type = getelementptr inbounds %struct._object, ptr %1, i32 0, i32 1
  store ptr %0, ptr %ob_type, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_import_array() #0 {
entry:
  %retval = alloca i32, align 4
  %st = alloca i32, align 4
  %numpy = alloca ptr, align 8
  %c_api = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %st) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %numpy) #5
  %call = call ptr @PyImport_ImportModule(ptr noundef @.str.11)
  store ptr %call, ptr %numpy, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_api) #5
  store ptr null, ptr %c_api, align 8, !tbaa !4
  %0 = load ptr, ptr %numpy, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %numpy, align 8, !tbaa !4
  %call1 = call ptr @PyObject_GetAttrString(ptr noundef %1, ptr noundef @.str.12)
  store ptr %call1, ptr %c_api, align 8, !tbaa !4
  %2 = load ptr, ptr %numpy, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %2)
  %3 = load ptr, ptr %c_api, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %4, ptr noundef @.str.13)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %c_api, align 8, !tbaa !4
  %call5 = call i32 @Py_IS_TYPE(ptr noundef %5, ptr noundef @PyCapsule_Type)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %6, ptr noundef @.str.14)
  %7 = load ptr, ptr %c_api, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %7)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %c_api, align 8, !tbaa !4
  %call8 = call ptr @PyCapsule_GetPointer(ptr noundef %8, ptr noundef null)
  store ptr %call8, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %9 = load ptr, ptr %c_api, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %9)
  %10 = load ptr, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %11, ptr noundef @.str.15)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %12 = load ptr, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %call12 = call i32 %13()
  %cmp13 = icmp ne i32 16777225, %call12
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  %14 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  %15 = load ptr, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx15, align 8, !tbaa !4
  %call16 = call i32 %16()
  %call17 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %14, ptr noundef @.str.16, i32 noundef 16777225, i32 noundef %call16)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %17 = load ptr, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds ptr, ptr %17, i64 211
  %18 = load ptr, ptr %arrayidx19, align 8, !tbaa !4
  %call20 = call i32 %18()
  %cmp21 = icmp ugt i32 16, %call20
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end18
  %19 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  %20 = load ptr, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds ptr, ptr %20, i64 211
  %21 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  %call24 = call i32 %21()
  %call25 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %19, ptr noundef @.str.17, i32 noundef 16, i32 noundef %call24)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %22 = load ptr, ptr @_npy_f2py_ARRAY_API, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds ptr, ptr %22, i64 210
  %23 = load ptr, ptr %arrayidx27, align 8, !tbaa !4
  %call28 = call i32 %23()
  store i32 %call28, ptr %st, align 4, !tbaa !8
  %24 = load i32, ptr %st, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %24, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  %25 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  %call31 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %25, ptr noundef @.str.18)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %26 = load i32, ptr %st, align 4, !tbaa !8
  %cmp33 = icmp ne i32 %26, 1
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %27 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  %call35 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %27, ptr noundef @.str.19)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %if.then30, %if.then22, %if.then14, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_api) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %numpy) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %st) #5
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

declare void @PyErr_Print() #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) #2

declare ptr @PyErr_Occurred() #2

declare ptr @PyModule_GetDict(ptr noundef) #2

declare ptr @PyUnicode_FromString(ptr noundef) #2

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_DECREF(ptr noundef %op) #3 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %ob_refcnt, align 8, !tbaa !16
  %dec = add nsw i64 %1, -1
  store i64 %dec, ptr %ob_refcnt, align 8, !tbaa !16
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !tbaa !4
  call void @_Py_Dealloc(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @PyFortranObject_NewAsAttr(ptr noundef) #2

declare ptr @PyFortranObject_New(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @f2py_init_dkblck() #0 {
entry:
  call void @f2pyinitdkblck_(ptr noundef @f2py_setup_dkblck)
  ret void
}

declare i32 @F2PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @PyImport_ImportModule(ptr noundef) #2

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Py_IS_TYPE(ptr noundef %ob, ptr noundef %type) #3 {
entry:
  %ob.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %1 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Py_TYPE(ptr noundef %ob) #3 {
entry:
  %ob.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %ob_type = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ob_type, align 8, !tbaa !13
  ret ptr %1
}

declare void @_Py_Dealloc(ptr noundef) #2

declare void @mvnun_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @f2py_rout__mvn_mvnun(ptr noundef %capi_self, ptr noundef %capi_args, ptr noundef %capi_keywds, ptr noundef %f2py_func) #0 {
entry:
  %retval = alloca ptr, align 8
  %capi_self.addr = alloca ptr, align 8
  %capi_args.addr = alloca ptr, align 8
  %capi_keywds.addr = alloca ptr, align 8
  %f2py_func.addr = alloca ptr, align 8
  %capi_buildvalue = alloca ptr, align 8
  %f2py_success = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  %lower = alloca ptr, align 8
  %lower_Dims = alloca [1 x i64], align 8
  %lower_Rank = alloca i32, align 4
  %capi_lower_tmp = alloca ptr, align 8
  %capi_lower_intent = alloca i32, align 4
  %lower_capi = alloca ptr, align 8
  %upper = alloca ptr, align 8
  %upper_Dims = alloca [1 x i64], align 8
  %upper_Rank = alloca i32, align 4
  %capi_upper_tmp = alloca ptr, align 8
  %capi_upper_intent = alloca i32, align 4
  %upper_capi = alloca ptr, align 8
  %means = alloca ptr, align 8
  %means_Dims = alloca [2 x i64], align 16
  %means_Rank = alloca i32, align 4
  %capi_means_tmp = alloca ptr, align 8
  %capi_means_intent = alloca i32, align 4
  %means_capi = alloca ptr, align 8
  %covar = alloca ptr, align 8
  %covar_Dims = alloca [2 x i64], align 16
  %covar_Rank = alloca i32, align 4
  %capi_covar_tmp = alloca ptr, align 8
  %capi_covar_intent = alloca i32, align 4
  %covar_capi = alloca ptr, align 8
  %maxpts = alloca i32, align 4
  %maxpts_capi = alloca ptr, align 8
  %abseps = alloca double, align 8
  %abseps_capi = alloca ptr, align 8
  %releps = alloca double, align 8
  %releps_capi = alloca ptr, align 8
  %value = alloca double, align 8
  %inform = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %exc = alloca ptr, align 8
  %val = alloca ptr, align 8
  %tb = alloca ptr, align 8
  %exc29 = alloca ptr, align 8
  %val30 = alloca ptr, align 8
  %tb31 = alloca ptr, align 8
  %exc47 = alloca ptr, align 8
  %val48 = alloca ptr, align 8
  %tb49 = alloca ptr, align 8
  %exc67 = alloca ptr, align 8
  %val68 = alloca ptr, align 8
  %tb69 = alloca ptr, align 8
  store ptr %capi_self, ptr %capi_self.addr, align 8, !tbaa !4
  store ptr %capi_args, ptr %capi_args.addr, align 8, !tbaa !4
  store ptr %capi_keywds, ptr %capi_keywds.addr, align 8, !tbaa !4
  store ptr %f2py_func, ptr %f2py_func.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_buildvalue) #5
  store volatile ptr null, ptr %capi_buildvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %f2py_success) #5
  store volatile i32 1, ptr %f2py_success, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #5
  store i32 0, ptr %d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower) #5
  store ptr null, ptr %lower, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lower_Dims, ptr align 8 @__const.f2py_rout__mvn_mvnun.lower_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower_Rank) #5
  store i32 1, ptr %lower_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_lower_tmp) #5
  store ptr null, ptr %capi_lower_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_lower_intent) #5
  store i32 0, ptr %capi_lower_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_capi) #5
  store ptr @_Py_NoneStruct, ptr %lower_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #5
  store ptr null, ptr %upper, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %upper_Dims, ptr align 8 @__const.f2py_rout__mvn_mvnun.upper_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_Rank) #5
  store i32 1, ptr %upper_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_upper_tmp) #5
  store ptr null, ptr %capi_upper_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_upper_intent) #5
  store i32 0, ptr %capi_upper_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_capi) #5
  store ptr @_Py_NoneStruct, ptr %upper_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %means) #5
  store ptr null, ptr %means, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %means_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %means_Dims, ptr align 16 @__const.f2py_rout__mvn_mvnun.means_Dims, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %means_Rank) #5
  store i32 2, ptr %means_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_means_tmp) #5
  store ptr null, ptr %capi_means_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_means_intent) #5
  store i32 0, ptr %capi_means_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %means_capi) #5
  store ptr @_Py_NoneStruct, ptr %means_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %covar) #5
  store ptr null, ptr %covar, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %covar_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %covar_Dims, ptr align 16 @__const.f2py_rout__mvn_mvnun.covar_Dims, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %covar_Rank) #5
  store i32 2, ptr %covar_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_covar_tmp) #5
  store ptr null, ptr %capi_covar_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_covar_intent) #5
  store i32 0, ptr %capi_covar_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %covar_capi) #5
  store ptr @_Py_NoneStruct, ptr %covar_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxpts) #5
  store i32 0, ptr %maxpts, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxpts_capi) #5
  store ptr @_Py_NoneStruct, ptr %maxpts_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %abseps) #5
  store double 0.000000e+00, ptr %abseps, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %abseps_capi) #5
  store ptr @_Py_NoneStruct, ptr %abseps_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %releps) #5
  store double 0.000000e+00, ptr %releps, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %releps_capi) #5
  store ptr @_Py_NoneStruct, ptr %releps_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  store double 0.000000e+00, ptr %value, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %inform) #5
  store i32 0, ptr %inform, align 4, !tbaa !8
  %0 = load ptr, ptr %capi_args.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %capi_keywds.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ptr, ptr, ...) @_PyArg_ParseTupleAndKeywords_SizeT(ptr noundef %0, ptr noundef %1, ptr noundef @.str.31, ptr noundef @f2py_rout__mvn_mvnun.capi_kwlist, ptr noundef %lower_capi, ptr noundef %upper_capi, ptr noundef %means_capi, ptr noundef %covar_capi, ptr noundef %maxpts_capi, ptr noundef %abseps_capi, ptr noundef %releps_capi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %capi_means_intent, align 4, !tbaa !8
  %or = or i32 %2, 1
  store i32 %or, ptr %capi_means_intent, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %means_Dims, i64 0, i64 0
  %3 = load i32, ptr %capi_means_intent, align 4, !tbaa !8
  %4 = load ptr, ptr %means_capi, align 8, !tbaa !4
  %call1 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay, i32 noundef 2, i32 noundef %3, ptr noundef %4)
  store ptr %call1, ptr %capi_means_tmp, align 8, !tbaa !4
  %5 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb) #5
  call void @PyErr_Fetch(ptr noundef %exc, ptr noundef %val, ptr noundef %tb)
  %6 = load ptr, ptr %exc, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %7 = load ptr, ptr %exc, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %8 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %8, %cond.false ]
  call void @PyErr_SetString(ptr noundef %cond, ptr noundef @.str.32)
  %9 = load ptr, ptr %exc, align 8, !tbaa !4
  %10 = load ptr, ptr %val, align 8, !tbaa !4
  %11 = load ptr, ptr %tb, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc) #5
  br label %if.end115

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  %call4 = call ptr @PyArray_DATA(ptr noundef %12)
  store ptr %call4, ptr %means, align 8, !tbaa !4
  %13 = load ptr, ptr %abseps_capi, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %13, @_Py_NoneStruct
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store double 0x3EB0C6F7A0B5ED8D, ptr %abseps, align 8, !tbaa !17
  br label %if.end9

if.else7:                                         ; preds = %if.else
  %14 = load ptr, ptr %abseps_capi, align 8, !tbaa !4
  %call8 = call i32 @double_from_pyobj(ptr noundef %abseps, ptr noundef %14, ptr noundef @.str.33)
  store volatile i32 %call8, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6
  %15 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then11, label %if.end110

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %releps_capi, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %16, @_Py_NoneStruct
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.then11
  store double 0x3EB0C6F7A0B5ED8D, ptr %releps, align 8, !tbaa !17
  br label %if.end16

if.else14:                                        ; preds = %if.then11
  %17 = load ptr, ptr %releps_capi, align 8, !tbaa !4
  %call15 = call i32 @double_from_pyobj(ptr noundef %releps, ptr noundef %17, ptr noundef @.str.34)
  store volatile i32 %call15, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %18 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.then18, label %if.end109

if.then18:                                        ; preds = %if.end16
  %arrayidx = getelementptr inbounds [2 x i64], ptr %means_Dims, i64 0, i64 0
  %19 = load i64, ptr %arrayidx, align 16, !tbaa !19
  %conv = trunc i64 %19 to i32
  store i32 %conv, ptr %d, align 4, !tbaa !8
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %means_Dims, i64 0, i64 1
  %20 = load i64, ptr %arrayidx19, align 8, !tbaa !19
  %conv20 = trunc i64 %20 to i32
  store i32 %conv20, ptr %n, align 4, !tbaa !8
  %21 = load i32, ptr %d, align 4, !tbaa !8
  %conv21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [1 x i64], ptr %lower_Dims, i64 0, i64 0
  store i64 %conv21, ptr %arrayidx22, align 8, !tbaa !19
  %22 = load i32, ptr %capi_lower_intent, align 4, !tbaa !8
  %or23 = or i32 %22, 1
  store i32 %or23, ptr %capi_lower_intent, align 4, !tbaa !8
  %arraydecay24 = getelementptr inbounds [1 x i64], ptr %lower_Dims, i64 0, i64 0
  %23 = load i32, ptr %capi_lower_intent, align 4, !tbaa !8
  %24 = load ptr, ptr %lower_capi, align 8, !tbaa !4
  %call25 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay24, i32 noundef 1, i32 noundef %23, ptr noundef %24)
  store ptr %call25, ptr %capi_lower_tmp, align 8, !tbaa !4
  %25 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %cmp26 = icmp eq ptr %25, null
  br i1 %cmp26, label %if.then28, label %if.else37

if.then28:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc29) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val30) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb31) #5
  call void @PyErr_Fetch(ptr noundef %exc29, ptr noundef %val30, ptr noundef %tb31)
  %26 = load ptr, ptr %exc29, align 8, !tbaa !4
  %tobool32 = icmp ne ptr %26, null
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %if.then28
  %27 = load ptr, ptr %exc29, align 8, !tbaa !4
  br label %cond.end35

cond.false34:                                     ; preds = %if.then28
  %28 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true33
  %cond36 = phi ptr [ %27, %cond.true33 ], [ %28, %cond.false34 ]
  call void @PyErr_SetString(ptr noundef %cond36, ptr noundef @.str.35)
  %29 = load ptr, ptr %exc29, align 8, !tbaa !4
  %30 = load ptr, ptr %val30, align 8, !tbaa !4
  %31 = load ptr, ptr %tb31, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb31) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val30) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc29) #5
  br label %if.end108

if.else37:                                        ; preds = %if.then18
  %32 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %call38 = call ptr @PyArray_DATA(ptr noundef %32)
  store ptr %call38, ptr %lower, align 8, !tbaa !4
  %33 = load i32, ptr %d, align 4, !tbaa !8
  %conv39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [1 x i64], ptr %upper_Dims, i64 0, i64 0
  store i64 %conv39, ptr %arrayidx40, align 8, !tbaa !19
  %34 = load i32, ptr %capi_upper_intent, align 4, !tbaa !8
  %or41 = or i32 %34, 1
  store i32 %or41, ptr %capi_upper_intent, align 4, !tbaa !8
  %arraydecay42 = getelementptr inbounds [1 x i64], ptr %upper_Dims, i64 0, i64 0
  %35 = load i32, ptr %capi_upper_intent, align 4, !tbaa !8
  %36 = load ptr, ptr %upper_capi, align 8, !tbaa !4
  %call43 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay42, i32 noundef 1, i32 noundef %35, ptr noundef %36)
  store ptr %call43, ptr %capi_upper_tmp, align 8, !tbaa !4
  %37 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %cmp44 = icmp eq ptr %37, null
  br i1 %cmp44, label %if.then46, label %if.else55

if.then46:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc47) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val48) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb49) #5
  call void @PyErr_Fetch(ptr noundef %exc47, ptr noundef %val48, ptr noundef %tb49)
  %38 = load ptr, ptr %exc47, align 8, !tbaa !4
  %tobool50 = icmp ne ptr %38, null
  br i1 %tobool50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.then46
  %39 = load ptr, ptr %exc47, align 8, !tbaa !4
  br label %cond.end53

cond.false52:                                     ; preds = %if.then46
  %40 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi ptr [ %39, %cond.true51 ], [ %40, %cond.false52 ]
  call void @PyErr_SetString(ptr noundef %cond54, ptr noundef @.str.36)
  %41 = load ptr, ptr %exc47, align 8, !tbaa !4
  %42 = load ptr, ptr %val48, align 8, !tbaa !4
  %43 = load ptr, ptr %tb49, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %41, ptr noundef %42, ptr noundef %43)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb49) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val48) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc47) #5
  br label %if.end103

if.else55:                                        ; preds = %if.else37
  %44 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %call56 = call ptr @PyArray_DATA(ptr noundef %44)
  store ptr %call56, ptr %upper, align 8, !tbaa !4
  %45 = load i32, ptr %d, align 4, !tbaa !8
  %conv57 = sext i32 %45 to i64
  %arrayidx58 = getelementptr inbounds [2 x i64], ptr %covar_Dims, i64 0, i64 0
  store i64 %conv57, ptr %arrayidx58, align 16, !tbaa !19
  %46 = load i32, ptr %d, align 4, !tbaa !8
  %conv59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds [2 x i64], ptr %covar_Dims, i64 0, i64 1
  store i64 %conv59, ptr %arrayidx60, align 8, !tbaa !19
  %47 = load i32, ptr %capi_covar_intent, align 4, !tbaa !8
  %or61 = or i32 %47, 1
  store i32 %or61, ptr %capi_covar_intent, align 4, !tbaa !8
  %arraydecay62 = getelementptr inbounds [2 x i64], ptr %covar_Dims, i64 0, i64 0
  %48 = load i32, ptr %capi_covar_intent, align 4, !tbaa !8
  %49 = load ptr, ptr %covar_capi, align 8, !tbaa !4
  %call63 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay62, i32 noundef 2, i32 noundef %48, ptr noundef %49)
  store ptr %call63, ptr %capi_covar_tmp, align 8, !tbaa !4
  %50 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  %cmp64 = icmp eq ptr %50, null
  br i1 %cmp64, label %if.then66, label %if.else75

if.then66:                                        ; preds = %if.else55
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc67) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val68) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb69) #5
  call void @PyErr_Fetch(ptr noundef %exc67, ptr noundef %val68, ptr noundef %tb69)
  %51 = load ptr, ptr %exc67, align 8, !tbaa !4
  %tobool70 = icmp ne ptr %51, null
  br i1 %tobool70, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %if.then66
  %52 = load ptr, ptr %exc67, align 8, !tbaa !4
  br label %cond.end73

cond.false72:                                     ; preds = %if.then66
  %53 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true71
  %cond74 = phi ptr [ %52, %cond.true71 ], [ %53, %cond.false72 ]
  call void @PyErr_SetString(ptr noundef %cond74, ptr noundef @.str.37)
  %54 = load ptr, ptr %exc67, align 8, !tbaa !4
  %55 = load ptr, ptr %val68, align 8, !tbaa !4
  %56 = load ptr, ptr %tb69, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb69) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val68) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc67) #5
  br label %if.end98

if.else75:                                        ; preds = %if.else55
  %57 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  %call76 = call ptr @PyArray_DATA(ptr noundef %57)
  store ptr %call76, ptr %covar, align 8, !tbaa !4
  %58 = load ptr, ptr %maxpts_capi, align 8, !tbaa !4
  %cmp77 = icmp eq ptr %58, @_Py_NoneStruct
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else75
  %59 = load i32, ptr %d, align 4, !tbaa !8
  %mul = mul nsw i32 %59, 1000
  store i32 %mul, ptr %maxpts, align 4, !tbaa !8
  br label %if.end82

if.else80:                                        ; preds = %if.else75
  %60 = load ptr, ptr %maxpts_capi, align 8, !tbaa !4
  %call81 = call i32 @int_from_pyobj(ptr noundef %maxpts, ptr noundef %60, ptr noundef @.str.38)
  store volatile i32 %call81, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then79
  %61 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool83 = icmp ne i32 %61, 0
  br i1 %tobool83, label %if.then84, label %if.end93

if.then84:                                        ; preds = %if.end82
  %62 = load ptr, ptr %f2py_func.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %lower, align 8, !tbaa !4
  %64 = load ptr, ptr %upper, align 8, !tbaa !4
  %65 = load ptr, ptr %means, align 8, !tbaa !4
  %66 = load ptr, ptr %covar, align 8, !tbaa !4
  call void %62(ptr noundef %d, ptr noundef %n, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %maxpts, ptr noundef %abseps, ptr noundef %releps, ptr noundef %value, ptr noundef %inform)
  %call85 = call ptr @PyErr_Occurred()
  %tobool86 = icmp ne ptr %call85, null
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  store volatile i32 0, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %67 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool89 = icmp ne i32 %67, 0
  br i1 %tobool89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end88
  %68 = load double, ptr %value, align 8, !tbaa !17
  %69 = load i32, ptr %inform, align 4, !tbaa !8
  %call91 = call ptr (ptr, ...) @_Py_BuildValue_SizeT(ptr noundef @.str.39, double noundef %68, i32 noundef %69)
  store volatile ptr %call91, ptr %capi_buildvalue, align 8, !tbaa !4
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end88
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end82
  %70 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  %71 = load ptr, ptr %covar_capi, align 8, !tbaa !4
  %cmp94 = icmp ne ptr %70, %71
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  %72 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %72)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %cond.end73
  %73 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %74 = load ptr, ptr %upper_capi, align 8, !tbaa !4
  %cmp99 = icmp ne ptr %73, %74
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end98
  %75 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %75)
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end98
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %cond.end53
  %76 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %77 = load ptr, ptr %lower_capi, align 8, !tbaa !4
  %cmp104 = icmp ne ptr %76, %77
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end103
  %78 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %78)
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end103
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %cond.end35
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end16
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end9
  %79 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  %80 = load ptr, ptr %means_capi, align 8, !tbaa !4
  %cmp111 = icmp ne ptr %79, %80
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end110
  %81 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %81)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end110
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %cond.end
  %82 = load volatile ptr, ptr %capi_buildvalue, align 8, !tbaa !4
  %cmp116 = icmp eq ptr %82, null
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.end115
  br label %if.end120

if.else119:                                       ; preds = %if.end115
  br label %if.end120

if.end120:                                        ; preds = %if.else119, %if.then118
  %83 = load volatile ptr, ptr %capi_buildvalue, align 8, !tbaa !4
  store ptr %83, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inform) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %releps_capi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %releps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abseps_capi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abseps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxpts_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxpts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %covar_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_covar_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_covar_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %covar_Rank) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %covar_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %covar) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %means_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_means_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_means_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %means_Rank) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %means_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %means) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_upper_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_upper_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_lower_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_lower_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %f2py_success) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_buildvalue) #5
  %84 = load ptr, ptr %retval, align 8
  ret ptr %84
}

declare void @mvnun_weighted_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @f2py_rout__mvn_mvnun_weighted(ptr noundef %capi_self, ptr noundef %capi_args, ptr noundef %capi_keywds, ptr noundef %f2py_func) #0 {
entry:
  %retval = alloca ptr, align 8
  %capi_self.addr = alloca ptr, align 8
  %capi_args.addr = alloca ptr, align 8
  %capi_keywds.addr = alloca ptr, align 8
  %f2py_func.addr = alloca ptr, align 8
  %capi_buildvalue = alloca ptr, align 8
  %f2py_success = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  %lower = alloca ptr, align 8
  %lower_Dims = alloca [1 x i64], align 8
  %lower_Rank = alloca i32, align 4
  %capi_lower_tmp = alloca ptr, align 8
  %capi_lower_intent = alloca i32, align 4
  %lower_capi = alloca ptr, align 8
  %upper = alloca ptr, align 8
  %upper_Dims = alloca [1 x i64], align 8
  %upper_Rank = alloca i32, align 4
  %capi_upper_tmp = alloca ptr, align 8
  %capi_upper_intent = alloca i32, align 4
  %upper_capi = alloca ptr, align 8
  %means = alloca ptr, align 8
  %means_Dims = alloca [2 x i64], align 16
  %means_Rank = alloca i32, align 4
  %capi_means_tmp = alloca ptr, align 8
  %capi_means_intent = alloca i32, align 4
  %means_capi = alloca ptr, align 8
  %weights = alloca ptr, align 8
  %weights_Dims = alloca [1 x i64], align 8
  %weights_Rank = alloca i32, align 4
  %capi_weights_tmp = alloca ptr, align 8
  %capi_weights_intent = alloca i32, align 4
  %weights_capi = alloca ptr, align 8
  %covar = alloca ptr, align 8
  %covar_Dims = alloca [2 x i64], align 16
  %covar_Rank = alloca i32, align 4
  %capi_covar_tmp = alloca ptr, align 8
  %capi_covar_intent = alloca i32, align 4
  %covar_capi = alloca ptr, align 8
  %maxpts = alloca i32, align 4
  %maxpts_capi = alloca ptr, align 8
  %abseps = alloca double, align 8
  %abseps_capi = alloca ptr, align 8
  %releps = alloca double, align 8
  %releps_capi = alloca ptr, align 8
  %value = alloca double, align 8
  %inform = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %exc = alloca ptr, align 8
  %val = alloca ptr, align 8
  %tb = alloca ptr, align 8
  %exc29 = alloca ptr, align 8
  %val30 = alloca ptr, align 8
  %tb31 = alloca ptr, align 8
  %exc47 = alloca ptr, align 8
  %val48 = alloca ptr, align 8
  %tb49 = alloca ptr, align 8
  %exc65 = alloca ptr, align 8
  %val66 = alloca ptr, align 8
  %tb67 = alloca ptr, align 8
  %exc85 = alloca ptr, align 8
  %val86 = alloca ptr, align 8
  %tb87 = alloca ptr, align 8
  store ptr %capi_self, ptr %capi_self.addr, align 8, !tbaa !4
  store ptr %capi_args, ptr %capi_args.addr, align 8, !tbaa !4
  store ptr %capi_keywds, ptr %capi_keywds.addr, align 8, !tbaa !4
  store ptr %f2py_func, ptr %f2py_func.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_buildvalue) #5
  store volatile ptr null, ptr %capi_buildvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %f2py_success) #5
  store volatile i32 1, ptr %f2py_success, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #5
  store i32 0, ptr %d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower) #5
  store ptr null, ptr %lower, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lower_Dims, ptr align 8 @__const.f2py_rout__mvn_mvnun_weighted.lower_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower_Rank) #5
  store i32 1, ptr %lower_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_lower_tmp) #5
  store ptr null, ptr %capi_lower_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_lower_intent) #5
  store i32 0, ptr %capi_lower_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_capi) #5
  store ptr @_Py_NoneStruct, ptr %lower_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #5
  store ptr null, ptr %upper, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %upper_Dims, ptr align 8 @__const.f2py_rout__mvn_mvnun_weighted.upper_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_Rank) #5
  store i32 1, ptr %upper_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_upper_tmp) #5
  store ptr null, ptr %capi_upper_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_upper_intent) #5
  store i32 0, ptr %capi_upper_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_capi) #5
  store ptr @_Py_NoneStruct, ptr %upper_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %means) #5
  store ptr null, ptr %means, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %means_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %means_Dims, ptr align 16 @__const.f2py_rout__mvn_mvnun_weighted.means_Dims, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %means_Rank) #5
  store i32 2, ptr %means_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_means_tmp) #5
  store ptr null, ptr %capi_means_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_means_intent) #5
  store i32 0, ptr %capi_means_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %means_capi) #5
  store ptr @_Py_NoneStruct, ptr %means_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %weights) #5
  store ptr null, ptr %weights, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %weights_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %weights_Dims, ptr align 8 @__const.f2py_rout__mvn_mvnun_weighted.weights_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %weights_Rank) #5
  store i32 1, ptr %weights_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_weights_tmp) #5
  store ptr null, ptr %capi_weights_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_weights_intent) #5
  store i32 0, ptr %capi_weights_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %weights_capi) #5
  store ptr @_Py_NoneStruct, ptr %weights_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %covar) #5
  store ptr null, ptr %covar, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %covar_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %covar_Dims, ptr align 16 @__const.f2py_rout__mvn_mvnun_weighted.covar_Dims, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %covar_Rank) #5
  store i32 2, ptr %covar_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_covar_tmp) #5
  store ptr null, ptr %capi_covar_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_covar_intent) #5
  store i32 0, ptr %capi_covar_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %covar_capi) #5
  store ptr @_Py_NoneStruct, ptr %covar_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxpts) #5
  store i32 0, ptr %maxpts, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxpts_capi) #5
  store ptr @_Py_NoneStruct, ptr %maxpts_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %abseps) #5
  store double 0.000000e+00, ptr %abseps, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %abseps_capi) #5
  store ptr @_Py_NoneStruct, ptr %abseps_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %releps) #5
  store double 0.000000e+00, ptr %releps, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %releps_capi) #5
  store ptr @_Py_NoneStruct, ptr %releps_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  store double 0.000000e+00, ptr %value, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %inform) #5
  store i32 0, ptr %inform, align 4, !tbaa !8
  %0 = load ptr, ptr %capi_args.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %capi_keywds.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ptr, ptr, ...) @_PyArg_ParseTupleAndKeywords_SizeT(ptr noundef %0, ptr noundef %1, ptr noundef @.str.43, ptr noundef @f2py_rout__mvn_mvnun_weighted.capi_kwlist, ptr noundef %lower_capi, ptr noundef %upper_capi, ptr noundef %means_capi, ptr noundef %weights_capi, ptr noundef %covar_capi, ptr noundef %maxpts_capi, ptr noundef %abseps_capi, ptr noundef %releps_capi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %capi_means_intent, align 4, !tbaa !8
  %or = or i32 %2, 1
  store i32 %or, ptr %capi_means_intent, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %means_Dims, i64 0, i64 0
  %3 = load i32, ptr %capi_means_intent, align 4, !tbaa !8
  %4 = load ptr, ptr %means_capi, align 8, !tbaa !4
  %call1 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay, i32 noundef 2, i32 noundef %3, ptr noundef %4)
  store ptr %call1, ptr %capi_means_tmp, align 8, !tbaa !4
  %5 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb) #5
  call void @PyErr_Fetch(ptr noundef %exc, ptr noundef %val, ptr noundef %tb)
  %6 = load ptr, ptr %exc, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %7 = load ptr, ptr %exc, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %8 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %8, %cond.false ]
  call void @PyErr_SetString(ptr noundef %cond, ptr noundef @.str.44)
  %9 = load ptr, ptr %exc, align 8, !tbaa !4
  %10 = load ptr, ptr %val, align 8, !tbaa !4
  %11 = load ptr, ptr %tb, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc) #5
  br label %if.end138

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  %call4 = call ptr @PyArray_DATA(ptr noundef %12)
  store ptr %call4, ptr %means, align 8, !tbaa !4
  %13 = load ptr, ptr %abseps_capi, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %13, @_Py_NoneStruct
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store double 0x3EB0C6F7A0B5ED8D, ptr %abseps, align 8, !tbaa !17
  br label %if.end9

if.else7:                                         ; preds = %if.else
  %14 = load ptr, ptr %abseps_capi, align 8, !tbaa !4
  %call8 = call i32 @double_from_pyobj(ptr noundef %abseps, ptr noundef %14, ptr noundef @.str.45)
  store volatile i32 %call8, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6
  %15 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then11, label %if.end133

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %releps_capi, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %16, @_Py_NoneStruct
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.then11
  store double 0x3EB0C6F7A0B5ED8D, ptr %releps, align 8, !tbaa !17
  br label %if.end16

if.else14:                                        ; preds = %if.then11
  %17 = load ptr, ptr %releps_capi, align 8, !tbaa !4
  %call15 = call i32 @double_from_pyobj(ptr noundef %releps, ptr noundef %17, ptr noundef @.str.46)
  store volatile i32 %call15, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %18 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.then18, label %if.end132

if.then18:                                        ; preds = %if.end16
  %arrayidx = getelementptr inbounds [2 x i64], ptr %means_Dims, i64 0, i64 0
  %19 = load i64, ptr %arrayidx, align 16, !tbaa !19
  %conv = trunc i64 %19 to i32
  store i32 %conv, ptr %d, align 4, !tbaa !8
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %means_Dims, i64 0, i64 1
  %20 = load i64, ptr %arrayidx19, align 8, !tbaa !19
  %conv20 = trunc i64 %20 to i32
  store i32 %conv20, ptr %n, align 4, !tbaa !8
  %21 = load i32, ptr %d, align 4, !tbaa !8
  %conv21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [1 x i64], ptr %lower_Dims, i64 0, i64 0
  store i64 %conv21, ptr %arrayidx22, align 8, !tbaa !19
  %22 = load i32, ptr %capi_lower_intent, align 4, !tbaa !8
  %or23 = or i32 %22, 1
  store i32 %or23, ptr %capi_lower_intent, align 4, !tbaa !8
  %arraydecay24 = getelementptr inbounds [1 x i64], ptr %lower_Dims, i64 0, i64 0
  %23 = load i32, ptr %capi_lower_intent, align 4, !tbaa !8
  %24 = load ptr, ptr %lower_capi, align 8, !tbaa !4
  %call25 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay24, i32 noundef 1, i32 noundef %23, ptr noundef %24)
  store ptr %call25, ptr %capi_lower_tmp, align 8, !tbaa !4
  %25 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %cmp26 = icmp eq ptr %25, null
  br i1 %cmp26, label %if.then28, label %if.else37

if.then28:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc29) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val30) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb31) #5
  call void @PyErr_Fetch(ptr noundef %exc29, ptr noundef %val30, ptr noundef %tb31)
  %26 = load ptr, ptr %exc29, align 8, !tbaa !4
  %tobool32 = icmp ne ptr %26, null
  br i1 %tobool32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %if.then28
  %27 = load ptr, ptr %exc29, align 8, !tbaa !4
  br label %cond.end35

cond.false34:                                     ; preds = %if.then28
  %28 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true33
  %cond36 = phi ptr [ %27, %cond.true33 ], [ %28, %cond.false34 ]
  call void @PyErr_SetString(ptr noundef %cond36, ptr noundef @.str.47)
  %29 = load ptr, ptr %exc29, align 8, !tbaa !4
  %30 = load ptr, ptr %val30, align 8, !tbaa !4
  %31 = load ptr, ptr %tb31, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb31) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val30) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc29) #5
  br label %if.end131

if.else37:                                        ; preds = %if.then18
  %32 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %call38 = call ptr @PyArray_DATA(ptr noundef %32)
  store ptr %call38, ptr %lower, align 8, !tbaa !4
  %33 = load i32, ptr %d, align 4, !tbaa !8
  %conv39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [1 x i64], ptr %upper_Dims, i64 0, i64 0
  store i64 %conv39, ptr %arrayidx40, align 8, !tbaa !19
  %34 = load i32, ptr %capi_upper_intent, align 4, !tbaa !8
  %or41 = or i32 %34, 1
  store i32 %or41, ptr %capi_upper_intent, align 4, !tbaa !8
  %arraydecay42 = getelementptr inbounds [1 x i64], ptr %upper_Dims, i64 0, i64 0
  %35 = load i32, ptr %capi_upper_intent, align 4, !tbaa !8
  %36 = load ptr, ptr %upper_capi, align 8, !tbaa !4
  %call43 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay42, i32 noundef 1, i32 noundef %35, ptr noundef %36)
  store ptr %call43, ptr %capi_upper_tmp, align 8, !tbaa !4
  %37 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %cmp44 = icmp eq ptr %37, null
  br i1 %cmp44, label %if.then46, label %if.else55

if.then46:                                        ; preds = %if.else37
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc47) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val48) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb49) #5
  call void @PyErr_Fetch(ptr noundef %exc47, ptr noundef %val48, ptr noundef %tb49)
  %38 = load ptr, ptr %exc47, align 8, !tbaa !4
  %tobool50 = icmp ne ptr %38, null
  br i1 %tobool50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.then46
  %39 = load ptr, ptr %exc47, align 8, !tbaa !4
  br label %cond.end53

cond.false52:                                     ; preds = %if.then46
  %40 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi ptr [ %39, %cond.true51 ], [ %40, %cond.false52 ]
  call void @PyErr_SetString(ptr noundef %cond54, ptr noundef @.str.48)
  %41 = load ptr, ptr %exc47, align 8, !tbaa !4
  %42 = load ptr, ptr %val48, align 8, !tbaa !4
  %43 = load ptr, ptr %tb49, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %41, ptr noundef %42, ptr noundef %43)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb49) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val48) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc47) #5
  br label %if.end126

if.else55:                                        ; preds = %if.else37
  %44 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %call56 = call ptr @PyArray_DATA(ptr noundef %44)
  store ptr %call56, ptr %upper, align 8, !tbaa !4
  %45 = load i32, ptr %n, align 4, !tbaa !8
  %conv57 = sext i32 %45 to i64
  %arrayidx58 = getelementptr inbounds [1 x i64], ptr %weights_Dims, i64 0, i64 0
  store i64 %conv57, ptr %arrayidx58, align 8, !tbaa !19
  %46 = load i32, ptr %capi_weights_intent, align 4, !tbaa !8
  %or59 = or i32 %46, 1
  store i32 %or59, ptr %capi_weights_intent, align 4, !tbaa !8
  %arraydecay60 = getelementptr inbounds [1 x i64], ptr %weights_Dims, i64 0, i64 0
  %47 = load i32, ptr %capi_weights_intent, align 4, !tbaa !8
  %48 = load ptr, ptr %weights_capi, align 8, !tbaa !4
  %call61 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay60, i32 noundef 1, i32 noundef %47, ptr noundef %48)
  store ptr %call61, ptr %capi_weights_tmp, align 8, !tbaa !4
  %49 = load ptr, ptr %capi_weights_tmp, align 8, !tbaa !4
  %cmp62 = icmp eq ptr %49, null
  br i1 %cmp62, label %if.then64, label %if.else73

if.then64:                                        ; preds = %if.else55
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc65) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val66) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb67) #5
  call void @PyErr_Fetch(ptr noundef %exc65, ptr noundef %val66, ptr noundef %tb67)
  %50 = load ptr, ptr %exc65, align 8, !tbaa !4
  %tobool68 = icmp ne ptr %50, null
  br i1 %tobool68, label %cond.true69, label %cond.false70

cond.true69:                                      ; preds = %if.then64
  %51 = load ptr, ptr %exc65, align 8, !tbaa !4
  br label %cond.end71

cond.false70:                                     ; preds = %if.then64
  %52 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false70, %cond.true69
  %cond72 = phi ptr [ %51, %cond.true69 ], [ %52, %cond.false70 ]
  call void @PyErr_SetString(ptr noundef %cond72, ptr noundef @.str.49)
  %53 = load ptr, ptr %exc65, align 8, !tbaa !4
  %54 = load ptr, ptr %val66, align 8, !tbaa !4
  %55 = load ptr, ptr %tb67, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %53, ptr noundef %54, ptr noundef %55)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb67) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val66) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc65) #5
  br label %if.end121

if.else73:                                        ; preds = %if.else55
  %56 = load ptr, ptr %capi_weights_tmp, align 8, !tbaa !4
  %call74 = call ptr @PyArray_DATA(ptr noundef %56)
  store ptr %call74, ptr %weights, align 8, !tbaa !4
  %57 = load i32, ptr %d, align 4, !tbaa !8
  %conv75 = sext i32 %57 to i64
  %arrayidx76 = getelementptr inbounds [2 x i64], ptr %covar_Dims, i64 0, i64 0
  store i64 %conv75, ptr %arrayidx76, align 16, !tbaa !19
  %58 = load i32, ptr %d, align 4, !tbaa !8
  %conv77 = sext i32 %58 to i64
  %arrayidx78 = getelementptr inbounds [2 x i64], ptr %covar_Dims, i64 0, i64 1
  store i64 %conv77, ptr %arrayidx78, align 8, !tbaa !19
  %59 = load i32, ptr %capi_covar_intent, align 4, !tbaa !8
  %or79 = or i32 %59, 1
  store i32 %or79, ptr %capi_covar_intent, align 4, !tbaa !8
  %arraydecay80 = getelementptr inbounds [2 x i64], ptr %covar_Dims, i64 0, i64 0
  %60 = load i32, ptr %capi_covar_intent, align 4, !tbaa !8
  %61 = load ptr, ptr %covar_capi, align 8, !tbaa !4
  %call81 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay80, i32 noundef 2, i32 noundef %60, ptr noundef %61)
  store ptr %call81, ptr %capi_covar_tmp, align 8, !tbaa !4
  %62 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  %cmp82 = icmp eq ptr %62, null
  br i1 %cmp82, label %if.then84, label %if.else93

if.then84:                                        ; preds = %if.else73
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc85) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val86) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb87) #5
  call void @PyErr_Fetch(ptr noundef %exc85, ptr noundef %val86, ptr noundef %tb87)
  %63 = load ptr, ptr %exc85, align 8, !tbaa !4
  %tobool88 = icmp ne ptr %63, null
  br i1 %tobool88, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %if.then84
  %64 = load ptr, ptr %exc85, align 8, !tbaa !4
  br label %cond.end91

cond.false90:                                     ; preds = %if.then84
  %65 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false90, %cond.true89
  %cond92 = phi ptr [ %64, %cond.true89 ], [ %65, %cond.false90 ]
  call void @PyErr_SetString(ptr noundef %cond92, ptr noundef @.str.50)
  %66 = load ptr, ptr %exc85, align 8, !tbaa !4
  %67 = load ptr, ptr %val86, align 8, !tbaa !4
  %68 = load ptr, ptr %tb87, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %66, ptr noundef %67, ptr noundef %68)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb87) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val86) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc85) #5
  br label %if.end116

if.else93:                                        ; preds = %if.else73
  %69 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  %call94 = call ptr @PyArray_DATA(ptr noundef %69)
  store ptr %call94, ptr %covar, align 8, !tbaa !4
  %70 = load ptr, ptr %maxpts_capi, align 8, !tbaa !4
  %cmp95 = icmp eq ptr %70, @_Py_NoneStruct
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.else93
  %71 = load i32, ptr %d, align 4, !tbaa !8
  %mul = mul nsw i32 %71, 1000
  store i32 %mul, ptr %maxpts, align 4, !tbaa !8
  br label %if.end100

if.else98:                                        ; preds = %if.else93
  %72 = load ptr, ptr %maxpts_capi, align 8, !tbaa !4
  %call99 = call i32 @int_from_pyobj(ptr noundef %maxpts, ptr noundef %72, ptr noundef @.str.51)
  store volatile i32 %call99, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end100

if.end100:                                        ; preds = %if.else98, %if.then97
  %73 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool101 = icmp ne i32 %73, 0
  br i1 %tobool101, label %if.then102, label %if.end111

if.then102:                                       ; preds = %if.end100
  %74 = load ptr, ptr %f2py_func.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %lower, align 8, !tbaa !4
  %76 = load ptr, ptr %upper, align 8, !tbaa !4
  %77 = load ptr, ptr %means, align 8, !tbaa !4
  %78 = load ptr, ptr %weights, align 8, !tbaa !4
  %79 = load ptr, ptr %covar, align 8, !tbaa !4
  call void %74(ptr noundef %d, ptr noundef %n, ptr noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %maxpts, ptr noundef %abseps, ptr noundef %releps, ptr noundef %value, ptr noundef %inform)
  %call103 = call ptr @PyErr_Occurred()
  %tobool104 = icmp ne ptr %call103, null
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then102
  store volatile i32 0, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.then102
  %80 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool107 = icmp ne i32 %80, 0
  br i1 %tobool107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end106
  %81 = load double, ptr %value, align 8, !tbaa !17
  %82 = load i32, ptr %inform, align 4, !tbaa !8
  %call109 = call ptr (ptr, ...) @_Py_BuildValue_SizeT(ptr noundef @.str.39, double noundef %81, i32 noundef %82)
  store volatile ptr %call109, ptr %capi_buildvalue, align 8, !tbaa !4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end106
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end100
  %83 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  %84 = load ptr, ptr %covar_capi, align 8, !tbaa !4
  %cmp112 = icmp ne ptr %83, %84
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end111
  %85 = load ptr, ptr %capi_covar_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %85)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end111
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %cond.end91
  %86 = load ptr, ptr %capi_weights_tmp, align 8, !tbaa !4
  %87 = load ptr, ptr %weights_capi, align 8, !tbaa !4
  %cmp117 = icmp ne ptr %86, %87
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  %88 = load ptr, ptr %capi_weights_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %88)
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end116
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %cond.end71
  %89 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %90 = load ptr, ptr %upper_capi, align 8, !tbaa !4
  %cmp122 = icmp ne ptr %89, %90
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end121
  %91 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %91)
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end121
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %cond.end53
  %92 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %93 = load ptr, ptr %lower_capi, align 8, !tbaa !4
  %cmp127 = icmp ne ptr %92, %93
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  %94 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %94)
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %cond.end35
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end16
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end9
  %95 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  %96 = load ptr, ptr %means_capi, align 8, !tbaa !4
  %cmp134 = icmp ne ptr %95, %96
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  %97 = load ptr, ptr %capi_means_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %97)
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %cond.end
  %98 = load volatile ptr, ptr %capi_buildvalue, align 8, !tbaa !4
  %cmp139 = icmp eq ptr %98, null
  br i1 %cmp139, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.end138
  br label %if.end143

if.else142:                                       ; preds = %if.end138
  br label %if.end143

if.end143:                                        ; preds = %if.else142, %if.then141
  %99 = load volatile ptr, ptr %capi_buildvalue, align 8, !tbaa !4
  store ptr %99, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inform) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %releps_capi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %releps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abseps_capi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abseps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxpts_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxpts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %covar_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_covar_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_covar_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %covar_Rank) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %covar_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %covar) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %weights_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_weights_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_weights_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %weights_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %weights_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %weights) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %means_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_means_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_means_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %means_Rank) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %means_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %means) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_upper_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_upper_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_lower_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_lower_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %f2py_success) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_buildvalue) #5
  %100 = load ptr, ptr %retval, align 8
  ret ptr %100
}

declare void @mvndst_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @f2py_rout__mvn_mvndst(ptr noundef %capi_self, ptr noundef %capi_args, ptr noundef %capi_keywds, ptr noundef %f2py_func) #0 {
entry:
  %retval = alloca ptr, align 8
  %capi_self.addr = alloca ptr, align 8
  %capi_args.addr = alloca ptr, align 8
  %capi_keywds.addr = alloca ptr, align 8
  %f2py_func.addr = alloca ptr, align 8
  %capi_buildvalue = alloca ptr, align 8
  %f2py_success = alloca i32, align 4
  %n = alloca i32, align 4
  %lower = alloca ptr, align 8
  %lower_Dims = alloca [1 x i64], align 8
  %lower_Rank = alloca i32, align 4
  %capi_lower_tmp = alloca ptr, align 8
  %capi_lower_intent = alloca i32, align 4
  %lower_capi = alloca ptr, align 8
  %upper = alloca ptr, align 8
  %upper_Dims = alloca [1 x i64], align 8
  %upper_Rank = alloca i32, align 4
  %capi_upper_tmp = alloca ptr, align 8
  %capi_upper_intent = alloca i32, align 4
  %upper_capi = alloca ptr, align 8
  %infin = alloca ptr, align 8
  %infin_Dims = alloca [1 x i64], align 8
  %infin_Rank = alloca i32, align 4
  %capi_infin_tmp = alloca ptr, align 8
  %capi_infin_intent = alloca i32, align 4
  %infin_capi = alloca ptr, align 8
  %correl = alloca ptr, align 8
  %correl_Dims = alloca [1 x i64], align 8
  %correl_Rank = alloca i32, align 4
  %capi_correl_tmp = alloca ptr, align 8
  %capi_correl_intent = alloca i32, align 4
  %correl_capi = alloca ptr, align 8
  %maxpts = alloca i32, align 4
  %maxpts_capi = alloca ptr, align 8
  %abseps = alloca double, align 8
  %abseps_capi = alloca ptr, align 8
  %releps = alloca double, align 8
  %releps_capi = alloca ptr, align 8
  %error = alloca double, align 8
  %value = alloca double, align 8
  %inform = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %exc = alloca ptr, align 8
  %val = alloca ptr, align 8
  %tb = alloca ptr, align 8
  %exc34 = alloca ptr, align 8
  %val35 = alloca ptr, align 8
  %tb36 = alloca ptr, align 8
  %exc52 = alloca ptr, align 8
  %val53 = alloca ptr, align 8
  %tb54 = alloca ptr, align 8
  %exc70 = alloca ptr, align 8
  %val71 = alloca ptr, align 8
  %tb72 = alloca ptr, align 8
  store ptr %capi_self, ptr %capi_self.addr, align 8, !tbaa !4
  store ptr %capi_args, ptr %capi_args.addr, align 8, !tbaa !4
  store ptr %capi_keywds, ptr %capi_keywds.addr, align 8, !tbaa !4
  store ptr %f2py_func, ptr %f2py_func.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_buildvalue) #5
  store volatile ptr null, ptr %capi_buildvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %f2py_success) #5
  store volatile i32 1, ptr %f2py_success, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower) #5
  store ptr null, ptr %lower, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lower_Dims, ptr align 8 @__const.f2py_rout__mvn_mvndst.lower_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower_Rank) #5
  store i32 1, ptr %lower_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_lower_tmp) #5
  store ptr null, ptr %capi_lower_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_lower_intent) #5
  store i32 0, ptr %capi_lower_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lower_capi) #5
  store ptr @_Py_NoneStruct, ptr %lower_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #5
  store ptr null, ptr %upper, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %upper_Dims, ptr align 8 @__const.f2py_rout__mvn_mvndst.upper_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_Rank) #5
  store i32 1, ptr %upper_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_upper_tmp) #5
  store ptr null, ptr %capi_upper_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_upper_intent) #5
  store i32 0, ptr %capi_upper_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper_capi) #5
  store ptr @_Py_NoneStruct, ptr %upper_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %infin) #5
  store ptr null, ptr %infin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %infin_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %infin_Dims, ptr align 8 @__const.f2py_rout__mvn_mvndst.infin_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %infin_Rank) #5
  store i32 1, ptr %infin_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_infin_tmp) #5
  store ptr null, ptr %capi_infin_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_infin_intent) #5
  store i32 0, ptr %capi_infin_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %infin_capi) #5
  store ptr @_Py_NoneStruct, ptr %infin_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %correl) #5
  store ptr null, ptr %correl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %correl_Dims) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %correl_Dims, ptr align 8 @__const.f2py_rout__mvn_mvndst.correl_Dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %correl_Rank) #5
  store i32 1, ptr %correl_Rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %capi_correl_tmp) #5
  store ptr null, ptr %capi_correl_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %capi_correl_intent) #5
  store i32 0, ptr %capi_correl_intent, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %correl_capi) #5
  store ptr @_Py_NoneStruct, ptr %correl_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxpts) #5
  store i32 0, ptr %maxpts, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxpts_capi) #5
  store ptr @_Py_NoneStruct, ptr %maxpts_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %abseps) #5
  store double 0.000000e+00, ptr %abseps, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %abseps_capi) #5
  store ptr @_Py_NoneStruct, ptr %abseps_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %releps) #5
  store double 0.000000e+00, ptr %releps, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %releps_capi) #5
  store ptr @_Py_NoneStruct, ptr %releps_capi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %error) #5
  store double 0.000000e+00, ptr %error, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  store double 0.000000e+00, ptr %value, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %inform) #5
  store i32 0, ptr %inform, align 4, !tbaa !8
  %0 = load ptr, ptr %capi_args.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %capi_keywds.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ptr, ptr, ...) @_PyArg_ParseTupleAndKeywords_SizeT(ptr noundef %0, ptr noundef %1, ptr noundef @.str.54, ptr noundef @f2py_rout__mvn_mvndst.capi_kwlist, ptr noundef %lower_capi, ptr noundef %upper_capi, ptr noundef %infin_capi, ptr noundef %correl_capi, ptr noundef %maxpts_capi, ptr noundef %abseps_capi, ptr noundef %releps_capi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %capi_lower_intent, align 4, !tbaa !8
  %or = or i32 %2, 1
  store i32 %or, ptr %capi_lower_intent, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [1 x i64], ptr %lower_Dims, i64 0, i64 0
  %3 = load i32, ptr %capi_lower_intent, align 4, !tbaa !8
  %4 = load ptr, ptr %lower_capi, align 8, !tbaa !4
  %call1 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay, i32 noundef 1, i32 noundef %3, ptr noundef %4)
  store ptr %call1, ptr %capi_lower_tmp, align 8, !tbaa !4
  %5 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb) #5
  call void @PyErr_Fetch(ptr noundef %exc, ptr noundef %val, ptr noundef %tb)
  %6 = load ptr, ptr %exc, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %7 = load ptr, ptr %exc, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %8 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %8, %cond.false ]
  call void @PyErr_SetString(ptr noundef %cond, ptr noundef @.str.55)
  %9 = load ptr, ptr %exc, align 8, !tbaa !4
  %10 = load ptr, ptr %val, align 8, !tbaa !4
  %11 = load ptr, ptr %tb, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc) #5
  br label %if.end110

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %call4 = call ptr @PyArray_DATA(ptr noundef %12)
  store ptr %call4, ptr %lower, align 8, !tbaa !4
  %13 = load ptr, ptr %maxpts_capi, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %13, @_Py_NoneStruct
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 2000, ptr %maxpts, align 4, !tbaa !8
  br label %if.end9

if.else7:                                         ; preds = %if.else
  %14 = load ptr, ptr %maxpts_capi, align 8, !tbaa !4
  %call8 = call i32 @int_from_pyobj(ptr noundef %maxpts, ptr noundef %14, ptr noundef @.str.56)
  store volatile i32 %call8, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6
  %15 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then11, label %if.end105

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %abseps_capi, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %16, @_Py_NoneStruct
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.then11
  store double 0x3EB0C6F7A0B5ED8D, ptr %abseps, align 8, !tbaa !17
  br label %if.end16

if.else14:                                        ; preds = %if.then11
  %17 = load ptr, ptr %abseps_capi, align 8, !tbaa !4
  %call15 = call i32 @double_from_pyobj(ptr noundef %abseps, ptr noundef %17, ptr noundef @.str.57)
  store volatile i32 %call15, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %18 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.then18, label %if.end104

if.then18:                                        ; preds = %if.end16
  %19 = load ptr, ptr %releps_capi, align 8, !tbaa !4
  %cmp19 = icmp eq ptr %19, @_Py_NoneStruct
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.then18
  store double 0x3EB0C6F7A0B5ED8D, ptr %releps, align 8, !tbaa !17
  br label %if.end23

if.else21:                                        ; preds = %if.then18
  %20 = load ptr, ptr %releps_capi, align 8, !tbaa !4
  %call22 = call i32 @double_from_pyobj(ptr noundef %releps, ptr noundef %20, ptr noundef @.str.58)
  store volatile i32 %call22, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then20
  %21 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool24 = icmp ne i32 %21, 0
  br i1 %tobool24, label %if.then25, label %if.end103

if.then25:                                        ; preds = %if.end23
  %arrayidx = getelementptr inbounds [1 x i64], ptr %lower_Dims, i64 0, i64 0
  %22 = load i64, ptr %arrayidx, align 8, !tbaa !19
  %conv = trunc i64 %22 to i32
  store i32 %conv, ptr %n, align 4, !tbaa !8
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %conv26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [1 x i64], ptr %upper_Dims, i64 0, i64 0
  store i64 %conv26, ptr %arrayidx27, align 8, !tbaa !19
  %24 = load i32, ptr %capi_upper_intent, align 4, !tbaa !8
  %or28 = or i32 %24, 1
  store i32 %or28, ptr %capi_upper_intent, align 4, !tbaa !8
  %arraydecay29 = getelementptr inbounds [1 x i64], ptr %upper_Dims, i64 0, i64 0
  %25 = load i32, ptr %capi_upper_intent, align 4, !tbaa !8
  %26 = load ptr, ptr %upper_capi, align 8, !tbaa !4
  %call30 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay29, i32 noundef 1, i32 noundef %25, ptr noundef %26)
  store ptr %call30, ptr %capi_upper_tmp, align 8, !tbaa !4
  %27 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %cmp31 = icmp eq ptr %27, null
  br i1 %cmp31, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc34) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val35) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb36) #5
  call void @PyErr_Fetch(ptr noundef %exc34, ptr noundef %val35, ptr noundef %tb36)
  %28 = load ptr, ptr %exc34, align 8, !tbaa !4
  %tobool37 = icmp ne ptr %28, null
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %if.then33
  %29 = load ptr, ptr %exc34, align 8, !tbaa !4
  br label %cond.end40

cond.false39:                                     ; preds = %if.then33
  %30 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi ptr [ %29, %cond.true38 ], [ %30, %cond.false39 ]
  call void @PyErr_SetString(ptr noundef %cond41, ptr noundef @.str.59)
  %31 = load ptr, ptr %exc34, align 8, !tbaa !4
  %32 = load ptr, ptr %val35, align 8, !tbaa !4
  %33 = load ptr, ptr %tb36, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %31, ptr noundef %32, ptr noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb36) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val35) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc34) #5
  br label %if.end102

if.else42:                                        ; preds = %if.then25
  %34 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %call43 = call ptr @PyArray_DATA(ptr noundef %34)
  store ptr %call43, ptr %upper, align 8, !tbaa !4
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %conv44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [1 x i64], ptr %infin_Dims, i64 0, i64 0
  store i64 %conv44, ptr %arrayidx45, align 8, !tbaa !19
  %36 = load i32, ptr %capi_infin_intent, align 4, !tbaa !8
  %or46 = or i32 %36, 1
  store i32 %or46, ptr %capi_infin_intent, align 4, !tbaa !8
  %arraydecay47 = getelementptr inbounds [1 x i64], ptr %infin_Dims, i64 0, i64 0
  %37 = load i32, ptr %capi_infin_intent, align 4, !tbaa !8
  %38 = load ptr, ptr %infin_capi, align 8, !tbaa !4
  %call48 = call ptr @array_from_pyobj(i32 noundef 5, ptr noundef %arraydecay47, i32 noundef 1, i32 noundef %37, ptr noundef %38)
  store ptr %call48, ptr %capi_infin_tmp, align 8, !tbaa !4
  %39 = load ptr, ptr %capi_infin_tmp, align 8, !tbaa !4
  %cmp49 = icmp eq ptr %39, null
  br i1 %cmp49, label %if.then51, label %if.else60

if.then51:                                        ; preds = %if.else42
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc52) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val53) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb54) #5
  call void @PyErr_Fetch(ptr noundef %exc52, ptr noundef %val53, ptr noundef %tb54)
  %40 = load ptr, ptr %exc52, align 8, !tbaa !4
  %tobool55 = icmp ne ptr %40, null
  br i1 %tobool55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %if.then51
  %41 = load ptr, ptr %exc52, align 8, !tbaa !4
  br label %cond.end58

cond.false57:                                     ; preds = %if.then51
  %42 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi ptr [ %41, %cond.true56 ], [ %42, %cond.false57 ]
  call void @PyErr_SetString(ptr noundef %cond59, ptr noundef @.str.60)
  %43 = load ptr, ptr %exc52, align 8, !tbaa !4
  %44 = load ptr, ptr %val53, align 8, !tbaa !4
  %45 = load ptr, ptr %tb54, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %43, ptr noundef %44, ptr noundef %45)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb54) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val53) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc52) #5
  br label %if.end97

if.else60:                                        ; preds = %if.else42
  %46 = load ptr, ptr %capi_infin_tmp, align 8, !tbaa !4
  %call61 = call ptr @PyArray_DATA(ptr noundef %46)
  store ptr %call61, ptr %infin, align 8, !tbaa !4
  %47 = load i32, ptr %n, align 4, !tbaa !8
  %sub = sub nsw i32 0, %47
  %48 = load i32, ptr %n, align 4, !tbaa !8
  %49 = load i32, ptr %n, align 4, !tbaa !8
  %mul = mul nsw i32 %48, %49
  %add = add nsw i32 %sub, %mul
  %div = sdiv i32 %add, 2
  %conv62 = sext i32 %div to i64
  %arrayidx63 = getelementptr inbounds [1 x i64], ptr %correl_Dims, i64 0, i64 0
  store i64 %conv62, ptr %arrayidx63, align 8, !tbaa !19
  %50 = load i32, ptr %capi_correl_intent, align 4, !tbaa !8
  %or64 = or i32 %50, 1
  store i32 %or64, ptr %capi_correl_intent, align 4, !tbaa !8
  %arraydecay65 = getelementptr inbounds [1 x i64], ptr %correl_Dims, i64 0, i64 0
  %51 = load i32, ptr %capi_correl_intent, align 4, !tbaa !8
  %52 = load ptr, ptr %correl_capi, align 8, !tbaa !4
  %call66 = call ptr @array_from_pyobj(i32 noundef 12, ptr noundef %arraydecay65, i32 noundef 1, i32 noundef %51, ptr noundef %52)
  store ptr %call66, ptr %capi_correl_tmp, align 8, !tbaa !4
  %53 = load ptr, ptr %capi_correl_tmp, align 8, !tbaa !4
  %cmp67 = icmp eq ptr %53, null
  br i1 %cmp67, label %if.then69, label %if.else78

if.then69:                                        ; preds = %if.else60
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc70) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val71) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb72) #5
  call void @PyErr_Fetch(ptr noundef %exc70, ptr noundef %val71, ptr noundef %tb72)
  %54 = load ptr, ptr %exc70, align 8, !tbaa !4
  %tobool73 = icmp ne ptr %54, null
  br i1 %tobool73, label %cond.true74, label %cond.false75

cond.true74:                                      ; preds = %if.then69
  %55 = load ptr, ptr %exc70, align 8, !tbaa !4
  br label %cond.end76

cond.false75:                                     ; preds = %if.then69
  %56 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false75, %cond.true74
  %cond77 = phi ptr [ %55, %cond.true74 ], [ %56, %cond.false75 ]
  call void @PyErr_SetString(ptr noundef %cond77, ptr noundef @.str.61)
  %57 = load ptr, ptr %exc70, align 8, !tbaa !4
  %58 = load ptr, ptr %val71, align 8, !tbaa !4
  %59 = load ptr, ptr %tb72, align 8, !tbaa !4
  call void @npy_PyErr_ChainExceptionsCause(ptr noundef %57, ptr noundef %58, ptr noundef %59)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb72) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val71) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc70) #5
  br label %if.end92

if.else78:                                        ; preds = %if.else60
  %60 = load ptr, ptr %capi_correl_tmp, align 8, !tbaa !4
  %call79 = call ptr @PyArray_DATA(ptr noundef %60)
  store ptr %call79, ptr %correl, align 8, !tbaa !4
  %61 = load ptr, ptr %f2py_func.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %lower, align 8, !tbaa !4
  %63 = load ptr, ptr %upper, align 8, !tbaa !4
  %64 = load ptr, ptr %infin, align 8, !tbaa !4
  %65 = load ptr, ptr %correl, align 8, !tbaa !4
  call void %61(ptr noundef %n, ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %maxpts, ptr noundef %abseps, ptr noundef %releps, ptr noundef %error, ptr noundef %value, ptr noundef %inform)
  %call80 = call ptr @PyErr_Occurred()
  %tobool81 = icmp ne ptr %call80, null
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.else78
  store volatile i32 0, ptr %f2py_success, align 4, !tbaa !8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.else78
  %66 = load volatile i32, ptr %f2py_success, align 4, !tbaa !8
  %tobool84 = icmp ne i32 %66, 0
  br i1 %tobool84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %if.end83
  %67 = load double, ptr %error, align 8, !tbaa !17
  %68 = load double, ptr %value, align 8, !tbaa !17
  %69 = load i32, ptr %inform, align 4, !tbaa !8
  %call86 = call ptr (ptr, ...) @_Py_BuildValue_SizeT(ptr noundef @.str.62, double noundef %67, double noundef %68, i32 noundef %69)
  store volatile ptr %call86, ptr %capi_buildvalue, align 8, !tbaa !4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end83
  %70 = load ptr, ptr %capi_correl_tmp, align 8, !tbaa !4
  %71 = load ptr, ptr %correl_capi, align 8, !tbaa !4
  %cmp88 = icmp ne ptr %70, %71
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end87
  %72 = load ptr, ptr %capi_correl_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %72)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end87
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %cond.end76
  %73 = load ptr, ptr %capi_infin_tmp, align 8, !tbaa !4
  %74 = load ptr, ptr %infin_capi, align 8, !tbaa !4
  %cmp93 = icmp ne ptr %73, %74
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  %75 = load ptr, ptr %capi_infin_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %75)
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end92
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %cond.end58
  %76 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  %77 = load ptr, ptr %upper_capi, align 8, !tbaa !4
  %cmp98 = icmp ne ptr %76, %77
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end97
  %78 = load ptr, ptr %capi_upper_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %78)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end97
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %cond.end40
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end23
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end16
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end9
  %79 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  %80 = load ptr, ptr %lower_capi, align 8, !tbaa !4
  %cmp106 = icmp ne ptr %79, %80
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  %81 = load ptr, ptr %capi_lower_tmp, align 8, !tbaa !4
  call void @Py_XDECREF(ptr noundef %81)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end105
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %cond.end
  %82 = load volatile ptr, ptr %capi_buildvalue, align 8, !tbaa !4
  %cmp111 = icmp eq ptr %82, null
  br i1 %cmp111, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.end110
  br label %if.end115

if.else114:                                       ; preds = %if.end110
  br label %if.end115

if.end115:                                        ; preds = %if.else114, %if.then113
  %83 = load volatile ptr, ptr %capi_buildvalue, align 8, !tbaa !4
  store ptr %83, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %inform) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %error) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %releps_capi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %releps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abseps_capi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abseps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxpts_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxpts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %correl_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_correl_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_correl_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %correl_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %correl_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %correl) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %infin_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_infin_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_infin_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %infin_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %infin_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %infin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_upper_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_upper_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_capi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %capi_lower_intent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_lower_tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower_Rank) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower_Dims) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lower) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %f2py_success) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %capi_buildvalue) #5
  %84 = load ptr, ptr %retval, align 8
  ret ptr %84
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @array_from_pyobj(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @PyErr_Fetch(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @npy_PyErr_ChainExceptionsCause(ptr noundef %exc, ptr noundef %val, ptr noundef %tb) #3 {
entry:
  %exc.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %tb.addr = alloca ptr, align 8
  %exc2 = alloca ptr, align 8
  %val2 = alloca ptr, align 8
  %tb2 = alloca ptr, align 8
  store ptr %exc, ptr %exc.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %tb, ptr %tb.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %exc.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end6

if.end:                                           ; preds = %entry
  %call = call ptr @PyErr_Occurred()
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %exc2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %val2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb2) #5
  call void @PyErr_Fetch(ptr noundef %exc2, ptr noundef %val2, ptr noundef %tb2)
  call void @PyErr_NormalizeException(ptr noundef %exc.addr, ptr noundef %val.addr, ptr noundef %tb.addr)
  %1 = load ptr, ptr %tb.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then1
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %tb.addr, align 8, !tbaa !4
  %call4 = call i32 @PyException_SetTraceback(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %tb.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %4)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then1
  %5 = load ptr, ptr %exc.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %5)
  call void @PyErr_NormalizeException(ptr noundef %exc2, ptr noundef %val2, ptr noundef %tb2)
  %6 = load ptr, ptr %val2, align 8, !tbaa !4
  %7 = load ptr, ptr %val.addr, align 8, !tbaa !4
  call void @PyException_SetCause(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %exc2, align 8, !tbaa !4
  %9 = load ptr, ptr %val2, align 8, !tbaa !4
  %10 = load ptr, ptr %tb2, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exc2) #5
  br label %if.end6

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %exc.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %tb.addr, align 8, !tbaa !4
  call void @PyErr_Restore(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else, %if.end5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyArray_DATA(ptr noundef %arr) #3 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %data, align 8, !tbaa !20
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal i32 @double_from_pyobj(ptr noundef %v, ptr noundef %obj, ptr noundef %errmess) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %errmess.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %errmess, ptr %errmess.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store ptr null, ptr %tmp, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @PyObject_TypeCheck(ptr noundef %0, ptr noundef @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call double @PyFloat_AsDouble(ptr noundef %1)
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store double %call1, ptr %2, align 8, !tbaa !17
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %4 = load double, ptr %3, align 8, !tbaa !17
  %cmp = fcmp oeq double %4, -1.000000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %call2 = call ptr @PyErr_Occurred()
  %tobool3 = icmp ne ptr %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %tobool3, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call4 = call ptr @PyNumber_Float(ptr noundef %6)
  store ptr %call4, ptr %tmp, align 8, !tbaa !4
  %7 = load ptr, ptr %tmp, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %7, null
  br i1 %tobool5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call7 = call double @PyFloat_AsDouble(ptr noundef %8)
  %9 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store double %call7, ptr %9, align 8, !tbaa !17
  %10 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %10)
  %11 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %12 = load double, ptr %11, align 8, !tbaa !17
  %cmp8 = fcmp oeq double %12, -1.000000e+00
  br i1 %cmp8, label %land.rhs9, label %land.end12

land.rhs9:                                        ; preds = %if.then6
  %call10 = call ptr @PyErr_Occurred()
  %tobool11 = icmp ne ptr %call10, null
  br label %land.end12

land.end12:                                       ; preds = %land.rhs9, %if.then6
  %13 = phi i1 [ false, %if.then6 ], [ %tobool11, %land.rhs9 ]
  %lnot13 = xor i1 %13, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  store i32 %lnot.ext14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %14 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call16 = call i32 @PyObject_TypeCheck(ptr noundef %14, ptr noundef @PyComplex_Type)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  call void @PyErr_Clear()
  %15 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call19 = call ptr @PyObject_GetAttrString(ptr noundef %15, ptr noundef @.str.40)
  store ptr %call19, ptr %tmp, align 8, !tbaa !4
  br label %if.end34

if.else:                                          ; preds = %if.end15
  %16 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call20 = call ptr @Py_TYPE(ptr noundef %16)
  %call21 = call i32 @PyType_HasFeature(ptr noundef %call20, i64 noundef 134217728)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call23 = call ptr @Py_TYPE(ptr noundef %17)
  %call24 = call i32 @PyType_HasFeature(ptr noundef %call23, i64 noundef 268435456)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %lor.lhs.false, %if.else
  br label %if.end33

if.else27:                                        ; preds = %lor.lhs.false
  %18 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call28 = call i32 @PySequence_Check(ptr noundef %18)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else27
  call void @PyErr_Clear()
  %19 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call31 = call ptr @PySequence_GetItem(ptr noundef %19, i64 noundef 0)
  store ptr %call31, ptr %tmp, align 8, !tbaa !4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then26
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  %20 = load ptr, ptr %tmp, align 8, !tbaa !4
  %tobool35 = icmp ne ptr %20, null
  br i1 %tobool35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end34
  %21 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %tmp, align 8, !tbaa !4
  %23 = load ptr, ptr %errmess.addr, align 8, !tbaa !4
  %call37 = call i32 @double_from_pyobj(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then36
  %24 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %24)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.then36
  %25 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %25)
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #5
  %call42 = call ptr @PyErr_Occurred()
  store ptr %call42, ptr %err, align 8, !tbaa !4
  %26 = load ptr, ptr %err, align 8, !tbaa !4
  %cmp43 = icmp eq ptr %26, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  %27 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  store ptr %27, ptr %err, align 8, !tbaa !4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %28 = load ptr, ptr %err, align 8, !tbaa !4
  %29 = load ptr, ptr %errmess.addr, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %28, ptr noundef %29)
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then39, %land.end12, %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @int_from_pyobj(ptr noundef %v, ptr noundef %obj, ptr noundef %errmess) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %errmess.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %errmess, ptr %errmess.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store ptr null, ptr %tmp, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @Py_TYPE(ptr noundef %0)
  %call1 = call i32 @PyType_HasFeature(ptr noundef %call, i64 noundef 16777216)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call2 = call i32 @Npy__PyLong_AsInt(ptr noundef %1)
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store i32 %call2, ptr %2, align 4, !tbaa !8
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %4 = load i32, ptr %3, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %call3 = call ptr @PyErr_Occurred()
  %tobool4 = icmp ne ptr %call3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %tobool4, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call5 = call ptr @PyNumber_Long(ptr noundef %6)
  store ptr %call5, ptr %tmp, align 8, !tbaa !4
  %7 = load ptr, ptr %tmp, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %7, null
  br i1 %tobool6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call8 = call i32 @Npy__PyLong_AsInt(ptr noundef %8)
  %9 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store i32 %call8, ptr %9, align 4, !tbaa !8
  %10 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %10)
  %11 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %12, -1
  br i1 %cmp9, label %land.rhs10, label %land.end13

land.rhs10:                                       ; preds = %if.then7
  %call11 = call ptr @PyErr_Occurred()
  %tobool12 = icmp ne ptr %call11, null
  br label %land.end13

land.end13:                                       ; preds = %land.rhs10, %if.then7
  %13 = phi i1 [ false, %if.then7 ], [ %tobool12, %land.rhs10 ]
  %lnot14 = xor i1 %13, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  store i32 %lnot.ext15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %14 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call17 = call i32 @PyObject_TypeCheck(ptr noundef %14, ptr noundef @PyComplex_Type)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @PyErr_Clear()
  %15 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call20 = call ptr @PyObject_GetAttrString(ptr noundef %15, ptr noundef @.str.40)
  store ptr %call20, ptr %tmp, align 8, !tbaa !4
  br label %if.end35

if.else:                                          ; preds = %if.end16
  %16 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call21 = call ptr @Py_TYPE(ptr noundef %16)
  %call22 = call i32 @PyType_HasFeature(ptr noundef %call21, i64 noundef 134217728)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call24 = call ptr @Py_TYPE(ptr noundef %17)
  %call25 = call i32 @PyType_HasFeature(ptr noundef %call24, i64 noundef 268435456)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %lor.lhs.false, %if.else
  br label %if.end34

if.else28:                                        ; preds = %lor.lhs.false
  %18 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call29 = call i32 @PySequence_Check(ptr noundef %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.else28
  call void @PyErr_Clear()
  %19 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call32 = call ptr @PySequence_GetItem(ptr noundef %19, i64 noundef 0)
  store ptr %call32, ptr %tmp, align 8, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.else28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then19
  %20 = load ptr, ptr %tmp, align 8, !tbaa !4
  %tobool36 = icmp ne ptr %20, null
  br i1 %tobool36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end35
  %21 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %tmp, align 8, !tbaa !4
  %23 = load ptr, ptr %errmess.addr, align 8, !tbaa !4
  %call38 = call i32 @int_from_pyobj(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  %24 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %24)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %25 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %25)
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #5
  %call43 = call ptr @PyErr_Occurred()
  store ptr %call43, ptr %err, align 8, !tbaa !4
  %26 = load ptr, ptr %err, align 8, !tbaa !4
  %cmp44 = icmp eq ptr %26, null
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  %27 = load ptr, ptr @_mvn_error, align 8, !tbaa !4
  store ptr %27, ptr %err, align 8, !tbaa !4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42
  %28 = load ptr, ptr %err, align 8, !tbaa !4
  %29 = load ptr, ptr %errmess.addr, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %28, ptr noundef %29)
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then40, %land.end13, %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare ptr @_Py_BuildValue_SizeT(ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_XDECREF(ptr noundef %op) #3 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !tbaa !4
  call void @Py_DECREF(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyErr_NormalizeException(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @PyException_SetTraceback(ptr noundef, ptr noundef) #2

declare void @PyException_SetCause(ptr noundef, ptr noundef) #2

declare void @PyErr_Restore(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyObject_TypeCheck(ptr noundef %ob, ptr noundef %type) #3 {
entry:
  %ob.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call = call i32 @Py_IS_TYPE(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %ob.addr, align 8, !tbaa !4
  %call1 = call ptr @Py_TYPE(ptr noundef %2)
  %3 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call2 = call i32 @PyType_IsSubtype(ptr noundef %call1, ptr noundef %3)
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

declare double @PyFloat_AsDouble(ptr noundef) #2

declare ptr @PyNumber_Float(ptr noundef) #2

declare void @PyErr_Clear() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyType_HasFeature(ptr noundef %type, i64 noundef %feature) #3 {
entry:
  %type.addr = alloca ptr, align 8
  %feature.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  store i64 %feature, ptr %feature.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #5
  %0 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %tp_flags = getelementptr inbounds %struct._typeobject, ptr %0, i32 0, i32 19
  %1 = load i64, ptr %tp_flags, align 8, !tbaa !22
  store i64 %1, ptr %flags, align 8, !tbaa !19
  %2 = load i64, ptr %flags, align 8, !tbaa !19
  %3 = load i64, ptr %feature.addr, align 8, !tbaa !19
  %and = and i64 %2, %3
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #5
  ret i32 %conv
}

declare i32 @PySequence_Check(ptr noundef) #2

declare ptr @PySequence_GetItem(ptr noundef, i64 noundef) #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Npy__PyLong_AsInt(ptr noundef %obj) #3 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %overflow = alloca i32, align 4
  %result = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %overflow) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #5
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i64 @PyLong_AsLongAndOverflow(ptr noundef %0, ptr noundef %overflow)
  store i64 %call, ptr %result, align 8, !tbaa !19
  %1 = load i32, ptr %overflow, align 4, !tbaa !8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %result, align 8, !tbaa !19
  %cmp = icmp sgt i64 %2, 2147483647
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %result, align 8, !tbaa !19
  %cmp2 = icmp slt i64 %3, -2147483648
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %4 = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %4, ptr noundef @.str.41)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load i64, ptr %result, align 8, !tbaa !19
  %conv = trunc i64 %5 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %overflow) #5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare ptr @PyNumber_Long(ptr noundef) #2

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) #2

declare void @f2pyinitdkblck_(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @f2py_setup_dkblck(ptr noundef %ivls) #0 {
entry:
  %ivls.addr = alloca ptr, align 8
  %i_f2py = alloca i32, align 4
  store ptr %ivls, ptr %ivls.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_f2py) #5
  store i32 0, ptr %i_f2py, align 4, !tbaa !8
  %0 = load ptr, ptr %ivls.addr, align 8, !tbaa !4
  %1 = load i32, ptr %i_f2py, align 4, !tbaa !8
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i_f2py, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.FortranDataDef], ptr @f2py_dkblck_def, i64 0, i64 %idxprom
  %data = getelementptr inbounds %struct.FortranDataDef, ptr %arrayidx, i32 0, i32 4
  store ptr %0, ptr %data, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_f2py) #5
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"", !5, i64 0, !9, i64 8, !12, i64 16, !9, i64 336, !5, i64 344, !5, i64 352, !5, i64 360}
!12 = !{!"", !6, i64 0}
!13 = !{!14, !5, i64 8}
!14 = !{!"_object", !15, i64 0, !5, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = !{!15, !15, i64 0}
!20 = !{!21, !5, i64 16}
!21 = !{!"tagPyArrayObject_fields", !14, i64 0, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!22 = !{!23, !15, i64 168}
!23 = !{!"_typeobject", !24, i64 0, !5, i64 24, !15, i64 32, !15, i64 40, !5, i64 48, !15, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !15, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !15, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !15, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376, !9, i64 384, !5, i64 392, !5, i64 400}
!24 = !{!"", !14, i64 0, !15, i64 16}
!25 = !{!11, !5, i64 344}
