; ModuleID = 'samples/203.bc'
source_filename = "pysam/libcsamtools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { i64, ptr }
%struct.PyMethodDef = type { ptr, ptr, i32, ptr }
%struct.PyModuleDef_Slot = type { i32, ptr }
%struct.__Pyx_StringTabEntry = type { ptr, ptr, i64, ptr, i8, i8, i8 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.__Pyx_CodeObjectCache = type { i32, i32, ptr }
%struct._ts = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i64, i64, %struct.PyTraceInfo, ptr, ptr, ptr, %struct._err_stackitem, %struct._PyCFrame }
%struct.PyTraceInfo = type { ptr, %struct._line_offsets }
%struct._line_offsets = type { i32, i32, i32, %struct._opaque }
%struct._opaque = type { i32, ptr, ptr }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyCFrame = type { i8, ptr, ptr }
%struct._frame = type { %struct._object, ptr, ptr, ptr, i32, i8, i8, i8, [1 x ptr] }
%struct.PyDictObject = type { %struct._object, i64, i64, ptr, ptr }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, ptr }
%struct.anon = type { i32 }
%struct.__Pyx_CodeObjectCacheEntry = type { ptr, i32 }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__pyx_module_is_main_pysam__libcsamtools = global i32 0, align 4, !dbg !0
@__pyx_moduledef = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr null, i64 0, ptr @__pyx_methods, ptr @__pyx_moduledef_slots, ptr null, ptr null, ptr null }, align 8, !dbg !411
@.str = private unnamed_addr constant [13 x i8] c"libcsamtools\00", align 1, !dbg !406
@__pyx_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16, !dbg !441
@__pyx_moduledef_slots = internal global [3 x %struct.PyModuleDef_Slot] [%struct.PyModuleDef_Slot { i32 1, ptr @__pyx_pymod_create }, %struct.PyModuleDef_Slot { i32 2, ptr @__pyx_pymod_exec_libcsamtools }, %struct.PyModuleDef_Slot zeroinitializer], align 16, !dbg !444
@__pyx_m = internal global ptr null, align 8, !dbg !500
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !449
@.str.2 = private unnamed_addr constant [7 x i8] c"loader\00", align 1, !dbg !454
@.str.3 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1, !dbg !459
@.str.4 = private unnamed_addr constant [7 x i8] c"origin\00", align 1, !dbg !464
@.str.5 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1, !dbg !466
@.str.6 = private unnamed_addr constant [7 x i8] c"parent\00", align 1, !dbg !471
@.str.7 = private unnamed_addr constant [12 x i8] c"__package__\00", align 1, !dbg !473
@.str.8 = private unnamed_addr constant [27 x i8] c"submodule_search_locations\00", align 1, !dbg !478
@.str.9 = private unnamed_addr constant [9 x i8] c"__path__\00", align 1, !dbg !483
@__Pyx_check_single_interpreter.main_interpreter_id = internal global i64 -1, align 8, !dbg !485
@PyExc_ImportError = external global ptr, align 8
@.str.10 = private unnamed_addr constant [95 x i8] c"Interpreter change detected - this module can only be loaded into one interpreter per process.\00", align 1, !dbg !495
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_AttributeError = external global ptr, align 8
@PyExc_RuntimeError = external global ptr, align 8
@.str.11 = private unnamed_addr constant [85 x i8] c"Module 'libcsamtools' has already been imported. Re-initialisation is not supported.\00", align 1, !dbg !502
@__pyx_f = internal global [1 x ptr] [ptr @.str.20], align 8, !dbg !543
@__pyx_empty_tuple = internal global ptr null, align 8, !dbg !546
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !507
@__pyx_empty_bytes = internal global ptr null, align 8, !dbg !548
@__pyx_empty_unicode = internal global ptr null, align 8, !dbg !550
@__pyx_d = internal global ptr null, align 8, !dbg !552
@.str.13 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1, !dbg !509
@__pyx_b = internal global ptr null, align 8, !dbg !554
@.str.14 = private unnamed_addr constant [15 x i8] c"cython_runtime\00", align 1, !dbg !511
@__pyx_cython_runtime = internal global ptr null, align 8, !dbg !556
@.str.15 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1, !dbg !516
@__pyx_n_s_name = internal global ptr null, align 8, !dbg !602
@__pyx_n_s_main = internal global ptr null, align 8, !dbg !604
@.str.16 = private unnamed_addr constant [19 x i8] c"pysam.libcsamtools\00", align 1, !dbg !518
@__pyx_mdef_5pysam_12libcsamtools_1py_samtools = internal global %struct.PyMethodDef { ptr @.str.35, ptr @__pyx_pw_5pysam_12libcsamtools_1py_samtools, i32 4, ptr null }, align 8, !dbg !645
@__pyx_n_s_pysam_libcsamtools = internal global ptr null, align 8, !dbg !647
@__pyx_n_s_py_samtools = internal global ptr null, align 8, !dbg !649
@__pyx_n_s_test = internal global ptr null, align 8, !dbg !651
@.str.17 = private unnamed_addr constant [24 x i8] c"init pysam.libcsamtools\00", align 1, !dbg !523
@.str.18 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1, !dbg !528
@.str.19 = private unnamed_addr constant [76 x i8] c"compiletime version %s of module '%.100s' does not match runtime version %s\00", align 1, !dbg !533
@.str.20 = private unnamed_addr constant [23 x i8] c"pysam/libcsamtools.pyx\00", align 1, !dbg !538
@__pyx_string_tab = internal global [8 x %struct.__Pyx_StringTabEntry] [%struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_cline_in_traceback, ptr @__pyx_k_cline_in_traceback, i64 19, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_main, ptr @__pyx_k_main, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_name, ptr @__pyx_k_name, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_py_samtools, ptr @__pyx_k_py_samtools, i64 12, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_pysam_libcsamtools, ptr @__pyx_k_pysam_libcsamtools, i64 19, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_kp_s_pysam_libcsamtools_pyx, ptr @__pyx_k_pysam_libcsamtools_pyx, i64 23, ptr null, i8 0, i8 1, i8 0 }, %struct.__Pyx_StringTabEntry { ptr @__pyx_n_s_test, ptr @__pyx_k_test, i64 9, ptr null, i8 0, i8 1, i8 1 }, %struct.__Pyx_StringTabEntry zeroinitializer], align 16, !dbg !558
@__pyx_filename = internal global ptr null, align 8, !dbg !596
@__pyx_lineno = internal global i32 0, align 4, !dbg !598
@__pyx_clineno = internal global i32 0, align 4, !dbg !600
@__pyx_n_s_cline_in_traceback = internal global ptr null, align 8, !dbg !574
@__pyx_k_cline_in_traceback = internal constant [19 x i8] c"cline_in_traceback\00", align 16, !dbg !576
@__pyx_k_main = internal constant [9 x i8] c"__main__\00", align 1, !dbg !579
@__pyx_k_name = internal constant [9 x i8] c"__name__\00", align 1, !dbg !582
@__pyx_k_py_samtools = internal constant [12 x i8] c"py_samtools\00", align 1, !dbg !584
@__pyx_k_pysam_libcsamtools = internal constant [19 x i8] c"pysam.libcsamtools\00", align 16, !dbg !587
@__pyx_kp_s_pysam_libcsamtools_pyx = internal global ptr null, align 8, !dbg !589
@__pyx_k_pysam_libcsamtools_pyx = internal constant [23 x i8] c"pysam/libcsamtools.pyx\00", align 16, !dbg !591
@__pyx_k_test = internal constant [9 x i8] c"__test__\00", align 1, !dbg !594
@__pyx_codeobj_ = internal global ptr null, align 8, !dbg !641
@.str.21 = private unnamed_addr constant [12 x i8] c"co_argcount\00", align 1, !dbg !606
@.str.22 = private unnamed_addr constant [19 x i8] c"co_posonlyargcount\00", align 1, !dbg !608
@.str.23 = private unnamed_addr constant [18 x i8] c"co_kwonlyargcount\00", align 1, !dbg !610
@.str.24 = private unnamed_addr constant [11 x i8] c"co_nlocals\00", align 1, !dbg !615
@.str.25 = private unnamed_addr constant [13 x i8] c"co_stacksize\00", align 1, !dbg !617
@.str.26 = private unnamed_addr constant [9 x i8] c"co_flags\00", align 1, !dbg !619
@.str.27 = private unnamed_addr constant [8 x i8] c"co_code\00", align 1, !dbg !621
@.str.28 = private unnamed_addr constant [10 x i8] c"co_consts\00", align 1, !dbg !624
@.str.29 = private unnamed_addr constant [9 x i8] c"co_names\00", align 1, !dbg !629
@.str.30 = private unnamed_addr constant [12 x i8] c"co_varnames\00", align 1, !dbg !631
@.str.31 = private unnamed_addr constant [12 x i8] c"co_freevars\00", align 1, !dbg !633
@.str.32 = private unnamed_addr constant [12 x i8] c"co_cellvars\00", align 1, !dbg !635
@.str.33 = private unnamed_addr constant [13 x i8] c"co_linetable\00", align 1, !dbg !637
@.str.34 = private unnamed_addr constant [8 x i8] c"replace\00", align 1, !dbg !639
@.str.35 = private unnamed_addr constant [12 x i8] c"py_samtools\00", align 1, !dbg !643
@__Pyx_CLineForTraceback.__pyx_dict_version = internal global i64 0, align 8, !dbg !653
@__Pyx_CLineForTraceback.__pyx_dict_cached_value = internal global ptr null, align 8, !dbg !826
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@__pyx_code_cache = internal global %struct.__Pyx_CodeObjectCache zeroinitializer, align 8, !dbg !828
@.str.36 = private unnamed_addr constant [11 x i8] c"%s (%s:%d)\00", align 1, !dbg !835
@__pyx_cfilenm = internal global ptr @.str.37, align 8, !dbg !842
@.str.37 = private unnamed_addr constant [21 x i8] c"pysam/libcsamtools.c\00", align 1, !dbg !837

; Function Attrs: nounwind uwtable
define ptr @PyInit_libcsamtools() #0 !dbg !850 {
entry:
  %call = call ptr @PyModuleDef_Init(ptr noundef @__pyx_moduledef), !dbg !851
  ret ptr %call, !dbg !852
}

declare !dbg !853 ptr @PyModuleDef_Init(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pymod_create(ptr noundef %spec, ptr noundef %def) #0 !dbg !858 {
entry:
  %retval = alloca ptr, align 8
  %spec.addr = alloca ptr, align 8
  %def.addr = alloca ptr, align 8
  %module = alloca ptr, align 8
  %moddict = alloca ptr, align 8
  %modname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %spec, ptr %spec.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %spec.addr, metadata !862, metadata !DIExpression()), !dbg !872
  store ptr %def, ptr %def.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %def.addr, metadata !863, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %module) #8, !dbg !874
  tail call void @llvm.dbg.declare(metadata ptr %module, metadata !864, metadata !DIExpression()), !dbg !875
  store ptr null, ptr %module, align 8, !dbg !875, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %moddict) #8, !dbg !874
  tail call void @llvm.dbg.declare(metadata ptr %moddict, metadata !865, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 8, ptr %modname) #8, !dbg !874
  tail call void @llvm.dbg.declare(metadata ptr %modname, metadata !866, metadata !DIExpression()), !dbg !877
  %call = call i32 @__Pyx_check_single_interpreter(), !dbg !878
  %tobool = icmp ne i32 %call, 0, !dbg !878
  br i1 %tobool, label %if.then, label %if.end, !dbg !880

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !881

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @__pyx_m, align 8, !dbg !882, !tbaa !868
  %tobool1 = icmp ne ptr %0, null, !dbg !882
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !884

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr @__pyx_m, align 8, !dbg !885, !tbaa !868
  call void @Py_INCREF(ptr noundef %1), !dbg !885
  %2 = load ptr, ptr @__pyx_m, align 8, !dbg !885, !tbaa !868
  store ptr %2, ptr %retval, align 8, !dbg !886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !886

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %spec.addr, align 8, !dbg !887, !tbaa !868
  %call4 = call ptr @PyObject_GetAttrString(ptr noundef %3, ptr noundef @.str.1), !dbg !888
  store ptr %call4, ptr %modname, align 8, !dbg !889, !tbaa !868
  %4 = load ptr, ptr %modname, align 8, !dbg !890, !tbaa !868
  %tobool5 = icmp ne ptr %4, null, !dbg !890
  %lnot = xor i1 %tobool5, true, !dbg !890
  %lnot6 = xor i1 %lnot, true, !dbg !890
  %lnot7 = xor i1 %lnot6, true, !dbg !890
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !890
  %conv = sext i32 %lnot.ext to i64, !dbg !890
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !890
  %tobool8 = icmp ne i64 %expval, 0, !dbg !890
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !892

if.then9:                                         ; preds = %if.end3
  br label %bad, !dbg !893

if.end10:                                         ; preds = %if.end3
  %5 = load ptr, ptr %modname, align 8, !dbg !894, !tbaa !868
  %call11 = call ptr @PyModule_NewObject(ptr noundef %5), !dbg !895
  store ptr %call11, ptr %module, align 8, !dbg !896, !tbaa !868
  %6 = load ptr, ptr %modname, align 8, !dbg !897, !tbaa !868
  call void @Py_DECREF(ptr noundef %6), !dbg !897
  %7 = load ptr, ptr %module, align 8, !dbg !898, !tbaa !868
  %tobool12 = icmp ne ptr %7, null, !dbg !898
  %lnot13 = xor i1 %tobool12, true, !dbg !898
  %lnot15 = xor i1 %lnot13, true, !dbg !898
  %lnot17 = xor i1 %lnot15, true, !dbg !898
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !898
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !898
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !898
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !898
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !900

if.then22:                                        ; preds = %if.end10
  br label %bad, !dbg !901

if.end23:                                         ; preds = %if.end10
  %8 = load ptr, ptr %module, align 8, !dbg !902, !tbaa !868
  %call24 = call ptr @PyModule_GetDict(ptr noundef %8), !dbg !903
  store ptr %call24, ptr %moddict, align 8, !dbg !904, !tbaa !868
  %9 = load ptr, ptr %moddict, align 8, !dbg !905, !tbaa !868
  %tobool25 = icmp ne ptr %9, null, !dbg !905
  %lnot26 = xor i1 %tobool25, true, !dbg !905
  %lnot28 = xor i1 %lnot26, true, !dbg !905
  %lnot30 = xor i1 %lnot28, true, !dbg !905
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !905
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !905
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !905
  %tobool34 = icmp ne i64 %expval33, 0, !dbg !905
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !907

if.then35:                                        ; preds = %if.end23
  br label %bad, !dbg !908

if.end36:                                         ; preds = %if.end23
  %10 = load ptr, ptr %spec.addr, align 8, !dbg !909, !tbaa !868
  %11 = load ptr, ptr %moddict, align 8, !dbg !909, !tbaa !868
  %call37 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %10, ptr noundef %11, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 1), !dbg !909
  %cmp = icmp slt i32 %call37, 0, !dbg !909
  %lnot39 = xor i1 %cmp, true, !dbg !909
  %lnot41 = xor i1 %lnot39, true, !dbg !909
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !909
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !909
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !909
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !909
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !911

if.then46:                                        ; preds = %if.end36
  br label %bad, !dbg !912

if.end47:                                         ; preds = %if.end36
  %12 = load ptr, ptr %spec.addr, align 8, !dbg !913, !tbaa !868
  %13 = load ptr, ptr %moddict, align 8, !dbg !913, !tbaa !868
  %call48 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %12, ptr noundef %13, ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 1), !dbg !913
  %cmp49 = icmp slt i32 %call48, 0, !dbg !913
  %lnot51 = xor i1 %cmp49, true, !dbg !913
  %lnot53 = xor i1 %lnot51, true, !dbg !913
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !913
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !913
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !913
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !913
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !915

if.then58:                                        ; preds = %if.end47
  br label %bad, !dbg !916

if.end59:                                         ; preds = %if.end47
  %14 = load ptr, ptr %spec.addr, align 8, !dbg !917, !tbaa !868
  %15 = load ptr, ptr %moddict, align 8, !dbg !917, !tbaa !868
  %call60 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %14, ptr noundef %15, ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 1), !dbg !917
  %cmp61 = icmp slt i32 %call60, 0, !dbg !917
  %lnot63 = xor i1 %cmp61, true, !dbg !917
  %lnot65 = xor i1 %lnot63, true, !dbg !917
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !917
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !917
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !917
  %tobool69 = icmp ne i64 %expval68, 0, !dbg !917
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !919

if.then70:                                        ; preds = %if.end59
  br label %bad, !dbg !920

if.end71:                                         ; preds = %if.end59
  %16 = load ptr, ptr %spec.addr, align 8, !dbg !921, !tbaa !868
  %17 = load ptr, ptr %moddict, align 8, !dbg !921, !tbaa !868
  %call72 = call i32 @__Pyx_copy_spec_to_module(ptr noundef %16, ptr noundef %17, ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef 0), !dbg !921
  %cmp73 = icmp slt i32 %call72, 0, !dbg !921
  %lnot75 = xor i1 %cmp73, true, !dbg !921
  %lnot77 = xor i1 %lnot75, true, !dbg !921
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !921
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !921
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !921
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !921
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !923

if.then82:                                        ; preds = %if.end71
  br label %bad, !dbg !924

if.end83:                                         ; preds = %if.end71
  %18 = load ptr, ptr %module, align 8, !dbg !925, !tbaa !868
  store ptr %18, ptr %retval, align 8, !dbg !926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !926

bad:                                              ; preds = %if.then82, %if.then70, %if.then58, %if.then46, %if.then35, %if.then22, %if.then9
  tail call void @llvm.dbg.label(metadata !867), !dbg !927
  %19 = load ptr, ptr %module, align 8, !dbg !928, !tbaa !868
  call void @Py_XDECREF(ptr noundef %19), !dbg !928
  store ptr null, ptr %retval, align 8, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !929

cleanup:                                          ; preds = %bad, %if.end83, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %modname) #8, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %moddict) #8, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %module) #8, !dbg !930
  %20 = load ptr, ptr %retval, align 8, !dbg !930
  ret ptr %20, !dbg !930
}

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_pymod_exec_libcsamtools(ptr noundef %__pyx_pyinit_module) #0 !dbg !931 {
entry:
  %retval = alloca i32, align 4
  %__pyx_pyinit_module.addr = alloca ptr, align 8
  %__pyx_t_1 = alloca ptr, align 8
  %__pyx_lineno = alloca i32, align 4
  %__pyx_filename = alloca ptr, align 8
  %__pyx_clineno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %modules = alloca ptr, align 8
  %_py_tmp = alloca ptr, align 8
  store ptr %__pyx_pyinit_module, ptr %__pyx_pyinit_module.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_pyinit_module.addr, metadata !933, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_t_1) #8, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_t_1, metadata !934, metadata !DIExpression()), !dbg !948
  store ptr null, ptr %__pyx_t_1, align 8, !dbg !948, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_lineno) #8, !dbg !949
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_lineno, metadata !935, metadata !DIExpression()), !dbg !950
  store i32 0, ptr %__pyx_lineno, align 4, !dbg !950, !tbaa !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_filename) #8, !dbg !953
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_filename, metadata !936, metadata !DIExpression()), !dbg !954
  store ptr null, ptr %__pyx_filename, align 8, !dbg !954, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 4, ptr %__pyx_clineno) #8, !dbg !955
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_clineno, metadata !937, metadata !DIExpression()), !dbg !956
  store i32 0, ptr %__pyx_clineno, align 4, !dbg !956, !tbaa !951
  %0 = load ptr, ptr @__pyx_m, align 8, !dbg !957, !tbaa !868
  %tobool = icmp ne ptr %0, null, !dbg !957
  br i1 %tobool, label %if.then, label %if.end2, !dbg !959

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__pyx_m, align 8, !dbg !960, !tbaa !868
  %2 = load ptr, ptr %__pyx_pyinit_module.addr, align 8, !dbg !963, !tbaa !868
  %cmp = icmp eq ptr %1, %2, !dbg !964
  br i1 %cmp, label %if.then1, label %if.end, !dbg !965

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !966

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr @PyExc_RuntimeError, align 8, !dbg !967, !tbaa !868
  call void @PyErr_SetString(ptr noundef %3, ptr noundef @.str.11), !dbg !968
  store i32 -1, ptr %retval, align 4, !dbg !969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !969

if.end2:                                          ; preds = %entry
  %call = call i32 @__Pyx_check_binary_version(), !dbg !970
  %cmp3 = icmp slt i32 %call, 0, !dbg !972
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !973

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr @__pyx_f, align 8, !dbg !974, !tbaa !868
  store ptr %4, ptr %__pyx_filename, align 8, !dbg !974, !tbaa !868
  %5 = load ptr, ptr %__pyx_filename, align 8, !dbg !974, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !974, !tbaa !951
  %6 = load i32, ptr %__pyx_lineno, align 4, !dbg !974, !tbaa !951
  store i32 1563, ptr %__pyx_clineno, align 4, !dbg !974, !tbaa !951
  %7 = load i32, ptr %__pyx_clineno, align 4, !dbg !974, !tbaa !951
  br label %__pyx_L1_error, !dbg !977

if.end5:                                          ; preds = %if.end2
  %call6 = call ptr @PyTuple_New(i64 noundef 0), !dbg !978
  store ptr %call6, ptr @__pyx_empty_tuple, align 8, !dbg !979, !tbaa !868
  %8 = load ptr, ptr @__pyx_empty_tuple, align 8, !dbg !980, !tbaa !868
  %tobool7 = icmp ne ptr %8, null, !dbg !980
  %lnot = xor i1 %tobool7, true, !dbg !980
  %lnot8 = xor i1 %lnot, true, !dbg !980
  %lnot9 = xor i1 %lnot8, true, !dbg !980
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !980
  %conv = sext i32 %lnot.ext to i64, !dbg !980
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !980
  %tobool10 = icmp ne i64 %expval, 0, !dbg !980
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !982

if.then11:                                        ; preds = %if.end5
  %9 = load ptr, ptr @__pyx_f, align 8, !dbg !983, !tbaa !868
  store ptr %9, ptr %__pyx_filename, align 8, !dbg !983, !tbaa !868
  %10 = load ptr, ptr %__pyx_filename, align 8, !dbg !983, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !983, !tbaa !951
  %11 = load i32, ptr %__pyx_lineno, align 4, !dbg !983, !tbaa !951
  store i32 1567, ptr %__pyx_clineno, align 4, !dbg !983, !tbaa !951
  %12 = load i32, ptr %__pyx_clineno, align 4, !dbg !983, !tbaa !951
  br label %__pyx_L1_error, !dbg !986

if.end12:                                         ; preds = %if.end5
  %call13 = call ptr @PyBytes_FromStringAndSize(ptr noundef @.str.12, i64 noundef 0), !dbg !987
  store ptr %call13, ptr @__pyx_empty_bytes, align 8, !dbg !988, !tbaa !868
  %13 = load ptr, ptr @__pyx_empty_bytes, align 8, !dbg !989, !tbaa !868
  %tobool14 = icmp ne ptr %13, null, !dbg !989
  %lnot15 = xor i1 %tobool14, true, !dbg !989
  %lnot17 = xor i1 %lnot15, true, !dbg !989
  %lnot19 = xor i1 %lnot17, true, !dbg !989
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !989
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !989
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !989
  %tobool23 = icmp ne i64 %expval22, 0, !dbg !989
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !991

if.then24:                                        ; preds = %if.end12
  %14 = load ptr, ptr @__pyx_f, align 8, !dbg !992, !tbaa !868
  store ptr %14, ptr %__pyx_filename, align 8, !dbg !992, !tbaa !868
  %15 = load ptr, ptr %__pyx_filename, align 8, !dbg !992, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !992, !tbaa !951
  %16 = load i32, ptr %__pyx_lineno, align 4, !dbg !992, !tbaa !951
  store i32 1568, ptr %__pyx_clineno, align 4, !dbg !992, !tbaa !951
  %17 = load i32, ptr %__pyx_clineno, align 4, !dbg !992, !tbaa !951
  br label %__pyx_L1_error, !dbg !995

if.end25:                                         ; preds = %if.end12
  %call26 = call ptr @PyUnicode_FromStringAndSize(ptr noundef @.str.12, i64 noundef 0), !dbg !996
  store ptr %call26, ptr @__pyx_empty_unicode, align 8, !dbg !997, !tbaa !868
  %18 = load ptr, ptr @__pyx_empty_unicode, align 8, !dbg !998, !tbaa !868
  %tobool27 = icmp ne ptr %18, null, !dbg !998
  %lnot28 = xor i1 %tobool27, true, !dbg !998
  %lnot30 = xor i1 %lnot28, true, !dbg !998
  %lnot32 = xor i1 %lnot30, true, !dbg !998
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !998
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !998
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !998
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !998
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1000

if.then37:                                        ; preds = %if.end25
  %19 = load ptr, ptr @__pyx_f, align 8, !dbg !1001, !tbaa !868
  store ptr %19, ptr %__pyx_filename, align 8, !dbg !1001, !tbaa !868
  %20 = load ptr, ptr %__pyx_filename, align 8, !dbg !1001, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1001, !tbaa !951
  %21 = load i32, ptr %__pyx_lineno, align 4, !dbg !1001, !tbaa !951
  store i32 1569, ptr %__pyx_clineno, align 4, !dbg !1001, !tbaa !951
  %22 = load i32, ptr %__pyx_clineno, align 4, !dbg !1001, !tbaa !951
  br label %__pyx_L1_error, !dbg !1004

if.end38:                                         ; preds = %if.end25
  %23 = load ptr, ptr %__pyx_pyinit_module.addr, align 8, !dbg !1005, !tbaa !868
  store ptr %23, ptr @__pyx_m, align 8, !dbg !1006, !tbaa !868
  %24 = load ptr, ptr @__pyx_m, align 8, !dbg !1007, !tbaa !868
  call void @Py_INCREF(ptr noundef %24), !dbg !1007
  %25 = load ptr, ptr @__pyx_m, align 8, !dbg !1008, !tbaa !868
  %call39 = call ptr @PyModule_GetDict(ptr noundef %25), !dbg !1009
  store ptr %call39, ptr @__pyx_d, align 8, !dbg !1010, !tbaa !868
  %26 = load ptr, ptr @__pyx_d, align 8, !dbg !1011, !tbaa !868
  %tobool40 = icmp ne ptr %26, null, !dbg !1011
  %lnot41 = xor i1 %tobool40, true, !dbg !1011
  %lnot43 = xor i1 %lnot41, true, !dbg !1011
  %lnot45 = xor i1 %lnot43, true, !dbg !1011
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !1011
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !1011
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !1011
  %tobool49 = icmp ne i64 %expval48, 0, !dbg !1011
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !1013

if.then50:                                        ; preds = %if.end38
  %27 = load ptr, ptr @__pyx_f, align 8, !dbg !1014, !tbaa !868
  store ptr %27, ptr %__pyx_filename, align 8, !dbg !1014, !tbaa !868
  %28 = load ptr, ptr %__pyx_filename, align 8, !dbg !1014, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1014, !tbaa !951
  %29 = load i32, ptr %__pyx_lineno, align 4, !dbg !1014, !tbaa !951
  store i32 1605, ptr %__pyx_clineno, align 4, !dbg !1014, !tbaa !951
  %30 = load i32, ptr %__pyx_clineno, align 4, !dbg !1014, !tbaa !951
  br label %__pyx_L1_error, !dbg !1017

if.end51:                                         ; preds = %if.end38
  %31 = load ptr, ptr @__pyx_d, align 8, !dbg !1018, !tbaa !868
  call void @Py_INCREF(ptr noundef %31), !dbg !1018
  %call52 = call ptr @PyImport_AddModule(ptr noundef @.str.13), !dbg !1019
  store ptr %call52, ptr @__pyx_b, align 8, !dbg !1020, !tbaa !868
  %32 = load ptr, ptr @__pyx_b, align 8, !dbg !1021, !tbaa !868
  %tobool53 = icmp ne ptr %32, null, !dbg !1021
  %lnot54 = xor i1 %tobool53, true, !dbg !1021
  %lnot56 = xor i1 %lnot54, true, !dbg !1021
  %lnot58 = xor i1 %lnot56, true, !dbg !1021
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !1021
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !1021
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !1021
  %tobool62 = icmp ne i64 %expval61, 0, !dbg !1021
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1023

if.then63:                                        ; preds = %if.end51
  %33 = load ptr, ptr @__pyx_f, align 8, !dbg !1024, !tbaa !868
  store ptr %33, ptr %__pyx_filename, align 8, !dbg !1024, !tbaa !868
  %34 = load ptr, ptr %__pyx_filename, align 8, !dbg !1024, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1024, !tbaa !951
  %35 = load i32, ptr %__pyx_lineno, align 4, !dbg !1024, !tbaa !951
  store i32 1607, ptr %__pyx_clineno, align 4, !dbg !1024, !tbaa !951
  %36 = load i32, ptr %__pyx_clineno, align 4, !dbg !1024, !tbaa !951
  br label %__pyx_L1_error, !dbg !1027

if.end64:                                         ; preds = %if.end51
  %37 = load ptr, ptr @__pyx_b, align 8, !dbg !1028, !tbaa !868
  call void @Py_INCREF(ptr noundef %37), !dbg !1028
  %call65 = call ptr @PyImport_AddModule(ptr noundef @.str.14), !dbg !1029
  store ptr %call65, ptr @__pyx_cython_runtime, align 8, !dbg !1030, !tbaa !868
  %38 = load ptr, ptr @__pyx_cython_runtime, align 8, !dbg !1031, !tbaa !868
  %tobool66 = icmp ne ptr %38, null, !dbg !1031
  %lnot67 = xor i1 %tobool66, true, !dbg !1031
  %lnot69 = xor i1 %lnot67, true, !dbg !1031
  %lnot71 = xor i1 %lnot69, true, !dbg !1031
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !1031
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !1031
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !1031
  %tobool75 = icmp ne i64 %expval74, 0, !dbg !1031
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1033

if.then76:                                        ; preds = %if.end64
  %39 = load ptr, ptr @__pyx_f, align 8, !dbg !1034, !tbaa !868
  store ptr %39, ptr %__pyx_filename, align 8, !dbg !1034, !tbaa !868
  %40 = load ptr, ptr %__pyx_filename, align 8, !dbg !1034, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1034, !tbaa !951
  %41 = load i32, ptr %__pyx_lineno, align 4, !dbg !1034, !tbaa !951
  store i32 1609, ptr %__pyx_clineno, align 4, !dbg !1034, !tbaa !951
  %42 = load i32, ptr %__pyx_clineno, align 4, !dbg !1034, !tbaa !951
  br label %__pyx_L1_error, !dbg !1037

if.end77:                                         ; preds = %if.end64
  %43 = load ptr, ptr @__pyx_cython_runtime, align 8, !dbg !1038, !tbaa !868
  call void @Py_INCREF(ptr noundef %43), !dbg !1038
  %44 = load ptr, ptr @__pyx_m, align 8, !dbg !1039, !tbaa !868
  %45 = load ptr, ptr @__pyx_b, align 8, !dbg !1041, !tbaa !868
  %call78 = call i32 @PyObject_SetAttrString(ptr noundef %44, ptr noundef @.str.15, ptr noundef %45), !dbg !1042
  %cmp79 = icmp slt i32 %call78, 0, !dbg !1043
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !1044

if.then81:                                        ; preds = %if.end77
  %46 = load ptr, ptr @__pyx_f, align 8, !dbg !1045, !tbaa !868
  store ptr %46, ptr %__pyx_filename, align 8, !dbg !1045, !tbaa !868
  %47 = load ptr, ptr %__pyx_filename, align 8, !dbg !1045, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1045, !tbaa !951
  %48 = load i32, ptr %__pyx_lineno, align 4, !dbg !1045, !tbaa !951
  store i32 1611, ptr %__pyx_clineno, align 4, !dbg !1045, !tbaa !951
  %49 = load i32, ptr %__pyx_clineno, align 4, !dbg !1045, !tbaa !951
  br label %__pyx_L1_error, !dbg !1048

if.end82:                                         ; preds = %if.end77
  %call83 = call i32 @__Pyx_InitGlobals(), !dbg !1049
  %cmp84 = icmp slt i32 %call83, 0, !dbg !1051
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !1052

if.then86:                                        ; preds = %if.end82
  %50 = load ptr, ptr @__pyx_f, align 8, !dbg !1053, !tbaa !868
  store ptr %50, ptr %__pyx_filename, align 8, !dbg !1053, !tbaa !868
  %51 = load ptr, ptr %__pyx_filename, align 8, !dbg !1053, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1053, !tbaa !951
  %52 = load i32, ptr %__pyx_lineno, align 4, !dbg !1053, !tbaa !951
  store i32 1613, ptr %__pyx_clineno, align 4, !dbg !1053, !tbaa !951
  %53 = load i32, ptr %__pyx_clineno, align 4, !dbg !1053, !tbaa !951
  br label %__pyx_L1_error, !dbg !1056

if.end87:                                         ; preds = %if.end82
  %54 = load i32, ptr @__pyx_module_is_main_pysam__libcsamtools, align 4, !dbg !1057, !tbaa !951
  %tobool88 = icmp ne i32 %54, 0, !dbg !1057
  br i1 %tobool88, label %if.then89, label %if.end95, !dbg !1059

if.then89:                                        ; preds = %if.end87
  %55 = load ptr, ptr @__pyx_m, align 8, !dbg !1060, !tbaa !868
  %56 = load ptr, ptr @__pyx_n_s_name, align 8, !dbg !1063, !tbaa !868
  %57 = load ptr, ptr @__pyx_n_s_main, align 8, !dbg !1064, !tbaa !868
  %call90 = call i32 @PyObject_SetAttr(ptr noundef %55, ptr noundef %56, ptr noundef %57), !dbg !1065
  %cmp91 = icmp slt i32 %call90, 0, !dbg !1066
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !1067

if.then93:                                        ; preds = %if.then89
  %58 = load ptr, ptr @__pyx_f, align 8, !dbg !1068, !tbaa !868
  store ptr %58, ptr %__pyx_filename, align 8, !dbg !1068, !tbaa !868
  %59 = load ptr, ptr %__pyx_filename, align 8, !dbg !1068, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1068, !tbaa !951
  %60 = load i32, ptr %__pyx_lineno, align 4, !dbg !1068, !tbaa !951
  store i32 1618, ptr %__pyx_clineno, align 4, !dbg !1068, !tbaa !951
  %61 = load i32, ptr %__pyx_clineno, align 4, !dbg !1068, !tbaa !951
  br label %__pyx_L1_error, !dbg !1071

if.end94:                                         ; preds = %if.then89
  br label %if.end95, !dbg !1072

if.end95:                                         ; preds = %if.end94, %if.end87
  call void @llvm.lifetime.start.p0(i64 8, ptr %modules) #8, !dbg !1073
  tail call void @llvm.dbg.declare(metadata ptr %modules, metadata !938, metadata !DIExpression()), !dbg !1074
  %call96 = call ptr @PyImport_GetModuleDict(), !dbg !1075
  store ptr %call96, ptr %modules, align 8, !dbg !1074, !tbaa !868
  %62 = load ptr, ptr %modules, align 8, !dbg !1076, !tbaa !868
  %tobool97 = icmp ne ptr %62, null, !dbg !1076
  %lnot98 = xor i1 %tobool97, true, !dbg !1076
  %lnot100 = xor i1 %lnot98, true, !dbg !1076
  %lnot102 = xor i1 %lnot100, true, !dbg !1076
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !1076
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !1076
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !1076
  %tobool106 = icmp ne i64 %expval105, 0, !dbg !1076
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !1078

if.then107:                                       ; preds = %if.end95
  %63 = load ptr, ptr @__pyx_f, align 8, !dbg !1079, !tbaa !868
  store ptr %63, ptr %__pyx_filename, align 8, !dbg !1079, !tbaa !868
  %64 = load ptr, ptr %__pyx_filename, align 8, !dbg !1079, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1079, !tbaa !951
  %65 = load i32, ptr %__pyx_lineno, align 4, !dbg !1079, !tbaa !951
  store i32 1622, ptr %__pyx_clineno, align 4, !dbg !1079, !tbaa !951
  %66 = load i32, ptr %__pyx_clineno, align 4, !dbg !1079, !tbaa !951
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1082

if.end108:                                        ; preds = %if.end95
  %67 = load ptr, ptr %modules, align 8, !dbg !1083, !tbaa !868
  %call109 = call ptr @PyDict_GetItemString(ptr noundef %67, ptr noundef @.str.16), !dbg !1085
  %tobool110 = icmp ne ptr %call109, null, !dbg !1085
  br i1 %tobool110, label %if.end124, label %if.then111, !dbg !1086

if.then111:                                       ; preds = %if.end108
  %68 = load ptr, ptr %modules, align 8, !dbg !1087, !tbaa !868
  %69 = load ptr, ptr @__pyx_m, align 8, !dbg !1087, !tbaa !868
  %call112 = call i32 @PyDict_SetItemString(ptr noundef %68, ptr noundef @.str.16, ptr noundef %69), !dbg !1087
  %cmp113 = icmp slt i32 %call112, 0, !dbg !1087
  %lnot115 = xor i1 %cmp113, true, !dbg !1087
  %lnot117 = xor i1 %lnot115, true, !dbg !1087
  %lnot.ext118 = zext i1 %lnot117 to i32, !dbg !1087
  %conv119 = sext i32 %lnot.ext118 to i64, !dbg !1087
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0), !dbg !1087
  %tobool121 = icmp ne i64 %expval120, 0, !dbg !1087
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !1090

if.then122:                                       ; preds = %if.then111
  %70 = load ptr, ptr @__pyx_f, align 8, !dbg !1091, !tbaa !868
  store ptr %70, ptr %__pyx_filename, align 8, !dbg !1091, !tbaa !868
  %71 = load ptr, ptr %__pyx_filename, align 8, !dbg !1091, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1091, !tbaa !951
  %72 = load i32, ptr %__pyx_lineno, align 4, !dbg !1091, !tbaa !951
  store i32 1624, ptr %__pyx_clineno, align 4, !dbg !1091, !tbaa !951
  %73 = load i32, ptr %__pyx_clineno, align 4, !dbg !1091, !tbaa !951
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1094

if.end123:                                        ; preds = %if.then111
  br label %if.end124, !dbg !1095

if.end124:                                        ; preds = %if.end123, %if.end108
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1096
  br label %cleanup, !dbg !1096

cleanup:                                          ; preds = %if.then122, %if.then107, %if.end124
  call void @llvm.lifetime.end.p0(i64 8, ptr %modules) #8, !dbg !1096
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup194 [
    i32 0, label %cleanup.cont
    i32 2, label %__pyx_L1_error
  ]

cleanup.cont:                                     ; preds = %cleanup
  %call125 = call i32 @__Pyx_InitCachedBuiltins(), !dbg !1097
  %cmp126 = icmp slt i32 %call125, 0, !dbg !1099
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !1100

