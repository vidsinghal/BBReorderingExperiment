; ModuleID = 'samples/378.bc'
source_filename = "pandas/_libs/src/ujson/python/JSONtoObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, ptr }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.__JSONObjectDecoder = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.__NpyArrContext = type { ptr, [2 x ptr], %struct.PyArray_Dims, ptr, i64, i64, i64 }
%struct.PyArray_Dims = type { ptr, i32 }
%struct.__PyObjectDecoder = type { %struct.__JSONObjectDecoder, ptr, ptr, i64, ptr }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x ptr] }
%struct._PyArray_Descr = type { %struct._object, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.tagPyArrayObject_fields = type { %struct._object, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PyArray_ArrFuncs = type { [21 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@_Py_NoneStruct = external global %struct._object, align 8
@UJSON_NUMPY = external global ptr, align 8
@PyExc_ValueError = external global ptr, align 8
@.str = private unnamed_addr constant [77 x i8] c"Cannot decode multidimensional arrays with variable length elements to numpy\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [59 x i8] c"nesting not supported for object or variable length dtypes\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"labels only supported up to 2 dimensions\00", align 1, !dbg !12
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@__const.JSONToObj.dec = private unnamed_addr constant %struct.__JSONObjectDecoder { ptr @Object_newString, ptr @Object_objectAddKey, ptr @Object_arrayAddItem, ptr @Object_newTrue, ptr @Object_newFalse, ptr @Object_newNull, ptr @Object_newPosInf, ptr @Object_newNegInf, ptr @Object_newObject, ptr @Object_endObject, ptr @Object_newArray, ptr @Object_endArray, ptr @Object_newInteger, ptr @Object_newLong, ptr @Object_newUnsignedLong, ptr @Object_newDouble, ptr @Object_releaseObject, ptr @PyObject_Malloc, ptr @PyObject_Free, ptr @PyObject_Realloc, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"O|OiiO&\00", align 1, !dbg !17
@g_kwlist = internal global [6 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16, !dbg !22
@PyExc_TypeError = external global ptr, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Expected 'str' or 'bytes'\00", align 1, !dbg !774
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !779
@.str.6 = private unnamed_addr constant [4 x i8] c"obj\00", align 1, !dbg !782
@.str.7 = private unnamed_addr constant [14 x i8] c"precise_float\00", align 1, !dbg !787
@.str.8 = private unnamed_addr constant [6 x i8] c"numpy\00", align 1, !dbg !792
@.str.9 = private unnamed_addr constant [9 x i8] c"labelled\00", align 1, !dbg !797
@.str.10 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1, !dbg !802

; Function Attrs: nounwind uwtable
define void @Npy_releaseContext(ptr noundef %npyarr) #0 !dbg !811 {
entry:
  %npyarr.addr = alloca ptr, align 8
  store ptr %npyarr, ptr %npyarr.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %npyarr.addr, metadata !815, metadata !DIExpression()), !dbg !820
  %0 = load ptr, ptr %npyarr.addr, align 8, !dbg !821, !tbaa !816
  %tobool = icmp ne ptr %0, null, !dbg !821
  br i1 %tobool, label %if.then, label %if.end13, !dbg !823

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %npyarr.addr, align 8, !dbg !824, !tbaa !816
  %shape = getelementptr inbounds %struct.__NpyArrContext, ptr %1, i32 0, i32 2, !dbg !827
  %ptr = getelementptr inbounds %struct.PyArray_Dims, ptr %shape, i32 0, i32 0, !dbg !828
  %2 = load ptr, ptr %ptr, align 8, !dbg !828, !tbaa !829
  %tobool1 = icmp ne ptr %2, null, !dbg !824
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !834

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %npyarr.addr, align 8, !dbg !835, !tbaa !816
  %shape3 = getelementptr inbounds %struct.__NpyArrContext, ptr %3, i32 0, i32 2, !dbg !837
  %ptr4 = getelementptr inbounds %struct.PyArray_Dims, ptr %shape3, i32 0, i32 0, !dbg !838
  %4 = load ptr, ptr %ptr4, align 8, !dbg !838, !tbaa !829
  call void @PyObject_Free(ptr noundef %4), !dbg !839
  br label %if.end, !dbg !840

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %npyarr.addr, align 8, !dbg !841, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %5, i32 0, i32 3, !dbg !843
  %6 = load ptr, ptr %dec, align 8, !dbg !843, !tbaa !844
  %tobool5 = icmp ne ptr %6, null, !dbg !841
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !845

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %npyarr.addr, align 8, !dbg !846, !tbaa !816
  %dec7 = getelementptr inbounds %struct.__NpyArrContext, ptr %7, i32 0, i32 3, !dbg !848
  %8 = load ptr, ptr %dec7, align 8, !dbg !848, !tbaa !844
  %npyarr8 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %8, i32 0, i32 1, !dbg !849
  store ptr null, ptr %npyarr8, align 8, !dbg !850, !tbaa !851
  %9 = load ptr, ptr %npyarr.addr, align 8, !dbg !854, !tbaa !816
  %dec9 = getelementptr inbounds %struct.__NpyArrContext, ptr %9, i32 0, i32 3, !dbg !855
  %10 = load ptr, ptr %dec9, align 8, !dbg !855, !tbaa !844
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %10, i32 0, i32 3, !dbg !856
  store i64 0, ptr %curdim, align 8, !dbg !857, !tbaa !858
  br label %if.end10, !dbg !859

if.end10:                                         ; preds = %if.then6, %if.end
  %11 = load ptr, ptr %npyarr.addr, align 8, !dbg !860, !tbaa !816
  %labels = getelementptr inbounds %struct.__NpyArrContext, ptr %11, i32 0, i32 1, !dbg !860
  %arrayidx = getelementptr [2 x ptr], ptr %labels, i64 0, i64 0, !dbg !860
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !860, !tbaa !816
  call void @_Py_XDECREF(ptr noundef %12), !dbg !860
  %13 = load ptr, ptr %npyarr.addr, align 8, !dbg !861, !tbaa !816
  %labels11 = getelementptr inbounds %struct.__NpyArrContext, ptr %13, i32 0, i32 1, !dbg !861
  %arrayidx12 = getelementptr [2 x ptr], ptr %labels11, i64 0, i64 1, !dbg !861
  %14 = load ptr, ptr %arrayidx12, align 8, !dbg !861, !tbaa !816
  call void @_Py_XDECREF(ptr noundef %14), !dbg !861
  %15 = load ptr, ptr %npyarr.addr, align 8, !dbg !862, !tbaa !816
  %ret = getelementptr inbounds %struct.__NpyArrContext, ptr %15, i32 0, i32 0, !dbg !862
  %16 = load ptr, ptr %ret, align 8, !dbg !862, !tbaa !863
  call void @_Py_XDECREF(ptr noundef %16), !dbg !862
  %17 = load ptr, ptr %npyarr.addr, align 8, !dbg !864, !tbaa !816
  call void @PyObject_Free(ptr noundef %17), !dbg !865
  br label %if.end13, !dbg !866

if.end13:                                         ; preds = %if.end10, %entry
  ret void, !dbg !867
}

declare !dbg !868 void @PyObject_Free(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_XDECREF(ptr noundef %op) #2 !dbg !870 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !872, metadata !DIExpression()), !dbg !873
  %0 = load ptr, ptr %op.addr, align 8, !dbg !874, !tbaa !816
  %cmp = icmp ne ptr %0, null, !dbg !876
  br i1 %cmp, label %if.then, label %if.end, !dbg !877

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !878, !tbaa !816
  call void @_Py_DECREF(ptr noundef %1), !dbg !878
  br label %if.end, !dbg !880

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !881
}

; Function Attrs: nounwind uwtable
define ptr @Object_npyNewArray(ptr noundef %prv, ptr noundef %_decoder) #0 !dbg !882 {
entry:
  %retval = alloca ptr, align 8
  %prv.addr = alloca ptr, align 8
  %_decoder.addr = alloca ptr, align 8
  %npyarr = alloca ptr, align 8
  %decoder = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !884, metadata !DIExpression()), !dbg !888
  store ptr %_decoder, ptr %_decoder.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %_decoder.addr, metadata !885, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !890
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !886, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr %decoder) #6, !dbg !892
  tail call void @llvm.dbg.declare(metadata ptr %decoder, metadata !887, metadata !DIExpression()), !dbg !893
  %0 = load ptr, ptr %_decoder.addr, align 8, !dbg !894, !tbaa !816
  store ptr %0, ptr %decoder, align 8, !dbg !893, !tbaa !816
  %1 = load ptr, ptr %decoder, align 8, !dbg !895, !tbaa !816
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %1, i32 0, i32 3, !dbg !897
  %2 = load i64, ptr %curdim, align 8, !dbg !897, !tbaa !858
  %cmp = icmp sle i64 %2, 0, !dbg !898
  br i1 %cmp, label %if.then, label %if.else, !dbg !899

if.then:                                          ; preds = %entry
  %call = call ptr @PyObject_Malloc(i64 noundef 72), !dbg !900
  %3 = load ptr, ptr %decoder, align 8, !dbg !902, !tbaa !816
  %npyarr1 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %3, i32 0, i32 1, !dbg !903
  store ptr %call, ptr %npyarr1, align 8, !dbg !904, !tbaa !851
  store ptr %call, ptr %npyarr, align 8, !dbg !905, !tbaa !816
  %4 = load ptr, ptr %npyarr, align 8, !dbg !906, !tbaa !816
  %5 = load ptr, ptr %decoder, align 8, !dbg !907, !tbaa !816
  %npyarr_addr = getelementptr inbounds %struct.__PyObjectDecoder, ptr %5, i32 0, i32 2, !dbg !908
  store ptr %4, ptr %npyarr_addr, align 8, !dbg !909, !tbaa !910
  %6 = load ptr, ptr %npyarr, align 8, !dbg !911, !tbaa !816
  %tobool = icmp ne ptr %6, null, !dbg !911
  br i1 %tobool, label %if.end, label %if.then2, !dbg !913

if.then2:                                         ; preds = %if.then
  %call3 = call ptr @PyErr_NoMemory(), !dbg !914
  store ptr null, ptr %retval, align 8, !dbg !916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !916

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %decoder, align 8, !dbg !917, !tbaa !816
  %8 = load ptr, ptr %npyarr, align 8, !dbg !918, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %8, i32 0, i32 3, !dbg !919
  store ptr %7, ptr %dec, align 8, !dbg !920, !tbaa !844
  %9 = load ptr, ptr %npyarr, align 8, !dbg !921, !tbaa !816
  %labels = getelementptr inbounds %struct.__NpyArrContext, ptr %9, i32 0, i32 1, !dbg !922
  %arrayidx = getelementptr [2 x ptr], ptr %labels, i64 0, i64 1, !dbg !921
  store ptr null, ptr %arrayidx, align 8, !dbg !923, !tbaa !816
  %10 = load ptr, ptr %npyarr, align 8, !dbg !924, !tbaa !816
  %labels4 = getelementptr inbounds %struct.__NpyArrContext, ptr %10, i32 0, i32 1, !dbg !925
  %arrayidx5 = getelementptr [2 x ptr], ptr %labels4, i64 0, i64 0, !dbg !924
  store ptr null, ptr %arrayidx5, align 8, !dbg !926, !tbaa !816
  %call6 = call ptr @PyObject_Malloc(i64 noundef 256), !dbg !927
  %11 = load ptr, ptr %npyarr, align 8, !dbg !928, !tbaa !816
  %shape = getelementptr inbounds %struct.__NpyArrContext, ptr %11, i32 0, i32 2, !dbg !929
  %ptr = getelementptr inbounds %struct.PyArray_Dims, ptr %shape, i32 0, i32 0, !dbg !930
  store ptr %call6, ptr %ptr, align 8, !dbg !931, !tbaa !829
  %12 = load ptr, ptr %npyarr, align 8, !dbg !932, !tbaa !816
  %shape7 = getelementptr inbounds %struct.__NpyArrContext, ptr %12, i32 0, i32 2, !dbg !933
  %len = getelementptr inbounds %struct.PyArray_Dims, ptr %shape7, i32 0, i32 1, !dbg !934
  store i32 1, ptr %len, align 8, !dbg !935, !tbaa !936
  %13 = load ptr, ptr %npyarr, align 8, !dbg !937, !tbaa !816
  %ret = getelementptr inbounds %struct.__NpyArrContext, ptr %13, i32 0, i32 0, !dbg !938
  store ptr null, ptr %ret, align 8, !dbg !939, !tbaa !863
  %14 = load ptr, ptr %npyarr, align 8, !dbg !940, !tbaa !816
  %elsize = getelementptr inbounds %struct.__NpyArrContext, ptr %14, i32 0, i32 5, !dbg !941
  store i64 0, ptr %elsize, align 8, !dbg !942, !tbaa !943
  %15 = load ptr, ptr %npyarr, align 8, !dbg !944, !tbaa !816
  %elcount = getelementptr inbounds %struct.__NpyArrContext, ptr %15, i32 0, i32 6, !dbg !945
  store i64 4, ptr %elcount, align 8, !dbg !946, !tbaa !947
  %16 = load ptr, ptr %npyarr, align 8, !dbg !948, !tbaa !816
  %i = getelementptr inbounds %struct.__NpyArrContext, ptr %16, i32 0, i32 4, !dbg !949
  store i64 0, ptr %i, align 8, !dbg !950, !tbaa !951
  br label %if.end18, !dbg !952

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %decoder, align 8, !dbg !953, !tbaa !816
  %npyarr8 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %17, i32 0, i32 1, !dbg !955
  %18 = load ptr, ptr %npyarr8, align 8, !dbg !955, !tbaa !851
  store ptr %18, ptr %npyarr, align 8, !dbg !956, !tbaa !816
  %19 = load ptr, ptr %decoder, align 8, !dbg !957, !tbaa !816
  %curdim9 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %19, i32 0, i32 3, !dbg !959
  %20 = load i64, ptr %curdim9, align 8, !dbg !959, !tbaa !858
  %21 = load ptr, ptr %npyarr, align 8, !dbg !960, !tbaa !816
  %shape10 = getelementptr inbounds %struct.__NpyArrContext, ptr %21, i32 0, i32 2, !dbg !961
  %len11 = getelementptr inbounds %struct.PyArray_Dims, ptr %shape10, i32 0, i32 1, !dbg !962
  %22 = load i32, ptr %len11, align 8, !dbg !962, !tbaa !936
  %conv = sext i32 %22 to i64, !dbg !960
  %cmp12 = icmp sge i64 %20, %conv, !dbg !963
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !964

if.then14:                                        ; preds = %if.else
  %23 = load ptr, ptr %npyarr, align 8, !dbg !965, !tbaa !816
  %shape15 = getelementptr inbounds %struct.__NpyArrContext, ptr %23, i32 0, i32 2, !dbg !967
  %len16 = getelementptr inbounds %struct.PyArray_Dims, ptr %shape15, i32 0, i32 1, !dbg !968
  %24 = load i32, ptr %len16, align 8, !dbg !969, !tbaa !936
  %inc = add i32 %24, 1, !dbg !969
  store i32 %inc, ptr %len16, align 8, !dbg !969, !tbaa !936
  br label %if.end17, !dbg !970

if.end17:                                         ; preds = %if.then14, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %25 = load ptr, ptr %npyarr, align 8, !dbg !971, !tbaa !816
  %shape19 = getelementptr inbounds %struct.__NpyArrContext, ptr %25, i32 0, i32 2, !dbg !972
  %ptr20 = getelementptr inbounds %struct.PyArray_Dims, ptr %shape19, i32 0, i32 0, !dbg !973
  %26 = load ptr, ptr %ptr20, align 8, !dbg !973, !tbaa !829
  %27 = load ptr, ptr %decoder, align 8, !dbg !974, !tbaa !816
  %curdim21 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %27, i32 0, i32 3, !dbg !975
  %28 = load i64, ptr %curdim21, align 8, !dbg !975, !tbaa !858
  %arrayidx22 = getelementptr i64, ptr %26, i64 %28, !dbg !971
  store i64 0, ptr %arrayidx22, align 8, !dbg !976, !tbaa !977
  %29 = load ptr, ptr %decoder, align 8, !dbg !978, !tbaa !816
  %curdim23 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %29, i32 0, i32 3, !dbg !979
  %30 = load i64, ptr %curdim23, align 8, !dbg !980, !tbaa !858
  %inc24 = add i64 %30, 1, !dbg !980
  store i64 %inc24, ptr %curdim23, align 8, !dbg !980, !tbaa !858
  %31 = load ptr, ptr %npyarr, align 8, !dbg !981, !tbaa !816
  store ptr %31, ptr %retval, align 8, !dbg !982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !982

cleanup:                                          ; preds = %if.end18, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %decoder) #6, !dbg !983
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !983
  %32 = load ptr, ptr %retval, align 8, !dbg !983
  ret ptr %32, !dbg !983
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !984 ptr @PyObject_Malloc(i64 noundef) #1

declare !dbg !985 ptr @PyErr_NoMemory() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define ptr @Npy_returnLabelled(ptr noundef %npyarr) #0 !dbg !989 {
entry:
  %npyarr.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %npyarr, ptr %npyarr.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %npyarr.addr, metadata !993, metadata !DIExpression()), !dbg !996
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !997
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !994, metadata !DIExpression()), !dbg !998
  %0 = load ptr, ptr %npyarr.addr, align 8, !dbg !999, !tbaa !816
  %ret1 = getelementptr inbounds %struct.__NpyArrContext, ptr %0, i32 0, i32 0, !dbg !1000
  %1 = load ptr, ptr %ret1, align 8, !dbg !1000, !tbaa !863
  store ptr %1, ptr %ret, align 8, !dbg !998, !tbaa !816
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !1001
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !995, metadata !DIExpression()), !dbg !1002
  %2 = load ptr, ptr %npyarr.addr, align 8, !dbg !1003, !tbaa !816
  %labels = getelementptr inbounds %struct.__NpyArrContext, ptr %2, i32 0, i32 1, !dbg !1005
  %arrayidx = getelementptr [2 x ptr], ptr %labels, i64 0, i64 0, !dbg !1003
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1003, !tbaa !816
  %tobool = icmp ne ptr %3, null, !dbg !1003
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1006

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %npyarr.addr, align 8, !dbg !1007, !tbaa !816
  %labels2 = getelementptr inbounds %struct.__NpyArrContext, ptr %4, i32 0, i32 1, !dbg !1008
  %arrayidx3 = getelementptr [2 x ptr], ptr %labels2, i64 0, i64 1, !dbg !1007
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !1007, !tbaa !816
  %tobool4 = icmp ne ptr %5, null, !dbg !1007
  br i1 %tobool4, label %if.then, label %if.end25, !dbg !1009

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %npyarr.addr, align 8, !dbg !1010, !tbaa !816
  %shape = getelementptr inbounds %struct.__NpyArrContext, ptr %6, i32 0, i32 2, !dbg !1012
  %len = getelementptr inbounds %struct.PyArray_Dims, ptr %shape, i32 0, i32 1, !dbg !1013
  %7 = load i32, ptr %len, align 8, !dbg !1013, !tbaa !936
  %add = add i32 %7, 1, !dbg !1014
  %conv = sext i32 %add to i64, !dbg !1010
  %call = call ptr @PyTuple_New(i64 noundef %conv), !dbg !1015
  store ptr %call, ptr %ret, align 8, !dbg !1016, !tbaa !816
  store i64 0, ptr %i, align 8, !dbg !1017, !tbaa !977
  br label %for.cond, !dbg !1019

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i64, ptr %i, align 8, !dbg !1020, !tbaa !977
  %9 = load ptr, ptr %npyarr.addr, align 8, !dbg !1022, !tbaa !816
  %shape5 = getelementptr inbounds %struct.__NpyArrContext, ptr %9, i32 0, i32 2, !dbg !1023
  %len6 = getelementptr inbounds %struct.PyArray_Dims, ptr %shape5, i32 0, i32 1, !dbg !1024
  %10 = load i32, ptr %len6, align 8, !dbg !1024, !tbaa !936
  %conv7 = sext i32 %10 to i64, !dbg !1022
  %cmp = icmp slt i64 %8, %conv7, !dbg !1025
  br i1 %cmp, label %for.body, label %for.end, !dbg !1026

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %npyarr.addr, align 8, !dbg !1027, !tbaa !816
  %labels9 = getelementptr inbounds %struct.__NpyArrContext, ptr %11, i32 0, i32 1, !dbg !1030
  %12 = load i64, ptr %i, align 8, !dbg !1031, !tbaa !977
  %arrayidx10 = getelementptr [2 x ptr], ptr %labels9, i64 0, i64 %12, !dbg !1027
  %13 = load ptr, ptr %arrayidx10, align 8, !dbg !1027, !tbaa !816
  %tobool11 = icmp ne ptr %13, null, !dbg !1027
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !1032

if.then12:                                        ; preds = %for.body
  %14 = load ptr, ptr %npyarr.addr, align 8, !dbg !1033, !tbaa !816
  %labels13 = getelementptr inbounds %struct.__NpyArrContext, ptr %14, i32 0, i32 1, !dbg !1033
  %15 = load i64, ptr %i, align 8, !dbg !1033, !tbaa !977
  %arrayidx14 = getelementptr [2 x ptr], ptr %labels13, i64 0, i64 %15, !dbg !1033
  %16 = load ptr, ptr %arrayidx14, align 8, !dbg !1033, !tbaa !816
  %17 = load ptr, ptr %ret, align 8, !dbg !1033, !tbaa !816
  %ob_item = getelementptr inbounds %struct.PyTupleObject, ptr %17, i32 0, i32 1, !dbg !1033
  %18 = load i64, ptr %i, align 8, !dbg !1033, !tbaa !977
  %add15 = add i64 %18, 1, !dbg !1033
  %arrayidx16 = getelementptr [1 x ptr], ptr %ob_item, i64 0, i64 %add15, !dbg !1033
  store ptr %16, ptr %arrayidx16, align 8, !dbg !1033, !tbaa !816
  %19 = load ptr, ptr %npyarr.addr, align 8, !dbg !1035, !tbaa !816
  %labels17 = getelementptr inbounds %struct.__NpyArrContext, ptr %19, i32 0, i32 1, !dbg !1036
  %20 = load i64, ptr %i, align 8, !dbg !1037, !tbaa !977
  %arrayidx18 = getelementptr [2 x ptr], ptr %labels17, i64 0, i64 %20, !dbg !1035
  store ptr null, ptr %arrayidx18, align 8, !dbg !1038, !tbaa !816
  br label %if.end, !dbg !1039

if.else:                                          ; preds = %for.body
  call void @_Py_INCREF(ptr noundef @_Py_NoneStruct), !dbg !1040
  %21 = load ptr, ptr %ret, align 8, !dbg !1042, !tbaa !816
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, ptr %21, i32 0, i32 1, !dbg !1042
  %22 = load i64, ptr %i, align 8, !dbg !1042, !tbaa !977
  %add20 = add i64 %22, 1, !dbg !1042
  %arrayidx21 = getelementptr [1 x ptr], ptr %ob_item19, i64 0, i64 %add20, !dbg !1042
  store ptr @_Py_NoneStruct, ptr %arrayidx21, align 8, !dbg !1042, !tbaa !816
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %for.inc, !dbg !1043

for.inc:                                          ; preds = %if.end
  %23 = load i64, ptr %i, align 8, !dbg !1044, !tbaa !977
  %inc = add i64 %23, 1, !dbg !1044
  store i64 %inc, ptr %i, align 8, !dbg !1044, !tbaa !977
  br label %for.cond, !dbg !1045, !llvm.loop !1046

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %npyarr.addr, align 8, !dbg !1049, !tbaa !816
  %ret22 = getelementptr inbounds %struct.__NpyArrContext, ptr %24, i32 0, i32 0, !dbg !1049
  %25 = load ptr, ptr %ret22, align 8, !dbg !1049, !tbaa !863
  %26 = load ptr, ptr %ret, align 8, !dbg !1049, !tbaa !816
  %ob_item23 = getelementptr inbounds %struct.PyTupleObject, ptr %26, i32 0, i32 1, !dbg !1049
  %arrayidx24 = getelementptr [1 x ptr], ptr %ob_item23, i64 0, i64 0, !dbg !1049
  store ptr %25, ptr %arrayidx24, align 8, !dbg !1049, !tbaa !816
  br label %if.end25, !dbg !1050

if.end25:                                         ; preds = %for.end, %lor.lhs.false
  %27 = load ptr, ptr %ret, align 8, !dbg !1051, !tbaa !816
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !1052
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !1052
  ret ptr %27, !dbg !1053
}

declare !dbg !1054 ptr @PyTuple_New(i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_INCREF(ptr noundef %op) #2 !dbg !1058 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1062, !tbaa !816
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0, !dbg !1063
  %1 = load i64, ptr %ob_refcnt, align 8, !dbg !1064, !tbaa !1065
  %inc = add i64 %1, 1, !dbg !1064
  store i64 %inc, ptr %ob_refcnt, align 8, !dbg !1064, !tbaa !1065
  ret void, !dbg !1067
}

; Function Attrs: nounwind uwtable
define ptr @Object_npyEndArray(ptr noundef %prv, ptr noundef %obj) #0 !dbg !1068 {
entry:
  %retval = alloca ptr, align 8
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %new_data = alloca ptr, align 8
  %npyarr = alloca ptr, align 8
  %emptyType = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1070, metadata !DIExpression()), !dbg !1077
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1071, metadata !DIExpression()), !dbg !1078
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !1079
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1072, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_data) #6, !dbg !1081
  tail call void @llvm.dbg.declare(metadata ptr %new_data, metadata !1073, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !1074, metadata !DIExpression()), !dbg !1084
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1085, !tbaa !816
  store ptr %0, ptr %npyarr, align 8, !dbg !1084, !tbaa !816
  call void @llvm.lifetime.start.p0(i64 4, ptr %emptyType) #6, !dbg !1086
  tail call void @llvm.dbg.declare(metadata ptr %emptyType, metadata !1075, metadata !DIExpression()), !dbg !1087
  store i32 12, ptr %emptyType, align 4, !dbg !1087, !tbaa !1088
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !1089
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1076, metadata !DIExpression()), !dbg !1090
  %1 = load ptr, ptr %npyarr, align 8, !dbg !1091, !tbaa !816
  %tobool = icmp ne ptr %1, null, !dbg !1091
  br i1 %tobool, label %if.end, label %if.then, !dbg !1093

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1094

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %npyarr, align 8, !dbg !1096, !tbaa !816
  %ret1 = getelementptr inbounds %struct.__NpyArrContext, ptr %2, i32 0, i32 0, !dbg !1097
  %3 = load ptr, ptr %ret1, align 8, !dbg !1097, !tbaa !863
  store ptr %3, ptr %ret, align 8, !dbg !1098, !tbaa !816
  %4 = load ptr, ptr %npyarr, align 8, !dbg !1099, !tbaa !816
  %i2 = getelementptr inbounds %struct.__NpyArrContext, ptr %4, i32 0, i32 4, !dbg !1100
  %5 = load i64, ptr %i2, align 8, !dbg !1100, !tbaa !951
  store i64 %5, ptr %i, align 8, !dbg !1101, !tbaa !977
  %6 = load ptr, ptr %npyarr, align 8, !dbg !1102, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %6, i32 0, i32 3, !dbg !1103
  %7 = load ptr, ptr %dec, align 8, !dbg !1103, !tbaa !844
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %7, i32 0, i32 3, !dbg !1104
  %8 = load i64, ptr %curdim, align 8, !dbg !1105, !tbaa !858
  %dec3 = add i64 %8, -1, !dbg !1105
  store i64 %dec3, ptr %curdim, align 8, !dbg !1105, !tbaa !858
  %9 = load i64, ptr %i, align 8, !dbg !1106, !tbaa !977
  %cmp = icmp eq i64 %9, 0, !dbg !1108
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !1109

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %npyarr, align 8, !dbg !1110, !tbaa !816
  %ret4 = getelementptr inbounds %struct.__NpyArrContext, ptr %10, i32 0, i32 0, !dbg !1111
  %11 = load ptr, ptr %ret4, align 8, !dbg !1111, !tbaa !863
  %tobool5 = icmp ne ptr %11, null, !dbg !1110
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !1112

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %12 = load ptr, ptr %npyarr, align 8, !dbg !1113, !tbaa !816
  %dec7 = getelementptr inbounds %struct.__NpyArrContext, ptr %12, i32 0, i32 3, !dbg !1116
  %13 = load ptr, ptr %dec7, align 8, !dbg !1116, !tbaa !844
  %dtype = getelementptr inbounds %struct.__PyObjectDecoder, ptr %13, i32 0, i32 4, !dbg !1117
  %14 = load ptr, ptr %dtype, align 8, !dbg !1117, !tbaa !1118
  %tobool8 = icmp ne ptr %14, null, !dbg !1113
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !1119

if.then9:                                         ; preds = %if.then6
  %15 = load ptr, ptr %npyarr, align 8, !dbg !1120, !tbaa !816
  %dec10 = getelementptr inbounds %struct.__NpyArrContext, ptr %15, i32 0, i32 3, !dbg !1122
  %16 = load ptr, ptr %dec10, align 8, !dbg !1122, !tbaa !844
  %dtype11 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %16, i32 0, i32 4, !dbg !1123
  %17 = load ptr, ptr %dtype11, align 8, !dbg !1123, !tbaa !1118
  %type_num = getelementptr inbounds %struct._PyArray_Descr, ptr %17, i32 0, i32 6, !dbg !1124
  %18 = load i32, ptr %type_num, align 4, !dbg !1124, !tbaa !1125
  store i32 %18, ptr %emptyType, align 4, !dbg !1127, !tbaa !1088
  br label %if.end12, !dbg !1128