if.then128:                                       ; preds = %cleanup.cont
  %74 = load ptr, ptr @__pyx_f, align 8, !dbg !1101, !tbaa !868
  store ptr %74, ptr %__pyx_filename, align 8, !dbg !1101, !tbaa !868
  %75 = load ptr, ptr %__pyx_filename, align 8, !dbg !1101, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1101, !tbaa !951
  %76 = load i32, ptr %__pyx_lineno, align 4, !dbg !1101, !tbaa !951
  store i32 1629, ptr %__pyx_clineno, align 4, !dbg !1101, !tbaa !951
  %77 = load i32, ptr %__pyx_clineno, align 4, !dbg !1101, !tbaa !951
  br label %__pyx_L1_error, !dbg !1104

if.end129:                                        ; preds = %cleanup.cont
  %call130 = call i32 @__Pyx_InitCachedConstants(), !dbg !1105
  %cmp131 = icmp slt i32 %call130, 0, !dbg !1107
  br i1 %cmp131, label %if.then133, label %if.end134, !dbg !1108

if.then133:                                       ; preds = %if.end129
  %78 = load ptr, ptr @__pyx_f, align 8, !dbg !1109, !tbaa !868
  store ptr %78, ptr %__pyx_filename, align 8, !dbg !1109, !tbaa !868
  %79 = load ptr, ptr %__pyx_filename, align 8, !dbg !1109, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1109, !tbaa !951
  %80 = load i32, ptr %__pyx_lineno, align 4, !dbg !1109, !tbaa !951
  store i32 1631, ptr %__pyx_clineno, align 4, !dbg !1109, !tbaa !951
  %81 = load i32, ptr %__pyx_clineno, align 4, !dbg !1109, !tbaa !951
  br label %__pyx_L1_error, !dbg !1112

if.end134:                                        ; preds = %if.end129
  %call135 = call i32 @__Pyx_modinit_global_init_code(), !dbg !1113
  %call136 = call i32 @__Pyx_modinit_variable_export_code(), !dbg !1114
  %call137 = call i32 @__Pyx_modinit_function_export_code(), !dbg !1115
  %call138 = call i32 @__Pyx_modinit_type_init_code(), !dbg !1116
  %call139 = call i32 @__Pyx_modinit_type_import_code(), !dbg !1117
  %call140 = call i32 @__Pyx_modinit_variable_import_code(), !dbg !1118
  %call141 = call i32 @__Pyx_modinit_function_import_code(), !dbg !1119
  %82 = load ptr, ptr @__pyx_n_s_pysam_libcsamtools, align 8, !dbg !1120, !tbaa !868
  %call142 = call ptr @PyCMethod_New(ptr noundef @__pyx_mdef_5pysam_12libcsamtools_1py_samtools, ptr noundef null, ptr noundef %82, ptr noundef null), !dbg !1120
  store ptr %call142, ptr %__pyx_t_1, align 8, !dbg !1121, !tbaa !868
  %83 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1122, !tbaa !868
  %tobool143 = icmp ne ptr %83, null, !dbg !1122
  %lnot144 = xor i1 %tobool143, true, !dbg !1122
  %lnot146 = xor i1 %lnot144, true, !dbg !1122
  %lnot148 = xor i1 %lnot146, true, !dbg !1122
  %lnot.ext149 = zext i1 %lnot148 to i32, !dbg !1122
  %conv150 = sext i32 %lnot.ext149 to i64, !dbg !1122
  %expval151 = call i64 @llvm.expect.i64(i64 %conv150, i64 0), !dbg !1122
  %tobool152 = icmp ne i64 %expval151, 0, !dbg !1122
  br i1 %tobool152, label %if.then153, label %if.end154, !dbg !1124

if.then153:                                       ; preds = %if.end134
  %84 = load ptr, ptr @__pyx_f, align 8, !dbg !1125, !tbaa !868
  store ptr %84, ptr %__pyx_filename, align 8, !dbg !1125, !tbaa !868
  %85 = load ptr, ptr %__pyx_filename, align 8, !dbg !1125, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1125, !tbaa !951
  %86 = load i32, ptr %__pyx_lineno, align 4, !dbg !1125, !tbaa !951
  store i32 1649, ptr %__pyx_clineno, align 4, !dbg !1125, !tbaa !951
  %87 = load i32, ptr %__pyx_clineno, align 4, !dbg !1125, !tbaa !951
  br label %__pyx_L1_error, !dbg !1128

if.end154:                                        ; preds = %if.end134
  %88 = load ptr, ptr @__pyx_d, align 8, !dbg !1129, !tbaa !868
  %89 = load ptr, ptr @__pyx_n_s_py_samtools, align 8, !dbg !1131, !tbaa !868
  %90 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1132, !tbaa !868
  %call155 = call i32 @PyDict_SetItem(ptr noundef %88, ptr noundef %89, ptr noundef %90), !dbg !1133
  %cmp156 = icmp slt i32 %call155, 0, !dbg !1134
  br i1 %cmp156, label %if.then158, label %if.end159, !dbg !1135

if.then158:                                       ; preds = %if.end154
  %91 = load ptr, ptr @__pyx_f, align 8, !dbg !1136, !tbaa !868
  store ptr %91, ptr %__pyx_filename, align 8, !dbg !1136, !tbaa !868
  %92 = load ptr, ptr %__pyx_filename, align 8, !dbg !1136, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1136, !tbaa !951
  %93 = load i32, ptr %__pyx_lineno, align 4, !dbg !1136, !tbaa !951
  store i32 1651, ptr %__pyx_clineno, align 4, !dbg !1136, !tbaa !951
  %94 = load i32, ptr %__pyx_clineno, align 4, !dbg !1136, !tbaa !951
  br label %__pyx_L1_error, !dbg !1139

if.end159:                                        ; preds = %if.end154
  %95 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1140, !tbaa !868
  call void @Py_DECREF(ptr noundef %95), !dbg !1140
  store ptr null, ptr %__pyx_t_1, align 8, !dbg !1141, !tbaa !868
  %call160 = call ptr @PyDict_New(), !dbg !1142
  store ptr %call160, ptr %__pyx_t_1, align 8, !dbg !1143, !tbaa !868
  %96 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1144, !tbaa !868
  %tobool161 = icmp ne ptr %96, null, !dbg !1144
  %lnot162 = xor i1 %tobool161, true, !dbg !1144
  %lnot164 = xor i1 %lnot162, true, !dbg !1144
  %lnot166 = xor i1 %lnot164, true, !dbg !1144
  %lnot.ext167 = zext i1 %lnot166 to i32, !dbg !1144
  %conv168 = sext i32 %lnot.ext167 to i64, !dbg !1144
  %expval169 = call i64 @llvm.expect.i64(i64 %conv168, i64 0), !dbg !1144
  %tobool170 = icmp ne i64 %expval169, 0, !dbg !1144
  br i1 %tobool170, label %if.then171, label %if.end172, !dbg !1146

if.then171:                                       ; preds = %if.end159
  %97 = load ptr, ptr @__pyx_f, align 8, !dbg !1147, !tbaa !868
  store ptr %97, ptr %__pyx_filename, align 8, !dbg !1147, !tbaa !868
  %98 = load ptr, ptr %__pyx_filename, align 8, !dbg !1147, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1147, !tbaa !951
  %99 = load i32, ptr %__pyx_lineno, align 4, !dbg !1147, !tbaa !951
  store i32 1653, ptr %__pyx_clineno, align 4, !dbg !1147, !tbaa !951
  %100 = load i32, ptr %__pyx_clineno, align 4, !dbg !1147, !tbaa !951
  br label %__pyx_L1_error, !dbg !1150

if.end172:                                        ; preds = %if.end159
  %101 = load ptr, ptr @__pyx_d, align 8, !dbg !1151, !tbaa !868
  %102 = load ptr, ptr @__pyx_n_s_test, align 8, !dbg !1153, !tbaa !868
  %103 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1154, !tbaa !868
  %call173 = call i32 @PyDict_SetItem(ptr noundef %101, ptr noundef %102, ptr noundef %103), !dbg !1155
  %cmp174 = icmp slt i32 %call173, 0, !dbg !1156
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !1157

if.then176:                                       ; preds = %if.end172
  %104 = load ptr, ptr @__pyx_f, align 8, !dbg !1158, !tbaa !868
  store ptr %104, ptr %__pyx_filename, align 8, !dbg !1158, !tbaa !868
  %105 = load ptr, ptr %__pyx_filename, align 8, !dbg !1158, !tbaa !868
  store i32 1, ptr %__pyx_lineno, align 4, !dbg !1158, !tbaa !951
  %106 = load i32, ptr %__pyx_lineno, align 4, !dbg !1158, !tbaa !951
  store i32 1655, ptr %__pyx_clineno, align 4, !dbg !1158, !tbaa !951
  %107 = load i32, ptr %__pyx_clineno, align 4, !dbg !1158, !tbaa !951
  br label %__pyx_L1_error, !dbg !1161

if.end177:                                        ; preds = %if.end172
  %108 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1162, !tbaa !868
  call void @Py_DECREF(ptr noundef %108), !dbg !1162
  store ptr null, ptr %__pyx_t_1, align 8, !dbg !1163, !tbaa !868
  br label %__pyx_L0, !dbg !1164

__pyx_L1_error:                                   ; preds = %cleanup, %if.then176, %if.then171, %if.then158, %if.then153, %if.then133, %if.then128, %if.then93, %if.then86, %if.then81, %if.then76, %if.then63, %if.then50, %if.then37, %if.then24, %if.then11, %if.then4
  tail call void @llvm.dbg.label(metadata !940), !dbg !1165
  %109 = load ptr, ptr %__pyx_t_1, align 8, !dbg !1166, !tbaa !868
  call void @Py_XDECREF(ptr noundef %109), !dbg !1166
  %110 = load ptr, ptr @__pyx_m, align 8, !dbg !1167, !tbaa !868
  %tobool178 = icmp ne ptr %110, null, !dbg !1167
  br i1 %tobool178, label %if.then179, label %if.else, !dbg !1168

if.then179:                                       ; preds = %__pyx_L1_error
  %111 = load ptr, ptr @__pyx_d, align 8, !dbg !1169, !tbaa !868
  %tobool180 = icmp ne ptr %111, null, !dbg !1169
  br i1 %tobool180, label %if.then181, label %if.end182, !dbg !1171

if.then181:                                       ; preds = %if.then179
  %112 = load i32, ptr %__pyx_clineno, align 4, !dbg !1172, !tbaa !951
  %113 = load i32, ptr %__pyx_lineno, align 4, !dbg !1174, !tbaa !951
  %114 = load ptr, ptr %__pyx_filename, align 8, !dbg !1175, !tbaa !868
  call void @__Pyx_AddTraceback(ptr noundef @.str.17, i32 noundef %112, i32 noundef %113, ptr noundef %114), !dbg !1176
  br label %if.end182, !dbg !1177

if.end182:                                        ; preds = %if.then181, %if.then179
  br label %do.body, !dbg !1178

do.body:                                          ; preds = %if.end182
  call void @llvm.lifetime.start.p0(i64 8, ptr %_py_tmp) #8, !dbg !1179
  tail call void @llvm.dbg.declare(metadata ptr %_py_tmp, metadata !941, metadata !DIExpression()), !dbg !1179
  %115 = load ptr, ptr @__pyx_m, align 8, !dbg !1179, !tbaa !868
  store ptr %115, ptr %_py_tmp, align 8, !dbg !1179, !tbaa !868
  %116 = load ptr, ptr %_py_tmp, align 8, !dbg !1180, !tbaa !868
  %cmp183 = icmp ne ptr %116, null, !dbg !1180
  br i1 %cmp183, label %if.then185, label %if.end186, !dbg !1179

if.then185:                                       ; preds = %do.body
  store ptr null, ptr @__pyx_m, align 8, !dbg !1182, !tbaa !868
  %117 = load ptr, ptr %_py_tmp, align 8, !dbg !1182, !tbaa !868
  call void @Py_DECREF(ptr noundef %117), !dbg !1182
  br label %if.end186, !dbg !1182

if.end186:                                        ; preds = %if.then185, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %_py_tmp) #8, !dbg !1178
  br label %do.cond, !dbg !1179

do.cond:                                          ; preds = %if.end186
  br label %do.end, !dbg !1179

do.end:                                           ; preds = %do.cond
  br label %if.end191, !dbg !1184

if.else:                                          ; preds = %__pyx_L1_error
  %call187 = call ptr @PyErr_Occurred(), !dbg !1185
  %tobool188 = icmp ne ptr %call187, null, !dbg !1185
  br i1 %tobool188, label %if.end190, label %if.then189, !dbg !1187

if.then189:                                       ; preds = %if.else
  %118 = load ptr, ptr @PyExc_ImportError, align 8, !dbg !1188, !tbaa !868
  call void @PyErr_SetString(ptr noundef %118, ptr noundef @.str.17), !dbg !1190
  br label %if.end190, !dbg !1191

if.end190:                                        ; preds = %if.then189, %if.else
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %do.end
  br label %__pyx_L0, !dbg !1167

__pyx_L0:                                         ; preds = %if.end191, %if.end177
  tail call void @llvm.dbg.label(metadata !945), !dbg !1192
  %119 = load ptr, ptr @__pyx_m, align 8, !dbg !1193, !tbaa !868
  %cmp192 = icmp ne ptr %119, null, !dbg !1194
  %120 = zext i1 %cmp192 to i64, !dbg !1195
  %cond = select i1 %cmp192, i32 0, i32 -1, !dbg !1195
  store i32 %cond, ptr %retval, align 4, !dbg !1196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !1196

cleanup194:                                       ; preds = %__pyx_L0, %cleanup, %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_clineno) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_filename) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 4, ptr %__pyx_lineno) #8, !dbg !1197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_t_1) #8, !dbg !1197
  %121 = load i32, ptr %retval, align 4, !dbg !1197
  ret i32 %121, !dbg !1197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_check_single_interpreter() #0 !dbg !487 {
entry:
  %retval = alloca i32, align 4
  %current_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_id) #8, !dbg !1198
  tail call void @llvm.dbg.declare(metadata ptr %current_id, metadata !491, metadata !DIExpression()), !dbg !1199
  %call = call ptr @PyThreadState_Get(), !dbg !1200
  %interp = getelementptr inbounds %struct._ts, ptr %call, i32 0, i32 2, !dbg !1201
  %0 = load ptr, ptr %interp, align 8, !dbg !1201, !tbaa !1202
  %call1 = call i64 @PyInterpreterState_GetID(ptr noundef %0), !dbg !1210
  store i64 %call1, ptr %current_id, align 8, !dbg !1199, !tbaa !1211
  %1 = load i64, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8, !dbg !1212, !tbaa !1211
  %cmp = icmp eq i64 %1, -1, !dbg !1214
  br i1 %cmp, label %if.then, label %if.else, !dbg !1215

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %current_id, align 8, !dbg !1216, !tbaa !1211
  store i64 %2, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8, !dbg !1218, !tbaa !1211
  %3 = load i64, ptr %current_id, align 8, !dbg !1219, !tbaa !1211
  %cmp2 = icmp eq i64 %3, -1, !dbg !1219
  %lnot = xor i1 %cmp2, true, !dbg !1219
  %lnot3 = xor i1 %lnot, true, !dbg !1219
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1219
  %conv = sext i32 %lnot.ext to i64, !dbg !1219
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1219
  %tobool = icmp ne i64 %expval, 0, !dbg !1220
  %4 = zext i1 %tobool to i64, !dbg !1220
  %cond = select i1 %tobool, i32 -1, i32 0, !dbg !1220
  store i32 %cond, ptr %retval, align 4, !dbg !1221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1221

if.else:                                          ; preds = %entry
  %5 = load i64, ptr @__Pyx_check_single_interpreter.main_interpreter_id, align 8, !dbg !1222, !tbaa !1211
  %6 = load i64, ptr %current_id, align 8, !dbg !1222, !tbaa !1211
  %cmp4 = icmp ne i64 %5, %6, !dbg !1222
  %lnot6 = xor i1 %cmp4, true, !dbg !1222
  %lnot8 = xor i1 %lnot6, true, !dbg !1222
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1222
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1222
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !1222
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1222
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !1224

if.then13:                                        ; preds = %if.else
  %7 = load ptr, ptr @PyExc_ImportError, align 8, !dbg !1225, !tbaa !868
  call void @PyErr_SetString(ptr noundef %7, ptr noundef @.str.10), !dbg !1227
  store i32 -1, ptr %retval, align 4, !dbg !1228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1228

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1229

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_id) #8, !dbg !1230
  %8 = load i32, ptr %retval, align 4, !dbg !1230
  ret i32 %8, !dbg !1230
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_INCREF(ptr noundef %op) #3 !dbg !1231 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1235, !tbaa !868
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0, !dbg !1236
  %1 = load i64, ptr %ob_refcnt, align 8, !dbg !1237, !tbaa !1238
  %inc = add i64 %1, 1, !dbg !1237
  store i64 %inc, ptr %ob_refcnt, align 8, !dbg !1237, !tbaa !1238
  ret void, !dbg !1240
}

declare !dbg !1241 ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

declare !dbg !1244 ptr @PyModule_NewObject(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_DECREF(ptr noundef %op) #3 !dbg !1245 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1249, !tbaa !868
  %ob_refcnt = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 0, !dbg !1251
  %1 = load i64, ptr %ob_refcnt, align 8, !dbg !1252, !tbaa !1238
  %dec = add i64 %1, -1, !dbg !1252
  store i64 %dec, ptr %ob_refcnt, align 8, !dbg !1252, !tbaa !1238
  %cmp = icmp eq i64 %dec, 0, !dbg !1253
  br i1 %cmp, label %if.then, label %if.end, !dbg !1254

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1255, !tbaa !868
  call void @_Py_Dealloc(ptr noundef %2), !dbg !1257
  br label %if.end, !dbg !1258

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1259
}

declare !dbg !1260 ptr @PyModule_GetDict(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_copy_spec_to_module(ptr noundef %spec, ptr noundef %moddict, ptr noundef %from_name, ptr noundef %to_name, i32 noundef %allow_none) #0 !dbg !1261 {
entry:
  %spec.addr = alloca ptr, align 8
  %moddict.addr = alloca ptr, align 8
  %from_name.addr = alloca ptr, align 8
  %to_name.addr = alloca ptr, align 8
  %allow_none.addr = alloca i32, align 4
  %value = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %spec, ptr %spec.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %spec.addr, metadata !1265, metadata !DIExpression()), !dbg !1272
  store ptr %moddict, ptr %moddict.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %moddict.addr, metadata !1266, metadata !DIExpression()), !dbg !1273
  store ptr %from_name, ptr %from_name.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %from_name.addr, metadata !1267, metadata !DIExpression()), !dbg !1274
  store ptr %to_name, ptr %to_name.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %to_name.addr, metadata !1268, metadata !DIExpression()), !dbg !1275
  store i32 %allow_none, ptr %allow_none.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %allow_none.addr, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1277
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1270, metadata !DIExpression()), !dbg !1278
  %0 = load ptr, ptr %spec.addr, align 8, !dbg !1279, !tbaa !868
  %1 = load ptr, ptr %from_name.addr, align 8, !dbg !1280, !tbaa !868
  %call = call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef %1), !dbg !1281
  store ptr %call, ptr %value, align 8, !dbg !1278, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !1282
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1271, metadata !DIExpression()), !dbg !1283
  store i32 0, ptr %result, align 4, !dbg !1283, !tbaa !951
  %2 = load ptr, ptr %value, align 8, !dbg !1284, !tbaa !868
  %tobool = icmp ne ptr %2, null, !dbg !1284
  %lnot = xor i1 %tobool, true, !dbg !1284
  %lnot1 = xor i1 %lnot, true, !dbg !1284
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1284
  %conv = sext i32 %lnot.ext to i64, !dbg !1284
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1284
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1284
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1286

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %allow_none.addr, align 4, !dbg !1287, !tbaa !951
  %tobool3 = icmp ne i32 %3, 0, !dbg !1287
  br i1 %tobool3, label %if.then5, label %lor.lhs.false, !dbg !1290

lor.lhs.false:                                    ; preds = %if.then
  %4 = load ptr, ptr %value, align 8, !dbg !1291, !tbaa !868
  %cmp = icmp ne ptr %4, @_Py_NoneStruct, !dbg !1292
  br i1 %cmp, label %if.then5, label %if.end, !dbg !1293

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %5 = load ptr, ptr %moddict.addr, align 8, !dbg !1294, !tbaa !868
  %6 = load ptr, ptr %to_name.addr, align 8, !dbg !1296, !tbaa !868
  %7 = load ptr, ptr %value, align 8, !dbg !1297, !tbaa !868
  %call6 = call i32 @PyDict_SetItemString(ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !1298
  store i32 %call6, ptr %result, align 4, !dbg !1299, !tbaa !951
  br label %if.end, !dbg !1300

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  %8 = load ptr, ptr %value, align 8, !dbg !1301, !tbaa !868
  call void @Py_DECREF(ptr noundef %8), !dbg !1301
  br label %if.end12, !dbg !1302

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr @PyExc_AttributeError, align 8, !dbg !1303, !tbaa !868
  %call7 = call i32 @PyErr_ExceptionMatches(ptr noundef %9), !dbg !1305
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1305
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !1306

if.then9:                                         ; preds = %if.else
  call void @PyErr_Clear(), !dbg !1307
  br label %if.end11, !dbg !1309

if.else10:                                        ; preds = %if.else
  store i32 -1, ptr %result, align 4, !dbg !1310, !tbaa !951
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %10 = load i32, ptr %result, align 4, !dbg !1312, !tbaa !951
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !1313
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !1313
  ret i32 %10, !dbg !1314
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Py_XDECREF(ptr noundef %op) #3 !dbg !1315 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1319, !tbaa !868
  %cmp = icmp ne ptr %0, null, !dbg !1321
  br i1 %cmp, label %if.then, label %if.end, !dbg !1322

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !1323, !tbaa !868
  call void @Py_DECREF(ptr noundef %1), !dbg !1323
  br label %if.end, !dbg !1325

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1326
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1327 i64 @PyInterpreterState_GetID(ptr noundef) #1

declare !dbg !1331 ptr @PyThreadState_Get() #1

declare !dbg !1334 void @PyErr_SetString(ptr noundef, ptr noundef) #1

declare !dbg !1338 void @_Py_Dealloc(ptr noundef) #1

declare !dbg !1339 i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1343 i32 @PyErr_ExceptionMatches(ptr noundef) #1

declare !dbg !1344 void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_check_binary_version() #0 !dbg !1347 {
entry:
  %retval = alloca i32, align 4
  %ctversion = alloca [5 x i8], align 1
  %same = alloca i32, align 4
  %i = alloca i32, align 4
  %found_dot = alloca i32, align 4
  %rt_from_call = alloca ptr, align 8
  %rtversion = alloca [5 x i8], align 1
  %message = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr %ctversion) #8, !dbg !1361
  tail call void @llvm.dbg.declare(metadata ptr %ctversion, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.lifetime.start.p0(i64 4, ptr %same) #8, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %same, metadata !1350, metadata !DIExpression()), !dbg !1364
  store i32 1, ptr %same, align 4, !dbg !1364, !tbaa !951
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1351, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_dot) #8, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %found_dot, metadata !1352, metadata !DIExpression()), !dbg !1366
  call void @llvm.lifetime.start.p0(i64 8, ptr %rt_from_call) #8, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %rt_from_call, metadata !1353, metadata !DIExpression()), !dbg !1368
  %call = call ptr @Py_GetVersion(), !dbg !1369
  store ptr %call, ptr %rt_from_call, align 8, !dbg !1368, !tbaa !868
  %arraydecay = getelementptr inbounds [5 x i8], ptr %ctversion, i64 0, i64 0, !dbg !1370
  %call1 = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef %arraydecay, i64 noundef 5, ptr noundef @.str.18, i32 noundef 3, i32 noundef 11), !dbg !1371
  store i32 0, ptr %found_dot, align 4, !dbg !1372, !tbaa !951
  store i32 0, ptr %i, align 4, !dbg !1373, !tbaa !951
  br label %for.cond, !dbg !1375

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1376, !tbaa !951
  %cmp = icmp slt i32 %0, 4, !dbg !1378
  br i1 %cmp, label %for.body, label %for.end, !dbg !1379

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !1380, !tbaa !951
  %idxprom = sext i32 %1 to i64, !dbg !1383
  %arrayidx = getelementptr [5 x i8], ptr %ctversion, i64 0, i64 %idxprom, !dbg !1383
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1383, !tbaa !1384
  %tobool = icmp ne i8 %2, 0, !dbg !1383
  br i1 %tobool, label %if.end, label %if.then, !dbg !1385

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %rt_from_call, align 8, !dbg !1386, !tbaa !868
  %4 = load i32, ptr %i, align 4, !dbg !1388, !tbaa !951
  %idxprom2 = sext i32 %4 to i64, !dbg !1386
  %arrayidx3 = getelementptr i8, ptr %3, i64 %idxprom2, !dbg !1386
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !1386, !tbaa !1384
  %conv = sext i8 %5 to i32, !dbg !1386
  %cmp4 = icmp slt i32 %conv, 48, !dbg !1389
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !1390

lor.rhs:                                          ; preds = %if.then
  %6 = load ptr, ptr %rt_from_call, align 8, !dbg !1391, !tbaa !868
  %7 = load i32, ptr %i, align 4, !dbg !1392, !tbaa !951
  %idxprom6 = sext i32 %7 to i64, !dbg !1391
  %arrayidx7 = getelementptr i8, ptr %6, i64 %idxprom6, !dbg !1391
  %8 = load i8, ptr %arrayidx7, align 1, !dbg !1391, !tbaa !1384
  %conv8 = sext i8 %8 to i32, !dbg !1391
  %cmp9 = icmp sgt i32 %conv8, 57, !dbg !1393
  br label %lor.end, !dbg !1390

lor.end:                                          ; preds = %lor.rhs, %if.then
  %9 = phi i1 [ true, %if.then ], [ %cmp9, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32, !dbg !1390
  store i32 %lor.ext, ptr %same, align 4, !dbg !1394, !tbaa !951
  br label %for.end, !dbg !1395

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %rt_from_call, align 8, !dbg !1396, !tbaa !868
  %11 = load i32, ptr %i, align 4, !dbg !1398, !tbaa !951
  %idxprom11 = sext i32 %11 to i64, !dbg !1396
  %arrayidx12 = getelementptr i8, ptr %10, i64 %idxprom11, !dbg !1396
  %12 = load i8, ptr %arrayidx12, align 1, !dbg !1396, !tbaa !1384
  %conv13 = sext i8 %12 to i32, !dbg !1396
  %13 = load i32, ptr %i, align 4, !dbg !1399, !tbaa !951
  %idxprom14 = sext i32 %13 to i64, !dbg !1400
  %arrayidx15 = getelementptr [5 x i8], ptr %ctversion, i64 0, i64 %idxprom14, !dbg !1400
  %14 = load i8, ptr %arrayidx15, align 1, !dbg !1400, !tbaa !1384
  %conv16 = sext i8 %14 to i32, !dbg !1400
  %cmp17 = icmp ne i32 %conv13, %conv16, !dbg !1401
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1402

if.then19:                                        ; preds = %if.end
  store i32 0, ptr %same, align 4, !dbg !1403, !tbaa !951
  br label %for.end, !dbg !1405

if.end20:                                         ; preds = %if.end
  br label %for.inc, !dbg !1406

for.inc:                                          ; preds = %if.end20
  %15 = load i32, ptr %i, align 4, !dbg !1407, !tbaa !951
  %inc = add i32 %15, 1, !dbg !1407
  store i32 %inc, ptr %i, align 4, !dbg !1407, !tbaa !951
  br label %for.cond, !dbg !1408, !llvm.loop !1409

for.end:                                          ; preds = %if.then19, %lor.end, %for.cond
  %16 = load i32, ptr %same, align 4, !dbg !1412, !tbaa !951
  %tobool21 = icmp ne i32 %16, 0, !dbg !1412
  br i1 %tobool21, label %if.end62, label %if.then22, !dbg !1413

if.then22:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 5, ptr %rtversion) #8, !dbg !1414
  tail call void @llvm.dbg.declare(metadata ptr %rtversion, metadata !1354, metadata !DIExpression()), !dbg !1415
  call void @llvm.memset.p0.i64(ptr align 1 %rtversion, i8 0, i64 5, i1 false), !dbg !1415
  call void @llvm.lifetime.start.p0(i64 200, ptr %message) #8, !dbg !1416
  tail call void @llvm.dbg.declare(metadata ptr %message, metadata !1357, metadata !DIExpression()), !dbg !1417
  store i32 0, ptr %i, align 4, !dbg !1418, !tbaa !951
  br label %for.cond23, !dbg !1420

for.cond23:                                       ; preds = %for.inc53, %if.then22
  %17 = load i32, ptr %i, align 4, !dbg !1421, !tbaa !951
  %cmp24 = icmp slt i32 %17, 4, !dbg !1423
  br i1 %cmp24, label %for.body26, label %for.end55, !dbg !1424

for.body26:                                       ; preds = %for.cond23
  %18 = load ptr, ptr %rt_from_call, align 8, !dbg !1425, !tbaa !868
  %19 = load i32, ptr %i, align 4, !dbg !1428, !tbaa !951
  %idxprom27 = sext i32 %19 to i64, !dbg !1425
  %arrayidx28 = getelementptr i8, ptr %18, i64 %idxprom27, !dbg !1425
  %20 = load i8, ptr %arrayidx28, align 1, !dbg !1425, !tbaa !1384
  %conv29 = sext i8 %20 to i32, !dbg !1425
  %cmp30 = icmp eq i32 %conv29, 46, !dbg !1429
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !1430

if.then32:                                        ; preds = %for.body26
  %21 = load i32, ptr %found_dot, align 4, !dbg !1431, !tbaa !951
  %tobool33 = icmp ne i32 %21, 0, !dbg !1431
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1434

if.then34:                                        ; preds = %if.then32
  br label %for.end55, !dbg !1435

if.end35:                                         ; preds = %if.then32
  store i32 1, ptr %found_dot, align 4, !dbg !1436, !tbaa !951
  br label %if.end48, !dbg !1437

if.else:                                          ; preds = %for.body26
  %22 = load ptr, ptr %rt_from_call, align 8, !dbg !1438, !tbaa !868
  %23 = load i32, ptr %i, align 4, !dbg !1440, !tbaa !951
  %idxprom36 = sext i32 %23 to i64, !dbg !1438
  %arrayidx37 = getelementptr i8, ptr %22, i64 %idxprom36, !dbg !1438
  %24 = load i8, ptr %arrayidx37, align 1, !dbg !1438, !tbaa !1384
  %conv38 = sext i8 %24 to i32, !dbg !1438
  %cmp39 = icmp slt i32 %conv38, 48, !dbg !1441
  br i1 %cmp39, label %if.then46, label %lor.lhs.false, !dbg !1442

lor.lhs.false:                                    ; preds = %if.else
  %25 = load ptr, ptr %rt_from_call, align 8, !dbg !1443, !tbaa !868
  %26 = load i32, ptr %i, align 4, !dbg !1444, !tbaa !951
  %idxprom41 = sext i32 %26 to i64, !dbg !1443
  %arrayidx42 = getelementptr i8, ptr %25, i64 %idxprom41, !dbg !1443
  %27 = load i8, ptr %arrayidx42, align 1, !dbg !1443, !tbaa !1384
  %conv43 = sext i8 %27 to i32, !dbg !1443
  %cmp44 = icmp sgt i32 %conv43, 57, !dbg !1445
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1446

if.then46:                                        ; preds = %lor.lhs.false, %if.else
  br label %for.end55, !dbg !1447

if.end47:                                         ; preds = %lor.lhs.false
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end35
  %28 = load ptr, ptr %rt_from_call, align 8, !dbg !1449, !tbaa !868
  %29 = load i32, ptr %i, align 4, !dbg !1450, !tbaa !951
  %idxprom49 = sext i32 %29 to i64, !dbg !1449
  %arrayidx50 = getelementptr i8, ptr %28, i64 %idxprom49, !dbg !1449
  %30 = load i8, ptr %arrayidx50, align 1, !dbg !1449, !tbaa !1384
  %31 = load i32, ptr %i, align 4, !dbg !1451, !tbaa !951
  %idxprom51 = sext i32 %31 to i64, !dbg !1452
  %arrayidx52 = getelementptr [5 x i8], ptr %rtversion, i64 0, i64 %idxprom51, !dbg !1452
  store i8 %30, ptr %arrayidx52, align 1, !dbg !1453, !tbaa !1384
  br label %for.inc53, !dbg !1454

for.inc53:                                        ; preds = %if.end48
  %32 = load i32, ptr %i, align 4, !dbg !1455, !tbaa !951
  %inc54 = add i32 %32, 1, !dbg !1455
  store i32 %inc54, ptr %i, align 4, !dbg !1455, !tbaa !951
  br label %for.cond23, !dbg !1456, !llvm.loop !1457

for.end55:                                        ; preds = %if.then46, %if.then34, %for.cond23
  %arraydecay56 = getelementptr inbounds [200 x i8], ptr %message, i64 0, i64 0, !dbg !1459
  %arraydecay57 = getelementptr inbounds [5 x i8], ptr %ctversion, i64 0, i64 0, !dbg !1460
  %arraydecay58 = getelementptr inbounds [5 x i8], ptr %rtversion, i64 0, i64 0, !dbg !1461
  %call59 = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef %arraydecay56, i64 noundef 200, ptr noundef @.str.19, ptr noundef %arraydecay57, ptr noundef @.str.16, ptr noundef %arraydecay58), !dbg !1462
  %arraydecay60 = getelementptr inbounds [200 x i8], ptr %message, i64 0, i64 0, !dbg !1463
  %call61 = call i32 @PyErr_WarnEx(ptr noundef null, ptr noundef %arraydecay60, i64 noundef 1), !dbg !1464
  store i32 %call61, ptr %retval, align 4, !dbg !1465
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 200, ptr %message) #8, !dbg !1466
  call void @llvm.lifetime.end.p0(i64 5, ptr %rtversion) #8, !dbg !1466
  br label %cleanup

if.end62:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !1467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1467

cleanup:                                          ; preds = %if.end62, %for.end55
  call void @llvm.lifetime.end.p0(i64 8, ptr %rt_from_call) #8, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_dot) #8, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr %same) #8, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 5, ptr %ctversion) #8, !dbg !1468
  %33 = load i32, ptr %retval, align 4, !dbg !1468
  ret i32 %33, !dbg !1468
}

declare !dbg !1469 ptr @PyTuple_New(i64 noundef) #1

declare !dbg !1473 ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) #1

declare !dbg !1477 ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) #1

declare !dbg !1479 ptr @PyImport_AddModule(ptr noundef) #1

declare !dbg !1483 i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitGlobals() #0 !dbg !1484 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @__Pyx_InitStrings(ptr noundef @__pyx_string_tab), !dbg !1487
  %cmp = icmp slt i32 %call, 0, !dbg !1489
  br i1 %cmp, label %if.then, label %if.end, !dbg !1490

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__pyx_f, align 8, !dbg !1491, !tbaa !868
  store ptr %0, ptr @__pyx_filename, align 8, !dbg !1491, !tbaa !868
  %1 = load ptr, ptr @__pyx_filename, align 8, !dbg !1491, !tbaa !868
  store i32 1, ptr @__pyx_lineno, align 4, !dbg !1491, !tbaa !951
  %2 = load i32, ptr @__pyx_lineno, align 4, !dbg !1491, !tbaa !951
  store i32 1375, ptr @__pyx_clineno, align 4, !dbg !1491, !tbaa !951
  %3 = load i32, ptr @__pyx_clineno, align 4, !dbg !1491, !tbaa !951
  br label %__pyx_L1_error, !dbg !1494

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

__pyx_L1_error:                                   ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !1486), !dbg !1496
  store i32 -1, ptr %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

return:                                           ; preds = %__pyx_L1_error, %if.end
  %4 = load i32, ptr %retval, align 4, !dbg !1498
  ret i32 %4, !dbg !1498
}

declare !dbg !1499 i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1500 ptr @PyImport_GetModuleDict() #1

declare !dbg !1501 ptr @PyDict_GetItemString(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitCachedBuiltins() #0 !dbg !1502 {
entry:
  ret i32 0, !dbg !1503
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitCachedConstants() #0 !dbg !1504 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @__pyx_empty_bytes, align 8, !dbg !1507, !tbaa !868
  %1 = load ptr, ptr @__pyx_empty_tuple, align 8, !dbg !1508, !tbaa !868
  %2 = load ptr, ptr @__pyx_empty_tuple, align 8, !dbg !1509, !tbaa !868
  %3 = load ptr, ptr @__pyx_empty_tuple, align 8, !dbg !1510, !tbaa !868
  %4 = load ptr, ptr @__pyx_empty_tuple, align 8, !dbg !1511, !tbaa !868
  %5 = load ptr, ptr @__pyx_empty_tuple, align 8, !dbg !1512, !tbaa !868
  %6 = load ptr, ptr @__pyx_kp_s_pysam_libcsamtools_pyx, align 8, !dbg !1513, !tbaa !868
  %7 = load ptr, ptr @__pyx_n_s_py_samtools, align 8, !dbg !1514, !tbaa !868
  %8 = load ptr, ptr @__pyx_empty_bytes, align 8, !dbg !1515, !tbaa !868
  %call = call ptr @__Pyx_PyCode_New(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef 1, ptr noundef %8), !dbg !1516
  store ptr %call, ptr @__pyx_codeobj_, align 8, !dbg !1517, !tbaa !868
  %9 = load ptr, ptr @__pyx_codeobj_, align 8, !dbg !1518, !tbaa !868
  %tobool = icmp ne ptr %9, null, !dbg !1518
  %lnot = xor i1 %tobool, true, !dbg !1518
  %lnot1 = xor i1 %lnot, true, !dbg !1518
  %lnot2 = xor i1 %lnot1, true, !dbg !1518
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1518
  %conv = sext i32 %lnot.ext to i64, !dbg !1518
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1518
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1518
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1520

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr @__pyx_f, align 8, !dbg !1521, !tbaa !868
  store ptr %10, ptr @__pyx_filename, align 8, !dbg !1521, !tbaa !868
  %11 = load ptr, ptr @__pyx_filename, align 8, !dbg !1521, !tbaa !868
  store i32 1, ptr @__pyx_lineno, align 4, !dbg !1521, !tbaa !951
  %12 = load i32, ptr @__pyx_lineno, align 4, !dbg !1521, !tbaa !951
  store i32 1366, ptr @__pyx_clineno, align 4, !dbg !1521, !tbaa !951
  %13 = load i32, ptr @__pyx_clineno, align 4, !dbg !1521, !tbaa !951
  br label %__pyx_L1_error, !dbg !1524

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1525
  br label %return, !dbg !1525

__pyx_L1_error:                                   ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !1506), !dbg !1526
  store i32 -1, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

return:                                           ; preds = %__pyx_L1_error, %if.end
  %14 = load i32, ptr %retval, align 4, !dbg !1528
  ret i32 %14, !dbg !1528
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_global_init_code() #0 !dbg !1529 {
entry:
  ret i32 0, !dbg !1530
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_variable_export_code() #0 !dbg !1531 {
entry:
  ret i32 0, !dbg !1532
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_function_export_code() #0 !dbg !1533 {
entry:
  ret i32 0, !dbg !1534
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_type_init_code() #0 !dbg !1535 {
entry:
  ret i32 0, !dbg !1536
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_type_import_code() #0 !dbg !1537 {
entry:
  ret i32 0, !dbg !1538
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_variable_import_code() #0 !dbg !1539 {
entry:
  ret i32 0, !dbg !1540
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_modinit_function_import_code() #0 !dbg !1541 {
entry:
  ret i32 0, !dbg !1542
}

declare !dbg !1543 ptr @PyCMethod_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1546 i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1547 ptr @PyDict_New() #1

; Function Attrs: nounwind uwtable
define internal void @__Pyx_AddTraceback(ptr noundef %funcname, i32 noundef %c_line, i32 noundef %py_line, ptr noundef %filename) #0 !dbg !1548 {
entry:
  %funcname.addr = alloca ptr, align 8
  %c_line.addr = alloca i32, align 4
  %py_line.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %py_code = alloca ptr, align 8
  %py_frame = alloca ptr, align 8
  %tstate = alloca ptr, align 8
  %ptype = alloca ptr, align 8
  %pvalue = alloca ptr, align 8
  %ptraceback = alloca ptr, align 8
  store ptr %funcname, ptr %funcname.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %funcname.addr, metadata !1552, metadata !DIExpression()), !dbg !1563
  store i32 %c_line, ptr %c_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %c_line.addr, metadata !1553, metadata !DIExpression()), !dbg !1564
  store i32 %py_line, ptr %py_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %py_line.addr, metadata !1554, metadata !DIExpression()), !dbg !1565
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1555, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_code) #8, !dbg !1567
  tail call void @llvm.dbg.declare(metadata ptr %py_code, metadata !1556, metadata !DIExpression()), !dbg !1568
  store ptr null, ptr %py_code, align 8, !dbg !1568, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_frame) #8, !dbg !1569
  tail call void @llvm.dbg.declare(metadata ptr %py_frame, metadata !1557, metadata !DIExpression()), !dbg !1570
  store ptr null, ptr %py_frame, align 8, !dbg !1570, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %tstate) #8, !dbg !1571
  tail call void @llvm.dbg.declare(metadata ptr %tstate, metadata !1558, metadata !DIExpression()), !dbg !1572
  %call = call ptr @PyThreadState_Get(), !dbg !1573
  store ptr %call, ptr %tstate, align 8, !dbg !1572, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptype) #8, !dbg !1574
  tail call void @llvm.dbg.declare(metadata ptr %ptype, metadata !1559, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 8, ptr %pvalue) #8, !dbg !1574
  tail call void @llvm.dbg.declare(metadata ptr %pvalue, metadata !1560, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptraceback) #8, !dbg !1574
  tail call void @llvm.dbg.declare(metadata ptr %ptraceback, metadata !1561, metadata !DIExpression()), !dbg !1577
  %0 = load i32, ptr %c_line.addr, align 4, !dbg !1578, !tbaa !951
  %tobool = icmp ne i32 %0, 0, !dbg !1578
  br i1 %tobool, label %if.then, label %if.end, !dbg !1580

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tstate, align 8, !dbg !1581, !tbaa !868
  %2 = load i32, ptr %c_line.addr, align 4, !dbg !1583, !tbaa !951
  %call1 = call i32 @__Pyx_CLineForTraceback(ptr noundef %1, i32 noundef %2), !dbg !1584
  store i32 %call1, ptr %c_line.addr, align 4, !dbg !1585, !tbaa !951
  br label %if.end, !dbg !1586

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %c_line.addr, align 4, !dbg !1587, !tbaa !951
  %tobool2 = icmp ne i32 %3, 0, !dbg !1587
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1587

cond.true:                                        ; preds = %if.end
  %4 = load i32, ptr %c_line.addr, align 4, !dbg !1588, !tbaa !951
  %sub = sub i32 0, %4, !dbg !1589
  br label %cond.end, !dbg !1587

cond.false:                                       ; preds = %if.end
  %5 = load i32, ptr %py_line.addr, align 4, !dbg !1590, !tbaa !951
  br label %cond.end, !dbg !1587

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %5, %cond.false ], !dbg !1587
  %call3 = call ptr @__pyx_find_code_object(i32 noundef %cond), !dbg !1591
  store ptr %call3, ptr %py_code, align 8, !dbg !1592, !tbaa !868
  %6 = load ptr, ptr %py_code, align 8, !dbg !1593, !tbaa !868
  %tobool4 = icmp ne ptr %6, null, !dbg !1593
  br i1 %tobool4, label %if.end16, label %if.then5, !dbg !1595

if.then5:                                         ; preds = %cond.end
  call void @PyErr_Fetch(ptr noundef %ptype, ptr noundef %pvalue, ptr noundef %ptraceback), !dbg !1596
  %7 = load ptr, ptr %funcname.addr, align 8, !dbg !1598, !tbaa !868
  %8 = load i32, ptr %c_line.addr, align 4, !dbg !1599, !tbaa !951
  %9 = load i32, ptr %py_line.addr, align 4, !dbg !1600, !tbaa !951
  %10 = load ptr, ptr %filename.addr, align 8, !dbg !1601, !tbaa !868
  %call6 = call ptr @__Pyx_CreateCodeObjectForTraceback(ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10), !dbg !1602
  store ptr %call6, ptr %py_code, align 8, !dbg !1603, !tbaa !868
  %11 = load ptr, ptr %py_code, align 8, !dbg !1604, !tbaa !868
  %tobool7 = icmp ne ptr %11, null, !dbg !1604
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1606

if.then8:                                         ; preds = %if.then5
  %12 = load ptr, ptr %ptype, align 8, !dbg !1607, !tbaa !868
  call void @Py_XDECREF(ptr noundef %12), !dbg !1607
  %13 = load ptr, ptr %pvalue, align 8, !dbg !1609, !tbaa !868
  call void @Py_XDECREF(ptr noundef %13), !dbg !1609
  %14 = load ptr, ptr %ptraceback, align 8, !dbg !1610, !tbaa !868
  call void @Py_XDECREF(ptr noundef %14), !dbg !1610
  br label %bad, !dbg !1611

if.end9:                                          ; preds = %if.then5
  %15 = load ptr, ptr %ptype, align 8, !dbg !1612, !tbaa !868
  %16 = load ptr, ptr %pvalue, align 8, !dbg !1612, !tbaa !868
  %17 = load ptr, ptr %ptraceback, align 8, !dbg !1612, !tbaa !868
  call void @PyErr_Restore(ptr noundef %15, ptr noundef %16, ptr noundef %17), !dbg !1612
  %18 = load i32, ptr %c_line.addr, align 4, !dbg !1613, !tbaa !951
  %tobool10 = icmp ne i32 %18, 0, !dbg !1613
  br i1 %tobool10, label %cond.true11, label %cond.false13, !dbg !1613

cond.true11:                                      ; preds = %if.end9
  %19 = load i32, ptr %c_line.addr, align 4, !dbg !1614, !tbaa !951
  %sub12 = sub i32 0, %19, !dbg !1615
  br label %cond.end14, !dbg !1613

cond.false13:                                     ; preds = %if.end9
  %20 = load i32, ptr %py_line.addr, align 4, !dbg !1616, !tbaa !951
  br label %cond.end14, !dbg !1613

cond.end14:                                       ; preds = %cond.false13, %cond.true11
  %cond15 = phi i32 [ %sub12, %cond.true11 ], [ %20, %cond.false13 ], !dbg !1613
  %21 = load ptr, ptr %py_code, align 8, !dbg !1617, !tbaa !868
  call void @__pyx_insert_code_object(i32 noundef %cond15, ptr noundef %21), !dbg !1618
  br label %if.end16, !dbg !1619

if.end16:                                         ; preds = %cond.end14, %cond.end
  %22 = load ptr, ptr %tstate, align 8, !dbg !1620, !tbaa !868
  %23 = load ptr, ptr %py_code, align 8, !dbg !1621, !tbaa !868
  %24 = load ptr, ptr @__pyx_d, align 8, !dbg !1622, !tbaa !868
  %call17 = call ptr @PyFrame_New(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef null), !dbg !1623
  store ptr %call17, ptr %py_frame, align 8, !dbg !1624, !tbaa !868
  %25 = load ptr, ptr %py_frame, align 8, !dbg !1625, !tbaa !868
  %tobool18 = icmp ne ptr %25, null, !dbg !1625
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1627

if.then19:                                        ; preds = %if.end16
  br label %bad, !dbg !1628

if.end20:                                         ; preds = %if.end16
  %26 = load i32, ptr %py_line.addr, align 4, !dbg !1629, !tbaa !951
  %27 = load ptr, ptr %py_frame, align 8, !dbg !1629, !tbaa !868
  %f_lineno = getelementptr inbounds %struct._frame, ptr %27, i32 0, i32 4, !dbg !1629
  store i32 %26, ptr %f_lineno, align 8, !dbg !1629, !tbaa !1630
  %28 = load ptr, ptr %py_frame, align 8, !dbg !1632, !tbaa !868
  %call21 = call i32 @PyTraceBack_Here(ptr noundef %28), !dbg !1633
  br label %bad, !dbg !1633

bad:                                              ; preds = %if.end20, %if.then19, %if.then8
  tail call void @llvm.dbg.label(metadata !1562), !dbg !1634
  %29 = load ptr, ptr %py_code, align 8, !dbg !1635, !tbaa !868
  call void @Py_XDECREF(ptr noundef %29), !dbg !1635
  %30 = load ptr, ptr %py_frame, align 8, !dbg !1636, !tbaa !868
  call void @Py_XDECREF(ptr noundef %30), !dbg !1636
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptraceback) #8, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %pvalue) #8, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptype) #8, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %tstate) #8, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_frame) #8, !dbg !1637
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_code) #8, !dbg !1637
  ret void, !dbg !1637
}

declare !dbg !1638 ptr @PyErr_Occurred() #1

declare !dbg !1639 ptr @Py_GetVersion() #1

declare !dbg !1643 i32 @PyOS_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !1646 i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_InitStrings(ptr noundef %t) #0 !dbg !1650 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1655, metadata !DIExpression()), !dbg !1656
  br label %while.cond, !dbg !1657

while.cond:                                       ; preds = %if.end34, %entry
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1658, !tbaa !868
  %p = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %0, i32 0, i32 0, !dbg !1659
  %1 = load ptr, ptr %p, align 8, !dbg !1659, !tbaa !1660
  %tobool = icmp ne ptr %1, null, !dbg !1657
  br i1 %tobool, label %while.body, label %while.end, !dbg !1657

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %t.addr, align 8, !dbg !1662, !tbaa !868
  %is_unicode = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %2, i32 0, i32 4, !dbg !1665
  %3 = load i8, ptr %is_unicode, align 8, !dbg !1665, !tbaa !1666
  %conv = sext i8 %3 to i32, !dbg !1662
  %4 = load ptr, ptr %t.addr, align 8, !dbg !1667, !tbaa !868
  %is_str = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %4, i32 0, i32 5, !dbg !1668
  %5 = load i8, ptr %is_str, align 1, !dbg !1668, !tbaa !1669
  %conv1 = sext i8 %5 to i32, !dbg !1667
  %or = or i32 %conv, %conv1, !dbg !1670
  %tobool2 = icmp ne i32 %or, 0, !dbg !1670
  br i1 %tobool2, label %if.then, label %if.else19, !dbg !1671

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %t.addr, align 8, !dbg !1672, !tbaa !868
  %intern = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %6, i32 0, i32 6, !dbg !1675
  %7 = load i8, ptr %intern, align 2, !dbg !1675, !tbaa !1676
  %tobool3 = icmp ne i8 %7, 0, !dbg !1672
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !1677

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %t.addr, align 8, !dbg !1678, !tbaa !868
  %s = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %8, i32 0, i32 1, !dbg !1680
  %9 = load ptr, ptr %s, align 8, !dbg !1680, !tbaa !1681
  %call = call ptr @PyUnicode_InternFromString(ptr noundef %9), !dbg !1682
  %10 = load ptr, ptr %t.addr, align 8, !dbg !1683, !tbaa !868
  %p5 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %10, i32 0, i32 0, !dbg !1684
  %11 = load ptr, ptr %p5, align 8, !dbg !1684, !tbaa !1660
  store ptr %call, ptr %11, align 8, !dbg !1685, !tbaa !868
  br label %if.end18, !dbg !1686

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %t.addr, align 8, !dbg !1687, !tbaa !868
  %encoding = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %12, i32 0, i32 3, !dbg !1689
  %13 = load ptr, ptr %encoding, align 8, !dbg !1689, !tbaa !1690
  %tobool6 = icmp ne ptr %13, null, !dbg !1687
  br i1 %tobool6, label %if.then7, label %if.else12, !dbg !1691

if.then7:                                         ; preds = %if.else
  %14 = load ptr, ptr %t.addr, align 8, !dbg !1692, !tbaa !868
  %s8 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %14, i32 0, i32 1, !dbg !1694
  %15 = load ptr, ptr %s8, align 8, !dbg !1694, !tbaa !1681
  %16 = load ptr, ptr %t.addr, align 8, !dbg !1695, !tbaa !868
  %n = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %16, i32 0, i32 2, !dbg !1696
  %17 = load i64, ptr %n, align 8, !dbg !1696, !tbaa !1697
  %sub = sub i64 %17, 1, !dbg !1698
  %18 = load ptr, ptr %t.addr, align 8, !dbg !1699, !tbaa !868
  %encoding9 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %18, i32 0, i32 3, !dbg !1700
  %19 = load ptr, ptr %encoding9, align 8, !dbg !1700, !tbaa !1690
  %call10 = call ptr @PyUnicode_Decode(ptr noundef %15, i64 noundef %sub, ptr noundef %19, ptr noundef null), !dbg !1701
  %20 = load ptr, ptr %t.addr, align 8, !dbg !1702, !tbaa !868
  %p11 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %20, i32 0, i32 0, !dbg !1703
  %21 = load ptr, ptr %p11, align 8, !dbg !1703, !tbaa !1660
  store ptr %call10, ptr %21, align 8, !dbg !1704, !tbaa !868
  br label %if.end, !dbg !1705

if.else12:                                        ; preds = %if.else
  %22 = load ptr, ptr %t.addr, align 8, !dbg !1706, !tbaa !868
  %s13 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %22, i32 0, i32 1, !dbg !1708
  %23 = load ptr, ptr %s13, align 8, !dbg !1708, !tbaa !1681
  %24 = load ptr, ptr %t.addr, align 8, !dbg !1709, !tbaa !868
  %n14 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %24, i32 0, i32 2, !dbg !1710
  %25 = load i64, ptr %n14, align 8, !dbg !1710, !tbaa !1697
  %sub15 = sub i64 %25, 1, !dbg !1711
  %call16 = call ptr @PyUnicode_FromStringAndSize(ptr noundef %23, i64 noundef %sub15), !dbg !1712
  %26 = load ptr, ptr %t.addr, align 8, !dbg !1713, !tbaa !868
  %p17 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %26, i32 0, i32 0, !dbg !1714
  %27 = load ptr, ptr %p17, align 8, !dbg !1714, !tbaa !1660
  store ptr %call16, ptr %27, align 8, !dbg !1715, !tbaa !868
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then4
  br label %if.end25, !dbg !1716

if.else19:                                        ; preds = %while.body
  %28 = load ptr, ptr %t.addr, align 8, !dbg !1717, !tbaa !868
  %s20 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %28, i32 0, i32 1, !dbg !1719
  %29 = load ptr, ptr %s20, align 8, !dbg !1719, !tbaa !1681
  %30 = load ptr, ptr %t.addr, align 8, !dbg !1720, !tbaa !868
  %n21 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %30, i32 0, i32 2, !dbg !1721
  %31 = load i64, ptr %n21, align 8, !dbg !1721, !tbaa !1697
  %sub22 = sub i64 %31, 1, !dbg !1722
  %call23 = call ptr @PyBytes_FromStringAndSize(ptr noundef %29, i64 noundef %sub22), !dbg !1723
  %32 = load ptr, ptr %t.addr, align 8, !dbg !1724, !tbaa !868
  %p24 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %32, i32 0, i32 0, !dbg !1725
  %33 = load ptr, ptr %p24, align 8, !dbg !1725, !tbaa !1660
  store ptr %call23, ptr %33, align 8, !dbg !1726, !tbaa !868
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.end18
  %34 = load ptr, ptr %t.addr, align 8, !dbg !1727, !tbaa !868
  %p26 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %34, i32 0, i32 0, !dbg !1729
  %35 = load ptr, ptr %p26, align 8, !dbg !1729, !tbaa !1660
  %36 = load ptr, ptr %35, align 8, !dbg !1730, !tbaa !868
  %tobool27 = icmp ne ptr %36, null, !dbg !1730
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1731

if.then28:                                        ; preds = %if.end25
  store i32 -1, ptr %retval, align 4, !dbg !1732
  br label %return, !dbg !1732

if.end29:                                         ; preds = %if.end25
  %37 = load ptr, ptr %t.addr, align 8, !dbg !1733, !tbaa !868
  %p30 = getelementptr inbounds %struct.__Pyx_StringTabEntry, ptr %37, i32 0, i32 0, !dbg !1735
  %38 = load ptr, ptr %p30, align 8, !dbg !1735, !tbaa !1660
  %39 = load ptr, ptr %38, align 8, !dbg !1736, !tbaa !868
  %call31 = call i64 @PyObject_Hash(ptr noundef %39), !dbg !1737
  %cmp = icmp eq i64 %call31, -1, !dbg !1738
  br i1 %cmp, label %if.then33, label %if.end34, !dbg !1739

if.then33:                                        ; preds = %if.end29
  store i32 -1, ptr %retval, align 4, !dbg !1740
  br label %return, !dbg !1740

if.end34:                                         ; preds = %if.end29
  %40 = load ptr, ptr %t.addr, align 8, !dbg !1741, !tbaa !868
  %incdec.ptr = getelementptr %struct.__Pyx_StringTabEntry, ptr %40, i32 1, !dbg !1741
  store ptr %incdec.ptr, ptr %t.addr, align 8, !dbg !1741, !tbaa !868
  br label %while.cond, !dbg !1657, !llvm.loop !1742

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1744
  br label %return, !dbg !1744

return:                                           ; preds = %while.end, %if.then33, %if.then28
  %41 = load i32, ptr %retval, align 4, !dbg !1745
  ret i32 %41, !dbg !1745
}

declare !dbg !1746 ptr @PyUnicode_InternFromString(ptr noundef) #1

declare !dbg !1747 ptr @PyUnicode_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare !dbg !1750 i64 @PyObject_Hash(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyCode_New(i32 noundef %a, i32 noundef %k, i32 noundef %l, i32 noundef %s, i32 noundef %f, ptr noundef %code, ptr noundef %c, ptr noundef %n, ptr noundef %v, ptr noundef %fv, ptr noundef %cell, ptr noundef %fn, ptr noundef %name, i32 noundef %fline, ptr noundef %lnos) #3 !dbg !1751 {
entry:
  %a.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %code.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %fv.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %fline.addr = alloca i32, align 4
  %lnos.addr = alloca ptr, align 8
  %kwds = alloca ptr, align 8
  %argcount = alloca ptr, align 8
  %posonlyargcount = alloca ptr, align 8
  %kwonlyargcount = alloca ptr, align 8
  %nlocals = alloca ptr, align 8
  %stacksize = alloca ptr, align 8
  %flags = alloca ptr, align 8
  %replace = alloca ptr, align 8
  %call_result = alloca ptr, align 8
  %empty = alloca ptr, align 8
  %fn_cstr = alloca ptr, align 8
  %name_cstr = alloca ptr, align 8
  %co = alloca ptr, align 8
  %type = alloca ptr, align 8
  %value = alloca ptr, align 8
  %traceback = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1755, metadata !DIExpression()), !dbg !1790
  store i32 %k, ptr %k.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1756, metadata !DIExpression()), !dbg !1791
  store i32 %l, ptr %l.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !1757, metadata !DIExpression()), !dbg !1792
  store i32 %s, ptr %s.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1758, metadata !DIExpression()), !dbg !1793
  store i32 %f, ptr %f.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !1759, metadata !DIExpression()), !dbg !1794
  store ptr %code, ptr %code.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !1760, metadata !DIExpression()), !dbg !1795
  store ptr %c, ptr %c.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1761, metadata !DIExpression()), !dbg !1796
  store ptr %n, ptr %n.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1762, metadata !DIExpression()), !dbg !1797
  store ptr %v, ptr %v.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1763, metadata !DIExpression()), !dbg !1798
  store ptr %fv, ptr %fv.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %fv.addr, metadata !1764, metadata !DIExpression()), !dbg !1799
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !1765, metadata !DIExpression()), !dbg !1800
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1766, metadata !DIExpression()), !dbg !1801
  store ptr %name, ptr %name.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1767, metadata !DIExpression()), !dbg !1802
  store i32 %fline, ptr %fline.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %fline.addr, metadata !1768, metadata !DIExpression()), !dbg !1803
  store ptr %lnos, ptr %lnos.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %lnos.addr, metadata !1769, metadata !DIExpression()), !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %kwds) #8, !dbg !1805
  tail call void @llvm.dbg.declare(metadata ptr %kwds, metadata !1770, metadata !DIExpression()), !dbg !1806
  store ptr null, ptr %kwds, align 8, !dbg !1806, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %argcount) #8, !dbg !1805
  tail call void @llvm.dbg.declare(metadata ptr %argcount, metadata !1771, metadata !DIExpression()), !dbg !1807
  store ptr null, ptr %argcount, align 8, !dbg !1807, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %posonlyargcount) #8, !dbg !1805
  tail call void @llvm.dbg.declare(metadata ptr %posonlyargcount, metadata !1772, metadata !DIExpression()), !dbg !1808
  store ptr null, ptr %posonlyargcount, align 8, !dbg !1808, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %kwonlyargcount) #8, !dbg !1805
  tail call void @llvm.dbg.declare(metadata ptr %kwonlyargcount, metadata !1773, metadata !DIExpression()), !dbg !1809
  store ptr null, ptr %kwonlyargcount, align 8, !dbg !1809, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlocals) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %nlocals, metadata !1774, metadata !DIExpression()), !dbg !1811
  store ptr null, ptr %nlocals, align 8, !dbg !1811, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %stacksize) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %stacksize, metadata !1775, metadata !DIExpression()), !dbg !1812
  store ptr null, ptr %stacksize, align 8, !dbg !1812, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1776, metadata !DIExpression()), !dbg !1813
  store ptr null, ptr %flags, align 8, !dbg !1813, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %replace) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %replace, metadata !1777, metadata !DIExpression()), !dbg !1814
  store ptr null, ptr %replace, align 8, !dbg !1814, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %call_result) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %call_result, metadata !1778, metadata !DIExpression()), !dbg !1815
  store ptr null, ptr %call_result, align 8, !dbg !1815, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %empty) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %empty, metadata !1779, metadata !DIExpression()), !dbg !1816
  store ptr null, ptr %empty, align 8, !dbg !1816, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn_cstr) #8, !dbg !1817
  tail call void @llvm.dbg.declare(metadata ptr %fn_cstr, metadata !1780, metadata !DIExpression()), !dbg !1818
  store ptr null, ptr %fn_cstr, align 8, !dbg !1818, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_cstr) #8, !dbg !1819
  tail call void @llvm.dbg.declare(metadata ptr %name_cstr, metadata !1781, metadata !DIExpression()), !dbg !1820
  store ptr null, ptr %name_cstr, align 8, !dbg !1820, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %co) #8, !dbg !1821
  tail call void @llvm.dbg.declare(metadata ptr %co, metadata !1782, metadata !DIExpression()), !dbg !1822
  store ptr null, ptr %co, align 8, !dbg !1822, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #8, !dbg !1823
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1783, metadata !DIExpression()), !dbg !1824
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1823
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1784, metadata !DIExpression()), !dbg !1825
  call void @llvm.lifetime.start.p0(i64 8, ptr %traceback) #8, !dbg !1823
  tail call void @llvm.dbg.declare(metadata ptr %traceback, metadata !1785, metadata !DIExpression()), !dbg !1826
  call void @PyErr_Fetch(ptr noundef %type, ptr noundef %value, ptr noundef %traceback), !dbg !1827
  %call = call ptr @PyDict_New(), !dbg !1828
  store ptr %call, ptr %kwds, align 8, !dbg !1830, !tbaa !868
  %tobool = icmp ne ptr %call, null, !dbg !1830
  br i1 %tobool, label %if.end, label %if.then, !dbg !1831

if.then:                                          ; preds = %entry
  br label %end, !dbg !1832

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %a.addr, align 4, !dbg !1833, !tbaa !951
  %conv = sext i32 %0 to i64, !dbg !1833
  %call1 = call ptr @PyLong_FromLong(i64 noundef %conv), !dbg !1835
  store ptr %call1, ptr %argcount, align 8, !dbg !1836, !tbaa !868
  %tobool2 = icmp ne ptr %call1, null, !dbg !1836
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1837

if.then3:                                         ; preds = %if.end
  br label %end, !dbg !1838

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %kwds, align 8, !dbg !1839, !tbaa !868
  %2 = load ptr, ptr %argcount, align 8, !dbg !1841, !tbaa !868
  %call5 = call i32 @PyDict_SetItemString(ptr noundef %1, ptr noundef @.str.21, ptr noundef %2), !dbg !1842
  %cmp = icmp ne i32 %call5, 0, !dbg !1843
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !1844

if.then7:                                         ; preds = %if.end4
  br label %end, !dbg !1845

if.end8:                                          ; preds = %if.end4
  %call9 = call ptr @PyLong_FromLong(i64 noundef 0), !dbg !1846
  store ptr %call9, ptr %posonlyargcount, align 8, !dbg !1848, !tbaa !868
  %tobool10 = icmp ne ptr %call9, null, !dbg !1848
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1849

if.then11:                                        ; preds = %if.end8
  br label %end, !dbg !1850

if.end12:                                         ; preds = %if.end8
  %3 = load ptr, ptr %kwds, align 8, !dbg !1851, !tbaa !868
  %4 = load ptr, ptr %posonlyargcount, align 8, !dbg !1853, !tbaa !868
  %call13 = call i32 @PyDict_SetItemString(ptr noundef %3, ptr noundef @.str.22, ptr noundef %4), !dbg !1854
  %cmp14 = icmp ne i32 %call13, 0, !dbg !1855
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1856

if.then16:                                        ; preds = %if.end12
  br label %end, !dbg !1857

if.end17:                                         ; preds = %if.end12
  %5 = load i32, ptr %k.addr, align 4, !dbg !1858, !tbaa !951
  %conv18 = sext i32 %5 to i64, !dbg !1858
  %call19 = call ptr @PyLong_FromLong(i64 noundef %conv18), !dbg !1860
  store ptr %call19, ptr %kwonlyargcount, align 8, !dbg !1861, !tbaa !868
  %tobool20 = icmp ne ptr %call19, null, !dbg !1861
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !1862

if.then21:                                        ; preds = %if.end17
  br label %end, !dbg !1863

if.end22:                                         ; preds = %if.end17
  %6 = load ptr, ptr %kwds, align 8, !dbg !1864, !tbaa !868
  %7 = load ptr, ptr %kwonlyargcount, align 8, !dbg !1866, !tbaa !868
  %call23 = call i32 @PyDict_SetItemString(ptr noundef %6, ptr noundef @.str.23, ptr noundef %7), !dbg !1867
  %cmp24 = icmp ne i32 %call23, 0, !dbg !1868
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1869

if.then26:                                        ; preds = %if.end22
  br label %end, !dbg !1870

if.end27:                                         ; preds = %if.end22
  %8 = load i32, ptr %l.addr, align 4, !dbg !1871, !tbaa !951
  %conv28 = sext i32 %8 to i64, !dbg !1871
  %call29 = call ptr @PyLong_FromLong(i64 noundef %conv28), !dbg !1873
  store ptr %call29, ptr %nlocals, align 8, !dbg !1874, !tbaa !868
  %tobool30 = icmp ne ptr %call29, null, !dbg !1874
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !1875

if.then31:                                        ; preds = %if.end27
  br label %end, !dbg !1876

if.end32:                                         ; preds = %if.end27
  %9 = load ptr, ptr %kwds, align 8, !dbg !1877, !tbaa !868
  %10 = load ptr, ptr %nlocals, align 8, !dbg !1879, !tbaa !868
  %call33 = call i32 @PyDict_SetItemString(ptr noundef %9, ptr noundef @.str.24, ptr noundef %10), !dbg !1880
  %cmp34 = icmp ne i32 %call33, 0, !dbg !1881
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1882

if.then36:                                        ; preds = %if.end32
  br label %end, !dbg !1883

if.end37:                                         ; preds = %if.end32
  %11 = load i32, ptr %s.addr, align 4, !dbg !1884, !tbaa !951
  %conv38 = sext i32 %11 to i64, !dbg !1884
  %call39 = call ptr @PyLong_FromLong(i64 noundef %conv38), !dbg !1886
  store ptr %call39, ptr %stacksize, align 8, !dbg !1887, !tbaa !868
  %tobool40 = icmp ne ptr %call39, null, !dbg !1887
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !1888

if.then41:                                        ; preds = %if.end37
  br label %end, !dbg !1889

if.end42:                                         ; preds = %if.end37
  %12 = load ptr, ptr %kwds, align 8, !dbg !1890, !tbaa !868
  %13 = load ptr, ptr %stacksize, align 8, !dbg !1892, !tbaa !868
  %call43 = call i32 @PyDict_SetItemString(ptr noundef %12, ptr noundef @.str.25, ptr noundef %13), !dbg !1893
  %cmp44 = icmp ne i32 %call43, 0, !dbg !1894
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1895

if.then46:                                        ; preds = %if.end42
  br label %end, !dbg !1896

if.end47:                                         ; preds = %if.end42
  %14 = load i32, ptr %f.addr, align 4, !dbg !1897, !tbaa !951
  %conv48 = sext i32 %14 to i64, !dbg !1897
  %call49 = call ptr @PyLong_FromLong(i64 noundef %conv48), !dbg !1899
  store ptr %call49, ptr %flags, align 8, !dbg !1900, !tbaa !868
  %tobool50 = icmp ne ptr %call49, null, !dbg !1900
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !1901

if.then51:                                        ; preds = %if.end47
  br label %end, !dbg !1902

if.end52:                                         ; preds = %if.end47
  %15 = load ptr, ptr %kwds, align 8, !dbg !1903, !tbaa !868
  %16 = load ptr, ptr %flags, align 8, !dbg !1905, !tbaa !868
  %call53 = call i32 @PyDict_SetItemString(ptr noundef %15, ptr noundef @.str.26, ptr noundef %16), !dbg !1906
  %cmp54 = icmp ne i32 %call53, 0, !dbg !1907
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !1908

if.then56:                                        ; preds = %if.end52
  br label %end, !dbg !1909

if.end57:                                         ; preds = %if.end52
  %17 = load ptr, ptr %kwds, align 8, !dbg !1910, !tbaa !868
  %18 = load ptr, ptr %code.addr, align 8, !dbg !1912, !tbaa !868
  %call58 = call i32 @PyDict_SetItemString(ptr noundef %17, ptr noundef @.str.27, ptr noundef %18), !dbg !1913
  %cmp59 = icmp ne i32 %call58, 0, !dbg !1914
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !1915

if.then61:                                        ; preds = %if.end57
  br label %end, !dbg !1916

if.end62:                                         ; preds = %if.end57
  %19 = load ptr, ptr %kwds, align 8, !dbg !1917, !tbaa !868
  %20 = load ptr, ptr %c.addr, align 8, !dbg !1919, !tbaa !868
  %call63 = call i32 @PyDict_SetItemString(ptr noundef %19, ptr noundef @.str.28, ptr noundef %20), !dbg !1920
  %cmp64 = icmp ne i32 %call63, 0, !dbg !1921
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !1922

if.then66:                                        ; preds = %if.end62
  br label %end, !dbg !1923

if.end67:                                         ; preds = %if.end62
  %21 = load ptr, ptr %kwds, align 8, !dbg !1924, !tbaa !868
  %22 = load ptr, ptr %n.addr, align 8, !dbg !1926, !tbaa !868
  %call68 = call i32 @PyDict_SetItemString(ptr noundef %21, ptr noundef @.str.29, ptr noundef %22), !dbg !1927
  %cmp69 = icmp ne i32 %call68, 0, !dbg !1928
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !1929

if.then71:                                        ; preds = %if.end67
  br label %end, !dbg !1930

if.end72:                                         ; preds = %if.end67
  %23 = load ptr, ptr %kwds, align 8, !dbg !1931, !tbaa !868
  %24 = load ptr, ptr %v.addr, align 8, !dbg !1933, !tbaa !868
  %call73 = call i32 @PyDict_SetItemString(ptr noundef %23, ptr noundef @.str.30, ptr noundef %24), !dbg !1934
  %cmp74 = icmp ne i32 %call73, 0, !dbg !1935
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !1936

if.then76:                                        ; preds = %if.end72
  br label %end, !dbg !1937

if.end77:                                         ; preds = %if.end72
  %25 = load ptr, ptr %kwds, align 8, !dbg !1938, !tbaa !868
  %26 = load ptr, ptr %fv.addr, align 8, !dbg !1940, !tbaa !868
  %call78 = call i32 @PyDict_SetItemString(ptr noundef %25, ptr noundef @.str.31, ptr noundef %26), !dbg !1941
  %cmp79 = icmp ne i32 %call78, 0, !dbg !1942
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !1943

if.then81:                                        ; preds = %if.end77
  br label %end, !dbg !1944

if.end82:                                         ; preds = %if.end77
  %27 = load ptr, ptr %kwds, align 8, !dbg !1945, !tbaa !868
  %28 = load ptr, ptr %cell.addr, align 8, !dbg !1947, !tbaa !868
  %call83 = call i32 @PyDict_SetItemString(ptr noundef %27, ptr noundef @.str.32, ptr noundef %28), !dbg !1948
  %cmp84 = icmp ne i32 %call83, 0, !dbg !1949
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !1950

if.then86:                                        ; preds = %if.end82
  br label %end, !dbg !1951

if.end87:                                         ; preds = %if.end82
  %29 = load ptr, ptr %kwds, align 8, !dbg !1952, !tbaa !868
  %30 = load ptr, ptr %lnos.addr, align 8, !dbg !1954, !tbaa !868
  %call88 = call i32 @PyDict_SetItemString(ptr noundef %29, ptr noundef @.str.33, ptr noundef %30), !dbg !1955
  %cmp89 = icmp ne i32 %call88, 0, !dbg !1956
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !1957

if.then91:                                        ; preds = %if.end87
  br label %end, !dbg !1958

if.end92:                                         ; preds = %if.end87
  %31 = load ptr, ptr %fn.addr, align 8, !dbg !1959, !tbaa !868
  %call93 = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %31, ptr noundef null), !dbg !1961
  store ptr %call93, ptr %fn_cstr, align 8, !dbg !1962, !tbaa !868
  %tobool94 = icmp ne ptr %call93, null, !dbg !1962
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !1963

if.then95:                                        ; preds = %if.end92
  br label %end, !dbg !1964

if.end96:                                         ; preds = %if.end92
  %32 = load ptr, ptr %name.addr, align 8, !dbg !1965, !tbaa !868
  %call97 = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %32, ptr noundef null), !dbg !1967
  store ptr %call97, ptr %name_cstr, align 8, !dbg !1968, !tbaa !868
  %tobool98 = icmp ne ptr %call97, null, !dbg !1968
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !1969

if.then99:                                        ; preds = %if.end96
  br label %end, !dbg !1970

if.end100:                                        ; preds = %if.end96
  %33 = load ptr, ptr %fn_cstr, align 8, !dbg !1971, !tbaa !868
  %34 = load ptr, ptr %name_cstr, align 8, !dbg !1973, !tbaa !868
  %35 = load i32, ptr %fline.addr, align 4, !dbg !1974, !tbaa !951
  %call101 = call ptr @PyCode_NewEmpty(ptr noundef %33, ptr noundef %34, i32 noundef %35), !dbg !1975
  store ptr %call101, ptr %co, align 8, !dbg !1976, !tbaa !868
  %tobool102 = icmp ne ptr %call101, null, !dbg !1976
  br i1 %tobool102, label %if.end104, label %if.then103, !dbg !1977

if.then103:                                       ; preds = %if.end100
  br label %end, !dbg !1978

if.end104:                                        ; preds = %if.end100
  %36 = load ptr, ptr %co, align 8, !dbg !1979, !tbaa !868
  %call105 = call ptr @PyObject_GetAttrString(ptr noundef %36, ptr noundef @.str.34), !dbg !1981
  store ptr %call105, ptr %replace, align 8, !dbg !1982, !tbaa !868
  %tobool106 = icmp ne ptr %call105, null, !dbg !1982
  br i1 %tobool106, label %if.end108, label %if.then107, !dbg !1983

if.then107:                                       ; preds = %if.end104
  br label %cleanup_code_too, !dbg !1984

if.end108:                                        ; preds = %if.end104
  %call109 = call ptr @PyTuple_New(i64 noundef 0), !dbg !1985
  store ptr %call109, ptr %empty, align 8, !dbg !1987, !tbaa !868
  %tobool110 = icmp ne ptr %call109, null, !dbg !1987
  br i1 %tobool110, label %if.end112, label %if.then111, !dbg !1988

if.then111:                                       ; preds = %if.end108
  br label %cleanup_code_too, !dbg !1989

if.end112:                                        ; preds = %if.end108
  %37 = load ptr, ptr %replace, align 8, !dbg !1990, !tbaa !868
  %38 = load ptr, ptr %empty, align 8, !dbg !1992, !tbaa !868
  %39 = load ptr, ptr %kwds, align 8, !dbg !1993, !tbaa !868
  %call113 = call ptr @PyObject_Call(ptr noundef %37, ptr noundef %38, ptr noundef %39), !dbg !1994
  store ptr %call113, ptr %call_result, align 8, !dbg !1995, !tbaa !868
  %tobool114 = icmp ne ptr %call113, null, !dbg !1995
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !1996

if.then115:                                       ; preds = %if.end112
  br label %cleanup_code_too, !dbg !1997

if.end116:                                        ; preds = %if.end112
  %40 = load ptr, ptr %co, align 8, !dbg !1998, !tbaa !868
  call void @Py_XDECREF(ptr noundef %40), !dbg !1998
  %41 = load ptr, ptr %call_result, align 8, !dbg !1999, !tbaa !868
  store ptr %41, ptr %co, align 8, !dbg !2000, !tbaa !868
  store ptr null, ptr %call_result, align 8, !dbg !2001, !tbaa !868
  br i1 false, label %if.then117, label %if.end118, !dbg !2002