if.end12:                                         ; preds = %if.then9, %if.then6
  %19 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1129, !tbaa !816
  %arrayidx = getelementptr ptr, ptr %19, i64 184, !dbg !1129
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !1129, !tbaa !816
  %21 = load ptr, ptr %npyarr, align 8, !dbg !1129, !tbaa !816
  %shape = getelementptr inbounds %struct.__NpyArrContext, ptr %21, i32 0, i32 2, !dbg !1129
  %len = getelementptr inbounds %struct.PyArray_Dims, ptr %shape, i32 0, i32 1, !dbg !1129
  %22 = load i32, ptr %len, align 8, !dbg !1129, !tbaa !936
  %23 = load ptr, ptr %npyarr, align 8, !dbg !1129, !tbaa !816
  %shape13 = getelementptr inbounds %struct.__NpyArrContext, ptr %23, i32 0, i32 2, !dbg !1129
  %ptr = getelementptr inbounds %struct.PyArray_Dims, ptr %shape13, i32 0, i32 0, !dbg !1129
  %24 = load ptr, ptr %ptr, align 8, !dbg !1129, !tbaa !829
  %25 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1129, !tbaa !816
  %arrayidx14 = getelementptr ptr, ptr %25, i64 45, !dbg !1129
  %26 = load ptr, ptr %arrayidx14, align 8, !dbg !1129, !tbaa !816
  %27 = load i32, ptr %emptyType, align 4, !dbg !1129, !tbaa !1088
  %call = call ptr %26(i32 noundef %27), !dbg !1129
  %call15 = call ptr %20(i32 noundef %22, ptr noundef %24, ptr noundef %call, i32 noundef 0), !dbg !1129
  store ptr %call15, ptr %ret, align 8, !dbg !1130, !tbaa !816
  %28 = load ptr, ptr %npyarr, align 8, !dbg !1131, !tbaa !816
  %ret16 = getelementptr inbounds %struct.__NpyArrContext, ptr %28, i32 0, i32 0, !dbg !1132
  store ptr %call15, ptr %ret16, align 8, !dbg !1133, !tbaa !863
  br label %if.end29, !dbg !1134

if.else:                                          ; preds = %lor.lhs.false
  %29 = load ptr, ptr %npyarr, align 8, !dbg !1135, !tbaa !816
  %dec17 = getelementptr inbounds %struct.__NpyArrContext, ptr %29, i32 0, i32 3, !dbg !1137
  %30 = load ptr, ptr %dec17, align 8, !dbg !1137, !tbaa !844
  %curdim18 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %30, i32 0, i32 3, !dbg !1138
  %31 = load i64, ptr %curdim18, align 8, !dbg !1138, !tbaa !858
  %cmp19 = icmp sle i64 %31, 0, !dbg !1139
  br i1 %cmp19, label %if.then20, label %if.end28, !dbg !1140

if.then20:                                        ; preds = %if.else
  %32 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1141, !tbaa !816
  %arrayidx21 = getelementptr ptr, ptr %32, i64 290, !dbg !1141
  %33 = load ptr, ptr %arrayidx21, align 8, !dbg !1141, !tbaa !816
  %34 = load ptr, ptr %ret, align 8, !dbg !1143, !tbaa !816
  %data = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %34, i32 0, i32 1, !dbg !1143
  %35 = load ptr, ptr %data, align 8, !dbg !1143, !tbaa !1144
  %36 = load i64, ptr %i, align 8, !dbg !1146, !tbaa !977
  %37 = load ptr, ptr %npyarr, align 8, !dbg !1147, !tbaa !816
  %elsize = getelementptr inbounds %struct.__NpyArrContext, ptr %37, i32 0, i32 5, !dbg !1148
  %38 = load i64, ptr %elsize, align 8, !dbg !1148, !tbaa !943
  %mul = mul i64 %36, %38, !dbg !1149
  %call22 = call ptr %33(ptr noundef %35, i64 noundef %mul), !dbg !1141
  store ptr %call22, ptr %new_data, align 8, !dbg !1150, !tbaa !816
  %39 = load ptr, ptr %new_data, align 8, !dbg !1151, !tbaa !816
  %cmp23 = icmp eq ptr %39, null, !dbg !1153
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1154

if.then24:                                        ; preds = %if.then20
  %call25 = call ptr @PyErr_NoMemory(), !dbg !1155
  %40 = load ptr, ptr %npyarr, align 8, !dbg !1157, !tbaa !816
  call void @Npy_releaseContext(ptr noundef %40), !dbg !1158
  store ptr null, ptr %retval, align 8, !dbg !1159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1159

if.end26:                                         ; preds = %if.then20
  %41 = load ptr, ptr %new_data, align 8, !dbg !1160, !tbaa !816
  %42 = load ptr, ptr %ret, align 8, !dbg !1161, !tbaa !816
  %data27 = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %42, i32 0, i32 1, !dbg !1162
  store ptr %41, ptr %data27, align 8, !dbg !1163, !tbaa !1144
  br label %if.end28, !dbg !1164

if.end28:                                         ; preds = %if.end26, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end12
  %43 = load ptr, ptr %npyarr, align 8, !dbg !1165, !tbaa !816
  %dec30 = getelementptr inbounds %struct.__NpyArrContext, ptr %43, i32 0, i32 3, !dbg !1167
  %44 = load ptr, ptr %dec30, align 8, !dbg !1167, !tbaa !844
  %curdim31 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %44, i32 0, i32 3, !dbg !1168
  %45 = load i64, ptr %curdim31, align 8, !dbg !1168, !tbaa !858
  %cmp32 = icmp sle i64 %45, 0, !dbg !1169
  br i1 %cmp32, label %if.then33, label %if.end45, !dbg !1170

if.then33:                                        ; preds = %if.end29
  %46 = load ptr, ptr %npyarr, align 8, !dbg !1171, !tbaa !816
  %shape34 = getelementptr inbounds %struct.__NpyArrContext, ptr %46, i32 0, i32 2, !dbg !1174
  %len35 = getelementptr inbounds %struct.PyArray_Dims, ptr %shape34, i32 0, i32 1, !dbg !1175
  %47 = load i32, ptr %len35, align 8, !dbg !1175, !tbaa !936
  %cmp36 = icmp sgt i32 %47, 1, !dbg !1176
  br i1 %cmp36, label %if.then37, label %if.end42, !dbg !1177

if.then37:                                        ; preds = %if.then33
  %48 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1178, !tbaa !816
  %arrayidx38 = getelementptr ptr, ptr %48, i64 135, !dbg !1178
  %49 = load ptr, ptr %arrayidx38, align 8, !dbg !1178, !tbaa !816
  %50 = load ptr, ptr %ret, align 8, !dbg !1180, !tbaa !816
  %51 = load ptr, ptr %npyarr, align 8, !dbg !1181, !tbaa !816
  %shape39 = getelementptr inbounds %struct.__NpyArrContext, ptr %51, i32 0, i32 2, !dbg !1182
  %call40 = call ptr %49(ptr noundef %50, ptr noundef %shape39, i32 noundef -1), !dbg !1178
  %52 = load ptr, ptr %npyarr, align 8, !dbg !1183, !tbaa !816
  %ret41 = getelementptr inbounds %struct.__NpyArrContext, ptr %52, i32 0, i32 0, !dbg !1184
  store ptr %call40, ptr %ret41, align 8, !dbg !1185, !tbaa !863
  %53 = load ptr, ptr %ret, align 8, !dbg !1186, !tbaa !816
  call void @_Py_DECREF(ptr noundef %53), !dbg !1186
  br label %if.end42, !dbg !1187

if.end42:                                         ; preds = %if.then37, %if.then33
  %54 = load ptr, ptr %npyarr, align 8, !dbg !1188, !tbaa !816
  %call43 = call ptr @Npy_returnLabelled(ptr noundef %54), !dbg !1189
  store ptr %call43, ptr %ret, align 8, !dbg !1190, !tbaa !816
  %55 = load ptr, ptr %npyarr, align 8, !dbg !1191, !tbaa !816
  %ret44 = getelementptr inbounds %struct.__NpyArrContext, ptr %55, i32 0, i32 0, !dbg !1192
  store ptr null, ptr %ret44, align 8, !dbg !1193, !tbaa !863
  %56 = load ptr, ptr %npyarr, align 8, !dbg !1194, !tbaa !816
  call void @Npy_releaseContext(ptr noundef %56), !dbg !1195
  br label %if.end45, !dbg !1196

if.end45:                                         ; preds = %if.end42, %if.end29
  %57 = load ptr, ptr %ret, align 8, !dbg !1197, !tbaa !816
  store ptr %57, ptr %retval, align 8, !dbg !1198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1198

cleanup:                                          ; preds = %if.end45, %if.then24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 4, ptr %emptyType) #6, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_data) #6, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !1199
  %58 = load ptr, ptr %retval, align 8, !dbg !1199
  ret ptr %58, !dbg !1199
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_DECREF(ptr noundef %op) #2 !dbg !1200 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1204, !tbaa !816
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0, !dbg !1206
  %1 = load i64, ptr %ob_refcnt, align 8, !dbg !1207, !tbaa !1065
  %dec = add i64 %1, -1, !dbg !1207
  store i64 %dec, ptr %ob_refcnt, align 8, !dbg !1207, !tbaa !1065
  %cmp = icmp ne i64 %dec, 0, !dbg !1208
  br i1 %cmp, label %if.then, label %if.else, !dbg !1209

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1210

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1212, !tbaa !816
  call void @_Py_Dealloc(ptr noundef %2), !dbg !1214
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1215
}

; Function Attrs: nounwind uwtable
define i32 @Object_npyArrayAddItem(ptr noundef %prv, ptr noundef %obj, ptr noundef %value) #0 !dbg !1216 {
entry:
  %retval = alloca i32, align 4
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %type = alloca ptr, align 8
  %dtype = alloca ptr, align 8
  %i = alloca i64, align 8
  %new_data = alloca ptr, align 8
  %item = alloca ptr, align 8
  %npyarr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1218, metadata !DIExpression()), !dbg !1228
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1219, metadata !DIExpression()), !dbg !1229
  store ptr %value, ptr %value.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1220, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #6, !dbg !1231
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1221, metadata !DIExpression()), !dbg !1232
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtype) #6, !dbg !1233
  tail call void @llvm.dbg.declare(metadata ptr %dtype, metadata !1222, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !1235
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1223, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_data) #6, !dbg !1237
  tail call void @llvm.dbg.declare(metadata ptr %new_data, metadata !1224, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #6, !dbg !1237
  tail call void @llvm.dbg.declare(metadata ptr %item, metadata !1225, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !1240
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !1226, metadata !DIExpression()), !dbg !1241
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1242, !tbaa !816
  store ptr %0, ptr %npyarr, align 8, !dbg !1241, !tbaa !816
  %1 = load ptr, ptr %npyarr, align 8, !dbg !1243, !tbaa !816
  %tobool = icmp ne ptr %1, null, !dbg !1243
  br i1 %tobool, label %if.end, label %if.then, !dbg !1245

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1246

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %npyarr, align 8, !dbg !1248, !tbaa !816
  %i1 = getelementptr inbounds %struct.__NpyArrContext, ptr %2, i32 0, i32 4, !dbg !1249
  %3 = load i64, ptr %i1, align 8, !dbg !1249, !tbaa !951
  store i64 %3, ptr %i, align 8, !dbg !1250, !tbaa !977
  %4 = load ptr, ptr %npyarr, align 8, !dbg !1251, !tbaa !816
  %shape = getelementptr inbounds %struct.__NpyArrContext, ptr %4, i32 0, i32 2, !dbg !1252
  %ptr = getelementptr inbounds %struct.PyArray_Dims, ptr %shape, i32 0, i32 0, !dbg !1253
  %5 = load ptr, ptr %ptr, align 8, !dbg !1253, !tbaa !829
  %6 = load ptr, ptr %npyarr, align 8, !dbg !1254, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %6, i32 0, i32 3, !dbg !1255
  %7 = load ptr, ptr %dec, align 8, !dbg !1255, !tbaa !844
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %7, i32 0, i32 3, !dbg !1256
  %8 = load i64, ptr %curdim, align 8, !dbg !1256, !tbaa !858
  %sub = sub i64 %8, 1, !dbg !1257
  %arrayidx = getelementptr i64, ptr %5, i64 %sub, !dbg !1251
  %9 = load i64, ptr %arrayidx, align 8, !dbg !1258, !tbaa !977
  %inc = add i64 %9, 1, !dbg !1258
  store i64 %inc, ptr %arrayidx, align 8, !dbg !1258, !tbaa !977
  %10 = load ptr, ptr %value.addr, align 8, !dbg !1259, !tbaa !816
  %11 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1259, !tbaa !816
  %arrayidx2 = getelementptr ptr, ptr %11, i64 2, !dbg !1259
  %12 = load ptr, ptr %arrayidx2, align 8, !dbg !1259, !tbaa !816
  %call = call i32 @_Py_IS_TYPE(ptr noundef %10, ptr noundef %12), !dbg !1259
  %tobool3 = icmp ne i32 %call, 0, !dbg !1259
  br i1 %tobool3, label %if.then7, label %lor.lhs.false, !dbg !1259

lor.lhs.false:                                    ; preds = %if.end
  %13 = load ptr, ptr %value.addr, align 8, !dbg !1259, !tbaa !816
  %ob_type = getelementptr inbounds %struct._object, ptr %13, i32 0, i32 1, !dbg !1259
  %14 = load ptr, ptr %ob_type, align 8, !dbg !1259, !tbaa !1261
  %15 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1259, !tbaa !816
  %arrayidx4 = getelementptr ptr, ptr %15, i64 2, !dbg !1259
  %16 = load ptr, ptr %arrayidx4, align 8, !dbg !1259, !tbaa !816
  %call5 = call i32 @PyType_IsSubtype(ptr noundef %14, ptr noundef %16), !dbg !1259
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1259
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1262

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %retval, align 4, !dbg !1263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1263

if.end8:                                          ; preds = %lor.lhs.false
  %17 = load ptr, ptr %npyarr, align 8, !dbg !1265, !tbaa !816
  %ret = getelementptr inbounds %struct.__NpyArrContext, ptr %17, i32 0, i32 0, !dbg !1267
  %18 = load ptr, ptr %ret, align 8, !dbg !1267, !tbaa !863
  %tobool9 = icmp ne ptr %18, null, !dbg !1265
  br i1 %tobool9, label %if.end60, label %if.then10, !dbg !1268

if.then10:                                        ; preds = %if.end8
  %19 = load ptr, ptr %npyarr, align 8, !dbg !1269, !tbaa !816
  %dec11 = getelementptr inbounds %struct.__NpyArrContext, ptr %19, i32 0, i32 3, !dbg !1272
  %20 = load ptr, ptr %dec11, align 8, !dbg !1272, !tbaa !844
  %dtype12 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %20, i32 0, i32 4, !dbg !1273
  %21 = load ptr, ptr %dtype12, align 8, !dbg !1273, !tbaa !1118
  %tobool13 = icmp ne ptr %21, null, !dbg !1269
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !1274

if.then14:                                        ; preds = %if.then10
  %22 = load ptr, ptr %value.addr, align 8, !dbg !1275, !tbaa !816
  %call15 = call ptr @PyObject_Type(ptr noundef %22), !dbg !1277
  store ptr %call15, ptr %type, align 8, !dbg !1278, !tbaa !816
  %23 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1279, !tbaa !816
  %arrayidx16 = getelementptr ptr, ptr %23, i64 174, !dbg !1279
  %24 = load ptr, ptr %arrayidx16, align 8, !dbg !1279, !tbaa !816
  %25 = load ptr, ptr %type, align 8, !dbg !1281, !tbaa !816
  %call17 = call i32 %24(ptr noundef %25, ptr noundef %dtype), !dbg !1279
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1279
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1282

if.then19:                                        ; preds = %if.then14
  %26 = load ptr, ptr %type, align 8, !dbg !1283, !tbaa !816
  call void @_Py_DECREF(ptr noundef %26), !dbg !1283
  br label %fail, !dbg !1285

if.end20:                                         ; preds = %if.then14
  %27 = load ptr, ptr %dtype, align 8, !dbg !1286, !tbaa !816
  call void @_Py_INCREF(ptr noundef %27), !dbg !1286
  %28 = load ptr, ptr %type, align 8, !dbg !1287, !tbaa !816
  call void @_Py_DECREF(ptr noundef %28), !dbg !1287
  br label %if.end25, !dbg !1288

if.else:                                          ; preds = %if.then10
  %29 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1289, !tbaa !816
  %arrayidx21 = getelementptr ptr, ptr %29, i64 95, !dbg !1289
  %30 = load ptr, ptr %arrayidx21, align 8, !dbg !1289, !tbaa !816
  %31 = load ptr, ptr %npyarr, align 8, !dbg !1291, !tbaa !816
  %dec22 = getelementptr inbounds %struct.__NpyArrContext, ptr %31, i32 0, i32 3, !dbg !1292
  %32 = load ptr, ptr %dec22, align 8, !dbg !1292, !tbaa !844
  %dtype23 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %32, i32 0, i32 4, !dbg !1293
  %33 = load ptr, ptr %dtype23, align 8, !dbg !1293, !tbaa !1118
  %call24 = call ptr %30(ptr noundef %33), !dbg !1289
  store ptr %call24, ptr %dtype, align 8, !dbg !1294, !tbaa !816
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end20
  %34 = load ptr, ptr %dtype, align 8, !dbg !1295, !tbaa !816
  %elsize = getelementptr inbounds %struct._PyArray_Descr, ptr %34, i32 0, i32 7, !dbg !1296
  %35 = load i32, ptr %elsize, align 8, !dbg !1296, !tbaa !1297
  %conv = sext i32 %35 to i64, !dbg !1295
  %36 = load ptr, ptr %npyarr, align 8, !dbg !1298, !tbaa !816
  %elsize26 = getelementptr inbounds %struct.__NpyArrContext, ptr %36, i32 0, i32 5, !dbg !1299
  store i64 %conv, ptr %elsize26, align 8, !dbg !1300, !tbaa !943
  %37 = load ptr, ptr %dtype, align 8, !dbg !1301, !tbaa !816
  %flags = getelementptr inbounds %struct._PyArray_Descr, ptr %37, i32 0, i32 5, !dbg !1301
  %38 = load i8, ptr %flags, align 1, !dbg !1301, !tbaa !1303
  %conv27 = sext i8 %38 to i32, !dbg !1301
  %and = and i32 %conv27, 1, !dbg !1301
  %cmp = icmp eq i32 %and, 1, !dbg !1301
  br i1 %cmp, label %if.then33, label %lor.lhs.false29, !dbg !1304

lor.lhs.false29:                                  ; preds = %if.end25
  %39 = load ptr, ptr %npyarr, align 8, !dbg !1305, !tbaa !816
  %elsize30 = getelementptr inbounds %struct.__NpyArrContext, ptr %39, i32 0, i32 5, !dbg !1306
  %40 = load i64, ptr %elsize30, align 8, !dbg !1306, !tbaa !943
  %cmp31 = icmp eq i64 %40, 0, !dbg !1307
  br i1 %cmp31, label %if.then33, label %if.end50, !dbg !1308

if.then33:                                        ; preds = %lor.lhs.false29, %if.end25
  %41 = load ptr, ptr %dtype, align 8, !dbg !1309, !tbaa !816
  call void @_Py_XDECREF(ptr noundef %41), !dbg !1309
  %42 = load ptr, ptr %npyarr, align 8, !dbg !1311, !tbaa !816
  %dec34 = getelementptr inbounds %struct.__NpyArrContext, ptr %42, i32 0, i32 3, !dbg !1313
  %43 = load ptr, ptr %dec34, align 8, !dbg !1313, !tbaa !844
  %curdim35 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %43, i32 0, i32 3, !dbg !1314
  %44 = load i64, ptr %curdim35, align 8, !dbg !1314, !tbaa !858
  %cmp36 = icmp sgt i64 %44, 1, !dbg !1315
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1316

if.then38:                                        ; preds = %if.then33
  %45 = load ptr, ptr @PyExc_ValueError, align 8, !dbg !1317, !tbaa !816
  call void @PyErr_SetString(ptr noundef %45, ptr noundef @.str), !dbg !1319
  br label %fail, !dbg !1320

if.end39:                                         ; preds = %if.then33
  %46 = load ptr, ptr %npyarr, align 8, !dbg !1321, !tbaa !816
  %elcount = getelementptr inbounds %struct.__NpyArrContext, ptr %46, i32 0, i32 6, !dbg !1322
  store i64 0, ptr %elcount, align 8, !dbg !1323, !tbaa !947
  %call40 = call ptr @PyList_New(i64 noundef 0), !dbg !1324
  %47 = load ptr, ptr %npyarr, align 8, !dbg !1325, !tbaa !816
  %ret41 = getelementptr inbounds %struct.__NpyArrContext, ptr %47, i32 0, i32 0, !dbg !1326
  store ptr %call40, ptr %ret41, align 8, !dbg !1327, !tbaa !863
  %48 = load ptr, ptr %npyarr, align 8, !dbg !1328, !tbaa !816
  %ret42 = getelementptr inbounds %struct.__NpyArrContext, ptr %48, i32 0, i32 0, !dbg !1330
  %49 = load ptr, ptr %ret42, align 8, !dbg !1330, !tbaa !863
  %tobool43 = icmp ne ptr %49, null, !dbg !1328
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !1331

if.then44:                                        ; preds = %if.end39
  br label %fail, !dbg !1332

if.end45:                                         ; preds = %if.end39
  %50 = load ptr, ptr %npyarr, align 8, !dbg !1334, !tbaa !816
  %dec46 = getelementptr inbounds %struct.__NpyArrContext, ptr %50, i32 0, i32 3, !dbg !1335
  %51 = load ptr, ptr %dec46, align 8, !dbg !1335, !tbaa !844
  %newArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %51, i32 0, i32 10, !dbg !1336
  store ptr @Object_npyNewArrayList, ptr %newArray, align 8, !dbg !1337, !tbaa !1338
  %52 = load ptr, ptr %npyarr, align 8, !dbg !1339, !tbaa !816
  %dec47 = getelementptr inbounds %struct.__NpyArrContext, ptr %52, i32 0, i32 3, !dbg !1340
  %53 = load ptr, ptr %dec47, align 8, !dbg !1340, !tbaa !844
  %arrayAddItem = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %53, i32 0, i32 2, !dbg !1341
  store ptr @Object_npyArrayListAddItem, ptr %arrayAddItem, align 8, !dbg !1342, !tbaa !1343
  %54 = load ptr, ptr %npyarr, align 8, !dbg !1344, !tbaa !816
  %dec48 = getelementptr inbounds %struct.__NpyArrContext, ptr %54, i32 0, i32 3, !dbg !1345
  %55 = load ptr, ptr %dec48, align 8, !dbg !1345, !tbaa !844
  %endArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %55, i32 0, i32 11, !dbg !1346
  store ptr @Object_npyEndArrayList, ptr %endArray, align 8, !dbg !1347, !tbaa !1348
  %56 = load ptr, ptr %prv.addr, align 8, !dbg !1349, !tbaa !816
  %57 = load ptr, ptr %obj.addr, align 8, !dbg !1350, !tbaa !816
  %58 = load ptr, ptr %value.addr, align 8, !dbg !1351, !tbaa !816
  %call49 = call i32 @Object_npyArrayListAddItem(ptr noundef %56, ptr noundef %57, ptr noundef %58), !dbg !1352
  store i32 %call49, ptr %retval, align 4, !dbg !1353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1353

if.end50:                                         ; preds = %lor.lhs.false29
  %59 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1354, !tbaa !816
  %arrayidx51 = getelementptr ptr, ptr %59, i64 94, !dbg !1354
  %60 = load ptr, ptr %arrayidx51, align 8, !dbg !1354, !tbaa !816
  %61 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1355, !tbaa !816
  %arrayidx52 = getelementptr ptr, ptr %61, i64 2, !dbg !1355
  %62 = load ptr, ptr %arrayidx52, align 8, !dbg !1355, !tbaa !816
  %63 = load ptr, ptr %dtype, align 8, !dbg !1356, !tbaa !816
  %64 = load ptr, ptr %npyarr, align 8, !dbg !1357, !tbaa !816
  %elcount53 = getelementptr inbounds %struct.__NpyArrContext, ptr %64, i32 0, i32 6, !dbg !1358
  %call54 = call ptr %60(ptr noundef %62, ptr noundef %63, i32 noundef 1, ptr noundef %elcount53, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null), !dbg !1354
  %65 = load ptr, ptr %npyarr, align 8, !dbg !1359, !tbaa !816
  %ret55 = getelementptr inbounds %struct.__NpyArrContext, ptr %65, i32 0, i32 0, !dbg !1360
  store ptr %call54, ptr %ret55, align 8, !dbg !1361, !tbaa !863
  %66 = load ptr, ptr %npyarr, align 8, !dbg !1362, !tbaa !816
  %ret56 = getelementptr inbounds %struct.__NpyArrContext, ptr %66, i32 0, i32 0, !dbg !1364
  %67 = load ptr, ptr %ret56, align 8, !dbg !1364, !tbaa !863
  %tobool57 = icmp ne ptr %67, null, !dbg !1362
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !1365

if.then58:                                        ; preds = %if.end50
  br label %fail, !dbg !1366

if.end59:                                         ; preds = %if.end50
  br label %if.end60, !dbg !1368

if.end60:                                         ; preds = %if.end59, %if.end8
  %68 = load i64, ptr %i, align 8, !dbg !1369, !tbaa !977
  %69 = load ptr, ptr %npyarr, align 8, !dbg !1371, !tbaa !816
  %elcount61 = getelementptr inbounds %struct.__NpyArrContext, ptr %69, i32 0, i32 6, !dbg !1372
  %70 = load i64, ptr %elcount61, align 8, !dbg !1372, !tbaa !947
  %cmp62 = icmp sge i64 %68, %70, !dbg !1373
  br i1 %cmp62, label %if.then64, label %if.end90, !dbg !1374

if.then64:                                        ; preds = %if.end60
  %71 = load ptr, ptr %npyarr, align 8, !dbg !1375, !tbaa !816
  %elsize65 = getelementptr inbounds %struct.__NpyArrContext, ptr %71, i32 0, i32 5, !dbg !1378
  %72 = load i64, ptr %elsize65, align 8, !dbg !1378, !tbaa !943
  %cmp66 = icmp eq i64 %72, 0, !dbg !1379
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !1380

if.then68:                                        ; preds = %if.then64
  %73 = load ptr, ptr @PyExc_ValueError, align 8, !dbg !1381, !tbaa !816
  call void @PyErr_SetString(ptr noundef %73, ptr noundef @.str), !dbg !1383
  br label %fail, !dbg !1384

if.end69:                                         ; preds = %if.then64
  %74 = load i64, ptr %i, align 8, !dbg !1385, !tbaa !977
  %shr = ashr i64 %74, 1, !dbg !1386
  %75 = load i64, ptr %i, align 8, !dbg !1387, !tbaa !977
  %cmp70 = icmp slt i64 %75, 4, !dbg !1388
  %76 = zext i1 %cmp70 to i64, !dbg !1387
  %cond = select i1 %cmp70, i32 4, i32 2, !dbg !1387
  %conv72 = sext i32 %cond to i64, !dbg !1389
  %add = add i64 %shr, %conv72, !dbg !1390
  %77 = load i64, ptr %i, align 8, !dbg !1391, !tbaa !977
  %add73 = add i64 %add, %77, !dbg !1392
  %78 = load ptr, ptr %npyarr, align 8, !dbg !1393, !tbaa !816
  %elcount74 = getelementptr inbounds %struct.__NpyArrContext, ptr %78, i32 0, i32 6, !dbg !1394
  store i64 %add73, ptr %elcount74, align 8, !dbg !1395, !tbaa !947
  %79 = load ptr, ptr %npyarr, align 8, !dbg !1396, !tbaa !816
  %elcount75 = getelementptr inbounds %struct.__NpyArrContext, ptr %79, i32 0, i32 6, !dbg !1398
  %80 = load i64, ptr %elcount75, align 8, !dbg !1398, !tbaa !947
  %81 = load ptr, ptr %npyarr, align 8, !dbg !1399, !tbaa !816
  %elsize76 = getelementptr inbounds %struct.__NpyArrContext, ptr %81, i32 0, i32 5, !dbg !1400
  %82 = load i64, ptr %elsize76, align 8, !dbg !1400, !tbaa !943
  %div = sdiv i64 9223372036854775807, %82, !dbg !1401
  %cmp77 = icmp sle i64 %80, %div, !dbg !1402
  br i1 %cmp77, label %if.then79, label %if.else85, !dbg !1403

if.then79:                                        ; preds = %if.end69
  %83 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1404, !tbaa !816
  %arrayidx80 = getelementptr ptr, ptr %83, i64 290, !dbg !1404
  %84 = load ptr, ptr %arrayidx80, align 8, !dbg !1404, !tbaa !816
  %85 = load ptr, ptr %npyarr, align 8, !dbg !1406, !tbaa !816
  %ret81 = getelementptr inbounds %struct.__NpyArrContext, ptr %85, i32 0, i32 0, !dbg !1406
  %86 = load ptr, ptr %ret81, align 8, !dbg !1406, !tbaa !863
  %data = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %86, i32 0, i32 1, !dbg !1406
  %87 = load ptr, ptr %data, align 8, !dbg !1406, !tbaa !1144
  %88 = load ptr, ptr %npyarr, align 8, !dbg !1407, !tbaa !816
  %elcount82 = getelementptr inbounds %struct.__NpyArrContext, ptr %88, i32 0, i32 6, !dbg !1408
  %89 = load i64, ptr %elcount82, align 8, !dbg !1408, !tbaa !947
  %90 = load ptr, ptr %npyarr, align 8, !dbg !1409, !tbaa !816
  %elsize83 = getelementptr inbounds %struct.__NpyArrContext, ptr %90, i32 0, i32 5, !dbg !1410
  %91 = load i64, ptr %elsize83, align 8, !dbg !1410, !tbaa !943
  %mul = mul i64 %89, %91, !dbg !1411
  %call84 = call ptr %84(ptr noundef %87, i64 noundef %mul), !dbg !1404
  store ptr %call84, ptr %new_data, align 8, !dbg !1412, !tbaa !816
  br label %if.end87, !dbg !1413

if.else85:                                        ; preds = %if.end69
  %call86 = call ptr @PyErr_NoMemory(), !dbg !1414
  br label %fail, !dbg !1416

if.end87:                                         ; preds = %if.then79
  %92 = load ptr, ptr %new_data, align 8, !dbg !1417, !tbaa !816
  %93 = load ptr, ptr %npyarr, align 8, !dbg !1418, !tbaa !816
  %ret88 = getelementptr inbounds %struct.__NpyArrContext, ptr %93, i32 0, i32 0, !dbg !1419
  %94 = load ptr, ptr %ret88, align 8, !dbg !1419, !tbaa !863
  %data89 = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %94, i32 0, i32 1, !dbg !1420
  store ptr %92, ptr %data89, align 8, !dbg !1421, !tbaa !1144
  br label %if.end90, !dbg !1422

if.end90:                                         ; preds = %if.end87, %if.end60
  %95 = load i64, ptr %i, align 8, !dbg !1423, !tbaa !977
  %add91 = add i64 %95, 1, !dbg !1424
  %96 = load ptr, ptr %npyarr, align 8, !dbg !1425, !tbaa !816
  %ret92 = getelementptr inbounds %struct.__NpyArrContext, ptr %96, i32 0, i32 0, !dbg !1425
  %97 = load ptr, ptr %ret92, align 8, !dbg !1425, !tbaa !863
  %dimensions = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %97, i32 0, i32 3, !dbg !1425
  %98 = load ptr, ptr %dimensions, align 8, !dbg !1425, !tbaa !1426
  %arrayidx93 = getelementptr i64, ptr %98, i64 0, !dbg !1425
  store i64 %add91, ptr %arrayidx93, align 8, !dbg !1427, !tbaa !977
  %99 = load ptr, ptr %npyarr, align 8, !dbg !1428, !tbaa !816
  %ret94 = getelementptr inbounds %struct.__NpyArrContext, ptr %99, i32 0, i32 0, !dbg !1428
  %100 = load ptr, ptr %ret94, align 8, !dbg !1428, !tbaa !863
  %data95 = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %100, i32 0, i32 1, !dbg !1428
  %101 = load ptr, ptr %data95, align 8, !dbg !1428, !tbaa !1144
  %102 = load i64, ptr %i, align 8, !dbg !1428, !tbaa !977
  %103 = load ptr, ptr %npyarr, align 8, !dbg !1428, !tbaa !816
  %ret96 = getelementptr inbounds %struct.__NpyArrContext, ptr %103, i32 0, i32 0, !dbg !1428
  %104 = load ptr, ptr %ret96, align 8, !dbg !1428, !tbaa !863
  %strides = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %104, i32 0, i32 4, !dbg !1428
  %105 = load ptr, ptr %strides, align 8, !dbg !1428, !tbaa !1430
  %arrayidx97 = getelementptr i64, ptr %105, i64 0, !dbg !1428
  %106 = load i64, ptr %arrayidx97, align 8, !dbg !1428, !tbaa !977
  %mul98 = mul i64 %102, %106, !dbg !1428
  %add.ptr = getelementptr i8, ptr %101, i64 %mul98, !dbg !1428
  store ptr %add.ptr, ptr %item, align 8, !dbg !1431, !tbaa !816
  %cmp99 = icmp eq ptr %add.ptr, null, !dbg !1432
  br i1 %cmp99, label %if.then107, label %lor.lhs.false101, !dbg !1433

lor.lhs.false101:                                 ; preds = %if.end90
  %107 = load ptr, ptr %npyarr, align 8, !dbg !1434, !tbaa !816
  %ret102 = getelementptr inbounds %struct.__NpyArrContext, ptr %107, i32 0, i32 0, !dbg !1434
  %108 = load ptr, ptr %ret102, align 8, !dbg !1434, !tbaa !863
  %descr = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %108, i32 0, i32 6, !dbg !1434
  %109 = load ptr, ptr %descr, align 8, !dbg !1434, !tbaa !1435
  %f = getelementptr inbounds %struct._PyArray_Descr, ptr %109, i32 0, i32 12, !dbg !1434
  %110 = load ptr, ptr %f, align 8, !dbg !1434, !tbaa !1436
  %setitem = getelementptr inbounds %struct.PyArray_ArrFuncs, ptr %110, i32 0, i32 2, !dbg !1434
  %111 = load ptr, ptr %setitem, align 8, !dbg !1434, !tbaa !1437
  %112 = load ptr, ptr %value.addr, align 8, !dbg !1434, !tbaa !816
  %113 = load ptr, ptr %item, align 8, !dbg !1434, !tbaa !816
  %114 = load ptr, ptr %npyarr, align 8, !dbg !1434, !tbaa !816
  %ret103 = getelementptr inbounds %struct.__NpyArrContext, ptr %114, i32 0, i32 0, !dbg !1434
  %115 = load ptr, ptr %ret103, align 8, !dbg !1434, !tbaa !863
  %call104 = call i32 %111(ptr noundef %112, ptr noundef %113, ptr noundef %115), !dbg !1434
  %cmp105 = icmp eq i32 %call104, -1, !dbg !1439
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !1440

if.then107:                                       ; preds = %lor.lhs.false101, %if.end90
  br label %fail, !dbg !1441

if.end108:                                        ; preds = %lor.lhs.false101
  %116 = load ptr, ptr %value.addr, align 8, !dbg !1443, !tbaa !816
  call void @_Py_DECREF(ptr noundef %116), !dbg !1443
  %117 = load ptr, ptr %npyarr, align 8, !dbg !1444, !tbaa !816
  %i109 = getelementptr inbounds %struct.__NpyArrContext, ptr %117, i32 0, i32 4, !dbg !1445
  %118 = load i64, ptr %i109, align 8, !dbg !1446, !tbaa !951
  %inc110 = add i64 %118, 1, !dbg !1446
  store i64 %inc110, ptr %i109, align 8, !dbg !1446, !tbaa !951
  store i32 1, ptr %retval, align 4, !dbg !1447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1447

fail:                                             ; preds = %if.then107, %if.else85, %if.then68, %if.then58, %if.then44, %if.then38, %if.then19
  tail call void @llvm.dbg.label(metadata !1227), !dbg !1448
  %119 = load ptr, ptr %npyarr, align 8, !dbg !1449, !tbaa !816
  call void @Npy_releaseContext(ptr noundef %119), !dbg !1450
  store i32 0, ptr %retval, align 4, !dbg !1451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1451

cleanup:                                          ; preds = %fail, %if.end108, %if.end45, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #6, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_data) #6, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtype) #6, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #6, !dbg !1452
  %120 = load i32, ptr %retval, align 4, !dbg !1452
  ret i32 %120, !dbg !1452
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_Py_IS_TYPE(ptr noundef %ob, ptr noundef %type) #2 !dbg !1453 {
entry:
  %ob.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %ob.addr, metadata !1459, metadata !DIExpression()), !dbg !1461
  store ptr %type, ptr %type.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1460, metadata !DIExpression()), !dbg !1462
  %0 = load ptr, ptr %ob.addr, align 8, !dbg !1463, !tbaa !816
  %ob_type = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 1, !dbg !1464
  %1 = load ptr, ptr %ob_type, align 8, !dbg !1464, !tbaa !1261
  %2 = load ptr, ptr %type.addr, align 8, !dbg !1465, !tbaa !816
  %cmp = icmp eq ptr %1, %2, !dbg !1466
  %conv = zext i1 %cmp to i32, !dbg !1466
  ret i32 %conv, !dbg !1467
}