if.then117:                                       ; preds = %if.end116
  br label %cleanup_code_too, !dbg !2003

cleanup_code_too:                                 ; preds = %if.then117, %if.then115, %if.then111, %if.then107
  tail call void @llvm.dbg.label(metadata !1786), !dbg !2004
  %42 = load ptr, ptr %co, align 8, !dbg !2005, !tbaa !868
  call void @Py_XDECREF(ptr noundef %42), !dbg !2005
  store ptr null, ptr %co, align 8, !dbg !2006, !tbaa !868
  br label %if.end118, !dbg !2007

if.end118:                                        ; preds = %cleanup_code_too, %if.end116
  br label %end, !dbg !2008

end:                                              ; preds = %if.end118, %if.then103, %if.then99, %if.then95, %if.then91, %if.then86, %if.then81, %if.then76, %if.then71, %if.then66, %if.then61, %if.then56, %if.then51, %if.then46, %if.then41, %if.then36, %if.then31, %if.then26, %if.then21, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  tail call void @llvm.dbg.label(metadata !1789), !dbg !2009
  %43 = load ptr, ptr %kwds, align 8, !dbg !2010, !tbaa !868
  call void @Py_XDECREF(ptr noundef %43), !dbg !2010
  %44 = load ptr, ptr %argcount, align 8, !dbg !2011, !tbaa !868
  call void @Py_XDECREF(ptr noundef %44), !dbg !2011
  %45 = load ptr, ptr %posonlyargcount, align 8, !dbg !2012, !tbaa !868
  call void @Py_XDECREF(ptr noundef %45), !dbg !2012
  %46 = load ptr, ptr %kwonlyargcount, align 8, !dbg !2013, !tbaa !868
  call void @Py_XDECREF(ptr noundef %46), !dbg !2013
  %47 = load ptr, ptr %nlocals, align 8, !dbg !2014, !tbaa !868
  call void @Py_XDECREF(ptr noundef %47), !dbg !2014
  %48 = load ptr, ptr %stacksize, align 8, !dbg !2015, !tbaa !868
  call void @Py_XDECREF(ptr noundef %48), !dbg !2015
  %49 = load ptr, ptr %replace, align 8, !dbg !2016, !tbaa !868
  call void @Py_XDECREF(ptr noundef %49), !dbg !2016
  %50 = load ptr, ptr %call_result, align 8, !dbg !2017, !tbaa !868
  call void @Py_XDECREF(ptr noundef %50), !dbg !2017
  %51 = load ptr, ptr %empty, align 8, !dbg !2018, !tbaa !868
  call void @Py_XDECREF(ptr noundef %51), !dbg !2018
  %52 = load ptr, ptr %type, align 8, !dbg !2019, !tbaa !868
  %tobool119 = icmp ne ptr %52, null, !dbg !2019
  br i1 %tobool119, label %if.then120, label %if.end121, !dbg !2021

if.then120:                                       ; preds = %end
  %53 = load ptr, ptr %type, align 8, !dbg !2022, !tbaa !868
  %54 = load ptr, ptr %value, align 8, !dbg !2024, !tbaa !868
  %55 = load ptr, ptr %traceback, align 8, !dbg !2025, !tbaa !868
  call void @PyErr_Restore(ptr noundef %53, ptr noundef %54, ptr noundef %55), !dbg !2026
  br label %if.end121, !dbg !2027

if.end121:                                        ; preds = %if.then120, %end
  %56 = load ptr, ptr %co, align 8, !dbg !2028, !tbaa !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %traceback) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %co) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_cstr) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn_cstr) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %empty) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %call_result) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %replace) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %stacksize) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlocals) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %kwonlyargcount) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %posonlyargcount) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %argcount) #8, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %kwds) #8, !dbg !2029
  ret ptr %56, !dbg !2030
}

declare !dbg !2031 void @PyErr_Fetch(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2034 ptr @PyLong_FromLong(i64 noundef) #1

declare !dbg !2038 ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) #1

declare !dbg !2041 ptr @PyCode_NewEmpty(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !2044 ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2046 void @PyErr_Restore(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pw_5pysam_12libcsamtools_1py_samtools(ptr noundef %__pyx_self, ptr noundef %unused) #0 !dbg !2049 {
entry:
  %__pyx_self.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_self.addr, metadata !2051, metadata !DIExpression()), !dbg !2054
  store ptr %unused, ptr %unused.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #8, !dbg !2056
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_r, metadata !2053, metadata !DIExpression()), !dbg !2057
  store ptr null, ptr %__pyx_r, align 8, !dbg !2057, !tbaa !868
  %0 = load ptr, ptr %__pyx_self.addr, align 8, !dbg !2058, !tbaa !868
  %call = call ptr @__pyx_pf_5pysam_12libcsamtools_py_samtools(ptr noundef %0), !dbg !2059
  store ptr %call, ptr %__pyx_r, align 8, !dbg !2060, !tbaa !868
  %1 = load ptr, ptr %__pyx_r, align 8, !dbg !2061, !tbaa !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #8, !dbg !2062
  ret ptr %1, !dbg !2063
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_pf_5pysam_12libcsamtools_py_samtools(ptr noundef %__pyx_self) #0 !dbg !2064 {
entry:
  %__pyx_self.addr = alloca ptr, align 8
  %__pyx_r = alloca ptr, align 8
  store ptr %__pyx_self, ptr %__pyx_self.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_self.addr, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pyx_r) #8, !dbg !2069
  tail call void @llvm.dbg.declare(metadata ptr %__pyx_r, metadata !2067, metadata !DIExpression()), !dbg !2070
  store ptr null, ptr %__pyx_r, align 8, !dbg !2070, !tbaa !868
  store ptr @_Py_NoneStruct, ptr %__pyx_r, align 8, !dbg !2071, !tbaa !868
  call void @Py_INCREF(ptr noundef @_Py_NoneStruct), !dbg !2072
  %0 = load ptr, ptr %__pyx_r, align 8, !dbg !2073, !tbaa !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pyx_r) #8, !dbg !2074
  ret ptr %0, !dbg !2075
}

; Function Attrs: nounwind uwtable
define internal i32 @__Pyx_CLineForTraceback(ptr noundef %tstate, i32 noundef %c_line) #0 !dbg !655 {
entry:
  %retval = alloca i32, align 4
  %tstate.addr = alloca ptr, align 8
  %c_line.addr = alloca i32, align 4
  %use_cline = alloca ptr, align 8
  %ptype = alloca ptr, align 8
  %pvalue = alloca ptr, align 8
  %ptraceback = alloca ptr, align 8
  %cython_runtime_dict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %use_cline_obj = alloca ptr, align 8
  store ptr %tstate, ptr %tstate.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %tstate.addr, metadata !816, metadata !DIExpression()), !dbg !2076
  store i32 %c_line, ptr %c_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %c_line.addr, metadata !817, metadata !DIExpression()), !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_cline) #8, !dbg !2078
  tail call void @llvm.dbg.declare(metadata ptr %use_cline, metadata !818, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptype) #8, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %ptype, metadata !819, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %pvalue) #8, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %pvalue, metadata !820, metadata !DIExpression()), !dbg !2082
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptraceback) #8, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %ptraceback, metadata !821, metadata !DIExpression()), !dbg !2083
  call void @llvm.lifetime.start.p0(i64 8, ptr %cython_runtime_dict) #8, !dbg !2084
  tail call void @llvm.dbg.declare(metadata ptr %cython_runtime_dict, metadata !822, metadata !DIExpression()), !dbg !2085
  %0 = load ptr, ptr @__pyx_cython_runtime, align 8, !dbg !2086, !tbaa !868
  %tobool = icmp ne ptr %0, null, !dbg !2086
  %lnot = xor i1 %tobool, true, !dbg !2086
  %lnot1 = xor i1 %lnot, true, !dbg !2086
  %lnot2 = xor i1 %lnot1, true, !dbg !2086
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2086
  %conv = sext i32 %lnot.ext to i64, !dbg !2086
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2086
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2086
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2088

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %c_line.addr, align 4, !dbg !2089, !tbaa !951
  store i32 %1, ptr %retval, align 4, !dbg !2091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2091

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(ptr noundef %ptype, ptr noundef %pvalue, ptr noundef %ptraceback), !dbg !2092
  %2 = load ptr, ptr @__pyx_cython_runtime, align 8, !dbg !2093, !tbaa !868
  %call = call ptr @_PyObject_GetDictPtr(ptr noundef %2), !dbg !2094
  store ptr %call, ptr %cython_runtime_dict, align 8, !dbg !2095, !tbaa !868
  %3 = load ptr, ptr %cython_runtime_dict, align 8, !dbg !2096, !tbaa !868
  %tobool4 = icmp ne ptr %3, null, !dbg !2096
  %lnot5 = xor i1 %tobool4, true, !dbg !2096
  %lnot7 = xor i1 %lnot5, true, !dbg !2096
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2096
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2096
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !2096
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2096
  br i1 %tobool11, label %if.then12, label %if.else25, !dbg !2097

if.then12:                                        ; preds = %if.end
  %4 = load ptr, ptr %cython_runtime_dict, align 8, !dbg !2098, !tbaa !868
  %5 = load ptr, ptr %4, align 8, !dbg !2098, !tbaa !868
  %ma_version_tag = getelementptr inbounds %struct.PyDictObject, ptr %5, i32 0, i32 2, !dbg !2098
  %6 = load i64, ptr %ma_version_tag, align 8, !dbg !2098, !tbaa !2102
  %7 = load i64, ptr @__Pyx_CLineForTraceback.__pyx_dict_version, align 8, !dbg !2098, !tbaa !1211
  %cmp = icmp eq i64 %6, %7, !dbg !2098
  %lnot14 = xor i1 %cmp, true, !dbg !2098
  %lnot16 = xor i1 %lnot14, true, !dbg !2098
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2098
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2098
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 1), !dbg !2098
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !2098
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !2104

if.then21:                                        ; preds = %if.then12
  %8 = load ptr, ptr @__Pyx_CLineForTraceback.__pyx_dict_cached_value, align 8, !dbg !2105, !tbaa !868
  store ptr %8, ptr %use_cline, align 8, !dbg !2105, !tbaa !868
  br label %if.end24, !dbg !2105

if.else:                                          ; preds = %if.then12
  %9 = load ptr, ptr %cython_runtime_dict, align 8, !dbg !2107, !tbaa !868
  %10 = load ptr, ptr %9, align 8, !dbg !2107, !tbaa !868
  %11 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !dbg !2107, !tbaa !868
  %12 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !dbg !2107, !tbaa !868
  %hash = getelementptr inbounds %struct.PyASCIIObject, ptr %12, i32 0, i32 2, !dbg !2107
  %13 = load i64, ptr %hash, align 8, !dbg !2107, !tbaa !2109
  %call22 = call ptr @_PyDict_GetItem_KnownHash(ptr noundef %10, ptr noundef %11, i64 noundef %13), !dbg !2107
  store ptr %call22, ptr @__Pyx_CLineForTraceback.__pyx_dict_cached_value, align 8, !dbg !2107, !tbaa !868
  store ptr %call22, ptr %use_cline, align 8, !dbg !2107, !tbaa !868
  %14 = load ptr, ptr %cython_runtime_dict, align 8, !dbg !2107, !tbaa !868
  %15 = load ptr, ptr %14, align 8, !dbg !2107, !tbaa !868
  %ma_version_tag23 = getelementptr inbounds %struct.PyDictObject, ptr %15, i32 0, i32 2, !dbg !2107
  %16 = load i64, ptr %ma_version_tag23, align 8, !dbg !2107, !tbaa !2102
  store i64 %16, ptr @__Pyx_CLineForTraceback.__pyx_dict_version, align 8, !dbg !2107, !tbaa !1211
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  br label %if.end33, !dbg !2112

if.else25:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_cline_obj) #8, !dbg !2113
  tail call void @llvm.dbg.declare(metadata ptr %use_cline_obj, metadata !823, metadata !DIExpression()), !dbg !2114
  %17 = load ptr, ptr @__pyx_cython_runtime, align 8, !dbg !2115, !tbaa !868
  %18 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !dbg !2116, !tbaa !868
  %call26 = call ptr @__Pyx_PyObject_GetAttrStr(ptr noundef %17, ptr noundef %18), !dbg !2117
  store ptr %call26, ptr %use_cline_obj, align 8, !dbg !2114, !tbaa !868
  %19 = load ptr, ptr %use_cline_obj, align 8, !dbg !2118, !tbaa !868
  %tobool27 = icmp ne ptr %19, null, !dbg !2118
  br i1 %tobool27, label %if.then28, label %if.else31, !dbg !2120

if.then28:                                        ; preds = %if.else25
  %20 = load ptr, ptr %use_cline_obj, align 8, !dbg !2121, !tbaa !868
  %call29 = call i32 @PyObject_Not(ptr noundef %20), !dbg !2123
  %tobool30 = icmp ne i32 %call29, 0, !dbg !2123
  %21 = zext i1 %tobool30 to i64, !dbg !2123
  %cond = select i1 %tobool30, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct, !dbg !2123
  store ptr %cond, ptr %use_cline, align 8, !dbg !2124, !tbaa !868
  %22 = load ptr, ptr %use_cline_obj, align 8, !dbg !2125, !tbaa !868
  call void @Py_DECREF(ptr noundef %22), !dbg !2125
  br label %if.end32, !dbg !2126

if.else31:                                        ; preds = %if.else25
  call void @PyErr_Clear(), !dbg !2127
  store ptr null, ptr %use_cline, align 8, !dbg !2129, !tbaa !868
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_cline_obj) #8, !dbg !2130
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end24
  %23 = load ptr, ptr %use_cline, align 8, !dbg !2131, !tbaa !868
  %tobool34 = icmp ne ptr %23, null, !dbg !2131
  br i1 %tobool34, label %if.else37, label %if.then35, !dbg !2133

if.then35:                                        ; preds = %if.end33
  store i32 0, ptr %c_line.addr, align 4, !dbg !2134, !tbaa !951
  %24 = load ptr, ptr @__pyx_cython_runtime, align 8, !dbg !2136, !tbaa !868
  %25 = load ptr, ptr @__pyx_n_s_cline_in_traceback, align 8, !dbg !2137, !tbaa !868
  %call36 = call i32 @PyObject_SetAttr(ptr noundef %24, ptr noundef %25, ptr noundef @_Py_FalseStruct), !dbg !2138
  br label %if.end47, !dbg !2139

if.else37:                                        ; preds = %if.end33
  %26 = load ptr, ptr %use_cline, align 8, !dbg !2140, !tbaa !868
  %cmp38 = icmp eq ptr %26, @_Py_FalseStruct, !dbg !2142
  br i1 %cmp38, label %if.then45, label %lor.lhs.false, !dbg !2143

lor.lhs.false:                                    ; preds = %if.else37
  %27 = load ptr, ptr %use_cline, align 8, !dbg !2144, !tbaa !868
  %cmp40 = icmp ne ptr %27, @_Py_TrueStruct, !dbg !2145
  br i1 %cmp40, label %land.lhs.true, label %if.end46, !dbg !2146

land.lhs.true:                                    ; preds = %lor.lhs.false
  %28 = load ptr, ptr %use_cline, align 8, !dbg !2147, !tbaa !868
  %call42 = call i32 @PyObject_Not(ptr noundef %28), !dbg !2148
  %cmp43 = icmp ne i32 %call42, 0, !dbg !2149
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !2150

if.then45:                                        ; preds = %land.lhs.true, %if.else37
  store i32 0, ptr %c_line.addr, align 4, !dbg !2151, !tbaa !951
  br label %if.end46, !dbg !2153

if.end46:                                         ; preds = %if.then45, %land.lhs.true, %lor.lhs.false
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then35
  %29 = load ptr, ptr %ptype, align 8, !dbg !2154, !tbaa !868
  %30 = load ptr, ptr %pvalue, align 8, !dbg !2154, !tbaa !868
  %31 = load ptr, ptr %ptraceback, align 8, !dbg !2154, !tbaa !868
  call void @PyErr_Restore(ptr noundef %29, ptr noundef %30, ptr noundef %31), !dbg !2154
  %32 = load i32, ptr %c_line.addr, align 4, !dbg !2155, !tbaa !951
  store i32 %32, ptr %retval, align 4, !dbg !2156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2156

cleanup:                                          ; preds = %if.end47, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cython_runtime_dict) #8, !dbg !2157
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptraceback) #8, !dbg !2157
  call void @llvm.lifetime.end.p0(i64 8, ptr %pvalue) #8, !dbg !2157
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptype) #8, !dbg !2157
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_cline) #8, !dbg !2157
  %33 = load i32, ptr %retval, align 4, !dbg !2157
  ret i32 %33, !dbg !2157
}

; Function Attrs: nounwind uwtable
define internal ptr @__pyx_find_code_object(i32 noundef %code_line) #0 !dbg !2158 {
entry:
  %retval = alloca ptr, align 8
  %code_line.addr = alloca i32, align 4
  %code_object = alloca ptr, align 8
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %code_line, ptr %code_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %code_line.addr, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.lifetime.start.p0(i64 8, ptr %code_object) #8, !dbg !2166
  tail call void @llvm.dbg.declare(metadata ptr %code_object, metadata !2163, metadata !DIExpression()), !dbg !2167
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #8, !dbg !2168
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !2164, metadata !DIExpression()), !dbg !2169
  %0 = load i32, ptr %code_line.addr, align 4, !dbg !2170, !tbaa !951
  %tobool = icmp ne i32 %0, 0, !dbg !2170
  %lnot = xor i1 %tobool, true, !dbg !2170
  %lnot1 = xor i1 %lnot, true, !dbg !2170
  %lnot2 = xor i1 %lnot1, true, !dbg !2170
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2170
  %conv = sext i32 %lnot.ext to i64, !dbg !2170
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2170
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2170
  br i1 %tobool3, label %if.then, label %lor.lhs.false, !dbg !2172

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2173, !tbaa !2174
  %tobool4 = icmp ne ptr %1, null, !dbg !2173
  %lnot5 = xor i1 %tobool4, true, !dbg !2173
  %lnot7 = xor i1 %lnot5, true, !dbg !2173
  %lnot9 = xor i1 %lnot7, true, !dbg !2173
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !2173
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !2173
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !2173
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !2173
  br i1 %tobool13, label %if.then, label %if.end, !dbg !2176

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !2177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2177

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2179, !tbaa !2174
  %3 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2180, !tbaa !2181
  %4 = load i32, ptr %code_line.addr, align 4, !dbg !2182, !tbaa !951
  %call = call i32 @__pyx_bisect_code_objects(ptr noundef %2, i32 noundef %3, i32 noundef %4), !dbg !2183
  store i32 %call, ptr %pos, align 4, !dbg !2184, !tbaa !951
  %5 = load i32, ptr %pos, align 4, !dbg !2185, !tbaa !951
  %6 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2185, !tbaa !2181
  %cmp = icmp sge i32 %5, %6, !dbg !2185
  %lnot15 = xor i1 %cmp, true, !dbg !2185
  %lnot17 = xor i1 %lnot15, true, !dbg !2185
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2185
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2185
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !2185
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !2185
  br i1 %tobool21, label %if.then33, label %lor.lhs.false22, !dbg !2187

lor.lhs.false22:                                  ; preds = %if.end
  %7 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2188, !tbaa !2174
  %8 = load i32, ptr %pos, align 4, !dbg !2188, !tbaa !951
  %idxprom = sext i32 %8 to i64, !dbg !2188
  %arrayidx = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %7, i64 %idxprom, !dbg !2188
  %code_line23 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx, i32 0, i32 1, !dbg !2188
  %9 = load i32, ptr %code_line23, align 8, !dbg !2188, !tbaa !2189
  %10 = load i32, ptr %code_line.addr, align 4, !dbg !2188, !tbaa !951
  %cmp24 = icmp ne i32 %9, %10, !dbg !2188
  %lnot26 = xor i1 %cmp24, true, !dbg !2188
  %lnot28 = xor i1 %lnot26, true, !dbg !2188
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !2188
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !2188
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !2188
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !2188
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !2191

if.then33:                                        ; preds = %lor.lhs.false22, %if.end
  store ptr null, ptr %retval, align 8, !dbg !2192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2192

if.end34:                                         ; preds = %lor.lhs.false22
  %11 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2194, !tbaa !2174
  %12 = load i32, ptr %pos, align 4, !dbg !2195, !tbaa !951
  %idxprom35 = sext i32 %12 to i64, !dbg !2196
  %arrayidx36 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %11, i64 %idxprom35, !dbg !2196
  %code_object37 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx36, i32 0, i32 0, !dbg !2197
  %13 = load ptr, ptr %code_object37, align 8, !dbg !2197, !tbaa !2198
  store ptr %13, ptr %code_object, align 8, !dbg !2199, !tbaa !868
  %14 = load ptr, ptr %code_object, align 8, !dbg !2200, !tbaa !868
  call void @Py_INCREF(ptr noundef %14), !dbg !2200
  %15 = load ptr, ptr %code_object, align 8, !dbg !2201, !tbaa !868
  store ptr %15, ptr %retval, align 8, !dbg !2202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2202

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #8, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 8, ptr %code_object) #8, !dbg !2203
  %16 = load ptr, ptr %retval, align 8, !dbg !2203
  ret ptr %16, !dbg !2203
}

; Function Attrs: nounwind uwtable
define internal ptr @__Pyx_CreateCodeObjectForTraceback(ptr noundef %funcname, i32 noundef %c_line, i32 noundef %py_line, ptr noundef %filename) #0 !dbg !2204 {
entry:
  %retval = alloca ptr, align 8
  %funcname.addr = alloca ptr, align 8
  %c_line.addr = alloca i32, align 4
  %py_line.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %py_code = alloca ptr, align 8
  %py_funcname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %funcname, ptr %funcname.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %funcname.addr, metadata !2208, metadata !DIExpression()), !dbg !2215
  store i32 %c_line, ptr %c_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %c_line.addr, metadata !2209, metadata !DIExpression()), !dbg !2216
  store i32 %py_line, ptr %py_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %py_line.addr, metadata !2210, metadata !DIExpression()), !dbg !2217
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !2211, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_code) #8, !dbg !2219
  tail call void @llvm.dbg.declare(metadata ptr %py_code, metadata !2212, metadata !DIExpression()), !dbg !2220
  store ptr null, ptr %py_code, align 8, !dbg !2220, !tbaa !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %py_funcname) #8, !dbg !2221
  tail call void @llvm.dbg.declare(metadata ptr %py_funcname, metadata !2213, metadata !DIExpression()), !dbg !2222
  store ptr null, ptr %py_funcname, align 8, !dbg !2222, !tbaa !868
  %0 = load i32, ptr %c_line.addr, align 4, !dbg !2223, !tbaa !951
  %tobool = icmp ne i32 %0, 0, !dbg !2223
  br i1 %tobool, label %if.then, label %if.else, !dbg !2225

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %funcname.addr, align 8, !dbg !2226, !tbaa !868
  %2 = load ptr, ptr @__pyx_cfilenm, align 8, !dbg !2228, !tbaa !868
  %3 = load i32, ptr %c_line.addr, align 4, !dbg !2229, !tbaa !951
  %call = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef @.str.36, ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !2230
  store ptr %call, ptr %py_funcname, align 8, !dbg !2231, !tbaa !868
  %4 = load ptr, ptr %py_funcname, align 8, !dbg !2232, !tbaa !868
  %tobool1 = icmp ne ptr %4, null, !dbg !2232
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2234

if.then2:                                         ; preds = %if.then
  br label %bad, !dbg !2235

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %py_funcname, align 8, !dbg !2236, !tbaa !868
  %call3 = call ptr @PyUnicode_AsUTF8(ptr noundef %5), !dbg !2237
  store ptr %call3, ptr %funcname.addr, align 8, !dbg !2238, !tbaa !868
  %6 = load ptr, ptr %funcname.addr, align 8, !dbg !2239, !tbaa !868
  %tobool4 = icmp ne ptr %6, null, !dbg !2239
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2241

if.then5:                                         ; preds = %if.end
  br label %bad, !dbg !2242

if.end6:                                          ; preds = %if.end
  br label %if.end7, !dbg !2243

if.else:                                          ; preds = %entry
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %7 = load ptr, ptr %filename.addr, align 8, !dbg !2244, !tbaa !868
  %8 = load ptr, ptr %funcname.addr, align 8, !dbg !2245, !tbaa !868
  %9 = load i32, ptr %py_line.addr, align 4, !dbg !2246, !tbaa !951
  %call8 = call ptr @PyCode_NewEmpty(ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !2247
  store ptr %call8, ptr %py_code, align 8, !dbg !2248, !tbaa !868
  %10 = load ptr, ptr %py_funcname, align 8, !dbg !2249, !tbaa !868
  call void @Py_XDECREF(ptr noundef %10), !dbg !2249
  %11 = load ptr, ptr %py_code, align 8, !dbg !2250, !tbaa !868
  store ptr %11, ptr %retval, align 8, !dbg !2251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2251

bad:                                              ; preds = %if.then5, %if.then2
  tail call void @llvm.dbg.label(metadata !2214), !dbg !2252
  %12 = load ptr, ptr %py_funcname, align 8, !dbg !2253, !tbaa !868
  call void @Py_XDECREF(ptr noundef %12), !dbg !2253
  store ptr null, ptr %retval, align 8, !dbg !2254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %bad, %if.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_funcname) #8, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 8, ptr %py_code) #8, !dbg !2255
  %13 = load ptr, ptr %retval, align 8, !dbg !2255
  ret ptr %13, !dbg !2255
}

; Function Attrs: nounwind uwtable
define internal void @__pyx_insert_code_object(i32 noundef %code_line, ptr noundef %code_object) #0 !dbg !2256 {
entry:
  %code_line.addr = alloca i32, align 4
  %code_object.addr = alloca ptr, align 8
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  %entries = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %new_max = alloca i32, align 4
  store i32 %code_line, ptr %code_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %code_line.addr, metadata !2260, metadata !DIExpression()), !dbg !2271
  store ptr %code_object, ptr %code_object.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %code_object.addr, metadata !2261, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #8, !dbg !2273
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !2262, metadata !DIExpression()), !dbg !2274
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !2273
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2263, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #8, !dbg !2276
  tail call void @llvm.dbg.declare(metadata ptr %entries, metadata !2264, metadata !DIExpression()), !dbg !2277
  %0 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2278, !tbaa !2174
  store ptr %0, ptr %entries, align 8, !dbg !2277, !tbaa !868
  %1 = load i32, ptr %code_line.addr, align 4, !dbg !2279, !tbaa !951
  %tobool = icmp ne i32 %1, 0, !dbg !2279
  %lnot = xor i1 %tobool, true, !dbg !2279
  %lnot1 = xor i1 %lnot, true, !dbg !2279
  %lnot2 = xor i1 %lnot1, true, !dbg !2279
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2279
  %conv = sext i32 %lnot.ext to i64, !dbg !2279
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2279
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2279
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2281

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !2282

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %entries, align 8, !dbg !2284, !tbaa !868
  %tobool4 = icmp ne ptr %2, null, !dbg !2284
  %lnot5 = xor i1 %tobool4, true, !dbg !2284
  %lnot7 = xor i1 %lnot5, true, !dbg !2284
  %lnot9 = xor i1 %lnot7, true, !dbg !2284
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !2284
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !2284
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !2284
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !2284
  br i1 %tobool13, label %if.then14, label %if.end28, !dbg !2286

if.then14:                                        ; preds = %if.end
  %call = call ptr @PyMem_Malloc(i64 noundef 1024), !dbg !2287
  store ptr %call, ptr %entries, align 8, !dbg !2289, !tbaa !868
  %3 = load ptr, ptr %entries, align 8, !dbg !2290, !tbaa !868
  %tobool15 = icmp ne ptr %3, null, !dbg !2290
  %lnot16 = xor i1 %tobool15, true, !dbg !2290
  %lnot18 = xor i1 %lnot16, true, !dbg !2290
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2290
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2290
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !2290
  %tobool22 = icmp ne i64 %expval21, 0, !dbg !2290
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !2292

if.then23:                                        ; preds = %if.then14
  %4 = load ptr, ptr %entries, align 8, !dbg !2293, !tbaa !868
  store ptr %4, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2295, !tbaa !2174
  store i32 64, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !dbg !2296, !tbaa !2297
  store i32 1, ptr @__pyx_code_cache, align 8, !dbg !2298, !tbaa !2181
  %5 = load i32, ptr %code_line.addr, align 4, !dbg !2299, !tbaa !951
  %6 = load ptr, ptr %entries, align 8, !dbg !2300, !tbaa !868
  %arrayidx = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %6, i64 0, !dbg !2300
  %code_line24 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx, i32 0, i32 1, !dbg !2301
  store i32 %5, ptr %code_line24, align 8, !dbg !2302, !tbaa !2189
  %7 = load ptr, ptr %code_object.addr, align 8, !dbg !2303, !tbaa !868
  %8 = load ptr, ptr %entries, align 8, !dbg !2304, !tbaa !868
  %arrayidx25 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %8, i64 0, !dbg !2304
  %code_object26 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx25, i32 0, i32 0, !dbg !2305
  store ptr %7, ptr %code_object26, align 8, !dbg !2306, !tbaa !2198
  %9 = load ptr, ptr %code_object.addr, align 8, !dbg !2307, !tbaa !868
  call void @Py_INCREF(ptr noundef %9), !dbg !2307
  br label %if.end27, !dbg !2308

if.end27:                                         ; preds = %if.then23, %if.then14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !2309

if.end28:                                         ; preds = %if.end
  %10 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2310, !tbaa !2174
  %11 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2311, !tbaa !2181
  %12 = load i32, ptr %code_line.addr, align 4, !dbg !2312, !tbaa !951
  %call29 = call i32 @__pyx_bisect_code_objects(ptr noundef %10, i32 noundef %11, i32 noundef %12), !dbg !2313
  store i32 %call29, ptr %pos, align 4, !dbg !2314, !tbaa !951
  %13 = load i32, ptr %pos, align 4, !dbg !2315, !tbaa !951
  %14 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2316, !tbaa !2181
  %cmp = icmp slt i32 %13, %14, !dbg !2317
  br i1 %cmp, label %land.lhs.true, label %if.end49, !dbg !2318

land.lhs.true:                                    ; preds = %if.end28
  %15 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2319, !tbaa !2174
  %16 = load i32, ptr %pos, align 4, !dbg !2319, !tbaa !951
  %idxprom = sext i32 %16 to i64, !dbg !2319
  %arrayidx31 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %15, i64 %idxprom, !dbg !2319
  %code_line32 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx31, i32 0, i32 1, !dbg !2319
  %17 = load i32, ptr %code_line32, align 8, !dbg !2319, !tbaa !2189
  %18 = load i32, ptr %code_line.addr, align 4, !dbg !2319, !tbaa !951
  %cmp33 = icmp eq i32 %17, %18, !dbg !2319
  %lnot35 = xor i1 %cmp33, true, !dbg !2319
  %lnot37 = xor i1 %lnot35, true, !dbg !2319
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2319
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2319
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !2319
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !2319
  br i1 %tobool41, label %if.then42, label %if.end49, !dbg !2320

if.then42:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !2321
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2265, metadata !DIExpression()), !dbg !2322
  %19 = load ptr, ptr %entries, align 8, !dbg !2323, !tbaa !868
  %20 = load i32, ptr %pos, align 4, !dbg !2324, !tbaa !951
  %idxprom43 = sext i32 %20 to i64, !dbg !2323
  %arrayidx44 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %19, i64 %idxprom43, !dbg !2323
  %code_object45 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx44, i32 0, i32 0, !dbg !2325
  %21 = load ptr, ptr %code_object45, align 8, !dbg !2325, !tbaa !2198
  store ptr %21, ptr %tmp, align 8, !dbg !2322, !tbaa !868
  %22 = load ptr, ptr %code_object.addr, align 8, !dbg !2326, !tbaa !868
  %23 = load ptr, ptr %entries, align 8, !dbg !2327, !tbaa !868
  %24 = load i32, ptr %pos, align 4, !dbg !2328, !tbaa !951
  %idxprom46 = sext i32 %24 to i64, !dbg !2327
  %arrayidx47 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %23, i64 %idxprom46, !dbg !2327
  %code_object48 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx47, i32 0, i32 0, !dbg !2329
  store ptr %22, ptr %code_object48, align 8, !dbg !2330, !tbaa !2198
  %25 = load ptr, ptr %tmp, align 8, !dbg !2331, !tbaa !868
  call void @Py_DECREF(ptr noundef %25), !dbg !2331
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !2332
  br label %cleanup80

if.end49:                                         ; preds = %land.lhs.true, %if.end28
  %26 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2333, !tbaa !2181
  %27 = load i32, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !dbg !2334, !tbaa !2297
  %cmp50 = icmp eq i32 %26, %27, !dbg !2335
  br i1 %cmp50, label %if.then52, label %if.end67, !dbg !2336

if.then52:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_max) #8, !dbg !2337
  tail call void @llvm.dbg.declare(metadata ptr %new_max, metadata !2268, metadata !DIExpression()), !dbg !2338
  %28 = load i32, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !dbg !2339, !tbaa !2297
  %add = add i32 %28, 64, !dbg !2340
  store i32 %add, ptr %new_max, align 4, !dbg !2338, !tbaa !951
  %29 = load ptr, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2341, !tbaa !2174
  %30 = load i32, ptr %new_max, align 4, !dbg !2342, !tbaa !951
  %conv53 = sext i32 %30 to i64, !dbg !2343
  %mul = mul i64 %conv53, 16, !dbg !2344
  %call54 = call ptr @PyMem_Realloc(ptr noundef %29, i64 noundef %mul), !dbg !2345
  store ptr %call54, ptr %entries, align 8, !dbg !2346, !tbaa !868
  %31 = load ptr, ptr %entries, align 8, !dbg !2347, !tbaa !868
  %tobool55 = icmp ne ptr %31, null, !dbg !2347
  %lnot56 = xor i1 %tobool55, true, !dbg !2347
  %lnot58 = xor i1 %lnot56, true, !dbg !2347
  %lnot60 = xor i1 %lnot58, true, !dbg !2347
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !2347
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !2347
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !2347
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !2347
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !2349

if.then65:                                        ; preds = %if.then52
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2350

if.end66:                                         ; preds = %if.then52
  %32 = load ptr, ptr %entries, align 8, !dbg !2352, !tbaa !868
  store ptr %32, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 2), align 8, !dbg !2353, !tbaa !2174
  %33 = load i32, ptr %new_max, align 4, !dbg !2354, !tbaa !951
  store i32 %33, ptr getelementptr inbounds (%struct.__Pyx_CodeObjectCache, ptr @__pyx_code_cache, i32 0, i32 1), align 4, !dbg !2355, !tbaa !2297
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2356
  br label %cleanup, !dbg !2356

cleanup:                                          ; preds = %if.end66, %if.then65
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_max) #8, !dbg !2356
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end67, !dbg !2357

if.end67:                                         ; preds = %cleanup.cont, %if.end49
  %34 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2358, !tbaa !2181
  store i32 %34, ptr %i, align 4, !dbg !2360, !tbaa !951
  br label %for.cond, !dbg !2361

for.cond:                                         ; preds = %for.inc, %if.end67
  %35 = load i32, ptr %i, align 4, !dbg !2362, !tbaa !951
  %36 = load i32, ptr %pos, align 4, !dbg !2364, !tbaa !951
  %cmp68 = icmp sgt i32 %35, %36, !dbg !2365
  br i1 %cmp68, label %for.body, label %for.end, !dbg !2366

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %entries, align 8, !dbg !2367, !tbaa !868
  %38 = load i32, ptr %i, align 4, !dbg !2369, !tbaa !951
  %idxprom70 = sext i32 %38 to i64, !dbg !2367
  %arrayidx71 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %37, i64 %idxprom70, !dbg !2367
  %39 = load ptr, ptr %entries, align 8, !dbg !2370, !tbaa !868
  %40 = load i32, ptr %i, align 4, !dbg !2371, !tbaa !951
  %sub = sub i32 %40, 1, !dbg !2372
  %idxprom72 = sext i32 %sub to i64, !dbg !2370
  %arrayidx73 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %39, i64 %idxprom72, !dbg !2370
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx71, ptr align 8 %arrayidx73, i64 16, i1 false), !dbg !2370, !tbaa.struct !2373
  br label %for.inc, !dbg !2374

for.inc:                                          ; preds = %for.body
  %41 = load i32, ptr %i, align 4, !dbg !2375, !tbaa !951
  %dec = add i32 %41, -1, !dbg !2375
  store i32 %dec, ptr %i, align 4, !dbg !2375, !tbaa !951
  br label %for.cond, !dbg !2376, !llvm.loop !2377

for.end:                                          ; preds = %for.cond
  %42 = load i32, ptr %code_line.addr, align 4, !dbg !2379, !tbaa !951
  %43 = load ptr, ptr %entries, align 8, !dbg !2380, !tbaa !868
  %44 = load i32, ptr %pos, align 4, !dbg !2381, !tbaa !951
  %idxprom74 = sext i32 %44 to i64, !dbg !2380
  %arrayidx75 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %43, i64 %idxprom74, !dbg !2380
  %code_line76 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx75, i32 0, i32 1, !dbg !2382
  store i32 %42, ptr %code_line76, align 8, !dbg !2383, !tbaa !2189
  %45 = load ptr, ptr %code_object.addr, align 8, !dbg !2384, !tbaa !868
  %46 = load ptr, ptr %entries, align 8, !dbg !2385, !tbaa !868
  %47 = load i32, ptr %pos, align 4, !dbg !2386, !tbaa !951
  %idxprom77 = sext i32 %47 to i64, !dbg !2385
  %arrayidx78 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %46, i64 %idxprom77, !dbg !2385
  %code_object79 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx78, i32 0, i32 0, !dbg !2387
  store ptr %45, ptr %code_object79, align 8, !dbg !2388, !tbaa !2198
  %48 = load i32, ptr @__pyx_code_cache, align 8, !dbg !2389, !tbaa !2181
  %inc = add i32 %48, 1, !dbg !2389
  store i32 %inc, ptr @__pyx_code_cache, align 8, !dbg !2389, !tbaa !2181
  %49 = load ptr, ptr %code_object.addr, align 8, !dbg !2390, !tbaa !868
  call void @Py_INCREF(ptr noundef %49), !dbg !2390
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2391
  br label %cleanup80, !dbg !2391

cleanup80:                                        ; preds = %for.end, %cleanup, %if.then42, %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #8, !dbg !2391
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !2391
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #8, !dbg !2391
  %cleanup.dest83 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest83, label %unreachable [
    i32 0, label %cleanup.cont84
    i32 1, label %cleanup.cont84
  ]

cleanup.cont84:                                   ; preds = %cleanup80, %cleanup80
  ret void, !dbg !2391

unreachable:                                      ; preds = %cleanup80
  unreachable
}

declare !dbg !2392 ptr @PyFrame_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2396 i32 @PyTraceBack_Here(ptr noundef) #1