declare !dbg !1468 i32 @PyType_IsSubtype(ptr noundef, ptr noundef) #1

declare !dbg !1471 ptr @PyObject_Type(ptr noundef) #1

declare !dbg !1473 void @PyErr_SetString(ptr noundef, ptr noundef) #1

declare !dbg !1476 ptr @PyList_New(i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_npyNewArrayList(ptr noundef %prv, ptr noundef %_decoder) #0 !dbg !1478 {
entry:
  %prv.addr = alloca ptr, align 8
  %_decoder.addr = alloca ptr, align 8
  %decoder = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1480, metadata !DIExpression()), !dbg !1483
  store ptr %_decoder, ptr %_decoder.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %_decoder.addr, metadata !1481, metadata !DIExpression()), !dbg !1484
  call void @llvm.lifetime.start.p0(i64 8, ptr %decoder) #6, !dbg !1485
  tail call void @llvm.dbg.declare(metadata ptr %decoder, metadata !1482, metadata !DIExpression()), !dbg !1486
  %0 = load ptr, ptr %_decoder.addr, align 8, !dbg !1487, !tbaa !816
  store ptr %0, ptr %decoder, align 8, !dbg !1486, !tbaa !816
  %1 = load ptr, ptr @PyExc_ValueError, align 8, !dbg !1488, !tbaa !816
  call void @PyErr_SetString(ptr noundef %1, ptr noundef @.str.1), !dbg !1489
  %2 = load ptr, ptr %decoder, align 8, !dbg !1490, !tbaa !816
  %npyarr = getelementptr inbounds %struct.__PyObjectDecoder, ptr %2, i32 0, i32 1, !dbg !1491
  %3 = load ptr, ptr %npyarr, align 8, !dbg !1491, !tbaa !851
  call void @Npy_releaseContext(ptr noundef %3), !dbg !1492
  call void @llvm.lifetime.end.p0(i64 8, ptr %decoder) #6, !dbg !1493
  ret ptr null, !dbg !1494
}

; Function Attrs: nounwind uwtable
define i32 @Object_npyArrayListAddItem(ptr noundef %prv, ptr noundef %obj, ptr noundef %value) #0 !dbg !1495 {
entry:
  %retval = alloca i32, align 4
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %npyarr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1497, metadata !DIExpression()), !dbg !1501
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1498, metadata !DIExpression()), !dbg !1502
  store ptr %value, ptr %value.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1499, metadata !DIExpression()), !dbg !1503
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !1504
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !1500, metadata !DIExpression()), !dbg !1505
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1506, !tbaa !816
  store ptr %0, ptr %npyarr, align 8, !dbg !1505, !tbaa !816
  %1 = load ptr, ptr %npyarr, align 8, !dbg !1507, !tbaa !816
  %tobool = icmp ne ptr %1, null, !dbg !1507
  br i1 %tobool, label %if.end, label %if.then, !dbg !1509

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1510

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %npyarr, align 8, !dbg !1512, !tbaa !816
  %ret = getelementptr inbounds %struct.__NpyArrContext, ptr %2, i32 0, i32 0, !dbg !1513
  %3 = load ptr, ptr %ret, align 8, !dbg !1513, !tbaa !863
  %4 = load ptr, ptr %value.addr, align 8, !dbg !1514, !tbaa !816
  %call = call i32 @PyList_Append(ptr noundef %3, ptr noundef %4), !dbg !1515
  %5 = load ptr, ptr %value.addr, align 8, !dbg !1516, !tbaa !816
  call void @_Py_DECREF(ptr noundef %5), !dbg !1516
  %6 = load ptr, ptr %npyarr, align 8, !dbg !1517, !tbaa !816
  %elcount = getelementptr inbounds %struct.__NpyArrContext, ptr %6, i32 0, i32 6, !dbg !1518
  %7 = load i64, ptr %elcount, align 8, !dbg !1519, !tbaa !947
  %inc = add i64 %7, 1, !dbg !1519
  store i64 %inc, ptr %elcount, align 8, !dbg !1519, !tbaa !947
  store i32 1, ptr %retval, align 4, !dbg !1520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1520

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !1521
  %8 = load i32, ptr %retval, align 4, !dbg !1521
  ret i32 %8, !dbg !1521
}

; Function Attrs: nounwind uwtable
define ptr @Object_npyEndArrayList(ptr noundef %prv, ptr noundef %obj) #0 !dbg !1522 {
entry:
  %retval = alloca ptr, align 8
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %npyarr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1524, metadata !DIExpression()), !dbg !1529
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1525, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #6, !dbg !1531
  tail call void @llvm.dbg.declare(metadata ptr %list, metadata !1526, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !1531
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1527, metadata !DIExpression()), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !1534
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !1528, metadata !DIExpression()), !dbg !1535
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1536, !tbaa !816
  store ptr %0, ptr %npyarr, align 8, !dbg !1535, !tbaa !816
  %1 = load ptr, ptr %npyarr, align 8, !dbg !1537, !tbaa !816
  %tobool = icmp ne ptr %1, null, !dbg !1537
  br i1 %tobool, label %if.end, label %if.then, !dbg !1539

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1540

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %npyarr, align 8, !dbg !1542, !tbaa !816
  %ret1 = getelementptr inbounds %struct.__NpyArrContext, ptr %2, i32 0, i32 0, !dbg !1543
  %3 = load ptr, ptr %ret1, align 8, !dbg !1543, !tbaa !863
  store ptr %3, ptr %list, align 8, !dbg !1544, !tbaa !816
  %4 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1545, !tbaa !816
  %arrayidx = getelementptr ptr, ptr %4, i64 69, !dbg !1545
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1545, !tbaa !816
  %6 = load ptr, ptr %list, align 8, !dbg !1545, !tbaa !816
  %call = call ptr %5(ptr noundef %6, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null), !dbg !1545
  %7 = load ptr, ptr %npyarr, align 8, !dbg !1546, !tbaa !816
  %ret2 = getelementptr inbounds %struct.__NpyArrContext, ptr %7, i32 0, i32 0, !dbg !1547
  store ptr %call, ptr %ret2, align 8, !dbg !1548, !tbaa !863
  %8 = load ptr, ptr %npyarr, align 8, !dbg !1549, !tbaa !816
  %call3 = call ptr @Npy_returnLabelled(ptr noundef %8), !dbg !1550
  store ptr %call3, ptr %ret, align 8, !dbg !1551, !tbaa !816
  %9 = load ptr, ptr %list, align 8, !dbg !1552, !tbaa !816
  %10 = load ptr, ptr %npyarr, align 8, !dbg !1553, !tbaa !816
  %ret4 = getelementptr inbounds %struct.__NpyArrContext, ptr %10, i32 0, i32 0, !dbg !1554
  store ptr %9, ptr %ret4, align 8, !dbg !1555, !tbaa !863
  %11 = load ptr, ptr %npyarr, align 8, !dbg !1556, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %11, i32 0, i32 3, !dbg !1557
  %12 = load ptr, ptr %dec, align 8, !dbg !1557, !tbaa !844
  %newArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %12, i32 0, i32 10, !dbg !1558
  store ptr @Object_npyNewArray, ptr %newArray, align 8, !dbg !1559, !tbaa !1338
  %13 = load ptr, ptr %npyarr, align 8, !dbg !1560, !tbaa !816
  %dec5 = getelementptr inbounds %struct.__NpyArrContext, ptr %13, i32 0, i32 3, !dbg !1561
  %14 = load ptr, ptr %dec5, align 8, !dbg !1561, !tbaa !844
  %arrayAddItem = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %14, i32 0, i32 2, !dbg !1562
  store ptr @Object_npyArrayAddItem, ptr %arrayAddItem, align 8, !dbg !1563, !tbaa !1343
  %15 = load ptr, ptr %npyarr, align 8, !dbg !1564, !tbaa !816
  %dec6 = getelementptr inbounds %struct.__NpyArrContext, ptr %15, i32 0, i32 3, !dbg !1565
  %16 = load ptr, ptr %dec6, align 8, !dbg !1565, !tbaa !844
  %endArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %16, i32 0, i32 11, !dbg !1566
  store ptr @Object_npyEndArray, ptr %endArray, align 8, !dbg !1567, !tbaa !1348
  %17 = load ptr, ptr %npyarr, align 8, !dbg !1568, !tbaa !816
  call void @Npy_releaseContext(ptr noundef %17), !dbg !1569
  %18 = load ptr, ptr %ret, align 8, !dbg !1570, !tbaa !816
  store ptr %18, ptr %retval, align 8, !dbg !1571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1571

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !1572
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #6, !dbg !1572
  %19 = load ptr, ptr %retval, align 8, !dbg !1572
  ret ptr %19, !dbg !1572
}

declare !dbg !1573 i32 @PyList_Append(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_npyNewObject(ptr noundef %prv, ptr noundef %_decoder) #0 !dbg !1574 {
entry:
  %retval = alloca ptr, align 8
  %prv.addr = alloca ptr, align 8
  %_decoder.addr = alloca ptr, align 8
  %decoder = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1576, metadata !DIExpression()), !dbg !1579
  store ptr %_decoder, ptr %_decoder.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %_decoder.addr, metadata !1577, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 8, ptr %decoder) #6, !dbg !1581
  tail call void @llvm.dbg.declare(metadata ptr %decoder, metadata !1578, metadata !DIExpression()), !dbg !1582
  %0 = load ptr, ptr %_decoder.addr, align 8, !dbg !1583, !tbaa !816
  store ptr %0, ptr %decoder, align 8, !dbg !1582, !tbaa !816
  %1 = load ptr, ptr %decoder, align 8, !dbg !1584, !tbaa !816
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %1, i32 0, i32 3, !dbg !1586
  %2 = load i64, ptr %curdim, align 8, !dbg !1586, !tbaa !858
  %cmp = icmp sgt i64 %2, 1, !dbg !1587
  br i1 %cmp, label %if.then, label %if.end, !dbg !1588

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @PyExc_ValueError, align 8, !dbg !1589, !tbaa !816
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.2), !dbg !1591
  store ptr null, ptr %retval, align 8, !dbg !1592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1592

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %decoder, align 8, !dbg !1593, !tbaa !816
  %newArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %4, i32 0, i32 10, !dbg !1594
  %5 = load ptr, ptr %newArray, align 8, !dbg !1594, !tbaa !1338
  %6 = load ptr, ptr %prv.addr, align 8, !dbg !1595, !tbaa !816
  %7 = load ptr, ptr %decoder, align 8, !dbg !1596, !tbaa !816
  %call = call ptr %5(ptr noundef %6, ptr noundef %7), !dbg !1597
  store ptr %call, ptr %retval, align 8, !dbg !1598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1598

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %decoder) #6, !dbg !1599
  %8 = load ptr, ptr %retval, align 8, !dbg !1599
  ret ptr %8, !dbg !1599
}

; Function Attrs: nounwind uwtable
define ptr @Object_npyEndObject(ptr noundef %prv, ptr noundef %obj) #0 !dbg !1600 {
entry:
  %retval = alloca ptr, align 8
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %labelidx = alloca i64, align 8
  %npyarr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1602, metadata !DIExpression()), !dbg !1607
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1603, metadata !DIExpression()), !dbg !1608
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #6, !dbg !1609
  tail call void @llvm.dbg.declare(metadata ptr %list, metadata !1604, metadata !DIExpression()), !dbg !1610
  call void @llvm.lifetime.start.p0(i64 8, ptr %labelidx) #6, !dbg !1611
  tail call void @llvm.dbg.declare(metadata ptr %labelidx, metadata !1605, metadata !DIExpression()), !dbg !1612
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !1613
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !1606, metadata !DIExpression()), !dbg !1614
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1615, !tbaa !816
  store ptr %0, ptr %npyarr, align 8, !dbg !1614, !tbaa !816
  %1 = load ptr, ptr %npyarr, align 8, !dbg !1616, !tbaa !816
  %tobool = icmp ne ptr %1, null, !dbg !1616
  br i1 %tobool, label %if.end, label %if.then, !dbg !1618

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1619

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %npyarr, align 8, !dbg !1621, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %2, i32 0, i32 3, !dbg !1622
  %3 = load ptr, ptr %dec, align 8, !dbg !1622, !tbaa !844
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %3, i32 0, i32 3, !dbg !1623
  %4 = load i64, ptr %curdim, align 8, !dbg !1623, !tbaa !858
  %sub = sub i64 %4, 1, !dbg !1624
  store i64 %sub, ptr %labelidx, align 8, !dbg !1625, !tbaa !977
  %5 = load ptr, ptr %npyarr, align 8, !dbg !1626, !tbaa !816
  %labels = getelementptr inbounds %struct.__NpyArrContext, ptr %5, i32 0, i32 1, !dbg !1627
  %6 = load i64, ptr %labelidx, align 8, !dbg !1628, !tbaa !977
  %arrayidx = getelementptr [2 x ptr], ptr %labels, i64 0, i64 %6, !dbg !1626
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1626, !tbaa !816
  store ptr %7, ptr %list, align 8, !dbg !1629, !tbaa !816
  %8 = load ptr, ptr %list, align 8, !dbg !1630, !tbaa !816
  %tobool1 = icmp ne ptr %8, null, !dbg !1630
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !1632

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1633, !tbaa !816
  %arrayidx3 = getelementptr ptr, ptr %9, i64 69, !dbg !1633
  %10 = load ptr, ptr %arrayidx3, align 8, !dbg !1633, !tbaa !816
  %11 = load ptr, ptr %list, align 8, !dbg !1633, !tbaa !816
  %call = call ptr %10(ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null), !dbg !1633
  %12 = load ptr, ptr %npyarr, align 8, !dbg !1635, !tbaa !816
  %labels4 = getelementptr inbounds %struct.__NpyArrContext, ptr %12, i32 0, i32 1, !dbg !1636
  %13 = load i64, ptr %labelidx, align 8, !dbg !1637, !tbaa !977
  %arrayidx5 = getelementptr [2 x ptr], ptr %labels4, i64 0, i64 %13, !dbg !1635
  store ptr %call, ptr %arrayidx5, align 8, !dbg !1638, !tbaa !816
  %14 = load ptr, ptr %list, align 8, !dbg !1639, !tbaa !816
  call void @_Py_DECREF(ptr noundef %14), !dbg !1639
  br label %if.end6, !dbg !1640

if.end6:                                          ; preds = %if.then2, %if.end
  %15 = load ptr, ptr %npyarr, align 8, !dbg !1641, !tbaa !816
  %dec7 = getelementptr inbounds %struct.__NpyArrContext, ptr %15, i32 0, i32 3, !dbg !1642
  %16 = load ptr, ptr %dec7, align 8, !dbg !1642, !tbaa !844
  %endArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %16, i32 0, i32 11, !dbg !1643
  %17 = load ptr, ptr %endArray, align 8, !dbg !1643, !tbaa !1348
  %18 = load ptr, ptr %prv.addr, align 8, !dbg !1644, !tbaa !816
  %19 = load ptr, ptr %obj.addr, align 8, !dbg !1645, !tbaa !816
  %call8 = call ptr %17(ptr noundef %18, ptr noundef %19), !dbg !1646
  store ptr %call8, ptr %retval, align 8, !dbg !1647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1647

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 8, ptr %labelidx) #6, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #6, !dbg !1648
  %20 = load ptr, ptr %retval, align 8, !dbg !1648
  ret ptr %20, !dbg !1648
}

; Function Attrs: nounwind uwtable
define i32 @Object_npyObjectAddKey(ptr noundef %prv, ptr noundef %obj, ptr noundef %name, ptr noundef %value) #0 !dbg !1649 {
entry:
  %retval = alloca i32, align 4
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %label = alloca ptr, align 8
  %labels = alloca ptr, align 8
  %labelidx = alloca i64, align 8
  %npyarr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1651, metadata !DIExpression()), !dbg !1659
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1652, metadata !DIExpression()), !dbg !1660
  store ptr %name, ptr %name.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1653, metadata !DIExpression()), !dbg !1661
  store ptr %value, ptr %value.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1654, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #6, !dbg !1663
  tail call void @llvm.dbg.declare(metadata ptr %label, metadata !1655, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 8, ptr %labels) #6, !dbg !1663
  tail call void @llvm.dbg.declare(metadata ptr %labels, metadata !1656, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr %labelidx) #6, !dbg !1666
  tail call void @llvm.dbg.declare(metadata ptr %labelidx, metadata !1657, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 8, ptr %npyarr) #6, !dbg !1668
  tail call void @llvm.dbg.declare(metadata ptr %npyarr, metadata !1658, metadata !DIExpression()), !dbg !1669
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1670, !tbaa !816
  store ptr %0, ptr %npyarr, align 8, !dbg !1669, !tbaa !816
  %1 = load ptr, ptr %npyarr, align 8, !dbg !1671, !tbaa !816
  %tobool = icmp ne ptr %1, null, !dbg !1671
  br i1 %tobool, label %if.end, label %if.then, !dbg !1673

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1674

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !1676, !tbaa !816
  store ptr %2, ptr %label, align 8, !dbg !1677, !tbaa !816
  %3 = load ptr, ptr %npyarr, align 8, !dbg !1678, !tbaa !816
  %dec = getelementptr inbounds %struct.__NpyArrContext, ptr %3, i32 0, i32 3, !dbg !1679
  %4 = load ptr, ptr %dec, align 8, !dbg !1679, !tbaa !844
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %4, i32 0, i32 3, !dbg !1680
  %5 = load i64, ptr %curdim, align 8, !dbg !1680, !tbaa !858
  %sub = sub i64 %5, 1, !dbg !1681
  store i64 %sub, ptr %labelidx, align 8, !dbg !1682, !tbaa !977
  %6 = load ptr, ptr %npyarr, align 8, !dbg !1683, !tbaa !816
  %labels1 = getelementptr inbounds %struct.__NpyArrContext, ptr %6, i32 0, i32 1, !dbg !1685
  %7 = load i64, ptr %labelidx, align 8, !dbg !1686, !tbaa !977
  %arrayidx = getelementptr [2 x ptr], ptr %labels1, i64 0, i64 %7, !dbg !1683
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1683, !tbaa !816
  %tobool2 = icmp ne ptr %8, null, !dbg !1683
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !1687

if.then3:                                         ; preds = %if.end
  %call = call ptr @PyList_New(i64 noundef 0), !dbg !1688
  %9 = load ptr, ptr %npyarr, align 8, !dbg !1690, !tbaa !816
  %labels4 = getelementptr inbounds %struct.__NpyArrContext, ptr %9, i32 0, i32 1, !dbg !1691
  %10 = load i64, ptr %labelidx, align 8, !dbg !1692, !tbaa !977
  %arrayidx5 = getelementptr [2 x ptr], ptr %labels4, i64 0, i64 %10, !dbg !1690
  store ptr %call, ptr %arrayidx5, align 8, !dbg !1693, !tbaa !816
  br label %if.end6, !dbg !1694

if.end6:                                          ; preds = %if.then3, %if.end
  %11 = load ptr, ptr %npyarr, align 8, !dbg !1695, !tbaa !816
  %labels7 = getelementptr inbounds %struct.__NpyArrContext, ptr %11, i32 0, i32 1, !dbg !1696
  %12 = load i64, ptr %labelidx, align 8, !dbg !1697, !tbaa !977
  %arrayidx8 = getelementptr [2 x ptr], ptr %labels7, i64 0, i64 %12, !dbg !1695
  %13 = load ptr, ptr %arrayidx8, align 8, !dbg !1695, !tbaa !816
  store ptr %13, ptr %labels, align 8, !dbg !1698, !tbaa !816
  %14 = load ptr, ptr %labels, align 8, !dbg !1699, !tbaa !816
  %ob_type = getelementptr inbounds %struct._object, ptr %14, i32 0, i32 1, !dbg !1699
  %15 = load ptr, ptr %ob_type, align 8, !dbg !1699, !tbaa !1261
  %call9 = call i32 @PyType_HasFeature(ptr noundef %15, i64 noundef 33554432), !dbg !1699
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1699
  br i1 %tobool10, label %land.lhs.true, label %if.end13, !dbg !1701

land.lhs.true:                                    ; preds = %if.end6
  %16 = load ptr, ptr %labels, align 8, !dbg !1702, !tbaa !816
  %ob_size = getelementptr inbounds %struct.PyVarObject, ptr %16, i32 0, i32 1, !dbg !1702
  %17 = load i64, ptr %ob_size, align 8, !dbg !1702, !tbaa !1703
  %18 = load ptr, ptr %npyarr, align 8, !dbg !1705, !tbaa !816
  %elcount = getelementptr inbounds %struct.__NpyArrContext, ptr %18, i32 0, i32 6, !dbg !1706
  %19 = load i64, ptr %elcount, align 8, !dbg !1706, !tbaa !947
  %cmp = icmp sle i64 %17, %19, !dbg !1707
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !1708

if.then11:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %labels, align 8, !dbg !1709, !tbaa !816
  %21 = load ptr, ptr %label, align 8, !dbg !1711, !tbaa !816
  %call12 = call i32 @PyList_Append(ptr noundef %20, ptr noundef %21), !dbg !1712
  br label %if.end13, !dbg !1713

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %if.end6
  %22 = load ptr, ptr %npyarr, align 8, !dbg !1714, !tbaa !816
  %dec14 = getelementptr inbounds %struct.__NpyArrContext, ptr %22, i32 0, i32 3, !dbg !1716
  %23 = load ptr, ptr %dec14, align 8, !dbg !1716, !tbaa !844
  %arrayAddItem = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %23, i32 0, i32 2, !dbg !1717
  %24 = load ptr, ptr %arrayAddItem, align 8, !dbg !1717, !tbaa !1343
  %25 = load ptr, ptr %prv.addr, align 8, !dbg !1718, !tbaa !816
  %26 = load ptr, ptr %obj.addr, align 8, !dbg !1719, !tbaa !816
  %27 = load ptr, ptr %value.addr, align 8, !dbg !1720, !tbaa !816
  %call15 = call i32 %24(ptr noundef %25, ptr noundef %26, ptr noundef %27), !dbg !1721
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1721
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1722

if.then17:                                        ; preds = %if.end13
  %28 = load ptr, ptr %label, align 8, !dbg !1723, !tbaa !816
  call void @_Py_DECREF(ptr noundef %28), !dbg !1723
  store i32 1, ptr %retval, align 4, !dbg !1725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1725

if.end18:                                         ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !1726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1726

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %npyarr) #6, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %labelidx) #6, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %labels) #6, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #6, !dbg !1727
  %29 = load i32, ptr %retval, align 4, !dbg !1727
  ret i32 %29, !dbg !1727
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyType_HasFeature(ptr noundef %type, i64 noundef %feature) #2 !dbg !1728 {
entry:
  %type.addr = alloca ptr, align 8
  %feature.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  store ptr %type, ptr %type.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1732, metadata !DIExpression()), !dbg !1735
  store i64 %feature, ptr %feature.addr, align 8, !tbaa !977
  tail call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1733, metadata !DIExpression()), !dbg !1736
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !1737
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1734, metadata !DIExpression()), !dbg !1738
  %0 = load ptr, ptr %type.addr, align 8, !dbg !1739, !tbaa !816
  %tp_flags = getelementptr inbounds %struct._typeobject, ptr %0, i32 0, i32 19, !dbg !1740
  %1 = load i64, ptr %tp_flags, align 8, !dbg !1740, !tbaa !1741
  store i64 %1, ptr %flags, align 8, !dbg !1743, !tbaa !977
  %2 = load i64, ptr %flags, align 8, !dbg !1744, !tbaa !977
  %3 = load i64, ptr %feature.addr, align 8, !dbg !1745, !tbaa !977
  %and = and i64 %2, %3, !dbg !1746
  %cmp = icmp ne i64 %and, 0, !dbg !1747
  %conv = zext i1 %cmp to i32, !dbg !1747
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !1748
  ret i32 %conv, !dbg !1749
}

; Function Attrs: nounwind uwtable
define i32 @Object_objectAddKey(ptr noundef %prv, ptr noundef %obj, ptr noundef %name, ptr noundef %value) #0 !dbg !1750 {
entry:
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1752, metadata !DIExpression()), !dbg !1757
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1753, metadata !DIExpression()), !dbg !1758
  store ptr %name, ptr %name.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1754, metadata !DIExpression()), !dbg !1759
  store ptr %value, ptr %value.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1755, metadata !DIExpression()), !dbg !1760
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !1761
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1756, metadata !DIExpression()), !dbg !1762
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1763, !tbaa !816
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1764, !tbaa !816
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1765, !tbaa !816
  %call = call i32 @PyDict_SetItem(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !1766
  store i32 %call, ptr %ret, align 4, !dbg !1762, !tbaa !1088
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1767, !tbaa !816
  call void @_Py_DECREF(ptr noundef %3), !dbg !1767
  %4 = load ptr, ptr %value.addr, align 8, !dbg !1768, !tbaa !816
  call void @_Py_DECREF(ptr noundef %4), !dbg !1768
  %5 = load i32, ptr %ret, align 4, !dbg !1769, !tbaa !1088
  %cmp = icmp eq i32 %5, 0, !dbg !1770
  %6 = zext i1 %cmp to i64, !dbg !1769
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !1769
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !1771
  ret i32 %cond, !dbg !1772
}