declare !dbg !2400 ptr @_PyObject_GetDictPtr(ptr noundef) #1

declare !dbg !2403 ptr @_PyDict_GetItem_KnownHash(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @__Pyx_PyObject_GetAttrStr(ptr noundef %obj, ptr noundef %attr_name) #3 !dbg !2406 {
entry:
  %retval = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %attr_name.addr = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !2408, metadata !DIExpression()), !dbg !2411
  store ptr %attr_name, ptr %attr_name.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %attr_name.addr, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #8, !dbg !2413
  tail call void @llvm.dbg.declare(metadata ptr %tp, metadata !2410, metadata !DIExpression()), !dbg !2414
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !2415, !tbaa !868
  %call = call ptr @Py_TYPE(ptr noundef %0), !dbg !2415
  store ptr %call, ptr %tp, align 8, !dbg !2414, !tbaa !868
  %1 = load ptr, ptr %tp, align 8, !dbg !2416, !tbaa !868
  %tp_getattro = getelementptr inbounds %struct._typeobject, ptr %1, i32 0, i32 16, !dbg !2416
  %2 = load ptr, ptr %tp_getattro, align 8, !dbg !2416, !tbaa !2418
  %tobool = icmp ne ptr %2, null, !dbg !2416
  %lnot = xor i1 %tobool, true, !dbg !2416
  %lnot1 = xor i1 %lnot, true, !dbg !2416
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2416
  %conv = sext i32 %lnot.ext to i64, !dbg !2416
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2416
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2416
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2421

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tp, align 8, !dbg !2422, !tbaa !868
  %tp_getattro3 = getelementptr inbounds %struct._typeobject, ptr %3, i32 0, i32 16, !dbg !2423
  %4 = load ptr, ptr %tp_getattro3, align 8, !dbg !2423, !tbaa !2418
  %5 = load ptr, ptr %obj.addr, align 8, !dbg !2424, !tbaa !868
  %6 = load ptr, ptr %attr_name.addr, align 8, !dbg !2425, !tbaa !868
  %call4 = call ptr %4(ptr noundef %5, ptr noundef %6), !dbg !2422
  store ptr %call4, ptr %retval, align 8, !dbg !2426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2426

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %obj.addr, align 8, !dbg !2427, !tbaa !868
  %8 = load ptr, ptr %attr_name.addr, align 8, !dbg !2428, !tbaa !868
  %call5 = call ptr @PyObject_GetAttr(ptr noundef %7, ptr noundef %8), !dbg !2429
  store ptr %call5, ptr %retval, align 8, !dbg !2430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2430

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #8, !dbg !2431
  %9 = load ptr, ptr %retval, align 8, !dbg !2431
  ret ptr %9, !dbg !2431
}

declare !dbg !2432 i32 @PyObject_Not(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Py_TYPE(ptr noundef %ob) #3 !dbg !2433 {
entry:
  %ob.addr = alloca ptr, align 8
  store ptr %ob, ptr %ob.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %ob.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  %0 = load ptr, ptr %ob.addr, align 8, !dbg !2439, !tbaa !868
  %ob_type = getelementptr inbounds %struct._object, ptr %0, i32 0, i32 1, !dbg !2440
  %1 = load ptr, ptr %ob_type, align 8, !dbg !2440, !tbaa !2441
  ret ptr %1, !dbg !2442
}

declare !dbg !2443 ptr @PyObject_GetAttr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @__pyx_bisect_code_objects(ptr noundef %entries, i32 noundef %count, i32 noundef %code_line) #0 !dbg !2444 {
entry:
  %retval = alloca i32, align 4
  %entries.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %code_line.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %mid = alloca i32, align 4
  %end = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entries, ptr %entries.addr, align 8, !tbaa !868
  tail call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !2448, metadata !DIExpression()), !dbg !2454
  store i32 %count, ptr %count.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2449, metadata !DIExpression()), !dbg !2455
  store i32 %code_line, ptr %code_line.addr, align 4, !tbaa !951
  tail call void @llvm.dbg.declare(metadata ptr %code_line.addr, metadata !2450, metadata !DIExpression()), !dbg !2456
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #8, !dbg !2457
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !2451, metadata !DIExpression()), !dbg !2458
  store i32 0, ptr %start, align 4, !dbg !2458, !tbaa !951
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #8, !dbg !2457
  tail call void @llvm.dbg.declare(metadata ptr %mid, metadata !2452, metadata !DIExpression()), !dbg !2459
  store i32 0, ptr %mid, align 4, !dbg !2459, !tbaa !951
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #8, !dbg !2457
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !2453, metadata !DIExpression()), !dbg !2460
  %0 = load i32, ptr %count.addr, align 4, !dbg !2461, !tbaa !951
  %sub = sub i32 %0, 1, !dbg !2462
  store i32 %sub, ptr %end, align 4, !dbg !2460, !tbaa !951
  %1 = load i32, ptr %end, align 4, !dbg !2463, !tbaa !951
  %cmp = icmp sge i32 %1, 0, !dbg !2465
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2466

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %code_line.addr, align 4, !dbg !2467, !tbaa !951
  %3 = load ptr, ptr %entries.addr, align 8, !dbg !2468, !tbaa !868
  %4 = load i32, ptr %end, align 4, !dbg !2469, !tbaa !951
  %idxprom = sext i32 %4 to i64, !dbg !2468
  %arrayidx = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %3, i64 %idxprom, !dbg !2468
  %code_line1 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx, i32 0, i32 1, !dbg !2470
  %5 = load i32, ptr %code_line1, align 8, !dbg !2470, !tbaa !2189
  %cmp2 = icmp sgt i32 %2, %5, !dbg !2471
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2472

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %count.addr, align 4, !dbg !2473, !tbaa !951
  store i32 %6, ptr %retval, align 4, !dbg !2475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2475

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond, !dbg !2476

while.cond:                                       ; preds = %if.end18, %if.end
  %7 = load i32, ptr %start, align 4, !dbg !2477, !tbaa !951
  %8 = load i32, ptr %end, align 4, !dbg !2478, !tbaa !951
  %cmp3 = icmp slt i32 %7, %8, !dbg !2479
  br i1 %cmp3, label %while.body, label %while.end, !dbg !2476

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %start, align 4, !dbg !2480, !tbaa !951
  %10 = load i32, ptr %end, align 4, !dbg !2482, !tbaa !951
  %11 = load i32, ptr %start, align 4, !dbg !2483, !tbaa !951
  %sub4 = sub i32 %10, %11, !dbg !2484
  %div = sdiv i32 %sub4, 2, !dbg !2485
  %add = add i32 %9, %div, !dbg !2486
  store i32 %add, ptr %mid, align 4, !dbg !2487, !tbaa !951
  %12 = load i32, ptr %code_line.addr, align 4, !dbg !2488, !tbaa !951
  %13 = load ptr, ptr %entries.addr, align 8, !dbg !2490, !tbaa !868
  %14 = load i32, ptr %mid, align 4, !dbg !2491, !tbaa !951
  %idxprom5 = sext i32 %14 to i64, !dbg !2490
  %arrayidx6 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %13, i64 %idxprom5, !dbg !2490
  %code_line7 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx6, i32 0, i32 1, !dbg !2492
  %15 = load i32, ptr %code_line7, align 8, !dbg !2492, !tbaa !2189
  %cmp8 = icmp slt i32 %12, %15, !dbg !2493
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !2494

if.then9:                                         ; preds = %while.body
  %16 = load i32, ptr %mid, align 4, !dbg !2495, !tbaa !951
  store i32 %16, ptr %end, align 4, !dbg !2497, !tbaa !951
  br label %if.end18, !dbg !2498

if.else:                                          ; preds = %while.body
  %17 = load i32, ptr %code_line.addr, align 4, !dbg !2499, !tbaa !951
  %18 = load ptr, ptr %entries.addr, align 8, !dbg !2501, !tbaa !868
  %19 = load i32, ptr %mid, align 4, !dbg !2502, !tbaa !951
  %idxprom10 = sext i32 %19 to i64, !dbg !2501
  %arrayidx11 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %18, i64 %idxprom10, !dbg !2501
  %code_line12 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx11, i32 0, i32 1, !dbg !2503
  %20 = load i32, ptr %code_line12, align 8, !dbg !2503, !tbaa !2189
  %cmp13 = icmp sgt i32 %17, %20, !dbg !2504
  br i1 %cmp13, label %if.then14, label %if.else16, !dbg !2505

if.then14:                                        ; preds = %if.else
  %21 = load i32, ptr %mid, align 4, !dbg !2506, !tbaa !951
  %add15 = add i32 %21, 1, !dbg !2508
  store i32 %add15, ptr %start, align 4, !dbg !2509, !tbaa !951
  br label %if.end17, !dbg !2510

if.else16:                                        ; preds = %if.else
  %22 = load i32, ptr %mid, align 4, !dbg !2511, !tbaa !951
  store i32 %22, ptr %retval, align 4, !dbg !2513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2513

if.end17:                                         ; preds = %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then9
  br label %while.cond, !dbg !2476, !llvm.loop !2514

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %code_line.addr, align 4, !dbg !2516, !tbaa !951
  %24 = load ptr, ptr %entries.addr, align 8, !dbg !2518, !tbaa !868
  %25 = load i32, ptr %mid, align 4, !dbg !2519, !tbaa !951
  %idxprom19 = sext i32 %25 to i64, !dbg !2518
  %arrayidx20 = getelementptr %struct.__Pyx_CodeObjectCacheEntry, ptr %24, i64 %idxprom19, !dbg !2518
  %code_line21 = getelementptr inbounds %struct.__Pyx_CodeObjectCacheEntry, ptr %arrayidx20, i32 0, i32 1, !dbg !2520
  %26 = load i32, ptr %code_line21, align 8, !dbg !2520, !tbaa !2189
  %cmp22 = icmp sle i32 %23, %26, !dbg !2521
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !2522

if.then23:                                        ; preds = %while.end
  %27 = load i32, ptr %mid, align 4, !dbg !2523, !tbaa !951
  store i32 %27, ptr %retval, align 4, !dbg !2525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2525

if.else24:                                        ; preds = %while.end
  %28 = load i32, ptr %mid, align 4, !dbg !2526, !tbaa !951
  %add25 = add i32 %28, 1, !dbg !2528
  store i32 %add25, ptr %retval, align 4, !dbg !2529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2529

cleanup:                                          ; preds = %if.else24, %if.then23, %if.else16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #8, !dbg !2530
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #8, !dbg !2530
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #8, !dbg !2530
  %29 = load i32, ptr %retval, align 4, !dbg !2530
  ret i32 %29, !dbg !2530
}

declare !dbg !2531 ptr @PyUnicode_FromFormat(ptr noundef, ...) #1

declare !dbg !2534 ptr @PyUnicode_AsUTF8(ptr noundef) #1

declare !dbg !2537 ptr @PyMem_Malloc(i64 noundef) #1

declare !dbg !2541 ptr @PyMem_Realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!844, !845, !846, !847, !848}
!llvm.ident = !{!849}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__pyx_module_is_main_pysam__libcsamtools", scope: !2, file: !3, line: 1247, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !405, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pysam/libcsamtools.c", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build/aidengro/spack-stage-py-pysam-0.21.0-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z/spack-src", checksumkind: CSK_MD5, checksum: "a2cb825479cd3d1b8d72ea03ff4972d5")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 676, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/object.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "059c0d359e891772b7814c88f6fa55ff")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "PYGEN_RETURN", value: 0)
!10 = !DIEnumerator(name: "PYGEN_ERROR", value: -1)
!11 = !DIEnumerator(name: "PYGEN_NEXT", value: 1)
!12 = !{!13, !14, !56, !323, !254, !361, !380, !399, !321}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !16, line: 18, baseType: !17)
!16 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pytypedefs.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "38482a77e5b3188ef0e82980904fb142")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 100, size: 128, elements: !18)
!18 = !{!19, !27}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !17, file: !6, line: 102, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !21, line: 131, baseType: !22)
!21 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pyport.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "a198b01de4c7067d893cd27dc3108f8a")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !23, line: 108, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !25, line: 194, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!26 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !17, file: !6, line: 103, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !16, line: 20, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !31, line: 148, size: 3264, elements: !32)
!31 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/object.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "5cecebbdf3585641a3ef3ab354ac3a06")
!32 = !{!33, !39, !43, !44, !45, !50, !51, !57, !62, !81, !83, !136, !167, !179, !185, !186, !187, !189, !191, !223, !225, !226, !235, !236, !241, !242, !244, !246, !257, !261, !280, !281, !282, !284, !286, !287, !289, !294, !299, !304, !305, !306, !307, !308, !309, !310, !311, !313, !314}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !31, line: 149, baseType: !34, size: 192)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !6, line: 112, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 109, size: 192, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !6, line: 110, baseType: !15, size: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !35, file: !6, line: 111, baseType: !20, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !30, file: !31, line: 150, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !30, file: !31, line: 151, baseType: !20, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !30, file: !31, line: 151, baseType: !20, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !30, file: !31, line: 155, baseType: !46, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !6, line: 213, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !14}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_vectorcall_offset", scope: !30, file: !31, line: 156, baseType: !20, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !30, file: !31, line: 157, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !6, line: 214, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!14, !14, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !30, file: !31, line: 158, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !6, line: 216, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!7, !14, !56, !14}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_async", scope: !30, file: !31, line: 159, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyAsyncMethods", file: !31, line: 135, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 130, size: 256, elements: !66)
!66 = !{!67, !72, !73, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "am_await", scope: !65, file: !31, line: 131, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !6, line: 196, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!14, !14}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "am_aiter", scope: !65, file: !31, line: 132, baseType: !68, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "am_anext", scope: !65, file: !31, line: 133, baseType: !68, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "am_send", scope: !65, file: !31, line: 134, baseType: !75, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "sendfunc", file: !31, line: 128, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !14, !14, !80}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySendResult", file: !6, line: 680, baseType: !5)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !30, file: !31, line: 161, baseType: !82, size: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !6, line: 218, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !30, file: !31, line: 165, baseType: !84, size: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !31, line: 106, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 61, size: 2304, elements: !87)
!87 = !{!88, !93, !94, !95, !96, !97, !102, !103, !104, !105, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !86, file: !31, line: 66, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !6, line: 197, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!14, !14, !14}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !86, file: !31, line: 67, baseType: !89, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !86, file: !31, line: 68, baseType: !89, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !86, file: !31, line: 69, baseType: !89, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !86, file: !31, line: 70, baseType: !89, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !86, file: !31, line: 71, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !6, line: 198, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!14, !14, !14, !14}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !86, file: !31, line: 72, baseType: !68, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !86, file: !31, line: 73, baseType: !68, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !86, file: !31, line: 74, baseType: !68, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !86, file: !31, line: 75, baseType: !106, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !6, line: 199, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!7, !14}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !86, file: !31, line: 76, baseType: !68, size: 64, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !86, file: !31, line: 77, baseType: !89, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !86, file: !31, line: 78, baseType: !89, size: 64, offset: 768)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !86, file: !31, line: 79, baseType: !89, size: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !86, file: !31, line: 80, baseType: !89, size: 64, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !86, file: !31, line: 81, baseType: !89, size: 64, offset: 960)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !86, file: !31, line: 82, baseType: !68, size: 64, offset: 1024)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !86, file: !31, line: 83, baseType: !13, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !86, file: !31, line: 84, baseType: !68, size: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !86, file: !31, line: 86, baseType: !89, size: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !86, file: !31, line: 87, baseType: !89, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !86, file: !31, line: 88, baseType: !89, size: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !86, file: !31, line: 89, baseType: !89, size: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !86, file: !31, line: 90, baseType: !98, size: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !86, file: !31, line: 91, baseType: !89, size: 64, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !86, file: !31, line: 92, baseType: !89, size: 64, offset: 1600)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !86, file: !31, line: 93, baseType: !89, size: 64, offset: 1664)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !86, file: !31, line: 94, baseType: !89, size: 64, offset: 1728)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !86, file: !31, line: 95, baseType: !89, size: 64, offset: 1792)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !86, file: !31, line: 97, baseType: !89, size: 64, offset: 1856)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !86, file: !31, line: 98, baseType: !89, size: 64, offset: 1920)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !86, file: !31, line: 99, baseType: !89, size: 64, offset: 1984)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !86, file: !31, line: 100, baseType: !89, size: 64, offset: 2048)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !86, file: !31, line: 102, baseType: !68, size: 64, offset: 2112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_matrix_multiply", scope: !86, file: !31, line: 104, baseType: !89, size: 64, offset: 2176)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_matrix_multiply", scope: !86, file: !31, line: 105, baseType: !89, size: 64, offset: 2240)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !30, file: !31, line: 166, baseType: !137, size: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !31, line: 120, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 108, size: 640, elements: !140)
!140 = !{!141, !146, !147, !152, !153, !154, !159, !160, !165, !166}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !139, file: !31, line: 109, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !6, line: 200, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!20, !14}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !139, file: !31, line: 110, baseType: !89, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !139, file: !31, line: 111, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !6, line: 201, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!14, !14, !20}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !139, file: !31, line: 112, baseType: !148, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !139, file: !31, line: 113, baseType: !13, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !139, file: !31, line: 114, baseType: !155, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !6, line: 203, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!7, !14, !20, !14}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !139, file: !31, line: 115, baseType: !13, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !139, file: !31, line: 116, baseType: !161, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !6, line: 207, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!7, !14, !14}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !139, file: !31, line: 118, baseType: !89, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !139, file: !31, line: 119, baseType: !148, size: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !30, file: !31, line: 167, baseType: !168, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !31, line: 126, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 122, size: 192, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !170, file: !31, line: 123, baseType: !142, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !170, file: !31, line: 124, baseType: !89, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !170, file: !31, line: 125, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !6, line: 205, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!7, !14, !14, !14}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !30, file: !31, line: 171, baseType: !180, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !6, line: 219, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !14}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !21, line: 145, baseType: !20)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !30, file: !31, line: 172, baseType: !98, size: 64, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !30, file: !31, line: 173, baseType: !82, size: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !30, file: !31, line: 174, baseType: !188, size: 64, offset: 1152)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !6, line: 215, baseType: !90)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !30, file: !31, line: 175, baseType: !190, size: 64, offset: 1216)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !6, line: 217, baseType: !176)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !30, file: !31, line: 178, baseType: !192, size: 64, offset: 1280)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !31, line: 140, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 137, size: 128, elements: !195)
!195 = !{!196, !218}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !194, file: !31, line: 138, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !31, line: 54, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!7, !14, !201, !7}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !203, line: 33, baseType: !204)
!203 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pybuffer.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "b062a75218ff363c388d03c953e9be96")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 20, size: 640, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !215, !216, !217}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !204, file: !203, line: 21, baseType: !13, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !204, file: !203, line: 22, baseType: !14, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !204, file: !203, line: 23, baseType: !20, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !204, file: !203, line: 24, baseType: !20, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !204, file: !203, line: 26, baseType: !7, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !204, file: !203, line: 27, baseType: !7, size: 32, offset: 288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !204, file: !203, line: 28, baseType: !56, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !204, file: !203, line: 29, baseType: !214, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !204, file: !203, line: 30, baseType: !214, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !204, file: !203, line: 31, baseType: !214, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !204, file: !203, line: 32, baseType: !13, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !194, file: !31, line: 139, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !31, line: 55, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !14, !201}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !30, file: !31, line: 181, baseType: !224, size: 64, offset: 1344)
!224 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !30, file: !31, line: 183, baseType: !40, size: 64, offset: 1408)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !30, file: !31, line: 187, baseType: !227, size: 64, offset: 1472)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !6, line: 209, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!7, !14, !231, !13}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !6, line: 208, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!7, !14, !13}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !30, file: !31, line: 190, baseType: !106, size: 64, offset: 1536)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !30, file: !31, line: 194, baseType: !237, size: 64, offset: 1600)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !6, line: 220, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!14, !14, !14, !7}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !30, file: !31, line: 197, baseType: !20, size: 64, offset: 1664)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !30, file: !31, line: 200, baseType: !243, size: 64, offset: 1728)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !6, line: 221, baseType: !69)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !30, file: !31, line: 201, baseType: !245, size: 64, offset: 1792)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !6, line: 222, baseType: !69)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !30, file: !31, line: 204, baseType: !247, size: 64, offset: 1856)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !16, line: 14, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !250, line: 54, size: 256, elements: !251)
!250 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/methodobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "d16253797aba078267dcb5d0afce23bc")
!251 = !{!252, !253, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !249, file: !250, line: 55, baseType: !40, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !249, file: !250, line: 56, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !250, line: 19, baseType: !90)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !249, file: !250, line: 57, baseType: !7, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !249, file: !250, line: 59, baseType: !40, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !30, file: !31, line: 205, baseType: !258, size: 64, offset: 1920)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !16, line: 16, baseType: !260)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !16, line: 16, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !30, file: !31, line: 206, baseType: !262, size: 64, offset: 1984)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !16, line: 15, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !265, line: 11, size: 320, elements: !266)
!265 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/descrobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "242ee4d5fc45bad34457db881bf071ca")
!266 = !{!267, !268, !273, !278, !279}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !265, line: 12, baseType: !40, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !264, file: !265, line: 13, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !265, line: 8, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!14, !14, !13}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !264, file: !265, line: 14, baseType: !274, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !265, line: 9, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!7, !14, !14, !13}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !264, file: !265, line: 15, baseType: !40, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !264, file: !265, line: 16, baseType: !13, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !30, file: !31, line: 208, baseType: !28, size: 64, offset: 2048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !30, file: !31, line: 209, baseType: !14, size: 64, offset: 2112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !30, file: !31, line: 210, baseType: !283, size: 64, offset: 2176)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 223, baseType: !99)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !30, file: !31, line: 211, baseType: !285, size: 64, offset: 2240)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 224, baseType: !176)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !30, file: !31, line: 212, baseType: !20, size: 64, offset: 2304)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !30, file: !31, line: 213, baseType: !288, size: 64, offset: 2368)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 225, baseType: !176)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !30, file: !31, line: 214, baseType: !290, size: 64, offset: 2432)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 227, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!14, !28, !20}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !30, file: !31, line: 215, baseType: !295, size: 64, offset: 2496)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 226, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!14, !28, !14, !14}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !30, file: !31, line: 216, baseType: !300, size: 64, offset: 2560)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 212, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !13}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !30, file: !31, line: 217, baseType: !106, size: 64, offset: 2624)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !30, file: !31, line: 218, baseType: !14, size: 64, offset: 2688)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !30, file: !31, line: 219, baseType: !14, size: 64, offset: 2752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !30, file: !31, line: 220, baseType: !14, size: 64, offset: 2816)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !30, file: !31, line: 221, baseType: !14, size: 64, offset: 2880)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !30, file: !31, line: 222, baseType: !14, size: 64, offset: 2944)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !30, file: !31, line: 223, baseType: !46, size: 64, offset: 3008)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !30, file: !31, line: 226, baseType: !312, size: 32, offset: 3072)
!312 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !30, file: !31, line: 228, baseType: !46, size: 64, offset: 3136)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tp_vectorcall", scope: !30, file: !31, line: 229, baseType: !315, size: 64, offset: 3200)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "vectorcallfunc", file: !31, line: 57, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!14, !14, !319, !321, !14}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !322, line: 70, baseType: !224)
!322 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !16, line: 21, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyCodeObject", file: !326, line: 103, size: 1536, elements: !327)
!326 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/code.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "0b18b017cf6ecc9860048f5ec02e4f52")
!327 = !{!328, !329, !330, !331, !332, !333, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !325, file: !326, line: 103, baseType: !34, size: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "co_exceptiontable", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "co_warmup", scope: !325, file: !326, line: 103, baseType: !334, size: 16, offset: 416)
!334 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_co_linearray_entry_size", scope: !325, file: !326, line: 103, baseType: !334, size: 16, offset: 432)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "co_posonlyargcount", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 480)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 544)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocalsplus", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 608)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "co_nplaincellvars", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 672)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "co_ncellvars", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "co_nfreevars", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 736)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "co_localsplusnames", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "co_localspluskinds", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "co_qualname", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "co_linetable", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 1152)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_co_code", scope: !325, file: !326, line: 103, baseType: !14, size: 64, offset: 1216)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_co_linearray", scope: !325, file: !326, line: 103, baseType: !56, size: 64, offset: 1280)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_co_firsttraceable", scope: !325, file: !326, line: 103, baseType: !7, size: 32, offset: 1344)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "co_extra", scope: !325, file: !326, line: 103, baseType: !13, size: 64, offset: 1408)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "co_code_adaptive", scope: !325, file: !326, line: 103, baseType: !358, size: 8, offset: 1472)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 1)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !363, line: 29, baseType: !364)
!363 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/dictobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "ca445c2681ff34d200fbf38fa4280db0")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 11, size: 384, elements: !365)
!365 = !{!366, !367, !368, !372, !376}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !364, file: !363, line: 12, baseType: !15, size: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !364, file: !363, line: 15, baseType: !20, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ma_version_tag", scope: !364, file: !363, line: 19, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !370, line: 27, baseType: !371)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !25, line: 45, baseType: !224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !364, file: !363, line: 21, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !363, line: 5, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !31, line: 254, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !364, file: !363, line: 28, baseType: !377, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictValues", file: !363, line: 6, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictvalues", file: !363, line: 6, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !382, line: 206, baseType: !383)
!382 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/unicodeobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "f386b2e1a1c191e8bf459eb4bae7acee")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 72, size: 384, elements: !384)
!384 = !{!385, !386, !387, !388, !396}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !383, file: !382, line: 146, baseType: !15, size: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !383, file: !382, line: 147, baseType: !20, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !383, file: !382, line: 148, baseType: !184, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !383, file: !382, line: 204, baseType: !389, size: 32, offset: 256)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !382, line: 149, size: 32, elements: !390)
!390 = !{!391, !392, !393, !394, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !389, file: !382, line: 158, baseType: !312, size: 2, flags: DIFlagBitField, extraData: i64 0)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !389, file: !382, line: 186, baseType: !312, size: 3, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !389, file: !382, line: 191, baseType: !312, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !389, file: !382, line: 195, baseType: !312, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !389, file: !382, line: 200, baseType: !312, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !383, file: !382, line: 205, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !322, line: 96, baseType: !7)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__Pyx_CodeObjectCacheEntry", file: !3, line: 1195, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1192, size: 128, elements: !402)
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "code_object", scope: !401, file: !3, line: 1193, baseType: !323, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "code_line", scope: !401, file: !3, line: 1194, baseType: !7, size: 32, offset: 64)
!405 = !{!0, !406, !411, !441, !444, !449, !454, !459, !464, !466, !471, !473, !478, !483, !485, !495, !500, !502, !507, !509, !511, !516, !518, !523, !528, !533, !538, !543, !546, !548, !550, !552, !554, !556, !558, !574, !576, !579, !582, !584, !587, !589, !591, !594, !596, !598, !600, !602, !604, !606, !608, !610, !615, !617, !619, !621, !624, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !826, !828, !835, !837, !842}
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1316, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 104, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 13)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "__pyx_moduledef", scope: !2, file: !3, line: 1314, type: !413, isLocal: true, isDefinition: true)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !414, line: 74, size: 832, elements: !415)
!414 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/moduleobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "daa9b768501fad61bad25a7caf4dc4db")
!415 = !{!416, !427, !428, !429, !430, !431, !438, !439, !440}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !413, file: !414, line: 75, baseType: !417, size: 320)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !414, line: 49, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !414, line: 44, size: 320, elements: !419)
!419 = !{!420, !421, !425, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !418, file: !414, line: 45, baseType: !15, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !418, file: !414, line: 46, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!14}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !418, file: !414, line: 47, baseType: !20, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !418, file: !414, line: 48, baseType: !14, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !413, file: !414, line: 76, baseType: !40, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !413, file: !414, line: 77, baseType: !40, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !413, file: !414, line: 78, baseType: !20, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !413, file: !414, line: 79, baseType: !247, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "m_slots", scope: !413, file: !414, line: 80, baseType: !432, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Slot", file: !16, line: 13, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Slot", file: !414, line: 60, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !434, file: !414, line: 61, baseType: !7, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !414, line: 62, baseType: !13, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !413, file: !414, line: 81, baseType: !227, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !413, file: !414, line: 82, baseType: !106, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !413, file: !414, line: 83, baseType: !300, size: 64, offset: 768)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "__pyx_methods", scope: !2, file: !3, line: 1299, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !359)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "__pyx_moduledef_slots", scope: !2, file: !3, line: 1307, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 3)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1517, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 40, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 5)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1524, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 56, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 7)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1524, type: !461, isLocal: true, isDefinition: true)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 88, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 11)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1525, type: !456, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1525, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 72, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 9)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1526, type: !456, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1526, type: !475, isLocal: true, isDefinition: true)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 96, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 12)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1527, type: !480, isLocal: true, isDefinition: true)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 216, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 27)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1527, type: !468, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "main_interpreter_id", scope: !487, file: !3, line: 1475, type: !492, isLocal: true, isDefinition: true)
!487 = distinct !DISubprogram(name: "__Pyx_check_single_interpreter", scope: !3, file: !3, line: 1473, type: !488, scopeLine: 1473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!7}
!490 = !{!491}
!491 = !DILocalVariable(name: "current_id", scope: !487, file: !3, line: 1476, type: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !493, line: 27, baseType: !494)
!493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !25, line: 44, baseType: !26)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1491, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 760, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 95)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "__pyx_m", scope: !2, file: !3, line: 1032, type: !14, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1547, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 680, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 85)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1568, type: !358, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1607, type: !468, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1609, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 120, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 15)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1611, type: !408, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1623, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 152, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 19)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1665, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 24)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2550, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 48, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 6)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 2575, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 608, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 76)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1046, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 184, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 23)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "__pyx_f", scope: !2, file: !3, line: 1045, type: !545, isLocal: true, isDefinition: true)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !359)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "__pyx_empty_tuple", scope: !2, file: !3, line: 1036, type: !14, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "__pyx_empty_bytes", scope: !2, file: !3, line: 1037, type: !14, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "__pyx_empty_unicode", scope: !2, file: !3, line: 1038, type: !14, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "__pyx_d", scope: !2, file: !3, line: 1033, type: !14, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "__pyx_b", scope: !2, file: !3, line: 1034, type: !14, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "__pyx_cython_runtime", scope: !2, file: !3, line: 1035, type: !14, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "__pyx_string_tab", scope: !2, file: !3, line: 1344, type: !560, isLocal: true, isDefinition: true)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 2560, elements: !572)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__Pyx_StringTabEntry", file: !3, line: 846, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 845, size: 320, elements: !563)
!563 = !{!564, !565, !566, !568, !569, !570, !571}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !562, file: !3, line: 845, baseType: !80, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !562, file: !3, line: 845, baseType: !40, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !562, file: !3, line: 845, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !562, file: !3, line: 845, baseType: !40, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "is_unicode", scope: !562, file: !3, line: 846, baseType: !41, size: 8, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_str", scope: !562, file: !3, line: 846, baseType: !41, size: 8, offset: 264)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "intern", scope: !562, file: !3, line: 846, baseType: !41, size: 8, offset: 272)
!572 = !{!573}
!573 = !DISubrange(count: 8)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "__pyx_n_s_cline_in_traceback", scope: !2, file: !3, line: 1257, type: !14, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "__pyx_k_cline_in_traceback", scope: !2, file: !3, line: 1254, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 152, elements: !521)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "__pyx_k_main", scope: !2, file: !3, line: 1250, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 72, elements: !469)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "__pyx_k_name", scope: !2, file: !3, line: 1251, type: !581, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "__pyx_k_py_samtools", scope: !2, file: !3, line: 1253, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 96, elements: !476)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "__pyx_k_pysam_libcsamtools", scope: !2, file: !3, line: 1255, type: !578, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "__pyx_kp_s_pysam_libcsamtools_pyx", scope: !2, file: !3, line: 1262, type: !14, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "__pyx_k_pysam_libcsamtools_pyx", scope: !2, file: !3, line: 1256, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 184, elements: !541)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "__pyx_k_test", scope: !2, file: !3, line: 1252, type: !581, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "__pyx_filename", scope: !2, file: !3, line: 1042, type: !40, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "__pyx_lineno", scope: !2, file: !3, line: 1039, type: !7, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "__pyx_clineno", scope: !2, file: !3, line: 1040, type: !7, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "__pyx_n_s_name", scope: !2, file: !3, line: 1259, type: !14, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "__pyx_n_s_main", scope: !2, file: !3, line: 1258, type: !14, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !475, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !520, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 144, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 18)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !461, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !408, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !468, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !572)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 80, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 10)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !3, line: 500, type: !468, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !475, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !475, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !475, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !408, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !623, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "__pyx_codeobj_", scope: !2, file: !3, line: 1265, type: !14, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1275, type: !475, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "__pyx_mdef_5pysam_12libcsamtools_1py_samtools", scope: !2, file: !3, line: 1275, type: !248, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "__pyx_n_s_pysam_libcsamtools", scope: !2, file: !3, line: 1261, type: !14, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "__pyx_n_s_py_samtools", scope: !2, file: !3, line: 1260, type: !14, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "__pyx_n_s_test", scope: !2, file: !3, line: 1263, type: !14, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "__pyx_dict_version", scope: !655, file: !3, line: 1779, type: !369, isLocal: true, isDefinition: true)
!655 = distinct !DISubprogram(name: "__Pyx_CLineForTraceback", scope: !3, file: !3, line: 1766, type: !656, scopeLine: 1766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!656 = !DISubroutineType(types: !657)
!657 = !{!7, !658, !7}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !16, line: 24, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !661, line: 82, size: 2880, elements: !662)
!661 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/pystate.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "474ae1b51b4924e8bec8b13b56a451da")
!662 = !{!663, !664, !665, !669, !670, !671, !672, !673, !674, !675, !676, !747, !752, !753, !754, !755, !756, !757, !758, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !801, !811, !812, !813, !814}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !660, file: !661, line: 85, baseType: !658, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !661, line: 86, baseType: !658, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !660, file: !661, line: 87, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !16, line: 25, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !16, line: 25, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_initialized", scope: !660, file: !661, line: 93, baseType: !7, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_static", scope: !660, file: !661, line: 96, baseType: !7, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_remaining", scope: !660, file: !661, line: 98, baseType: !7, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_limit", scope: !660, file: !661, line: 99, baseType: !7, size: 32, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_headroom", scope: !660, file: !661, line: 100, baseType: !7, size: 32, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !660, file: !661, line: 105, baseType: !7, size: 32, offset: 352)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tracing_what", scope: !660, file: !661, line: 106, baseType: !7, size: 32, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cframe", scope: !660, file: !661, line: 110, baseType: !677, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyCFrame", file: !661, line: 53, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PyCFrame", file: !661, line: 38, size: 192, elements: !680)
!680 = !{!681, !685, !745}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !679, file: !661, line: 49, baseType: !682, size: 8)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !370, line: 24, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !684)
!684 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "current_frame", scope: !679, file: !661, line: 51, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PyInterpreterFrame", file: !688, line: 47, size: 640, elements: !689)
!688 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/internal/pycore_frame.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "553e3382ea38f2c6ad91a452160e87fd")
!689 = !{!690, !714, !715, !716, !717, !718, !733, !734, !740, !741, !743, !744}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "f_func", scope: !687, file: !688, line: 49, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFunctionObject", file: !693, line: 59, baseType: !694)
!693 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/funcobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "7328382f2637048b906e52f1dfe7b495")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 36, size: 1088, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !694, file: !693, line: 37, baseType: !15, size: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "func_globals", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "func_builtins", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "func_name", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "func_qualname", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "func_code", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "func_defaults", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "func_kwdefaults", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "func_closure", scope: !694, file: !693, line: 38, baseType: !14, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "func_doc", scope: !694, file: !693, line: 39, baseType: !14, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "func_dict", scope: !694, file: !693, line: 40, baseType: !14, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "func_weakreflist", scope: !694, file: !693, line: 41, baseType: !14, size: 64, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "func_module", scope: !694, file: !693, line: 42, baseType: !14, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "func_annotations", scope: !694, file: !693, line: 43, baseType: !14, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vectorcall", scope: !694, file: !693, line: 44, baseType: !315, size: 64, offset: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "func_version", scope: !694, file: !693, line: 52, baseType: !712, size: 32, offset: 1024)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !370, line: 26, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !312)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !687, file: !688, line: 50, baseType: !14, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !687, file: !688, line: 51, baseType: !14, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !687, file: !688, line: 52, baseType: !14, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !687, file: !688, line: 53, baseType: !323, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "frame_obj", scope: !687, file: !688, line: 54, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !16, line: 22, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !688, line: 15, size: 448, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !721, file: !688, line: 16, baseType: !15, size: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !721, file: !688, line: 17, baseType: !719, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame", scope: !721, file: !688, line: 18, baseType: !686, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !721, file: !688, line: 19, baseType: !14, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !721, file: !688, line: 20, baseType: !7, size: 32, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace_lines", scope: !721, file: !688, line: 21, baseType: !42, size: 8, offset: 352)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace_opcodes", scope: !721, file: !688, line: 22, baseType: !42, size: 8, offset: 360)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_fast_as_locals", scope: !721, file: !688, line: 23, baseType: !42, size: 8, offset: 368)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_f_frame_data", scope: !721, file: !688, line: 25, baseType: !732, size: 64, offset: 384)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !359)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !687, file: !688, line: 56, baseType: !686, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prev_instr", scope: !687, file: !688, line: 61, baseType: !735, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_CODEUNIT", file: !326, line: 19, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !370, line: 25, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !25, line: 40, baseType: !739)
!739 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "stacktop", scope: !687, file: !688, line: 62, baseType: !7, size: 32, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "is_entry", scope: !687, file: !688, line: 63, baseType: !742, size: 8, offset: 544)
!742 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !687, file: !688, line: 64, baseType: !42, size: 8, offset: 552)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "localsplus", scope: !687, file: !688, line: 66, baseType: !732, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !679, file: !661, line: 52, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !660, file: !661, line: 112, baseType: !748, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !661, line: 14, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!7, !14, !719, !7, !14}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !660, file: !661, line: 113, baseType: !748, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !660, file: !661, line: 114, baseType: !14, size: 64, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !660, file: !661, line: 115, baseType: !14, size: 64, offset: 704)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !660, file: !661, line: 118, baseType: !14, size: 64, offset: 768)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !660, file: !661, line: 119, baseType: !14, size: 64, offset: 832)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !660, file: !661, line: 120, baseType: !14, size: 64, offset: 896)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "exc_info", scope: !660, file: !661, line: 125, baseType: !759, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyErr_StackItem", file: !661, line: 73, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_err_stackitem", file: !661, line: 55, size: 128, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !761, file: !661, line: 69, baseType: !14, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "previous_item", scope: !761, file: !661, line: 71, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !660, file: !661, line: 127, baseType: !14, size: 64, offset: 1024)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !660, file: !661, line: 129, baseType: !7, size: 32, offset: 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !660, file: !661, line: 131, baseType: !14, size: 64, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !660, file: !661, line: 132, baseType: !224, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "native_thread_id", scope: !660, file: !661, line: 138, baseType: !224, size: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !660, file: !661, line: 140, baseType: !7, size: 32, offset: 1344)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !660, file: !661, line: 141, baseType: !14, size: 64, offset: 1408)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !660, file: !661, line: 166, baseType: !301, size: 64, offset: 1472)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !660, file: !661, line: 167, baseType: !13, size: 64, offset: 1536)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "coroutine_origin_tracking_depth", scope: !660, file: !661, line: 169, baseType: !7, size: 32, offset: 1600)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "async_gen_firstiter", scope: !660, file: !661, line: 171, baseType: !14, size: 64, offset: 1664)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "async_gen_finalizer", scope: !660, file: !661, line: 172, baseType: !14, size: 64, offset: 1728)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !660, file: !661, line: 174, baseType: !14, size: 64, offset: 1792)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "context_ver", scope: !660, file: !661, line: 175, baseType: !369, size: 64, offset: 1856)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !660, file: !661, line: 178, baseType: !369, size: 64, offset: 1920)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "trace_info", scope: !660, file: !661, line: 180, baseType: !782, size: 384, offset: 1984)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTraceInfo", file: !661, line: 34, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 31, size: 384, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !783, file: !661, line: 32, baseType: !323, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !783, file: !661, line: 33, baseType: !787, size: 320, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeAddressRange", file: !326, line: 184, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_line_offsets", file: !326, line: 179, size: 320, elements: !789)
!789 = !{!790, !791, !792, !793}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ar_start", scope: !788, file: !326, line: 180, baseType: !7, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ar_end", scope: !788, file: !326, line: 181, baseType: !7, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ar_line", scope: !788, file: !326, line: 182, baseType: !7, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !788, file: !326, line: 183, baseType: !794, size: 192, offset: 128)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_opaque", file: !326, line: 173, size: 192, elements: !795)
!795 = !{!796, !797, !800}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "computed_line", scope: !794, file: !326, line: 174, baseType: !7, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lo_next", scope: !794, file: !326, line: 175, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !794, file: !326, line: 176, baseType: !798, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "datastack_chunk", scope: !660, file: !661, line: 182, baseType: !802, size: 64, offset: 2368)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyStackChunk", file: !661, line: 80, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stack_chunk", file: !661, line: 75, size: 256, elements: !805)
!805 = !{!806, !808, !809, !810}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !804, file: !661, line: 76, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !804, file: !661, line: 77, baseType: !321, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !804, file: !661, line: 78, baseType: !321, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !804, file: !661, line: 79, baseType: !732, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "datastack_top", scope: !660, file: !661, line: 183, baseType: !80, size: 64, offset: 2432)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "datastack_limit", scope: !660, file: !661, line: 184, baseType: !80, size: 64, offset: 2496)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "exc_state", scope: !660, file: !661, line: 199, baseType: !760, size: 128, offset: 2560)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "root_cframe", scope: !660, file: !661, line: 202, baseType: !678, size: 192, offset: 2688)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823}
!816 = !DILocalVariable(name: "tstate", arg: 1, scope: !655, file: !3, line: 1766, type: !658)
!817 = !DILocalVariable(name: "c_line", arg: 2, scope: !655, file: !3, line: 1766, type: !7)
!818 = !DILocalVariable(name: "use_cline", scope: !655, file: !3, line: 1767, type: !14)
!819 = !DILocalVariable(name: "ptype", scope: !655, file: !3, line: 1768, type: !14)
!820 = !DILocalVariable(name: "pvalue", scope: !655, file: !3, line: 1768, type: !14)
!821 = !DILocalVariable(name: "ptraceback", scope: !655, file: !3, line: 1768, type: !14)
!822 = !DILocalVariable(name: "cython_runtime_dict", scope: !655, file: !3, line: 1770, type: !80)
!823 = !DILocalVariable(name: "use_cline_obj", scope: !824, file: !3, line: 1785, type: !14)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 1784, column: 5)
!825 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1778, column: 9)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "__pyx_dict_cached_value", scope: !655, file: !3, line: 1779, type: !14, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "__pyx_code_cache", scope: !2, file: !3, line: 1201, type: !830, isLocal: true, isDefinition: true)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__Pyx_CodeObjectCache", file: !3, line: 1196, size: 128, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !3, line: 1197, baseType: !7, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "max_count", scope: !830, file: !3, line: 1198, baseType: !7, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !830, file: !3, line: 1199, baseType: !399, size: 64, offset: 64)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1911, type: !461, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1041, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 21)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "__pyx_cfilenm", scope: !2, file: !3, line: 1041, type: !40, isLocal: true, isDefinition: true)
!844 = !{i32 7, !"Dwarf Version", i32 5}
!845 = !{i32 2, !"Debug Info Version", i32 3}
!846 = !{i32 1, !"wchar_size", i32 4}
!847 = !{i32 8, !"PIC Level", i32 2}
!848 = !{i32 7, !"uwtable", i32 2}
!849 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!850 = distinct !DISubprogram(name: "PyInit_libcsamtools", scope: !3, file: !3, line: 1468, type: !423, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!851 = !DILocation(line: 1471, column: 10, scope: !850)
!852 = !DILocation(line: 1471, column: 3, scope: !850)
!853 = !DISubprogram(name: "PyModuleDef_Init", scope: !414, file: !414, line: 40, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DISubroutineType(types: !855)
!855 = !{!14, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !16, line: 12, baseType: !413)
!858 = distinct !DISubprogram(name: "__pyx_pymod_create", scope: !3, file: !3, line: 1511, type: !859, scopeLine: 1511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!14, !14, !856}
!861 = !{!862, !863, !864, !865, !866, !867}
!862 = !DILocalVariable(name: "spec", arg: 1, scope: !858, file: !3, line: 1511, type: !14)
!863 = !DILocalVariable(name: "def", arg: 2, scope: !858, file: !3, line: 1511, type: !856)
!864 = !DILocalVariable(name: "module", scope: !858, file: !3, line: 1512, type: !14)
!865 = !DILocalVariable(name: "moddict", scope: !858, file: !3, line: 1512, type: !14)
!866 = !DILocalVariable(name: "modname", scope: !858, file: !3, line: 1512, type: !14)
!867 = !DILabel(scope: !858, name: "bad", file: !3, line: 1529)
!868 = !{!869, !869, i64 0}
!869 = !{!"any pointer", !870, i64 0}
!870 = !{!"omnipotent char", !871, i64 0}
!871 = !{!"Simple C/C++ TBAA"}
!872 = !DILocation(line: 1511, column: 65, scope: !858)
!873 = !DILocation(line: 1511, column: 98, scope: !858)
!874 = !DILocation(line: 1512, column: 5, scope: !858)
!875 = !DILocation(line: 1512, column: 15, scope: !858)
!876 = !DILocation(line: 1512, column: 31, scope: !858)
!877 = !DILocation(line: 1512, column: 41, scope: !858)
!878 = !DILocation(line: 1513, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1513, column: 9)
!880 = !DILocation(line: 1513, column: 9, scope: !858)
!881 = !DILocation(line: 1514, column: 9, scope: !879)
!882 = !DILocation(line: 1515, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1515, column: 9)
!884 = !DILocation(line: 1515, column: 9, scope: !858)
!885 = !DILocation(line: 1516, column: 16, scope: !883)
!886 = !DILocation(line: 1516, column: 9, scope: !883)
!887 = !DILocation(line: 1517, column: 38, scope: !858)
!888 = !DILocation(line: 1517, column: 15, scope: !858)
!889 = !DILocation(line: 1517, column: 13, scope: !858)
!890 = !DILocation(line: 1518, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1518, column: 9)
!892 = !DILocation(line: 1518, column: 9, scope: !858)
!893 = !DILocation(line: 1518, column: 29, scope: !891)
!894 = !DILocation(line: 1519, column: 33, scope: !858)
!895 = !DILocation(line: 1519, column: 14, scope: !858)
!896 = !DILocation(line: 1519, column: 12, scope: !858)
!897 = !DILocation(line: 1520, column: 5, scope: !858)
!898 = !DILocation(line: 1521, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1521, column: 9)
!900 = !DILocation(line: 1521, column: 9, scope: !858)
!901 = !DILocation(line: 1521, column: 28, scope: !899)
!902 = !DILocation(line: 1522, column: 32, scope: !858)
!903 = !DILocation(line: 1522, column: 15, scope: !858)
!904 = !DILocation(line: 1522, column: 13, scope: !858)
!905 = !DILocation(line: 1523, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1523, column: 9)
!907 = !DILocation(line: 1523, column: 9, scope: !858)
!908 = !DILocation(line: 1523, column: 29, scope: !906)
!909 = !DILocation(line: 1524, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1524, column: 9)
!911 = !DILocation(line: 1524, column: 9, scope: !858)
!912 = !DILocation(line: 1524, column: 92, scope: !910)
!913 = !DILocation(line: 1525, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1525, column: 9)
!915 = !DILocation(line: 1525, column: 9, scope: !858)
!916 = !DILocation(line: 1525, column: 90, scope: !914)
!917 = !DILocation(line: 1526, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1526, column: 9)
!919 = !DILocation(line: 1526, column: 9, scope: !858)
!920 = !DILocation(line: 1526, column: 93, scope: !918)
!921 = !DILocation(line: 1527, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1527, column: 9)
!923 = !DILocation(line: 1527, column: 9, scope: !858)
!924 = !DILocation(line: 1527, column: 110, scope: !922)
!925 = !DILocation(line: 1528, column: 12, scope: !858)
!926 = !DILocation(line: 1528, column: 5, scope: !858)
!927 = !DILocation(line: 1529, column: 1, scope: !858)
!928 = !DILocation(line: 1530, column: 5, scope: !858)
!929 = !DILocation(line: 1531, column: 5, scope: !858)
!930 = !DILocation(line: 1532, column: 1, scope: !858)
!931 = distinct !DISubprogram(name: "__pyx_pymod_exec_libcsamtools", scope: !3, file: !3, line: 1535, type: !108, scopeLine: 1538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !940, !941, !945}
!933 = !DILocalVariable(name: "__pyx_pyinit_module", arg: 1, scope: !931, file: !3, line: 1535, type: !14)
!934 = !DILocalVariable(name: "__pyx_t_1", scope: !931, file: !3, line: 1539, type: !14)
!935 = !DILocalVariable(name: "__pyx_lineno", scope: !931, file: !3, line: 1540, type: !7)
!936 = !DILocalVariable(name: "__pyx_filename", scope: !931, file: !3, line: 1541, type: !40)
!937 = !DILocalVariable(name: "__pyx_clineno", scope: !931, file: !3, line: 1542, type: !7)
!938 = !DILocalVariable(name: "modules", scope: !939, file: !3, line: 1622, type: !14)
!939 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1621, column: 3)
!940 = !DILabel(scope: !931, name: "__pyx_L1_error", file: !3, line: 1661)
!941 = !DILocalVariable(name: "_py_tmp", scope: !942, file: !3, line: 1667, type: !14)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1667, column: 5)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1663, column: 16)
!944 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1663, column: 7)
!945 = !DILabel(scope: !931, name: "__pyx_L0", file: !3, line: 1671)
!946 = !DILocation(line: 1535, column: 70, scope: !931)
!947 = !DILocation(line: 1539, column: 3, scope: !931)
!948 = !DILocation(line: 1539, column: 13, scope: !931)
!949 = !DILocation(line: 1540, column: 3, scope: !931)
!950 = !DILocation(line: 1540, column: 7, scope: !931)
!951 = !{!952, !952, i64 0}
!952 = !{!"int", !870, i64 0}
!953 = !DILocation(line: 1541, column: 3, scope: !931)
!954 = !DILocation(line: 1541, column: 15, scope: !931)
!955 = !DILocation(line: 1542, column: 3, scope: !931)
!956 = !DILocation(line: 1542, column: 7, scope: !931)
!957 = !DILocation(line: 1545, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1545, column: 7)
!959 = !DILocation(line: 1545, column: 7, scope: !931)
!960 = !DILocation(line: 1546, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1546, column: 9)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 1545, column: 16)
!963 = !DILocation(line: 1546, column: 20, scope: !961)
!964 = !DILocation(line: 1546, column: 17, scope: !961)
!965 = !DILocation(line: 1546, column: 9, scope: !962)
!966 = !DILocation(line: 1546, column: 41, scope: !961)
!967 = !DILocation(line: 1547, column: 21, scope: !962)
!968 = !DILocation(line: 1547, column: 5, scope: !962)
!969 = !DILocation(line: 1548, column: 5, scope: !962)
!970 = !DILocation(line: 1563, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1563, column: 7)
!972 = !DILocation(line: 1563, column: 36, scope: !971)
!973 = !DILocation(line: 1563, column: 7, scope: !931)
!974 = !DILocation(line: 1563, column: 41, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1563, column: 41)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 1563, column: 41)
!977 = !DILocation(line: 1563, column: 41, scope: !976)
!978 = !DILocation(line: 1567, column: 23, scope: !931)
!979 = !DILocation(line: 1567, column: 21, scope: !931)
!980 = !DILocation(line: 1567, column: 43, scope: !981)
!981 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1567, column: 43)
!982 = !DILocation(line: 1567, column: 43, scope: !931)
!983 = !DILocation(line: 1567, column: 73, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 1567, column: 73)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 1567, column: 73)
!986 = !DILocation(line: 1567, column: 73, scope: !985)
!987 = !DILocation(line: 1568, column: 23, scope: !931)
!988 = !DILocation(line: 1568, column: 21, scope: !931)
!989 = !DILocation(line: 1568, column: 61, scope: !990)
!990 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1568, column: 61)
!991 = !DILocation(line: 1568, column: 61, scope: !931)
!992 = !DILocation(line: 1568, column: 91, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 1568, column: 91)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1568, column: 91)
!995 = !DILocation(line: 1568, column: 91, scope: !994)
!996 = !DILocation(line: 1569, column: 25, scope: !931)
!997 = !DILocation(line: 1569, column: 23, scope: !931)
!998 = !DILocation(line: 1569, column: 65, scope: !999)
!999 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1569, column: 65)
!1000 = !DILocation(line: 1569, column: 65, scope: !931)
!1001 = !DILocation(line: 1569, column: 97, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1569, column: 97)
!1003 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1569, column: 97)
!1004 = !DILocation(line: 1569, column: 97, scope: !1003)
!1005 = !DILocation(line: 1595, column: 13, scope: !931)
!1006 = !DILocation(line: 1595, column: 11, scope: !931)
!1007 = !DILocation(line: 1596, column: 3, scope: !931)
!1008 = !DILocation(line: 1605, column: 30, scope: !931)
!1009 = !DILocation(line: 1605, column: 13, scope: !931)
!1010 = !DILocation(line: 1605, column: 11, scope: !931)
!1011 = !DILocation(line: 1605, column: 44, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1605, column: 44)
!1013 = !DILocation(line: 1605, column: 44, scope: !931)
!1014 = !DILocation(line: 1605, column: 64, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 1605, column: 64)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1605, column: 64)
!1017 = !DILocation(line: 1605, column: 64, scope: !1016)
!1018 = !DILocation(line: 1606, column: 3, scope: !931)
!1019 = !DILocation(line: 1607, column: 13, scope: !931)
!1020 = !DILocation(line: 1607, column: 11, scope: !931)
!1021 = !DILocation(line: 1607, column: 64, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1607, column: 64)
!1023 = !DILocation(line: 1607, column: 64, scope: !931)
!1024 = !DILocation(line: 1607, column: 84, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 1607, column: 84)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 1607, column: 84)
!1027 = !DILocation(line: 1607, column: 84, scope: !1026)
!1028 = !DILocation(line: 1608, column: 3, scope: !931)
!1029 = !DILocation(line: 1609, column: 26, scope: !931)
!1030 = !DILocation(line: 1609, column: 24, scope: !931)
!1031 = !DILocation(line: 1609, column: 77, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1609, column: 77)
!1033 = !DILocation(line: 1609, column: 77, scope: !931)
!1034 = !DILocation(line: 1609, column: 110, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 1609, column: 110)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1609, column: 110)
!1037 = !DILocation(line: 1609, column: 110, scope: !1036)
!1038 = !DILocation(line: 1610, column: 3, scope: !931)
!1039 = !DILocation(line: 1611, column: 30, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1611, column: 7)
!1041 = !DILocation(line: 1611, column: 55, scope: !1040)
!1042 = !DILocation(line: 1611, column: 7, scope: !1040)
!1043 = !DILocation(line: 1611, column: 64, scope: !1040)
!1044 = !DILocation(line: 1611, column: 7, scope: !931)
!1045 = !DILocation(line: 1611, column: 69, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1611, column: 69)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1611, column: 69)
!1048 = !DILocation(line: 1611, column: 69, scope: !1047)
!1049 = !DILocation(line: 1613, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1613, column: 7)
!1051 = !DILocation(line: 1613, column: 27, scope: !1050)
!1052 = !DILocation(line: 1613, column: 7, scope: !931)
!1053 = !DILocation(line: 1613, column: 32, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 1613, column: 32)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 1613, column: 32)
!1056 = !DILocation(line: 1613, column: 32, scope: !1055)
!1057 = !DILocation(line: 1617, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1617, column: 7)
!1059 = !DILocation(line: 1617, column: 7, scope: !931)
!1060 = !DILocation(line: 1618, column: 26, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 1618, column: 9)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 1617, column: 49)
!1063 = !DILocation(line: 1618, column: 35, scope: !1061)
!1064 = !DILocation(line: 1618, column: 51, scope: !1061)
!1065 = !DILocation(line: 1618, column: 9, scope: !1061)
!1066 = !DILocation(line: 1618, column: 67, scope: !1061)
!1067 = !DILocation(line: 1618, column: 9, scope: !1062)
!1068 = !DILocation(line: 1618, column: 72, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1618, column: 72)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 1618, column: 72)
!1071 = !DILocation(line: 1618, column: 72, scope: !1070)
!1072 = !DILocation(line: 1619, column: 3, scope: !1062)
!1073 = !DILocation(line: 1622, column: 5, scope: !939)
!1074 = !DILocation(line: 1622, column: 15, scope: !939)
!1075 = !DILocation(line: 1622, column: 25, scope: !939)
!1076 = !DILocation(line: 1622, column: 55, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1622, column: 55)
!1078 = !DILocation(line: 1622, column: 55, scope: !939)
!1079 = !DILocation(line: 1622, column: 75, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1622, column: 75)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1622, column: 75)
!1082 = !DILocation(line: 1622, column: 75, scope: !1081)
!1083 = !DILocation(line: 1623, column: 31, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1623, column: 9)
!1085 = !DILocation(line: 1623, column: 10, scope: !1084)
!1086 = !DILocation(line: 1623, column: 9, scope: !939)
!1087 = !DILocation(line: 1624, column: 11, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 1624, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1623, column: 63)
!1090 = !DILocation(line: 1624, column: 11, scope: !1089)
!1091 = !DILocation(line: 1624, column: 87, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1624, column: 87)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 1624, column: 87)
!1094 = !DILocation(line: 1624, column: 87, scope: !1093)
!1095 = !DILocation(line: 1625, column: 5, scope: !1089)
!1096 = !DILocation(line: 1626, column: 3, scope: !931)
!1097 = !DILocation(line: 1629, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1629, column: 7)
!1099 = !DILocation(line: 1629, column: 34, scope: !1098)
!1100 = !DILocation(line: 1629, column: 7, scope: !931)
!1101 = !DILocation(line: 1629, column: 39, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 1629, column: 39)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1629, column: 39)
!1104 = !DILocation(line: 1629, column: 39, scope: !1103)
!1105 = !DILocation(line: 1631, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1631, column: 7)
!1107 = !DILocation(line: 1631, column: 35, scope: !1106)
!1108 = !DILocation(line: 1631, column: 7, scope: !931)
!1109 = !DILocation(line: 1631, column: 40, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 1631, column: 40)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 1631, column: 40)
!1112 = !DILocation(line: 1631, column: 40, scope: !1111)
!1113 = !DILocation(line: 1633, column: 9, scope: !931)
!1114 = !DILocation(line: 1634, column: 9, scope: !931)
!1115 = !DILocation(line: 1635, column: 9, scope: !931)
!1116 = !DILocation(line: 1636, column: 9, scope: !931)
!1117 = !DILocation(line: 1637, column: 9, scope: !931)
!1118 = !DILocation(line: 1638, column: 9, scope: !931)
!1119 = !DILocation(line: 1639, column: 9, scope: !931)
!1120 = !DILocation(line: 1649, column: 15, scope: !931)
!1121 = !DILocation(line: 1649, column: 13, scope: !931)
!1122 = !DILocation(line: 1649, column: 122, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1649, column: 122)
!1124 = !DILocation(line: 1649, column: 122, scope: !931)
!1125 = !DILocation(line: 1649, column: 144, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1649, column: 144)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 1649, column: 144)
!1128 = !DILocation(line: 1649, column: 144, scope: !1127)
!1129 = !DILocation(line: 1651, column: 22, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1651, column: 7)
!1131 = !DILocation(line: 1651, column: 31, scope: !1130)
!1132 = !DILocation(line: 1651, column: 54, scope: !1130)
!1133 = !DILocation(line: 1651, column: 7, scope: !1130)
!1134 = !DILocation(line: 1651, column: 65, scope: !1130)
!1135 = !DILocation(line: 1651, column: 7, scope: !931)
!1136 = !DILocation(line: 1651, column: 70, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1651, column: 70)
!1138 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1651, column: 70)
!1139 = !DILocation(line: 1651, column: 70, scope: !1138)
!1140 = !DILocation(line: 1652, column: 3, scope: !931)
!1141 = !DILocation(line: 1652, column: 38, scope: !931)
!1142 = !DILocation(line: 1653, column: 15, scope: !931)
!1143 = !DILocation(line: 1653, column: 13, scope: !931)
!1144 = !DILocation(line: 1653, column: 48, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1653, column: 48)
!1146 = !DILocation(line: 1653, column: 48, scope: !931)
!1147 = !DILocation(line: 1653, column: 70, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 1653, column: 70)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1653, column: 70)
!1150 = !DILocation(line: 1653, column: 70, scope: !1149)
!1151 = !DILocation(line: 1655, column: 22, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1655, column: 7)
!1153 = !DILocation(line: 1655, column: 31, scope: !1152)
!1154 = !DILocation(line: 1655, column: 47, scope: !1152)
!1155 = !DILocation(line: 1655, column: 7, scope: !1152)
!1156 = !DILocation(line: 1655, column: 58, scope: !1152)
!1157 = !DILocation(line: 1655, column: 7, scope: !931)
!1158 = !DILocation(line: 1655, column: 63, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 1655, column: 63)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 1655, column: 63)
!1161 = !DILocation(line: 1655, column: 63, scope: !1160)
!1162 = !DILocation(line: 1656, column: 3, scope: !931)
!1163 = !DILocation(line: 1656, column: 38, scope: !931)
!1164 = !DILocation(line: 1660, column: 3, scope: !931)
!1165 = !DILocation(line: 1661, column: 3, scope: !931)
!1166 = !DILocation(line: 1662, column: 3, scope: !931)
!1167 = !DILocation(line: 1663, column: 7, scope: !944)
!1168 = !DILocation(line: 1663, column: 7, scope: !931)
!1169 = !DILocation(line: 1664, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1664, column: 9)
!1171 = !DILocation(line: 1664, column: 9, scope: !943)
!1172 = !DILocation(line: 1665, column: 53, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1664, column: 18)
!1174 = !DILocation(line: 1665, column: 68, scope: !1173)
!1175 = !DILocation(line: 1665, column: 82, scope: !1173)
!1176 = !DILocation(line: 1665, column: 7, scope: !1173)
!1177 = !DILocation(line: 1666, column: 5, scope: !1173)
!1178 = !DILocation(line: 1667, column: 5, scope: !943)
!1179 = !DILocation(line: 1667, column: 5, scope: !942)
!1180 = !DILocation(line: 1667, column: 5, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !942, file: !3, line: 1667, column: 5)
!1182 = !DILocation(line: 1667, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 1667, column: 5)
!1184 = !DILocation(line: 1668, column: 3, scope: !943)
!1185 = !DILocation(line: 1668, column: 15, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1668, column: 14)
!1187 = !DILocation(line: 1668, column: 14, scope: !944)
!1188 = !DILocation(line: 1669, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 1668, column: 33)
!1190 = !DILocation(line: 1669, column: 5, scope: !1189)
!1191 = !DILocation(line: 1670, column: 3, scope: !1189)
!1192 = !DILocation(line: 1671, column: 3, scope: !931)
!1193 = !DILocation(line: 1674, column: 11, scope: !931)
!1194 = !DILocation(line: 1674, column: 19, scope: !931)
!1195 = !DILocation(line: 1674, column: 10, scope: !931)
!1196 = !DILocation(line: 1674, column: 3, scope: !931)
!1197 = !DILocation(line: 1680, column: 1, scope: !931)
!1198 = !DILocation(line: 1476, column: 5, scope: !487)
!1199 = !DILocation(line: 1476, column: 16, scope: !487)
!1200 = !DILocation(line: 1476, column: 54, scope: !487)
!1201 = !DILocation(line: 1476, column: 75, scope: !487)
!1202 = !{!1203, !869, i64 16}
!1203 = !{!"_ts", !869, i64 0, !869, i64 8, !869, i64 16, !952, i64 24, !952, i64 28, !952, i64 32, !952, i64 36, !952, i64 40, !952, i64 44, !952, i64 48, !869, i64 56, !869, i64 64, !869, i64 72, !869, i64 80, !869, i64 88, !869, i64 96, !869, i64 104, !869, i64 112, !869, i64 120, !869, i64 128, !952, i64 136, !869, i64 144, !1204, i64 152, !1204, i64 160, !952, i64 168, !869, i64 176, !869, i64 184, !869, i64 192, !952, i64 200, !869, i64 208, !869, i64 216, !869, i64 224, !1204, i64 232, !1204, i64 240, !1205, i64 248, !869, i64 296, !869, i64 304, !869, i64 312, !1208, i64 320, !1209, i64 336}
!1204 = !{!"long", !870, i64 0}
!1205 = !{!"", !869, i64 0, !1206, i64 8}
!1206 = !{!"_line_offsets", !952, i64 0, !952, i64 4, !952, i64 8, !1207, i64 16}
!1207 = !{!"_opaque", !952, i64 0, !869, i64 8, !869, i64 16}
!1208 = !{!"_err_stackitem", !869, i64 0, !869, i64 8}
!1209 = !{!"_PyCFrame", !870, i64 0, !869, i64 8, !869, i64 16}
!1210 = !DILocation(line: 1476, column: 29, scope: !487)
!1211 = !{!1204, !1204, i64 0}
!1212 = !DILocation(line: 1477, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !487, file: !3, line: 1477, column: 9)
!1214 = !DILocation(line: 1477, column: 29, scope: !1213)
!1215 = !DILocation(line: 1477, column: 9, scope: !487)
!1216 = !DILocation(line: 1478, column: 31, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1477, column: 36)
!1218 = !DILocation(line: 1478, column: 29, scope: !1217)
!1219 = !DILocation(line: 1479, column: 17, scope: !1217)
!1220 = !DILocation(line: 1479, column: 16, scope: !1217)
!1221 = !DILocation(line: 1479, column: 9, scope: !1217)
!1222 = !DILocation(line: 1480, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1480, column: 16)
!1224 = !DILocation(line: 1480, column: 16, scope: !1213)
!1225 = !DILocation(line: 1490, column: 13, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1488, column: 5)
!1227 = !DILocation(line: 1489, column: 9, scope: !1226)
!1228 = !DILocation(line: 1492, column: 9, scope: !1226)
!1229 = !DILocation(line: 1494, column: 5, scope: !487)
!1230 = !DILocation(line: 1495, column: 1, scope: !487)
!1231 = distinct !DISubprogram(name: "Py_INCREF", scope: !6, file: !6, line: 491, type: !48, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "op", arg: 1, scope: !1231, file: !6, line: 491, type: !14)
!1234 = !DILocation(line: 491, column: 40, scope: !1231)
!1235 = !DILocation(line: 502, column: 5, scope: !1231)
!1236 = !DILocation(line: 502, column: 9, scope: !1231)
!1237 = !DILocation(line: 502, column: 18, scope: !1231)
!1238 = !{!1239, !1204, i64 0}
!1239 = !{!"_object", !1204, i64 0, !869, i64 8}
!1240 = !DILocation(line: 504, column: 1, scope: !1231)
!1241 = !DISubprogram(name: "PyObject_GetAttrString", scope: !6, file: !6, line: 289, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!14, !14, !40}
!1244 = !DISubprogram(name: "PyModule_NewObject", scope: !414, file: !414, line: 16, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = distinct !DISubprogram(name: "Py_DECREF", scope: !6, file: !6, line: 533, type: !48, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "op", arg: 1, scope: !1245, file: !6, line: 533, type: !14)
!1248 = !DILocation(line: 533, column: 40, scope: !1245)
!1249 = !DILocation(line: 537, column: 11, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !6, line: 537, column: 9)
!1251 = !DILocation(line: 537, column: 15, scope: !1250)
!1252 = !DILocation(line: 537, column: 9, scope: !1250)
!1253 = !DILocation(line: 537, column: 25, scope: !1250)
!1254 = !DILocation(line: 537, column: 9, scope: !1245)
!1255 = !DILocation(line: 538, column: 21, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !6, line: 537, column: 31)
!1257 = !DILocation(line: 538, column: 9, scope: !1256)
!1258 = !DILocation(line: 539, column: 5, scope: !1256)
!1259 = !DILocation(line: 540, column: 1, scope: !1245)
!1260 = !DISubprogram(name: "PyModule_GetDict", scope: !414, file: !414, line: 23, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = distinct !DISubprogram(name: "__Pyx_copy_spec_to_module", scope: !3, file: !3, line: 1496, type: !1262, scopeLine: 1496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!7, !14, !14, !40, !40, !7}
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1265 = !DILocalVariable(name: "spec", arg: 1, scope: !1261, file: !3, line: 1496, type: !14)
!1266 = !DILocalVariable(name: "moddict", arg: 2, scope: !1261, file: !3, line: 1496, type: !14)
!1267 = !DILocalVariable(name: "from_name", arg: 3, scope: !1261, file: !3, line: 1496, type: !40)
!1268 = !DILocalVariable(name: "to_name", arg: 4, scope: !1261, file: !3, line: 1496, type: !40)
!1269 = !DILocalVariable(name: "allow_none", arg: 5, scope: !1261, file: !3, line: 1496, type: !7)
!1270 = !DILocalVariable(name: "value", scope: !1261, file: !3, line: 1497, type: !14)
!1271 = !DILocalVariable(name: "result", scope: !1261, file: !3, line: 1498, type: !7)
!1272 = !DILocation(line: 1496, column: 66, scope: !1261)
!1273 = !DILocation(line: 1496, column: 82, scope: !1261)
!1274 = !DILocation(line: 1496, column: 103, scope: !1261)
!1275 = !DILocation(line: 1496, column: 126, scope: !1261)
!1276 = !DILocation(line: 1496, column: 139, scope: !1261)
!1277 = !DILocation(line: 1497, column: 5, scope: !1261)
!1278 = !DILocation(line: 1497, column: 15, scope: !1261)
!1279 = !DILocation(line: 1497, column: 46, scope: !1261)
!1280 = !DILocation(line: 1497, column: 52, scope: !1261)
!1281 = !DILocation(line: 1497, column: 23, scope: !1261)
!1282 = !DILocation(line: 1498, column: 5, scope: !1261)
!1283 = !DILocation(line: 1498, column: 9, scope: !1261)
!1284 = !DILocation(line: 1499, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1499, column: 9)
!1286 = !DILocation(line: 1499, column: 9, scope: !1261)
!1287 = !DILocation(line: 1500, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1500, column: 13)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1499, column: 24)
!1290 = !DILocation(line: 1500, column: 24, scope: !1288)
!1291 = !DILocation(line: 1500, column: 27, scope: !1288)
!1292 = !DILocation(line: 1500, column: 33, scope: !1288)
!1293 = !DILocation(line: 1500, column: 13, scope: !1289)
!1294 = !DILocation(line: 1501, column: 43, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1500, column: 45)
!1296 = !DILocation(line: 1501, column: 52, scope: !1295)
!1297 = !DILocation(line: 1501, column: 61, scope: !1295)
!1298 = !DILocation(line: 1501, column: 22, scope: !1295)
!1299 = !DILocation(line: 1501, column: 20, scope: !1295)
!1300 = !DILocation(line: 1502, column: 9, scope: !1295)
!1301 = !DILocation(line: 1503, column: 9, scope: !1289)
!1302 = !DILocation(line: 1504, column: 5, scope: !1289)
!1303 = !DILocation(line: 1504, column: 39, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1504, column: 16)
!1305 = !DILocation(line: 1504, column: 16, scope: !1304)
!1306 = !DILocation(line: 1504, column: 16, scope: !1285)
!1307 = !DILocation(line: 1505, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1504, column: 62)
!1309 = !DILocation(line: 1506, column: 5, scope: !1308)
!1310 = !DILocation(line: 1507, column: 16, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1506, column: 12)
!1312 = !DILocation(line: 1509, column: 12, scope: !1261)
!1313 = !DILocation(line: 1510, column: 1, scope: !1261)
!1314 = !DILocation(line: 1509, column: 5, scope: !1261)
!1315 = distinct !DISubprogram(name: "Py_XDECREF", scope: !6, file: !6, line: 599, type: !48, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "op", arg: 1, scope: !1315, file: !6, line: 599, type: !14)
!1318 = !DILocation(line: 599, column: 41, scope: !1315)
!1319 = !DILocation(line: 601, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !6, line: 601, column: 9)
!1321 = !DILocation(line: 601, column: 12, scope: !1320)
!1322 = !DILocation(line: 601, column: 9, scope: !1315)
!1323 = !DILocation(line: 602, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !6, line: 601, column: 25)
!1325 = !DILocation(line: 603, column: 5, scope: !1324)
!1326 = !DILocation(line: 604, column: 1, scope: !1315)
!1327 = !DISubprogram(name: "PyInterpreterState_GetID", scope: !1328, file: !1328, line: 36, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1328 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pystate.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "47bcf81a3ade86878f3e119bcc367bce")
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!492, !666}
!1331 = !DISubprogram(name: "PyThreadState_Get", scope: !1328, file: !1328, line: 60, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!658}
!1334 = !DISubprogram(name: "PyErr_SetString", scope: !1335, file: !1335, line: 13, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pyerrors.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "b73e4b5df7a17ee42bc3fece0535c8f9")
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !14, !40}
!1338 = !DISubprogram(name: "_Py_Dealloc", scope: !6, file: !6, line: 477, type: !48, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubprogram(name: "PyDict_SetItemString", scope: !1340, file: !1340, line: 58, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/dictobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "572218e19a764bc436837bf1e74340b3")
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!7, !14, !40, !14}
!1343 = !DISubprogram(name: "PyErr_ExceptionMatches", scope: !1335, file: !1335, line: 39, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubprogram(name: "PyErr_Clear", scope: !1335, file: !1335, line: 18, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null}
!1347 = distinct !DISubprogram(name: "__Pyx_check_binary_version", scope: !3, file: !3, line: 2546, type: !488, scopeLine: 2546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1357}
!1349 = !DILocalVariable(name: "ctversion", scope: !1347, file: !3, line: 2547, type: !451)
!1350 = !DILocalVariable(name: "same", scope: !1347, file: !3, line: 2548, type: !7)
!1351 = !DILocalVariable(name: "i", scope: !1347, file: !3, line: 2548, type: !7)
!1352 = !DILocalVariable(name: "found_dot", scope: !1347, file: !3, line: 2548, type: !7)
!1353 = !DILocalVariable(name: "rt_from_call", scope: !1347, file: !3, line: 2549, type: !40)
!1354 = !DILocalVariable(name: "rtversion", scope: !1355, file: !3, line: 2563, type: !451)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 2562, column: 16)
!1356 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 2562, column: 9)
!1357 = !DILocalVariable(name: "message", scope: !1355, file: !3, line: 2564, type: !1358)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1600, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 200)
!1361 = !DILocation(line: 2547, column: 5, scope: !1347)
!1362 = !DILocation(line: 2547, column: 10, scope: !1347)
!1363 = !DILocation(line: 2548, column: 5, scope: !1347)
!1364 = !DILocation(line: 2548, column: 9, scope: !1347)
!1365 = !DILocation(line: 2548, column: 17, scope: !1347)
!1366 = !DILocation(line: 2548, column: 20, scope: !1347)
!1367 = !DILocation(line: 2549, column: 5, scope: !1347)
!1368 = !DILocation(line: 2549, column: 17, scope: !1347)
!1369 = !DILocation(line: 2549, column: 32, scope: !1347)
!1370 = !DILocation(line: 2550, column: 19, scope: !1347)
!1371 = !DILocation(line: 2550, column: 5, scope: !1347)
!1372 = !DILocation(line: 2551, column: 15, scope: !1347)
!1373 = !DILocation(line: 2552, column: 12, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 2552, column: 5)
!1375 = !DILocation(line: 2552, column: 10, scope: !1374)
!1376 = !DILocation(line: 2552, column: 17, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 2552, column: 5)
!1378 = !DILocation(line: 2552, column: 19, scope: !1377)
!1379 = !DILocation(line: 2552, column: 5, scope: !1374)
!1380 = !DILocation(line: 2553, column: 24, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 2553, column: 13)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 2552, column: 29)
!1383 = !DILocation(line: 2553, column: 14, scope: !1381)
!1384 = !{!870, !870, i64 0}
!1385 = !DILocation(line: 2553, column: 13, scope: !1382)
!1386 = !DILocation(line: 2554, column: 21, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 2553, column: 28)
!1388 = !DILocation(line: 2554, column: 34, scope: !1387)
!1389 = !DILocation(line: 2554, column: 37, scope: !1387)
!1390 = !DILocation(line: 2554, column: 43, scope: !1387)
!1391 = !DILocation(line: 2554, column: 46, scope: !1387)
!1392 = !DILocation(line: 2554, column: 59, scope: !1387)
!1393 = !DILocation(line: 2554, column: 62, scope: !1387)
!1394 = !DILocation(line: 2554, column: 18, scope: !1387)
!1395 = !DILocation(line: 2555, column: 13, scope: !1387)
!1396 = !DILocation(line: 2557, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 2557, column: 13)
!1398 = !DILocation(line: 2557, column: 26, scope: !1397)
!1399 = !DILocation(line: 2557, column: 42, scope: !1397)
!1400 = !DILocation(line: 2557, column: 32, scope: !1397)
!1401 = !DILocation(line: 2557, column: 29, scope: !1397)
!1402 = !DILocation(line: 2557, column: 13, scope: !1382)
!1403 = !DILocation(line: 2558, column: 18, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 2557, column: 46)
!1405 = !DILocation(line: 2559, column: 13, scope: !1404)
!1406 = !DILocation(line: 2561, column: 5, scope: !1382)
!1407 = !DILocation(line: 2552, column: 25, scope: !1377)
!1408 = !DILocation(line: 2552, column: 5, scope: !1377)
!1409 = distinct !{!1409, !1379, !1410, !1411}
!1410 = !DILocation(line: 2561, column: 5, scope: !1374)
!1411 = !{!"llvm.loop.mustprogress"}
!1412 = !DILocation(line: 2562, column: 10, scope: !1356)
!1413 = !DILocation(line: 2562, column: 9, scope: !1347)
!1414 = !DILocation(line: 2563, column: 9, scope: !1355)
!1415 = !DILocation(line: 2563, column: 14, scope: !1355)
!1416 = !DILocation(line: 2564, column: 9, scope: !1355)
!1417 = !DILocation(line: 2564, column: 14, scope: !1355)
!1418 = !DILocation(line: 2565, column: 15, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 2565, column: 9)
!1420 = !DILocation(line: 2565, column: 14, scope: !1419)
!1421 = !DILocation(line: 2565, column: 19, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 2565, column: 9)
!1423 = !DILocation(line: 2565, column: 20, scope: !1422)
!1424 = !DILocation(line: 2565, column: 9, scope: !1419)
!1425 = !DILocation(line: 2566, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 2566, column: 17)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 2565, column: 29)
!1428 = !DILocation(line: 2566, column: 30, scope: !1426)
!1429 = !DILocation(line: 2566, column: 33, scope: !1426)
!1430 = !DILocation(line: 2566, column: 17, scope: !1427)
!1431 = !DILocation(line: 2567, column: 21, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 2567, column: 21)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 2566, column: 41)
!1434 = !DILocation(line: 2567, column: 21, scope: !1433)
!1435 = !DILocation(line: 2567, column: 32, scope: !1432)
!1436 = !DILocation(line: 2568, column: 27, scope: !1433)
!1437 = !DILocation(line: 2569, column: 13, scope: !1433)
!1438 = !DILocation(line: 2569, column: 24, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 2569, column: 24)
!1440 = !DILocation(line: 2569, column: 37, scope: !1439)
!1441 = !DILocation(line: 2569, column: 40, scope: !1439)
!1442 = !DILocation(line: 2569, column: 46, scope: !1439)
!1443 = !DILocation(line: 2569, column: 49, scope: !1439)
!1444 = !DILocation(line: 2569, column: 62, scope: !1439)
!1445 = !DILocation(line: 2569, column: 65, scope: !1439)
!1446 = !DILocation(line: 2569, column: 24, scope: !1426)
!1447 = !DILocation(line: 2570, column: 17, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 2569, column: 72)
!1449 = !DILocation(line: 2572, column: 28, scope: !1427)
!1450 = !DILocation(line: 2572, column: 41, scope: !1427)
!1451 = !DILocation(line: 2572, column: 23, scope: !1427)
!1452 = !DILocation(line: 2572, column: 13, scope: !1427)
!1453 = !DILocation(line: 2572, column: 26, scope: !1427)
!1454 = !DILocation(line: 2573, column: 9, scope: !1427)
!1455 = !DILocation(line: 2565, column: 24, scope: !1422)
!1456 = !DILocation(line: 2565, column: 9, scope: !1422)
!1457 = distinct !{!1457, !1424, !1458, !1411}
!1458 = !DILocation(line: 2573, column: 9, scope: !1419)
!1459 = !DILocation(line: 2574, column: 23, scope: !1355)
!1460 = !DILocation(line: 2577, column: 23, scope: !1355)
!1461 = !DILocation(line: 2577, column: 53, scope: !1355)
!1462 = !DILocation(line: 2574, column: 9, scope: !1355)
!1463 = !DILocation(line: 2578, column: 35, scope: !1355)
!1464 = !DILocation(line: 2578, column: 16, scope: !1355)
!1465 = !DILocation(line: 2578, column: 9, scope: !1355)
!1466 = !DILocation(line: 2579, column: 5, scope: !1356)
!1467 = !DILocation(line: 2580, column: 5, scope: !1347)
!1468 = !DILocation(line: 2581, column: 1, scope: !1347)
!1469 = !DISubprogram(name: "PyTuple_New", scope: !1470, file: !1470, line: 30, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/tupleobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "ef7731d859c7588a602c086240aebf11")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!14, !20}
!1473 = !DISubprogram(name: "PyBytes_FromStringAndSize", scope: !1474, file: !1474, line: 34, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1474 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/bytesobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "4bc8d34477ea1dd228eae99f80a8951b")
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!14, !40, !20}
!1477 = !DISubprogram(name: "PyUnicode_FromStringAndSize", scope: !1478, file: !1478, line: 130, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/unicodeobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "0cca020c29e2c9bcb16b6fcf0d642f7b")
!1479 = !DISubprogram(name: "PyImport_AddModule", scope: !1480, file: !1480, line: 43, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/import.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "283acfa302bf06babd574eee608cf1a1")
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!14, !40}
!1483 = !DISubprogram(name: "PyObject_SetAttrString", scope: !6, file: !6, line: 290, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1484 = distinct !DISubprogram(name: "__Pyx_InitGlobals", scope: !3, file: !3, line: 1374, type: !488, scopeLine: 1374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1485)
!1485 = !{!1486}
!1486 = !DILabel(scope: !1484, name: "__pyx_L1_error", file: !3, line: 1377)
!1487 = !DILocation(line: 1375, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 1375, column: 7)
!1489 = !DILocation(line: 1375, column: 43, scope: !1488)
!1490 = !DILocation(line: 1375, column: 7, scope: !1484)
!1491 = !DILocation(line: 1375, column: 48, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1375, column: 48)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1375, column: 48)
!1494 = !DILocation(line: 1375, column: 48, scope: !1493)
!1495 = !DILocation(line: 1376, column: 3, scope: !1484)
!1496 = !DILocation(line: 1377, column: 3, scope: !1484)
!1497 = !DILocation(line: 1378, column: 3, scope: !1484)
!1498 = !DILocation(line: 1379, column: 1, scope: !1484)
!1499 = !DISubprogram(name: "PyObject_SetAttr", scope: !6, file: !6, line: 293, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubprogram(name: "PyImport_GetModuleDict", scope: !1480, file: !1480, line: 34, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubprogram(name: "PyDict_GetItemString", scope: !1340, file: !1340, line: 57, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = distinct !DISubprogram(name: "__Pyx_InitCachedBuiltins", scope: !3, file: !3, line: 1354, type: !488, scopeLine: 1354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1503 = !DILocation(line: 1355, column: 3, scope: !1502)
!1504 = distinct !DISubprogram(name: "__Pyx_InitCachedConstants", scope: !3, file: !3, line: 1358, type: !488, scopeLine: 1358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1505 = !{!1506}
!1506 = !DILabel(scope: !1504, name: "__pyx_L1_error", file: !3, line: 1369)
!1507 = !DILocation(line: 1366, column: 87, scope: !1504)
!1508 = !DILocation(line: 1366, column: 106, scope: !1504)
!1509 = !DILocation(line: 1366, column: 125, scope: !1504)
!1510 = !DILocation(line: 1366, column: 144, scope: !1504)
!1511 = !DILocation(line: 1366, column: 163, scope: !1504)
!1512 = !DILocation(line: 1366, column: 182, scope: !1504)
!1513 = !DILocation(line: 1366, column: 201, scope: !1504)
!1514 = !DILocation(line: 1366, column: 236, scope: !1504)
!1515 = !DILocation(line: 1366, column: 262, scope: !1504)
!1516 = !DILocation(line: 1366, column: 31, scope: !1504)
!1517 = !DILocation(line: 1366, column: 18, scope: !1504)
!1518 = !DILocation(line: 1366, column: 286, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 1366, column: 286)
!1520 = !DILocation(line: 1366, column: 286, scope: !1504)
!1521 = !DILocation(line: 1366, column: 313, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1366, column: 313)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1366, column: 313)
!1524 = !DILocation(line: 1366, column: 313, scope: !1523)
!1525 = !DILocation(line: 1368, column: 3, scope: !1504)
!1526 = !DILocation(line: 1369, column: 3, scope: !1504)
!1527 = !DILocation(line: 1371, column: 3, scope: !1504)
!1528 = !DILocation(line: 1372, column: 1, scope: !1504)
!1529 = distinct !DISubprogram(name: "__Pyx_modinit_global_init_code", scope: !3, file: !3, line: 1389, type: !488, scopeLine: 1389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1530 = !DILocation(line: 1394, column: 3, scope: !1529)
!1531 = distinct !DISubprogram(name: "__Pyx_modinit_variable_export_code", scope: !3, file: !3, line: 1397, type: !488, scopeLine: 1397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1532 = !DILocation(line: 1402, column: 3, scope: !1531)
!1533 = distinct !DISubprogram(name: "__Pyx_modinit_function_export_code", scope: !3, file: !3, line: 1405, type: !488, scopeLine: 1405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1534 = !DILocation(line: 1410, column: 3, scope: !1533)
!1535 = distinct !DISubprogram(name: "__Pyx_modinit_type_init_code", scope: !3, file: !3, line: 1413, type: !488, scopeLine: 1413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1536 = !DILocation(line: 1418, column: 3, scope: !1535)
!1537 = distinct !DISubprogram(name: "__Pyx_modinit_type_import_code", scope: !3, file: !3, line: 1421, type: !488, scopeLine: 1421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1538 = !DILocation(line: 1426, column: 3, scope: !1537)
!1539 = distinct !DISubprogram(name: "__Pyx_modinit_variable_import_code", scope: !3, file: !3, line: 1429, type: !488, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1540 = !DILocation(line: 1434, column: 3, scope: !1539)
!1541 = distinct !DISubprogram(name: "__Pyx_modinit_function_import_code", scope: !3, file: !3, line: 1437, type: !488, scopeLine: 1437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1542 = !DILocation(line: 1442, column: 3, scope: !1541)
!1543 = !DISubprogram(name: "PyCMethod_New", scope: !250, file: !250, line: 74, type: !1544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!14, !247, !14, !14, !28}
!1546 = !DISubprogram(name: "PyDict_SetItem", scope: !1340, file: !1340, line: 24, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DISubprogram(name: "PyDict_New", scope: !1340, file: !1340, line: 21, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1548 = distinct !DISubprogram(name: "__Pyx_AddTraceback", scope: !3, file: !3, line: 1954, type: !1549, scopeLine: 1955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !40, !7, !7, !40}
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1552 = !DILocalVariable(name: "funcname", arg: 1, scope: !1548, file: !3, line: 1954, type: !40)
!1553 = !DILocalVariable(name: "c_line", arg: 2, scope: !1548, file: !3, line: 1954, type: !7)
!1554 = !DILocalVariable(name: "py_line", arg: 3, scope: !1548, file: !3, line: 1955, type: !7)
!1555 = !DILocalVariable(name: "filename", arg: 4, scope: !1548, file: !3, line: 1955, type: !40)
!1556 = !DILocalVariable(name: "py_code", scope: !1548, file: !3, line: 1956, type: !323)
!1557 = !DILocalVariable(name: "py_frame", scope: !1548, file: !3, line: 1957, type: !719)
!1558 = !DILocalVariable(name: "tstate", scope: !1548, file: !3, line: 1958, type: !658)
!1559 = !DILocalVariable(name: "ptype", scope: !1548, file: !3, line: 1959, type: !14)
!1560 = !DILocalVariable(name: "pvalue", scope: !1548, file: !3, line: 1959, type: !14)
!1561 = !DILocalVariable(name: "ptraceback", scope: !1548, file: !3, line: 1959, type: !14)
!1562 = !DILabel(scope: !1548, name: "bad", file: !3, line: 1988)
!1563 = !DILocation(line: 1954, column: 44, scope: !1548)
!1564 = !DILocation(line: 1954, column: 58, scope: !1548)
!1565 = !DILocation(line: 1955, column: 36, scope: !1548)
!1566 = !DILocation(line: 1955, column: 57, scope: !1548)
!1567 = !DILocation(line: 1956, column: 5, scope: !1548)
!1568 = !DILocation(line: 1956, column: 19, scope: !1548)
!1569 = !DILocation(line: 1957, column: 5, scope: !1548)
!1570 = !DILocation(line: 1957, column: 20, scope: !1548)
!1571 = !DILocation(line: 1958, column: 5, scope: !1548)
!1572 = !DILocation(line: 1958, column: 20, scope: !1548)
!1573 = !DILocation(line: 1958, column: 29, scope: !1548)
!1574 = !DILocation(line: 1959, column: 5, scope: !1548)
!1575 = !DILocation(line: 1959, column: 15, scope: !1548)
!1576 = !DILocation(line: 1959, column: 23, scope: !1548)
!1577 = !DILocation(line: 1959, column: 32, scope: !1548)
!1578 = !DILocation(line: 1960, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 1960, column: 9)
!1580 = !DILocation(line: 1960, column: 9, scope: !1548)
!1581 = !DILocation(line: 1961, column: 42, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1960, column: 17)
!1583 = !DILocation(line: 1961, column: 50, scope: !1582)
!1584 = !DILocation(line: 1961, column: 18, scope: !1582)
!1585 = !DILocation(line: 1961, column: 16, scope: !1582)
!1586 = !DILocation(line: 1962, column: 5, scope: !1582)
!1587 = !DILocation(line: 1963, column: 38, scope: !1548)
!1588 = !DILocation(line: 1963, column: 48, scope: !1548)
!1589 = !DILocation(line: 1963, column: 47, scope: !1548)
!1590 = !DILocation(line: 1963, column: 57, scope: !1548)
!1591 = !DILocation(line: 1963, column: 15, scope: !1548)
!1592 = !DILocation(line: 1963, column: 13, scope: !1548)
!1593 = !DILocation(line: 1964, column: 10, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 1964, column: 9)
!1595 = !DILocation(line: 1964, column: 9, scope: !1548)
!1596 = !DILocation(line: 1965, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 1964, column: 19)
!1598 = !DILocation(line: 1967, column: 13, scope: !1597)
!1599 = !DILocation(line: 1967, column: 23, scope: !1597)
!1600 = !DILocation(line: 1967, column: 31, scope: !1597)
!1601 = !DILocation(line: 1967, column: 40, scope: !1597)
!1602 = !DILocation(line: 1966, column: 19, scope: !1597)
!1603 = !DILocation(line: 1966, column: 17, scope: !1597)
!1604 = !DILocation(line: 1968, column: 14, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 1968, column: 13)
!1606 = !DILocation(line: 1968, column: 13, scope: !1597)
!1607 = !DILocation(line: 1971, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 1968, column: 23)
!1609 = !DILocation(line: 1972, column: 13, scope: !1608)
!1610 = !DILocation(line: 1973, column: 13, scope: !1608)
!1611 = !DILocation(line: 1974, column: 13, scope: !1608)
!1612 = !DILocation(line: 1976, column: 9, scope: !1597)
!1613 = !DILocation(line: 1977, column: 34, scope: !1597)
!1614 = !DILocation(line: 1977, column: 44, scope: !1597)
!1615 = !DILocation(line: 1977, column: 43, scope: !1597)
!1616 = !DILocation(line: 1977, column: 53, scope: !1597)
!1617 = !DILocation(line: 1977, column: 62, scope: !1597)
!1618 = !DILocation(line: 1977, column: 9, scope: !1597)
!1619 = !DILocation(line: 1978, column: 5, scope: !1597)
!1620 = !DILocation(line: 1980, column: 9, scope: !1548)
!1621 = !DILocation(line: 1981, column: 9, scope: !1548)
!1622 = !DILocation(line: 1982, column: 9, scope: !1548)
!1623 = !DILocation(line: 1979, column: 16, scope: !1548)
!1624 = !DILocation(line: 1979, column: 14, scope: !1548)
!1625 = !DILocation(line: 1985, column: 10, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 1985, column: 9)
!1627 = !DILocation(line: 1985, column: 9, scope: !1548)
!1628 = !DILocation(line: 1985, column: 20, scope: !1626)
!1629 = !DILocation(line: 1986, column: 5, scope: !1548)
!1630 = !{!1631, !952, i64 40}
!1631 = !{!"_frame", !1239, i64 0, !869, i64 16, !869, i64 24, !869, i64 32, !952, i64 40, !870, i64 44, !870, i64 45, !870, i64 46, !870, i64 48}
!1632 = !DILocation(line: 1987, column: 22, scope: !1548)
!1633 = !DILocation(line: 1987, column: 5, scope: !1548)
!1634 = !DILocation(line: 1988, column: 1, scope: !1548)
!1635 = !DILocation(line: 1989, column: 5, scope: !1548)
!1636 = !DILocation(line: 1990, column: 5, scope: !1548)
!1637 = !DILocation(line: 1991, column: 1, scope: !1548)
!1638 = !DISubprogram(name: "PyErr_Occurred", scope: !1335, file: !1335, line: 17, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1639 = !DISubprogram(name: "Py_GetVersion", scope: !1640, file: !1640, line: 54, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1640 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pylifecycle.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "12585b8c1f6c87706e647b98d41c3b43")
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!40}
!1643 = !DISubprogram(name: "PyOS_snprintf", scope: !1335, file: !1335, line: 317, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!7, !56, !321, !40, null}
!1646 = !DISubprogram(name: "PyErr_WarnEx", scope: !1647, file: !1647, line: 7, type: !1648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/warnings.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "9528d302e04153e64eccd7d4f8658e04")
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!7, !14, !40, !20}
!1650 = distinct !DISubprogram(name: "__Pyx_InitStrings", scope: !3, file: !3, line: 2584, type: !1651, scopeLine: 2584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1654)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!7, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!1654 = !{!1655}
!1655 = !DILocalVariable(name: "t", arg: 1, scope: !1650, file: !3, line: 2584, type: !1653)
!1656 = !DILocation(line: 2584, column: 52, scope: !1650)
!1657 = !DILocation(line: 2585, column: 5, scope: !1650)
!1658 = !DILocation(line: 2585, column: 12, scope: !1650)
!1659 = !DILocation(line: 2585, column: 15, scope: !1650)
!1660 = !{!1661, !869, i64 0}
!1661 = !{!"", !869, i64 0, !869, i64 8, !1204, i64 16, !869, i64 24, !870, i64 32, !870, i64 33, !870, i64 34}
!1662 = !DILocation(line: 2595, column: 13, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 2595, column: 13)
!1664 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 2585, column: 18)
!1665 = !DILocation(line: 2595, column: 16, scope: !1663)
!1666 = !{!1661, !870, i64 32}
!1667 = !DILocation(line: 2595, column: 29, scope: !1663)
!1668 = !DILocation(line: 2595, column: 32, scope: !1663)
!1669 = !{!1661, !870, i64 33}
!1670 = !DILocation(line: 2595, column: 27, scope: !1663)
!1671 = !DILocation(line: 2595, column: 13, scope: !1664)
!1672 = !DILocation(line: 2596, column: 17, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 2596, column: 17)
!1674 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 2595, column: 40)
!1675 = !DILocation(line: 2596, column: 20, scope: !1673)
!1676 = !{!1661, !870, i64 34}
!1677 = !DILocation(line: 2596, column: 17, scope: !1674)
!1678 = !DILocation(line: 2597, column: 52, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 2596, column: 28)
!1680 = !DILocation(line: 2597, column: 55, scope: !1679)
!1681 = !{!1661, !869, i64 8}
!1682 = !DILocation(line: 2597, column: 25, scope: !1679)
!1683 = !DILocation(line: 2597, column: 18, scope: !1679)
!1684 = !DILocation(line: 2597, column: 21, scope: !1679)
!1685 = !DILocation(line: 2597, column: 23, scope: !1679)
!1686 = !DILocation(line: 2598, column: 13, scope: !1679)
!1687 = !DILocation(line: 2598, column: 24, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 2598, column: 24)
!1689 = !DILocation(line: 2598, column: 27, scope: !1688)
!1690 = !{!1661, !869, i64 24}
!1691 = !DILocation(line: 2598, column: 24, scope: !1673)
!1692 = !DILocation(line: 2599, column: 42, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 2598, column: 37)
!1694 = !DILocation(line: 2599, column: 45, scope: !1693)
!1695 = !DILocation(line: 2599, column: 48, scope: !1693)
!1696 = !DILocation(line: 2599, column: 51, scope: !1693)
!1697 = !{!1661, !1204, i64 16}
!1698 = !DILocation(line: 2599, column: 53, scope: !1693)
!1699 = !DILocation(line: 2599, column: 58, scope: !1693)
!1700 = !DILocation(line: 2599, column: 61, scope: !1693)
!1701 = !DILocation(line: 2599, column: 25, scope: !1693)
!1702 = !DILocation(line: 2599, column: 18, scope: !1693)
!1703 = !DILocation(line: 2599, column: 21, scope: !1693)
!1704 = !DILocation(line: 2599, column: 23, scope: !1693)
!1705 = !DILocation(line: 2600, column: 13, scope: !1693)
!1706 = !DILocation(line: 2601, column: 53, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 2600, column: 20)
!1708 = !DILocation(line: 2601, column: 56, scope: !1707)
!1709 = !DILocation(line: 2601, column: 59, scope: !1707)
!1710 = !DILocation(line: 2601, column: 62, scope: !1707)
!1711 = !DILocation(line: 2601, column: 64, scope: !1707)
!1712 = !DILocation(line: 2601, column: 25, scope: !1707)
!1713 = !DILocation(line: 2601, column: 18, scope: !1707)
!1714 = !DILocation(line: 2601, column: 21, scope: !1707)
!1715 = !DILocation(line: 2601, column: 23, scope: !1707)
!1716 = !DILocation(line: 2603, column: 9, scope: !1674)
!1717 = !DILocation(line: 2604, column: 47, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 2603, column: 16)
!1719 = !DILocation(line: 2604, column: 50, scope: !1718)
!1720 = !DILocation(line: 2604, column: 53, scope: !1718)
!1721 = !DILocation(line: 2604, column: 56, scope: !1718)
!1722 = !DILocation(line: 2604, column: 58, scope: !1718)
!1723 = !DILocation(line: 2604, column: 21, scope: !1718)
!1724 = !DILocation(line: 2604, column: 14, scope: !1718)
!1725 = !DILocation(line: 2604, column: 17, scope: !1718)
!1726 = !DILocation(line: 2604, column: 19, scope: !1718)
!1727 = !DILocation(line: 2607, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 2607, column: 13)
!1729 = !DILocation(line: 2607, column: 18, scope: !1728)
!1730 = !DILocation(line: 2607, column: 14, scope: !1728)
!1731 = !DILocation(line: 2607, column: 13, scope: !1664)
!1732 = !DILocation(line: 2608, column: 13, scope: !1728)
!1733 = !DILocation(line: 2609, column: 28, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 2609, column: 13)
!1735 = !DILocation(line: 2609, column: 31, scope: !1734)
!1736 = !DILocation(line: 2609, column: 27, scope: !1734)
!1737 = !DILocation(line: 2609, column: 13, scope: !1734)
!1738 = !DILocation(line: 2609, column: 34, scope: !1734)
!1739 = !DILocation(line: 2609, column: 13, scope: !1664)
!1740 = !DILocation(line: 2610, column: 13, scope: !1734)
!1741 = !DILocation(line: 2611, column: 9, scope: !1664)
!1742 = distinct !{!1742, !1657, !1743, !1411}
!1743 = !DILocation(line: 2612, column: 5, scope: !1650)
!1744 = !DILocation(line: 2613, column: 5, scope: !1650)
!1745 = !DILocation(line: 2614, column: 1, scope: !1650)
!1746 = !DISubprogram(name: "PyUnicode_InternFromString", scope: !1478, file: !1478, line: 264, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1747 = !DISubprogram(name: "PyUnicode_Decode", scope: !1478, file: !1478, line: 358, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!14, !40, !20, !40, !40}
!1750 = !DISubprogram(name: "PyObject_Hash", scope: !6, file: !6, line: 301, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1751 = distinct !DISubprogram(name: "__Pyx_PyCode_New", scope: !3, file: !3, line: 474, type: !1752, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!323, !7, !7, !7, !7, !7, !14, !14, !14, !14, !14, !14, !14, !14, !7, !14}
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1789}
!1755 = !DILocalVariable(name: "a", arg: 1, scope: !1751, file: !3, line: 474, type: !7)
!1756 = !DILocalVariable(name: "k", arg: 2, scope: !1751, file: !3, line: 474, type: !7)
!1757 = !DILocalVariable(name: "l", arg: 3, scope: !1751, file: !3, line: 474, type: !7)
!1758 = !DILocalVariable(name: "s", arg: 4, scope: !1751, file: !3, line: 474, type: !7)
!1759 = !DILocalVariable(name: "f", arg: 5, scope: !1751, file: !3, line: 474, type: !7)
!1760 = !DILocalVariable(name: "code", arg: 6, scope: !1751, file: !3, line: 475, type: !14)
!1761 = !DILocalVariable(name: "c", arg: 7, scope: !1751, file: !3, line: 475, type: !14)
!1762 = !DILocalVariable(name: "n", arg: 8, scope: !1751, file: !3, line: 475, type: !14)
!1763 = !DILocalVariable(name: "v", arg: 9, scope: !1751, file: !3, line: 475, type: !14)
!1764 = !DILocalVariable(name: "fv", arg: 10, scope: !1751, file: !3, line: 476, type: !14)
!1765 = !DILocalVariable(name: "cell", arg: 11, scope: !1751, file: !3, line: 476, type: !14)
!1766 = !DILocalVariable(name: "fn", arg: 12, scope: !1751, file: !3, line: 476, type: !14)
!1767 = !DILocalVariable(name: "name", arg: 13, scope: !1751, file: !3, line: 477, type: !14)
!1768 = !DILocalVariable(name: "fline", arg: 14, scope: !1751, file: !3, line: 477, type: !7)
!1769 = !DILocalVariable(name: "lnos", arg: 15, scope: !1751, file: !3, line: 477, type: !14)
!1770 = !DILocalVariable(name: "kwds", scope: !1751, file: !3, line: 478, type: !14)
!1771 = !DILocalVariable(name: "argcount", scope: !1751, file: !3, line: 478, type: !14)
!1772 = !DILocalVariable(name: "posonlyargcount", scope: !1751, file: !3, line: 478, type: !14)
!1773 = !DILocalVariable(name: "kwonlyargcount", scope: !1751, file: !3, line: 478, type: !14)
!1774 = !DILocalVariable(name: "nlocals", scope: !1751, file: !3, line: 479, type: !14)
!1775 = !DILocalVariable(name: "stacksize", scope: !1751, file: !3, line: 479, type: !14)
!1776 = !DILocalVariable(name: "flags", scope: !1751, file: !3, line: 479, type: !14)
!1777 = !DILocalVariable(name: "replace", scope: !1751, file: !3, line: 479, type: !14)
!1778 = !DILocalVariable(name: "call_result", scope: !1751, file: !3, line: 479, type: !14)
!1779 = !DILocalVariable(name: "empty", scope: !1751, file: !3, line: 479, type: !14)
!1780 = !DILocalVariable(name: "fn_cstr", scope: !1751, file: !3, line: 480, type: !40)
!1781 = !DILocalVariable(name: "name_cstr", scope: !1751, file: !3, line: 481, type: !40)
!1782 = !DILocalVariable(name: "co", scope: !1751, file: !3, line: 482, type: !323)
!1783 = !DILocalVariable(name: "type", scope: !1751, file: !3, line: 483, type: !14)
!1784 = !DILocalVariable(name: "value", scope: !1751, file: !3, line: 483, type: !14)
!1785 = !DILocalVariable(name: "traceback", scope: !1751, file: !3, line: 483, type: !14)
!1786 = !DILabel(scope: !1787, name: "cleanup_code_too", file: !3, line: 515)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 514, column: 16)
!1788 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 514, column: 13)
!1789 = !DILabel(scope: !1751, name: "end", file: !3, line: 519)
!1790 = !DILocation(line: 474, column: 61, scope: !1751)
!1791 = !DILocation(line: 474, column: 68, scope: !1751)
!1792 = !DILocation(line: 474, column: 75, scope: !1751)
!1793 = !DILocation(line: 474, column: 82, scope: !1751)
!1794 = !DILocation(line: 474, column: 89, scope: !1751)
!1795 = !DILocation(line: 475, column: 63, scope: !1751)
!1796 = !DILocation(line: 475, column: 79, scope: !1751)
!1797 = !DILocation(line: 475, column: 92, scope: !1751)
!1798 = !DILocation(line: 475, column: 105, scope: !1751)
!1799 = !DILocation(line: 476, column: 63, scope: !1751)
!1800 = !DILocation(line: 476, column: 77, scope: !1751)
!1801 = !DILocation(line: 476, column: 93, scope: !1751)
!1802 = !DILocation(line: 477, column: 63, scope: !1751)
!1803 = !DILocation(line: 477, column: 73, scope: !1751)
!1804 = !DILocation(line: 477, column: 90, scope: !1751)
!1805 = !DILocation(line: 478, column: 9, scope: !1751)
!1806 = !DILocation(line: 478, column: 19, scope: !1751)
!1807 = !DILocation(line: 478, column: 31, scope: !1751)
!1808 = !DILocation(line: 478, column: 47, scope: !1751)
!1809 = !DILocation(line: 478, column: 70, scope: !1751)
!1810 = !DILocation(line: 479, column: 9, scope: !1751)
!1811 = !DILocation(line: 479, column: 19, scope: !1751)
!1812 = !DILocation(line: 479, column: 34, scope: !1751)
!1813 = !DILocation(line: 479, column: 51, scope: !1751)
!1814 = !DILocation(line: 479, column: 64, scope: !1751)
!1815 = !DILocation(line: 479, column: 79, scope: !1751)
!1816 = !DILocation(line: 479, column: 98, scope: !1751)
!1817 = !DILocation(line: 480, column: 9, scope: !1751)
!1818 = !DILocation(line: 480, column: 21, scope: !1751)
!1819 = !DILocation(line: 481, column: 9, scope: !1751)
!1820 = !DILocation(line: 481, column: 21, scope: !1751)
!1821 = !DILocation(line: 482, column: 9, scope: !1751)
!1822 = !DILocation(line: 482, column: 23, scope: !1751)
!1823 = !DILocation(line: 483, column: 9, scope: !1751)
!1824 = !DILocation(line: 483, column: 19, scope: !1751)
!1825 = !DILocation(line: 483, column: 26, scope: !1751)
!1826 = !DILocation(line: 483, column: 34, scope: !1751)
!1827 = !DILocation(line: 484, column: 9, scope: !1751)
!1828 = !DILocation(line: 485, column: 20, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 485, column: 13)
!1830 = !DILocation(line: 485, column: 19, scope: !1829)
!1831 = !DILocation(line: 485, column: 13, scope: !1751)
!1832 = !DILocation(line: 485, column: 35, scope: !1829)
!1833 = !DILocation(line: 486, column: 40, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 486, column: 13)
!1835 = !DILocation(line: 486, column: 24, scope: !1834)
!1836 = !DILocation(line: 486, column: 23, scope: !1834)
!1837 = !DILocation(line: 486, column: 13, scope: !1751)
!1838 = !DILocation(line: 486, column: 45, scope: !1834)
!1839 = !DILocation(line: 487, column: 34, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 487, column: 13)
!1841 = !DILocation(line: 487, column: 55, scope: !1840)
!1842 = !DILocation(line: 487, column: 13, scope: !1840)
!1843 = !DILocation(line: 487, column: 65, scope: !1840)
!1844 = !DILocation(line: 487, column: 13, scope: !1751)
!1845 = !DILocation(line: 487, column: 71, scope: !1840)
!1846 = !DILocation(line: 488, column: 31, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 488, column: 13)
!1848 = !DILocation(line: 488, column: 30, scope: !1847)
!1849 = !DILocation(line: 488, column: 13, scope: !1751)
!1850 = !DILocation(line: 488, column: 52, scope: !1847)
!1851 = !DILocation(line: 489, column: 34, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 489, column: 13)
!1853 = !DILocation(line: 489, column: 62, scope: !1852)
!1854 = !DILocation(line: 489, column: 13, scope: !1852)
!1855 = !DILocation(line: 489, column: 79, scope: !1852)
!1856 = !DILocation(line: 489, column: 13, scope: !1751)
!1857 = !DILocation(line: 489, column: 85, scope: !1852)
!1858 = !DILocation(line: 490, column: 46, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 490, column: 13)
!1860 = !DILocation(line: 490, column: 30, scope: !1859)
!1861 = !DILocation(line: 490, column: 29, scope: !1859)
!1862 = !DILocation(line: 490, column: 13, scope: !1751)
!1863 = !DILocation(line: 490, column: 51, scope: !1859)
!1864 = !DILocation(line: 491, column: 34, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 491, column: 13)
!1866 = !DILocation(line: 491, column: 61, scope: !1865)
!1867 = !DILocation(line: 491, column: 13, scope: !1865)
!1868 = !DILocation(line: 491, column: 77, scope: !1865)
!1869 = !DILocation(line: 491, column: 13, scope: !1751)
!1870 = !DILocation(line: 491, column: 83, scope: !1865)
!1871 = !DILocation(line: 492, column: 39, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 492, column: 13)
!1873 = !DILocation(line: 492, column: 23, scope: !1872)
!1874 = !DILocation(line: 492, column: 22, scope: !1872)
!1875 = !DILocation(line: 492, column: 13, scope: !1751)
!1876 = !DILocation(line: 492, column: 44, scope: !1872)
!1877 = !DILocation(line: 493, column: 34, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 493, column: 13)
!1879 = !DILocation(line: 493, column: 54, scope: !1878)
!1880 = !DILocation(line: 493, column: 13, scope: !1878)
!1881 = !DILocation(line: 493, column: 63, scope: !1878)
!1882 = !DILocation(line: 493, column: 13, scope: !1751)
!1883 = !DILocation(line: 493, column: 69, scope: !1878)
!1884 = !DILocation(line: 494, column: 41, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 494, column: 13)
!1886 = !DILocation(line: 494, column: 25, scope: !1885)
!1887 = !DILocation(line: 494, column: 24, scope: !1885)
!1888 = !DILocation(line: 494, column: 13, scope: !1751)
!1889 = !DILocation(line: 494, column: 46, scope: !1885)
!1890 = !DILocation(line: 495, column: 34, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 495, column: 13)
!1892 = !DILocation(line: 495, column: 56, scope: !1891)
!1893 = !DILocation(line: 495, column: 13, scope: !1891)
!1894 = !DILocation(line: 495, column: 67, scope: !1891)
!1895 = !DILocation(line: 495, column: 13, scope: !1751)
!1896 = !DILocation(line: 495, column: 73, scope: !1891)
!1897 = !DILocation(line: 496, column: 37, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 496, column: 13)
!1899 = !DILocation(line: 496, column: 21, scope: !1898)
!1900 = !DILocation(line: 496, column: 20, scope: !1898)
!1901 = !DILocation(line: 496, column: 13, scope: !1751)
!1902 = !DILocation(line: 496, column: 42, scope: !1898)
!1903 = !DILocation(line: 497, column: 34, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 497, column: 13)
!1905 = !DILocation(line: 497, column: 52, scope: !1904)
!1906 = !DILocation(line: 497, column: 13, scope: !1904)
!1907 = !DILocation(line: 497, column: 59, scope: !1904)
!1908 = !DILocation(line: 497, column: 13, scope: !1751)
!1909 = !DILocation(line: 497, column: 65, scope: !1904)
!1910 = !DILocation(line: 498, column: 34, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 498, column: 13)
!1912 = !DILocation(line: 498, column: 51, scope: !1911)
!1913 = !DILocation(line: 498, column: 13, scope: !1911)
!1914 = !DILocation(line: 498, column: 57, scope: !1911)
!1915 = !DILocation(line: 498, column: 13, scope: !1751)
!1916 = !DILocation(line: 498, column: 63, scope: !1911)
!1917 = !DILocation(line: 499, column: 34, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 499, column: 13)
!1919 = !DILocation(line: 499, column: 53, scope: !1918)
!1920 = !DILocation(line: 499, column: 13, scope: !1918)
!1921 = !DILocation(line: 499, column: 56, scope: !1918)
!1922 = !DILocation(line: 499, column: 13, scope: !1751)
!1923 = !DILocation(line: 499, column: 62, scope: !1918)
!1924 = !DILocation(line: 500, column: 34, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 500, column: 13)
!1926 = !DILocation(line: 500, column: 52, scope: !1925)
!1927 = !DILocation(line: 500, column: 13, scope: !1925)
!1928 = !DILocation(line: 500, column: 55, scope: !1925)
!1929 = !DILocation(line: 500, column: 13, scope: !1751)
!1930 = !DILocation(line: 500, column: 61, scope: !1925)
!1931 = !DILocation(line: 501, column: 34, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 501, column: 13)
!1933 = !DILocation(line: 501, column: 55, scope: !1932)
!1934 = !DILocation(line: 501, column: 13, scope: !1932)
!1935 = !DILocation(line: 501, column: 58, scope: !1932)
!1936 = !DILocation(line: 501, column: 13, scope: !1751)
!1937 = !DILocation(line: 501, column: 64, scope: !1932)
!1938 = !DILocation(line: 502, column: 34, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 502, column: 13)
!1940 = !DILocation(line: 502, column: 55, scope: !1939)
!1941 = !DILocation(line: 502, column: 13, scope: !1939)
!1942 = !DILocation(line: 502, column: 59, scope: !1939)
!1943 = !DILocation(line: 502, column: 13, scope: !1751)
!1944 = !DILocation(line: 502, column: 65, scope: !1939)
!1945 = !DILocation(line: 503, column: 34, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 503, column: 13)
!1947 = !DILocation(line: 503, column: 55, scope: !1946)
!1948 = !DILocation(line: 503, column: 13, scope: !1946)
!1949 = !DILocation(line: 503, column: 61, scope: !1946)
!1950 = !DILocation(line: 503, column: 13, scope: !1751)
!1951 = !DILocation(line: 503, column: 67, scope: !1946)
!1952 = !DILocation(line: 504, column: 34, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 504, column: 13)
!1954 = !DILocation(line: 504, column: 56, scope: !1953)
!1955 = !DILocation(line: 504, column: 13, scope: !1953)
!1956 = !DILocation(line: 504, column: 62, scope: !1953)
!1957 = !DILocation(line: 504, column: 13, scope: !1751)
!1958 = !DILocation(line: 504, column: 68, scope: !1953)
!1959 = !DILocation(line: 505, column: 47, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 505, column: 13)
!1961 = !DILocation(line: 505, column: 23, scope: !1960)
!1962 = !DILocation(line: 505, column: 22, scope: !1960)
!1963 = !DILocation(line: 505, column: 13, scope: !1751)
!1964 = !DILocation(line: 505, column: 59, scope: !1960)
!1965 = !DILocation(line: 506, column: 49, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 506, column: 13)
!1967 = !DILocation(line: 506, column: 25, scope: !1966)
!1968 = !DILocation(line: 506, column: 24, scope: !1966)
!1969 = !DILocation(line: 506, column: 13, scope: !1751)
!1970 = !DILocation(line: 506, column: 63, scope: !1966)
!1971 = !DILocation(line: 507, column: 36, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 507, column: 13)
!1973 = !DILocation(line: 507, column: 45, scope: !1972)
!1974 = !DILocation(line: 507, column: 56, scope: !1972)
!1975 = !DILocation(line: 507, column: 20, scope: !1972)
!1976 = !DILocation(line: 507, column: 18, scope: !1972)
!1977 = !DILocation(line: 507, column: 13, scope: !1751)
!1978 = !DILocation(line: 507, column: 65, scope: !1972)
!1979 = !DILocation(line: 508, column: 59, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 508, column: 13)
!1981 = !DILocation(line: 508, column: 25, scope: !1980)
!1982 = !DILocation(line: 508, column: 23, scope: !1980)
!1983 = !DILocation(line: 508, column: 13, scope: !1751)
!1984 = !DILocation(line: 508, column: 76, scope: !1980)
!1985 = !DILocation(line: 509, column: 23, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 509, column: 13)
!1987 = !DILocation(line: 509, column: 21, scope: !1986)
!1988 = !DILocation(line: 509, column: 13, scope: !1751)
!1989 = !DILocation(line: 509, column: 40, scope: !1986)
!1990 = !DILocation(line: 510, column: 43, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 510, column: 13)
!1992 = !DILocation(line: 510, column: 52, scope: !1991)
!1993 = !DILocation(line: 510, column: 59, scope: !1991)
!1994 = !DILocation(line: 510, column: 29, scope: !1991)
!1995 = !DILocation(line: 510, column: 27, scope: !1991)
!1996 = !DILocation(line: 510, column: 13, scope: !1751)
!1997 = !DILocation(line: 510, column: 67, scope: !1991)
!1998 = !DILocation(line: 511, column: 9, scope: !1751)
!1999 = !DILocation(line: 512, column: 29, scope: !1751)
!2000 = !DILocation(line: 512, column: 12, scope: !1751)
!2001 = !DILocation(line: 513, column: 21, scope: !1751)
!2002 = !DILocation(line: 514, column: 13, scope: !1751)
!2003 = !DILocation(line: 514, column: 16, scope: !1788)
!2004 = !DILocation(line: 515, column: 13, scope: !1787)
!2005 = !DILocation(line: 516, column: 13, scope: !1787)
!2006 = !DILocation(line: 517, column: 16, scope: !1787)
!2007 = !DILocation(line: 518, column: 9, scope: !1787)
!2008 = !DILocation(line: 514, column: 13, scope: !1788)
!2009 = !DILocation(line: 519, column: 9, scope: !1751)
!2010 = !DILocation(line: 520, column: 9, scope: !1751)
!2011 = !DILocation(line: 521, column: 9, scope: !1751)
!2012 = !DILocation(line: 522, column: 9, scope: !1751)
!2013 = !DILocation(line: 523, column: 9, scope: !1751)
!2014 = !DILocation(line: 524, column: 9, scope: !1751)
!2015 = !DILocation(line: 525, column: 9, scope: !1751)
!2016 = !DILocation(line: 526, column: 9, scope: !1751)
!2017 = !DILocation(line: 527, column: 9, scope: !1751)
!2018 = !DILocation(line: 528, column: 9, scope: !1751)
!2019 = !DILocation(line: 529, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 529, column: 13)
!2021 = !DILocation(line: 529, column: 13, scope: !1751)
!2022 = !DILocation(line: 530, column: 27, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 529, column: 19)
!2024 = !DILocation(line: 530, column: 33, scope: !2023)
!2025 = !DILocation(line: 530, column: 40, scope: !2023)
!2026 = !DILocation(line: 530, column: 13, scope: !2023)
!2027 = !DILocation(line: 531, column: 9, scope: !2023)
!2028 = !DILocation(line: 532, column: 16, scope: !1751)
!2029 = !DILocation(line: 533, column: 5, scope: !1751)
!2030 = !DILocation(line: 532, column: 9, scope: !1751)
!2031 = !DISubprogram(name: "PyErr_Fetch", scope: !1335, file: !1335, line: 19, type: !2032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !80, !80, !80}
!2034 = !DISubprogram(name: "PyLong_FromLong", scope: !2035, file: !2035, line: 16, type: !2036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/longobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "7f1ad7d2783e1cef14a999a2b7ddd9d0")
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!14, !26}
!2038 = !DISubprogram(name: "PyUnicode_AsUTF8AndSize", scope: !1478, file: !1478, line: 479, type: !2039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!40, !14, !214}
!2041 = !DISubprogram(name: "PyCode_NewEmpty", scope: !326, file: !326, line: 163, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!323, !40, !40, !7}
!2044 = !DISubprogram(name: "PyObject_Call", scope: !2045, file: !2045, line: 158, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2045 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/abstract.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "c6c7b7821c389c947e1fc710c923c80c")
!2046 = !DISubprogram(name: "PyErr_Restore", scope: !1335, file: !1335, line: 20, type: !2047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !14, !14, !14}
!2049 = distinct !DISubprogram(name: "__pyx_pw_5pysam_12libcsamtools_1py_samtools", scope: !3, file: !3, line: 1276, type: !91, scopeLine: 1276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DILocalVariable(name: "__pyx_self", arg: 1, scope: !2049, file: !3, line: 1276, type: !14)
!2052 = !DILocalVariable(name: "unused", arg: 2, scope: !2049, file: !3, line: 1276, type: !14)
!2053 = !DILocalVariable(name: "__pyx_r", scope: !2049, file: !3, line: 1277, type: !14)
!2054 = !DILocation(line: 1276, column: 72, scope: !2049)
!2055 = !DILocation(line: 1276, column: 108, scope: !2049)
!2056 = !DILocation(line: 1277, column: 3, scope: !2049)
!2057 = !DILocation(line: 1277, column: 13, scope: !2049)
!2058 = !DILocation(line: 1280, column: 56, scope: !2049)
!2059 = !DILocation(line: 1280, column: 13, scope: !2049)
!2060 = !DILocation(line: 1280, column: 11, scope: !2049)
!2061 = !DILocation(line: 1284, column: 10, scope: !2049)
!2062 = !DILocation(line: 1285, column: 1, scope: !2049)
!2063 = !DILocation(line: 1284, column: 3, scope: !2049)
!2064 = distinct !DISubprogram(name: "__pyx_pf_5pysam_12libcsamtools_py_samtools", scope: !3, file: !3, line: 1287, type: !70, scopeLine: 1287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "__pyx_self", arg: 1, scope: !2064, file: !3, line: 1287, type: !14)
!2067 = !DILocalVariable(name: "__pyx_r", scope: !2064, file: !3, line: 1288, type: !14)
!2068 = !DILocation(line: 1287, column: 85, scope: !2064)
!2069 = !DILocation(line: 1288, column: 3, scope: !2064)
!2070 = !DILocation(line: 1288, column: 13, scope: !2064)
!2071 = !DILocation(line: 1293, column: 11, scope: !2064)
!2072 = !DILocation(line: 1293, column: 22, scope: !2064)
!2073 = !DILocation(line: 1296, column: 10, scope: !2064)
!2074 = !DILocation(line: 1297, column: 1, scope: !2064)
!2075 = !DILocation(line: 1296, column: 3, scope: !2064)
!2076 = !DILocation(line: 1766, column: 65, scope: !655)
!2077 = !DILocation(line: 1766, column: 77, scope: !655)
!2078 = !DILocation(line: 1767, column: 5, scope: !655)
!2079 = !DILocation(line: 1767, column: 15, scope: !655)
!2080 = !DILocation(line: 1768, column: 5, scope: !655)
!2081 = !DILocation(line: 1768, column: 15, scope: !655)
!2082 = !DILocation(line: 1768, column: 23, scope: !655)
!2083 = !DILocation(line: 1768, column: 32, scope: !655)
!2084 = !DILocation(line: 1770, column: 5, scope: !655)
!2085 = !DILocation(line: 1770, column: 16, scope: !655)
!2086 = !DILocation(line: 1772, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1772, column: 9)
!2088 = !DILocation(line: 1772, column: 9, scope: !655)
!2089 = !DILocation(line: 1773, column: 16, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1772, column: 42)
!2091 = !DILocation(line: 1773, column: 9, scope: !2090)
!2092 = !DILocation(line: 1775, column: 5, scope: !655)
!2093 = !DILocation(line: 1777, column: 48, scope: !655)
!2094 = !DILocation(line: 1777, column: 27, scope: !655)
!2095 = !DILocation(line: 1777, column: 25, scope: !655)
!2096 = !DILocation(line: 1778, column: 9, scope: !825)
!2097 = !DILocation(line: 1778, column: 9, scope: !655)
!2098 = !DILocation(line: 1779, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 1779, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 1779, column: 9)
!2101 = distinct !DILexicalBlock(scope: !825, file: !3, line: 1778, column: 38)
!2102 = !{!2103, !1204, i64 24}
!2103 = !{!"", !1239, i64 0, !1204, i64 16, !1204, i64 24, !869, i64 32, !869, i64 40}
!2104 = !DILocation(line: 1779, column: 9, scope: !2100)
!2105 = !DILocation(line: 1779, column: 9, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1779, column: 9)
!2107 = !DILocation(line: 1779, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1779, column: 9)
!2109 = !{!2110, !1204, i64 24}
!2110 = !{!"", !1239, i64 0, !1204, i64 16, !1204, i64 24, !2111, i64 32, !869, i64 40}
!2111 = !{!"", !952, i64 0, !952, i64 0, !952, i64 0, !952, i64 0, !952, i64 0}
!2112 = !DILocation(line: 1782, column: 5, scope: !2101)
!2113 = !DILocation(line: 1785, column: 7, scope: !824)
!2114 = !DILocation(line: 1785, column: 17, scope: !824)
!2115 = !DILocation(line: 1785, column: 59, scope: !824)
!2116 = !DILocation(line: 1785, column: 81, scope: !824)
!2117 = !DILocation(line: 1785, column: 33, scope: !824)
!2118 = !DILocation(line: 1786, column: 11, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !824, file: !3, line: 1786, column: 11)
!2120 = !DILocation(line: 1786, column: 11, scope: !824)
!2121 = !DILocation(line: 1787, column: 34, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 1786, column: 26)
!2123 = !DILocation(line: 1787, column: 21, scope: !2122)
!2124 = !DILocation(line: 1787, column: 19, scope: !2122)
!2125 = !DILocation(line: 1788, column: 9, scope: !2122)
!2126 = !DILocation(line: 1789, column: 7, scope: !2122)
!2127 = !DILocation(line: 1790, column: 9, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 1789, column: 14)
!2129 = !DILocation(line: 1791, column: 19, scope: !2128)
!2130 = !DILocation(line: 1793, column: 5, scope: !825)
!2131 = !DILocation(line: 1794, column: 10, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1794, column: 9)
!2133 = !DILocation(line: 1794, column: 9, scope: !655)
!2134 = !DILocation(line: 1795, column: 16, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 1794, column: 21)
!2136 = !DILocation(line: 1796, column: 33, scope: !2135)
!2137 = !DILocation(line: 1796, column: 55, scope: !2135)
!2138 = !DILocation(line: 1796, column: 16, scope: !2135)
!2139 = !DILocation(line: 1797, column: 5, scope: !2135)
!2140 = !DILocation(line: 1798, column: 14, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 1798, column: 14)
!2142 = !DILocation(line: 1798, column: 24, scope: !2141)
!2143 = !DILocation(line: 1798, column: 36, scope: !2141)
!2144 = !DILocation(line: 1798, column: 40, scope: !2141)
!2145 = !DILocation(line: 1798, column: 50, scope: !2141)
!2146 = !DILocation(line: 1798, column: 61, scope: !2141)
!2147 = !DILocation(line: 1798, column: 77, scope: !2141)
!2148 = !DILocation(line: 1798, column: 64, scope: !2141)
!2149 = !DILocation(line: 1798, column: 88, scope: !2141)
!2150 = !DILocation(line: 1798, column: 14, scope: !2132)
!2151 = !DILocation(line: 1799, column: 16, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 1798, column: 95)
!2153 = !DILocation(line: 1800, column: 5, scope: !2152)
!2154 = !DILocation(line: 1801, column: 5, scope: !655)
!2155 = !DILocation(line: 1802, column: 12, scope: !655)
!2156 = !DILocation(line: 1802, column: 5, scope: !655)
!2157 = !DILocation(line: 1803, column: 1, scope: !655)
!2158 = distinct !DISubprogram(name: "__pyx_find_code_object", scope: !3, file: !3, line: 1828, type: !2159, scopeLine: 1828, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!323, !7}
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "code_line", arg: 1, scope: !2158, file: !3, line: 1828, type: !7)
!2163 = !DILocalVariable(name: "code_object", scope: !2158, file: !3, line: 1829, type: !323)
!2164 = !DILocalVariable(name: "pos", scope: !2158, file: !3, line: 1830, type: !7)
!2165 = !DILocation(line: 1828, column: 49, scope: !2158)
!2166 = !DILocation(line: 1829, column: 5, scope: !2158)
!2167 = !DILocation(line: 1829, column: 19, scope: !2158)
!2168 = !DILocation(line: 1830, column: 5, scope: !2158)
!2169 = !DILocation(line: 1830, column: 9, scope: !2158)
!2170 = !DILocation(line: 1831, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 1831, column: 9)
!2172 = !DILocation(line: 1831, column: 30, scope: !2171)
!2173 = !DILocation(line: 1831, column: 33, scope: !2171)
!2174 = !{!2175, !869, i64 8}
!2175 = !{!"__Pyx_CodeObjectCache", !952, i64 0, !952, i64 4, !869, i64 8}
!2176 = !DILocation(line: 1831, column: 9, scope: !2158)
!2177 = !DILocation(line: 1832, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1831, column: 70)
!2179 = !DILocation(line: 1834, column: 54, scope: !2158)
!2180 = !DILocation(line: 1834, column: 80, scope: !2158)
!2181 = !{!2175, !952, i64 0}
!2182 = !DILocation(line: 1834, column: 87, scope: !2158)
!2183 = !DILocation(line: 1834, column: 11, scope: !2158)
!2184 = !DILocation(line: 1834, column: 9, scope: !2158)
!2185 = !DILocation(line: 1835, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 1835, column: 9)
!2187 = !DILocation(line: 1835, column: 49, scope: !2186)
!2188 = !DILocation(line: 1835, column: 52, scope: !2186)
!2189 = !{!2190, !952, i64 8}
!2190 = !{!"", !869, i64 0, !952, i64 8}
!2191 = !DILocation(line: 1835, column: 9, scope: !2158)
!2192 = !DILocation(line: 1836, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1835, column: 116)
!2194 = !DILocation(line: 1838, column: 36, scope: !2158)
!2195 = !DILocation(line: 1838, column: 44, scope: !2158)
!2196 = !DILocation(line: 1838, column: 19, scope: !2158)
!2197 = !DILocation(line: 1838, column: 49, scope: !2158)
!2198 = !{!2190, !869, i64 0}
!2199 = !DILocation(line: 1838, column: 17, scope: !2158)
!2200 = !DILocation(line: 1839, column: 5, scope: !2158)
!2201 = !DILocation(line: 1840, column: 12, scope: !2158)
!2202 = !DILocation(line: 1840, column: 5, scope: !2158)
!2203 = !DILocation(line: 1841, column: 1, scope: !2158)
!2204 = distinct !DISubprogram(name: "__Pyx_CreateCodeObjectForTraceback", scope: !3, file: !3, line: 1896, type: !2205, scopeLine: 1898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!323, !40, !7, !7, !40}
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2208 = !DILocalVariable(name: "funcname", arg: 1, scope: !2204, file: !3, line: 1897, type: !40)
!2209 = !DILocalVariable(name: "c_line", arg: 2, scope: !2204, file: !3, line: 1897, type: !7)
!2210 = !DILocalVariable(name: "py_line", arg: 3, scope: !2204, file: !3, line: 1898, type: !7)
!2211 = !DILocalVariable(name: "filename", arg: 4, scope: !2204, file: !3, line: 1898, type: !40)
!2212 = !DILocalVariable(name: "py_code", scope: !2204, file: !3, line: 1899, type: !323)
!2213 = !DILocalVariable(name: "py_funcname", scope: !2204, file: !3, line: 1900, type: !14)
!2214 = !DILabel(scope: !2204, name: "bad", file: !3, line: 1947)
!2215 = !DILocation(line: 1897, column: 25, scope: !2204)
!2216 = !DILocation(line: 1897, column: 39, scope: !2204)
!2217 = !DILocation(line: 1898, column: 17, scope: !2204)
!2218 = !DILocation(line: 1898, column: 38, scope: !2204)
!2219 = !DILocation(line: 1899, column: 5, scope: !2204)
!2220 = !DILocation(line: 1899, column: 19, scope: !2204)
!2221 = !DILocation(line: 1900, column: 5, scope: !2204)
!2222 = !DILocation(line: 1900, column: 15, scope: !2204)
!2223 = !DILocation(line: 1906, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1906, column: 9)
!2225 = !DILocation(line: 1906, column: 9, scope: !2204)
!2226 = !DILocation(line: 1911, column: 59, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 1906, column: 17)
!2228 = !DILocation(line: 1911, column: 69, scope: !2227)
!2229 = !DILocation(line: 1911, column: 84, scope: !2227)
!2230 = !DILocation(line: 1911, column: 23, scope: !2227)
!2231 = !DILocation(line: 1911, column: 21, scope: !2227)
!2232 = !DILocation(line: 1912, column: 14, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 1912, column: 13)
!2234 = !DILocation(line: 1912, column: 13, scope: !2227)
!2235 = !DILocation(line: 1912, column: 27, scope: !2233)
!2236 = !DILocation(line: 1913, column: 37, scope: !2227)
!2237 = !DILocation(line: 1913, column: 20, scope: !2227)
!2238 = !DILocation(line: 1913, column: 18, scope: !2227)
!2239 = !DILocation(line: 1914, column: 14, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 1914, column: 13)
!2241 = !DILocation(line: 1914, column: 13, scope: !2227)
!2242 = !DILocation(line: 1914, column: 24, scope: !2240)
!2243 = !DILocation(line: 1916, column: 5, scope: !2227)
!2244 = !DILocation(line: 1943, column: 31, scope: !2204)
!2245 = !DILocation(line: 1943, column: 41, scope: !2204)
!2246 = !DILocation(line: 1943, column: 51, scope: !2204)
!2247 = !DILocation(line: 1943, column: 15, scope: !2204)
!2248 = !DILocation(line: 1943, column: 13, scope: !2204)
!2249 = !DILocation(line: 1945, column: 5, scope: !2204)
!2250 = !DILocation(line: 1946, column: 12, scope: !2204)
!2251 = !DILocation(line: 1946, column: 5, scope: !2204)
!2252 = !DILocation(line: 1947, column: 1, scope: !2204)
!2253 = !DILocation(line: 1948, column: 5, scope: !2204)
!2254 = !DILocation(line: 1952, column: 5, scope: !2204)
!2255 = !DILocation(line: 1953, column: 1, scope: !2204)
!2256 = distinct !DISubprogram(name: "__pyx_insert_code_object", scope: !3, file: !3, line: 1842, type: !2257, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !7, !323}
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2268}
!2260 = !DILocalVariable(name: "code_line", arg: 1, scope: !2256, file: !3, line: 1842, type: !7)
!2261 = !DILocalVariable(name: "code_object", arg: 2, scope: !2256, file: !3, line: 1842, type: !323)
!2262 = !DILocalVariable(name: "pos", scope: !2256, file: !3, line: 1843, type: !7)
!2263 = !DILocalVariable(name: "i", scope: !2256, file: !3, line: 1843, type: !7)
!2264 = !DILocalVariable(name: "entries", scope: !2256, file: !3, line: 1844, type: !399)
!2265 = !DILocalVariable(name: "tmp", scope: !2266, file: !3, line: 1862, type: !323)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1861, column: 107)
!2267 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1861, column: 9)
!2268 = !DILocalVariable(name: "new_max", scope: !2269, file: !3, line: 1868, type: !7)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 1867, column: 63)
!2270 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1867, column: 9)
!2271 = !DILocation(line: 1842, column: 42, scope: !2256)
!2272 = !DILocation(line: 1842, column: 67, scope: !2256)
!2273 = !DILocation(line: 1843, column: 5, scope: !2256)
!2274 = !DILocation(line: 1843, column: 9, scope: !2256)
!2275 = !DILocation(line: 1843, column: 14, scope: !2256)
!2276 = !DILocation(line: 1844, column: 5, scope: !2256)
!2277 = !DILocation(line: 1844, column: 33, scope: !2256)
!2278 = !DILocation(line: 1844, column: 60, scope: !2256)
!2279 = !DILocation(line: 1845, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1845, column: 9)
!2281 = !DILocation(line: 1845, column: 9, scope: !2256)
!2282 = !DILocation(line: 1846, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 1845, column: 31)
!2284 = !DILocation(line: 1848, column: 9, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1848, column: 9)
!2286 = !DILocation(line: 1848, column: 9, scope: !2256)
!2287 = !DILocation(line: 1849, column: 48, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1848, column: 29)
!2289 = !DILocation(line: 1849, column: 17, scope: !2288)
!2290 = !DILocation(line: 1850, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1850, column: 13)
!2292 = !DILocation(line: 1850, column: 13, scope: !2288)
!2293 = !DILocation(line: 1851, column: 40, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1850, column: 30)
!2295 = !DILocation(line: 1851, column: 38, scope: !2294)
!2296 = !DILocation(line: 1852, column: 40, scope: !2294)
!2297 = !{!2175, !952, i64 4}
!2298 = !DILocation(line: 1853, column: 36, scope: !2294)
!2299 = !DILocation(line: 1854, column: 36, scope: !2294)
!2300 = !DILocation(line: 1854, column: 13, scope: !2294)
!2301 = !DILocation(line: 1854, column: 24, scope: !2294)
!2302 = !DILocation(line: 1854, column: 34, scope: !2294)
!2303 = !DILocation(line: 1855, column: 38, scope: !2294)
!2304 = !DILocation(line: 1855, column: 13, scope: !2294)
!2305 = !DILocation(line: 1855, column: 24, scope: !2294)
!2306 = !DILocation(line: 1855, column: 36, scope: !2294)
!2307 = !DILocation(line: 1856, column: 13, scope: !2294)
!2308 = !DILocation(line: 1857, column: 9, scope: !2294)
!2309 = !DILocation(line: 1858, column: 9, scope: !2288)
!2310 = !DILocation(line: 1860, column: 54, scope: !2256)
!2311 = !DILocation(line: 1860, column: 80, scope: !2256)
!2312 = !DILocation(line: 1860, column: 87, scope: !2256)
!2313 = !DILocation(line: 1860, column: 11, scope: !2256)
!2314 = !DILocation(line: 1860, column: 9, scope: !2256)
!2315 = !DILocation(line: 1861, column: 10, scope: !2267)
!2316 = !DILocation(line: 1861, column: 33, scope: !2267)
!2317 = !DILocation(line: 1861, column: 14, scope: !2267)
!2318 = !DILocation(line: 1861, column: 40, scope: !2267)
!2319 = !DILocation(line: 1861, column: 43, scope: !2267)
!2320 = !DILocation(line: 1861, column: 9, scope: !2256)
!2321 = !DILocation(line: 1862, column: 9, scope: !2266)
!2322 = !DILocation(line: 1862, column: 23, scope: !2266)
!2323 = !DILocation(line: 1862, column: 29, scope: !2266)
!2324 = !DILocation(line: 1862, column: 37, scope: !2266)
!2325 = !DILocation(line: 1862, column: 42, scope: !2266)
!2326 = !DILocation(line: 1863, column: 36, scope: !2266)
!2327 = !DILocation(line: 1863, column: 9, scope: !2266)
!2328 = !DILocation(line: 1863, column: 17, scope: !2266)
!2329 = !DILocation(line: 1863, column: 22, scope: !2266)
!2330 = !DILocation(line: 1863, column: 34, scope: !2266)
!2331 = !DILocation(line: 1864, column: 9, scope: !2266)
!2332 = !DILocation(line: 1866, column: 5, scope: !2267)
!2333 = !DILocation(line: 1867, column: 26, scope: !2270)
!2334 = !DILocation(line: 1867, column: 52, scope: !2270)
!2335 = !DILocation(line: 1867, column: 32, scope: !2270)
!2336 = !DILocation(line: 1867, column: 9, scope: !2256)
!2337 = !DILocation(line: 1868, column: 9, scope: !2269)
!2338 = !DILocation(line: 1868, column: 13, scope: !2269)
!2339 = !DILocation(line: 1868, column: 40, scope: !2269)
!2340 = !DILocation(line: 1868, column: 50, scope: !2269)
!2341 = !DILocation(line: 1870, column: 30, scope: !2269)
!2342 = !DILocation(line: 1870, column: 48, scope: !2269)
!2343 = !DILocation(line: 1870, column: 40, scope: !2269)
!2344 = !DILocation(line: 1870, column: 57, scope: !2269)
!2345 = !DILocation(line: 1869, column: 48, scope: !2269)
!2346 = !DILocation(line: 1869, column: 17, scope: !2269)
!2347 = !DILocation(line: 1871, column: 13, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 1871, column: 13)
!2349 = !DILocation(line: 1871, column: 13, scope: !2269)
!2350 = !DILocation(line: 1872, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 1871, column: 33)
!2352 = !DILocation(line: 1874, column: 36, scope: !2269)
!2353 = !DILocation(line: 1874, column: 34, scope: !2269)
!2354 = !DILocation(line: 1875, column: 38, scope: !2269)
!2355 = !DILocation(line: 1875, column: 36, scope: !2269)
!2356 = !DILocation(line: 1876, column: 5, scope: !2270)
!2357 = !DILocation(line: 1876, column: 5, scope: !2269)
!2358 = !DILocation(line: 1877, column: 29, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1877, column: 5)
!2360 = !DILocation(line: 1877, column: 11, scope: !2359)
!2361 = !DILocation(line: 1877, column: 10, scope: !2359)
!2362 = !DILocation(line: 1877, column: 36, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1877, column: 5)
!2364 = !DILocation(line: 1877, column: 38, scope: !2363)
!2365 = !DILocation(line: 1877, column: 37, scope: !2363)
!2366 = !DILocation(line: 1877, column: 5, scope: !2359)
!2367 = !DILocation(line: 1878, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1877, column: 48)
!2369 = !DILocation(line: 1878, column: 17, scope: !2368)
!2370 = !DILocation(line: 1878, column: 22, scope: !2368)
!2371 = !DILocation(line: 1878, column: 30, scope: !2368)
!2372 = !DILocation(line: 1878, column: 31, scope: !2368)
!2373 = !{i64 0, i64 8, !868, i64 8, i64 4, !951}
!2374 = !DILocation(line: 1879, column: 5, scope: !2368)
!2375 = !DILocation(line: 1877, column: 44, scope: !2363)
!2376 = !DILocation(line: 1877, column: 5, scope: !2363)
!2377 = distinct !{!2377, !2366, !2378, !1411}
!2378 = !DILocation(line: 1879, column: 5, scope: !2359)
!2379 = !DILocation(line: 1880, column: 30, scope: !2256)
!2380 = !DILocation(line: 1880, column: 5, scope: !2256)
!2381 = !DILocation(line: 1880, column: 13, scope: !2256)
!2382 = !DILocation(line: 1880, column: 18, scope: !2256)
!2383 = !DILocation(line: 1880, column: 28, scope: !2256)
!2384 = !DILocation(line: 1881, column: 32, scope: !2256)
!2385 = !DILocation(line: 1881, column: 5, scope: !2256)
!2386 = !DILocation(line: 1881, column: 13, scope: !2256)
!2387 = !DILocation(line: 1881, column: 18, scope: !2256)
!2388 = !DILocation(line: 1881, column: 30, scope: !2256)
!2389 = !DILocation(line: 1882, column: 27, scope: !2256)
!2390 = !DILocation(line: 1883, column: 5, scope: !2256)
!2391 = !DILocation(line: 1884, column: 1, scope: !2256)
!2392 = !DISubprogram(name: "PyFrame_New", scope: !2393, file: !2393, line: 9, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2393 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/cpython/frameobject.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "50587ac76f9edfbe72d42a5de7f9d73a")
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!719, !658, !323, !14, !14}
!2396 = !DISubprogram(name: "PyTraceBack_Here", scope: !2397, file: !2397, line: 9, type: !2398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2397 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/traceback.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "240e826f65155873105b5c84d4393cdf")
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!7, !719}
!2400 = !DISubprogram(name: "_PyObject_GetDictPtr", scope: !31, file: !31, line: 297, type: !2401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!80, !14}
!2403 = !DISubprogram(name: "_PyDict_GetItem_KnownHash", scope: !363, file: !363, line: 31, type: !2404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!14, !14, !14, !184}
!2406 = distinct !DISubprogram(name: "__Pyx_PyObject_GetAttrStr", scope: !3, file: !3, line: 1728, type: !91, scopeLine: 1728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DILocalVariable(name: "obj", arg: 1, scope: !2406, file: !3, line: 1728, type: !14)
!2409 = !DILocalVariable(name: "attr_name", arg: 2, scope: !2406, file: !3, line: 1728, type: !14)
!2410 = !DILocalVariable(name: "tp", scope: !2406, file: !3, line: 1729, type: !28)
!2411 = !DILocation(line: 1728, column: 68, scope: !2406)
!2412 = !DILocation(line: 1728, column: 83, scope: !2406)
!2413 = !DILocation(line: 1729, column: 5, scope: !2406)
!2414 = !DILocation(line: 1729, column: 19, scope: !2406)
!2415 = !DILocation(line: 1729, column: 24, scope: !2406)
!2416 = !DILocation(line: 1730, column: 9, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 1730, column: 9)
!2418 = !{!2419, !869, i64 144}
!2419 = !{!"_typeobject", !2420, i64 0, !869, i64 24, !1204, i64 32, !1204, i64 40, !869, i64 48, !1204, i64 56, !869, i64 64, !869, i64 72, !869, i64 80, !869, i64 88, !869, i64 96, !869, i64 104, !869, i64 112, !869, i64 120, !869, i64 128, !869, i64 136, !869, i64 144, !869, i64 152, !869, i64 160, !1204, i64 168, !869, i64 176, !869, i64 184, !869, i64 192, !869, i64 200, !1204, i64 208, !869, i64 216, !869, i64 224, !869, i64 232, !869, i64 240, !869, i64 248, !869, i64 256, !869, i64 264, !869, i64 272, !869, i64 280, !1204, i64 288, !869, i64 296, !869, i64 304, !869, i64 312, !869, i64 320, !869, i64 328, !869, i64 336, !869, i64 344, !869, i64 352, !869, i64 360, !869, i64 368, !869, i64 376, !952, i64 384, !869, i64 392, !869, i64 400}
!2420 = !{!"", !1239, i64 0, !1204, i64 16}
!2421 = !DILocation(line: 1730, column: 9, scope: !2406)
!2422 = !DILocation(line: 1731, column: 16, scope: !2417)
!2423 = !DILocation(line: 1731, column: 20, scope: !2417)
!2424 = !DILocation(line: 1731, column: 32, scope: !2417)
!2425 = !DILocation(line: 1731, column: 37, scope: !2417)
!2426 = !DILocation(line: 1731, column: 9, scope: !2417)
!2427 = !DILocation(line: 1736, column: 29, scope: !2406)
!2428 = !DILocation(line: 1736, column: 34, scope: !2406)
!2429 = !DILocation(line: 1736, column: 12, scope: !2406)
!2430 = !DILocation(line: 1736, column: 5, scope: !2406)
!2431 = !DILocation(line: 1737, column: 1, scope: !2406)
!2432 = !DISubprogram(name: "PyObject_Not", scope: !6, file: !6, line: 304, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2433 = distinct !DISubprogram(name: "Py_TYPE", scope: !6, file: !6, line: 132, type: !2434, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!28, !14}
!2436 = !{!2437}
!2437 = !DILocalVariable(name: "ob", arg: 1, scope: !2433, file: !6, line: 132, type: !14)
!2438 = !DILocation(line: 132, column: 47, scope: !2433)
!2439 = !DILocation(line: 133, column: 12, scope: !2433)
!2440 = !DILocation(line: 133, column: 16, scope: !2433)
!2441 = !{!1239, !869, i64 8}
!2442 = !DILocation(line: 133, column: 5, scope: !2433)
!2443 = !DISubprogram(name: "PyObject_GetAttr", scope: !6, file: !6, line: 292, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2444 = distinct !DISubprogram(name: "__pyx_bisect_code_objects", scope: !3, file: !3, line: 1807, type: !2445, scopeLine: 1807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!7, !399, !7, !7}
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453}
!2448 = !DILocalVariable(name: "entries", arg: 1, scope: !2444, file: !3, line: 1807, type: !399)
!2449 = !DILocalVariable(name: "count", arg: 2, scope: !2444, file: !3, line: 1807, type: !7)
!2450 = !DILocalVariable(name: "code_line", arg: 3, scope: !2444, file: !3, line: 1807, type: !7)
!2451 = !DILocalVariable(name: "start", scope: !2444, file: !3, line: 1808, type: !7)
!2452 = !DILocalVariable(name: "mid", scope: !2444, file: !3, line: 1808, type: !7)
!2453 = !DILocalVariable(name: "end", scope: !2444, file: !3, line: 1808, type: !7)
!2454 = !DILocation(line: 1807, column: 66, scope: !2444)
!2455 = !DILocation(line: 1807, column: 79, scope: !2444)
!2456 = !DILocation(line: 1807, column: 90, scope: !2444)
!2457 = !DILocation(line: 1808, column: 5, scope: !2444)
!2458 = !DILocation(line: 1808, column: 9, scope: !2444)
!2459 = !DILocation(line: 1808, column: 20, scope: !2444)
!2460 = !DILocation(line: 1808, column: 29, scope: !2444)
!2461 = !DILocation(line: 1808, column: 35, scope: !2444)
!2462 = !DILocation(line: 1808, column: 41, scope: !2444)
!2463 = !DILocation(line: 1809, column: 9, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1809, column: 9)
!2465 = !DILocation(line: 1809, column: 13, scope: !2464)
!2466 = !DILocation(line: 1809, column: 18, scope: !2464)
!2467 = !DILocation(line: 1809, column: 21, scope: !2464)
!2468 = !DILocation(line: 1809, column: 33, scope: !2464)
!2469 = !DILocation(line: 1809, column: 41, scope: !2464)
!2470 = !DILocation(line: 1809, column: 46, scope: !2464)
!2471 = !DILocation(line: 1809, column: 31, scope: !2464)
!2472 = !DILocation(line: 1809, column: 9, scope: !2444)
!2473 = !DILocation(line: 1810, column: 16, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1809, column: 57)
!2475 = !DILocation(line: 1810, column: 9, scope: !2474)
!2476 = !DILocation(line: 1812, column: 5, scope: !2444)
!2477 = !DILocation(line: 1812, column: 12, scope: !2444)
!2478 = !DILocation(line: 1812, column: 20, scope: !2444)
!2479 = !DILocation(line: 1812, column: 18, scope: !2444)
!2480 = !DILocation(line: 1813, column: 15, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1812, column: 25)
!2482 = !DILocation(line: 1813, column: 24, scope: !2481)
!2483 = !DILocation(line: 1813, column: 30, scope: !2481)
!2484 = !DILocation(line: 1813, column: 28, scope: !2481)
!2485 = !DILocation(line: 1813, column: 37, scope: !2481)
!2486 = !DILocation(line: 1813, column: 21, scope: !2481)
!2487 = !DILocation(line: 1813, column: 13, scope: !2481)
!2488 = !DILocation(line: 1814, column: 13, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1814, column: 13)
!2490 = !DILocation(line: 1814, column: 25, scope: !2489)
!2491 = !DILocation(line: 1814, column: 33, scope: !2489)
!2492 = !DILocation(line: 1814, column: 38, scope: !2489)
!2493 = !DILocation(line: 1814, column: 23, scope: !2489)
!2494 = !DILocation(line: 1814, column: 13, scope: !2481)
!2495 = !DILocation(line: 1815, column: 19, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1814, column: 49)
!2497 = !DILocation(line: 1815, column: 17, scope: !2496)
!2498 = !DILocation(line: 1816, column: 9, scope: !2496)
!2499 = !DILocation(line: 1816, column: 20, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1816, column: 20)
!2501 = !DILocation(line: 1816, column: 32, scope: !2500)
!2502 = !DILocation(line: 1816, column: 40, scope: !2500)
!2503 = !DILocation(line: 1816, column: 45, scope: !2500)
!2504 = !DILocation(line: 1816, column: 30, scope: !2500)
!2505 = !DILocation(line: 1816, column: 20, scope: !2489)
!2506 = !DILocation(line: 1817, column: 22, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1816, column: 56)
!2508 = !DILocation(line: 1817, column: 26, scope: !2507)
!2509 = !DILocation(line: 1817, column: 20, scope: !2507)
!2510 = !DILocation(line: 1818, column: 9, scope: !2507)
!2511 = !DILocation(line: 1819, column: 20, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1818, column: 16)
!2513 = !DILocation(line: 1819, column: 13, scope: !2512)
!2514 = distinct !{!2514, !2476, !2515, !1411}
!2515 = !DILocation(line: 1821, column: 5, scope: !2444)
!2516 = !DILocation(line: 1822, column: 9, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1822, column: 9)
!2518 = !DILocation(line: 1822, column: 22, scope: !2517)
!2519 = !DILocation(line: 1822, column: 30, scope: !2517)
!2520 = !DILocation(line: 1822, column: 35, scope: !2517)
!2521 = !DILocation(line: 1822, column: 19, scope: !2517)
!2522 = !DILocation(line: 1822, column: 9, scope: !2444)
!2523 = !DILocation(line: 1823, column: 16, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1822, column: 46)
!2525 = !DILocation(line: 1823, column: 9, scope: !2524)
!2526 = !DILocation(line: 1825, column: 16, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1824, column: 12)
!2528 = !DILocation(line: 1825, column: 20, scope: !2527)
!2529 = !DILocation(line: 1825, column: 9, scope: !2527)
!2530 = !DILocation(line: 1827, column: 1, scope: !2444)
!2531 = !DISubprogram(name: "PyUnicode_FromFormat", scope: !1478, file: !1478, line: 258, type: !2532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!14, !40, null}
!2534 = !DISubprogram(name: "PyUnicode_AsUTF8", scope: !382, file: !382, line: 857, type: !2535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!40, !14}
!2537 = !DISubprogram(name: "PyMem_Malloc", scope: !2538, file: !2538, line: 52, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/python-3.11.6-6oftvkex3mj55vzhbivz73ixugpsaanv/include/python3.11/pymem.h", directory: "/local-ssd/py-pysam-j7d6uw6tj3ibcqfq2vvy3vwnd5ztte4z-build", checksumkind: CSK_MD5, checksum: "def2bc9518ac308a42a6a9761801810f")
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!13, !321}
!2541 = !DISubprogram(name: "PyMem_Realloc", scope: !2538, file: !2538, line: 54, type: !2542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!13, !13, !321}