declare !dbg !1773 i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @Object_arrayAddItem(ptr noundef %prv, ptr noundef %obj, ptr noundef %value) #0 !dbg !1775 {
entry:
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1777, metadata !DIExpression()), !dbg !1781
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1778, metadata !DIExpression()), !dbg !1782
  store ptr %value, ptr %value.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1779, metadata !DIExpression()), !dbg !1783
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !1784
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1780, metadata !DIExpression()), !dbg !1785
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1786, !tbaa !816
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1787, !tbaa !816
  %call = call i32 @PyList_Append(ptr noundef %0, ptr noundef %1), !dbg !1788
  store i32 %call, ptr %ret, align 4, !dbg !1785, !tbaa !1088
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1789, !tbaa !816
  call void @_Py_DECREF(ptr noundef %2), !dbg !1789
  %3 = load i32, ptr %ret, align 4, !dbg !1790, !tbaa !1088
  %cmp = icmp eq i32 %3, 0, !dbg !1791
  %4 = zext i1 %cmp to i64, !dbg !1790
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !1790
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !1792
  ret i32 %cond, !dbg !1793
}

; Function Attrs: nounwind uwtable
define ptr @Object_newString(ptr noundef %prv, ptr noundef %start, ptr noundef %end) #0 !dbg !1794 {
entry:
  %prv.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1796, metadata !DIExpression()), !dbg !1799
  store ptr %start, ptr %start.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1797, metadata !DIExpression()), !dbg !1800
  store ptr %end, ptr %end.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1798, metadata !DIExpression()), !dbg !1801
  %0 = load ptr, ptr %start.addr, align 8, !dbg !1802, !tbaa !816
  %1 = load ptr, ptr %end.addr, align 8, !dbg !1803, !tbaa !816
  %2 = load ptr, ptr %start.addr, align 8, !dbg !1804, !tbaa !816
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !1805
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !1805
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1805
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !1805
  %call = call ptr @PyUnicode_FromWideChar(ptr noundef %0, i64 noundef %sub.ptr.div), !dbg !1806
  ret ptr %call, !dbg !1807
}

declare !dbg !1808 ptr @PyUnicode_FromWideChar(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_newTrue(ptr noundef %prv) #0 !dbg !1814 {
entry:
  %prv.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1816, metadata !DIExpression()), !dbg !1817
  call void @_Py_INCREF(ptr noundef @_Py_TrueStruct), !dbg !1818
  ret ptr @_Py_TrueStruct, !dbg !1818
}

; Function Attrs: nounwind uwtable
define ptr @Object_newFalse(ptr noundef %prv) #0 !dbg !1819 {
entry:
  %prv.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1821, metadata !DIExpression()), !dbg !1822
  call void @_Py_INCREF(ptr noundef @_Py_FalseStruct), !dbg !1823
  ret ptr @_Py_FalseStruct, !dbg !1823
}

; Function Attrs: nounwind uwtable
define ptr @Object_newNull(ptr noundef %prv) #0 !dbg !1824 {
entry:
  %prv.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1826, metadata !DIExpression()), !dbg !1827
  call void @_Py_INCREF(ptr noundef @_Py_NoneStruct), !dbg !1828
  ret ptr @_Py_NoneStruct, !dbg !1828
}

; Function Attrs: nounwind uwtable
define ptr @Object_newPosInf(ptr noundef %prv) #0 !dbg !1829 {
entry:
  %prv.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1831, metadata !DIExpression()), !dbg !1832
  %call = call ptr @PyFloat_FromDouble(double noundef 0x7FF0000000000000), !dbg !1833
  ret ptr %call, !dbg !1834
}

declare !dbg !1835 ptr @PyFloat_FromDouble(double noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_newNegInf(ptr noundef %prv) #0 !dbg !1839 {
entry:
  %prv.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1841, metadata !DIExpression()), !dbg !1842
  %call = call ptr @PyFloat_FromDouble(double noundef 0xFFF0000000000000), !dbg !1843
  ret ptr %call, !dbg !1844
}

; Function Attrs: nounwind uwtable
define ptr @Object_newObject(ptr noundef %prv, ptr noundef %decoder) #0 !dbg !1845 {
entry:
  %prv.addr = alloca ptr, align 8
  %decoder.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1847, metadata !DIExpression()), !dbg !1849
  store ptr %decoder, ptr %decoder.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %decoder.addr, metadata !1848, metadata !DIExpression()), !dbg !1850
  %call = call ptr @PyDict_New(), !dbg !1851
  ret ptr %call, !dbg !1852
}

declare !dbg !1853 ptr @PyDict_New() #1

; Function Attrs: nounwind uwtable
define ptr @Object_endObject(ptr noundef %prv, ptr noundef %obj) #0 !dbg !1854 {
entry:
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1856, metadata !DIExpression()), !dbg !1858
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1857, metadata !DIExpression()), !dbg !1859
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1860, !tbaa !816
  ret ptr %0, !dbg !1861
}

; Function Attrs: nounwind uwtable
define ptr @Object_newArray(ptr noundef %prv, ptr noundef %decoder) #0 !dbg !1862 {
entry:
  %prv.addr = alloca ptr, align 8
  %decoder.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1864, metadata !DIExpression()), !dbg !1866
  store ptr %decoder, ptr %decoder.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %decoder.addr, metadata !1865, metadata !DIExpression()), !dbg !1867
  %call = call ptr @PyList_New(i64 noundef 0), !dbg !1868
  ret ptr %call, !dbg !1869
}

; Function Attrs: nounwind uwtable
define ptr @Object_endArray(ptr noundef %prv, ptr noundef %obj) #0 !dbg !1870 {
entry:
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1872, metadata !DIExpression()), !dbg !1874
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1873, metadata !DIExpression()), !dbg !1875
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !1876, !tbaa !816
  ret ptr %0, !dbg !1877
}

; Function Attrs: nounwind uwtable
define ptr @Object_newInteger(ptr noundef %prv, i32 noundef %value) #0 !dbg !1878 {
entry:
  %prv.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1880, metadata !DIExpression()), !dbg !1882
  store i32 %value, ptr %value.addr, align 4, !tbaa !1088
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1881, metadata !DIExpression()), !dbg !1883
  %0 = load i32, ptr %value.addr, align 4, !dbg !1884, !tbaa !1088
  %conv = sext i32 %0 to i64, !dbg !1885
  %call = call ptr @PyLong_FromLong(i64 noundef %conv), !dbg !1886
  ret ptr %call, !dbg !1887
}

declare !dbg !1888 ptr @PyLong_FromLong(i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_newLong(ptr noundef %prv, i64 noundef %value) #0 !dbg !1892 {
entry:
  %prv.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1894, metadata !DIExpression()), !dbg !1896
  store i64 %value, ptr %value.addr, align 8, !tbaa !977
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1895, metadata !DIExpression()), !dbg !1897
  %0 = load i64, ptr %value.addr, align 8, !dbg !1898, !tbaa !977
  %call = call ptr @PyLong_FromLongLong(i64 noundef %0), !dbg !1899
  ret ptr %call, !dbg !1900
}

declare !dbg !1901 ptr @PyLong_FromLongLong(i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_newUnsignedLong(ptr noundef %prv, i64 noundef %value) #0 !dbg !1905 {
entry:
  %prv.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1907, metadata !DIExpression()), !dbg !1909
  store i64 %value, ptr %value.addr, align 8, !tbaa !977
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1908, metadata !DIExpression()), !dbg !1910
  %0 = load i64, ptr %value.addr, align 8, !dbg !1911, !tbaa !977
  %call = call ptr @PyLong_FromUnsignedLongLong(i64 noundef %0), !dbg !1912
  ret ptr %call, !dbg !1913
}

declare !dbg !1914 ptr @PyLong_FromUnsignedLongLong(i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @Object_newDouble(ptr noundef %prv, double noundef %value) #0 !dbg !1918 {
entry:
  %prv.addr = alloca ptr, align 8
  %value.addr = alloca double, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !1920, metadata !DIExpression()), !dbg !1922
  store double %value, ptr %value.addr, align 8, !tbaa !1923
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1921, metadata !DIExpression()), !dbg !1925
  %0 = load double, ptr %value.addr, align 8, !dbg !1926, !tbaa !1923
  %call = call ptr @PyFloat_FromDouble(double noundef %0), !dbg !1927
  ret ptr %call, !dbg !1928
}

; Function Attrs: nounwind uwtable
define ptr @JSONToObj(ptr noundef %self, ptr noundef %args, ptr noundef %kwargs) #0 !dbg !1929 {
entry:
  %retval = alloca ptr, align 8
  %self.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %kwargs.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %sarg = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %opreciseFloat = alloca ptr, align 8
  %decoder = alloca ptr, align 8
  %pyDecoder = alloca %struct.__PyObjectDecoder, align 8
  %dtype = alloca ptr, align 8
  %numpy = alloca i32, align 4
  %labelled = alloca i32, align 4
  %dec = alloca %struct.__JSONObjectDecoder, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !1931, metadata !DIExpression()), !dbg !1944
  store ptr %args, ptr %args.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1932, metadata !DIExpression()), !dbg !1945
  store ptr %kwargs, ptr %kwargs.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %kwargs.addr, metadata !1933, metadata !DIExpression()), !dbg !1946
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #6, !dbg !1947
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1934, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 8, ptr %sarg) #6, !dbg !1949
  tail call void @llvm.dbg.declare(metadata ptr %sarg, metadata !1935, metadata !DIExpression()), !dbg !1950
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #6, !dbg !1951
  tail call void @llvm.dbg.declare(metadata ptr %arg, metadata !1936, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 8, ptr %opreciseFloat) #6, !dbg !1953
  tail call void @llvm.dbg.declare(metadata ptr %opreciseFloat, metadata !1937, metadata !DIExpression()), !dbg !1954
  store ptr null, ptr %opreciseFloat, align 8, !dbg !1954, !tbaa !816
  call void @llvm.lifetime.start.p0(i64 8, ptr %decoder) #6, !dbg !1955
  tail call void @llvm.dbg.declare(metadata ptr %decoder, metadata !1938, metadata !DIExpression()), !dbg !1956
  call void @llvm.lifetime.start.p0(i64 224, ptr %pyDecoder) #6, !dbg !1957
  tail call void @llvm.dbg.declare(metadata ptr %pyDecoder, metadata !1939, metadata !DIExpression()), !dbg !1958
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtype) #6, !dbg !1959
  tail call void @llvm.dbg.declare(metadata ptr %dtype, metadata !1940, metadata !DIExpression()), !dbg !1960
  store ptr null, ptr %dtype, align 8, !dbg !1960, !tbaa !816
  call void @llvm.lifetime.start.p0(i64 4, ptr %numpy) #6, !dbg !1961
  tail call void @llvm.dbg.declare(metadata ptr %numpy, metadata !1941, metadata !DIExpression()), !dbg !1962
  store i32 0, ptr %numpy, align 4, !dbg !1962, !tbaa !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %labelled) #6, !dbg !1961
  tail call void @llvm.dbg.declare(metadata ptr %labelled, metadata !1942, metadata !DIExpression()), !dbg !1963
  store i32 0, ptr %labelled, align 4, !dbg !1963, !tbaa !1088
  call void @llvm.lifetime.start.p0(i64 192, ptr %dec) #6, !dbg !1964
  tail call void @llvm.dbg.declare(metadata ptr %dec, metadata !1943, metadata !DIExpression()), !dbg !1965
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dec, ptr align 8 @__const.JSONToObj.dec, i64 192, i1 false), !dbg !1965
  %preciseFloat = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %dec, i32 0, i32 22, !dbg !1966
  store i32 0, ptr %preciseFloat, align 8, !dbg !1967, !tbaa !1968
  %prv = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %dec, i32 0, i32 23, !dbg !1969
  store ptr null, ptr %prv, align 8, !dbg !1970, !tbaa !1971
  %dec1 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 0, !dbg !1972
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dec1, ptr align 8 %dec, i64 192, i1 false), !dbg !1973, !tbaa.struct !1974
  %curdim = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 3, !dbg !1975
  store i64 0, ptr %curdim, align 8, !dbg !1976, !tbaa !858
  %npyarr = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 1, !dbg !1977
  store ptr null, ptr %npyarr, align 8, !dbg !1978, !tbaa !851
  %npyarr_addr = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 2, !dbg !1979
  store ptr null, ptr %npyarr_addr, align 8, !dbg !1980, !tbaa !910
  store ptr %pyDecoder, ptr %decoder, align 8, !dbg !1981, !tbaa !816
  %0 = load ptr, ptr %args.addr, align 8, !dbg !1982, !tbaa !816
  %1 = load ptr, ptr %kwargs.addr, align 8, !dbg !1984, !tbaa !816
  %2 = load ptr, ptr @UJSON_NUMPY, align 8, !dbg !1985, !tbaa !816
  %arrayidx = getelementptr ptr, ptr %2, i64 175, !dbg !1985
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1985, !tbaa !816
  %call = call i32 (ptr, ptr, ptr, ptr, ...) @_PyArg_ParseTupleAndKeywords_SizeT(ptr noundef %0, ptr noundef %1, ptr noundef @.str.3, ptr noundef @g_kwlist, ptr noundef %arg, ptr noundef %opreciseFloat, ptr noundef %numpy, ptr noundef %labelled, ptr noundef %3, ptr noundef %dtype), !dbg !1986
  %tobool = icmp ne i32 %call, 0, !dbg !1986
  br i1 %tobool, label %if.end, label %if.then, !dbg !1987

if.then:                                          ; preds = %entry
  %npyarr2 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 1, !dbg !1988
  %4 = load ptr, ptr %npyarr2, align 8, !dbg !1988, !tbaa !851
  call void @Npy_releaseContext(ptr noundef %4), !dbg !1990
  store ptr null, ptr %retval, align 8, !dbg !1991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1991

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %opreciseFloat, align 8, !dbg !1992, !tbaa !816
  %tobool3 = icmp ne ptr %5, null, !dbg !1992
  br i1 %tobool3, label %land.lhs.true, label %if.end8, !dbg !1994

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %opreciseFloat, align 8, !dbg !1995, !tbaa !816
  %call4 = call i32 @PyObject_IsTrue(ptr noundef %6), !dbg !1996
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1996
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !1997

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %decoder, align 8, !dbg !1998, !tbaa !816
  %preciseFloat7 = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %7, i32 0, i32 22, !dbg !2000
  store i32 1, ptr %preciseFloat7, align 8, !dbg !2001, !tbaa !1968
  br label %if.end8, !dbg !2002

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %8 = load ptr, ptr %arg, align 8, !dbg !2003, !tbaa !816
  %ob_type = getelementptr inbounds %struct._object, ptr %8, i32 0, i32 1, !dbg !2003
  %9 = load ptr, ptr %ob_type, align 8, !dbg !2003, !tbaa !1261
  %call9 = call i32 @PyType_HasFeature(ptr noundef %9, i64 noundef 134217728), !dbg !2003
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2003
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !2005

if.then11:                                        ; preds = %if.end8
  %10 = load ptr, ptr %arg, align 8, !dbg !2006, !tbaa !816
  store ptr %10, ptr %sarg, align 8, !dbg !2008, !tbaa !816
  br label %if.end22, !dbg !2009

if.else:                                          ; preds = %if.end8
  %11 = load ptr, ptr %arg, align 8, !dbg !2010, !tbaa !816
  %ob_type12 = getelementptr inbounds %struct._object, ptr %11, i32 0, i32 1, !dbg !2010
  %12 = load ptr, ptr %ob_type12, align 8, !dbg !2010, !tbaa !1261
  %call13 = call i32 @PyType_HasFeature(ptr noundef %12, i64 noundef 268435456), !dbg !2010
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2010
  br i1 %tobool14, label %if.then15, label %if.else19, !dbg !2012

if.then15:                                        ; preds = %if.else
  %13 = load ptr, ptr %arg, align 8, !dbg !2013, !tbaa !816
  %call16 = call ptr @PyUnicode_AsUTF8String(ptr noundef %13), !dbg !2015
  store ptr %call16, ptr %sarg, align 8, !dbg !2016, !tbaa !816
  %14 = load ptr, ptr %sarg, align 8, !dbg !2017, !tbaa !816
  %cmp = icmp eq ptr %14, null, !dbg !2019
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !2020

if.then17:                                        ; preds = %if.then15
  store ptr null, ptr %retval, align 8, !dbg !2021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2021

if.end18:                                         ; preds = %if.then15
  br label %if.end21, !dbg !2023

if.else19:                                        ; preds = %if.else
  %15 = load ptr, ptr @PyExc_TypeError, align 8, !dbg !2024, !tbaa !816
  %call20 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %15, ptr noundef @.str.4), !dbg !2026
  store ptr null, ptr %retval, align 8, !dbg !2027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2027

if.end21:                                         ; preds = %if.end18
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then11
  %16 = load ptr, ptr %decoder, align 8, !dbg !2028, !tbaa !816
  %errorStr = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %16, i32 0, i32 20, !dbg !2029
  store ptr null, ptr %errorStr, align 8, !dbg !2030, !tbaa !2031
  %17 = load ptr, ptr %decoder, align 8, !dbg !2032, !tbaa !816
  %errorOffset = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %17, i32 0, i32 21, !dbg !2033
  store ptr null, ptr %errorOffset, align 8, !dbg !2034, !tbaa !2035
  %18 = load i32, ptr %numpy, align 4, !dbg !2036, !tbaa !1088
  %tobool23 = icmp ne i32 %18, 0, !dbg !2036
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !2038

if.then24:                                        ; preds = %if.end22
  %19 = load ptr, ptr %dtype, align 8, !dbg !2039, !tbaa !816
  %dtype25 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 4, !dbg !2041
  store ptr %19, ptr %dtype25, align 8, !dbg !2042, !tbaa !1118
  %20 = load ptr, ptr %decoder, align 8, !dbg !2043, !tbaa !816
  %newArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %20, i32 0, i32 10, !dbg !2044
  store ptr @Object_npyNewArray, ptr %newArray, align 8, !dbg !2045, !tbaa !1338
  %21 = load ptr, ptr %decoder, align 8, !dbg !2046, !tbaa !816
  %endArray = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %21, i32 0, i32 11, !dbg !2047
  store ptr @Object_npyEndArray, ptr %endArray, align 8, !dbg !2048, !tbaa !1348
  %22 = load ptr, ptr %decoder, align 8, !dbg !2049, !tbaa !816
  %arrayAddItem = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %22, i32 0, i32 2, !dbg !2050
  store ptr @Object_npyArrayAddItem, ptr %arrayAddItem, align 8, !dbg !2051, !tbaa !1343
  %23 = load i32, ptr %labelled, align 4, !dbg !2052, !tbaa !1088
  %tobool26 = icmp ne i32 %23, 0, !dbg !2052
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2054

if.then27:                                        ; preds = %if.then24
  %24 = load ptr, ptr %decoder, align 8, !dbg !2055, !tbaa !816
  %newObject = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %24, i32 0, i32 8, !dbg !2057
  store ptr @Object_npyNewObject, ptr %newObject, align 8, !dbg !2058, !tbaa !2059
  %25 = load ptr, ptr %decoder, align 8, !dbg !2060, !tbaa !816
  %endObject = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %25, i32 0, i32 9, !dbg !2061
  store ptr @Object_npyEndObject, ptr %endObject, align 8, !dbg !2062, !tbaa !2063
  %26 = load ptr, ptr %decoder, align 8, !dbg !2064, !tbaa !816
  %objectAddKey = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %26, i32 0, i32 1, !dbg !2065
  store ptr @Object_npyObjectAddKey, ptr %objectAddKey, align 8, !dbg !2066, !tbaa !2067
  br label %if.end28, !dbg !2068

if.end28:                                         ; preds = %if.then27, %if.then24
  br label %if.end29, !dbg !2069

if.end29:                                         ; preds = %if.end28, %if.end22
  %27 = load ptr, ptr %decoder, align 8, !dbg !2070, !tbaa !816
  %28 = load ptr, ptr %sarg, align 8, !dbg !2071, !tbaa !816
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, ptr %28, i32 0, i32 2, !dbg !2071
  %arraydecay = getelementptr inbounds [1 x i8], ptr %ob_sval, i64 0, i64 0, !dbg !2071
  %29 = load ptr, ptr %sarg, align 8, !dbg !2072, !tbaa !816
  %ob_size = getelementptr inbounds %struct.PyVarObject, ptr %29, i32 0, i32 1, !dbg !2072
  %30 = load i64, ptr %ob_size, align 8, !dbg !2072, !tbaa !1703
  %call30 = call ptr @JSON_DecodeObject(ptr noundef %27, ptr noundef %arraydecay, i64 noundef %30), !dbg !2073
  store ptr %call30, ptr %ret, align 8, !dbg !2074, !tbaa !816
  %31 = load ptr, ptr %sarg, align 8, !dbg !2075, !tbaa !816
  %32 = load ptr, ptr %arg, align 8, !dbg !2077, !tbaa !816
  %cmp31 = icmp ne ptr %31, %32, !dbg !2078
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !2079

if.then32:                                        ; preds = %if.end29
  %33 = load ptr, ptr %sarg, align 8, !dbg !2080, !tbaa !816
  call void @_Py_DECREF(ptr noundef %33), !dbg !2080
  br label %if.end33, !dbg !2082

if.end33:                                         ; preds = %if.then32, %if.end29
  %call34 = call ptr @PyErr_Occurred(), !dbg !2083
  %tobool35 = icmp ne ptr %call34, null, !dbg !2083
  br i1 %tobool35, label %if.then36, label %if.end41, !dbg !2085

if.then36:                                        ; preds = %if.end33
  %34 = load ptr, ptr %ret, align 8, !dbg !2086, !tbaa !816
  %tobool37 = icmp ne ptr %34, null, !dbg !2086
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !2089

if.then38:                                        ; preds = %if.then36
  %35 = load ptr, ptr %ret, align 8, !dbg !2090, !tbaa !816
  call void @_Py_DECREF(ptr noundef %35), !dbg !2090
  br label %if.end39, !dbg !2092

if.end39:                                         ; preds = %if.then38, %if.then36
  %npyarr40 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 1, !dbg !2093
  %36 = load ptr, ptr %npyarr40, align 8, !dbg !2093, !tbaa !851
  call void @Npy_releaseContext(ptr noundef %36), !dbg !2094
  store ptr null, ptr %retval, align 8, !dbg !2095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2095

if.end41:                                         ; preds = %if.end33
  %37 = load ptr, ptr %decoder, align 8, !dbg !2096, !tbaa !816
  %errorStr42 = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %37, i32 0, i32 20, !dbg !2098
  %38 = load ptr, ptr %errorStr42, align 8, !dbg !2098, !tbaa !2031
  %tobool43 = icmp ne ptr %38, null, !dbg !2096
  br i1 %tobool43, label %if.then44, label %if.end51, !dbg !2099

if.then44:                                        ; preds = %if.end41
  %39 = load ptr, ptr @PyExc_ValueError, align 8, !dbg !2100, !tbaa !816
  %40 = load ptr, ptr %decoder, align 8, !dbg !2102, !tbaa !816
  %errorStr45 = getelementptr inbounds %struct.__JSONObjectDecoder, ptr %40, i32 0, i32 20, !dbg !2103
  %41 = load ptr, ptr %errorStr45, align 8, !dbg !2103, !tbaa !2031
  %call46 = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %39, ptr noundef @.str.5, ptr noundef %41), !dbg !2104
  %42 = load ptr, ptr %ret, align 8, !dbg !2105, !tbaa !816
  %tobool47 = icmp ne ptr %42, null, !dbg !2105
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !2107

if.then48:                                        ; preds = %if.then44
  %43 = load ptr, ptr %ret, align 8, !dbg !2108, !tbaa !816
  call void @_Py_DECREF(ptr noundef %43), !dbg !2108
  br label %if.end49, !dbg !2110

if.end49:                                         ; preds = %if.then48, %if.then44
  %npyarr50 = getelementptr inbounds %struct.__PyObjectDecoder, ptr %pyDecoder, i32 0, i32 1, !dbg !2111
  %44 = load ptr, ptr %npyarr50, align 8, !dbg !2111, !tbaa !851
  call void @Npy_releaseContext(ptr noundef %44), !dbg !2112
  store ptr null, ptr %retval, align 8, !dbg !2113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

if.end51:                                         ; preds = %if.end41
  %45 = load ptr, ptr %ret, align 8, !dbg !2114, !tbaa !816
  store ptr %45, ptr %retval, align 8, !dbg !2115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2115

cleanup:                                          ; preds = %if.end51, %if.end49, %if.end39, %if.else19, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 192, ptr %dec) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 4, ptr %labelled) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 4, ptr %numpy) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtype) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 224, ptr %pyDecoder) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %decoder) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %opreciseFloat) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %sarg) #6, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #6, !dbg !2116
  %46 = load ptr, ptr %retval, align 8, !dbg !2116
  ret ptr %46, !dbg !2116
}

; Function Attrs: nounwind uwtable
define internal void @Object_releaseObject(ptr noundef %prv, ptr noundef %obj, ptr noundef %_decoder) #0 !dbg !2117 {
entry:
  %prv.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %_decoder.addr = alloca ptr, align 8
  %decoder = alloca ptr, align 8
  store ptr %prv, ptr %prv.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %prv.addr, metadata !2119, metadata !DIExpression()), !dbg !2123
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2120, metadata !DIExpression()), !dbg !2124
  store ptr %_decoder, ptr %_decoder.addr, align 8, !tbaa !816
  tail call void @llvm.dbg.declare(metadata ptr %_decoder.addr, metadata !2121, metadata !DIExpression()), !dbg !2125
  call void @llvm.lifetime.start.p0(i64 8, ptr %decoder) #6, !dbg !2126
  tail call void @llvm.dbg.declare(metadata ptr %decoder, metadata !2122, metadata !DIExpression()), !dbg !2127
  %0 = load ptr, ptr %_decoder.addr, align 8, !dbg !2128, !tbaa !816
  store ptr %0, ptr %decoder, align 8, !dbg !2127, !tbaa !816
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !2129, !tbaa !816
  %2 = load ptr, ptr %decoder, align 8, !dbg !2131, !tbaa !816
  %npyarr_addr = getelementptr inbounds %struct.__PyObjectDecoder, ptr %2, i32 0, i32 2, !dbg !2132
  %3 = load ptr, ptr %npyarr_addr, align 8, !dbg !2132, !tbaa !910
  %cmp = icmp ne ptr %1, %3, !dbg !2133
  br i1 %cmp, label %if.then, label %if.end, !dbg !2134

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %obj.addr, align 8, !dbg !2135, !tbaa !816
  call void @_Py_XDECREF(ptr noundef %4), !dbg !2135
  br label %if.end, !dbg !2137

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %decoder) #6, !dbg !2138
  ret void, !dbg !2138
}

declare ptr @PyObject_Realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !2139 i32 @_PyArg_ParseTupleAndKeywords_SizeT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #1

declare !dbg !2143 i32 @PyObject_IsTrue(ptr noundef) #1

declare !dbg !2144 ptr @PyUnicode_AsUTF8String(ptr noundef) #1

declare !dbg !2145 ptr @PyErr_Format(ptr noundef, ptr noundef, ...) #1

declare !dbg !2148 ptr @JSON_DecodeObject(ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !2151 ptr @PyErr_Occurred() #1

declare !dbg !2152 void @_Py_Dealloc(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!805, !806, !807, !808, !809}
!llvm.ident = !{!810}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "pandas/_libs/src/ujson/python/JSONtoObj.c", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build/aidengro/spack-stage-py-pandas-1.5.3-t2ah26ijbt7dck44kjkjgtwnjnacpkvn/spack-src", checksumkind: CSK_MD5, checksum: "fa8b6ac0f3814a2dfbb87e49176036eb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 77)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 59)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_kwlist", scope: !24, file: !2, line: 497, type: !804, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !71, globals: !773, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !33, !64}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 209, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/py-numpy-1.25.2-kmv6orrhibhm5efmdekmyqgaicrkcsqz/lib/python3.9/site-packages/numpy/core/include/numpy/ndarraytypes.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "94ee16a4bda64e45ef6f9ea15a2ebf5a")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "NPY_CLIP", value: 0)
!31 = !DIEnumerator(name: "NPY_WRAP", value: 1)
!32 = !DIEnumerator(name: "NPY_RAISE", value: 2)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NPY_TYPES", file: !27, line: 48, baseType: !28, size: 32, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !DIEnumerator(name: "NPY_BOOL", value: 0)
!36 = !DIEnumerator(name: "NPY_BYTE", value: 1)
!37 = !DIEnumerator(name: "NPY_UBYTE", value: 2)
!38 = !DIEnumerator(name: "NPY_SHORT", value: 3)
!39 = !DIEnumerator(name: "NPY_USHORT", value: 4)
!40 = !DIEnumerator(name: "NPY_INT", value: 5)
!41 = !DIEnumerator(name: "NPY_UINT", value: 6)
!42 = !DIEnumerator(name: "NPY_LONG", value: 7)
!43 = !DIEnumerator(name: "NPY_ULONG", value: 8)
!44 = !DIEnumerator(name: "NPY_LONGLONG", value: 9)
!45 = !DIEnumerator(name: "NPY_ULONGLONG", value: 10)
!46 = !DIEnumerator(name: "NPY_FLOAT", value: 11)
!47 = !DIEnumerator(name: "NPY_DOUBLE", value: 12)
!48 = !DIEnumerator(name: "NPY_LONGDOUBLE", value: 13)
!49 = !DIEnumerator(name: "NPY_CFLOAT", value: 14)
!50 = !DIEnumerator(name: "NPY_CDOUBLE", value: 15)
!51 = !DIEnumerator(name: "NPY_CLONGDOUBLE", value: 16)
!52 = !DIEnumerator(name: "NPY_OBJECT", value: 17)
!53 = !DIEnumerator(name: "NPY_STRING", value: 18)
!54 = !DIEnumerator(name: "NPY_UNICODE", value: 19)
!55 = !DIEnumerator(name: "NPY_VOID", value: 20)
!56 = !DIEnumerator(name: "NPY_DATETIME", value: 21)
!57 = !DIEnumerator(name: "NPY_TIMEDELTA", value: 22)
!58 = !DIEnumerator(name: "NPY_HALF", value: 23)
!59 = !DIEnumerator(name: "NPY_NTYPES", value: 24)
!60 = !DIEnumerator(name: "NPY_NOTYPE", value: 25)
!61 = !DIEnumerator(name: "NPY_CHAR", value: 26)
!62 = !DIEnumerator(name: "NPY_USERDEF", value: 256)
!63 = !DIEnumerator(name: "NPY_NTYPES_ABI_COMPATIBLE", value: 21)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 183, baseType: !65, size: 32, elements: !66)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "NPY_ANYORDER", value: -1)
!68 = !DIEnumerator(name: "NPY_CORDER", value: 0)
!69 = !DIEnumerator(name: "NPY_FORTRANORDER", value: 1)
!70 = !DIEnumerator(name: "NPY_KEEPORDER", value: 2)
!71 = !{!72, !73, !370, !686, !703, !711, !716, !453, !719, !732, !734, !739, !87, !741, !745, !748, !749, !114, !752, !755, !756, !85, !765}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !75, line: 109, baseType: !76)
!75 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/object.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "3f9979776300c70b1e34aa51eda1adeb")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !75, line: 105, size: 128, elements: !77)
!77 = !{!78, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !76, file: !75, line: 107, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !80, line: 105, baseType: !81)
!80 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/pyport.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "130a2fc9ce18e45cf2f23659ef07d5ba")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !82, line: 77, baseType: !83)
!82 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !84, line: 194, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!85 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !76, file: !75, line: 108, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !75, line: 66, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !90, line: 193, size: 3264, elements: !91)
!90 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/cpython/object.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "90f773997436a8640d3c606f1a7092f7")
!91 = !{!92, !98, !101, !102, !103, !108, !109, !115, !120, !132, !134, !187, !218, !230, !236, !237, !238, !240, !242, !273, !275, !276, !285, !286, !291, !292, !294, !296, !306, !309, !327, !329, !330, !332, !334, !335, !337, !342, !347, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !89, file: !90, line: 194, baseType: !93, size: 192)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !75, line: 118, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 115, size: 192, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !94, file: !75, line: 116, baseType: !74, size: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !94, file: !75, line: 117, baseType: !79, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !89, file: !90, line: 195, baseType: !99, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !89, file: !90, line: 196, baseType: !79, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !89, file: !90, line: 196, baseType: !79, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !89, file: !90, line: 200, baseType: !104, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !75, line: 180, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !73}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_vectorcall_offset", scope: !89, file: !90, line: 201, baseType: !79, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !89, file: !90, line: 202, baseType: !110, size: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !75, line: 181, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!73, !73, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !89, file: !90, line: 203, baseType: !116, size: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !75, line: 183, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!65, !73, !114, !73}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_async", scope: !89, file: !90, line: 204, baseType: !121, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyAsyncMethods", file: !90, line: 182, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 178, size: 192, elements: !124)
!124 = !{!125, !130, !131}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "am_await", scope: !123, file: !90, line: 179, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !75, line: 163, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!73, !73}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "am_aiter", scope: !123, file: !90, line: 180, baseType: !126, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "am_anext", scope: !123, file: !90, line: 181, baseType: !126, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !89, file: !90, line: 206, baseType: !133, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !75, line: 185, baseType: !127)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !89, file: !90, line: 210, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !90, line: 156, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 111, size: 2304, elements: !138)
!138 = !{!139, !144, !145, !146, !147, !148, !153, !154, !155, !156, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !137, file: !90, line: 116, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !75, line: 164, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!73, !73, !73}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !137, file: !90, line: 117, baseType: !140, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !137, file: !90, line: 118, baseType: !140, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !137, file: !90, line: 119, baseType: !140, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !137, file: !90, line: 120, baseType: !140, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !137, file: !90, line: 121, baseType: !149, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !75, line: 165, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!73, !73, !73, !73}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !137, file: !90, line: 122, baseType: !126, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !137, file: !90, line: 123, baseType: !126, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !137, file: !90, line: 124, baseType: !126, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !137, file: !90, line: 125, baseType: !157, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !75, line: 166, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!65, !73}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !137, file: !90, line: 126, baseType: !126, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !137, file: !90, line: 127, baseType: !140, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !137, file: !90, line: 128, baseType: !140, size: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !137, file: !90, line: 129, baseType: !140, size: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !137, file: !90, line: 130, baseType: !140, size: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !137, file: !90, line: 131, baseType: !140, size: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !137, file: !90, line: 132, baseType: !126, size: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !137, file: !90, line: 133, baseType: !72, size: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !137, file: !90, line: 134, baseType: !126, size: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !137, file: !90, line: 136, baseType: !140, size: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !137, file: !90, line: 137, baseType: !140, size: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !137, file: !90, line: 138, baseType: !140, size: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !137, file: !90, line: 139, baseType: !140, size: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !137, file: !90, line: 140, baseType: !149, size: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !137, file: !90, line: 141, baseType: !140, size: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !137, file: !90, line: 142, baseType: !140, size: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !137, file: !90, line: 143, baseType: !140, size: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !137, file: !90, line: 144, baseType: !140, size: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !137, file: !90, line: 145, baseType: !140, size: 64, offset: 1792)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !137, file: !90, line: 147, baseType: !140, size: 64, offset: 1856)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !137, file: !90, line: 148, baseType: !140, size: 64, offset: 1920)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !137, file: !90, line: 149, baseType: !140, size: 64, offset: 1984)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !137, file: !90, line: 150, baseType: !140, size: 64, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !137, file: !90, line: 152, baseType: !126, size: 64, offset: 2112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_matrix_multiply", scope: !137, file: !90, line: 154, baseType: !140, size: 64, offset: 2176)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_matrix_multiply", scope: !137, file: !90, line: 155, baseType: !140, size: 64, offset: 2240)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !89, file: !90, line: 211, baseType: !188, size: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !90, line: 170, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 158, size: 640, elements: !191)
!191 = !{!192, !197, !198, !203, !204, !205, !210, !211, !216, !217}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !190, file: !90, line: 159, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !75, line: 167, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!79, !73}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !190, file: !90, line: 160, baseType: !140, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !190, file: !90, line: 161, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !75, line: 168, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!73, !73, !79}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !190, file: !90, line: 162, baseType: !199, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !190, file: !90, line: 163, baseType: !72, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !190, file: !90, line: 164, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !75, line: 170, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!65, !73, !79, !73}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !190, file: !90, line: 165, baseType: !72, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !190, file: !90, line: 166, baseType: !212, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !75, line: 174, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!65, !73, !73}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !190, file: !90, line: 168, baseType: !140, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !190, file: !90, line: 169, baseType: !199, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !89, file: !90, line: 212, baseType: !219, size: 64, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !90, line: 176, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 172, size: 192, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !221, file: !90, line: 173, baseType: !193, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !221, file: !90, line: 174, baseType: !140, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !221, file: !90, line: 175, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !75, line: 172, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!65, !73, !73, !73}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !89, file: !90, line: 216, baseType: !231, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !75, line: 186, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !73}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !80, line: 114, baseType: !79)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !89, file: !90, line: 217, baseType: !149, size: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !89, file: !90, line: 218, baseType: !133, size: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !89, file: !90, line: 219, baseType: !239, size: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !75, line: 182, baseType: !141)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !89, file: !90, line: 220, baseType: !241, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !75, line: 184, baseType: !227)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !89, file: !90, line: 223, baseType: !243, size: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !90, line: 187, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 184, size: 128, elements: !246)
!246 = !{!247, !268}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !245, file: !90, line: 185, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !90, line: 71, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!65, !73, !252, !65}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !90, line: 69, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !90, line: 56, size: 640, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !265, !266, !267}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !254, file: !90, line: 57, baseType: !72, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !254, file: !90, line: 58, baseType: !73, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !90, line: 59, baseType: !79, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !254, file: !90, line: 60, baseType: !79, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !254, file: !90, line: 62, baseType: !65, size: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !254, file: !90, line: 63, baseType: !65, size: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !254, file: !90, line: 64, baseType: !114, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !254, file: !90, line: 65, baseType: !264, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !254, file: !90, line: 66, baseType: !264, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !254, file: !90, line: 67, baseType: !264, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !254, file: !90, line: 68, baseType: !72, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !245, file: !90, line: 186, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !90, line: 72, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !73, !252}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !89, file: !90, line: 226, baseType: !274, size: 64, offset: 1344)
!274 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !89, file: !90, line: 228, baseType: !99, size: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !89, file: !90, line: 232, baseType: !277, size: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !75, line: 176, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!65, !73, !281, !72}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !75, line: 175, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!65, !73, !72}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !89, file: !90, line: 235, baseType: !157, size: 64, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !89, file: !90, line: 239, baseType: !287, size: 64, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !75, line: 187, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!73, !73, !73, !65}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !89, file: !90, line: 242, baseType: !79, size: 64, offset: 1664)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !89, file: !90, line: 245, baseType: !293, size: 64, offset: 1728)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !75, line: 188, baseType: !127)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !89, file: !90, line: 246, baseType: !295, size: 64, offset: 1792)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !75, line: 189, baseType: !127)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !89, file: !90, line: 249, baseType: !297, size: 64, offset: 1856)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !299, line: 35, size: 256, elements: !300)
!299 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/methodobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "bbf63d5b676c05c658805ba163513296")
!300 = !{!301, !302, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !298, file: !299, line: 36, baseType: !99, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !298, file: !299, line: 37, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !299, line: 19, baseType: !141)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !298, file: !299, line: 38, baseType: !65, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !298, file: !299, line: 40, baseType: !99, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !89, file: !90, line: 250, baseType: !307, size: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !90, line: 250, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !89, file: !90, line: 251, baseType: !310, size: 64, offset: 1984)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !312, line: 11, size: 320, elements: !313)
!312 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/descrobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "4865dae4e254db6f261f61dcb32e8571")
!313 = !{!314, !315, !320, !325, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 12, baseType: !99, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !311, file: !312, line: 13, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !312, line: 8, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!73, !73, !72}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !311, file: !312, line: 14, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !312, line: 9, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!65, !73, !73, !72}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !311, file: !312, line: 15, baseType: !99, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !311, file: !312, line: 16, baseType: !72, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !89, file: !90, line: 252, baseType: !328, size: 64, offset: 2048)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !89, file: !90, line: 253, baseType: !73, size: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !89, file: !90, line: 254, baseType: !331, size: 64, offset: 2176)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !75, line: 190, baseType: !150)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !89, file: !90, line: 255, baseType: !333, size: 64, offset: 2240)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !75, line: 191, baseType: !227)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !89, file: !90, line: 256, baseType: !79, size: 64, offset: 2304)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !89, file: !90, line: 257, baseType: !336, size: 64, offset: 2368)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !75, line: 192, baseType: !227)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !89, file: !90, line: 258, baseType: !338, size: 64, offset: 2432)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !75, line: 194, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!73, !87, !79}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !89, file: !90, line: 259, baseType: !343, size: 64, offset: 2496)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !75, line: 193, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!73, !87, !73, !73}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !89, file: !90, line: 260, baseType: !348, size: 64, offset: 2560)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !75, line: 179, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !72}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !89, file: !90, line: 261, baseType: !157, size: 64, offset: 2624)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !89, file: !90, line: 262, baseType: !73, size: 64, offset: 2688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !89, file: !90, line: 263, baseType: !73, size: 64, offset: 2752)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !89, file: !90, line: 264, baseType: !73, size: 64, offset: 2816)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !89, file: !90, line: 265, baseType: !73, size: 64, offset: 2880)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !89, file: !90, line: 266, baseType: !73, size: 64, offset: 2944)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !89, file: !90, line: 267, baseType: !104, size: 64, offset: 3008)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !89, file: !90, line: 270, baseType: !28, size: 32, offset: 3072)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !89, file: !90, line: 272, baseType: !104, size: 64, offset: 3136)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_vectorcall", scope: !89, file: !90, line: 273, baseType: !362, size: 64, offset: 3200)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "vectorcallfunc", file: !90, line: 74, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!73, !73, !366, !368, !73}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !369, line: 70, baseType: !274)
!369 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObjectDecoder", file: !2, line: 55, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__PyObjectDecoder", file: !2, line: 47, size: 1792, elements: !373)
!373 = !{!374, !460, !461, !462, !469}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !372, file: !2, line: 48, baseType: !375, size: 1536)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSONObjectDecoder", file: !376, line: 310, baseType: !377)
!376 = !DIFile(filename: "pandas/_libs/src/ujson/lib/ultrajson.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build/aidengro/spack-stage-py-pandas-1.5.3-t2ah26ijbt7dck44kjkjgtwnjnacpkvn/spack-src", checksumkind: CSK_MD5, checksum: "aa7a8804f012238d790589e0448b2fd6")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__JSONObjectDecoder", file: !376, line: 285, size: 1536, elements: !378)
!378 = !{!379, !386, !390, !394, !398, !399, !400, !401, !402, !406, !410, !411, !412, !420, !427, !435, !440, !444, !449, !451, !456, !457, !458, !459}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "newString", scope: !377, file: !376, line: 286, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !72, !384, !384}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSOBJ", file: !376, line: 156, baseType: !72)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !369, line: 96, baseType: !65)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "objectAddKey", scope: !377, file: !376, line: 287, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!65, !72, !383, !383, !383}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "arrayAddItem", scope: !377, file: !376, line: 288, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!65, !72, !383, !383}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "newTrue", scope: !377, file: !376, line: 289, baseType: !395, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!383, !72}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "newFalse", scope: !377, file: !376, line: 290, baseType: !395, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "newNull", scope: !377, file: !376, line: 291, baseType: !395, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "newPosInf", scope: !377, file: !376, line: 292, baseType: !395, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "newNegInf", scope: !377, file: !376, line: 293, baseType: !395, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "newObject", scope: !377, file: !376, line: 294, baseType: !403, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!383, !72, !72}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "endObject", scope: !377, file: !376, line: 295, baseType: !407, size: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!383, !72, !383}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "newArray", scope: !377, file: !376, line: 296, baseType: !403, size: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "endArray", scope: !377, file: !376, line: 297, baseType: !407, size: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "newInt", scope: !377, file: !376, line: 298, baseType: !413, size: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!383, !72, !416}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSINT32", file: !376, line: 106, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !418, line: 26, baseType: !419)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !84, line: 41, baseType: !65)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "newLong", scope: !377, file: !376, line: 299, baseType: !421, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!383, !72, !424}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSINT64", file: !376, line: 103, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !418, line: 27, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !84, line: 44, baseType: !85)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "newUnsignedLong", scope: !377, file: !376, line: 300, baseType: !428, size: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!383, !72, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSUINT64", file: !376, line: 104, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !433, line: 27, baseType: !434)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !84, line: 45, baseType: !274)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "newDouble", scope: !377, file: !376, line: 301, baseType: !436, size: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!383, !72, !439}
!439 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "releaseObject", scope: !377, file: !376, line: 302, baseType: !441, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !72, !383, !72}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !377, file: !376, line: 303, baseType: !445, size: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSPFN_MALLOC", file: !376, line: 173, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!72, !368}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !377, file: !376, line: 304, baseType: !450, size: 64, offset: 1152)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSPFN_FREE", file: !376, line: 174, baseType: !349)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !377, file: !376, line: 305, baseType: !452, size: 64, offset: 1216)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSPFN_REALLOC", file: !376, line: 175, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!72, !72, !368}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "errorStr", scope: !377, file: !376, line: 306, baseType: !114, size: 64, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "errorOffset", scope: !377, file: !376, line: 307, baseType: !114, size: 64, offset: 1344)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "preciseFloat", scope: !377, file: !376, line: 308, baseType: !65, size: 32, offset: 1408)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !377, file: !376, line: 309, baseType: !72, size: 64, offset: 1472)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "npyarr", scope: !372, file: !2, line: 50, baseType: !72, size: 64, offset: 1536)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "npyarr_addr", scope: !372, file: !2, line: 51, baseType: !72, size: 64, offset: 1600)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "curdim", scope: !372, file: !2, line: 52, baseType: !463, size: 64, offset: 1664)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "npy_intp", file: !464, line: 198, baseType: !465)
!464 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/py-numpy-1.25.2-kmv6orrhibhm5efmdekmyqgaicrkcsqz/lib/python3.9/site-packages/numpy/core/include/numpy/npy_common.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "8251568495f8deef784ad9f86b3030e6")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_intptr_t", file: !80, line: 98, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !467, line: 267, baseType: !468)
!467 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !84, line: 207, baseType: !85)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !372, file: !2, line: 54, baseType: !470, size: 64, offset: 1728)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_Descr", file: !27, line: 636, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PyArray_Descr", file: !27, line: 576, size: 768, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !489, !490, !491, !664, !665, !684}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !472, file: !27, line: 577, baseType: !74, size: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "typeobj", scope: !472, file: !27, line: 584, baseType: !87, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !472, file: !27, line: 586, baseType: !4, size: 8, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !27, line: 588, baseType: !4, size: 8, offset: 200)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "byteorder", scope: !472, file: !27, line: 593, baseType: !4, size: 8, offset: 208)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !27, line: 595, baseType: !4, size: 8, offset: 216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type_num", scope: !472, file: !27, line: 597, baseType: !65, size: 32, offset: 224)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "elsize", scope: !472, file: !27, line: 599, baseType: !65, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !472, file: !27, line: 601, baseType: !65, size: 32, offset: 288)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "subarray", scope: !472, file: !27, line: 607, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_arr_descr", file: !27, line: 638, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !485, file: !27, line: 639, baseType: !470, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !485, file: !27, line: 640, baseType: !73, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !472, file: !27, line: 613, baseType: !73, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !472, file: !27, line: 618, baseType: !73, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !472, file: !27, line: 623, baseType: !492, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_ArrFuncs", file: !27, line: 538, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 428, size: 3008, elements: !495)
!495 = !{!496, !504, !509, !514, !519, !524, !531, !537, !542, !602, !608, !615, !620, !625, !631, !637, !638, !643, !646, !647, !652, !657, !663}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "cast", scope: !494, file: !27, line: 435, baseType: !497, size: 1344)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 1344, elements: !502)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_VectorUnaryFunc", file: !27, line: 387, baseType: !500)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !72, !72, !463, !72, !72}
!502 = !{!503}
!503 = !DISubrange(count: 21)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "getitem", scope: !494, file: !27, line: 443, baseType: !505, size: 64, offset: 1344)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_GetItemFunc", file: !27, line: 366, baseType: !507)
!507 = !DISubroutineType(types: !508)
!508 = !{!73, !72, !72}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "setitem", scope: !494, file: !27, line: 444, baseType: !510, size: 64, offset: 1408)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_SetItemFunc", file: !27, line: 367, baseType: !512)
!512 = !DISubroutineType(types: !513)
!513 = !{!65, !73, !72, !72}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "copyswapn", scope: !494, file: !27, line: 450, baseType: !515, size: 64, offset: 1472)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_CopySwapNFunc", file: !27, line: 369, baseType: !517)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !72, !463, !72, !463, !463, !65, !72}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "copyswap", scope: !494, file: !27, line: 451, baseType: !520, size: 64, offset: 1536)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_CopySwapFunc", file: !27, line: 372, baseType: !522)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !72, !72, !65, !72}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !494, file: !27, line: 457, baseType: !525, size: 64, offset: 1600)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_CompareFunc", file: !27, line: 381, baseType: !527)
!527 = !DISubroutineType(types: !528)
!528 = !{!65, !529, !529, !72}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "argmax", scope: !494, file: !27, line: 463, baseType: !532, size: 64, offset: 1664)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_ArgFunc", file: !27, line: 382, baseType: !534)
!534 = !DISubroutineType(types: !535)
!535 = !{!65, !72, !463, !536, !72}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dotfunc", scope: !494, file: !27, line: 469, baseType: !538, size: 64, offset: 1728)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_DotFunc", file: !27, line: 384, baseType: !540)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !72, !463, !72, !463, !72, !463, !72}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "scanfunc", scope: !494, file: !27, line: 476, baseType: !543, size: 64, offset: 1792)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_ScanFunc", file: !27, line: 394, baseType: !545)
!545 = !DISubroutineType(types: !546)
!546 = !{!65, !547, !72, !114, !601}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !549, line: 7, baseType: !550)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !551, line: 49, size: 1728, elements: !552)
!551 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !568, !570, !571, !572, !574, !576, !578, !582, !585, !587, !590, !593, !594, !595, !596, !597}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !550, file: !551, line: 51, baseType: !65, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !550, file: !551, line: 54, baseType: !114, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !550, file: !551, line: 55, baseType: !114, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !550, file: !551, line: 56, baseType: !114, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !550, file: !551, line: 57, baseType: !114, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !550, file: !551, line: 58, baseType: !114, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !550, file: !551, line: 59, baseType: !114, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !550, file: !551, line: 60, baseType: !114, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !550, file: !551, line: 61, baseType: !114, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !550, file: !551, line: 64, baseType: !114, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !550, file: !551, line: 65, baseType: !114, size: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !550, file: !551, line: 66, baseType: !114, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !550, file: !551, line: 68, baseType: !566, size: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !551, line: 36, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !550, file: !551, line: 70, baseType: !569, size: 64, offset: 832)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !550, file: !551, line: 72, baseType: !65, size: 32, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !550, file: !551, line: 73, baseType: !65, size: 32, offset: 928)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !550, file: !551, line: 74, baseType: !573, size: 64, offset: 960)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !84, line: 152, baseType: !85)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !550, file: !551, line: 77, baseType: !575, size: 16, offset: 1024)
!575 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !550, file: !551, line: 78, baseType: !577, size: 8, offset: 1040)
!577 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !550, file: !551, line: 79, baseType: !579, size: 8, offset: 1048)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 1)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !550, file: !551, line: 81, baseType: !583, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !551, line: 43, baseType: null)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !550, file: !551, line: 89, baseType: !586, size: 64, offset: 1152)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !84, line: 153, baseType: !85)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !550, file: !551, line: 91, baseType: !588, size: 64, offset: 1216)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !551, line: 37, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !550, file: !551, line: 92, baseType: !591, size: 64, offset: 1280)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !551, line: 38, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !550, file: !551, line: 93, baseType: !569, size: 64, offset: 1344)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !550, file: !551, line: 94, baseType: !72, size: 64, offset: 1408)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !550, file: !551, line: 95, baseType: !368, size: 64, offset: 1472)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !550, file: !551, line: 96, baseType: !65, size: 32, offset: 1536)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !550, file: !551, line: 98, baseType: !598, size: 160, offset: 1568)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 20)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fromstr", scope: !494, file: !27, line: 482, baseType: !603, size: 64, offset: 1856)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_FromStrFunc", file: !27, line: 396, baseType: !605)
!605 = !DISubroutineType(types: !606)
!606 = !{!65, !114, !72, !607, !601}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nonzero", scope: !494, file: !27, line: 489, baseType: !609, size: 64, offset: 1920)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_NonzeroFunc", file: !27, line: 373, baseType: !611)
!611 = !DISubroutineType(types: !612)
!612 = !{!613, !72, !72}
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "npy_bool", file: !464, line: 312, baseType: !614)
!614 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !494, file: !27, line: 496, baseType: !616, size: 64, offset: 1984)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_FillFunc", file: !27, line: 399, baseType: !618)
!618 = !DISubroutineType(types: !619)
!619 = !{!65, !72, !463, !72}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fillwithscalar", scope: !494, file: !27, line: 502, baseType: !621, size: 64, offset: 2048)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_FillWithScalarFunc", file: !27, line: 410, baseType: !623)
!623 = !DISubroutineType(types: !624)
!624 = !{!65, !72, !463, !72, !72}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sort", scope: !494, file: !27, line: 508, baseType: !626, size: 192, offset: 2112)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 192, elements: !629)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_SortFunc", file: !27, line: 401, baseType: !618)
!629 = !{!630}
!630 = !DISubrange(count: 3)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "argsort", scope: !494, file: !27, line: 509, baseType: !632, size: 192, offset: 2304)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 192, elements: !629)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_ArgSortFunc", file: !27, line: 402, baseType: !635)
!635 = !DISubroutineType(types: !636)
!636 = !{!65, !72, !536, !463, !72}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "castdict", scope: !494, file: !27, line: 517, baseType: !73, size: 64, offset: 2496)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "scalarkind", scope: !494, file: !27, line: 524, baseType: !639, size: 64, offset: 2560)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_ScalarKindFunc", file: !27, line: 412, baseType: !641)
!641 = !DISubroutineType(types: !642)
!642 = !{!65, !72}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "cancastscalarkindto", scope: !494, file: !27, line: 525, baseType: !644, size: 64, offset: 2624)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cancastto", scope: !494, file: !27, line: 526, baseType: !645, size: 64, offset: 2688)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fastclip", scope: !494, file: !27, line: 528, baseType: !648, size: 64, offset: 2752)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_FastClipFunc", file: !27, line: 414, baseType: !650)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !72, !463, !72, !72, !72}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fastputmask", scope: !494, file: !27, line: 529, baseType: !653, size: 64, offset: 2816)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_FastPutmaskFunc", file: !27, line: 416, baseType: !655)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !72, !72, !463, !72, !463}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fasttake", scope: !494, file: !27, line: 530, baseType: !658, size: 64, offset: 2880)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_FastTakeFunc", file: !27, line: 418, baseType: !660)
!660 = !DISubroutineType(types: !661)
!661 = !{!65, !72, !72, !536, !463, !463, !463, !463, !662}
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "NPY_CLIPMODE", file: !27, line: 213, baseType: !26)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !494, file: !27, line: 536, baseType: !532, size: 64, offset: 2944)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !472, file: !27, line: 625, baseType: !73, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "c_metadata", scope: !472, file: !27, line: 631, baseType: !666, size: 64, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "NpyAuxData", file: !27, line: 308, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NpyAuxData_tag", file: !27, line: 314, size: 256, elements: !669)
!669 = !{!670, !675, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !668, file: !27, line: 315, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "NpyAuxData_FreeFunc", file: !27, line: 311, baseType: !673)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !666}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !668, file: !27, line: 316, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "NpyAuxData_CloneFunc", file: !27, line: 312, baseType: !678)
!678 = !DISubroutineType(types: !679)
!679 = !{!666, !666}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !668, file: !27, line: 318, baseType: !681, size: 128, offset: 128)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 2)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !472, file: !27, line: 635, baseType: !685, size: 64, offset: 704)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "npy_hash_t", file: !464, line: 361, baseType: !235)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "NpyArrContext", file: !2, line: 67, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__NpyArrContext", file: !2, line: 57, size: 576, elements: !689)
!689 = !{!690, !691, !693, !699, !700, !701, !702}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !688, file: !2, line: 58, baseType: !73, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !688, file: !2, line: 59, baseType: !692, size: 128, offset: 64)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !682)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !688, file: !2, line: 60, baseType: !694, size: 128, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArray_Dims", file: !27, line: 426, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 423, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !695, file: !27, line: 424, baseType: !536, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !695, file: !27, line: 425, baseType: !65, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !688, file: !2, line: 62, baseType: !370, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !688, file: !2, line: 64, baseType: !463, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "elsize", scope: !688, file: !2, line: 65, baseType: !463, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "elcount", scope: !688, file: !2, line: 66, baseType: !463, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !705, line: 15, baseType: !706)
!705 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/cpython/tupleobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "5f7ba6d97ded9aa1272172424c6ae4e3")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 9, size: 256, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !706, file: !705, line: 10, baseType: !93, size: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !706, file: !705, line: 14, baseType: !710, size: 64, offset: 192)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !580)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!73, !65, !714, !470, !65}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!470, !65}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArrayObject_fields", file: !27, line: 724, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagPyArrayObject_fields", file: !27, line: 677, size: 640, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !721, file: !27, line: 678, baseType: !74, size: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !721, file: !27, line: 680, baseType: !114, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !721, file: !27, line: 682, baseType: !65, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !721, file: !27, line: 684, baseType: !536, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !721, file: !27, line: 689, baseType: !536, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !721, file: !27, line: 708, baseType: !73, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descr", scope: !721, file: !27, line: 710, baseType: !470, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !27, line: 712, baseType: !65, size: 32, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !721, file: !27, line: 714, baseType: !73, size: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArrayObject", file: !27, line: 736, baseType: !720)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!73, !732, !737, !738}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "NPY_ORDER", file: !27, line: 192, baseType: !64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!65, !73, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!470, !470}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!73, !87, !470, !65, !714, !714, !72, !65, !73}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!73, !73, !470, !65, !65, !65, !73}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !758, line: 26, baseType: !759)
!758 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/cpython/listobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "43a2cf0f4be0c7900fb5a853db58d688")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !758, line: 9, size: 320, elements: !760)
!760 = !{!761, !762, !764}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !759, file: !758, line: 10, baseType: !93, size: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !759, file: !758, line: 12, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !759, file: !758, line: 25, baseType: !79, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !767, line: 15, baseType: !768)
!767 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/cpython/bytesobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "9342e23d3f9d1e30a791d71be47f3d50")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 5, size: 320, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !768, file: !767, line: 6, baseType: !93, size: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !768, file: !767, line: 7, baseType: !235, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !768, file: !767, line: 8, baseType: !579, size: 8, offset: 256)
!773 = !{!0, !7, !12, !17, !774, !779, !782, !787, !792, !797, !802, !22}
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 26)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !2, line: 590, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !629)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !784, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 4)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !789, isLocal: true, isDefinition: true)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 14)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 6)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !799, isLocal: true, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 9)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !794, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 384, elements: !795)
!805 = !{i32 7, !"Dwarf Version", i32 5}
!806 = !{i32 2, !"Debug Info Version", i32 3}
!807 = !{i32 1, !"wchar_size", i32 4}
!808 = !{i32 8, !"PIC Level", i32 2}
!809 = !{i32 7, !"uwtable", i32 2}
!810 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!811 = distinct !DISubprogram(name: "Npy_releaseContext", scope: !2, file: !2, line: 93, type: !812, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !686}
!814 = !{!815}
!815 = !DILocalVariable(name: "npyarr", arg: 1, scope: !811, file: !2, line: 93, type: !686)
!816 = !{!817, !817, i64 0}
!817 = !{!"any pointer", !818, i64 0}
!818 = !{!"omnipotent char", !819, i64 0}
!819 = !{!"Simple C/C++ TBAA"}
!820 = !DILocation(line: 93, column: 40, scope: !811)
!821 = !DILocation(line: 95, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !811, file: !2, line: 95, column: 9)
!823 = !DILocation(line: 95, column: 9, scope: !811)
!824 = !DILocation(line: 96, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 96, column: 13)
!826 = distinct !DILexicalBlock(scope: !822, file: !2, line: 95, column: 17)
!827 = !DILocation(line: 96, column: 21, scope: !825)
!828 = !DILocation(line: 96, column: 27, scope: !825)
!829 = !{!830, !817, i64 24}
!830 = !{!"__NpyArrContext", !817, i64 0, !818, i64 8, !831, i64 24, !817, i64 40, !833, i64 48, !833, i64 56, !833, i64 64}
!831 = !{!"", !817, i64 0, !832, i64 8}
!832 = !{!"int", !818, i64 0}
!833 = !{!"long", !818, i64 0}
!834 = !DILocation(line: 96, column: 13, scope: !826)
!835 = !DILocation(line: 97, column: 27, scope: !836)
!836 = distinct !DILexicalBlock(scope: !825, file: !2, line: 96, column: 32)
!837 = !DILocation(line: 97, column: 35, scope: !836)
!838 = !DILocation(line: 97, column: 41, scope: !836)
!839 = !DILocation(line: 97, column: 13, scope: !836)
!840 = !DILocation(line: 98, column: 9, scope: !836)
!841 = !DILocation(line: 99, column: 13, scope: !842)
!842 = distinct !DILexicalBlock(scope: !826, file: !2, line: 99, column: 13)
!843 = !DILocation(line: 99, column: 21, scope: !842)
!844 = !{!830, !817, i64 40}
!845 = !DILocation(line: 99, column: 13, scope: !826)
!846 = !DILocation(line: 100, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !2, line: 99, column: 26)
!848 = !DILocation(line: 100, column: 21, scope: !847)
!849 = !DILocation(line: 100, column: 26, scope: !847)
!850 = !DILocation(line: 100, column: 33, scope: !847)
!851 = !{!852, !817, i64 192}
!852 = !{!"__PyObjectDecoder", !853, i64 0, !817, i64 192, !817, i64 200, !833, i64 208, !817, i64 216}
!853 = !{!"__JSONObjectDecoder", !817, i64 0, !817, i64 8, !817, i64 16, !817, i64 24, !817, i64 32, !817, i64 40, !817, i64 48, !817, i64 56, !817, i64 64, !817, i64 72, !817, i64 80, !817, i64 88, !817, i64 96, !817, i64 104, !817, i64 112, !817, i64 120, !817, i64 128, !817, i64 136, !817, i64 144, !817, i64 152, !817, i64 160, !817, i64 168, !832, i64 176, !817, i64 184}
!854 = !DILocation(line: 101, column: 13, scope: !847)
!855 = !DILocation(line: 101, column: 21, scope: !847)
!856 = !DILocation(line: 101, column: 26, scope: !847)
!857 = !DILocation(line: 101, column: 33, scope: !847)
!858 = !{!852, !833, i64 208}
!859 = !DILocation(line: 102, column: 9, scope: !847)
!860 = !DILocation(line: 103, column: 9, scope: !826)
!861 = !DILocation(line: 104, column: 9, scope: !826)
!862 = !DILocation(line: 105, column: 9, scope: !826)
!863 = !{!830, !817, i64 0}
!864 = !DILocation(line: 106, column: 23, scope: !826)
!865 = !DILocation(line: 106, column: 9, scope: !826)
!866 = !DILocation(line: 107, column: 5, scope: !826)
!867 = !DILocation(line: 108, column: 1, scope: !811)
!868 = !DISubprogram(name: "PyObject_Free", scope: !869, file: !869, line: 102, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/objimpl.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "9270416a7571e454813fce7911a47b6b")
!870 = distinct !DISubprogram(name: "_Py_XDECREF", scope: !75, file: !75, line: 494, type: !106, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !871)
!871 = !{!872}
!872 = !DILocalVariable(name: "op", arg: 1, scope: !870, file: !75, line: 494, type: !73)
!873 = !DILocation(line: 494, column: 42, scope: !870)
!874 = !DILocation(line: 496, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !75, line: 496, column: 9)
!876 = !DILocation(line: 496, column: 12, scope: !875)
!877 = !DILocation(line: 496, column: 9, scope: !870)
!878 = !DILocation(line: 497, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !75, line: 496, column: 21)
!880 = !DILocation(line: 498, column: 5, scope: !879)
!881 = !DILocation(line: 499, column: 1, scope: !870)
!882 = distinct !DISubprogram(name: "Object_npyNewArray", scope: !2, file: !2, line: 110, type: !404, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !883)
!883 = !{!884, !885, !886, !887}
!884 = !DILocalVariable(name: "prv", arg: 1, scope: !882, file: !2, line: 110, type: !72)
!885 = !DILocalVariable(name: "_decoder", arg: 2, scope: !882, file: !2, line: 110, type: !72)
!886 = !DILocalVariable(name: "npyarr", scope: !882, file: !2, line: 111, type: !686)
!887 = !DILocalVariable(name: "decoder", scope: !882, file: !2, line: 112, type: !370)
!888 = !DILocation(line: 110, column: 32, scope: !882)
!889 = !DILocation(line: 110, column: 43, scope: !882)
!890 = !DILocation(line: 111, column: 5, scope: !882)
!891 = !DILocation(line: 111, column: 20, scope: !882)
!892 = !DILocation(line: 112, column: 5, scope: !882)
!893 = !DILocation(line: 112, column: 22, scope: !882)
!894 = !DILocation(line: 112, column: 51, scope: !882)
!895 = !DILocation(line: 114, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !882, file: !2, line: 114, column: 9)
!897 = !DILocation(line: 114, column: 18, scope: !896)
!898 = !DILocation(line: 114, column: 25, scope: !896)
!899 = !DILocation(line: 114, column: 9, scope: !882)
!900 = !DILocation(line: 116, column: 36, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !2, line: 114, column: 31)
!902 = !DILocation(line: 116, column: 18, scope: !901)
!903 = !DILocation(line: 116, column: 27, scope: !901)
!904 = !DILocation(line: 116, column: 34, scope: !901)
!905 = !DILocation(line: 116, column: 16, scope: !901)
!906 = !DILocation(line: 117, column: 32, scope: !901)
!907 = !DILocation(line: 117, column: 9, scope: !901)
!908 = !DILocation(line: 117, column: 18, scope: !901)
!909 = !DILocation(line: 117, column: 30, scope: !901)
!910 = !{!852, !817, i64 200}
!911 = !DILocation(line: 119, column: 14, scope: !912)
!912 = distinct !DILexicalBlock(scope: !901, file: !2, line: 119, column: 13)
!913 = !DILocation(line: 119, column: 13, scope: !901)
!914 = !DILocation(line: 120, column: 13, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !2, line: 119, column: 22)
!916 = !DILocation(line: 121, column: 13, scope: !915)
!917 = !DILocation(line: 124, column: 23, scope: !901)
!918 = !DILocation(line: 124, column: 9, scope: !901)
!919 = !DILocation(line: 124, column: 17, scope: !901)
!920 = !DILocation(line: 124, column: 21, scope: !901)
!921 = !DILocation(line: 125, column: 29, scope: !901)
!922 = !DILocation(line: 125, column: 37, scope: !901)
!923 = !DILocation(line: 125, column: 47, scope: !901)
!924 = !DILocation(line: 125, column: 9, scope: !901)
!925 = !DILocation(line: 125, column: 17, scope: !901)
!926 = !DILocation(line: 125, column: 27, scope: !901)
!927 = !DILocation(line: 127, column: 29, scope: !901)
!928 = !DILocation(line: 127, column: 9, scope: !901)
!929 = !DILocation(line: 127, column: 17, scope: !901)
!930 = !DILocation(line: 127, column: 23, scope: !901)
!931 = !DILocation(line: 127, column: 27, scope: !901)
!932 = !DILocation(line: 128, column: 9, scope: !901)
!933 = !DILocation(line: 128, column: 17, scope: !901)
!934 = !DILocation(line: 128, column: 23, scope: !901)
!935 = !DILocation(line: 128, column: 27, scope: !901)
!936 = !{!830, !832, i64 32}
!937 = !DILocation(line: 129, column: 9, scope: !901)
!938 = !DILocation(line: 129, column: 17, scope: !901)
!939 = !DILocation(line: 129, column: 21, scope: !901)
!940 = !DILocation(line: 131, column: 9, scope: !901)
!941 = !DILocation(line: 131, column: 17, scope: !901)
!942 = !DILocation(line: 131, column: 24, scope: !901)
!943 = !{!830, !833, i64 56}
!944 = !DILocation(line: 132, column: 9, scope: !901)
!945 = !DILocation(line: 132, column: 17, scope: !901)
!946 = !DILocation(line: 132, column: 25, scope: !901)
!947 = !{!830, !833, i64 64}
!948 = !DILocation(line: 133, column: 9, scope: !901)
!949 = !DILocation(line: 133, column: 17, scope: !901)
!950 = !DILocation(line: 133, column: 19, scope: !901)
!951 = !{!830, !833, i64 48}
!952 = !DILocation(line: 134, column: 5, scope: !901)
!953 = !DILocation(line: 137, column: 35, scope: !954)
!954 = distinct !DILexicalBlock(scope: !896, file: !2, line: 134, column: 12)
!955 = !DILocation(line: 137, column: 44, scope: !954)
!956 = !DILocation(line: 137, column: 16, scope: !954)
!957 = !DILocation(line: 138, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !2, line: 138, column: 13)
!959 = !DILocation(line: 138, column: 22, scope: !958)
!960 = !DILocation(line: 138, column: 32, scope: !958)
!961 = !DILocation(line: 138, column: 40, scope: !958)
!962 = !DILocation(line: 138, column: 46, scope: !958)
!963 = !DILocation(line: 138, column: 29, scope: !958)
!964 = !DILocation(line: 138, column: 13, scope: !954)
!965 = !DILocation(line: 139, column: 13, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !2, line: 138, column: 51)
!967 = !DILocation(line: 139, column: 21, scope: !966)
!968 = !DILocation(line: 139, column: 27, scope: !966)
!969 = !DILocation(line: 139, column: 30, scope: !966)
!970 = !DILocation(line: 140, column: 9, scope: !966)
!971 = !DILocation(line: 143, column: 5, scope: !882)
!972 = !DILocation(line: 143, column: 13, scope: !882)
!973 = !DILocation(line: 143, column: 19, scope: !882)
!974 = !DILocation(line: 143, column: 23, scope: !882)
!975 = !DILocation(line: 143, column: 32, scope: !882)
!976 = !DILocation(line: 143, column: 40, scope: !882)
!977 = !{!833, !833, i64 0}
!978 = !DILocation(line: 144, column: 5, scope: !882)
!979 = !DILocation(line: 144, column: 14, scope: !882)
!980 = !DILocation(line: 144, column: 20, scope: !882)
!981 = !DILocation(line: 145, column: 12, scope: !882)
!982 = !DILocation(line: 145, column: 5, scope: !882)
!983 = !DILocation(line: 146, column: 1, scope: !882)
!984 = !DISubprogram(name: "PyObject_Malloc", scope: !869, file: !869, line: 97, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DISubprogram(name: "PyErr_NoMemory", scope: !986, file: !986, line: 161, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/pyerrors.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "901b38e3df828a38acb12a9a545ab778")
!987 = !DISubroutineType(types: !988)
!988 = !{!73}
!989 = distinct !DISubprogram(name: "Npy_returnLabelled", scope: !2, file: !2, line: 148, type: !990, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{!73, !686}
!992 = !{!993, !994, !995}
!993 = !DILocalVariable(name: "npyarr", arg: 1, scope: !989, file: !2, line: 148, type: !686)
!994 = !DILocalVariable(name: "ret", scope: !989, file: !2, line: 149, type: !73)
!995 = !DILocalVariable(name: "i", scope: !989, file: !2, line: 150, type: !463)
!996 = !DILocation(line: 148, column: 45, scope: !989)
!997 = !DILocation(line: 149, column: 5, scope: !989)
!998 = !DILocation(line: 149, column: 15, scope: !989)
!999 = !DILocation(line: 149, column: 21, scope: !989)
!1000 = !DILocation(line: 149, column: 29, scope: !989)
!1001 = !DILocation(line: 150, column: 5, scope: !989)
!1002 = !DILocation(line: 150, column: 14, scope: !989)
!1003 = !DILocation(line: 152, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !989, file: !2, line: 152, column: 9)
!1005 = !DILocation(line: 152, column: 17, scope: !1004)
!1006 = !DILocation(line: 152, column: 27, scope: !1004)
!1007 = !DILocation(line: 152, column: 30, scope: !1004)
!1008 = !DILocation(line: 152, column: 38, scope: !1004)
!1009 = !DILocation(line: 152, column: 9, scope: !989)
!1010 = !DILocation(line: 154, column: 27, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 152, column: 49)
!1012 = !DILocation(line: 154, column: 35, scope: !1011)
!1013 = !DILocation(line: 154, column: 41, scope: !1011)
!1014 = !DILocation(line: 154, column: 45, scope: !1011)
!1015 = !DILocation(line: 154, column: 15, scope: !1011)
!1016 = !DILocation(line: 154, column: 13, scope: !1011)
!1017 = !DILocation(line: 155, column: 16, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 155, column: 9)
!1019 = !DILocation(line: 155, column: 14, scope: !1018)
!1020 = !DILocation(line: 155, column: 21, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 155, column: 9)
!1022 = !DILocation(line: 155, column: 25, scope: !1021)
!1023 = !DILocation(line: 155, column: 33, scope: !1021)
!1024 = !DILocation(line: 155, column: 39, scope: !1021)
!1025 = !DILocation(line: 155, column: 23, scope: !1021)
!1026 = !DILocation(line: 155, column: 9, scope: !1018)
!1027 = !DILocation(line: 156, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 156, column: 17)
!1029 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 155, column: 49)
!1030 = !DILocation(line: 156, column: 25, scope: !1028)
!1031 = !DILocation(line: 156, column: 32, scope: !1028)
!1032 = !DILocation(line: 156, column: 17, scope: !1029)
!1033 = !DILocation(line: 157, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 156, column: 36)
!1035 = !DILocation(line: 158, column: 17, scope: !1034)
!1036 = !DILocation(line: 158, column: 25, scope: !1034)
!1037 = !DILocation(line: 158, column: 32, scope: !1034)
!1038 = !DILocation(line: 158, column: 35, scope: !1034)
!1039 = !DILocation(line: 159, column: 13, scope: !1034)
!1040 = !DILocation(line: 160, column: 17, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 159, column: 20)
!1042 = !DILocation(line: 161, column: 17, scope: !1041)
!1043 = !DILocation(line: 163, column: 9, scope: !1029)
!1044 = !DILocation(line: 155, column: 45, scope: !1021)
!1045 = !DILocation(line: 155, column: 9, scope: !1021)
!1046 = distinct !{!1046, !1026, !1047, !1048}
!1047 = !DILocation(line: 163, column: 9, scope: !1018)
!1048 = !{!"llvm.loop.mustprogress"}
!1049 = !DILocation(line: 164, column: 9, scope: !1011)
!1050 = !DILocation(line: 165, column: 5, scope: !1011)
!1051 = !DILocation(line: 167, column: 12, scope: !989)
!1052 = !DILocation(line: 168, column: 1, scope: !989)
!1053 = !DILocation(line: 167, column: 5, scope: !989)
!1054 = !DISubprogram(name: "PyTuple_New", scope: !1055, file: !1055, line: 30, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/tupleobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "a28bb551a5639c1da2ed4c77902350fe")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!73, !79}
!1058 = distinct !DISubprogram(name: "_Py_INCREF", scope: !75, file: !75, line: 403, type: !106, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1059)
!1059 = !{!1060}
!1060 = !DILocalVariable(name: "op", arg: 1, scope: !1058, file: !75, line: 403, type: !73)
!1061 = !DILocation(line: 403, column: 41, scope: !1058)
!1062 = !DILocation(line: 408, column: 5, scope: !1058)
!1063 = !DILocation(line: 408, column: 9, scope: !1058)
!1064 = !DILocation(line: 408, column: 18, scope: !1058)
!1065 = !{!1066, !833, i64 0}
!1066 = !{!"_object", !833, i64 0, !817, i64 8}
!1067 = !DILocation(line: 409, column: 1, scope: !1058)
!1068 = distinct !DISubprogram(name: "Object_npyEndArray", scope: !2, file: !2, line: 170, type: !408, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1070 = !DILocalVariable(name: "prv", arg: 1, scope: !1068, file: !2, line: 170, type: !72)
!1071 = !DILocalVariable(name: "obj", arg: 2, scope: !1068, file: !2, line: 170, type: !383)
!1072 = !DILocalVariable(name: "ret", scope: !1068, file: !2, line: 171, type: !73)
!1073 = !DILocalVariable(name: "new_data", scope: !1068, file: !2, line: 172, type: !114)
!1074 = !DILocalVariable(name: "npyarr", scope: !1068, file: !2, line: 173, type: !686)
!1075 = !DILocalVariable(name: "emptyType", scope: !1068, file: !2, line: 174, type: !65)
!1076 = !DILocalVariable(name: "i", scope: !1068, file: !2, line: 175, type: !463)
!1077 = !DILocation(line: 170, column: 32, scope: !1068)
!1078 = !DILocation(line: 170, column: 43, scope: !1068)
!1079 = !DILocation(line: 171, column: 5, scope: !1068)
!1080 = !DILocation(line: 171, column: 15, scope: !1068)
!1081 = !DILocation(line: 172, column: 5, scope: !1068)
!1082 = !DILocation(line: 172, column: 11, scope: !1068)
!1083 = !DILocation(line: 173, column: 5, scope: !1068)
!1084 = !DILocation(line: 173, column: 20, scope: !1068)
!1085 = !DILocation(line: 173, column: 46, scope: !1068)
!1086 = !DILocation(line: 174, column: 5, scope: !1068)
!1087 = !DILocation(line: 174, column: 9, scope: !1068)
!1088 = !{!832, !832, i64 0}
!1089 = !DILocation(line: 175, column: 5, scope: !1068)
!1090 = !DILocation(line: 175, column: 14, scope: !1068)
!1091 = !DILocation(line: 177, column: 10, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 177, column: 9)
!1093 = !DILocation(line: 177, column: 9, scope: !1068)
!1094 = !DILocation(line: 178, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 177, column: 18)
!1096 = !DILocation(line: 181, column: 11, scope: !1068)
!1097 = !DILocation(line: 181, column: 19, scope: !1068)
!1098 = !DILocation(line: 181, column: 9, scope: !1068)
!1099 = !DILocation(line: 182, column: 9, scope: !1068)
!1100 = !DILocation(line: 182, column: 17, scope: !1068)
!1101 = !DILocation(line: 182, column: 7, scope: !1068)
!1102 = !DILocation(line: 184, column: 5, scope: !1068)
!1103 = !DILocation(line: 184, column: 13, scope: !1068)
!1104 = !DILocation(line: 184, column: 18, scope: !1068)
!1105 = !DILocation(line: 184, column: 24, scope: !1068)
!1106 = !DILocation(line: 186, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 186, column: 9)
!1108 = !DILocation(line: 186, column: 11, scope: !1107)
!1109 = !DILocation(line: 186, column: 16, scope: !1107)
!1110 = !DILocation(line: 186, column: 20, scope: !1107)
!1111 = !DILocation(line: 186, column: 28, scope: !1107)
!1112 = !DILocation(line: 186, column: 9, scope: !1068)
!1113 = !DILocation(line: 188, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 188, column: 13)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 186, column: 33)
!1116 = !DILocation(line: 188, column: 21, scope: !1114)
!1117 = !DILocation(line: 188, column: 26, scope: !1114)
!1118 = !{!852, !817, i64 216}
!1119 = !DILocation(line: 188, column: 13, scope: !1115)
!1120 = !DILocation(line: 189, column: 25, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 188, column: 33)
!1122 = !DILocation(line: 189, column: 33, scope: !1121)
!1123 = !DILocation(line: 189, column: 38, scope: !1121)
!1124 = !DILocation(line: 189, column: 45, scope: !1121)
!1125 = !{!1126, !832, i64 28}
!1126 = !{!"_PyArray_Descr", !1066, i64 0, !817, i64 16, !818, i64 24, !818, i64 25, !818, i64 26, !818, i64 27, !832, i64 28, !832, i64 32, !832, i64 36, !817, i64 40, !817, i64 48, !817, i64 56, !817, i64 64, !817, i64 72, !817, i64 80, !833, i64 88}
!1127 = !DILocation(line: 189, column: 23, scope: !1121)
!1128 = !DILocation(line: 190, column: 9, scope: !1121)
!1129 = !DILocation(line: 192, column: 13, scope: !1115)
!1130 = !DILocation(line: 191, column: 27, scope: !1115)
!1131 = !DILocation(line: 191, column: 9, scope: !1115)
!1132 = !DILocation(line: 191, column: 17, scope: !1115)
!1133 = !DILocation(line: 191, column: 21, scope: !1115)
!1134 = !DILocation(line: 193, column: 5, scope: !1115)
!1135 = !DILocation(line: 193, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 193, column: 16)
!1137 = !DILocation(line: 193, column: 24, scope: !1136)
!1138 = !DILocation(line: 193, column: 29, scope: !1136)
!1139 = !DILocation(line: 193, column: 36, scope: !1136)
!1140 = !DILocation(line: 193, column: 16, scope: !1107)
!1141 = !DILocation(line: 195, column: 20, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 193, column: 42)
!1143 = !DILocation(line: 195, column: 36, scope: !1142)
!1144 = !{!1145, !817, i64 16}
!1145 = !{!"tagPyArrayObject_fields", !1066, i64 0, !817, i64 16, !832, i64 24, !817, i64 32, !817, i64 40, !817, i64 48, !817, i64 56, !832, i64 64, !817, i64 72}
!1146 = !DILocation(line: 195, column: 55, scope: !1142)
!1147 = !DILocation(line: 195, column: 59, scope: !1142)
!1148 = !DILocation(line: 195, column: 67, scope: !1142)
!1149 = !DILocation(line: 195, column: 57, scope: !1142)
!1150 = !DILocation(line: 195, column: 18, scope: !1142)
!1151 = !DILocation(line: 196, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 196, column: 13)
!1153 = !DILocation(line: 196, column: 22, scope: !1152)
!1154 = !DILocation(line: 196, column: 13, scope: !1142)
!1155 = !DILocation(line: 197, column: 13, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 196, column: 31)
!1157 = !DILocation(line: 198, column: 32, scope: !1156)
!1158 = !DILocation(line: 198, column: 13, scope: !1156)
!1159 = !DILocation(line: 199, column: 13, scope: !1156)
!1160 = !DILocation(line: 201, column: 48, scope: !1142)
!1161 = !DILocation(line: 201, column: 27, scope: !1142)
!1162 = !DILocation(line: 201, column: 33, scope: !1142)
!1163 = !DILocation(line: 201, column: 38, scope: !1142)
!1164 = !DILocation(line: 203, column: 5, scope: !1142)
!1165 = !DILocation(line: 205, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 205, column: 9)
!1167 = !DILocation(line: 205, column: 17, scope: !1166)
!1168 = !DILocation(line: 205, column: 22, scope: !1166)
!1169 = !DILocation(line: 205, column: 29, scope: !1166)
!1170 = !DILocation(line: 205, column: 9, scope: !1068)
!1171 = !DILocation(line: 207, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 207, column: 13)
!1173 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 205, column: 35)
!1174 = !DILocation(line: 207, column: 21, scope: !1172)
!1175 = !DILocation(line: 207, column: 27, scope: !1172)
!1176 = !DILocation(line: 207, column: 31, scope: !1172)
!1177 = !DILocation(line: 207, column: 13, scope: !1173)
!1178 = !DILocation(line: 208, column: 27, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 207, column: 36)
!1180 = !DILocation(line: 208, column: 61, scope: !1179)
!1181 = !DILocation(line: 208, column: 67, scope: !1179)
!1182 = !DILocation(line: 208, column: 75, scope: !1179)
!1183 = !DILocation(line: 208, column: 13, scope: !1179)
!1184 = !DILocation(line: 208, column: 21, scope: !1179)
!1185 = !DILocation(line: 208, column: 25, scope: !1179)
!1186 = !DILocation(line: 210, column: 13, scope: !1179)
!1187 = !DILocation(line: 211, column: 9, scope: !1179)
!1188 = !DILocation(line: 213, column: 34, scope: !1173)
!1189 = !DILocation(line: 213, column: 15, scope: !1173)
!1190 = !DILocation(line: 213, column: 13, scope: !1173)
!1191 = !DILocation(line: 215, column: 9, scope: !1173)
!1192 = !DILocation(line: 215, column: 17, scope: !1173)
!1193 = !DILocation(line: 215, column: 21, scope: !1173)
!1194 = !DILocation(line: 216, column: 28, scope: !1173)
!1195 = !DILocation(line: 216, column: 9, scope: !1173)
!1196 = !DILocation(line: 217, column: 5, scope: !1173)
!1197 = !DILocation(line: 219, column: 12, scope: !1068)
!1198 = !DILocation(line: 219, column: 5, scope: !1068)
!1199 = !DILocation(line: 220, column: 1, scope: !1068)
!1200 = distinct !DISubprogram(name: "_Py_DECREF", scope: !75, file: !75, line: 413, type: !106, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1201)
!1201 = !{!1202}
!1202 = !DILocalVariable(name: "op", arg: 1, scope: !1200, file: !75, line: 417, type: !73)
!1203 = !DILocation(line: 417, column: 15, scope: !1200)
!1204 = !DILocation(line: 422, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !75, line: 422, column: 9)
!1206 = !DILocation(line: 422, column: 15, scope: !1205)
!1207 = !DILocation(line: 422, column: 9, scope: !1205)
!1208 = !DILocation(line: 422, column: 25, scope: !1205)
!1209 = !DILocation(line: 422, column: 9, scope: !1200)
!1210 = !DILocation(line: 428, column: 5, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !75, line: 422, column: 31)
!1212 = !DILocation(line: 430, column: 21, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1205, file: !75, line: 429, column: 10)
!1214 = !DILocation(line: 430, column: 9, scope: !1213)
!1215 = !DILocation(line: 432, column: 1, scope: !1200)
!1216 = distinct !DISubprogram(name: "Object_npyArrayAddItem", scope: !2, file: !2, line: 222, type: !392, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1218 = !DILocalVariable(name: "prv", arg: 1, scope: !1216, file: !2, line: 222, type: !72)
!1219 = !DILocalVariable(name: "obj", arg: 2, scope: !1216, file: !2, line: 222, type: !383)
!1220 = !DILocalVariable(name: "value", arg: 3, scope: !1216, file: !2, line: 222, type: !383)
!1221 = !DILocalVariable(name: "type", scope: !1216, file: !2, line: 223, type: !73)
!1222 = !DILocalVariable(name: "dtype", scope: !1216, file: !2, line: 224, type: !470)
!1223 = !DILocalVariable(name: "i", scope: !1216, file: !2, line: 225, type: !463)
!1224 = !DILocalVariable(name: "new_data", scope: !1216, file: !2, line: 226, type: !114)
!1225 = !DILocalVariable(name: "item", scope: !1216, file: !2, line: 226, type: !114)
!1226 = !DILocalVariable(name: "npyarr", scope: !1216, file: !2, line: 227, type: !686)
!1227 = !DILabel(scope: !1216, name: "fail", file: !2, line: 327)
!1228 = !DILocation(line: 222, column: 34, scope: !1216)
!1229 = !DILocation(line: 222, column: 45, scope: !1216)
!1230 = !DILocation(line: 222, column: 56, scope: !1216)
!1231 = !DILocation(line: 223, column: 5, scope: !1216)
!1232 = !DILocation(line: 223, column: 15, scope: !1216)
!1233 = !DILocation(line: 224, column: 5, scope: !1216)
!1234 = !DILocation(line: 224, column: 20, scope: !1216)
!1235 = !DILocation(line: 225, column: 5, scope: !1216)
!1236 = !DILocation(line: 225, column: 14, scope: !1216)
!1237 = !DILocation(line: 226, column: 5, scope: !1216)
!1238 = !DILocation(line: 226, column: 11, scope: !1216)
!1239 = !DILocation(line: 226, column: 22, scope: !1216)
!1240 = !DILocation(line: 227, column: 5, scope: !1216)
!1241 = !DILocation(line: 227, column: 20, scope: !1216)
!1242 = !DILocation(line: 227, column: 46, scope: !1216)
!1243 = !DILocation(line: 229, column: 10, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 229, column: 9)
!1245 = !DILocation(line: 229, column: 9, scope: !1216)
!1246 = !DILocation(line: 230, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 229, column: 18)
!1248 = !DILocation(line: 233, column: 9, scope: !1216)
!1249 = !DILocation(line: 233, column: 17, scope: !1216)
!1250 = !DILocation(line: 233, column: 7, scope: !1216)
!1251 = !DILocation(line: 235, column: 5, scope: !1216)
!1252 = !DILocation(line: 235, column: 13, scope: !1216)
!1253 = !DILocation(line: 235, column: 19, scope: !1216)
!1254 = !DILocation(line: 235, column: 23, scope: !1216)
!1255 = !DILocation(line: 235, column: 31, scope: !1216)
!1256 = !DILocation(line: 235, column: 36, scope: !1216)
!1257 = !DILocation(line: 235, column: 43, scope: !1216)
!1258 = !DILocation(line: 235, column: 47, scope: !1216)
!1259 = !DILocation(line: 237, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 237, column: 9)
!1261 = !{!1066, !817, i64 8}
!1262 = !DILocation(line: 237, column: 9, scope: !1216)
!1263 = !DILocation(line: 239, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 237, column: 43)
!1265 = !DILocation(line: 242, column: 10, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 242, column: 9)
!1267 = !DILocation(line: 242, column: 18, scope: !1266)
!1268 = !DILocation(line: 242, column: 9, scope: !1216)
!1269 = !DILocation(line: 245, column: 14, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 245, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 242, column: 23)
!1272 = !DILocation(line: 245, column: 22, scope: !1270)
!1273 = !DILocation(line: 245, column: 27, scope: !1270)
!1274 = !DILocation(line: 245, column: 13, scope: !1271)
!1275 = !DILocation(line: 246, column: 34, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 245, column: 34)
!1277 = !DILocation(line: 246, column: 20, scope: !1276)
!1278 = !DILocation(line: 246, column: 18, scope: !1276)
!1279 = !DILocation(line: 247, column: 18, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 247, column: 17)
!1281 = !DILocation(line: 247, column: 41, scope: !1280)
!1282 = !DILocation(line: 247, column: 17, scope: !1276)
!1283 = !DILocation(line: 248, column: 17, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 247, column: 56)
!1285 = !DILocation(line: 249, column: 17, scope: !1284)
!1286 = !DILocation(line: 251, column: 13, scope: !1276)
!1287 = !DILocation(line: 252, column: 13, scope: !1276)
!1288 = !DILocation(line: 253, column: 9, scope: !1276)
!1289 = !DILocation(line: 254, column: 21, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 253, column: 16)
!1291 = !DILocation(line: 254, column: 38, scope: !1290)
!1292 = !DILocation(line: 254, column: 46, scope: !1290)
!1293 = !DILocation(line: 254, column: 51, scope: !1290)
!1294 = !DILocation(line: 254, column: 19, scope: !1290)
!1295 = !DILocation(line: 260, column: 26, scope: !1271)
!1296 = !DILocation(line: 260, column: 33, scope: !1271)
!1297 = !{!1126, !832, i64 32}
!1298 = !DILocation(line: 260, column: 9, scope: !1271)
!1299 = !DILocation(line: 260, column: 17, scope: !1271)
!1300 = !DILocation(line: 260, column: 24, scope: !1271)
!1301 = !DILocation(line: 261, column: 13, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 261, column: 13)
!1303 = !{!1126, !818, i64 27}
!1304 = !DILocation(line: 261, column: 38, scope: !1302)
!1305 = !DILocation(line: 261, column: 41, scope: !1302)
!1306 = !DILocation(line: 261, column: 49, scope: !1302)
!1307 = !DILocation(line: 261, column: 56, scope: !1302)
!1308 = !DILocation(line: 261, column: 13, scope: !1271)
!1309 = !DILocation(line: 262, column: 13, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 261, column: 62)
!1311 = !DILocation(line: 264, column: 17, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 264, column: 17)
!1313 = !DILocation(line: 264, column: 25, scope: !1312)
!1314 = !DILocation(line: 264, column: 30, scope: !1312)
!1315 = !DILocation(line: 264, column: 37, scope: !1312)
!1316 = !DILocation(line: 264, column: 17, scope: !1310)
!1317 = !DILocation(line: 265, column: 33, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 264, column: 42)
!1319 = !DILocation(line: 265, column: 17, scope: !1318)
!1320 = !DILocation(line: 268, column: 17, scope: !1318)
!1321 = !DILocation(line: 270, column: 13, scope: !1310)
!1322 = !DILocation(line: 270, column: 21, scope: !1310)
!1323 = !DILocation(line: 270, column: 29, scope: !1310)
!1324 = !DILocation(line: 271, column: 27, scope: !1310)
!1325 = !DILocation(line: 271, column: 13, scope: !1310)
!1326 = !DILocation(line: 271, column: 21, scope: !1310)
!1327 = !DILocation(line: 271, column: 25, scope: !1310)
!1328 = !DILocation(line: 272, column: 18, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 272, column: 17)
!1330 = !DILocation(line: 272, column: 26, scope: !1329)
!1331 = !DILocation(line: 272, column: 17, scope: !1310)
!1332 = !DILocation(line: 273, column: 17, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 272, column: 31)
!1334 = !DILocation(line: 275, column: 35, scope: !1310)
!1335 = !DILocation(line: 275, column: 43, scope: !1310)
!1336 = !DILocation(line: 275, column: 49, scope: !1310)
!1337 = !DILocation(line: 275, column: 58, scope: !1310)
!1338 = !{!853, !817, i64 80}
!1339 = !DILocation(line: 277, column: 35, scope: !1310)
!1340 = !DILocation(line: 277, column: 43, scope: !1310)
!1341 = !DILocation(line: 277, column: 49, scope: !1310)
!1342 = !DILocation(line: 277, column: 62, scope: !1310)
!1343 = !{!853, !817, i64 16}
!1344 = !DILocation(line: 279, column: 35, scope: !1310)
!1345 = !DILocation(line: 279, column: 43, scope: !1310)
!1346 = !DILocation(line: 279, column: 49, scope: !1310)
!1347 = !DILocation(line: 279, column: 58, scope: !1310)
!1348 = !{!853, !817, i64 88}
!1349 = !DILocation(line: 281, column: 47, scope: !1310)
!1350 = !DILocation(line: 281, column: 52, scope: !1310)
!1351 = !DILocation(line: 281, column: 57, scope: !1310)
!1352 = !DILocation(line: 281, column: 20, scope: !1310)
!1353 = !DILocation(line: 281, column: 13, scope: !1310)
!1354 = !DILocation(line: 284, column: 23, scope: !1271)
!1355 = !DILocation(line: 285, column: 14, scope: !1271)
!1356 = !DILocation(line: 285, column: 28, scope: !1271)
!1357 = !DILocation(line: 285, column: 39, scope: !1271)
!1358 = !DILocation(line: 285, column: 47, scope: !1271)
!1359 = !DILocation(line: 284, column: 9, scope: !1271)
!1360 = !DILocation(line: 284, column: 17, scope: !1271)
!1361 = !DILocation(line: 284, column: 21, scope: !1271)
!1362 = !DILocation(line: 287, column: 14, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 287, column: 13)
!1364 = !DILocation(line: 287, column: 22, scope: !1363)
!1365 = !DILocation(line: 287, column: 13, scope: !1271)
!1366 = !DILocation(line: 288, column: 13, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 287, column: 27)
!1368 = !DILocation(line: 290, column: 5, scope: !1271)
!1369 = !DILocation(line: 292, column: 9, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 292, column: 9)
!1371 = !DILocation(line: 292, column: 14, scope: !1370)
!1372 = !DILocation(line: 292, column: 22, scope: !1370)
!1373 = !DILocation(line: 292, column: 11, scope: !1370)
!1374 = !DILocation(line: 292, column: 9, scope: !1216)
!1375 = !DILocation(line: 296, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 296, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 292, column: 31)
!1378 = !DILocation(line: 296, column: 21, scope: !1376)
!1379 = !DILocation(line: 296, column: 28, scope: !1376)
!1380 = !DILocation(line: 296, column: 13, scope: !1377)
!1381 = !DILocation(line: 297, column: 29, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 296, column: 34)
!1383 = !DILocation(line: 297, column: 13, scope: !1382)
!1384 = !DILocation(line: 300, column: 13, scope: !1382)
!1385 = !DILocation(line: 303, column: 28, scope: !1377)
!1386 = !DILocation(line: 303, column: 30, scope: !1377)
!1387 = !DILocation(line: 303, column: 39, scope: !1377)
!1388 = !DILocation(line: 303, column: 41, scope: !1377)
!1389 = !DILocation(line: 303, column: 38, scope: !1377)
!1390 = !DILocation(line: 303, column: 36, scope: !1377)
!1391 = !DILocation(line: 303, column: 56, scope: !1377)
!1392 = !DILocation(line: 303, column: 54, scope: !1377)
!1393 = !DILocation(line: 303, column: 9, scope: !1377)
!1394 = !DILocation(line: 303, column: 17, scope: !1377)
!1395 = !DILocation(line: 303, column: 25, scope: !1377)
!1396 = !DILocation(line: 304, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 304, column: 13)
!1398 = !DILocation(line: 304, column: 21, scope: !1397)
!1399 = !DILocation(line: 304, column: 47, scope: !1397)
!1400 = !DILocation(line: 304, column: 55, scope: !1397)
!1401 = !DILocation(line: 304, column: 45, scope: !1397)
!1402 = !DILocation(line: 304, column: 29, scope: !1397)
!1403 = !DILocation(line: 304, column: 13, scope: !1377)
!1404 = !DILocation(line: 305, column: 24, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 304, column: 63)
!1406 = !DILocation(line: 305, column: 40, scope: !1405)
!1407 = !DILocation(line: 306, column: 40, scope: !1405)
!1408 = !DILocation(line: 306, column: 48, scope: !1405)
!1409 = !DILocation(line: 306, column: 58, scope: !1405)
!1410 = !DILocation(line: 306, column: 66, scope: !1405)
!1411 = !DILocation(line: 306, column: 56, scope: !1405)
!1412 = !DILocation(line: 305, column: 22, scope: !1405)
!1413 = !DILocation(line: 307, column: 9, scope: !1405)
!1414 = !DILocation(line: 308, column: 13, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 307, column: 16)
!1416 = !DILocation(line: 309, column: 13, scope: !1415)
!1417 = !DILocation(line: 311, column: 56, scope: !1377)
!1418 = !DILocation(line: 311, column: 27, scope: !1377)
!1419 = !DILocation(line: 311, column: 35, scope: !1377)
!1420 = !DILocation(line: 311, column: 41, scope: !1377)
!1421 = !DILocation(line: 311, column: 46, scope: !1377)
!1422 = !DILocation(line: 314, column: 5, scope: !1377)
!1423 = !DILocation(line: 316, column: 36, scope: !1216)
!1424 = !DILocation(line: 316, column: 38, scope: !1216)
!1425 = !DILocation(line: 316, column: 5, scope: !1216)
!1426 = !{!1145, !817, i64 32}
!1427 = !DILocation(line: 316, column: 34, scope: !1216)
!1428 = !DILocation(line: 318, column: 17, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 318, column: 9)
!1430 = !{!1145, !817, i64 40}
!1431 = !DILocation(line: 318, column: 15, scope: !1429)
!1432 = !DILocation(line: 318, column: 50, scope: !1429)
!1433 = !DILocation(line: 318, column: 58, scope: !1429)
!1434 = !DILocation(line: 319, column: 9, scope: !1429)
!1435 = !{!1145, !817, i64 56}
!1436 = !{!1126, !817, i64 64}
!1437 = !{!1438, !817, i64 176}
!1438 = !{!"", !818, i64 0, !817, i64 168, !817, i64 176, !817, i64 184, !817, i64 192, !817, i64 200, !817, i64 208, !817, i64 216, !817, i64 224, !817, i64 232, !817, i64 240, !817, i64 248, !817, i64 256, !818, i64 264, !818, i64 288, !817, i64 312, !817, i64 320, !817, i64 328, !817, i64 336, !817, i64 344, !817, i64 352, !817, i64 360, !817, i64 368}
!1439 = !DILocation(line: 319, column: 51, scope: !1429)
!1440 = !DILocation(line: 318, column: 9, scope: !1216)
!1441 = !DILocation(line: 320, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 319, column: 58)
!1443 = !DILocation(line: 323, column: 5, scope: !1216)
!1444 = !DILocation(line: 324, column: 5, scope: !1216)
!1445 = !DILocation(line: 324, column: 13, scope: !1216)
!1446 = !DILocation(line: 324, column: 14, scope: !1216)
!1447 = !DILocation(line: 325, column: 5, scope: !1216)
!1448 = !DILocation(line: 327, column: 1, scope: !1216)
!1449 = !DILocation(line: 329, column: 24, scope: !1216)
!1450 = !DILocation(line: 329, column: 5, scope: !1216)
!1451 = !DILocation(line: 330, column: 5, scope: !1216)
!1452 = !DILocation(line: 331, column: 1, scope: !1216)
!1453 = distinct !DISubprogram(name: "_Py_IS_TYPE", scope: !75, file: !75, line: 127, type: !1454, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1458)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!65, !739, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1458 = !{!1459, !1460}
!1459 = !DILocalVariable(name: "ob", arg: 1, scope: !1453, file: !75, line: 127, type: !739)
!1460 = !DILocalVariable(name: "type", arg: 2, scope: !1453, file: !75, line: 127, type: !1456)
!1461 = !DILocation(line: 127, column: 47, scope: !1453)
!1462 = !DILocation(line: 127, column: 71, scope: !1453)
!1463 = !DILocation(line: 128, column: 12, scope: !1453)
!1464 = !DILocation(line: 128, column: 16, scope: !1453)
!1465 = !DILocation(line: 128, column: 27, scope: !1453)
!1466 = !DILocation(line: 128, column: 24, scope: !1453)
!1467 = !DILocation(line: 128, column: 5, scope: !1453)
!1468 = !DISubprogram(name: "PyType_IsSubtype", scope: !75, file: !75, line: 223, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!65, !87, !87}
!1471 = !DISubprogram(name: "PyObject_Type", scope: !1472, file: !1472, line: 268, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1472 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/abstract.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "0073b56b2259a36c0706791b20f6f07c")
!1473 = !DISubprogram(name: "PyErr_SetString", scope: !986, file: !986, line: 13, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !73, !99}
!1476 = !DISubprogram(name: "PyList_New", scope: !1477, file: !1477, line: 28, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1477 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/listobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "385f312692ce47ea9e6b347f7797b08c")
!1478 = distinct !DISubprogram(name: "Object_npyNewArrayList", scope: !2, file: !2, line: 333, type: !404, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DILocalVariable(name: "prv", arg: 1, scope: !1478, file: !2, line: 333, type: !72)
!1481 = !DILocalVariable(name: "_decoder", arg: 2, scope: !1478, file: !2, line: 333, type: !72)
!1482 = !DILocalVariable(name: "decoder", scope: !1478, file: !2, line: 334, type: !370)
!1483 = !DILocation(line: 333, column: 36, scope: !1478)
!1484 = !DILocation(line: 333, column: 47, scope: !1478)
!1485 = !DILocation(line: 334, column: 5, scope: !1478)
!1486 = !DILocation(line: 334, column: 22, scope: !1478)
!1487 = !DILocation(line: 334, column: 51, scope: !1478)
!1488 = !DILocation(line: 337, column: 9, scope: !1478)
!1489 = !DILocation(line: 336, column: 5, scope: !1478)
!1490 = !DILocation(line: 339, column: 24, scope: !1478)
!1491 = !DILocation(line: 339, column: 33, scope: !1478)
!1492 = !DILocation(line: 339, column: 5, scope: !1478)
!1493 = !DILocation(line: 341, column: 1, scope: !1478)
!1494 = !DILocation(line: 340, column: 5, scope: !1478)
!1495 = distinct !DISubprogram(name: "Object_npyArrayListAddItem", scope: !2, file: !2, line: 365, type: !392, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1496)
!1496 = !{!1497, !1498, !1499, !1500}
!1497 = !DILocalVariable(name: "prv", arg: 1, scope: !1495, file: !2, line: 365, type: !72)
!1498 = !DILocalVariable(name: "obj", arg: 2, scope: !1495, file: !2, line: 365, type: !383)
!1499 = !DILocalVariable(name: "value", arg: 3, scope: !1495, file: !2, line: 365, type: !383)
!1500 = !DILocalVariable(name: "npyarr", scope: !1495, file: !2, line: 366, type: !686)
!1501 = !DILocation(line: 365, column: 38, scope: !1495)
!1502 = !DILocation(line: 365, column: 49, scope: !1495)
!1503 = !DILocation(line: 365, column: 60, scope: !1495)
!1504 = !DILocation(line: 366, column: 5, scope: !1495)
!1505 = !DILocation(line: 366, column: 20, scope: !1495)
!1506 = !DILocation(line: 366, column: 46, scope: !1495)
!1507 = !DILocation(line: 368, column: 10, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 368, column: 9)
!1509 = !DILocation(line: 368, column: 9, scope: !1495)
!1510 = !DILocation(line: 369, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 368, column: 18)
!1512 = !DILocation(line: 371, column: 31, scope: !1495)
!1513 = !DILocation(line: 371, column: 39, scope: !1495)
!1514 = !DILocation(line: 371, column: 44, scope: !1495)
!1515 = !DILocation(line: 371, column: 5, scope: !1495)
!1516 = !DILocation(line: 372, column: 5, scope: !1495)
!1517 = !DILocation(line: 373, column: 5, scope: !1495)
!1518 = !DILocation(line: 373, column: 13, scope: !1495)
!1519 = !DILocation(line: 373, column: 20, scope: !1495)
!1520 = !DILocation(line: 374, column: 5, scope: !1495)
!1521 = !DILocation(line: 375, column: 1, scope: !1495)
!1522 = distinct !DISubprogram(name: "Object_npyEndArrayList", scope: !2, file: !2, line: 343, type: !408, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528}
!1524 = !DILocalVariable(name: "prv", arg: 1, scope: !1522, file: !2, line: 343, type: !72)
!1525 = !DILocalVariable(name: "obj", arg: 2, scope: !1522, file: !2, line: 343, type: !383)
!1526 = !DILocalVariable(name: "list", scope: !1522, file: !2, line: 344, type: !73)
!1527 = !DILocalVariable(name: "ret", scope: !1522, file: !2, line: 344, type: !73)
!1528 = !DILocalVariable(name: "npyarr", scope: !1522, file: !2, line: 345, type: !686)
!1529 = !DILocation(line: 343, column: 36, scope: !1522)
!1530 = !DILocation(line: 343, column: 47, scope: !1522)
!1531 = !DILocation(line: 344, column: 5, scope: !1522)
!1532 = !DILocation(line: 344, column: 15, scope: !1522)
!1533 = !DILocation(line: 344, column: 22, scope: !1522)
!1534 = !DILocation(line: 345, column: 5, scope: !1522)
!1535 = !DILocation(line: 345, column: 20, scope: !1522)
!1536 = !DILocation(line: 345, column: 46, scope: !1522)
!1537 = !DILocation(line: 347, column: 10, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 347, column: 9)
!1539 = !DILocation(line: 347, column: 9, scope: !1522)
!1540 = !DILocation(line: 348, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 347, column: 18)
!1542 = !DILocation(line: 352, column: 24, scope: !1522)
!1543 = !DILocation(line: 352, column: 32, scope: !1522)
!1544 = !DILocation(line: 352, column: 10, scope: !1522)
!1545 = !DILocation(line: 353, column: 19, scope: !1522)
!1546 = !DILocation(line: 353, column: 5, scope: !1522)
!1547 = !DILocation(line: 353, column: 13, scope: !1522)
!1548 = !DILocation(line: 353, column: 17, scope: !1522)
!1549 = !DILocation(line: 355, column: 30, scope: !1522)
!1550 = !DILocation(line: 355, column: 11, scope: !1522)
!1551 = !DILocation(line: 355, column: 9, scope: !1522)
!1552 = !DILocation(line: 356, column: 19, scope: !1522)
!1553 = !DILocation(line: 356, column: 5, scope: !1522)
!1554 = !DILocation(line: 356, column: 13, scope: !1522)
!1555 = !DILocation(line: 356, column: 17, scope: !1522)
!1556 = !DILocation(line: 358, column: 27, scope: !1522)
!1557 = !DILocation(line: 358, column: 35, scope: !1522)
!1558 = !DILocation(line: 358, column: 41, scope: !1522)
!1559 = !DILocation(line: 358, column: 50, scope: !1522)
!1560 = !DILocation(line: 359, column: 27, scope: !1522)
!1561 = !DILocation(line: 359, column: 35, scope: !1522)
!1562 = !DILocation(line: 359, column: 41, scope: !1522)
!1563 = !DILocation(line: 359, column: 54, scope: !1522)
!1564 = !DILocation(line: 360, column: 27, scope: !1522)
!1565 = !DILocation(line: 360, column: 35, scope: !1522)
!1566 = !DILocation(line: 360, column: 41, scope: !1522)
!1567 = !DILocation(line: 360, column: 50, scope: !1522)
!1568 = !DILocation(line: 361, column: 24, scope: !1522)
!1569 = !DILocation(line: 361, column: 5, scope: !1522)
!1570 = !DILocation(line: 362, column: 12, scope: !1522)
!1571 = !DILocation(line: 362, column: 5, scope: !1522)
!1572 = !DILocation(line: 363, column: 1, scope: !1522)
!1573 = !DISubprogram(name: "PyList_Append", scope: !1477, file: !1477, line: 34, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1574 = distinct !DISubprogram(name: "Object_npyNewObject", scope: !2, file: !2, line: 377, type: !404, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1575)
!1575 = !{!1576, !1577, !1578}
!1576 = !DILocalVariable(name: "prv", arg: 1, scope: !1574, file: !2, line: 377, type: !72)
!1577 = !DILocalVariable(name: "_decoder", arg: 2, scope: !1574, file: !2, line: 377, type: !72)
!1578 = !DILocalVariable(name: "decoder", scope: !1574, file: !2, line: 378, type: !370)
!1579 = !DILocation(line: 377, column: 33, scope: !1574)
!1580 = !DILocation(line: 377, column: 44, scope: !1574)
!1581 = !DILocation(line: 378, column: 5, scope: !1574)
!1582 = !DILocation(line: 378, column: 22, scope: !1574)
!1583 = !DILocation(line: 378, column: 51, scope: !1574)
!1584 = !DILocation(line: 380, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 380, column: 9)
!1586 = !DILocation(line: 380, column: 18, scope: !1585)
!1587 = !DILocation(line: 380, column: 25, scope: !1585)
!1588 = !DILocation(line: 380, column: 9, scope: !1574)
!1589 = !DILocation(line: 381, column: 25, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 380, column: 30)
!1591 = !DILocation(line: 381, column: 9, scope: !1590)
!1592 = !DILocation(line: 383, column: 9, scope: !1590)
!1593 = !DILocation(line: 386, column: 34, scope: !1574)
!1594 = !DILocation(line: 386, column: 44, scope: !1574)
!1595 = !DILocation(line: 386, column: 53, scope: !1574)
!1596 = !DILocation(line: 386, column: 58, scope: !1574)
!1597 = !DILocation(line: 386, column: 12, scope: !1574)
!1598 = !DILocation(line: 386, column: 5, scope: !1574)
!1599 = !DILocation(line: 387, column: 1, scope: !1574)
!1600 = distinct !DISubprogram(name: "Object_npyEndObject", scope: !2, file: !2, line: 389, type: !408, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606}
!1602 = !DILocalVariable(name: "prv", arg: 1, scope: !1600, file: !2, line: 389, type: !72)
!1603 = !DILocalVariable(name: "obj", arg: 2, scope: !1600, file: !2, line: 389, type: !383)
!1604 = !DILocalVariable(name: "list", scope: !1600, file: !2, line: 390, type: !73)
!1605 = !DILocalVariable(name: "labelidx", scope: !1600, file: !2, line: 391, type: !463)
!1606 = !DILocalVariable(name: "npyarr", scope: !1600, file: !2, line: 392, type: !686)
!1607 = !DILocation(line: 389, column: 33, scope: !1600)
!1608 = !DILocation(line: 389, column: 44, scope: !1600)
!1609 = !DILocation(line: 390, column: 5, scope: !1600)
!1610 = !DILocation(line: 390, column: 15, scope: !1600)
!1611 = !DILocation(line: 391, column: 5, scope: !1600)
!1612 = !DILocation(line: 391, column: 14, scope: !1600)
!1613 = !DILocation(line: 392, column: 5, scope: !1600)
!1614 = !DILocation(line: 392, column: 20, scope: !1600)
!1615 = !DILocation(line: 392, column: 46, scope: !1600)
!1616 = !DILocation(line: 394, column: 10, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 394, column: 9)
!1618 = !DILocation(line: 394, column: 9, scope: !1600)
!1619 = !DILocation(line: 395, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 394, column: 18)
!1621 = !DILocation(line: 398, column: 16, scope: !1600)
!1622 = !DILocation(line: 398, column: 24, scope: !1600)
!1623 = !DILocation(line: 398, column: 29, scope: !1600)
!1624 = !DILocation(line: 398, column: 36, scope: !1600)
!1625 = !DILocation(line: 398, column: 14, scope: !1600)
!1626 = !DILocation(line: 400, column: 12, scope: !1600)
!1627 = !DILocation(line: 400, column: 20, scope: !1600)
!1628 = !DILocation(line: 400, column: 27, scope: !1600)
!1629 = !DILocation(line: 400, column: 10, scope: !1600)
!1630 = !DILocation(line: 401, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 401, column: 9)
!1632 = !DILocation(line: 401, column: 9, scope: !1600)
!1633 = !DILocation(line: 402, column: 36, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 401, column: 15)
!1635 = !DILocation(line: 402, column: 9, scope: !1634)
!1636 = !DILocation(line: 402, column: 17, scope: !1634)
!1637 = !DILocation(line: 402, column: 24, scope: !1634)
!1638 = !DILocation(line: 402, column: 34, scope: !1634)
!1639 = !DILocation(line: 403, column: 9, scope: !1634)
!1640 = !DILocation(line: 404, column: 5, scope: !1634)
!1641 = !DILocation(line: 406, column: 46, scope: !1600)
!1642 = !DILocation(line: 406, column: 54, scope: !1600)
!1643 = !DILocation(line: 406, column: 60, scope: !1600)
!1644 = !DILocation(line: 406, column: 69, scope: !1600)
!1645 = !DILocation(line: 406, column: 74, scope: !1600)
!1646 = !DILocation(line: 406, column: 24, scope: !1600)
!1647 = !DILocation(line: 406, column: 5, scope: !1600)
!1648 = !DILocation(line: 407, column: 1, scope: !1600)
!1649 = distinct !DISubprogram(name: "Object_npyObjectAddKey", scope: !2, file: !2, line: 409, type: !388, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1651 = !DILocalVariable(name: "prv", arg: 1, scope: !1649, file: !2, line: 409, type: !72)
!1652 = !DILocalVariable(name: "obj", arg: 2, scope: !1649, file: !2, line: 409, type: !383)
!1653 = !DILocalVariable(name: "name", arg: 3, scope: !1649, file: !2, line: 409, type: !383)
!1654 = !DILocalVariable(name: "value", arg: 4, scope: !1649, file: !2, line: 409, type: !383)
!1655 = !DILocalVariable(name: "label", scope: !1649, file: !2, line: 410, type: !73)
!1656 = !DILocalVariable(name: "labels", scope: !1649, file: !2, line: 410, type: !73)
!1657 = !DILocalVariable(name: "labelidx", scope: !1649, file: !2, line: 411, type: !463)
!1658 = !DILocalVariable(name: "npyarr", scope: !1649, file: !2, line: 413, type: !686)
!1659 = !DILocation(line: 409, column: 34, scope: !1649)
!1660 = !DILocation(line: 409, column: 45, scope: !1649)
!1661 = !DILocation(line: 409, column: 56, scope: !1649)
!1662 = !DILocation(line: 409, column: 68, scope: !1649)
!1663 = !DILocation(line: 410, column: 5, scope: !1649)
!1664 = !DILocation(line: 410, column: 15, scope: !1649)
!1665 = !DILocation(line: 410, column: 23, scope: !1649)
!1666 = !DILocation(line: 411, column: 5, scope: !1649)
!1667 = !DILocation(line: 411, column: 14, scope: !1649)
!1668 = !DILocation(line: 413, column: 5, scope: !1649)
!1669 = !DILocation(line: 413, column: 20, scope: !1649)
!1670 = !DILocation(line: 413, column: 46, scope: !1649)
!1671 = !DILocation(line: 415, column: 10, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 415, column: 9)
!1673 = !DILocation(line: 415, column: 9, scope: !1649)
!1674 = !DILocation(line: 416, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 415, column: 18)
!1676 = !DILocation(line: 419, column: 25, scope: !1649)
!1677 = !DILocation(line: 419, column: 11, scope: !1649)
!1678 = !DILocation(line: 420, column: 16, scope: !1649)
!1679 = !DILocation(line: 420, column: 24, scope: !1649)
!1680 = !DILocation(line: 420, column: 29, scope: !1649)
!1681 = !DILocation(line: 420, column: 36, scope: !1649)
!1682 = !DILocation(line: 420, column: 14, scope: !1649)
!1683 = !DILocation(line: 422, column: 10, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 422, column: 9)
!1685 = !DILocation(line: 422, column: 18, scope: !1684)
!1686 = !DILocation(line: 422, column: 25, scope: !1684)
!1687 = !DILocation(line: 422, column: 9, scope: !1649)
!1688 = !DILocation(line: 423, column: 36, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 422, column: 36)
!1690 = !DILocation(line: 423, column: 9, scope: !1689)
!1691 = !DILocation(line: 423, column: 17, scope: !1689)
!1692 = !DILocation(line: 423, column: 24, scope: !1689)
!1693 = !DILocation(line: 423, column: 34, scope: !1689)
!1694 = !DILocation(line: 424, column: 5, scope: !1689)
!1695 = !DILocation(line: 425, column: 14, scope: !1649)
!1696 = !DILocation(line: 425, column: 22, scope: !1649)
!1697 = !DILocation(line: 425, column: 29, scope: !1649)
!1698 = !DILocation(line: 425, column: 12, scope: !1649)
!1699 = !DILocation(line: 428, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 428, column: 9)
!1701 = !DILocation(line: 428, column: 30, scope: !1700)
!1702 = !DILocation(line: 428, column: 33, scope: !1700)
!1703 = !{!1704, !833, i64 16}
!1704 = !{!"", !1066, i64 0, !833, i64 16}
!1705 = !DILocation(line: 428, column: 60, scope: !1700)
!1706 = !DILocation(line: 428, column: 68, scope: !1700)
!1707 = !DILocation(line: 428, column: 57, scope: !1700)
!1708 = !DILocation(line: 428, column: 9, scope: !1649)
!1709 = !DILocation(line: 429, column: 23, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 428, column: 77)
!1711 = !DILocation(line: 429, column: 31, scope: !1710)
!1712 = !DILocation(line: 429, column: 9, scope: !1710)
!1713 = !DILocation(line: 430, column: 5, scope: !1710)
!1714 = !DILocation(line: 432, column: 31, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 432, column: 9)
!1716 = !DILocation(line: 432, column: 39, scope: !1715)
!1717 = !DILocation(line: 432, column: 45, scope: !1715)
!1718 = !DILocation(line: 432, column: 58, scope: !1715)
!1719 = !DILocation(line: 432, column: 63, scope: !1715)
!1720 = !DILocation(line: 432, column: 68, scope: !1715)
!1721 = !DILocation(line: 432, column: 9, scope: !1715)
!1722 = !DILocation(line: 432, column: 9, scope: !1649)
!1723 = !DILocation(line: 433, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 432, column: 76)
!1725 = !DILocation(line: 434, column: 9, scope: !1724)
!1726 = !DILocation(line: 436, column: 5, scope: !1649)
!1727 = !DILocation(line: 437, column: 1, scope: !1649)
!1728 = distinct !DISubprogram(name: "PyType_HasFeature", scope: !75, file: !75, line: 621, type: !1729, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!65, !87, !274}
!1731 = !{!1732, !1733, !1734}
!1732 = !DILocalVariable(name: "type", arg: 1, scope: !1728, file: !75, line: 621, type: !87)
!1733 = !DILocalVariable(name: "feature", arg: 2, scope: !1728, file: !75, line: 621, type: !274)
!1734 = !DILocalVariable(name: "flags", scope: !1728, file: !75, line: 623, type: !274)
!1735 = !DILocation(line: 621, column: 33, scope: !1728)
!1736 = !DILocation(line: 621, column: 53, scope: !1728)
!1737 = !DILocation(line: 623, column: 5, scope: !1728)
!1738 = !DILocation(line: 623, column: 19, scope: !1728)
!1739 = !DILocation(line: 628, column: 13, scope: !1728)
!1740 = !DILocation(line: 628, column: 19, scope: !1728)
!1741 = !{!1742, !833, i64 168}
!1742 = !{!"_typeobject", !1704, i64 0, !817, i64 24, !833, i64 32, !833, i64 40, !817, i64 48, !833, i64 56, !817, i64 64, !817, i64 72, !817, i64 80, !817, i64 88, !817, i64 96, !817, i64 104, !817, i64 112, !817, i64 120, !817, i64 128, !817, i64 136, !817, i64 144, !817, i64 152, !817, i64 160, !833, i64 168, !817, i64 176, !817, i64 184, !817, i64 192, !817, i64 200, !833, i64 208, !817, i64 216, !817, i64 224, !817, i64 232, !817, i64 240, !817, i64 248, !817, i64 256, !817, i64 264, !817, i64 272, !817, i64 280, !833, i64 288, !817, i64 296, !817, i64 304, !817, i64 312, !817, i64 320, !817, i64 328, !817, i64 336, !817, i64 344, !817, i64 352, !817, i64 360, !817, i64 368, !817, i64 376, !832, i64 384, !817, i64 392, !817, i64 400}
!1743 = !DILocation(line: 628, column: 11, scope: !1728)
!1744 = !DILocation(line: 630, column: 14, scope: !1728)
!1745 = !DILocation(line: 630, column: 22, scope: !1728)
!1746 = !DILocation(line: 630, column: 20, scope: !1728)
!1747 = !DILocation(line: 630, column: 31, scope: !1728)
!1748 = !DILocation(line: 631, column: 1, scope: !1728)
!1749 = !DILocation(line: 630, column: 5, scope: !1728)
!1750 = distinct !DISubprogram(name: "Object_objectAddKey", scope: !2, file: !2, line: 439, type: !388, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1756}
!1752 = !DILocalVariable(name: "prv", arg: 1, scope: !1750, file: !2, line: 439, type: !72)
!1753 = !DILocalVariable(name: "obj", arg: 2, scope: !1750, file: !2, line: 439, type: !383)
!1754 = !DILocalVariable(name: "name", arg: 3, scope: !1750, file: !2, line: 439, type: !383)
!1755 = !DILocalVariable(name: "value", arg: 4, scope: !1750, file: !2, line: 439, type: !383)
!1756 = !DILocalVariable(name: "ret", scope: !1750, file: !2, line: 440, type: !65)
!1757 = !DILocation(line: 439, column: 31, scope: !1750)
!1758 = !DILocation(line: 439, column: 42, scope: !1750)
!1759 = !DILocation(line: 439, column: 53, scope: !1750)
!1760 = !DILocation(line: 439, column: 65, scope: !1750)
!1761 = !DILocation(line: 440, column: 5, scope: !1750)
!1762 = !DILocation(line: 440, column: 9, scope: !1750)
!1763 = !DILocation(line: 440, column: 30, scope: !1750)
!1764 = !DILocation(line: 440, column: 35, scope: !1750)
!1765 = !DILocation(line: 440, column: 41, scope: !1750)
!1766 = !DILocation(line: 440, column: 15, scope: !1750)
!1767 = !DILocation(line: 441, column: 5, scope: !1750)
!1768 = !DILocation(line: 442, column: 5, scope: !1750)
!1769 = !DILocation(line: 443, column: 12, scope: !1750)
!1770 = !DILocation(line: 443, column: 16, scope: !1750)
!1771 = !DILocation(line: 444, column: 1, scope: !1750)
!1772 = !DILocation(line: 443, column: 5, scope: !1750)
!1773 = !DISubprogram(name: "PyDict_SetItem", scope: !1774, file: !1774, line: 24, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1774 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/dictobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "8f9d89a095e39834fd51a0248adb1587")
!1775 = distinct !DISubprogram(name: "Object_arrayAddItem", scope: !2, file: !2, line: 446, type: !392, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1776)
!1776 = !{!1777, !1778, !1779, !1780}
!1777 = !DILocalVariable(name: "prv", arg: 1, scope: !1775, file: !2, line: 446, type: !72)
!1778 = !DILocalVariable(name: "obj", arg: 2, scope: !1775, file: !2, line: 446, type: !383)
!1779 = !DILocalVariable(name: "value", arg: 3, scope: !1775, file: !2, line: 446, type: !383)
!1780 = !DILocalVariable(name: "ret", scope: !1775, file: !2, line: 447, type: !65)
!1781 = !DILocation(line: 446, column: 31, scope: !1775)
!1782 = !DILocation(line: 446, column: 42, scope: !1775)
!1783 = !DILocation(line: 446, column: 53, scope: !1775)
!1784 = !DILocation(line: 447, column: 5, scope: !1775)
!1785 = !DILocation(line: 447, column: 9, scope: !1775)
!1786 = !DILocation(line: 447, column: 29, scope: !1775)
!1787 = !DILocation(line: 447, column: 34, scope: !1775)
!1788 = !DILocation(line: 447, column: 15, scope: !1775)
!1789 = !DILocation(line: 448, column: 5, scope: !1775)
!1790 = !DILocation(line: 449, column: 12, scope: !1775)
!1791 = !DILocation(line: 449, column: 16, scope: !1775)
!1792 = !DILocation(line: 450, column: 1, scope: !1775)
!1793 = !DILocation(line: 449, column: 5, scope: !1775)
!1794 = distinct !DISubprogram(name: "Object_newString", scope: !2, file: !2, line: 452, type: !381, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DILocalVariable(name: "prv", arg: 1, scope: !1794, file: !2, line: 452, type: !72)
!1797 = !DILocalVariable(name: "start", arg: 2, scope: !1794, file: !2, line: 452, type: !384)
!1798 = !DILocalVariable(name: "end", arg: 3, scope: !1794, file: !2, line: 452, type: !384)
!1799 = !DILocation(line: 452, column: 30, scope: !1794)
!1800 = !DILocation(line: 452, column: 44, scope: !1794)
!1801 = !DILocation(line: 452, column: 60, scope: !1794)
!1802 = !DILocation(line: 453, column: 35, scope: !1794)
!1803 = !DILocation(line: 453, column: 43, scope: !1794)
!1804 = !DILocation(line: 453, column: 49, scope: !1794)
!1805 = !DILocation(line: 453, column: 47, scope: !1794)
!1806 = !DILocation(line: 453, column: 12, scope: !1794)
!1807 = !DILocation(line: 453, column: 5, scope: !1794)
!1808 = !DISubprogram(name: "PyUnicode_FromWideChar", scope: !1809, file: !1809, line: 282, type: !1810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1809 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/unicodeobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "91a8207950c5b174a776ca9df9eddf7a")
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!73, !1812, !79}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!1814 = distinct !DISubprogram(name: "Object_newTrue", scope: !2, file: !2, line: 456, type: !396, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1815)
!1815 = !{!1816}
!1816 = !DILocalVariable(name: "prv", arg: 1, scope: !1814, file: !2, line: 456, type: !72)
!1817 = !DILocation(line: 456, column: 28, scope: !1814)
!1818 = !DILocation(line: 456, column: 35, scope: !1814)
!1819 = distinct !DISubprogram(name: "Object_newFalse", scope: !2, file: !2, line: 458, type: !396, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1820)
!1820 = !{!1821}
!1821 = !DILocalVariable(name: "prv", arg: 1, scope: !1819, file: !2, line: 458, type: !72)
!1822 = !DILocation(line: 458, column: 29, scope: !1819)
!1823 = !DILocation(line: 458, column: 36, scope: !1819)
!1824 = distinct !DISubprogram(name: "Object_newNull", scope: !2, file: !2, line: 460, type: !396, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1825)
!1825 = !{!1826}
!1826 = !DILocalVariable(name: "prv", arg: 1, scope: !1824, file: !2, line: 460, type: !72)
!1827 = !DILocation(line: 460, column: 28, scope: !1824)
!1828 = !DILocation(line: 460, column: 35, scope: !1824)
!1829 = distinct !DISubprogram(name: "Object_newPosInf", scope: !2, file: !2, line: 462, type: !396, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1830)
!1830 = !{!1831}
!1831 = !DILocalVariable(name: "prv", arg: 1, scope: !1829, file: !2, line: 462, type: !72)
!1832 = !DILocation(line: 462, column: 30, scope: !1829)
!1833 = !DILocation(line: 462, column: 44, scope: !1829)
!1834 = !DILocation(line: 462, column: 37, scope: !1829)
!1835 = !DISubprogram(name: "PyFloat_FromDouble", scope: !1836, file: !1836, line: 45, type: !1837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1836 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/floatobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "0f3a658931202298bccdf481c13bf65e")
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!73, !439}
!1839 = distinct !DISubprogram(name: "Object_newNegInf", scope: !2, file: !2, line: 464, type: !396, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1840)
!1840 = !{!1841}
!1841 = !DILocalVariable(name: "prv", arg: 1, scope: !1839, file: !2, line: 464, type: !72)
!1842 = !DILocation(line: 464, column: 30, scope: !1839)
!1843 = !DILocation(line: 464, column: 44, scope: !1839)
!1844 = !DILocation(line: 464, column: 37, scope: !1839)
!1845 = distinct !DISubprogram(name: "Object_newObject", scope: !2, file: !2, line: 466, type: !404, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1846)
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "prv", arg: 1, scope: !1845, file: !2, line: 466, type: !72)
!1848 = !DILocalVariable(name: "decoder", arg: 2, scope: !1845, file: !2, line: 466, type: !72)
!1849 = !DILocation(line: 466, column: 30, scope: !1845)
!1850 = !DILocation(line: 466, column: 41, scope: !1845)
!1851 = !DILocation(line: 466, column: 59, scope: !1845)
!1852 = !DILocation(line: 466, column: 52, scope: !1845)
!1853 = !DISubprogram(name: "PyDict_New", scope: !1774, file: !1774, line: 21, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = distinct !DISubprogram(name: "Object_endObject", scope: !2, file: !2, line: 468, type: !408, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1855)
!1855 = !{!1856, !1857}
!1856 = !DILocalVariable(name: "prv", arg: 1, scope: !1854, file: !2, line: 468, type: !72)
!1857 = !DILocalVariable(name: "obj", arg: 2, scope: !1854, file: !2, line: 468, type: !383)
!1858 = !DILocation(line: 468, column: 30, scope: !1854)
!1859 = !DILocation(line: 468, column: 41, scope: !1854)
!1860 = !DILocation(line: 468, column: 55, scope: !1854)
!1861 = !DILocation(line: 468, column: 48, scope: !1854)
!1862 = distinct !DISubprogram(name: "Object_newArray", scope: !2, file: !2, line: 470, type: !404, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1863)
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "prv", arg: 1, scope: !1862, file: !2, line: 470, type: !72)
!1865 = !DILocalVariable(name: "decoder", arg: 2, scope: !1862, file: !2, line: 470, type: !72)
!1866 = !DILocation(line: 470, column: 29, scope: !1862)
!1867 = !DILocation(line: 470, column: 40, scope: !1862)
!1868 = !DILocation(line: 470, column: 58, scope: !1862)
!1869 = !DILocation(line: 470, column: 51, scope: !1862)
!1870 = distinct !DISubprogram(name: "Object_endArray", scope: !2, file: !2, line: 472, type: !408, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1871)
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "prv", arg: 1, scope: !1870, file: !2, line: 472, type: !72)
!1873 = !DILocalVariable(name: "obj", arg: 2, scope: !1870, file: !2, line: 472, type: !383)
!1874 = !DILocation(line: 472, column: 29, scope: !1870)
!1875 = !DILocation(line: 472, column: 40, scope: !1870)
!1876 = !DILocation(line: 472, column: 54, scope: !1870)
!1877 = !DILocation(line: 472, column: 47, scope: !1870)
!1878 = distinct !DISubprogram(name: "Object_newInteger", scope: !2, file: !2, line: 474, type: !414, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1879)
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "prv", arg: 1, scope: !1878, file: !2, line: 474, type: !72)
!1881 = !DILocalVariable(name: "value", arg: 2, scope: !1878, file: !2, line: 474, type: !416)
!1882 = !DILocation(line: 474, column: 31, scope: !1878)
!1883 = !DILocation(line: 474, column: 44, scope: !1878)
!1884 = !DILocation(line: 475, column: 34, scope: !1878)
!1885 = !DILocation(line: 475, column: 28, scope: !1878)
!1886 = !DILocation(line: 475, column: 12, scope: !1878)
!1887 = !DILocation(line: 475, column: 5, scope: !1878)
!1888 = !DISubprogram(name: "PyLong_FromLong", scope: !1889, file: !1889, line: 18, type: !1890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1889 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/longobject.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "c5b0e7fbad7df1df28a36b8fa53f9db6")
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!73, !85}
!1892 = distinct !DISubprogram(name: "Object_newLong", scope: !2, file: !2, line: 478, type: !422, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1893)
!1893 = !{!1894, !1895}
!1894 = !DILocalVariable(name: "prv", arg: 1, scope: !1892, file: !2, line: 478, type: !72)
!1895 = !DILocalVariable(name: "value", arg: 2, scope: !1892, file: !2, line: 478, type: !424)
!1896 = !DILocation(line: 478, column: 28, scope: !1892)
!1897 = !DILocation(line: 478, column: 41, scope: !1892)
!1898 = !DILocation(line: 479, column: 32, scope: !1892)
!1899 = !DILocation(line: 479, column: 12, scope: !1892)
!1900 = !DILocation(line: 479, column: 5, scope: !1892)
!1901 = !DISubprogram(name: "PyLong_FromLongLong", scope: !1889, file: !1889, line: 96, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!73, !1904}
!1904 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1905 = distinct !DISubprogram(name: "Object_newUnsignedLong", scope: !2, file: !2, line: 482, type: !429, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1906)
!1906 = !{!1907, !1908}
!1907 = !DILocalVariable(name: "prv", arg: 1, scope: !1905, file: !2, line: 482, type: !72)
!1908 = !DILocalVariable(name: "value", arg: 2, scope: !1905, file: !2, line: 482, type: !431)
!1909 = !DILocation(line: 482, column: 36, scope: !1905)
!1910 = !DILocation(line: 482, column: 50, scope: !1905)
!1911 = !DILocation(line: 483, column: 40, scope: !1905)
!1912 = !DILocation(line: 483, column: 12, scope: !1905)
!1913 = !DILocation(line: 483, column: 5, scope: !1905)
!1914 = !DISubprogram(name: "PyLong_FromUnsignedLongLong", scope: !1889, file: !1889, line: 97, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!73, !1917}
!1917 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1918 = distinct !DISubprogram(name: "Object_newDouble", scope: !2, file: !2, line: 486, type: !437, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1919)
!1919 = !{!1920, !1921}
!1920 = !DILocalVariable(name: "prv", arg: 1, scope: !1918, file: !2, line: 486, type: !72)
!1921 = !DILocalVariable(name: "value", arg: 2, scope: !1918, file: !2, line: 486, type: !439)
!1922 = !DILocation(line: 486, column: 30, scope: !1918)
!1923 = !{!1924, !1924, i64 0}
!1924 = !{!"double", !818, i64 0}
!1925 = !DILocation(line: 486, column: 42, scope: !1918)
!1926 = !DILocation(line: 487, column: 31, scope: !1918)
!1927 = !DILocation(line: 487, column: 12, scope: !1918)
!1928 = !DILocation(line: 487, column: 5, scope: !1918)
!1929 = distinct !DISubprogram(name: "JSONToObj", scope: !2, file: !2, line: 500, type: !151, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943}
!1931 = !DILocalVariable(name: "self", arg: 1, scope: !1929, file: !2, line: 500, type: !73)
!1932 = !DILocalVariable(name: "args", arg: 2, scope: !1929, file: !2, line: 500, type: !73)
!1933 = !DILocalVariable(name: "kwargs", arg: 3, scope: !1929, file: !2, line: 500, type: !73)
!1934 = !DILocalVariable(name: "ret", scope: !1929, file: !2, line: 501, type: !73)
!1935 = !DILocalVariable(name: "sarg", scope: !1929, file: !2, line: 502, type: !73)
!1936 = !DILocalVariable(name: "arg", scope: !1929, file: !2, line: 503, type: !73)
!1937 = !DILocalVariable(name: "opreciseFloat", scope: !1929, file: !2, line: 504, type: !73)
!1938 = !DILocalVariable(name: "decoder", scope: !1929, file: !2, line: 505, type: !748)
!1939 = !DILocalVariable(name: "pyDecoder", scope: !1929, file: !2, line: 506, type: !371)
!1940 = !DILocalVariable(name: "dtype", scope: !1929, file: !2, line: 507, type: !470)
!1941 = !DILocalVariable(name: "numpy", scope: !1929, file: !2, line: 508, type: !65)
!1942 = !DILocalVariable(name: "labelled", scope: !1929, file: !2, line: 508, type: !65)
!1943 = !DILocalVariable(name: "dec", scope: !1929, file: !2, line: 510, type: !375)
!1944 = !DILocation(line: 500, column: 31, scope: !1929)
!1945 = !DILocation(line: 500, column: 47, scope: !1929)
!1946 = !DILocation(line: 500, column: 63, scope: !1929)
!1947 = !DILocation(line: 501, column: 5, scope: !1929)
!1948 = !DILocation(line: 501, column: 15, scope: !1929)
!1949 = !DILocation(line: 502, column: 5, scope: !1929)
!1950 = !DILocation(line: 502, column: 15, scope: !1929)
!1951 = !DILocation(line: 503, column: 5, scope: !1929)
!1952 = !DILocation(line: 503, column: 15, scope: !1929)
!1953 = !DILocation(line: 504, column: 5, scope: !1929)
!1954 = !DILocation(line: 504, column: 15, scope: !1929)
!1955 = !DILocation(line: 505, column: 5, scope: !1929)
!1956 = !DILocation(line: 505, column: 24, scope: !1929)
!1957 = !DILocation(line: 506, column: 5, scope: !1929)
!1958 = !DILocation(line: 506, column: 21, scope: !1929)
!1959 = !DILocation(line: 507, column: 5, scope: !1929)
!1960 = !DILocation(line: 507, column: 20, scope: !1929)
!1961 = !DILocation(line: 508, column: 5, scope: !1929)
!1962 = !DILocation(line: 508, column: 9, scope: !1929)
!1963 = !DILocation(line: 508, column: 20, scope: !1929)
!1964 = !DILocation(line: 510, column: 5, scope: !1929)
!1965 = !DILocation(line: 510, column: 23, scope: !1929)
!1966 = !DILocation(line: 520, column: 9, scope: !1929)
!1967 = !DILocation(line: 520, column: 22, scope: !1929)
!1968 = !{!853, !832, i64 176}
!1969 = !DILocation(line: 521, column: 9, scope: !1929)
!1970 = !DILocation(line: 521, column: 13, scope: !1929)
!1971 = !{!853, !817, i64 184}
!1972 = !DILocation(line: 523, column: 15, scope: !1929)
!1973 = !DILocation(line: 523, column: 21, scope: !1929)
!1974 = !{i64 0, i64 8, !816, i64 8, i64 8, !816, i64 16, i64 8, !816, i64 24, i64 8, !816, i64 32, i64 8, !816, i64 40, i64 8, !816, i64 48, i64 8, !816, i64 56, i64 8, !816, i64 64, i64 8, !816, i64 72, i64 8, !816, i64 80, i64 8, !816, i64 88, i64 8, !816, i64 96, i64 8, !816, i64 104, i64 8, !816, i64 112, i64 8, !816, i64 120, i64 8, !816, i64 128, i64 8, !816, i64 136, i64 8, !816, i64 144, i64 8, !816, i64 152, i64 8, !816, i64 160, i64 8, !816, i64 168, i64 8, !816, i64 176, i64 4, !1088, i64 184, i64 8, !816}
!1975 = !DILocation(line: 524, column: 15, scope: !1929)
!1976 = !DILocation(line: 524, column: 22, scope: !1929)
!1977 = !DILocation(line: 525, column: 15, scope: !1929)
!1978 = !DILocation(line: 525, column: 22, scope: !1929)
!1979 = !DILocation(line: 526, column: 15, scope: !1929)
!1980 = !DILocation(line: 526, column: 27, scope: !1929)
!1981 = !DILocation(line: 528, column: 13, scope: !1929)
!1982 = !DILocation(line: 530, column: 38, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 530, column: 9)
!1984 = !DILocation(line: 530, column: 44, scope: !1983)
!1985 = !DILocation(line: 532, column: 38, scope: !1983)
!1986 = !DILocation(line: 530, column: 10, scope: !1983)
!1987 = !DILocation(line: 530, column: 9, scope: !1929)
!1988 = !DILocation(line: 533, column: 38, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 532, column: 72)
!1990 = !DILocation(line: 533, column: 9, scope: !1989)
!1991 = !DILocation(line: 534, column: 9, scope: !1989)
!1992 = !DILocation(line: 537, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 537, column: 9)
!1994 = !DILocation(line: 537, column: 23, scope: !1993)
!1995 = !DILocation(line: 537, column: 42, scope: !1993)
!1996 = !DILocation(line: 537, column: 26, scope: !1993)
!1997 = !DILocation(line: 537, column: 9, scope: !1929)
!1998 = !DILocation(line: 538, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 537, column: 58)
!2000 = !DILocation(line: 538, column: 18, scope: !1999)
!2001 = !DILocation(line: 538, column: 31, scope: !1999)
!2002 = !DILocation(line: 539, column: 5, scope: !1999)
!2003 = !DILocation(line: 541, column: 9, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 541, column: 9)
!2005 = !DILocation(line: 541, column: 9, scope: !1929)
!2006 = !DILocation(line: 542, column: 16, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 541, column: 29)
!2008 = !DILocation(line: 542, column: 14, scope: !2007)
!2009 = !DILocation(line: 543, column: 5, scope: !2007)
!2010 = !DILocation(line: 543, column: 16, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 543, column: 16)
!2012 = !DILocation(line: 543, column: 16, scope: !2004)
!2013 = !DILocation(line: 544, column: 39, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 543, column: 38)
!2015 = !DILocation(line: 544, column: 16, scope: !2014)
!2016 = !DILocation(line: 544, column: 14, scope: !2014)
!2017 = !DILocation(line: 545, column: 13, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 545, column: 13)
!2019 = !DILocation(line: 545, column: 18, scope: !2018)
!2020 = !DILocation(line: 545, column: 13, scope: !2014)
!2021 = !DILocation(line: 547, column: 13, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 545, column: 27)
!2023 = !DILocation(line: 549, column: 5, scope: !2014)
!2024 = !DILocation(line: 550, column: 22, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 549, column: 12)
!2026 = !DILocation(line: 550, column: 9, scope: !2025)
!2027 = !DILocation(line: 551, column: 9, scope: !2025)
!2028 = !DILocation(line: 554, column: 5, scope: !1929)
!2029 = !DILocation(line: 554, column: 14, scope: !1929)
!2030 = !DILocation(line: 554, column: 23, scope: !1929)
!2031 = !{!853, !817, i64 160}
!2032 = !DILocation(line: 555, column: 5, scope: !1929)
!2033 = !DILocation(line: 555, column: 14, scope: !1929)
!2034 = !DILocation(line: 555, column: 26, scope: !1929)
!2035 = !{!853, !817, i64 168}
!2036 = !DILocation(line: 557, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 557, column: 9)
!2038 = !DILocation(line: 557, column: 9, scope: !1929)
!2039 = !DILocation(line: 558, column: 27, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !2, line: 557, column: 16)
!2041 = !DILocation(line: 558, column: 19, scope: !2040)
!2042 = !DILocation(line: 558, column: 25, scope: !2040)
!2043 = !DILocation(line: 559, column: 9, scope: !2040)
!2044 = !DILocation(line: 559, column: 18, scope: !2040)
!2045 = !DILocation(line: 559, column: 27, scope: !2040)
!2046 = !DILocation(line: 560, column: 9, scope: !2040)
!2047 = !DILocation(line: 560, column: 18, scope: !2040)
!2048 = !DILocation(line: 560, column: 27, scope: !2040)
!2049 = !DILocation(line: 561, column: 9, scope: !2040)
!2050 = !DILocation(line: 561, column: 18, scope: !2040)
!2051 = !DILocation(line: 561, column: 31, scope: !2040)
!2052 = !DILocation(line: 563, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 563, column: 13)
!2054 = !DILocation(line: 563, column: 13, scope: !2040)
!2055 = !DILocation(line: 564, column: 13, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 563, column: 23)
!2057 = !DILocation(line: 564, column: 22, scope: !2056)
!2058 = !DILocation(line: 564, column: 32, scope: !2056)
!2059 = !{!853, !817, i64 64}
!2060 = !DILocation(line: 565, column: 13, scope: !2056)
!2061 = !DILocation(line: 565, column: 22, scope: !2056)
!2062 = !DILocation(line: 565, column: 32, scope: !2056)
!2063 = !{!853, !817, i64 72}
!2064 = !DILocation(line: 566, column: 13, scope: !2056)
!2065 = !DILocation(line: 566, column: 22, scope: !2056)
!2066 = !DILocation(line: 566, column: 35, scope: !2056)
!2067 = !{!853, !817, i64 8}
!2068 = !DILocation(line: 567, column: 9, scope: !2056)
!2069 = !DILocation(line: 568, column: 5, scope: !2040)
!2070 = !DILocation(line: 570, column: 29, scope: !1929)
!2071 = !DILocation(line: 570, column: 38, scope: !1929)
!2072 = !DILocation(line: 571, column: 29, scope: !1929)
!2073 = !DILocation(line: 570, column: 11, scope: !1929)
!2074 = !DILocation(line: 570, column: 9, scope: !1929)
!2075 = !DILocation(line: 573, column: 9, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 573, column: 9)
!2077 = !DILocation(line: 573, column: 17, scope: !2076)
!2078 = !DILocation(line: 573, column: 14, scope: !2076)
!2079 = !DILocation(line: 573, column: 9, scope: !1929)
!2080 = !DILocation(line: 574, column: 9, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 573, column: 22)
!2082 = !DILocation(line: 575, column: 5, scope: !2081)
!2083 = !DILocation(line: 577, column: 9, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 577, column: 9)
!2085 = !DILocation(line: 577, column: 9, scope: !1929)
!2086 = !DILocation(line: 578, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !2, line: 578, column: 13)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 577, column: 27)
!2089 = !DILocation(line: 578, column: 13, scope: !2088)
!2090 = !DILocation(line: 579, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 578, column: 18)
!2092 = !DILocation(line: 580, column: 9, scope: !2091)
!2093 = !DILocation(line: 581, column: 38, scope: !2088)
!2094 = !DILocation(line: 581, column: 9, scope: !2088)
!2095 = !DILocation(line: 582, column: 9, scope: !2088)
!2096 = !DILocation(line: 585, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 585, column: 9)
!2098 = !DILocation(line: 585, column: 18, scope: !2097)
!2099 = !DILocation(line: 585, column: 9, scope: !1929)
!2100 = !DILocation(line: 590, column: 22, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 585, column: 28)
!2102 = !DILocation(line: 590, column: 46, scope: !2101)
!2103 = !DILocation(line: 590, column: 55, scope: !2101)
!2104 = !DILocation(line: 590, column: 9, scope: !2101)
!2105 = !DILocation(line: 592, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 592, column: 13)
!2107 = !DILocation(line: 592, column: 13, scope: !2101)
!2108 = !DILocation(line: 593, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !2, line: 592, column: 18)
!2110 = !DILocation(line: 594, column: 9, scope: !2109)
!2111 = !DILocation(line: 595, column: 38, scope: !2101)
!2112 = !DILocation(line: 595, column: 9, scope: !2101)
!2113 = !DILocation(line: 597, column: 9, scope: !2101)
!2114 = !DILocation(line: 600, column: 12, scope: !1929)
!2115 = !DILocation(line: 600, column: 5, scope: !1929)
!2116 = !DILocation(line: 601, column: 1, scope: !1929)
!2117 = distinct !DISubprogram(name: "Object_releaseObject", scope: !2, file: !2, line: 490, type: !442, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121, !2122}
!2119 = !DILocalVariable(name: "prv", arg: 1, scope: !2117, file: !2, line: 490, type: !72)
!2120 = !DILocalVariable(name: "obj", arg: 2, scope: !2117, file: !2, line: 490, type: !383)
!2121 = !DILocalVariable(name: "_decoder", arg: 3, scope: !2117, file: !2, line: 490, type: !72)
!2122 = !DILocalVariable(name: "decoder", scope: !2117, file: !2, line: 491, type: !370)
!2123 = !DILocation(line: 490, column: 40, scope: !2117)
!2124 = !DILocation(line: 490, column: 51, scope: !2117)
!2125 = !DILocation(line: 490, column: 62, scope: !2117)
!2126 = !DILocation(line: 491, column: 5, scope: !2117)
!2127 = !DILocation(line: 491, column: 22, scope: !2117)
!2128 = !DILocation(line: 491, column: 51, scope: !2117)
!2129 = !DILocation(line: 492, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 492, column: 9)
!2131 = !DILocation(line: 492, column: 16, scope: !2130)
!2132 = !DILocation(line: 492, column: 25, scope: !2130)
!2133 = !DILocation(line: 492, column: 13, scope: !2130)
!2134 = !DILocation(line: 492, column: 9, scope: !2117)
!2135 = !DILocation(line: 493, column: 9, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 492, column: 38)
!2137 = !DILocation(line: 494, column: 5, scope: !2136)
!2138 = !DILocation(line: 495, column: 1, scope: !2117)
!2139 = !DISubprogram(name: "_PyArg_ParseTupleAndKeywords_SizeT", scope: !2140, file: !2140, line: 41, type: !2141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2140 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.9.18-tfi3mxfib577g7oeypbrcz2fdcvilq6g/include/python3.9/modsupport.h", directory: "/local-ssd/py-pandas-t2ah26ijbt7dck44kjkjgtwnjnacpkvn-build", checksumkind: CSK_MD5, checksum: "924d9137b88804abd762430c975c733f")
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!65, !73, !73, !99, !607, null}
!2143 = !DISubprogram(name: "PyObject_IsTrue", scope: !75, file: !75, line: 261, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2144 = !DISubprogram(name: "PyUnicode_AsUTF8String", scope: !1809, file: !1809, line: 464, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2145 = !DISubprogram(name: "PyErr_Format", scope: !986, file: !986, line: 174, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!73, !73, !99, null}
!2148 = !DISubprogram(name: "JSON_DecodeObject", scope: !376, file: !376, line: 312, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!383, !748, !99, !368}
!2151 = !DISubprogram(name: "PyErr_Occurred", scope: !986, file: !986, line: 17, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2152 = !DISubprogram(name: "_Py_Dealloc", scope: !75, file: !75, line: 401, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
