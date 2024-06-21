; ModuleID = 'samples/18.bc'
source_filename = "libyasm/section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yasm_directive = type { ptr, ptr, ptr, i32 }
%struct.yasm_object = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.yasm_sectionhead, ptr, ptr, ptr }
%struct.yasm_sectionhead = type { ptr, ptr }
%struct.yasm_objfmt_module = type { ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.yasm_arch_base = type { ptr }
%struct.yasm_arch_module = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.yasm_objfmt_base = type { ptr }
%struct.yasm_dbgfmt_module = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.yasm_dbgfmt_base = type { ptr }
%struct.yasm_directive_wrap = type { ptr }
%struct.yasm_section = type { %struct.anon, ptr, ptr, ptr, i64, i64, i32, i32, i32, %struct.yasm_bytecodehead, %struct.yasm_relochead, ptr }
%struct.anon = type { ptr }
%struct.yasm_bytecodehead = type { ptr, ptr }
%struct.yasm_relochead = type { ptr, ptr }
%struct.yasm_bytecode = type { %struct.anon.0, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, ptr }
%struct.anon.0 = type { ptr }
%struct.yasm_reloc = type { %struct.anon.1, ptr, ptr }
%struct.anon.1 = type { ptr }
%struct.optimize_data = type { %struct.yasm_span_head, %struct.yasm_span_shead, %struct.yasm_span_shead, ptr, %struct.offset_setters_head, i64, ptr, ptr }
%struct.yasm_span_head = type { ptr, ptr }
%struct.yasm_span_shead = type { ptr, ptr }
%struct.offset_setters_head = type { ptr, ptr }
%struct.yasm_offset_setter = type { %struct.anon.2, ptr, i64, i64, i64 }
%struct.anon.2 = type { ptr }
%struct.yasm_bytecode_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.yasm_span = type { %struct.anon.3, %struct.anon.4, ptr, %struct.yasm_value, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, ptr, i32, ptr }
%struct.anon.3 = type { ptr, ptr }
%struct.anon.4 = type { ptr }
%struct.yasm_value = type { ptr, ptr, ptr, i24 }
%struct.yasm_span_term = type { ptr, ptr, ptr, i64, i64, i32 }
%struct.yasm_expr__item = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.IntervalTreeNode = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32 }
%struct.yasm_valparamhead = type { ptr, ptr }
%struct.yasm_valparam = type { %struct.anon.5, ptr, i32, %union.yasm_param, i8 }
%struct.anon.5 = type { ptr }
%union.yasm_param = type { ptr }

@yasm_xmalloc = external global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@yasm_internal_error_ = external global ptr, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"object format `%s' does not support architecture `%s' machine `%s'\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [56 x i8] c"`%s' is not a valid debug format for object format `%s'\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [56 x i8] c"debug format `%s' does not work with object format `%s'\00", align 1, !dbg !17
@object_directives = internal constant [9 x %struct.yasm_directive] [%struct.yasm_directive { ptr @.str.18, ptr @.str.19, ptr @dir_extern, i32 2 }, %struct.yasm_directive { ptr @.str.20, ptr @.str.19, ptr @dir_global, i32 2 }, %struct.yasm_directive { ptr @.str.21, ptr @.str.19, ptr @dir_global, i32 2 }, %struct.yasm_directive { ptr @.str.22, ptr @.str.23, ptr @dir_extern, i32 2 }, %struct.yasm_directive { ptr @.str.24, ptr @.str.23, ptr @dir_global, i32 2 }, %struct.yasm_directive { ptr @.str.25, ptr @.str.23, ptr @dir_common, i32 2 }, %struct.yasm_directive { ptr @.str.26, ptr @.str.23, ptr @dir_section, i32 1 }, %struct.yasm_directive { ptr @.str.27, ptr @.str.23, ptr @dir_section, i32 1 }, %struct.yasm_directive zeroinitializer], align 16, !dbg !19
@yasm_xcalloc = external global ptr, align 8
@yasm_xfree = external global ptr, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"%*sSymbol Table:\0A\00", align 1, !dbg !751
@.str.5 = private unnamed_addr constant [13 x i8] c"%*sSection:\0A\00", align 1, !dbg !756
@.str.6 = private unnamed_addr constant [18 x i8] c"libyasm/section.c\00", align 1, !dbg !761
@.str.7 = private unnamed_addr constant [41 x i8] c"NULL destroy function given to add_reloc\00", align 1, !dbg !763
@.str.8 = private unnamed_addr constant [46 x i8] c"different destroy function given to add_reloc\00", align 1, !dbg !768
@.str.9 = private unnamed_addr constant [11 x i8] c"%*s(none)\0A\00", align 1, !dbg !773
@.str.10 = private unnamed_addr constant [12 x i8] c"%*sname=%s\0A\00", align 1, !dbg !778
@.str.11 = private unnamed_addr constant [21 x i8] c"%*sAssociated data:\0A\00", align 1, !dbg !783
@.str.12 = private unnamed_addr constant [15 x i8] c"%*sBytecodes:\0A\00", align 1, !dbg !788
@.str.13 = private unnamed_addr constant [19 x i8] c"%*sNext Bytecode:\0A\00", align 1, !dbg !793
@.str.14 = private unnamed_addr constant [55 x i8] c"cannot combine multiples and setting assembly position\00", align 1, !dbg !798
@yasm_eclass = external global i32, align 4
@.str.15 = private unnamed_addr constant [49 x i8] c"secondary expansion of an external/complex value\00", align 1, !dbg !803
@.str.16 = private unnamed_addr constant [32 x i8] c"could not calculate bc distance\00", align 1, !dbg !808
@.str.17 = private unnamed_addr constant [34 x i8] c"org/align went to negative offset\00", align 1, !dbg !813
@.str.18 = private unnamed_addr constant [8 x i8] c".extern\00", align 1, !dbg !818
@.str.19 = private unnamed_addr constant [4 x i8] c"gas\00", align 1, !dbg !823
@.str.20 = private unnamed_addr constant [8 x i8] c".global\00", align 1, !dbg !828
@.str.21 = private unnamed_addr constant [7 x i8] c".globl\00", align 1, !dbg !830
@.str.22 = private unnamed_addr constant [7 x i8] c"extern\00", align 1, !dbg !835
@.str.23 = private unnamed_addr constant [5 x i8] c"nasm\00", align 1, !dbg !837
@.str.24 = private unnamed_addr constant [7 x i8] c"global\00", align 1, !dbg !842
@.str.25 = private unnamed_addr constant [7 x i8] c"common\00", align 1, !dbg !844
@.str.26 = private unnamed_addr constant [8 x i8] c"section\00", align 1, !dbg !846
@.str.27 = private unnamed_addr constant [8 x i8] c"segment\00", align 1, !dbg !848
@.str.28 = private unnamed_addr constant [36 x i8] c"no size specified in %s declaration\00", align 1, !dbg !850
@.str.29 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1, !dbg !855
@.str.30 = private unnamed_addr constant [35 x i8] c"invalid argument to directive `%s'\00", align 1, !dbg !857
@.str.31 = private unnamed_addr constant [8 x i8] c"SECTION\00", align 1, !dbg !862
@.str.32 = private unnamed_addr constant [28 x i8] c"circular reference detected\00", align 1, !dbg !864
@yasm_xrealloc = external global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_object_create(ptr noundef %src_filename, ptr noundef %obj_filename, ptr noundef %arch, ptr noundef %objfmt_module, ptr noundef %dbgfmt_module) #0 !dbg !879 {
entry:
  %retval = alloca ptr, align 8
  %src_filename.addr = alloca ptr, align 8
  %obj_filename.addr = alloca ptr, align 8
  %arch.addr = alloca ptr, align 8
  %objfmt_module.addr = alloca ptr, align 8
  %dbgfmt_module.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  %matched = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src_filename, ptr %src_filename.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %src_filename.addr, metadata !889, metadata !DIExpression()), !dbg !902
  store ptr %obj_filename, ptr %obj_filename.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %obj_filename.addr, metadata !890, metadata !DIExpression()), !dbg !903
  store ptr %arch, ptr %arch.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %arch.addr, metadata !891, metadata !DIExpression()), !dbg !904
  store ptr %objfmt_module, ptr %objfmt_module.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %objfmt_module.addr, metadata !892, metadata !DIExpression()), !dbg !905
  store ptr %dbgfmt_module, ptr %dbgfmt_module.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %dbgfmt_module.addr, metadata !893, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #6, !dbg !907
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !894, metadata !DIExpression()), !dbg !908
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !909, !tbaa !898
  %call = call ptr %0(i64 noundef 96), !dbg !909
  store ptr %call, ptr %object, align 8, !dbg !908, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %matched) #6, !dbg !910
  tail call void @llvm.dbg.declare(metadata ptr %matched, metadata !895, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !910
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !896, metadata !DIExpression()), !dbg !912
  %1 = load ptr, ptr %src_filename.addr, align 8, !dbg !913, !tbaa !898
  %call1 = call ptr @yasm__xstrdup(ptr noundef %1), !dbg !914
  %2 = load ptr, ptr %object, align 8, !dbg !915, !tbaa !898
  %src_filename2 = getelementptr inbounds %struct.yasm_object, ptr %2, i32 0, i32 0, !dbg !916
  store ptr %call1, ptr %src_filename2, align 8, !dbg !917, !tbaa !918
  %3 = load ptr, ptr %obj_filename.addr, align 8, !dbg !921, !tbaa !898
  %call3 = call ptr @yasm__xstrdup(ptr noundef %3), !dbg !922
  %4 = load ptr, ptr %object, align 8, !dbg !923, !tbaa !898
  %obj_filename4 = getelementptr inbounds %struct.yasm_object, ptr %4, i32 0, i32 1, !dbg !924
  store ptr %call3, ptr %obj_filename4, align 8, !dbg !925, !tbaa !926
  %call5 = call ptr @yasm__xstrdup(ptr noundef @.str), !dbg !927
  %5 = load ptr, ptr %object, align 8, !dbg !928, !tbaa !898
  %global_prefix = getelementptr inbounds %struct.yasm_object, ptr %5, i32 0, i32 9, !dbg !929
  store ptr %call5, ptr %global_prefix, align 8, !dbg !930, !tbaa !931
  %call6 = call ptr @yasm__xstrdup(ptr noundef @.str), !dbg !932
  %6 = load ptr, ptr %object, align 8, !dbg !933, !tbaa !898
  %global_suffix = getelementptr inbounds %struct.yasm_object, ptr %6, i32 0, i32 10, !dbg !934
  store ptr %call6, ptr %global_suffix, align 8, !dbg !935, !tbaa !936
  %call7 = call ptr @yasm_symtab_create(), !dbg !937
  %7 = load ptr, ptr %object, align 8, !dbg !938, !tbaa !898
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %7, i32 0, i32 2, !dbg !939
  store ptr %call7, ptr %symtab, align 8, !dbg !940, !tbaa !941
  br label %do.body, !dbg !942

do.body:                                          ; preds = %entry
  %8 = load ptr, ptr %object, align 8, !dbg !943, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %8, i32 0, i32 7, !dbg !943
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !943
  store ptr null, ptr %stqh_first, align 8, !dbg !943, !tbaa !945
  %9 = load ptr, ptr %object, align 8, !dbg !943, !tbaa !898
  %sections8 = getelementptr inbounds %struct.yasm_object, ptr %9, i32 0, i32 7, !dbg !943
  %stqh_first9 = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections8, i32 0, i32 0, !dbg !943
  %10 = load ptr, ptr %object, align 8, !dbg !943, !tbaa !898
  %sections10 = getelementptr inbounds %struct.yasm_object, ptr %10, i32 0, i32 7, !dbg !943
  %stqh_last = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections10, i32 0, i32 1, !dbg !943
  store ptr %stqh_first9, ptr %stqh_last, align 8, !dbg !943, !tbaa !946
  br label %do.cond, !dbg !943

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !943

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !947, !tbaa !898
  %call11 = call ptr @HAMT_create(i32 noundef 1, ptr noundef %11), !dbg !948
  %12 = load ptr, ptr %object, align 8, !dbg !949, !tbaa !898
  %directives = getelementptr inbounds %struct.yasm_object, ptr %12, i32 0, i32 8, !dbg !950
  store ptr %call11, ptr %directives, align 8, !dbg !951, !tbaa !952
  %13 = load ptr, ptr %arch.addr, align 8, !dbg !953, !tbaa !898
  %14 = load ptr, ptr %object, align 8, !dbg !954, !tbaa !898
  %arch12 = getelementptr inbounds %struct.yasm_object, ptr %14, i32 0, i32 3, !dbg !955
  store ptr %13, ptr %arch12, align 8, !dbg !956, !tbaa !957
  %15 = load ptr, ptr %object, align 8, !dbg !958, !tbaa !898
  %dbgfmt = getelementptr inbounds %struct.yasm_object, ptr %15, i32 0, i32 5, !dbg !959
  store ptr null, ptr %dbgfmt, align 8, !dbg !960, !tbaa !961
  %16 = load ptr, ptr %objfmt_module.addr, align 8, !dbg !962, !tbaa !898
  %create = getelementptr inbounds %struct.yasm_objfmt_module, ptr %16, i32 0, i32 9, !dbg !962
  %17 = load ptr, ptr %create, align 8, !dbg !962, !tbaa !963
  %18 = load ptr, ptr %object, align 8, !dbg !962, !tbaa !898
  %call13 = call ptr %17(ptr noundef %18), !dbg !962
  %19 = load ptr, ptr %object, align 8, !dbg !965, !tbaa !898
  %objfmt = getelementptr inbounds %struct.yasm_object, ptr %19, i32 0, i32 4, !dbg !966
  store ptr %call13, ptr %objfmt, align 8, !dbg !967, !tbaa !968
  %20 = load ptr, ptr %object, align 8, !dbg !969, !tbaa !898
  %objfmt14 = getelementptr inbounds %struct.yasm_object, ptr %20, i32 0, i32 4, !dbg !971
  %21 = load ptr, ptr %objfmt14, align 8, !dbg !971, !tbaa !968
  %tobool = icmp ne ptr %21, null, !dbg !969
  br i1 %tobool, label %if.end, label %if.then, !dbg !972

if.then:                                          ; preds = %do.end
  %22 = load ptr, ptr %objfmt_module.addr, align 8, !dbg !973, !tbaa !898
  %keyword = getelementptr inbounds %struct.yasm_objfmt_module, ptr %22, i32 0, i32 1, !dbg !975
  %23 = load ptr, ptr %keyword, align 8, !dbg !975, !tbaa !976
  %24 = load ptr, ptr %arch.addr, align 8, !dbg !977, !tbaa !898
  %module = getelementptr inbounds %struct.yasm_arch_base, ptr %24, i32 0, i32 0, !dbg !978
  %25 = load ptr, ptr %module, align 8, !dbg !978, !tbaa !979
  %keyword15 = getelementptr inbounds %struct.yasm_arch_module, ptr %25, i32 0, i32 1, !dbg !981
  %26 = load ptr, ptr %keyword15, align 8, !dbg !981, !tbaa !982
  %27 = load ptr, ptr %arch.addr, align 8, !dbg !985, !tbaa !898
  %module16 = getelementptr inbounds %struct.yasm_arch_base, ptr %27, i32 0, i32 0, !dbg !985
  %28 = load ptr, ptr %module16, align 8, !dbg !985, !tbaa !979
  %get_machine = getelementptr inbounds %struct.yasm_arch_module, ptr %28, i32 0, i32 5, !dbg !985
  %29 = load ptr, ptr %get_machine, align 8, !dbg !985, !tbaa !986
  %30 = load ptr, ptr %arch.addr, align 8, !dbg !985, !tbaa !898
  %call17 = call ptr %29(ptr noundef %30), !dbg !985
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 65535, ptr noundef @.str.1, ptr noundef %23, ptr noundef %26, ptr noundef %call17), !dbg !987
  br label %error, !dbg !988

if.end:                                           ; preds = %do.end
  %31 = load ptr, ptr %object, align 8, !dbg !989, !tbaa !898
  %objfmt18 = getelementptr inbounds %struct.yasm_object, ptr %31, i32 0, i32 4, !dbg !990
  %32 = load ptr, ptr %objfmt18, align 8, !dbg !990, !tbaa !968
  %module19 = getelementptr inbounds %struct.yasm_objfmt_base, ptr %32, i32 0, i32 0, !dbg !991
  %33 = load ptr, ptr %module19, align 8, !dbg !991, !tbaa !992
  store ptr %33, ptr %objfmt_module.addr, align 8, !dbg !994, !tbaa !898
  %34 = load ptr, ptr %object, align 8, !dbg !995, !tbaa !898
  %objfmt20 = getelementptr inbounds %struct.yasm_object, ptr %34, i32 0, i32 4, !dbg !995
  %35 = load ptr, ptr %objfmt20, align 8, !dbg !995, !tbaa !968
  %module21 = getelementptr inbounds %struct.yasm_objfmt_base, ptr %35, i32 0, i32 0, !dbg !995
  %36 = load ptr, ptr %module21, align 8, !dbg !995, !tbaa !992
  %add_default_section = getelementptr inbounds %struct.yasm_objfmt_module, ptr %36, i32 0, i32 12, !dbg !995
  %37 = load ptr, ptr %add_default_section, align 8, !dbg !995, !tbaa !996
  %38 = load ptr, ptr %object, align 8, !dbg !995, !tbaa !898
  %call22 = call ptr %37(ptr noundef %38), !dbg !995
  %39 = load ptr, ptr %object, align 8, !dbg !997, !tbaa !898
  %cur_section = getelementptr inbounds %struct.yasm_object, ptr %39, i32 0, i32 6, !dbg !998
  store ptr %call22, ptr %cur_section, align 8, !dbg !999, !tbaa !1000
  store i32 0, ptr %matched, align 4, !dbg !1001, !tbaa !1002
  store i32 0, ptr %i, align 4, !dbg !1003, !tbaa !1002
  br label %for.cond, !dbg !1005

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load ptr, ptr %objfmt_module.addr, align 8, !dbg !1006, !tbaa !898
  %dbgfmt_keywords = getelementptr inbounds %struct.yasm_objfmt_module, ptr %40, i32 0, i32 5, !dbg !1008
  %41 = load ptr, ptr %dbgfmt_keywords, align 8, !dbg !1008, !tbaa !1009
  %42 = load i32, ptr %i, align 4, !dbg !1010, !tbaa !1002
  %idxprom = sext i32 %42 to i64, !dbg !1006
  %arrayidx = getelementptr inbounds ptr, ptr %41, i64 %idxprom, !dbg !1006
  %43 = load ptr, ptr %arrayidx, align 8, !dbg !1006, !tbaa !898
  %tobool23 = icmp ne ptr %43, null, !dbg !1011
  br i1 %tobool23, label %for.body, label %for.end, !dbg !1011

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %objfmt_module.addr, align 8, !dbg !1012, !tbaa !898
  %dbgfmt_keywords24 = getelementptr inbounds %struct.yasm_objfmt_module, ptr %44, i32 0, i32 5, !dbg !1012
  %45 = load ptr, ptr %dbgfmt_keywords24, align 8, !dbg !1012, !tbaa !1009
  %46 = load i32, ptr %i, align 4, !dbg !1012, !tbaa !1002
  %idxprom25 = sext i32 %46 to i64, !dbg !1012
  %arrayidx26 = getelementptr inbounds ptr, ptr %45, i64 %idxprom25, !dbg !1012
  %47 = load ptr, ptr %arrayidx26, align 8, !dbg !1012, !tbaa !898
  %48 = load ptr, ptr %dbgfmt_module.addr, align 8, !dbg !1012, !tbaa !898
  %keyword27 = getelementptr inbounds %struct.yasm_dbgfmt_module, ptr %48, i32 0, i32 1, !dbg !1012
  %49 = load ptr, ptr %keyword27, align 8, !dbg !1012, !tbaa !1015
  %call28 = call i32 @strcasecmp(ptr noundef %47, ptr noundef %49) #7, !dbg !1012
  %cmp = icmp eq i32 %call28, 0, !dbg !1017
  br i1 %cmp, label %if.then29, label %if.end30, !dbg !1018

if.then29:                                        ; preds = %for.body
  store i32 1, ptr %matched, align 4, !dbg !1019, !tbaa !1002
  br label %for.end, !dbg !1021

if.end30:                                         ; preds = %for.body
  br label %for.inc, !dbg !1022

for.inc:                                          ; preds = %if.end30
  %50 = load i32, ptr %i, align 4, !dbg !1023, !tbaa !1002
  %inc = add nsw i32 %50, 1, !dbg !1023
  store i32 %inc, ptr %i, align 4, !dbg !1023, !tbaa !1002
  br label %for.cond, !dbg !1024, !llvm.loop !1025

for.end:                                          ; preds = %if.then29, %for.cond
  %51 = load i32, ptr %matched, align 4, !dbg !1028, !tbaa !1002
  %tobool31 = icmp ne i32 %51, 0, !dbg !1028
  br i1 %tobool31, label %if.end35, label %if.then32, !dbg !1030

if.then32:                                        ; preds = %for.end
  %52 = load ptr, ptr %dbgfmt_module.addr, align 8, !dbg !1031, !tbaa !898
  %keyword33 = getelementptr inbounds %struct.yasm_dbgfmt_module, ptr %52, i32 0, i32 1, !dbg !1033
  %53 = load ptr, ptr %keyword33, align 8, !dbg !1033, !tbaa !1015
  %54 = load ptr, ptr %objfmt_module.addr, align 8, !dbg !1034, !tbaa !898
  %keyword34 = getelementptr inbounds %struct.yasm_objfmt_module, ptr %54, i32 0, i32 1, !dbg !1035
  %55 = load ptr, ptr %keyword34, align 8, !dbg !1035, !tbaa !976
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 65535, ptr noundef @.str.2, ptr noundef %53, ptr noundef %55), !dbg !1036
  br label %error, !dbg !1037

if.end35:                                         ; preds = %for.end
  %56 = load ptr, ptr %dbgfmt_module.addr, align 8, !dbg !1038, !tbaa !898
  %create36 = getelementptr inbounds %struct.yasm_dbgfmt_module, ptr %56, i32 0, i32 3, !dbg !1038
  %57 = load ptr, ptr %create36, align 8, !dbg !1038, !tbaa !1039
  %58 = load ptr, ptr %object, align 8, !dbg !1038, !tbaa !898
  %call37 = call ptr %57(ptr noundef %58), !dbg !1038
  %59 = load ptr, ptr %object, align 8, !dbg !1040, !tbaa !898
  %dbgfmt38 = getelementptr inbounds %struct.yasm_object, ptr %59, i32 0, i32 5, !dbg !1041
  store ptr %call37, ptr %dbgfmt38, align 8, !dbg !1042, !tbaa !961
  %60 = load ptr, ptr %object, align 8, !dbg !1043, !tbaa !898
  %dbgfmt39 = getelementptr inbounds %struct.yasm_object, ptr %60, i32 0, i32 5, !dbg !1045
  %61 = load ptr, ptr %dbgfmt39, align 8, !dbg !1045, !tbaa !961
  %tobool40 = icmp ne ptr %61, null, !dbg !1043
  br i1 %tobool40, label %if.end44, label %if.then41, !dbg !1046

if.then41:                                        ; preds = %if.end35
  %62 = load ptr, ptr %dbgfmt_module.addr, align 8, !dbg !1047, !tbaa !898
  %keyword42 = getelementptr inbounds %struct.yasm_dbgfmt_module, ptr %62, i32 0, i32 1, !dbg !1049
  %63 = load ptr, ptr %keyword42, align 8, !dbg !1049, !tbaa !1015
  %64 = load ptr, ptr %objfmt_module.addr, align 8, !dbg !1050, !tbaa !898
  %keyword43 = getelementptr inbounds %struct.yasm_objfmt_module, ptr %64, i32 0, i32 1, !dbg !1051
  %65 = load ptr, ptr %keyword43, align 8, !dbg !1051, !tbaa !976
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 65535, ptr noundef @.str.3, ptr noundef %63, ptr noundef %65), !dbg !1052
  br label %error, !dbg !1053

if.end44:                                         ; preds = %if.end35
  %66 = load ptr, ptr %object, align 8, !dbg !1054, !tbaa !898
  %67 = load ptr, ptr %object, align 8, !dbg !1055, !tbaa !898
  %objfmt45 = getelementptr inbounds %struct.yasm_object, ptr %67, i32 0, i32 4, !dbg !1056
  %68 = load ptr, ptr %objfmt45, align 8, !dbg !1056, !tbaa !968
  %module46 = getelementptr inbounds %struct.yasm_objfmt_base, ptr %68, i32 0, i32 0, !dbg !1057
  %69 = load ptr, ptr %module46, align 8, !dbg !1057, !tbaa !992
  %directives47 = getelementptr inbounds %struct.yasm_objfmt_module, ptr %69, i32 0, i32 7, !dbg !1058
  %70 = load ptr, ptr %directives47, align 8, !dbg !1058, !tbaa !1059
  call void @directives_add(ptr noundef %66, ptr noundef %70), !dbg !1060
  %71 = load ptr, ptr %object, align 8, !dbg !1061, !tbaa !898
  %72 = load ptr, ptr %object, align 8, !dbg !1062, !tbaa !898
  %dbgfmt48 = getelementptr inbounds %struct.yasm_object, ptr %72, i32 0, i32 5, !dbg !1063
  %73 = load ptr, ptr %dbgfmt48, align 8, !dbg !1063, !tbaa !961
  %module49 = getelementptr inbounds %struct.yasm_dbgfmt_base, ptr %73, i32 0, i32 0, !dbg !1064
  %74 = load ptr, ptr %module49, align 8, !dbg !1064, !tbaa !1065
  %directives50 = getelementptr inbounds %struct.yasm_dbgfmt_module, ptr %74, i32 0, i32 2, !dbg !1067
  %75 = load ptr, ptr %directives50, align 8, !dbg !1067, !tbaa !1068
  call void @directives_add(ptr noundef %71, ptr noundef %75), !dbg !1069
  %76 = load ptr, ptr %object, align 8, !dbg !1070, !tbaa !898
  %77 = load ptr, ptr %object, align 8, !dbg !1071, !tbaa !898
  %arch51 = getelementptr inbounds %struct.yasm_object, ptr %77, i32 0, i32 3, !dbg !1072
  %78 = load ptr, ptr %arch51, align 8, !dbg !1072, !tbaa !957
  %module52 = getelementptr inbounds %struct.yasm_arch_base, ptr %78, i32 0, i32 0, !dbg !1073
  %79 = load ptr, ptr %module52, align 8, !dbg !1073, !tbaa !979
  %directives53 = getelementptr inbounds %struct.yasm_arch_module, ptr %79, i32 0, i32 2, !dbg !1074
  %80 = load ptr, ptr %directives53, align 8, !dbg !1074, !tbaa !1075
  call void @directives_add(ptr noundef %76, ptr noundef %80), !dbg !1076
  %81 = load ptr, ptr %object, align 8, !dbg !1077, !tbaa !898
  call void @directives_add(ptr noundef %81, ptr noundef @object_directives), !dbg !1078
  %82 = load ptr, ptr %object, align 8, !dbg !1079, !tbaa !898
  store ptr %82, ptr %retval, align 8, !dbg !1080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1080

error:                                            ; preds = %if.then41, %if.then32, %if.then
  tail call void @llvm.dbg.label(metadata !897), !dbg !1081
  %83 = load ptr, ptr %object, align 8, !dbg !1082, !tbaa !898
  call void @yasm_object_destroy(ptr noundef %83), !dbg !1083
  store ptr null, ptr %retval, align 8, !dbg !1084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1084

cleanup:                                          ; preds = %error, %if.end44
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 4, ptr %matched) #6, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #6, !dbg !1085
  %84 = load ptr, ptr %retval, align 8, !dbg !1085
  ret ptr %84, !dbg !1085
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1086 ptr @yasm__xstrdup(ptr noundef) #2

declare !dbg !1089 ptr @yasm_symtab_create() #2

declare !dbg !1092 ptr @HAMT_create(i32 noundef, ptr noundef) #2

declare !dbg !1100 void @yasm_error_set(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1104 i32 @strcasecmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @directives_add(ptr noundef %object, ptr noundef %dir) #0 !dbg !1108 {
entry:
  %object.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %level2 = alloca ptr, align 8
  %replace = alloca i32, align 4
  %wrap = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1112, metadata !DIExpression()), !dbg !1123
  store ptr %dir, ptr %dir.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !1113, metadata !DIExpression()), !dbg !1124
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !1125, !tbaa !898
  %tobool = icmp ne ptr %0, null, !dbg !1125
  br i1 %tobool, label %if.end, label %if.then, !dbg !1127

if.then:                                          ; preds = %entry
  br label %while.end, !dbg !1128

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1129

while.cond:                                       ; preds = %if.end9, %if.end
  %1 = load ptr, ptr %dir.addr, align 8, !dbg !1130, !tbaa !898
  %name = getelementptr inbounds %struct.yasm_directive, ptr %1, i32 0, i32 0, !dbg !1131
  %2 = load ptr, ptr %name, align 8, !dbg !1131, !tbaa !1132
  %tobool1 = icmp ne ptr %2, null, !dbg !1129
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1129

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %level2) #6, !dbg !1134
  tail call void @llvm.dbg.declare(metadata ptr %level2, metadata !1114, metadata !DIExpression()), !dbg !1135
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1136, !tbaa !898
  %directives = getelementptr inbounds %struct.yasm_object, ptr %3, i32 0, i32 8, !dbg !1137
  %4 = load ptr, ptr %directives, align 8, !dbg !1137, !tbaa !952
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !1138, !tbaa !898
  %parser = getelementptr inbounds %struct.yasm_directive, ptr %5, i32 0, i32 1, !dbg !1139
  %6 = load ptr, ptr %parser, align 8, !dbg !1139, !tbaa !1140
  %call = call ptr @HAMT_search(ptr noundef %4, ptr noundef %6), !dbg !1141
  store ptr %call, ptr %level2, align 8, !dbg !1135, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %replace) #6, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %replace, metadata !1116, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrap) #6, !dbg !1144
  tail call void @llvm.dbg.declare(metadata ptr %wrap, metadata !1117, metadata !DIExpression()), !dbg !1145
  %7 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1146, !tbaa !898
  %call2 = call ptr %7(i64 noundef 8), !dbg !1146
  store ptr %call2, ptr %wrap, align 8, !dbg !1145, !tbaa !898
  %8 = load ptr, ptr %level2, align 8, !dbg !1147, !tbaa !898
  %tobool3 = icmp ne ptr %8, null, !dbg !1147
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !1149

if.then4:                                         ; preds = %while.body
  store i32 0, ptr %replace, align 4, !dbg !1150, !tbaa !1002
  %9 = load ptr, ptr %object.addr, align 8, !dbg !1152, !tbaa !898
  %directives5 = getelementptr inbounds %struct.yasm_object, ptr %9, i32 0, i32 8, !dbg !1153
  %10 = load ptr, ptr %directives5, align 8, !dbg !1153, !tbaa !952
  %11 = load ptr, ptr %dir.addr, align 8, !dbg !1154, !tbaa !898
  %parser6 = getelementptr inbounds %struct.yasm_directive, ptr %11, i32 0, i32 1, !dbg !1155
  %12 = load ptr, ptr %parser6, align 8, !dbg !1155, !tbaa !1140
  %13 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !1156, !tbaa !898
  %call7 = call ptr @HAMT_create(i32 noundef 1, ptr noundef %13), !dbg !1157
  %call8 = call ptr @HAMT_insert(ptr noundef %10, ptr noundef %12, ptr noundef %call7, ptr noundef %replace, ptr noundef @directive_level1_delete), !dbg !1158
  store ptr %call8, ptr %level2, align 8, !dbg !1159, !tbaa !898
  br label %if.end9, !dbg !1160

if.end9:                                          ; preds = %if.then4, %while.body
  store i32 0, ptr %replace, align 4, !dbg !1161, !tbaa !1002
  %14 = load ptr, ptr %dir.addr, align 8, !dbg !1162, !tbaa !898
  %15 = load ptr, ptr %wrap, align 8, !dbg !1163, !tbaa !898
  %directive = getelementptr inbounds %struct.yasm_directive_wrap, ptr %15, i32 0, i32 0, !dbg !1164
  store ptr %14, ptr %directive, align 8, !dbg !1165, !tbaa !1166
  %16 = load ptr, ptr %level2, align 8, !dbg !1168, !tbaa !898
  %17 = load ptr, ptr %dir.addr, align 8, !dbg !1169, !tbaa !898
  %name10 = getelementptr inbounds %struct.yasm_directive, ptr %17, i32 0, i32 0, !dbg !1170
  %18 = load ptr, ptr %name10, align 8, !dbg !1170, !tbaa !1132
  %19 = load ptr, ptr %wrap, align 8, !dbg !1171, !tbaa !898
  %call11 = call ptr @HAMT_insert(ptr noundef %16, ptr noundef %18, ptr noundef %19, ptr noundef %replace, ptr noundef @directive_level2_delete), !dbg !1172
  %20 = load ptr, ptr %dir.addr, align 8, !dbg !1173, !tbaa !898
  %incdec.ptr = getelementptr inbounds %struct.yasm_directive, ptr %20, i32 1, !dbg !1173
  store ptr %incdec.ptr, ptr %dir.addr, align 8, !dbg !1173, !tbaa !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrap) #6, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 4, ptr %replace) #6, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 8, ptr %level2) #6, !dbg !1174
  br label %while.cond, !dbg !1129, !llvm.loop !1175

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !1176
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_destroy(ptr noundef %object) #0 !dbg !1177 {
entry:
  %object.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1181, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1185
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1182, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6, !dbg !1185
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1183, metadata !DIExpression()), !dbg !1187
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1188, !tbaa !898
  %objfmt = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 4, !dbg !1190
  %1 = load ptr, ptr %objfmt, align 8, !dbg !1190, !tbaa !968
  %tobool = icmp ne ptr %1, null, !dbg !1188
  br i1 %tobool, label %if.then, label %if.end, !dbg !1191

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8, !dbg !1192, !tbaa !898
  %objfmt1 = getelementptr inbounds %struct.yasm_object, ptr %2, i32 0, i32 4, !dbg !1192
  %3 = load ptr, ptr %objfmt1, align 8, !dbg !1192, !tbaa !968
  %module = getelementptr inbounds %struct.yasm_objfmt_base, ptr %3, i32 0, i32 0, !dbg !1192
  %4 = load ptr, ptr %module, align 8, !dbg !1192, !tbaa !992
  %destroy = getelementptr inbounds %struct.yasm_objfmt_module, ptr %4, i32 0, i32 11, !dbg !1192
  %5 = load ptr, ptr %destroy, align 8, !dbg !1192, !tbaa !1193
  %6 = load ptr, ptr %object.addr, align 8, !dbg !1192, !tbaa !898
  %objfmt2 = getelementptr inbounds %struct.yasm_object, ptr %6, i32 0, i32 4, !dbg !1192
  %7 = load ptr, ptr %objfmt2, align 8, !dbg !1192, !tbaa !968
  call void %5(ptr noundef %7), !dbg !1192
  br label %if.end, !dbg !1192

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %object.addr, align 8, !dbg !1194, !tbaa !898
  %dbgfmt = getelementptr inbounds %struct.yasm_object, ptr %8, i32 0, i32 5, !dbg !1196
  %9 = load ptr, ptr %dbgfmt, align 8, !dbg !1196, !tbaa !961
  %tobool3 = icmp ne ptr %9, null, !dbg !1194
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !1197

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %object.addr, align 8, !dbg !1198, !tbaa !898
  %dbgfmt5 = getelementptr inbounds %struct.yasm_object, ptr %10, i32 0, i32 5, !dbg !1198
  %11 = load ptr, ptr %dbgfmt5, align 8, !dbg !1198, !tbaa !961
  %module6 = getelementptr inbounds %struct.yasm_dbgfmt_base, ptr %11, i32 0, i32 0, !dbg !1198
  %12 = load ptr, ptr %module6, align 8, !dbg !1198, !tbaa !1065
  %destroy7 = getelementptr inbounds %struct.yasm_dbgfmt_module, ptr %12, i32 0, i32 4, !dbg !1198
  %13 = load ptr, ptr %destroy7, align 8, !dbg !1198, !tbaa !1199
  %14 = load ptr, ptr %object.addr, align 8, !dbg !1198, !tbaa !898
  %dbgfmt8 = getelementptr inbounds %struct.yasm_object, ptr %14, i32 0, i32 5, !dbg !1198
  %15 = load ptr, ptr %dbgfmt8, align 8, !dbg !1198, !tbaa !961
  call void %13(ptr noundef %15), !dbg !1198
  br label %if.end9, !dbg !1198

if.end9:                                          ; preds = %if.then4, %if.end
  %16 = load ptr, ptr %object.addr, align 8, !dbg !1200, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %16, i32 0, i32 7, !dbg !1200
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !1200
  %17 = load ptr, ptr %stqh_first, align 8, !dbg !1200, !tbaa !945
  store ptr %17, ptr %cur, align 8, !dbg !1201, !tbaa !898
  br label %while.cond, !dbg !1202

while.cond:                                       ; preds = %while.body, %if.end9
  %18 = load ptr, ptr %cur, align 8, !dbg !1203, !tbaa !898
  %tobool10 = icmp ne ptr %18, null, !dbg !1202
  br i1 %tobool10, label %while.body, label %while.end, !dbg !1202

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %cur, align 8, !dbg !1204, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_section, ptr %19, i32 0, i32 0, !dbg !1204
  %stqe_next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1204
  %20 = load ptr, ptr %stqe_next, align 8, !dbg !1204, !tbaa !1206
  store ptr %20, ptr %next, align 8, !dbg !1212, !tbaa !898
  %21 = load ptr, ptr %cur, align 8, !dbg !1213, !tbaa !898
  call void @yasm_section_destroy(ptr noundef %21), !dbg !1214
  %22 = load ptr, ptr %next, align 8, !dbg !1215, !tbaa !898
  store ptr %22, ptr %cur, align 8, !dbg !1216, !tbaa !898
  br label %while.cond, !dbg !1202, !llvm.loop !1217

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %object.addr, align 8, !dbg !1219, !tbaa !898
  %directives = getelementptr inbounds %struct.yasm_object, ptr %23, i32 0, i32 8, !dbg !1220
  %24 = load ptr, ptr %directives, align 8, !dbg !1220, !tbaa !952
  call void @HAMT_destroy(ptr noundef %24, ptr noundef @directive_level1_delete), !dbg !1221
  %25 = load ptr, ptr @yasm_xfree, align 8, !dbg !1222, !tbaa !898
  %26 = load ptr, ptr %object.addr, align 8, !dbg !1223, !tbaa !898
  %global_prefix = getelementptr inbounds %struct.yasm_object, ptr %26, i32 0, i32 9, !dbg !1224
  %27 = load ptr, ptr %global_prefix, align 8, !dbg !1224, !tbaa !931
  call void %25(ptr noundef %27), !dbg !1222
  %28 = load ptr, ptr @yasm_xfree, align 8, !dbg !1225, !tbaa !898
  %29 = load ptr, ptr %object.addr, align 8, !dbg !1226, !tbaa !898
  %global_suffix = getelementptr inbounds %struct.yasm_object, ptr %29, i32 0, i32 10, !dbg !1227
  %30 = load ptr, ptr %global_suffix, align 8, !dbg !1227, !tbaa !936
  call void %28(ptr noundef %30), !dbg !1225
  %31 = load ptr, ptr @yasm_xfree, align 8, !dbg !1228, !tbaa !898
  %32 = load ptr, ptr %object.addr, align 8, !dbg !1229, !tbaa !898
  %src_filename = getelementptr inbounds %struct.yasm_object, ptr %32, i32 0, i32 0, !dbg !1230
  %33 = load ptr, ptr %src_filename, align 8, !dbg !1230, !tbaa !918
  call void %31(ptr noundef %33), !dbg !1228
  %34 = load ptr, ptr @yasm_xfree, align 8, !dbg !1231, !tbaa !898
  %35 = load ptr, ptr %object.addr, align 8, !dbg !1232, !tbaa !898
  %obj_filename = getelementptr inbounds %struct.yasm_object, ptr %35, i32 0, i32 1, !dbg !1233
  %36 = load ptr, ptr %obj_filename, align 8, !dbg !1233, !tbaa !926
  call void %34(ptr noundef %36), !dbg !1231
  %37 = load ptr, ptr %object.addr, align 8, !dbg !1234, !tbaa !898
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %37, i32 0, i32 2, !dbg !1235
  %38 = load ptr, ptr %symtab, align 8, !dbg !1235, !tbaa !941
  call void @yasm_symtab_destroy(ptr noundef %38), !dbg !1236
  %39 = load ptr, ptr %object.addr, align 8, !dbg !1237, !tbaa !898
  %arch = getelementptr inbounds %struct.yasm_object, ptr %39, i32 0, i32 3, !dbg !1239
  %40 = load ptr, ptr %arch, align 8, !dbg !1239, !tbaa !957
  %tobool11 = icmp ne ptr %40, null, !dbg !1237
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !1240

if.then12:                                        ; preds = %while.end
  %41 = load ptr, ptr %object.addr, align 8, !dbg !1241, !tbaa !898
  %arch13 = getelementptr inbounds %struct.yasm_object, ptr %41, i32 0, i32 3, !dbg !1241
  %42 = load ptr, ptr %arch13, align 8, !dbg !1241, !tbaa !957
  %module14 = getelementptr inbounds %struct.yasm_arch_base, ptr %42, i32 0, i32 0, !dbg !1241
  %43 = load ptr, ptr %module14, align 8, !dbg !1241, !tbaa !979
  %destroy15 = getelementptr inbounds %struct.yasm_arch_module, ptr %43, i32 0, i32 4, !dbg !1241
  %44 = load ptr, ptr %destroy15, align 8, !dbg !1241, !tbaa !1242
  %45 = load ptr, ptr %object.addr, align 8, !dbg !1241, !tbaa !898
  %arch16 = getelementptr inbounds %struct.yasm_object, ptr %45, i32 0, i32 3, !dbg !1241
  %46 = load ptr, ptr %arch16, align 8, !dbg !1241, !tbaa !957
  call void %44(ptr noundef %46), !dbg !1241
  br label %if.end17, !dbg !1241

if.end17:                                         ; preds = %if.then12, %while.end
  %47 = load ptr, ptr @yasm_xfree, align 8, !dbg !1243, !tbaa !898
  %48 = load ptr, ptr %object.addr, align 8, !dbg !1244, !tbaa !898
  call void %47(ptr noundef %48), !dbg !1243
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1245
  ret void, !dbg !1245
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_object_get_general(ptr noundef %object, ptr noundef %name, i64 noundef %align, i32 noundef %code, i32 noundef %res_only, ptr noundef %isnew, i64 noundef %line) #0 !dbg !1246 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %align.addr = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %res_only.addr = alloca i32, align 4
  %isnew.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  %bc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1251, metadata !DIExpression()), !dbg !1260
  store ptr %name, ptr %name.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1252, metadata !DIExpression()), !dbg !1261
  store i64 %align, ptr %align.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !1253, metadata !DIExpression()), !dbg !1263
  store i32 %code, ptr %code.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !1254, metadata !DIExpression()), !dbg !1264
  store i32 %res_only, ptr %res_only.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %res_only.addr, metadata !1255, metadata !DIExpression()), !dbg !1265
  store ptr %isnew, ptr %isnew.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %isnew.addr, metadata !1256, metadata !DIExpression()), !dbg !1266
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !1257, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6, !dbg !1268
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1258, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #6, !dbg !1270
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1259, metadata !DIExpression()), !dbg !1271
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1272, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 7, !dbg !1272
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !1272
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1272, !tbaa !945
  store ptr %1, ptr %s, align 8, !dbg !1272, !tbaa !898
  br label %for.cond, !dbg !1272

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %s, align 8, !dbg !1274, !tbaa !898
  %tobool = icmp ne ptr %2, null, !dbg !1272
  br i1 %tobool, label %for.body, label %for.end, !dbg !1272

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s, align 8, !dbg !1276, !tbaa !898
  %name1 = getelementptr inbounds %struct.yasm_section, ptr %3, i32 0, i32 2, !dbg !1279
  %4 = load ptr, ptr %name1, align 8, !dbg !1279, !tbaa !1280
  %5 = load ptr, ptr %name.addr, align 8, !dbg !1281, !tbaa !898
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef %5) #7, !dbg !1282
  %cmp = icmp eq i32 %call, 0, !dbg !1283
  br i1 %cmp, label %if.then, label %if.end, !dbg !1284

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %isnew.addr, align 8, !dbg !1285, !tbaa !898
  store i32 0, ptr %6, align 4, !dbg !1287, !tbaa !1002
  %7 = load ptr, ptr %s, align 8, !dbg !1288, !tbaa !898
  store ptr %7, ptr %retval, align 8, !dbg !1289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1289

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1290

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %s, align 8, !dbg !1274, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_section, ptr %8, i32 0, i32 0, !dbg !1274
  %stqe_next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1274
  %9 = load ptr, ptr %stqe_next, align 8, !dbg !1274, !tbaa !1206
  store ptr %9, ptr %s, align 8, !dbg !1274, !tbaa !898
  br label %for.cond, !dbg !1274, !llvm.loop !1291

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr @yasm_xcalloc, align 8, !dbg !1293, !tbaa !898
  %call2 = call ptr %10(i64 noundef 1, i64 noundef 104), !dbg !1293
  store ptr %call2, ptr %s, align 8, !dbg !1294, !tbaa !898
  br label %do.body, !dbg !1295

do.body:                                          ; preds = %for.end
  %11 = load ptr, ptr %s, align 8, !dbg !1296, !tbaa !898
  %link3 = getelementptr inbounds %struct.yasm_section, ptr %11, i32 0, i32 0, !dbg !1296
  %stqe_next4 = getelementptr inbounds %struct.anon, ptr %link3, i32 0, i32 0, !dbg !1296
  store ptr null, ptr %stqe_next4, align 8, !dbg !1296, !tbaa !1206
  %12 = load ptr, ptr %s, align 8, !dbg !1296, !tbaa !898
  %13 = load ptr, ptr %object.addr, align 8, !dbg !1296, !tbaa !898
  %sections5 = getelementptr inbounds %struct.yasm_object, ptr %13, i32 0, i32 7, !dbg !1296
  %stqh_last = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections5, i32 0, i32 1, !dbg !1296
  %14 = load ptr, ptr %stqh_last, align 8, !dbg !1296, !tbaa !946
  store ptr %12, ptr %14, align 8, !dbg !1296, !tbaa !898
  %15 = load ptr, ptr %s, align 8, !dbg !1296, !tbaa !898
  %link6 = getelementptr inbounds %struct.yasm_section, ptr %15, i32 0, i32 0, !dbg !1296
  %stqe_next7 = getelementptr inbounds %struct.anon, ptr %link6, i32 0, i32 0, !dbg !1296
  %16 = load ptr, ptr %object.addr, align 8, !dbg !1296, !tbaa !898
  %sections8 = getelementptr inbounds %struct.yasm_object, ptr %16, i32 0, i32 7, !dbg !1296
  %stqh_last9 = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections8, i32 0, i32 1, !dbg !1296
  store ptr %stqe_next7, ptr %stqh_last9, align 8, !dbg !1296, !tbaa !946
  br label %do.cond, !dbg !1296

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1296

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %object.addr, align 8, !dbg !1298, !tbaa !898
  %18 = load ptr, ptr %s, align 8, !dbg !1299, !tbaa !898
  %object10 = getelementptr inbounds %struct.yasm_section, ptr %18, i32 0, i32 1, !dbg !1300
  store ptr %17, ptr %object10, align 8, !dbg !1301, !tbaa !1302
  %19 = load ptr, ptr %name.addr, align 8, !dbg !1303, !tbaa !898
  %call11 = call ptr @yasm__xstrdup(ptr noundef %19), !dbg !1304
  %20 = load ptr, ptr %s, align 8, !dbg !1305, !tbaa !898
  %name12 = getelementptr inbounds %struct.yasm_section, ptr %20, i32 0, i32 2, !dbg !1306
  store ptr %call11, ptr %name12, align 8, !dbg !1307, !tbaa !1280
  %21 = load ptr, ptr %s, align 8, !dbg !1308, !tbaa !898
  %assoc_data = getelementptr inbounds %struct.yasm_section, ptr %21, i32 0, i32 3, !dbg !1309
  store ptr null, ptr %assoc_data, align 8, !dbg !1310, !tbaa !1311
  %22 = load i64, ptr %align.addr, align 8, !dbg !1312, !tbaa !1262
  %23 = load ptr, ptr %s, align 8, !dbg !1313, !tbaa !898
  %align13 = getelementptr inbounds %struct.yasm_section, ptr %23, i32 0, i32 4, !dbg !1314
  store i64 %22, ptr %align13, align 8, !dbg !1315, !tbaa !1316
  br label %do.body14, !dbg !1317

do.body14:                                        ; preds = %do.end
  %24 = load ptr, ptr %s, align 8, !dbg !1318, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %24, i32 0, i32 9, !dbg !1318
  %stqh_first15 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !1318
  store ptr null, ptr %stqh_first15, align 8, !dbg !1318, !tbaa !1320
  %25 = load ptr, ptr %s, align 8, !dbg !1318, !tbaa !898
  %bcs16 = getelementptr inbounds %struct.yasm_section, ptr %25, i32 0, i32 9, !dbg !1318
  %stqh_first17 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs16, i32 0, i32 0, !dbg !1318
  %26 = load ptr, ptr %s, align 8, !dbg !1318, !tbaa !898
  %bcs18 = getelementptr inbounds %struct.yasm_section, ptr %26, i32 0, i32 9, !dbg !1318
  %stqh_last19 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs18, i32 0, i32 1, !dbg !1318
  store ptr %stqh_first17, ptr %stqh_last19, align 8, !dbg !1318, !tbaa !1321
  br label %do.cond20, !dbg !1318

do.cond20:                                        ; preds = %do.body14
  br label %do.end21, !dbg !1318

do.end21:                                         ; preds = %do.cond20
  %call22 = call ptr @yasm_bc_create_common(ptr noundef null, ptr noundef null, i64 noundef 0), !dbg !1322
  store ptr %call22, ptr %bc, align 8, !dbg !1323, !tbaa !898
  %27 = load ptr, ptr %s, align 8, !dbg !1324, !tbaa !898
  %28 = load ptr, ptr %bc, align 8, !dbg !1325, !tbaa !898
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %28, i32 0, i32 2, !dbg !1326
  store ptr %27, ptr %section, align 8, !dbg !1327, !tbaa !1328
  %29 = load ptr, ptr %bc, align 8, !dbg !1330, !tbaa !898
  %offset = getelementptr inbounds %struct.yasm_bytecode, ptr %29, i32 0, i32 7, !dbg !1331
  store i64 0, ptr %offset, align 8, !dbg !1332, !tbaa !1333
  br label %do.body23, !dbg !1334

do.body23:                                        ; preds = %do.end21
  %30 = load ptr, ptr %bc, align 8, !dbg !1335, !tbaa !898
  %link24 = getelementptr inbounds %struct.yasm_bytecode, ptr %30, i32 0, i32 0, !dbg !1335
  %stqe_next25 = getelementptr inbounds %struct.anon.0, ptr %link24, i32 0, i32 0, !dbg !1335
  store ptr null, ptr %stqe_next25, align 8, !dbg !1335, !tbaa !1337
  %31 = load ptr, ptr %bc, align 8, !dbg !1335, !tbaa !898
  %32 = load ptr, ptr %s, align 8, !dbg !1335, !tbaa !898
  %bcs26 = getelementptr inbounds %struct.yasm_section, ptr %32, i32 0, i32 9, !dbg !1335
  %stqh_last27 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs26, i32 0, i32 1, !dbg !1335
  %33 = load ptr, ptr %stqh_last27, align 8, !dbg !1335, !tbaa !1321
  store ptr %31, ptr %33, align 8, !dbg !1335, !tbaa !898
  %34 = load ptr, ptr %bc, align 8, !dbg !1335, !tbaa !898
  %link28 = getelementptr inbounds %struct.yasm_bytecode, ptr %34, i32 0, i32 0, !dbg !1335
  %stqe_next29 = getelementptr inbounds %struct.anon.0, ptr %link28, i32 0, i32 0, !dbg !1335
  %35 = load ptr, ptr %s, align 8, !dbg !1335, !tbaa !898
  %bcs30 = getelementptr inbounds %struct.yasm_section, ptr %35, i32 0, i32 9, !dbg !1335
  %stqh_last31 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs30, i32 0, i32 1, !dbg !1335
  store ptr %stqe_next29, ptr %stqh_last31, align 8, !dbg !1335, !tbaa !1321
  br label %do.cond32, !dbg !1335

do.cond32:                                        ; preds = %do.body23
  br label %do.end33, !dbg !1335

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !1338

do.body34:                                        ; preds = %do.end33
  %36 = load ptr, ptr %s, align 8, !dbg !1339, !tbaa !898
  %relocs = getelementptr inbounds %struct.yasm_section, ptr %36, i32 0, i32 10, !dbg !1339
  %stqh_first35 = getelementptr inbounds %struct.yasm_relochead, ptr %relocs, i32 0, i32 0, !dbg !1339
  store ptr null, ptr %stqh_first35, align 8, !dbg !1339, !tbaa !1341
  %37 = load ptr, ptr %s, align 8, !dbg !1339, !tbaa !898
  %relocs36 = getelementptr inbounds %struct.yasm_section, ptr %37, i32 0, i32 10, !dbg !1339
  %stqh_first37 = getelementptr inbounds %struct.yasm_relochead, ptr %relocs36, i32 0, i32 0, !dbg !1339
  %38 = load ptr, ptr %s, align 8, !dbg !1339, !tbaa !898
  %relocs38 = getelementptr inbounds %struct.yasm_section, ptr %38, i32 0, i32 10, !dbg !1339
  %stqh_last39 = getelementptr inbounds %struct.yasm_relochead, ptr %relocs38, i32 0, i32 1, !dbg !1339
  store ptr %stqh_first37, ptr %stqh_last39, align 8, !dbg !1339, !tbaa !1342
  br label %do.cond40, !dbg !1339

do.cond40:                                        ; preds = %do.body34
  br label %do.end41, !dbg !1339

do.end41:                                         ; preds = %do.cond40
  %39 = load ptr, ptr %s, align 8, !dbg !1343, !tbaa !898
  %destroy_reloc = getelementptr inbounds %struct.yasm_section, ptr %39, i32 0, i32 11, !dbg !1344
  store ptr null, ptr %destroy_reloc, align 8, !dbg !1345, !tbaa !1346
  %40 = load i32, ptr %code.addr, align 4, !dbg !1347, !tbaa !1002
  %41 = load ptr, ptr %s, align 8, !dbg !1348, !tbaa !898
  %code42 = getelementptr inbounds %struct.yasm_section, ptr %41, i32 0, i32 6, !dbg !1349
  store i32 %40, ptr %code42, align 8, !dbg !1350, !tbaa !1351
  %42 = load i32, ptr %res_only.addr, align 4, !dbg !1352, !tbaa !1002
  %43 = load ptr, ptr %s, align 8, !dbg !1353, !tbaa !898
  %res_only43 = getelementptr inbounds %struct.yasm_section, ptr %43, i32 0, i32 7, !dbg !1354
  store i32 %42, ptr %res_only43, align 4, !dbg !1355, !tbaa !1356
  %44 = load ptr, ptr %s, align 8, !dbg !1357, !tbaa !898
  %def = getelementptr inbounds %struct.yasm_section, ptr %44, i32 0, i32 8, !dbg !1358
  store i32 0, ptr %def, align 8, !dbg !1359, !tbaa !1360
  %45 = load ptr, ptr %object.addr, align 8, !dbg !1361, !tbaa !898
  %objfmt = getelementptr inbounds %struct.yasm_object, ptr %45, i32 0, i32 4, !dbg !1361
  %46 = load ptr, ptr %objfmt, align 8, !dbg !1361, !tbaa !968
  %module = getelementptr inbounds %struct.yasm_objfmt_base, ptr %46, i32 0, i32 0, !dbg !1361
  %47 = load ptr, ptr %module, align 8, !dbg !1361, !tbaa !992
  %init_new_section = getelementptr inbounds %struct.yasm_objfmt_module, ptr %47, i32 0, i32 13, !dbg !1361
  %48 = load ptr, ptr %init_new_section, align 8, !dbg !1361, !tbaa !1362
  %49 = load ptr, ptr %s, align 8, !dbg !1361, !tbaa !898
  %50 = load i64, ptr %line.addr, align 8, !dbg !1361, !tbaa !1262
  call void %48(ptr noundef %49, i64 noundef %50), !dbg !1361
  %51 = load ptr, ptr %isnew.addr, align 8, !dbg !1363, !tbaa !898
  store i32 1, ptr %51, align 4, !dbg !1364, !tbaa !1002
  %52 = load ptr, ptr %s, align 8, !dbg !1365, !tbaa !898
  store ptr %52, ptr %retval, align 8, !dbg !1366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1366

cleanup:                                          ; preds = %do.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #6, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6, !dbg !1367
  %53 = load ptr, ptr %retval, align 8, !dbg !1367
  ret ptr %53, !dbg !1367
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1368 i32 @strcmp(ptr noundef, ptr noundef) #3

declare !dbg !1370 ptr @yasm_bc_create_common(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @yasm_object_directive(ptr noundef %object, ptr noundef %name, ptr noundef %parser, ptr noundef %valparams, ptr noundef %objext_valparams, i64 noundef %line) #0 !dbg !1373 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parser.addr = alloca ptr, align 8
  %valparams.addr = alloca ptr, align 8
  %objext_valparams.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %level2 = alloca ptr, align 8
  %wrap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1377, metadata !DIExpression()), !dbg !1385
  store ptr %name, ptr %name.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1378, metadata !DIExpression()), !dbg !1386
  store ptr %parser, ptr %parser.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %parser.addr, metadata !1379, metadata !DIExpression()), !dbg !1387
  store ptr %valparams, ptr %valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %valparams.addr, metadata !1380, metadata !DIExpression()), !dbg !1388
  store ptr %objext_valparams, ptr %objext_valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %objext_valparams.addr, metadata !1381, metadata !DIExpression()), !dbg !1389
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !1382, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 8, ptr %level2) #6, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %level2, metadata !1383, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %wrap) #6, !dbg !1393
  tail call void @llvm.dbg.declare(metadata ptr %wrap, metadata !1384, metadata !DIExpression()), !dbg !1394
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1395, !tbaa !898
  %directives = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 8, !dbg !1396
  %1 = load ptr, ptr %directives, align 8, !dbg !1396, !tbaa !952
  %2 = load ptr, ptr %parser.addr, align 8, !dbg !1397, !tbaa !898
  %call = call ptr @HAMT_search(ptr noundef %1, ptr noundef %2), !dbg !1398
  store ptr %call, ptr %level2, align 8, !dbg !1399, !tbaa !898
  %3 = load ptr, ptr %level2, align 8, !dbg !1400, !tbaa !898
  %tobool = icmp ne ptr %3, null, !dbg !1400
  br i1 %tobool, label %if.end, label %if.then, !dbg !1402

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1403

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %level2, align 8, !dbg !1404, !tbaa !898
  %5 = load ptr, ptr %name.addr, align 8, !dbg !1405, !tbaa !898
  %call1 = call ptr @HAMT_search(ptr noundef %4, ptr noundef %5), !dbg !1406
  store ptr %call1, ptr %wrap, align 8, !dbg !1407, !tbaa !898
  %6 = load ptr, ptr %wrap, align 8, !dbg !1408, !tbaa !898
  %tobool2 = icmp ne ptr %6, null, !dbg !1408
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1410

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1411

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %wrap, align 8, !dbg !1412, !tbaa !898
  %directive = getelementptr inbounds %struct.yasm_directive_wrap, ptr %7, i32 0, i32 0, !dbg !1413
  %8 = load ptr, ptr %directive, align 8, !dbg !1413, !tbaa !1166
  %9 = load ptr, ptr %object.addr, align 8, !dbg !1414, !tbaa !898
  %10 = load ptr, ptr %valparams.addr, align 8, !dbg !1415, !tbaa !898
  %11 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !1416, !tbaa !898
  %12 = load i64, ptr %line.addr, align 8, !dbg !1417, !tbaa !1262
  call void @yasm_call_directive(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef %12), !dbg !1418
  store i32 0, ptr %retval, align 4, !dbg !1419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1419

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wrap) #6, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 8, ptr %level2) #6, !dbg !1420
  %13 = load i32, ptr %retval, align 4, !dbg !1420
  ret i32 %13, !dbg !1420
}

declare !dbg !1421 ptr @HAMT_search(ptr noundef, ptr noundef) #2

declare !dbg !1424 void @yasm_call_directive(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_set_source_fn(ptr noundef %object, ptr noundef %src_filename) #0 !dbg !1427 {
entry:
  %object.addr = alloca ptr, align 8
  %src_filename.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1431, metadata !DIExpression()), !dbg !1433
  store ptr %src_filename, ptr %src_filename.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %src_filename.addr, metadata !1432, metadata !DIExpression()), !dbg !1434
  %0 = load ptr, ptr @yasm_xfree, align 8, !dbg !1435, !tbaa !898
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1436, !tbaa !898
  %src_filename1 = getelementptr inbounds %struct.yasm_object, ptr %1, i32 0, i32 0, !dbg !1437
  %2 = load ptr, ptr %src_filename1, align 8, !dbg !1437, !tbaa !918
  call void %0(ptr noundef %2), !dbg !1435
  %3 = load ptr, ptr %src_filename.addr, align 8, !dbg !1438, !tbaa !898
  %call = call ptr @yasm__xstrdup(ptr noundef %3), !dbg !1439
  %4 = load ptr, ptr %object.addr, align 8, !dbg !1440, !tbaa !898
  %src_filename2 = getelementptr inbounds %struct.yasm_object, ptr %4, i32 0, i32 0, !dbg !1441
  store ptr %call, ptr %src_filename2, align 8, !dbg !1442, !tbaa !918
  ret void, !dbg !1443
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_set_global_prefix(ptr noundef %object, ptr noundef %prefix) #0 !dbg !1444 {
entry:
  %object.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1446, metadata !DIExpression()), !dbg !1448
  store ptr %prefix, ptr %prefix.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !1447, metadata !DIExpression()), !dbg !1449
  %0 = load ptr, ptr @yasm_xfree, align 8, !dbg !1450, !tbaa !898
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1451, !tbaa !898
  %global_prefix = getelementptr inbounds %struct.yasm_object, ptr %1, i32 0, i32 9, !dbg !1452
  %2 = load ptr, ptr %global_prefix, align 8, !dbg !1452, !tbaa !931
  call void %0(ptr noundef %2), !dbg !1450
  %3 = load ptr, ptr %prefix.addr, align 8, !dbg !1453, !tbaa !898
  %call = call ptr @yasm__xstrdup(ptr noundef %3), !dbg !1454
  %4 = load ptr, ptr %object.addr, align 8, !dbg !1455, !tbaa !898
  %global_prefix1 = getelementptr inbounds %struct.yasm_object, ptr %4, i32 0, i32 9, !dbg !1456
  store ptr %call, ptr %global_prefix1, align 8, !dbg !1457, !tbaa !931
  ret void, !dbg !1458
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_set_global_suffix(ptr noundef %object, ptr noundef %suffix) #0 !dbg !1459 {
entry:
  %object.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1461, metadata !DIExpression()), !dbg !1463
  store ptr %suffix, ptr %suffix.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !1462, metadata !DIExpression()), !dbg !1464
  %0 = load ptr, ptr @yasm_xfree, align 8, !dbg !1465, !tbaa !898
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1466, !tbaa !898
  %global_suffix = getelementptr inbounds %struct.yasm_object, ptr %1, i32 0, i32 10, !dbg !1467
  %2 = load ptr, ptr %global_suffix, align 8, !dbg !1467, !tbaa !936
  call void %0(ptr noundef %2), !dbg !1465
  %3 = load ptr, ptr %suffix.addr, align 8, !dbg !1468, !tbaa !898
  %call = call ptr @yasm__xstrdup(ptr noundef %3), !dbg !1469
  %4 = load ptr, ptr %object.addr, align 8, !dbg !1470, !tbaa !898
  %global_suffix1 = getelementptr inbounds %struct.yasm_object, ptr %4, i32 0, i32 10, !dbg !1471
  store ptr %call, ptr %global_suffix1, align 8, !dbg !1472, !tbaa !936
  ret void, !dbg !1473
}

; Function Attrs: nounwind uwtable
define dso_local i32 @yasm_section_is_code(ptr noundef %sect) #0 !dbg !1474 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1480, !tbaa !898
  %code = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 6, !dbg !1481
  %1 = load i32, ptr %code, align 8, !dbg !1481, !tbaa !1351
  ret i32 %1, !dbg !1482
}

; Function Attrs: nounwind uwtable
define dso_local i64 @yasm_section_get_opt_flags(ptr noundef %sect) #0 !dbg !1483 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1489, metadata !DIExpression()), !dbg !1490
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1491, !tbaa !898
  %opt_flags = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 5, !dbg !1492
  %1 = load i64, ptr %opt_flags, align 8, !dbg !1492, !tbaa !1493
  ret i64 %1, !dbg !1494
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_section_set_opt_flags(ptr noundef %sect, i64 noundef %opt_flags) #0 !dbg !1495 {
entry:
  %sect.addr = alloca ptr, align 8
  %opt_flags.addr = alloca i64, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1497, metadata !DIExpression()), !dbg !1499
  store i64 %opt_flags, ptr %opt_flags.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %opt_flags.addr, metadata !1498, metadata !DIExpression()), !dbg !1500
  %0 = load i64, ptr %opt_flags.addr, align 8, !dbg !1501, !tbaa !1262
  %1 = load ptr, ptr %sect.addr, align 8, !dbg !1502, !tbaa !898
  %opt_flags1 = getelementptr inbounds %struct.yasm_section, ptr %1, i32 0, i32 5, !dbg !1503
  store i64 %0, ptr %opt_flags1, align 8, !dbg !1504, !tbaa !1493
  ret void, !dbg !1505
}

; Function Attrs: nounwind uwtable
define dso_local i32 @yasm_section_is_default(ptr noundef %sect) #0 !dbg !1506 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1510, metadata !DIExpression()), !dbg !1511
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1512, !tbaa !898
  %def = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 8, !dbg !1513
  %1 = load i32, ptr %def, align 8, !dbg !1513, !tbaa !1360
  ret i32 %1, !dbg !1514
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_section_set_default(ptr noundef %sect, i32 noundef %def) #0 !dbg !1515 {
entry:
  %sect.addr = alloca ptr, align 8
  %def.addr = alloca i32, align 4
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1519, metadata !DIExpression()), !dbg !1521
  store i32 %def, ptr %def.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %def.addr, metadata !1520, metadata !DIExpression()), !dbg !1522
  %0 = load i32, ptr %def.addr, align 4, !dbg !1523, !tbaa !1002
  %1 = load ptr, ptr %sect.addr, align 8, !dbg !1524, !tbaa !898
  %def1 = getelementptr inbounds %struct.yasm_section, ptr %1, i32 0, i32 8, !dbg !1525
  store i32 %0, ptr %def1, align 8, !dbg !1526, !tbaa !1360
  ret void, !dbg !1527
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_get_object(ptr noundef %sect) #0 !dbg !1528 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1532, metadata !DIExpression()), !dbg !1533
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1534, !tbaa !898
  %object = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 1, !dbg !1535
  %1 = load ptr, ptr %object, align 8, !dbg !1535, !tbaa !1302
  ret ptr %1, !dbg !1536
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_get_data(ptr noundef %sect, ptr noundef %callback) #0 !dbg !1537 {
entry:
  %sect.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1551, metadata !DIExpression()), !dbg !1553
  store ptr %callback, ptr %callback.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !1552, metadata !DIExpression()), !dbg !1554
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1555, !tbaa !898
  %assoc_data = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 3, !dbg !1556
  %1 = load ptr, ptr %assoc_data, align 8, !dbg !1556, !tbaa !1311
  %2 = load ptr, ptr %callback.addr, align 8, !dbg !1557, !tbaa !898
  %call = call ptr @yasm__assoc_data_get(ptr noundef %1, ptr noundef %2), !dbg !1558
  ret ptr %call, !dbg !1559
}

declare !dbg !1560 ptr @yasm__assoc_data_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @yasm_section_add_data(ptr noundef %sect, ptr noundef %callback, ptr noundef %data) #0 !dbg !1563 {
entry:
  %sect.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1567, metadata !DIExpression()), !dbg !1570
  store ptr %callback, ptr %callback.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !1568, metadata !DIExpression()), !dbg !1571
  store ptr %data, ptr %data.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1569, metadata !DIExpression()), !dbg !1572
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1573, !tbaa !898
  %assoc_data = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 3, !dbg !1574
  %1 = load ptr, ptr %assoc_data, align 8, !dbg !1574, !tbaa !1311
  %2 = load ptr, ptr %callback.addr, align 8, !dbg !1575, !tbaa !898
  %3 = load ptr, ptr %data.addr, align 8, !dbg !1576, !tbaa !898
  %call = call ptr @yasm__assoc_data_add(ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1577
  %4 = load ptr, ptr %sect.addr, align 8, !dbg !1578, !tbaa !898
  %assoc_data1 = getelementptr inbounds %struct.yasm_section, ptr %4, i32 0, i32 3, !dbg !1579
  store ptr %call, ptr %assoc_data1, align 8, !dbg !1580, !tbaa !1311
  ret void, !dbg !1581
}

declare !dbg !1582 ptr @yasm__assoc_data_add(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @yasm_section_destroy(ptr noundef %sect) #0 !dbg !1585 {
entry:
  %sect.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %next = alloca ptr, align 8
  %r_cur = alloca ptr, align 8
  %r_next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1589, metadata !DIExpression()), !dbg !1596
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1597
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1590, metadata !DIExpression()), !dbg !1598
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6, !dbg !1597
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1591, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_cur) #6, !dbg !1600
  tail call void @llvm.dbg.declare(metadata ptr %r_cur, metadata !1592, metadata !DIExpression()), !dbg !1601
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_next) #6, !dbg !1600
  tail call void @llvm.dbg.declare(metadata ptr %r_next, metadata !1595, metadata !DIExpression()), !dbg !1602
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1603, !tbaa !898
  %tobool = icmp ne ptr %0, null, !dbg !1603
  br i1 %tobool, label %if.end, label %if.then, !dbg !1605

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1606

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @yasm_xfree, align 8, !dbg !1607, !tbaa !898
  %2 = load ptr, ptr %sect.addr, align 8, !dbg !1608, !tbaa !898
  %name = getelementptr inbounds %struct.yasm_section, ptr %2, i32 0, i32 2, !dbg !1609
  %3 = load ptr, ptr %name, align 8, !dbg !1609, !tbaa !1280
  call void %1(ptr noundef %3), !dbg !1607
  %4 = load ptr, ptr %sect.addr, align 8, !dbg !1610, !tbaa !898
  %assoc_data = getelementptr inbounds %struct.yasm_section, ptr %4, i32 0, i32 3, !dbg !1611
  %5 = load ptr, ptr %assoc_data, align 8, !dbg !1611, !tbaa !1311
  call void @yasm__assoc_data_destroy(ptr noundef %5), !dbg !1612
  %6 = load ptr, ptr %sect.addr, align 8, !dbg !1613, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %6, i32 0, i32 9, !dbg !1613
  %stqh_first = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !1613
  %7 = load ptr, ptr %stqh_first, align 8, !dbg !1613, !tbaa !1320
  store ptr %7, ptr %cur, align 8, !dbg !1614, !tbaa !898
  br label %while.cond, !dbg !1615

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %cur, align 8, !dbg !1616, !tbaa !898
  %tobool1 = icmp ne ptr %8, null, !dbg !1615
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1615

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %cur, align 8, !dbg !1617, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %9, i32 0, i32 0, !dbg !1617
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !1617
  %10 = load ptr, ptr %stqe_next, align 8, !dbg !1617, !tbaa !1337
  store ptr %10, ptr %next, align 8, !dbg !1619, !tbaa !898
  %11 = load ptr, ptr %cur, align 8, !dbg !1620, !tbaa !898
  call void @yasm_bc_destroy(ptr noundef %11), !dbg !1621
  %12 = load ptr, ptr %next, align 8, !dbg !1622, !tbaa !898
  store ptr %12, ptr %cur, align 8, !dbg !1623, !tbaa !898
  br label %while.cond, !dbg !1615, !llvm.loop !1624

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %sect.addr, align 8, !dbg !1626, !tbaa !898
  %relocs = getelementptr inbounds %struct.yasm_section, ptr %13, i32 0, i32 10, !dbg !1626
  %stqh_first2 = getelementptr inbounds %struct.yasm_relochead, ptr %relocs, i32 0, i32 0, !dbg !1626
  %14 = load ptr, ptr %stqh_first2, align 8, !dbg !1626, !tbaa !1341
  store ptr %14, ptr %r_cur, align 8, !dbg !1627, !tbaa !898
  br label %while.cond3, !dbg !1628

while.cond3:                                      ; preds = %while.body5, %while.end
  %15 = load ptr, ptr %r_cur, align 8, !dbg !1629, !tbaa !898
  %tobool4 = icmp ne ptr %15, null, !dbg !1628
  br i1 %tobool4, label %while.body5, label %while.end8, !dbg !1628

while.body5:                                      ; preds = %while.cond3
  %16 = load ptr, ptr %r_cur, align 8, !dbg !1630, !tbaa !898
  %link6 = getelementptr inbounds %struct.yasm_reloc, ptr %16, i32 0, i32 0, !dbg !1630
  %stqe_next7 = getelementptr inbounds %struct.anon.1, ptr %link6, i32 0, i32 0, !dbg !1630
  %17 = load ptr, ptr %stqe_next7, align 8, !dbg !1630, !tbaa !1632
  store ptr %17, ptr %r_next, align 8, !dbg !1634, !tbaa !898
  %18 = load ptr, ptr %r_cur, align 8, !dbg !1635, !tbaa !898
  %addr = getelementptr inbounds %struct.yasm_reloc, ptr %18, i32 0, i32 1, !dbg !1636
  %19 = load ptr, ptr %addr, align 8, !dbg !1636, !tbaa !1637
  call void @yasm_intnum_destroy(ptr noundef %19), !dbg !1638
  %20 = load ptr, ptr %sect.addr, align 8, !dbg !1639, !tbaa !898
  %destroy_reloc = getelementptr inbounds %struct.yasm_section, ptr %20, i32 0, i32 11, !dbg !1640
  %21 = load ptr, ptr %destroy_reloc, align 8, !dbg !1640, !tbaa !1346
  %22 = load ptr, ptr %r_cur, align 8, !dbg !1641, !tbaa !898
  call void %21(ptr noundef %22), !dbg !1639
  %23 = load ptr, ptr %r_next, align 8, !dbg !1642, !tbaa !898
  store ptr %23, ptr %r_cur, align 8, !dbg !1643, !tbaa !898
  br label %while.cond3, !dbg !1628, !llvm.loop !1644

while.end8:                                       ; preds = %while.cond3
  %24 = load ptr, ptr @yasm_xfree, align 8, !dbg !1646, !tbaa !898
  %25 = load ptr, ptr %sect.addr, align 8, !dbg !1647, !tbaa !898
  call void %24(ptr noundef %25), !dbg !1646
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1648
  br label %cleanup, !dbg !1648

cleanup:                                          ; preds = %while.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_next) #6, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_cur) #6, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6, !dbg !1648
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1648
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1648

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1649 void @HAMT_destroy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @directive_level1_delete(ptr noundef %data) #0 !dbg !1652 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1654, metadata !DIExpression()), !dbg !1655
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1656, !tbaa !898
  call void @HAMT_destroy(ptr noundef %0, ptr noundef @directive_level2_delete), !dbg !1657
  ret void, !dbg !1658
}

declare !dbg !1659 void @yasm_symtab_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_print(ptr noundef %object, ptr noundef %f, i32 noundef %indent_level) #0 !dbg !1662 {
entry:
  %object.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %indent_level.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1668, metadata !DIExpression()), !dbg !1672
  store ptr %f, ptr %f.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !1669, metadata !DIExpression()), !dbg !1673
  store i32 %indent_level, ptr %indent_level.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %indent_level.addr, metadata !1670, metadata !DIExpression()), !dbg !1674
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1675
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1671, metadata !DIExpression()), !dbg !1676
  %0 = load ptr, ptr %f.addr, align 8, !dbg !1677, !tbaa !898
  %1 = load i32, ptr %indent_level.addr, align 4, !dbg !1678, !tbaa !1002
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.4, i32 noundef %1, ptr noundef @.str), !dbg !1679
  %2 = load ptr, ptr %object.addr, align 8, !dbg !1680, !tbaa !898
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %2, i32 0, i32 2, !dbg !1681
  %3 = load ptr, ptr %symtab, align 8, !dbg !1681, !tbaa !941
  %4 = load ptr, ptr %f.addr, align 8, !dbg !1682, !tbaa !898
  %5 = load i32, ptr %indent_level.addr, align 4, !dbg !1683, !tbaa !1002
  %add = add nsw i32 %5, 1, !dbg !1684
  call void @yasm_symtab_print(ptr noundef %3, ptr noundef %4, i32 noundef %add), !dbg !1685
  %6 = load ptr, ptr %object.addr, align 8, !dbg !1686, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %6, i32 0, i32 7, !dbg !1686
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !1686
  %7 = load ptr, ptr %stqh_first, align 8, !dbg !1686, !tbaa !945
  store ptr %7, ptr %cur, align 8, !dbg !1686, !tbaa !898
  br label %for.cond, !dbg !1686

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %cur, align 8, !dbg !1688, !tbaa !898
  %tobool = icmp ne ptr %8, null, !dbg !1686
  br i1 %tobool, label %for.body, label %for.end, !dbg !1686

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %f.addr, align 8, !dbg !1690, !tbaa !898
  %10 = load i32, ptr %indent_level.addr, align 4, !dbg !1692, !tbaa !1002
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.5, i32 noundef %10, ptr noundef @.str), !dbg !1693
  %11 = load ptr, ptr %cur, align 8, !dbg !1694, !tbaa !898
  %12 = load ptr, ptr %f.addr, align 8, !dbg !1695, !tbaa !898
  %13 = load i32, ptr %indent_level.addr, align 4, !dbg !1696, !tbaa !1002
  %add2 = add nsw i32 %13, 1, !dbg !1697
  call void @yasm_section_print(ptr noundef %11, ptr noundef %12, i32 noundef %add2, i32 noundef 1), !dbg !1698
  br label %for.inc, !dbg !1699

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %cur, align 8, !dbg !1688, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_section, ptr %14, i32 0, i32 0, !dbg !1688
  %stqe_next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1688
  %15 = load ptr, ptr %stqe_next, align 8, !dbg !1688, !tbaa !1206
  store ptr %15, ptr %cur, align 8, !dbg !1688, !tbaa !898
  br label %for.cond, !dbg !1688, !llvm.loop !1700

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1702
  ret void, !dbg !1702
}

declare !dbg !1703 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !1709 void @yasm_symtab_print(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @yasm_section_print(ptr noundef %sect, ptr noundef %f, i32 noundef %indent_level, i32 noundef %print_bcs) #0 !dbg !1712 {
entry:
  %sect.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %indent_level.addr = alloca i32, align 4
  %print_bcs.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1716, metadata !DIExpression()), !dbg !1723
  store ptr %f, ptr %f.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !1717, metadata !DIExpression()), !dbg !1724
  store i32 %indent_level, ptr %indent_level.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %indent_level.addr, metadata !1718, metadata !DIExpression()), !dbg !1725
  store i32 %print_bcs, ptr %print_bcs.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %print_bcs.addr, metadata !1719, metadata !DIExpression()), !dbg !1726
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1727, !tbaa !898
  %tobool = icmp ne ptr %0, null, !dbg !1727
  br i1 %tobool, label %if.end, label %if.then, !dbg !1729

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %f.addr, align 8, !dbg !1730, !tbaa !898
  %2 = load i32, ptr %indent_level.addr, align 4, !dbg !1732, !tbaa !1002
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.9, i32 noundef %2, ptr noundef @.str), !dbg !1733
  br label %if.end14, !dbg !1734

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8, !dbg !1735, !tbaa !898
  %4 = load i32, ptr %indent_level.addr, align 4, !dbg !1736, !tbaa !1002
  %5 = load ptr, ptr %sect.addr, align 8, !dbg !1737, !tbaa !898
  %name = getelementptr inbounds %struct.yasm_section, ptr %5, i32 0, i32 2, !dbg !1738
  %6 = load ptr, ptr %name, align 8, !dbg !1738, !tbaa !1280
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.10, i32 noundef %4, ptr noundef @.str, ptr noundef %6), !dbg !1739
  %7 = load ptr, ptr %sect.addr, align 8, !dbg !1740, !tbaa !898
  %assoc_data = getelementptr inbounds %struct.yasm_section, ptr %7, i32 0, i32 3, !dbg !1742
  %8 = load ptr, ptr %assoc_data, align 8, !dbg !1742, !tbaa !1311
  %tobool2 = icmp ne ptr %8, null, !dbg !1740
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !1743

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %f.addr, align 8, !dbg !1744, !tbaa !898
  %10 = load i32, ptr %indent_level.addr, align 4, !dbg !1746, !tbaa !1002
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.11, i32 noundef %10, ptr noundef @.str), !dbg !1747
  %11 = load ptr, ptr %sect.addr, align 8, !dbg !1748, !tbaa !898
  %assoc_data5 = getelementptr inbounds %struct.yasm_section, ptr %11, i32 0, i32 3, !dbg !1749
  %12 = load ptr, ptr %assoc_data5, align 8, !dbg !1749, !tbaa !1311
  %13 = load ptr, ptr %f.addr, align 8, !dbg !1750, !tbaa !898
  %14 = load i32, ptr %indent_level.addr, align 4, !dbg !1751, !tbaa !1002
  %add = add nsw i32 %14, 1, !dbg !1752
  call void @yasm__assoc_data_print(ptr noundef %12, ptr noundef %13, i32 noundef %add), !dbg !1753
  br label %if.end6, !dbg !1754

if.end6:                                          ; preds = %if.then3, %if.end
  %15 = load i32, ptr %print_bcs.addr, align 4, !dbg !1755, !tbaa !1002
  %tobool7 = icmp ne i32 %15, 0, !dbg !1755
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !1756

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1757
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1720, metadata !DIExpression()), !dbg !1758
  %16 = load ptr, ptr %f.addr, align 8, !dbg !1759, !tbaa !898
  %17 = load i32, ptr %indent_level.addr, align 4, !dbg !1760, !tbaa !1002
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.12, i32 noundef %17, ptr noundef @.str), !dbg !1761
  %18 = load ptr, ptr %sect.addr, align 8, !dbg !1762, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %18, i32 0, i32 9, !dbg !1762
  %stqh_first = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !1762
  %19 = load ptr, ptr %stqh_first, align 8, !dbg !1762, !tbaa !1320
  store ptr %19, ptr %cur, align 8, !dbg !1762, !tbaa !898
  br label %for.cond, !dbg !1762

for.cond:                                         ; preds = %for.inc, %if.then8
  %20 = load ptr, ptr %cur, align 8, !dbg !1764, !tbaa !898
  %tobool10 = icmp ne ptr %20, null, !dbg !1762
  br i1 %tobool10, label %for.body, label %for.end, !dbg !1762

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %f.addr, align 8, !dbg !1766, !tbaa !898
  %22 = load i32, ptr %indent_level.addr, align 4, !dbg !1768, !tbaa !1002
  %add11 = add nsw i32 %22, 1, !dbg !1769
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.13, i32 noundef %add11, ptr noundef @.str), !dbg !1770
  %23 = load ptr, ptr %cur, align 8, !dbg !1771, !tbaa !898
  %24 = load ptr, ptr %f.addr, align 8, !dbg !1772, !tbaa !898
  %25 = load i32, ptr %indent_level.addr, align 4, !dbg !1773, !tbaa !1002
  %add13 = add nsw i32 %25, 2, !dbg !1774
  call void @yasm_bc_print(ptr noundef %23, ptr noundef %24, i32 noundef %add13), !dbg !1775
  br label %for.inc, !dbg !1776

for.inc:                                          ; preds = %for.body
  %26 = load ptr, ptr %cur, align 8, !dbg !1764, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %26, i32 0, i32 0, !dbg !1764
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !1764
  %27 = load ptr, ptr %stqe_next, align 8, !dbg !1764, !tbaa !1337
  store ptr %27, ptr %cur, align 8, !dbg !1764, !tbaa !898
  br label %for.cond, !dbg !1764, !llvm.loop !1777

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1779
  br label %if.end14, !dbg !1780

if.end14:                                         ; preds = %if.then, %for.end, %if.end6
  ret void, !dbg !1781
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_finalize(ptr noundef %object, ptr noundef %errwarns) #0 !dbg !1782 {
entry:
  %object.addr = alloca ptr, align 8
  %errwarns.addr = alloca ptr, align 8
  %sect = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1786, metadata !DIExpression()), !dbg !1794
  store ptr %errwarns, ptr %errwarns.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %errwarns.addr, metadata !1787, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #6, !dbg !1796
  tail call void @llvm.dbg.declare(metadata ptr %sect, metadata !1788, metadata !DIExpression()), !dbg !1797
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1798, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 7, !dbg !1798
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !1798
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1798, !tbaa !945
  store ptr %1, ptr %sect, align 8, !dbg !1798, !tbaa !898
  br label %for.cond, !dbg !1798

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %sect, align 8, !dbg !1799, !tbaa !898
  %tobool = icmp ne ptr %2, null, !dbg !1798
  br i1 %tobool, label %for.body, label %for.end, !dbg !1798

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1800
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1789, metadata !DIExpression()), !dbg !1801
  %3 = load ptr, ptr %sect, align 8, !dbg !1802, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %3, i32 0, i32 9, !dbg !1802
  %stqh_first1 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !1802
  %4 = load ptr, ptr %stqh_first1, align 8, !dbg !1802, !tbaa !1320
  store ptr %4, ptr %cur, align 8, !dbg !1801, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6, !dbg !1803
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !1793, metadata !DIExpression()), !dbg !1804
  %5 = load ptr, ptr %cur, align 8, !dbg !1805, !tbaa !898
  store ptr %5, ptr %prev, align 8, !dbg !1806, !tbaa !898
  %6 = load ptr, ptr %cur, align 8, !dbg !1807, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %6, i32 0, i32 0, !dbg !1807
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !1807
  %7 = load ptr, ptr %stqe_next, align 8, !dbg !1807, !tbaa !1337
  store ptr %7, ptr %cur, align 8, !dbg !1808, !tbaa !898
  br label %while.cond, !dbg !1809

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load ptr, ptr %cur, align 8, !dbg !1810, !tbaa !898
  %tobool2 = icmp ne ptr %8, null, !dbg !1809
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1809

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %cur, align 8, !dbg !1811, !tbaa !898
  %10 = load ptr, ptr %prev, align 8, !dbg !1813, !tbaa !898
  call void @yasm_bc_finalize(ptr noundef %9, ptr noundef %10), !dbg !1814
  %11 = load ptr, ptr %errwarns.addr, align 8, !dbg !1815, !tbaa !898
  %12 = load ptr, ptr %cur, align 8, !dbg !1816, !tbaa !898
  %line = getelementptr inbounds %struct.yasm_bytecode, ptr %12, i32 0, i32 6, !dbg !1817
  %13 = load i64, ptr %line, align 8, !dbg !1817, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %11, i64 noundef %13), !dbg !1819
  %14 = load ptr, ptr %cur, align 8, !dbg !1820, !tbaa !898
  store ptr %14, ptr %prev, align 8, !dbg !1821, !tbaa !898
  %15 = load ptr, ptr %cur, align 8, !dbg !1822, !tbaa !898
  %link3 = getelementptr inbounds %struct.yasm_bytecode, ptr %15, i32 0, i32 0, !dbg !1822
  %stqe_next4 = getelementptr inbounds %struct.anon.0, ptr %link3, i32 0, i32 0, !dbg !1822
  %16 = load ptr, ptr %stqe_next4, align 8, !dbg !1822, !tbaa !1337
  store ptr %16, ptr %cur, align 8, !dbg !1823, !tbaa !898
  br label %while.cond, !dbg !1809, !llvm.loop !1824

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1826
  br label %for.inc, !dbg !1827

for.inc:                                          ; preds = %while.end
  %17 = load ptr, ptr %sect, align 8, !dbg !1799, !tbaa !898
  %link5 = getelementptr inbounds %struct.yasm_section, ptr %17, i32 0, i32 0, !dbg !1799
  %stqe_next6 = getelementptr inbounds %struct.anon, ptr %link5, i32 0, i32 0, !dbg !1799
  %18 = load ptr, ptr %stqe_next6, align 8, !dbg !1799, !tbaa !1206
  store ptr %18, ptr %sect, align 8, !dbg !1799, !tbaa !898
  br label %for.cond, !dbg !1799, !llvm.loop !1828

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #6, !dbg !1830
  ret void, !dbg !1830
}

declare !dbg !1831 void @yasm_bc_finalize(ptr noundef, ptr noundef) #2

declare !dbg !1832 void @yasm_errwarn_propagate(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @yasm_object_sections_traverse(ptr noundef %object, ptr noundef %d, ptr noundef %func) #0 !dbg !1835 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1842, metadata !DIExpression()), !dbg !1850
  store ptr %d, ptr %d.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1843, metadata !DIExpression()), !dbg !1851
  store ptr %func, ptr %func.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1844, metadata !DIExpression()), !dbg !1852
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1853
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1845, metadata !DIExpression()), !dbg !1854
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1855, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 7, !dbg !1855
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !1855
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1855, !tbaa !945
  store ptr %1, ptr %cur, align 8, !dbg !1855, !tbaa !898
  br label %for.cond, !dbg !1855

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %cur, align 8, !dbg !1856, !tbaa !898
  %tobool = icmp ne ptr %2, null, !dbg !1855
  br i1 %tobool, label %for.body, label %for.end, !dbg !1855

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6, !dbg !1857
  tail call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1846, metadata !DIExpression()), !dbg !1858
  %3 = load ptr, ptr %func.addr, align 8, !dbg !1859, !tbaa !898
  %4 = load ptr, ptr %cur, align 8, !dbg !1860, !tbaa !898
  %5 = load ptr, ptr %d.addr, align 8, !dbg !1861, !tbaa !898
  %call = call i32 %3(ptr noundef %4, ptr noundef %5), !dbg !1859
  store i32 %call, ptr %retval1, align 4, !dbg !1858, !tbaa !1002
  %6 = load i32, ptr %retval1, align 4, !dbg !1862, !tbaa !1002
  %cmp = icmp ne i32 %6, 0, !dbg !1864
  br i1 %cmp, label %if.then, label %if.end, !dbg !1865

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %retval1, align 4, !dbg !1866, !tbaa !1002
  store i32 %7, ptr %retval, align 4, !dbg !1867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1867

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1868
  br label %cleanup, !dbg !1868

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6, !dbg !1868
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1869

for.inc:                                          ; preds = %cleanup.cont
  %8 = load ptr, ptr %cur, align 8, !dbg !1856, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_section, ptr %8, i32 0, i32 0, !dbg !1856
  %stqe_next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1856
  %9 = load ptr, ptr %stqe_next, align 8, !dbg !1856, !tbaa !1206
  store ptr %9, ptr %cur, align 8, !dbg !1856, !tbaa !898
  br label %for.cond, !dbg !1856, !llvm.loop !1870

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup2, !dbg !1872

cleanup2:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1873
  %10 = load i32, ptr %retval, align 4, !dbg !1873
  ret i32 %10, !dbg !1873
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_object_find_general(ptr noundef %object, ptr noundef %name) #0 !dbg !1874 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1878, metadata !DIExpression()), !dbg !1881
  store ptr %name, ptr %name.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1879, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !1883
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1880, metadata !DIExpression()), !dbg !1884
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1885, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 7, !dbg !1885
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !1885
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1885, !tbaa !945
  store ptr %1, ptr %cur, align 8, !dbg !1885, !tbaa !898
  br label %for.cond, !dbg !1885

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %cur, align 8, !dbg !1887, !tbaa !898
  %tobool = icmp ne ptr %2, null, !dbg !1885
  br i1 %tobool, label %for.body, label %for.end, !dbg !1885

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cur, align 8, !dbg !1889, !tbaa !898
  %name1 = getelementptr inbounds %struct.yasm_section, ptr %3, i32 0, i32 2, !dbg !1892
  %4 = load ptr, ptr %name1, align 8, !dbg !1892, !tbaa !1280
  %5 = load ptr, ptr %name.addr, align 8, !dbg !1893, !tbaa !898
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef %5) #7, !dbg !1894
  %cmp = icmp eq i32 %call, 0, !dbg !1895
  br i1 %cmp, label %if.then, label %if.end, !dbg !1896

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %cur, align 8, !dbg !1897, !tbaa !898
  store ptr %6, ptr %retval, align 8, !dbg !1898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1899

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %cur, align 8, !dbg !1887, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_section, ptr %7, i32 0, i32 0, !dbg !1887
  %stqe_next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1887
  %8 = load ptr, ptr %stqe_next, align 8, !dbg !1887, !tbaa !1206
  store ptr %8, ptr %cur, align 8, !dbg !1887, !tbaa !898
  br label %for.cond, !dbg !1887, !llvm.loop !1900

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1902

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !1903
  %9 = load ptr, ptr %retval, align 8, !dbg !1903
  ret ptr %9, !dbg !1903
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_section_add_reloc(ptr noundef %sect, ptr noundef %reloc, ptr noundef %destroy_func) #0 !dbg !1904 {
entry:
  %sect.addr = alloca ptr, align 8
  %reloc.addr = alloca ptr, align 8
  %destroy_func.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1908, metadata !DIExpression()), !dbg !1911
  store ptr %reloc, ptr %reloc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1909, metadata !DIExpression()), !dbg !1912
  store ptr %destroy_func, ptr %destroy_func.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %destroy_func.addr, metadata !1910, metadata !DIExpression()), !dbg !1913
  br label %do.body, !dbg !1914

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1915, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_reloc, ptr %0, i32 0, i32 0, !dbg !1915
  %stqe_next = getelementptr inbounds %struct.anon.1, ptr %link, i32 0, i32 0, !dbg !1915
  store ptr null, ptr %stqe_next, align 8, !dbg !1915, !tbaa !1632
  %1 = load ptr, ptr %reloc.addr, align 8, !dbg !1915, !tbaa !898
  %2 = load ptr, ptr %sect.addr, align 8, !dbg !1915, !tbaa !898
  %relocs = getelementptr inbounds %struct.yasm_section, ptr %2, i32 0, i32 10, !dbg !1915
  %stqh_last = getelementptr inbounds %struct.yasm_relochead, ptr %relocs, i32 0, i32 1, !dbg !1915
  %3 = load ptr, ptr %stqh_last, align 8, !dbg !1915, !tbaa !1342
  store ptr %1, ptr %3, align 8, !dbg !1915, !tbaa !898
  %4 = load ptr, ptr %reloc.addr, align 8, !dbg !1915, !tbaa !898
  %link1 = getelementptr inbounds %struct.yasm_reloc, ptr %4, i32 0, i32 0, !dbg !1915
  %stqe_next2 = getelementptr inbounds %struct.anon.1, ptr %link1, i32 0, i32 0, !dbg !1915
  %5 = load ptr, ptr %sect.addr, align 8, !dbg !1915, !tbaa !898
  %relocs3 = getelementptr inbounds %struct.yasm_section, ptr %5, i32 0, i32 10, !dbg !1915
  %stqh_last4 = getelementptr inbounds %struct.yasm_relochead, ptr %relocs3, i32 0, i32 1, !dbg !1915
  store ptr %stqe_next2, ptr %stqh_last4, align 8, !dbg !1915, !tbaa !1342
  br label %do.end, !dbg !1915

do.end:                                           ; preds = %do.body
  %6 = load ptr, ptr %destroy_func.addr, align 8, !dbg !1917, !tbaa !898
  %tobool = icmp ne ptr %6, null, !dbg !1917
  br i1 %tobool, label %if.else, label %if.then, !dbg !1919

if.then:                                          ; preds = %do.end
  %7 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !1920, !tbaa !898
  call void %7(ptr noundef @.str.6, i32 noundef 571, ptr noundef @.str.7), !dbg !1920
  br label %if.end8, !dbg !1920

if.else:                                          ; preds = %do.end
  %8 = load ptr, ptr %sect.addr, align 8, !dbg !1921, !tbaa !898
  %destroy_reloc = getelementptr inbounds %struct.yasm_section, ptr %8, i32 0, i32 11, !dbg !1923
  %9 = load ptr, ptr %destroy_reloc, align 8, !dbg !1923, !tbaa !1346
  %tobool5 = icmp ne ptr %9, null, !dbg !1921
  br i1 %tobool5, label %land.lhs.true, label %if.end, !dbg !1924

land.lhs.true:                                    ; preds = %if.else
  %10 = load ptr, ptr %destroy_func.addr, align 8, !dbg !1925, !tbaa !898
  %11 = load ptr, ptr %sect.addr, align 8, !dbg !1926, !tbaa !898
  %destroy_reloc6 = getelementptr inbounds %struct.yasm_section, ptr %11, i32 0, i32 11, !dbg !1927
  %12 = load ptr, ptr %destroy_reloc6, align 8, !dbg !1927, !tbaa !1346
  %cmp = icmp ne ptr %10, %12, !dbg !1928
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1929

if.then7:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !1930, !tbaa !898
  call void %13(ptr noundef @.str.6, i32 noundef 573, ptr noundef @.str.8), !dbg !1930
  br label %if.end, !dbg !1930

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %14 = load ptr, ptr %destroy_func.addr, align 8, !dbg !1931, !tbaa !898
  %15 = load ptr, ptr %sect.addr, align 8, !dbg !1932, !tbaa !898
  %destroy_reloc9 = getelementptr inbounds %struct.yasm_section, ptr %15, i32 0, i32 11, !dbg !1933
  store ptr %14, ptr %destroy_reloc9, align 8, !dbg !1934, !tbaa !1346
  ret void, !dbg !1935
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_relocs_first(ptr noundef %sect) #0 !dbg !1936 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1942, !tbaa !898
  %relocs = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 10, !dbg !1942
  %stqh_first = getelementptr inbounds %struct.yasm_relochead, ptr %relocs, i32 0, i32 0, !dbg !1942
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1942, !tbaa !1341
  ret ptr %1, !dbg !1943
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_reloc_next(ptr noundef %reloc) #0 !dbg !1944 {
entry:
  %reloc.addr = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1948, metadata !DIExpression()), !dbg !1949
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1950, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_reloc, ptr %0, i32 0, i32 0, !dbg !1950
  %stqe_next = getelementptr inbounds %struct.anon.1, ptr %link, i32 0, i32 0, !dbg !1950
  %1 = load ptr, ptr %stqe_next, align 8, !dbg !1950, !tbaa !1632
  ret ptr %1, !dbg !1951
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_reloc_get(ptr noundef %reloc, ptr noundef %addrp, ptr noundef %symp) #0 !dbg !1952 {
entry:
  %reloc.addr = alloca ptr, align 8
  %addrp.addr = alloca ptr, align 8
  %symp.addr = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1957, metadata !DIExpression()), !dbg !1960
  store ptr %addrp, ptr %addrp.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %addrp.addr, metadata !1958, metadata !DIExpression()), !dbg !1961
  store ptr %symp, ptr %symp.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %symp.addr, metadata !1959, metadata !DIExpression()), !dbg !1962
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1963, !tbaa !898
  %addr = getelementptr inbounds %struct.yasm_reloc, ptr %0, i32 0, i32 1, !dbg !1964
  %1 = load ptr, ptr %addr, align 8, !dbg !1964, !tbaa !1637
  %2 = load ptr, ptr %addrp.addr, align 8, !dbg !1965, !tbaa !898
  store ptr %1, ptr %2, align 8, !dbg !1966, !tbaa !898
  %3 = load ptr, ptr %reloc.addr, align 8, !dbg !1967, !tbaa !898
  %sym = getelementptr inbounds %struct.yasm_reloc, ptr %3, i32 0, i32 2, !dbg !1968
  %4 = load ptr, ptr %sym, align 8, !dbg !1968, !tbaa !1969
  %5 = load ptr, ptr %symp.addr, align 8, !dbg !1970, !tbaa !898
  store ptr %4, ptr %5, align 8, !dbg !1971, !tbaa !898
  ret void, !dbg !1972
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_bcs_first(ptr noundef %sect) #0 !dbg !1973 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1977, metadata !DIExpression()), !dbg !1978
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1979, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 9, !dbg !1979
  %stqh_first = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !1979
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1979, !tbaa !1320
  ret ptr %1, !dbg !1980
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_bcs_last(ptr noundef %sect) #0 !dbg !1981 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1983, metadata !DIExpression()), !dbg !1984
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !1985, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 9, !dbg !1985
  %stqh_first = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !1985
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !1985, !tbaa !1320
  %cmp = icmp eq ptr %1, null, !dbg !1985
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1985

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1985

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %sect.addr, align 8, !dbg !1985, !tbaa !898
  %bcs1 = getelementptr inbounds %struct.yasm_section, ptr %2, i32 0, i32 9, !dbg !1985
  %stqh_last = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs1, i32 0, i32 1, !dbg !1985
  %3 = load ptr, ptr %stqh_last, align 8, !dbg !1985, !tbaa !1321
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1985
  br label %cond.end, !dbg !1985

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr, %cond.false ], !dbg !1985
  ret ptr %cond, !dbg !1986
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_bcs_append(ptr noundef %sect, ptr noundef %bc) #0 !dbg !1987 {
entry:
  %retval = alloca ptr, align 8
  %sect.addr = alloca ptr, align 8
  %bc.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1991, metadata !DIExpression()), !dbg !1993
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !1992, metadata !DIExpression()), !dbg !1994
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !1995, !tbaa !898
  %tobool = icmp ne ptr %0, null, !dbg !1995
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1997

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bc.addr, align 8, !dbg !1998, !tbaa !898
  %callback = getelementptr inbounds %struct.yasm_bytecode, ptr %1, i32 0, i32 1, !dbg !2001
  %2 = load ptr, ptr %callback, align 8, !dbg !2001, !tbaa !2002
  %tobool1 = icmp ne ptr %2, null, !dbg !1998
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2003

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %sect.addr, align 8, !dbg !2004, !tbaa !898
  %4 = load ptr, ptr %bc.addr, align 8, !dbg !2006, !tbaa !898
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %4, i32 0, i32 2, !dbg !2007
  store ptr %3, ptr %section, align 8, !dbg !2008, !tbaa !1328
  br label %do.body, !dbg !2009

do.body:                                          ; preds = %if.then2
  %5 = load ptr, ptr %bc.addr, align 8, !dbg !2010, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %5, i32 0, i32 0, !dbg !2010
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !2010
  store ptr null, ptr %stqe_next, align 8, !dbg !2010, !tbaa !1337
  %6 = load ptr, ptr %bc.addr, align 8, !dbg !2010, !tbaa !898
  %7 = load ptr, ptr %sect.addr, align 8, !dbg !2010, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %7, i32 0, i32 9, !dbg !2010
  %stqh_last = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 1, !dbg !2010
  %8 = load ptr, ptr %stqh_last, align 8, !dbg !2010, !tbaa !1321
  store ptr %6, ptr %8, align 8, !dbg !2010, !tbaa !898
  %9 = load ptr, ptr %bc.addr, align 8, !dbg !2010, !tbaa !898
  %link3 = getelementptr inbounds %struct.yasm_bytecode, ptr %9, i32 0, i32 0, !dbg !2010
  %stqe_next4 = getelementptr inbounds %struct.anon.0, ptr %link3, i32 0, i32 0, !dbg !2010
  %10 = load ptr, ptr %sect.addr, align 8, !dbg !2010, !tbaa !898
  %bcs5 = getelementptr inbounds %struct.yasm_section, ptr %10, i32 0, i32 9, !dbg !2010
  %stqh_last6 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs5, i32 0, i32 1, !dbg !2010
  store ptr %stqe_next4, ptr %stqh_last6, align 8, !dbg !2010, !tbaa !1321
  br label %do.end, !dbg !2010

do.end:                                           ; preds = %do.body
  %11 = load ptr, ptr %bc.addr, align 8, !dbg !2012, !tbaa !898
  store ptr %11, ptr %retval, align 8, !dbg !2013
  br label %return, !dbg !2013

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr @yasm_xfree, align 8, !dbg !2014, !tbaa !898
  %13 = load ptr, ptr %bc.addr, align 8, !dbg !2015, !tbaa !898
  call void %12(ptr noundef %13), !dbg !2014
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end7, !dbg !2016

if.end7:                                          ; preds = %if.end, %entry
  store ptr null, ptr %retval, align 8, !dbg !2017
  br label %return, !dbg !2017

return:                                           ; preds = %if.end7, %do.end
  %14 = load ptr, ptr %retval, align 8, !dbg !2018
  ret ptr %14, !dbg !2018
}

; Function Attrs: nounwind uwtable
define dso_local i32 @yasm_section_bcs_traverse(ptr noundef %sect, ptr noundef %errwarns, ptr noundef %d, ptr noundef %func) #0 !dbg !2019 {
entry:
  %retval = alloca i32, align 4
  %sect.addr = alloca ptr, align 8
  %errwarns.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !2026, metadata !DIExpression()), !dbg !2033
  store ptr %errwarns, ptr %errwarns.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %errwarns.addr, metadata !2027, metadata !DIExpression()), !dbg !2034
  store ptr %d, ptr %d.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2028, metadata !DIExpression()), !dbg !2035
  store ptr %func, ptr %func.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #6, !dbg !2037
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !2030, metadata !DIExpression()), !dbg !2038
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !2039, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 9, !dbg !2039
  %stqh_first = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !2039
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !2039, !tbaa !1320
  store ptr %1, ptr %cur, align 8, !dbg !2038, !tbaa !898
  %2 = load ptr, ptr %cur, align 8, !dbg !2040, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %2, i32 0, i32 0, !dbg !2040
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !2040
  %3 = load ptr, ptr %stqe_next, align 8, !dbg !2040, !tbaa !1337
  store ptr %3, ptr %cur, align 8, !dbg !2041, !tbaa !898
  br label %while.cond, !dbg !2042

while.cond:                                       ; preds = %cleanup.cont, %entry
  %4 = load ptr, ptr %cur, align 8, !dbg !2043, !tbaa !898
  %tobool = icmp ne ptr %4, null, !dbg !2042
  br i1 %tobool, label %while.body, label %while.end, !dbg !2042

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6, !dbg !2044
  tail call void @llvm.dbg.declare(metadata ptr %retval1, metadata !2031, metadata !DIExpression()), !dbg !2045
  %5 = load ptr, ptr %func.addr, align 8, !dbg !2046, !tbaa !898
  %6 = load ptr, ptr %cur, align 8, !dbg !2047, !tbaa !898
  %7 = load ptr, ptr %d.addr, align 8, !dbg !2048, !tbaa !898
  %call = call i32 %5(ptr noundef %6, ptr noundef %7), !dbg !2046
  store i32 %call, ptr %retval1, align 4, !dbg !2045, !tbaa !1002
  %8 = load ptr, ptr %errwarns.addr, align 8, !dbg !2049, !tbaa !898
  %tobool2 = icmp ne ptr %8, null, !dbg !2049
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2051

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %errwarns.addr, align 8, !dbg !2052, !tbaa !898
  %10 = load ptr, ptr %cur, align 8, !dbg !2053, !tbaa !898
  %line = getelementptr inbounds %struct.yasm_bytecode, ptr %10, i32 0, i32 6, !dbg !2054
  %11 = load i64, ptr %line, align 8, !dbg !2054, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %9, i64 noundef %11), !dbg !2055
  br label %if.end, !dbg !2055

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i32, ptr %retval1, align 4, !dbg !2056, !tbaa !1002
  %cmp = icmp ne i32 %12, 0, !dbg !2058
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2059

if.then3:                                         ; preds = %if.end
  %13 = load i32, ptr %retval1, align 4, !dbg !2060, !tbaa !1002
  store i32 %13, ptr %retval, align 4, !dbg !2061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2061

if.end4:                                          ; preds = %if.end
  %14 = load ptr, ptr %cur, align 8, !dbg !2062, !tbaa !898
  %link5 = getelementptr inbounds %struct.yasm_bytecode, ptr %14, i32 0, i32 0, !dbg !2062
  %stqe_next6 = getelementptr inbounds %struct.anon.0, ptr %link5, i32 0, i32 0, !dbg !2062
  %15 = load ptr, ptr %stqe_next6, align 8, !dbg !2062, !tbaa !1337
  store ptr %15, ptr %cur, align 8, !dbg !2063, !tbaa !898
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2064
  br label %cleanup, !dbg !2064

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6, !dbg !2064
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2042, !llvm.loop !2065

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !2066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup7, !dbg !2066

cleanup7:                                         ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #6, !dbg !2067
  %16 = load i32, ptr %retval, align 4, !dbg !2067
  ret i32 %16, !dbg !2067
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_section_get_name(ptr noundef %sect) #0 !dbg !2068 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !2072, metadata !DIExpression()), !dbg !2073
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !2074, !tbaa !898
  %name = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 2, !dbg !2075
  %1 = load ptr, ptr %name, align 8, !dbg !2075, !tbaa !1280
  ret ptr %1, !dbg !2076
}

; Function Attrs: nounwind uwtable
define dso_local void @yasm_section_set_align(ptr noundef %sect, i64 noundef %align, i64 noundef %line) #0 !dbg !2077 {
entry:
  %sect.addr = alloca ptr, align 8
  %align.addr = alloca i64, align 8
  %line.addr = alloca i64, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !2081, metadata !DIExpression()), !dbg !2084
  store i64 %align, ptr %align.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !2082, metadata !DIExpression()), !dbg !2085
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2083, metadata !DIExpression()), !dbg !2086
  %0 = load i64, ptr %align.addr, align 8, !dbg !2087, !tbaa !1262
  %1 = load ptr, ptr %sect.addr, align 8, !dbg !2088, !tbaa !898
  %align1 = getelementptr inbounds %struct.yasm_section, ptr %1, i32 0, i32 4, !dbg !2089
  store i64 %0, ptr %align1, align 8, !dbg !2090, !tbaa !1316
  ret void, !dbg !2091
}

; Function Attrs: nounwind uwtable
define dso_local i64 @yasm_section_get_align(ptr noundef %sect) #0 !dbg !2092 {
entry:
  %sect.addr = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  %0 = load ptr, ptr %sect.addr, align 8, !dbg !2096, !tbaa !898
  %align = getelementptr inbounds %struct.yasm_section, ptr %0, i32 0, i32 4, !dbg !2097
  %1 = load i64, ptr %align, align 8, !dbg !2097, !tbaa !1316
  ret i64 %1, !dbg !2098
}

declare !dbg !2099 void @yasm__assoc_data_print(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2104 void @yasm_bc_print(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @yasm_object_optimize(ptr noundef %object, ptr noundef %errwarns) #0 !dbg !2107 {
entry:
  %object.addr = alloca ptr, align 8
  %errwarns.addr = alloca ptr, align 8
  %sect = alloca ptr, align 8
  %bc_index = alloca i64, align 8
  %saw_error = alloca i32, align 4
  %optd = alloca %struct.optimize_data, align 8
  %span = alloca ptr, align 8
  %span_temp = alloca ptr, align 8
  %os = alloca ptr, align 8
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %offset = alloca i64, align 8
  %bc22 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %intn = alloca ptr, align 8
  %orig_len = alloca i64, align 8
  %offset_diff = alloca i64, align 8
  %old_next_offset = alloca i64, align 8
  %neg_thres_temp = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !2109, metadata !DIExpression()), !dbg !2135
  store ptr %errwarns, ptr %errwarns.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %errwarns.addr, metadata !2110, metadata !DIExpression()), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #6, !dbg !2137
  tail call void @llvm.dbg.declare(metadata ptr %sect, metadata !2111, metadata !DIExpression()), !dbg !2138
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc_index) #6, !dbg !2139
  tail call void @llvm.dbg.declare(metadata ptr %bc_index, metadata !2112, metadata !DIExpression()), !dbg !2140
  store i64 0, ptr %bc_index, align 8, !dbg !2140, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %saw_error) #6, !dbg !2141
  tail call void @llvm.dbg.declare(metadata ptr %saw_error, metadata !2113, metadata !DIExpression()), !dbg !2142
  store i32 0, ptr %saw_error, align 4, !dbg !2142, !tbaa !1002
  call void @llvm.lifetime.start.p0(i64 96, ptr %optd) #6, !dbg !2143
  tail call void @llvm.dbg.declare(metadata ptr %optd, metadata !2114, metadata !DIExpression()), !dbg !2144
  call void @llvm.lifetime.start.p0(i64 8, ptr %span) #6, !dbg !2145
  tail call void @llvm.dbg.declare(metadata ptr %span, metadata !2115, metadata !DIExpression()), !dbg !2146
  call void @llvm.lifetime.start.p0(i64 8, ptr %span_temp) #6, !dbg !2145
  tail call void @llvm.dbg.declare(metadata ptr %span_temp, metadata !2116, metadata !DIExpression()), !dbg !2147
  call void @llvm.lifetime.start.p0(i64 8, ptr %os) #6, !dbg !2148
  tail call void @llvm.dbg.declare(metadata ptr %os, metadata !2117, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval) #6, !dbg !2150
  tail call void @llvm.dbg.declare(metadata ptr %retval, metadata !2118, metadata !DIExpression()), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !2152
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2119, metadata !DIExpression()), !dbg !2153
  br label %do.body, !dbg !2154

do.body:                                          ; preds = %entry
  %spans = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2155
  %tqh_first = getelementptr inbounds %struct.yasm_span_head, ptr %spans, i32 0, i32 0, !dbg !2155
  store ptr null, ptr %tqh_first, align 8, !dbg !2155, !tbaa !2157
  %spans1 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2155
  %tqh_first2 = getelementptr inbounds %struct.yasm_span_head, ptr %spans1, i32 0, i32 0, !dbg !2155
  %spans3 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2155
  %tqh_last = getelementptr inbounds %struct.yasm_span_head, ptr %spans3, i32 0, i32 1, !dbg !2155
  store ptr %tqh_first2, ptr %tqh_last, align 8, !dbg !2155, !tbaa !2162
  br label %do.cond, !dbg !2155

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2155

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !2163

do.body4:                                         ; preds = %do.end
  %offset_setters = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2164
  %stqh_first = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters, i32 0, i32 0, !dbg !2164
  store ptr null, ptr %stqh_first, align 8, !dbg !2164, !tbaa !2166
  %offset_setters5 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2164
  %stqh_first6 = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters5, i32 0, i32 0, !dbg !2164
  %offset_setters7 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2164
  %stqh_last = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters7, i32 0, i32 1, !dbg !2164
  store ptr %stqh_first6, ptr %stqh_last, align 8, !dbg !2164, !tbaa !2167
  br label %do.cond8, !dbg !2164

do.cond8:                                         ; preds = %do.body4
  br label %do.end9, !dbg !2164

do.end9:                                          ; preds = %do.cond8
  %call = call ptr @IT_create(), !dbg !2168
  %itree = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 3, !dbg !2169
  store ptr %call, ptr %itree, align 8, !dbg !2170, !tbaa !2171
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !2172, !tbaa !898
  %call10 = call ptr %0(i64 noundef 40), !dbg !2172
  store ptr %call10, ptr %os, align 8, !dbg !2173, !tbaa !898
  %1 = load ptr, ptr %os, align 8, !dbg !2174, !tbaa !898
  %bc = getelementptr inbounds %struct.yasm_offset_setter, ptr %1, i32 0, i32 1, !dbg !2175
  store ptr null, ptr %bc, align 8, !dbg !2176, !tbaa !2177
  %2 = load ptr, ptr %os, align 8, !dbg !2179, !tbaa !898
  %cur_val = getelementptr inbounds %struct.yasm_offset_setter, ptr %2, i32 0, i32 2, !dbg !2180
  store i64 0, ptr %cur_val, align 8, !dbg !2181, !tbaa !2182
  %3 = load ptr, ptr %os, align 8, !dbg !2183, !tbaa !898
  %new_val = getelementptr inbounds %struct.yasm_offset_setter, ptr %3, i32 0, i32 3, !dbg !2184
  store i64 0, ptr %new_val, align 8, !dbg !2185, !tbaa !2186
  %4 = load ptr, ptr %os, align 8, !dbg !2187, !tbaa !898
  %thres = getelementptr inbounds %struct.yasm_offset_setter, ptr %4, i32 0, i32 4, !dbg !2188
  store i64 0, ptr %thres, align 8, !dbg !2189, !tbaa !2190
  br label %do.body11, !dbg !2191

do.body11:                                        ; preds = %do.end9
  %5 = load ptr, ptr %os, align 8, !dbg !2192, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_offset_setter, ptr %5, i32 0, i32 0, !dbg !2192
  %stqe_next = getelementptr inbounds %struct.anon.2, ptr %link, i32 0, i32 0, !dbg !2192
  store ptr null, ptr %stqe_next, align 8, !dbg !2192, !tbaa !2194
  %6 = load ptr, ptr %os, align 8, !dbg !2192, !tbaa !898
  %offset_setters12 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2192
  %stqh_last13 = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters12, i32 0, i32 1, !dbg !2192
  %7 = load ptr, ptr %stqh_last13, align 8, !dbg !2192, !tbaa !2167
  store ptr %6, ptr %7, align 8, !dbg !2192, !tbaa !898
  %8 = load ptr, ptr %os, align 8, !dbg !2192, !tbaa !898
  %link14 = getelementptr inbounds %struct.yasm_offset_setter, ptr %8, i32 0, i32 0, !dbg !2192
  %stqe_next15 = getelementptr inbounds %struct.anon.2, ptr %link14, i32 0, i32 0, !dbg !2192
  %offset_setters16 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2192
  %stqh_last17 = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters16, i32 0, i32 1, !dbg !2192
  store ptr %stqe_next15, ptr %stqh_last17, align 8, !dbg !2192, !tbaa !2167
  br label %do.cond18, !dbg !2192

do.cond18:                                        ; preds = %do.body11
  br label %do.end19, !dbg !2192

do.end19:                                         ; preds = %do.cond18
  %9 = load ptr, ptr %os, align 8, !dbg !2195, !tbaa !898
  %os20 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 7, !dbg !2196
  store ptr %9, ptr %os20, align 8, !dbg !2197, !tbaa !2198
  %10 = load ptr, ptr %object.addr, align 8, !dbg !2199, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %10, i32 0, i32 7, !dbg !2199
  %stqh_first21 = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !2199
  %11 = load ptr, ptr %stqh_first21, align 8, !dbg !2199, !tbaa !945
  store ptr %11, ptr %sect, align 8, !dbg !2199, !tbaa !898
  br label %for.cond, !dbg !2199

for.cond:                                         ; preds = %for.inc, %do.end19
  %12 = load ptr, ptr %sect, align 8, !dbg !2200, !tbaa !898
  %tobool = icmp ne ptr %12, null, !dbg !2199
  br i1 %tobool, label %for.body, label %for.end, !dbg !2199

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #6, !dbg !2201
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2120, metadata !DIExpression()), !dbg !2202
  store i64 0, ptr %offset, align 8, !dbg !2202, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc22) #6, !dbg !2203
  tail call void @llvm.dbg.declare(metadata ptr %bc22, metadata !2124, metadata !DIExpression()), !dbg !2204
  %13 = load ptr, ptr %sect, align 8, !dbg !2205, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %13, i32 0, i32 9, !dbg !2205
  %stqh_first23 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !2205
  %14 = load ptr, ptr %stqh_first23, align 8, !dbg !2205, !tbaa !1320
  store ptr %14, ptr %bc22, align 8, !dbg !2204, !tbaa !898
  %15 = load i64, ptr %bc_index, align 8, !dbg !2206, !tbaa !1262
  %inc = add i64 %15, 1, !dbg !2206
  store i64 %inc, ptr %bc_index, align 8, !dbg !2206, !tbaa !1262
  %16 = load ptr, ptr %bc22, align 8, !dbg !2207, !tbaa !898
  %bc_index24 = getelementptr inbounds %struct.yasm_bytecode, ptr %16, i32 0, i32 8, !dbg !2208
  store i64 %15, ptr %bc_index24, align 8, !dbg !2209, !tbaa !2210
  %17 = load ptr, ptr %bc22, align 8, !dbg !2211, !tbaa !898
  %link25 = getelementptr inbounds %struct.yasm_bytecode, ptr %17, i32 0, i32 0, !dbg !2211
  %stqe_next26 = getelementptr inbounds %struct.anon.0, ptr %link25, i32 0, i32 0, !dbg !2211
  %18 = load ptr, ptr %stqe_next26, align 8, !dbg !2211, !tbaa !1337
  store ptr %18, ptr %bc22, align 8, !dbg !2212, !tbaa !898
  br label %while.cond, !dbg !2213

while.cond:                                       ; preds = %if.end58, %for.body
  %19 = load ptr, ptr %bc22, align 8, !dbg !2214, !tbaa !898
  %tobool27 = icmp ne ptr %19, null, !dbg !2213
  br i1 %tobool27, label %while.body, label %while.end, !dbg !2213

while.body:                                       ; preds = %while.cond
  %20 = load i64, ptr %bc_index, align 8, !dbg !2215, !tbaa !1262
  %inc28 = add i64 %20, 1, !dbg !2215
  store i64 %inc28, ptr %bc_index, align 8, !dbg !2215, !tbaa !1262
  %21 = load ptr, ptr %bc22, align 8, !dbg !2217, !tbaa !898
  %bc_index29 = getelementptr inbounds %struct.yasm_bytecode, ptr %21, i32 0, i32 8, !dbg !2218
  store i64 %20, ptr %bc_index29, align 8, !dbg !2219, !tbaa !2210
  %22 = load i64, ptr %offset, align 8, !dbg !2220, !tbaa !1262
  %23 = load ptr, ptr %bc22, align 8, !dbg !2221, !tbaa !898
  %offset30 = getelementptr inbounds %struct.yasm_bytecode, ptr %23, i32 0, i32 7, !dbg !2222
  store i64 %22, ptr %offset30, align 8, !dbg !2223, !tbaa !1333
  %24 = load ptr, ptr %bc22, align 8, !dbg !2224, !tbaa !898
  %call31 = call i32 @yasm_bc_calc_len(ptr noundef %24, ptr noundef @optimize_add_span, ptr noundef %optd), !dbg !2225
  store i32 %call31, ptr %retval, align 4, !dbg !2226, !tbaa !1002
  %25 = load ptr, ptr %errwarns.addr, align 8, !dbg !2227, !tbaa !898
  %26 = load ptr, ptr %bc22, align 8, !dbg !2228, !tbaa !898
  %line = getelementptr inbounds %struct.yasm_bytecode, ptr %26, i32 0, i32 6, !dbg !2229
  %27 = load i64, ptr %line, align 8, !dbg !2229, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %25, i64 noundef %27), !dbg !2230
  %28 = load i32, ptr %retval, align 4, !dbg !2231, !tbaa !1002
  %tobool32 = icmp ne i32 %28, 0, !dbg !2231
  br i1 %tobool32, label %if.then, label %if.else, !dbg !2233

if.then:                                          ; preds = %while.body
  store i32 1, ptr %saw_error, align 4, !dbg !2234, !tbaa !1002
  br label %if.end58, !dbg !2235

if.else:                                          ; preds = %while.body
  %29 = load ptr, ptr %bc22, align 8, !dbg !2236, !tbaa !898
  %callback = getelementptr inbounds %struct.yasm_bytecode, ptr %29, i32 0, i32 1, !dbg !2239
  %30 = load ptr, ptr %callback, align 8, !dbg !2239, !tbaa !2002
  %special = getelementptr inbounds %struct.yasm_bytecode_callback, ptr %30, i32 0, i32 7, !dbg !2240
  %31 = load i32, ptr %special, align 8, !dbg !2240, !tbaa !2241
  %cmp = icmp eq i32 %31, 2, !dbg !2243
  br i1 %cmp, label %if.then33, label %if.end57, !dbg !2244

if.then33:                                        ; preds = %if.else
  %32 = load ptr, ptr %bc22, align 8, !dbg !2245, !tbaa !898
  %33 = load ptr, ptr %os, align 8, !dbg !2247, !tbaa !898
  %bc34 = getelementptr inbounds %struct.yasm_offset_setter, ptr %33, i32 0, i32 1, !dbg !2248
  store ptr %32, ptr %bc34, align 8, !dbg !2249, !tbaa !2177
  %34 = load ptr, ptr %bc22, align 8, !dbg !2250, !tbaa !898
  %call35 = call i64 @yasm_bc_next_offset(ptr noundef %34), !dbg !2251
  %35 = load ptr, ptr %os, align 8, !dbg !2252, !tbaa !898
  %thres36 = getelementptr inbounds %struct.yasm_offset_setter, ptr %35, i32 0, i32 4, !dbg !2253
  store i64 %call35, ptr %thres36, align 8, !dbg !2254, !tbaa !2190
  %36 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !2255, !tbaa !898
  %call37 = call ptr %36(i64 noundef 40), !dbg !2255
  store ptr %call37, ptr %os, align 8, !dbg !2256, !tbaa !898
  %37 = load ptr, ptr %os, align 8, !dbg !2257, !tbaa !898
  %bc38 = getelementptr inbounds %struct.yasm_offset_setter, ptr %37, i32 0, i32 1, !dbg !2258
  store ptr null, ptr %bc38, align 8, !dbg !2259, !tbaa !2177
  %38 = load ptr, ptr %os, align 8, !dbg !2260, !tbaa !898
  %cur_val39 = getelementptr inbounds %struct.yasm_offset_setter, ptr %38, i32 0, i32 2, !dbg !2261
  store i64 0, ptr %cur_val39, align 8, !dbg !2262, !tbaa !2182
  %39 = load ptr, ptr %os, align 8, !dbg !2263, !tbaa !898
  %new_val40 = getelementptr inbounds %struct.yasm_offset_setter, ptr %39, i32 0, i32 3, !dbg !2264
  store i64 0, ptr %new_val40, align 8, !dbg !2265, !tbaa !2186
  %40 = load ptr, ptr %os, align 8, !dbg !2266, !tbaa !898
  %thres41 = getelementptr inbounds %struct.yasm_offset_setter, ptr %40, i32 0, i32 4, !dbg !2267
  store i64 0, ptr %thres41, align 8, !dbg !2268, !tbaa !2190
  br label %do.body42, !dbg !2269

do.body42:                                        ; preds = %if.then33
  %41 = load ptr, ptr %os, align 8, !dbg !2270, !tbaa !898
  %link43 = getelementptr inbounds %struct.yasm_offset_setter, ptr %41, i32 0, i32 0, !dbg !2270
  %stqe_next44 = getelementptr inbounds %struct.anon.2, ptr %link43, i32 0, i32 0, !dbg !2270
  store ptr null, ptr %stqe_next44, align 8, !dbg !2270, !tbaa !2194
  %42 = load ptr, ptr %os, align 8, !dbg !2270, !tbaa !898
  %offset_setters45 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2270
  %stqh_last46 = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters45, i32 0, i32 1, !dbg !2270
  %43 = load ptr, ptr %stqh_last46, align 8, !dbg !2270, !tbaa !2167
  store ptr %42, ptr %43, align 8, !dbg !2270, !tbaa !898
  %44 = load ptr, ptr %os, align 8, !dbg !2270, !tbaa !898
  %link47 = getelementptr inbounds %struct.yasm_offset_setter, ptr %44, i32 0, i32 0, !dbg !2270
  %stqe_next48 = getelementptr inbounds %struct.anon.2, ptr %link47, i32 0, i32 0, !dbg !2270
  %offset_setters49 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2270
  %stqh_last50 = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters49, i32 0, i32 1, !dbg !2270
  store ptr %stqe_next48, ptr %stqh_last50, align 8, !dbg !2270, !tbaa !2167
  br label %do.cond51, !dbg !2270

do.cond51:                                        ; preds = %do.body42
  br label %do.end52, !dbg !2270

do.end52:                                         ; preds = %do.cond51
  %45 = load ptr, ptr %os, align 8, !dbg !2272, !tbaa !898
  %os53 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 7, !dbg !2273
  store ptr %45, ptr %os53, align 8, !dbg !2274, !tbaa !2198
  %46 = load ptr, ptr %bc22, align 8, !dbg !2275, !tbaa !898
  %multiple = getelementptr inbounds %struct.yasm_bytecode, ptr %46, i32 0, i32 3, !dbg !2277
  %47 = load ptr, ptr %multiple, align 8, !dbg !2277, !tbaa !2278
  %tobool54 = icmp ne ptr %47, null, !dbg !2275
  br i1 %tobool54, label %if.then55, label %if.end, !dbg !2279

if.then55:                                        ; preds = %do.end52
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 4, ptr noundef @.str.14), !dbg !2280
  %48 = load ptr, ptr %errwarns.addr, align 8, !dbg !2282, !tbaa !898
  %49 = load ptr, ptr %bc22, align 8, !dbg !2283, !tbaa !898
  %line56 = getelementptr inbounds %struct.yasm_bytecode, ptr %49, i32 0, i32 6, !dbg !2284
  %50 = load i64, ptr %line56, align 8, !dbg !2284, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %48, i64 noundef %50), !dbg !2285
  store i32 1, ptr %saw_error, align 4, !dbg !2286, !tbaa !1002
  br label %if.end, !dbg !2287

if.end:                                           ; preds = %if.then55, %do.end52
  br label %if.end57, !dbg !2288

if.end57:                                         ; preds = %if.end, %if.else
  %51 = load ptr, ptr %bc22, align 8, !dbg !2289, !tbaa !898
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %51, i32 0, i32 4, !dbg !2290
  %52 = load i64, ptr %len, align 8, !dbg !2290, !tbaa !2291
  %53 = load ptr, ptr %bc22, align 8, !dbg !2292, !tbaa !898
  %mult_int = getelementptr inbounds %struct.yasm_bytecode, ptr %53, i32 0, i32 5, !dbg !2293
  %54 = load i64, ptr %mult_int, align 8, !dbg !2293, !tbaa !2294
  %mul = mul i64 %52, %54, !dbg !2295
  %55 = load i64, ptr %offset, align 8, !dbg !2296, !tbaa !1262
  %add = add i64 %55, %mul, !dbg !2296
  store i64 %add, ptr %offset, align 8, !dbg !2296, !tbaa !1262
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then
  %56 = load ptr, ptr %bc22, align 8, !dbg !2297, !tbaa !898
  %link59 = getelementptr inbounds %struct.yasm_bytecode, ptr %56, i32 0, i32 0, !dbg !2297
  %stqe_next60 = getelementptr inbounds %struct.anon.0, ptr %link59, i32 0, i32 0, !dbg !2297
  %57 = load ptr, ptr %stqe_next60, align 8, !dbg !2297, !tbaa !1337
  store ptr %57, ptr %bc22, align 8, !dbg !2298, !tbaa !898
  br label %while.cond, !dbg !2213, !llvm.loop !2299

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc22) #6, !dbg !2301
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #6, !dbg !2301
  br label %for.inc, !dbg !2302

for.inc:                                          ; preds = %while.end
  %58 = load ptr, ptr %sect, align 8, !dbg !2200, !tbaa !898
  %link61 = getelementptr inbounds %struct.yasm_section, ptr %58, i32 0, i32 0, !dbg !2200
  %stqe_next62 = getelementptr inbounds %struct.anon, ptr %link61, i32 0, i32 0, !dbg !2200
  %59 = load ptr, ptr %stqe_next62, align 8, !dbg !2200, !tbaa !1206
  store ptr %59, ptr %sect, align 8, !dbg !2200, !tbaa !898
  br label %for.cond, !dbg !2200, !llvm.loop !2303

for.end:                                          ; preds = %for.cond
  %60 = load i32, ptr %saw_error, align 4, !dbg !2305, !tbaa !1002
  %tobool63 = icmp ne i32 %60, 0, !dbg !2305
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !2307

if.then64:                                        ; preds = %for.end
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup493, !dbg !2310

if.end65:                                         ; preds = %for.end
  %spans66 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2311
  %tqh_first67 = getelementptr inbounds %struct.yasm_span_head, ptr %spans66, i32 0, i32 0, !dbg !2311
  %61 = load ptr, ptr %tqh_first67, align 8, !dbg !2311, !tbaa !2157
  store ptr %61, ptr %span, align 8, !dbg !2311, !tbaa !898
  br label %for.cond68, !dbg !2311

for.cond68:                                       ; preds = %for.inc125, %if.end65
  %62 = load ptr, ptr %span, align 8, !dbg !2313, !tbaa !898
  %tobool69 = icmp ne ptr %62, null, !dbg !2313
  br i1 %tobool69, label %land.rhs, label %land.end, !dbg !2313

land.rhs:                                         ; preds = %for.cond68
  %63 = load ptr, ptr %span, align 8, !dbg !2313, !tbaa !898
  %link70 = getelementptr inbounds %struct.yasm_span, ptr %63, i32 0, i32 0, !dbg !2313
  %tqe_next = getelementptr inbounds %struct.anon.3, ptr %link70, i32 0, i32 0, !dbg !2313
  %64 = load ptr, ptr %tqe_next, align 8, !dbg !2313, !tbaa !2315
  store ptr %64, ptr %span_temp, align 8, !dbg !2313, !tbaa !898
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond68
  %65 = phi i1 [ false, %for.cond68 ], [ true, %land.rhs ], !dbg !2319
  br i1 %65, label %for.body71, label %for.end126, !dbg !2311

for.body71:                                       ; preds = %land.end
  %66 = load ptr, ptr %span, align 8, !dbg !2320, !tbaa !898
  call void @span_create_terms(ptr noundef %66), !dbg !2322
  %67 = load i32, ptr @yasm_eclass, align 4, !dbg !2323, !tbaa !2325
  %tobool72 = icmp ne i32 %67, 0, !dbg !2323
  br i1 %tobool72, label %if.then73, label %if.else76, !dbg !2326

if.then73:                                        ; preds = %for.body71
  %68 = load ptr, ptr %errwarns.addr, align 8, !dbg !2327, !tbaa !898
  %69 = load ptr, ptr %span, align 8, !dbg !2329, !tbaa !898
  %bc74 = getelementptr inbounds %struct.yasm_span, ptr %69, i32 0, i32 2, !dbg !2330
  %70 = load ptr, ptr %bc74, align 8, !dbg !2330, !tbaa !2331
  %line75 = getelementptr inbounds %struct.yasm_bytecode, ptr %70, i32 0, i32 6, !dbg !2332
  %71 = load i64, ptr %line75, align 8, !dbg !2332, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %68, i64 noundef %71), !dbg !2333
  store i32 1, ptr %saw_error, align 4, !dbg !2334, !tbaa !1002
  br label %if.end122, !dbg !2335

if.else76:                                        ; preds = %for.body71
  %72 = load ptr, ptr %span, align 8, !dbg !2336, !tbaa !898
  %call77 = call i32 @recalc_normal_span(ptr noundef %72), !dbg !2338
  %tobool78 = icmp ne i32 %call77, 0, !dbg !2338
  br i1 %tobool78, label %if.then79, label %if.end121, !dbg !2339

if.then79:                                        ; preds = %if.else76
  %73 = load ptr, ptr %span, align 8, !dbg !2340, !tbaa !898
  %bc80 = getelementptr inbounds %struct.yasm_span, ptr %73, i32 0, i32 2, !dbg !2342
  %74 = load ptr, ptr %bc80, align 8, !dbg !2342, !tbaa !2331
  %75 = load ptr, ptr %span, align 8, !dbg !2343, !tbaa !898
  %id = getelementptr inbounds %struct.yasm_span, ptr %75, i32 0, i32 12, !dbg !2344
  %76 = load i32, ptr %id, align 8, !dbg !2344, !tbaa !2345
  %77 = load ptr, ptr %span, align 8, !dbg !2346, !tbaa !898
  %cur_val81 = getelementptr inbounds %struct.yasm_span, ptr %77, i32 0, i32 8, !dbg !2347
  %78 = load i64, ptr %cur_val81, align 8, !dbg !2347, !tbaa !2348
  %79 = load ptr, ptr %span, align 8, !dbg !2349, !tbaa !898
  %new_val82 = getelementptr inbounds %struct.yasm_span, ptr %79, i32 0, i32 9, !dbg !2350
  %80 = load i64, ptr %new_val82, align 8, !dbg !2350, !tbaa !2351
  %81 = load ptr, ptr %span, align 8, !dbg !2352, !tbaa !898
  %neg_thres = getelementptr inbounds %struct.yasm_span, ptr %81, i32 0, i32 10, !dbg !2353
  %82 = load ptr, ptr %span, align 8, !dbg !2354, !tbaa !898
  %pos_thres = getelementptr inbounds %struct.yasm_span, ptr %82, i32 0, i32 11, !dbg !2355
  %call83 = call i32 @yasm_bc_expand(ptr noundef %74, i32 noundef %76, i64 noundef %78, i64 noundef %80, ptr noundef %neg_thres, ptr noundef %pos_thres), !dbg !2356
  store i32 %call83, ptr %retval, align 4, !dbg !2357, !tbaa !1002
  %83 = load ptr, ptr %errwarns.addr, align 8, !dbg !2358, !tbaa !898
  %84 = load ptr, ptr %span, align 8, !dbg !2359, !tbaa !898
  %bc84 = getelementptr inbounds %struct.yasm_span, ptr %84, i32 0, i32 2, !dbg !2360
  %85 = load ptr, ptr %bc84, align 8, !dbg !2360, !tbaa !2331
  %line85 = getelementptr inbounds %struct.yasm_bytecode, ptr %85, i32 0, i32 6, !dbg !2361
  %86 = load i64, ptr %line85, align 8, !dbg !2361, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %83, i64 noundef %86), !dbg !2362
  %87 = load i32, ptr %retval, align 4, !dbg !2363, !tbaa !1002
  %cmp86 = icmp slt i32 %87, 0, !dbg !2365
  br i1 %cmp86, label %if.then87, label %if.else88, !dbg !2366

if.then87:                                        ; preds = %if.then79
  store i32 1, ptr %saw_error, align 4, !dbg !2367, !tbaa !1002
  br label %if.end120, !dbg !2368

if.else88:                                        ; preds = %if.then79
  %88 = load i32, ptr %retval, align 4, !dbg !2369, !tbaa !1002
  %cmp89 = icmp sgt i32 %88, 0, !dbg !2371
  br i1 %cmp89, label %if.then90, label %if.else96, !dbg !2372

if.then90:                                        ; preds = %if.else88
  %89 = load ptr, ptr %span, align 8, !dbg !2373, !tbaa !898
  %active = getelementptr inbounds %struct.yasm_span, ptr %89, i32 0, i32 13, !dbg !2376
  %90 = load i32, ptr %active, align 4, !dbg !2376, !tbaa !2377
  %tobool91 = icmp ne i32 %90, 0, !dbg !2373
  br i1 %tobool91, label %if.end95, label %if.then92, !dbg !2378

if.then92:                                        ; preds = %if.then90
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 4, ptr noundef @.str.15), !dbg !2379
  %91 = load ptr, ptr %errwarns.addr, align 8, !dbg !2381, !tbaa !898
  %92 = load ptr, ptr %span, align 8, !dbg !2382, !tbaa !898
  %bc93 = getelementptr inbounds %struct.yasm_span, ptr %92, i32 0, i32 2, !dbg !2383
  %93 = load ptr, ptr %bc93, align 8, !dbg !2383, !tbaa !2331
  %line94 = getelementptr inbounds %struct.yasm_bytecode, ptr %93, i32 0, i32 6, !dbg !2384
  %94 = load i64, ptr %line94, align 8, !dbg !2384, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %91, i64 noundef %94), !dbg !2385
  store i32 1, ptr %saw_error, align 4, !dbg !2386, !tbaa !1002
  br label %if.end95, !dbg !2387

if.end95:                                         ; preds = %if.then92, %if.then90
  br label %if.end119, !dbg !2388

if.else96:                                        ; preds = %if.else88
  br label %do.body97, !dbg !2389

do.body97:                                        ; preds = %if.else96
  %95 = load ptr, ptr %span, align 8, !dbg !2391, !tbaa !898
  %link98 = getelementptr inbounds %struct.yasm_span, ptr %95, i32 0, i32 0, !dbg !2391
  %tqe_next99 = getelementptr inbounds %struct.anon.3, ptr %link98, i32 0, i32 0, !dbg !2391
  %96 = load ptr, ptr %tqe_next99, align 8, !dbg !2391, !tbaa !2315
  %cmp100 = icmp ne ptr %96, null, !dbg !2391
  br i1 %cmp100, label %if.then101, label %if.else107, !dbg !2394

if.then101:                                       ; preds = %do.body97
  %97 = load ptr, ptr %span, align 8, !dbg !2391, !tbaa !898
  %link102 = getelementptr inbounds %struct.yasm_span, ptr %97, i32 0, i32 0, !dbg !2391
  %tqe_prev = getelementptr inbounds %struct.anon.3, ptr %link102, i32 0, i32 1, !dbg !2391
  %98 = load ptr, ptr %tqe_prev, align 8, !dbg !2391, !tbaa !2395
  %99 = load ptr, ptr %span, align 8, !dbg !2391, !tbaa !898
  %link103 = getelementptr inbounds %struct.yasm_span, ptr %99, i32 0, i32 0, !dbg !2391
  %tqe_next104 = getelementptr inbounds %struct.anon.3, ptr %link103, i32 0, i32 0, !dbg !2391
  %100 = load ptr, ptr %tqe_next104, align 8, !dbg !2391, !tbaa !2315
  %link105 = getelementptr inbounds %struct.yasm_span, ptr %100, i32 0, i32 0, !dbg !2391
  %tqe_prev106 = getelementptr inbounds %struct.anon.3, ptr %link105, i32 0, i32 1, !dbg !2391
  store ptr %98, ptr %tqe_prev106, align 8, !dbg !2391, !tbaa !2395
  br label %if.end112, !dbg !2391

if.else107:                                       ; preds = %do.body97
  %101 = load ptr, ptr %span, align 8, !dbg !2396, !tbaa !898
  %link108 = getelementptr inbounds %struct.yasm_span, ptr %101, i32 0, i32 0, !dbg !2396
  %tqe_prev109 = getelementptr inbounds %struct.anon.3, ptr %link108, i32 0, i32 1, !dbg !2396
  %102 = load ptr, ptr %tqe_prev109, align 8, !dbg !2396, !tbaa !2395
  %spans110 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2396
  %tqh_last111 = getelementptr inbounds %struct.yasm_span_head, ptr %spans110, i32 0, i32 1, !dbg !2396
  store ptr %102, ptr %tqh_last111, align 8, !dbg !2396, !tbaa !2162
  br label %if.end112

if.end112:                                        ; preds = %if.else107, %if.then101
  %103 = load ptr, ptr %span, align 8, !dbg !2394, !tbaa !898
  %link113 = getelementptr inbounds %struct.yasm_span, ptr %103, i32 0, i32 0, !dbg !2394
  %tqe_next114 = getelementptr inbounds %struct.anon.3, ptr %link113, i32 0, i32 0, !dbg !2394
  %104 = load ptr, ptr %tqe_next114, align 8, !dbg !2394, !tbaa !2315
  %105 = load ptr, ptr %span, align 8, !dbg !2394, !tbaa !898
  %link115 = getelementptr inbounds %struct.yasm_span, ptr %105, i32 0, i32 0, !dbg !2394
  %tqe_prev116 = getelementptr inbounds %struct.anon.3, ptr %link115, i32 0, i32 1, !dbg !2394
  %106 = load ptr, ptr %tqe_prev116, align 8, !dbg !2394, !tbaa !2395
  store ptr %104, ptr %106, align 8, !dbg !2394, !tbaa !898
  br label %do.cond117, !dbg !2394

do.cond117:                                       ; preds = %if.end112
  br label %do.end118, !dbg !2394

do.end118:                                        ; preds = %do.cond117
  %107 = load ptr, ptr %span, align 8, !dbg !2398, !tbaa !898
  call void @span_destroy(ptr noundef %107), !dbg !2399
  br label %for.inc125, !dbg !2400

if.end119:                                        ; preds = %if.end95
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then87
  br label %if.end121, !dbg !2401

if.end121:                                        ; preds = %if.end120, %if.else76
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then73
  %108 = load ptr, ptr %span, align 8, !dbg !2402, !tbaa !898
  %new_val123 = getelementptr inbounds %struct.yasm_span, ptr %108, i32 0, i32 9, !dbg !2403
  %109 = load i64, ptr %new_val123, align 8, !dbg !2403, !tbaa !2351
  %110 = load ptr, ptr %span, align 8, !dbg !2404, !tbaa !898
  %cur_val124 = getelementptr inbounds %struct.yasm_span, ptr %110, i32 0, i32 8, !dbg !2405
  store i64 %109, ptr %cur_val124, align 8, !dbg !2406, !tbaa !2348
  br label %for.inc125, !dbg !2407

for.inc125:                                       ; preds = %if.end122, %do.end118
  %111 = load ptr, ptr %span_temp, align 8, !dbg !2313, !tbaa !898
  store ptr %111, ptr %span, align 8, !dbg !2313, !tbaa !898
  br label %for.cond68, !dbg !2313, !llvm.loop !2408

for.end126:                                       ; preds = %land.end
  %112 = load i32, ptr %saw_error, align 4, !dbg !2410, !tbaa !1002
  %tobool127 = icmp ne i32 %112, 0, !dbg !2410
  br i1 %tobool127, label %if.then128, label %if.end129, !dbg !2412

if.then128:                                       ; preds = %for.end126
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup493, !dbg !2415

if.end129:                                        ; preds = %for.end126
  %113 = load ptr, ptr %object.addr, align 8, !dbg !2416, !tbaa !898
  %114 = load ptr, ptr %errwarns.addr, align 8, !dbg !2418, !tbaa !898
  %call130 = call i32 @update_all_bc_offsets(ptr noundef %113, ptr noundef %114), !dbg !2419
  %tobool131 = icmp ne i32 %call130, 0, !dbg !2419
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !2420

if.then132:                                       ; preds = %if.end129
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup493, !dbg !2423

if.end133:                                        ; preds = %if.end129
  br label %do.body134, !dbg !2424

do.body134:                                       ; preds = %if.end133
  %QB = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2425
  %stqh_first135 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB, i32 0, i32 0, !dbg !2425
  store ptr null, ptr %stqh_first135, align 8, !dbg !2425, !tbaa !2427
  %QB136 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2425
  %stqh_first137 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB136, i32 0, i32 0, !dbg !2425
  %QB138 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2425
  %stqh_last139 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB138, i32 0, i32 1, !dbg !2425
  store ptr %stqh_first137, ptr %stqh_last139, align 8, !dbg !2425, !tbaa !2428
  br label %do.cond140, !dbg !2425

do.cond140:                                       ; preds = %do.body134
  br label %do.end141, !dbg !2425

do.end141:                                        ; preds = %do.cond140
  %spans142 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2429
  %tqh_first143 = getelementptr inbounds %struct.yasm_span_head, ptr %spans142, i32 0, i32 0, !dbg !2429
  %115 = load ptr, ptr %tqh_first143, align 8, !dbg !2429, !tbaa !2157
  store ptr %115, ptr %span, align 8, !dbg !2429, !tbaa !898
  br label %for.cond144, !dbg !2429

for.cond144:                                      ; preds = %for.inc216, %do.end141
  %116 = load ptr, ptr %span, align 8, !dbg !2430, !tbaa !898
  %tobool145 = icmp ne ptr %116, null, !dbg !2429
  br i1 %tobool145, label %for.body146, label %for.end219, !dbg !2429

for.body146:                                      ; preds = %for.cond144
  call void @llvm.lifetime.start.p0(i64 8, ptr %intn) #6, !dbg !2431
  tail call void @llvm.dbg.declare(metadata ptr %intn, metadata !2125, metadata !DIExpression()), !dbg !2432
  store i32 0, ptr %i, align 4, !dbg !2433, !tbaa !1002
  br label %for.cond147, !dbg !2435

for.cond147:                                      ; preds = %for.inc170, %for.body146
  %117 = load i32, ptr %i, align 4, !dbg !2436, !tbaa !1002
  %118 = load ptr, ptr %span, align 8, !dbg !2438, !tbaa !898
  %num_terms = getelementptr inbounds %struct.yasm_span, ptr %118, i32 0, i32 7, !dbg !2439
  %119 = load i32, ptr %num_terms, align 8, !dbg !2439, !tbaa !2440
  %cmp148 = icmp ult i32 %117, %119, !dbg !2441
  br i1 %cmp148, label %for.body149, label %for.end172, !dbg !2442

for.body149:                                      ; preds = %for.cond147
  %120 = load ptr, ptr %span, align 8, !dbg !2443, !tbaa !898
  %terms = getelementptr inbounds %struct.yasm_span, ptr %120, i32 0, i32 5, !dbg !2445
  %121 = load ptr, ptr %terms, align 8, !dbg !2445, !tbaa !2446
  %122 = load i32, ptr %i, align 4, !dbg !2447, !tbaa !1002
  %idxprom = zext i32 %122 to i64, !dbg !2443
  %arrayidx = getelementptr inbounds %struct.yasm_span_term, ptr %121, i64 %idxprom, !dbg !2443
  %precbc = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx, i32 0, i32 0, !dbg !2448
  %123 = load ptr, ptr %precbc, align 8, !dbg !2448, !tbaa !2449
  %124 = load ptr, ptr %span, align 8, !dbg !2451, !tbaa !898
  %terms150 = getelementptr inbounds %struct.yasm_span, ptr %124, i32 0, i32 5, !dbg !2452
  %125 = load ptr, ptr %terms150, align 8, !dbg !2452, !tbaa !2446
  %126 = load i32, ptr %i, align 4, !dbg !2453, !tbaa !1002
  %idxprom151 = zext i32 %126 to i64, !dbg !2451
  %arrayidx152 = getelementptr inbounds %struct.yasm_span_term, ptr %125, i64 %idxprom151, !dbg !2451
  %precbc2 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx152, i32 0, i32 1, !dbg !2454
  %127 = load ptr, ptr %precbc2, align 8, !dbg !2454, !tbaa !2455
  %call153 = call ptr @yasm_calc_bc_dist(ptr noundef %123, ptr noundef %127), !dbg !2456
  store ptr %call153, ptr %intn, align 8, !dbg !2457, !tbaa !898
  %128 = load ptr, ptr %intn, align 8, !dbg !2458, !tbaa !898
  %tobool154 = icmp ne ptr %128, null, !dbg !2458
  br i1 %tobool154, label %if.end156, label %if.then155, !dbg !2460

if.then155:                                       ; preds = %for.body149
  %129 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2461, !tbaa !898
  call void %129(ptr noundef @.str.6, i32 noundef 1418, ptr noundef @.str.16), !dbg !2461
  br label %if.end156, !dbg !2461

if.end156:                                        ; preds = %if.then155, %for.body149
  %130 = load ptr, ptr %span, align 8, !dbg !2462, !tbaa !898
  %terms157 = getelementptr inbounds %struct.yasm_span, ptr %130, i32 0, i32 5, !dbg !2463
  %131 = load ptr, ptr %terms157, align 8, !dbg !2463, !tbaa !2446
  %132 = load i32, ptr %i, align 4, !dbg !2464, !tbaa !1002
  %idxprom158 = zext i32 %132 to i64, !dbg !2462
  %arrayidx159 = getelementptr inbounds %struct.yasm_span_term, ptr %131, i64 %idxprom158, !dbg !2462
  %new_val160 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx159, i32 0, i32 4, !dbg !2465
  %133 = load i64, ptr %new_val160, align 8, !dbg !2465, !tbaa !2466
  %134 = load ptr, ptr %span, align 8, !dbg !2467, !tbaa !898
  %terms161 = getelementptr inbounds %struct.yasm_span, ptr %134, i32 0, i32 5, !dbg !2468
  %135 = load ptr, ptr %terms161, align 8, !dbg !2468, !tbaa !2446
  %136 = load i32, ptr %i, align 4, !dbg !2469, !tbaa !1002
  %idxprom162 = zext i32 %136 to i64, !dbg !2467
  %arrayidx163 = getelementptr inbounds %struct.yasm_span_term, ptr %135, i64 %idxprom162, !dbg !2467
  %cur_val164 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx163, i32 0, i32 3, !dbg !2470
  store i64 %133, ptr %cur_val164, align 8, !dbg !2471, !tbaa !2472
  %137 = load ptr, ptr %intn, align 8, !dbg !2473, !tbaa !898
  %call165 = call i64 @yasm_intnum_get_int(ptr noundef %137), !dbg !2474
  %138 = load ptr, ptr %span, align 8, !dbg !2475, !tbaa !898
  %terms166 = getelementptr inbounds %struct.yasm_span, ptr %138, i32 0, i32 5, !dbg !2476
  %139 = load ptr, ptr %terms166, align 8, !dbg !2476, !tbaa !2446
  %140 = load i32, ptr %i, align 4, !dbg !2477, !tbaa !1002
  %idxprom167 = zext i32 %140 to i64, !dbg !2475
  %arrayidx168 = getelementptr inbounds %struct.yasm_span_term, ptr %139, i64 %idxprom167, !dbg !2475
  %new_val169 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx168, i32 0, i32 4, !dbg !2478
  store i64 %call165, ptr %new_val169, align 8, !dbg !2479, !tbaa !2466
  %141 = load ptr, ptr %intn, align 8, !dbg !2480, !tbaa !898
  call void @yasm_intnum_destroy(ptr noundef %141), !dbg !2481
  br label %for.inc170, !dbg !2482

for.inc170:                                       ; preds = %if.end156
  %142 = load i32, ptr %i, align 4, !dbg !2483, !tbaa !1002
  %inc171 = add i32 %142, 1, !dbg !2483
  store i32 %inc171, ptr %i, align 4, !dbg !2483, !tbaa !1002
  br label %for.cond147, !dbg !2484, !llvm.loop !2485

for.end172:                                       ; preds = %for.cond147
  %143 = load ptr, ptr %span, align 8, !dbg !2487, !tbaa !898
  %rel_term = getelementptr inbounds %struct.yasm_span, ptr %143, i32 0, i32 4, !dbg !2489
  %144 = load ptr, ptr %rel_term, align 8, !dbg !2489, !tbaa !2490
  %tobool173 = icmp ne ptr %144, null, !dbg !2487
  br i1 %tobool173, label %if.then174, label %if.end200, !dbg !2491

if.then174:                                       ; preds = %for.end172
  %145 = load ptr, ptr %span, align 8, !dbg !2492, !tbaa !898
  %rel_term175 = getelementptr inbounds %struct.yasm_span, ptr %145, i32 0, i32 4, !dbg !2494
  %146 = load ptr, ptr %rel_term175, align 8, !dbg !2494, !tbaa !2490
  %new_val176 = getelementptr inbounds %struct.yasm_span_term, ptr %146, i32 0, i32 4, !dbg !2495
  %147 = load i64, ptr %new_val176, align 8, !dbg !2495, !tbaa !2466
  %148 = load ptr, ptr %span, align 8, !dbg !2496, !tbaa !898
  %rel_term177 = getelementptr inbounds %struct.yasm_span, ptr %148, i32 0, i32 4, !dbg !2497
  %149 = load ptr, ptr %rel_term177, align 8, !dbg !2497, !tbaa !2490
  %cur_val178 = getelementptr inbounds %struct.yasm_span_term, ptr %149, i32 0, i32 3, !dbg !2498
  store i64 %147, ptr %cur_val178, align 8, !dbg !2499, !tbaa !2472
  %150 = load ptr, ptr %span, align 8, !dbg !2500, !tbaa !898
  %rel_term179 = getelementptr inbounds %struct.yasm_span, ptr %150, i32 0, i32 4, !dbg !2502
  %151 = load ptr, ptr %rel_term179, align 8, !dbg !2502, !tbaa !2490
  %precbc2180 = getelementptr inbounds %struct.yasm_span_term, ptr %151, i32 0, i32 1, !dbg !2503
  %152 = load ptr, ptr %precbc2180, align 8, !dbg !2503, !tbaa !2455
  %tobool181 = icmp ne ptr %152, null, !dbg !2500
  br i1 %tobool181, label %if.then182, label %if.else190, !dbg !2504

if.then182:                                       ; preds = %if.then174
  %153 = load ptr, ptr %span, align 8, !dbg !2505, !tbaa !898
  %rel_term183 = getelementptr inbounds %struct.yasm_span, ptr %153, i32 0, i32 4, !dbg !2506
  %154 = load ptr, ptr %rel_term183, align 8, !dbg !2506, !tbaa !2490
  %precbc2184 = getelementptr inbounds %struct.yasm_span_term, ptr %154, i32 0, i32 1, !dbg !2507
  %155 = load ptr, ptr %precbc2184, align 8, !dbg !2507, !tbaa !2455
  %call185 = call i64 @yasm_bc_next_offset(ptr noundef %155), !dbg !2508
  %156 = load ptr, ptr %span, align 8, !dbg !2509, !tbaa !898
  %bc186 = getelementptr inbounds %struct.yasm_span, ptr %156, i32 0, i32 2, !dbg !2510
  %157 = load ptr, ptr %bc186, align 8, !dbg !2510, !tbaa !2331
  %offset187 = getelementptr inbounds %struct.yasm_bytecode, ptr %157, i32 0, i32 7, !dbg !2511
  %158 = load i64, ptr %offset187, align 8, !dbg !2511, !tbaa !1333
  %sub = sub i64 %call185, %158, !dbg !2512
  %159 = load ptr, ptr %span, align 8, !dbg !2513, !tbaa !898
  %rel_term188 = getelementptr inbounds %struct.yasm_span, ptr %159, i32 0, i32 4, !dbg !2514
  %160 = load ptr, ptr %rel_term188, align 8, !dbg !2514, !tbaa !2490
  %new_val189 = getelementptr inbounds %struct.yasm_span_term, ptr %160, i32 0, i32 4, !dbg !2515
  store i64 %sub, ptr %new_val189, align 8, !dbg !2516, !tbaa !2466
  br label %if.end199, !dbg !2513

if.else190:                                       ; preds = %if.then174
  %161 = load ptr, ptr %span, align 8, !dbg !2517, !tbaa !898
  %bc191 = getelementptr inbounds %struct.yasm_span, ptr %161, i32 0, i32 2, !dbg !2518
  %162 = load ptr, ptr %bc191, align 8, !dbg !2518, !tbaa !2331
  %offset192 = getelementptr inbounds %struct.yasm_bytecode, ptr %162, i32 0, i32 7, !dbg !2519
  %163 = load i64, ptr %offset192, align 8, !dbg !2519, !tbaa !1333
  %164 = load ptr, ptr %span, align 8, !dbg !2520, !tbaa !898
  %rel_term193 = getelementptr inbounds %struct.yasm_span, ptr %164, i32 0, i32 4, !dbg !2521
  %165 = load ptr, ptr %rel_term193, align 8, !dbg !2521, !tbaa !2490
  %precbc194 = getelementptr inbounds %struct.yasm_span_term, ptr %165, i32 0, i32 0, !dbg !2522
  %166 = load ptr, ptr %precbc194, align 8, !dbg !2522, !tbaa !2449
  %call195 = call i64 @yasm_bc_next_offset(ptr noundef %166), !dbg !2523
  %sub196 = sub i64 %163, %call195, !dbg !2524
  %167 = load ptr, ptr %span, align 8, !dbg !2525, !tbaa !898
  %rel_term197 = getelementptr inbounds %struct.yasm_span, ptr %167, i32 0, i32 4, !dbg !2526
  %168 = load ptr, ptr %rel_term197, align 8, !dbg !2526, !tbaa !2490
  %new_val198 = getelementptr inbounds %struct.yasm_span_term, ptr %168, i32 0, i32 4, !dbg !2527
  store i64 %sub196, ptr %new_val198, align 8, !dbg !2528, !tbaa !2466
  br label %if.end199

if.end199:                                        ; preds = %if.else190, %if.then182
  br label %if.end200, !dbg !2529

if.end200:                                        ; preds = %if.end199, %for.end172
  %169 = load ptr, ptr %span, align 8, !dbg !2530, !tbaa !898
  %call201 = call i32 @recalc_normal_span(ptr noundef %169), !dbg !2532
  %tobool202 = icmp ne i32 %call201, 0, !dbg !2532
  br i1 %tobool202, label %if.then203, label %if.end215, !dbg !2533

if.then203:                                       ; preds = %if.end200
  br label %do.body204, !dbg !2534

do.body204:                                       ; preds = %if.then203
  %170 = load ptr, ptr %span, align 8, !dbg !2536, !tbaa !898
  %linkq = getelementptr inbounds %struct.yasm_span, ptr %170, i32 0, i32 1, !dbg !2536
  %stqe_next205 = getelementptr inbounds %struct.anon.4, ptr %linkq, i32 0, i32 0, !dbg !2536
  store ptr null, ptr %stqe_next205, align 8, !dbg !2536, !tbaa !2538
  %171 = load ptr, ptr %span, align 8, !dbg !2536, !tbaa !898
  %QB206 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2536
  %stqh_last207 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB206, i32 0, i32 1, !dbg !2536
  %172 = load ptr, ptr %stqh_last207, align 8, !dbg !2536, !tbaa !2428
  store ptr %171, ptr %172, align 8, !dbg !2536, !tbaa !898
  %173 = load ptr, ptr %span, align 8, !dbg !2536, !tbaa !898
  %linkq208 = getelementptr inbounds %struct.yasm_span, ptr %173, i32 0, i32 1, !dbg !2536
  %stqe_next209 = getelementptr inbounds %struct.anon.4, ptr %linkq208, i32 0, i32 0, !dbg !2536
  %QB210 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2536
  %stqh_last211 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB210, i32 0, i32 1, !dbg !2536
  store ptr %stqe_next209, ptr %stqh_last211, align 8, !dbg !2536, !tbaa !2428
  br label %do.cond212, !dbg !2536

do.cond212:                                       ; preds = %do.body204
  br label %do.end213, !dbg !2536

do.end213:                                        ; preds = %do.cond212
  %174 = load ptr, ptr %span, align 8, !dbg !2539, !tbaa !898
  %active214 = getelementptr inbounds %struct.yasm_span, ptr %174, i32 0, i32 13, !dbg !2540
  store i32 2, ptr %active214, align 4, !dbg !2541, !tbaa !2377
  br label %if.end215, !dbg !2542

if.end215:                                        ; preds = %do.end213, %if.end200
  call void @llvm.lifetime.end.p0(i64 8, ptr %intn) #6, !dbg !2543
  br label %for.inc216, !dbg !2544

for.inc216:                                       ; preds = %if.end215
  %175 = load ptr, ptr %span, align 8, !dbg !2430, !tbaa !898
  %link217 = getelementptr inbounds %struct.yasm_span, ptr %175, i32 0, i32 0, !dbg !2430
  %tqe_next218 = getelementptr inbounds %struct.anon.3, ptr %link217, i32 0, i32 0, !dbg !2430
  %176 = load ptr, ptr %tqe_next218, align 8, !dbg !2430, !tbaa !2315
  store ptr %176, ptr %span, align 8, !dbg !2430, !tbaa !898
  br label %for.cond144, !dbg !2430, !llvm.loop !2545

for.end219:                                       ; preds = %for.cond144
  %QB220 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2547
  %stqh_first221 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB220, i32 0, i32 0, !dbg !2547
  %177 = load ptr, ptr %stqh_first221, align 8, !dbg !2547, !tbaa !2427
  %cmp222 = icmp eq ptr %177, null, !dbg !2547
  br i1 %cmp222, label %if.then223, label %if.end224, !dbg !2549

if.then223:                                       ; preds = %for.end219
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup493, !dbg !2552

if.end224:                                        ; preds = %for.end219
  %offset_setters225 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 4, !dbg !2553
  %stqh_first226 = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters225, i32 0, i32 0, !dbg !2553
  %178 = load ptr, ptr %stqh_first226, align 8, !dbg !2553, !tbaa !2166
  store ptr %178, ptr %os, align 8, !dbg !2553, !tbaa !898
  br label %for.cond227, !dbg !2553

for.cond227:                                      ; preds = %for.inc242, %if.end224
  %179 = load ptr, ptr %os, align 8, !dbg !2555, !tbaa !898
  %tobool228 = icmp ne ptr %179, null, !dbg !2553
  br i1 %tobool228, label %for.body229, label %for.end245, !dbg !2553

for.body229:                                      ; preds = %for.cond227
  %180 = load ptr, ptr %os, align 8, !dbg !2557, !tbaa !898
  %bc230 = getelementptr inbounds %struct.yasm_offset_setter, ptr %180, i32 0, i32 1, !dbg !2560
  %181 = load ptr, ptr %bc230, align 8, !dbg !2560, !tbaa !2177
  %tobool231 = icmp ne ptr %181, null, !dbg !2557
  br i1 %tobool231, label %if.end233, label %if.then232, !dbg !2561

if.then232:                                       ; preds = %for.body229
  br label %for.inc242, !dbg !2562

if.end233:                                        ; preds = %for.body229
  %182 = load ptr, ptr %os, align 8, !dbg !2563, !tbaa !898
  %bc234 = getelementptr inbounds %struct.yasm_offset_setter, ptr %182, i32 0, i32 1, !dbg !2564
  %183 = load ptr, ptr %bc234, align 8, !dbg !2564, !tbaa !2177
  %call235 = call i64 @yasm_bc_next_offset(ptr noundef %183), !dbg !2565
  %184 = load ptr, ptr %os, align 8, !dbg !2566, !tbaa !898
  %thres236 = getelementptr inbounds %struct.yasm_offset_setter, ptr %184, i32 0, i32 4, !dbg !2567
  store i64 %call235, ptr %thres236, align 8, !dbg !2568, !tbaa !2190
  %185 = load ptr, ptr %os, align 8, !dbg !2569, !tbaa !898
  %bc237 = getelementptr inbounds %struct.yasm_offset_setter, ptr %185, i32 0, i32 1, !dbg !2570
  %186 = load ptr, ptr %bc237, align 8, !dbg !2570, !tbaa !2177
  %offset238 = getelementptr inbounds %struct.yasm_bytecode, ptr %186, i32 0, i32 7, !dbg !2571
  %187 = load i64, ptr %offset238, align 8, !dbg !2571, !tbaa !1333
  %188 = load ptr, ptr %os, align 8, !dbg !2572, !tbaa !898
  %new_val239 = getelementptr inbounds %struct.yasm_offset_setter, ptr %188, i32 0, i32 3, !dbg !2573
  store i64 %187, ptr %new_val239, align 8, !dbg !2574, !tbaa !2186
  %189 = load ptr, ptr %os, align 8, !dbg !2575, !tbaa !898
  %new_val240 = getelementptr inbounds %struct.yasm_offset_setter, ptr %189, i32 0, i32 3, !dbg !2576
  %190 = load i64, ptr %new_val240, align 8, !dbg !2576, !tbaa !2186
  %191 = load ptr, ptr %os, align 8, !dbg !2577, !tbaa !898
  %cur_val241 = getelementptr inbounds %struct.yasm_offset_setter, ptr %191, i32 0, i32 2, !dbg !2578
  store i64 %190, ptr %cur_val241, align 8, !dbg !2579, !tbaa !2182
  br label %for.inc242, !dbg !2580

for.inc242:                                       ; preds = %if.end233, %if.then232
  %192 = load ptr, ptr %os, align 8, !dbg !2555, !tbaa !898
  %link243 = getelementptr inbounds %struct.yasm_offset_setter, ptr %192, i32 0, i32 0, !dbg !2555
  %stqe_next244 = getelementptr inbounds %struct.anon.2, ptr %link243, i32 0, i32 0, !dbg !2555
  %193 = load ptr, ptr %stqe_next244, align 8, !dbg !2555, !tbaa !2194
  store ptr %193, ptr %os, align 8, !dbg !2555, !tbaa !898
  br label %for.cond227, !dbg !2555, !llvm.loop !2581

for.end245:                                       ; preds = %for.cond227
  %spans246 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2583
  %tqh_first247 = getelementptr inbounds %struct.yasm_span_head, ptr %spans246, i32 0, i32 0, !dbg !2583
  %194 = load ptr, ptr %tqh_first247, align 8, !dbg !2583, !tbaa !2157
  store ptr %194, ptr %span, align 8, !dbg !2583, !tbaa !898
  br label %for.cond248, !dbg !2583

for.cond248:                                      ; preds = %for.inc268, %for.end245
  %195 = load ptr, ptr %span, align 8, !dbg !2585, !tbaa !898
  %tobool249 = icmp ne ptr %195, null, !dbg !2583
  br i1 %tobool249, label %for.body250, label %for.end271, !dbg !2583

for.body250:                                      ; preds = %for.cond248
  store i32 0, ptr %i, align 4, !dbg !2587, !tbaa !1002
  br label %for.cond251, !dbg !2590

for.cond251:                                      ; preds = %for.inc259, %for.body250
  %196 = load i32, ptr %i, align 4, !dbg !2591, !tbaa !1002
  %197 = load ptr, ptr %span, align 8, !dbg !2593, !tbaa !898
  %num_terms252 = getelementptr inbounds %struct.yasm_span, ptr %197, i32 0, i32 7, !dbg !2594
  %198 = load i32, ptr %num_terms252, align 8, !dbg !2594, !tbaa !2440
  %cmp253 = icmp ult i32 %196, %198, !dbg !2595
  br i1 %cmp253, label %for.body254, label %for.end261, !dbg !2596

for.body254:                                      ; preds = %for.cond251
  %itree255 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 3, !dbg !2597
  %199 = load ptr, ptr %itree255, align 8, !dbg !2597, !tbaa !2171
  %200 = load ptr, ptr %span, align 8, !dbg !2598, !tbaa !898
  %201 = load ptr, ptr %span, align 8, !dbg !2599, !tbaa !898
  %terms256 = getelementptr inbounds %struct.yasm_span, ptr %201, i32 0, i32 5, !dbg !2600
  %202 = load ptr, ptr %terms256, align 8, !dbg !2600, !tbaa !2446
  %203 = load i32, ptr %i, align 4, !dbg !2601, !tbaa !1002
  %idxprom257 = zext i32 %203 to i64, !dbg !2599
  %arrayidx258 = getelementptr inbounds %struct.yasm_span_term, ptr %202, i64 %idxprom257, !dbg !2599
  call void @optimize_itree_add(ptr noundef %199, ptr noundef %200, ptr noundef %arrayidx258), !dbg !2602
  br label %for.inc259, !dbg !2602

for.inc259:                                       ; preds = %for.body254
  %204 = load i32, ptr %i, align 4, !dbg !2603, !tbaa !1002
  %inc260 = add i32 %204, 1, !dbg !2603
  store i32 %inc260, ptr %i, align 4, !dbg !2603, !tbaa !1002
  br label %for.cond251, !dbg !2604, !llvm.loop !2605

for.end261:                                       ; preds = %for.cond251
  %205 = load ptr, ptr %span, align 8, !dbg !2607, !tbaa !898
  %rel_term262 = getelementptr inbounds %struct.yasm_span, ptr %205, i32 0, i32 4, !dbg !2609
  %206 = load ptr, ptr %rel_term262, align 8, !dbg !2609, !tbaa !2490
  %tobool263 = icmp ne ptr %206, null, !dbg !2607
  br i1 %tobool263, label %if.then264, label %if.end267, !dbg !2610

if.then264:                                       ; preds = %for.end261
  %itree265 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 3, !dbg !2611
  %207 = load ptr, ptr %itree265, align 8, !dbg !2611, !tbaa !2171
  %208 = load ptr, ptr %span, align 8, !dbg !2612, !tbaa !898
  %209 = load ptr, ptr %span, align 8, !dbg !2613, !tbaa !898
  %rel_term266 = getelementptr inbounds %struct.yasm_span, ptr %209, i32 0, i32 4, !dbg !2614
  %210 = load ptr, ptr %rel_term266, align 8, !dbg !2614, !tbaa !2490
  call void @optimize_itree_add(ptr noundef %207, ptr noundef %208, ptr noundef %210), !dbg !2615
  br label %if.end267, !dbg !2615

if.end267:                                        ; preds = %if.then264, %for.end261
  br label %for.inc268, !dbg !2616

for.inc268:                                       ; preds = %if.end267
  %211 = load ptr, ptr %span, align 8, !dbg !2585, !tbaa !898
  %link269 = getelementptr inbounds %struct.yasm_span, ptr %211, i32 0, i32 0, !dbg !2585
  %tqe_next270 = getelementptr inbounds %struct.anon.3, ptr %link269, i32 0, i32 0, !dbg !2585
  %212 = load ptr, ptr %tqe_next270, align 8, !dbg !2585, !tbaa !2315
  store ptr %212, ptr %span, align 8, !dbg !2585, !tbaa !898
  br label %for.cond248, !dbg !2585, !llvm.loop !2617

for.end271:                                       ; preds = %for.cond248
  %spans272 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 0, !dbg !2619
  %tqh_first273 = getelementptr inbounds %struct.yasm_span_head, ptr %spans272, i32 0, i32 0, !dbg !2619
  %213 = load ptr, ptr %tqh_first273, align 8, !dbg !2619, !tbaa !2157
  store ptr %213, ptr %span, align 8, !dbg !2619, !tbaa !898
  br label %for.cond274, !dbg !2619

for.cond274:                                      ; preds = %for.inc292, %for.end271
  %214 = load ptr, ptr %span, align 8, !dbg !2621, !tbaa !898
  %tobool275 = icmp ne ptr %214, null, !dbg !2619
  br i1 %tobool275, label %for.body276, label %for.end295, !dbg !2619

for.body276:                                      ; preds = %for.cond274
  %215 = load ptr, ptr %span, align 8, !dbg !2623, !tbaa !898
  %id277 = getelementptr inbounds %struct.yasm_span, ptr %215, i32 0, i32 12, !dbg !2626
  %216 = load i32, ptr %id277, align 8, !dbg !2626, !tbaa !2345
  %cmp278 = icmp sgt i32 %216, 0, !dbg !2627
  br i1 %cmp278, label %if.then279, label %if.end280, !dbg !2628

if.then279:                                       ; preds = %for.body276
  br label %for.inc292, !dbg !2629

if.end280:                                        ; preds = %for.body276
  %217 = load ptr, ptr %span, align 8, !dbg !2630, !tbaa !898
  %span281 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 6, !dbg !2631
  store ptr %217, ptr %span281, align 8, !dbg !2632, !tbaa !2633
  %itree282 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 3, !dbg !2634
  %218 = load ptr, ptr %itree282, align 8, !dbg !2634, !tbaa !2171
  %219 = load ptr, ptr %span, align 8, !dbg !2635, !tbaa !898
  %bc283 = getelementptr inbounds %struct.yasm_span, ptr %219, i32 0, i32 2, !dbg !2636
  %220 = load ptr, ptr %bc283, align 8, !dbg !2636, !tbaa !2331
  %bc_index284 = getelementptr inbounds %struct.yasm_bytecode, ptr %220, i32 0, i32 8, !dbg !2637
  %221 = load i64, ptr %bc_index284, align 8, !dbg !2637, !tbaa !2210
  %222 = load ptr, ptr %span, align 8, !dbg !2638, !tbaa !898
  %bc285 = getelementptr inbounds %struct.yasm_span, ptr %222, i32 0, i32 2, !dbg !2639
  %223 = load ptr, ptr %bc285, align 8, !dbg !2639, !tbaa !2331
  %bc_index286 = getelementptr inbounds %struct.yasm_bytecode, ptr %223, i32 0, i32 8, !dbg !2640
  %224 = load i64, ptr %bc_index286, align 8, !dbg !2640, !tbaa !2210
  call void @IT_enumerate(ptr noundef %218, i64 noundef %221, i64 noundef %224, ptr noundef %optd, ptr noundef @check_cycle), !dbg !2641
  %225 = load i32, ptr @yasm_eclass, align 4, !dbg !2642, !tbaa !2325
  %tobool287 = icmp ne i32 %225, 0, !dbg !2642
  br i1 %tobool287, label %if.then288, label %if.end291, !dbg !2644

if.then288:                                       ; preds = %if.end280
  %226 = load ptr, ptr %errwarns.addr, align 8, !dbg !2645, !tbaa !898
  %227 = load ptr, ptr %span, align 8, !dbg !2647, !tbaa !898
  %bc289 = getelementptr inbounds %struct.yasm_span, ptr %227, i32 0, i32 2, !dbg !2648
  %228 = load ptr, ptr %bc289, align 8, !dbg !2648, !tbaa !2331
  %line290 = getelementptr inbounds %struct.yasm_bytecode, ptr %228, i32 0, i32 6, !dbg !2649
  %229 = load i64, ptr %line290, align 8, !dbg !2649, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %226, i64 noundef %229), !dbg !2650
  store i32 1, ptr %saw_error, align 4, !dbg !2651, !tbaa !1002
  br label %if.end291, !dbg !2652

if.end291:                                        ; preds = %if.then288, %if.end280
  br label %for.inc292, !dbg !2653

for.inc292:                                       ; preds = %if.end291, %if.then279
  %230 = load ptr, ptr %span, align 8, !dbg !2621, !tbaa !898
  %link293 = getelementptr inbounds %struct.yasm_span, ptr %230, i32 0, i32 0, !dbg !2621
  %tqe_next294 = getelementptr inbounds %struct.anon.3, ptr %link293, i32 0, i32 0, !dbg !2621
  %231 = load ptr, ptr %tqe_next294, align 8, !dbg !2621, !tbaa !2315
  store ptr %231, ptr %span, align 8, !dbg !2621, !tbaa !898
  br label %for.cond274, !dbg !2621, !llvm.loop !2654

for.end295:                                       ; preds = %for.cond274
  %232 = load i32, ptr %saw_error, align 4, !dbg !2656, !tbaa !1002
  %tobool296 = icmp ne i32 %232, 0, !dbg !2656
  br i1 %tobool296, label %if.then297, label %if.end298, !dbg !2658

if.then297:                                       ; preds = %for.end295
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup493, !dbg !2661

if.end298:                                        ; preds = %for.end295
  br label %do.body299, !dbg !2662

do.body299:                                       ; preds = %if.end298
  %QA = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2663
  %stqh_first300 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA, i32 0, i32 0, !dbg !2663
  store ptr null, ptr %stqh_first300, align 8, !dbg !2663, !tbaa !2665
  %QA301 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2663
  %stqh_first302 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA301, i32 0, i32 0, !dbg !2663
  %QA303 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2663
  %stqh_last304 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA303, i32 0, i32 1, !dbg !2663
  store ptr %stqh_first302, ptr %stqh_last304, align 8, !dbg !2663, !tbaa !2666
  br label %do.cond305, !dbg !2663

do.cond305:                                       ; preds = %do.body299
  br label %do.end306, !dbg !2663

do.end306:                                        ; preds = %do.cond305
  br label %while.cond307, !dbg !2667

while.cond307:                                    ; preds = %cleanup.cont, %cleanup, %do.end306
  %QA308 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2668
  %stqh_first309 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA308, i32 0, i32 0, !dbg !2668
  %233 = load ptr, ptr %stqh_first309, align 8, !dbg !2668, !tbaa !2665
  %cmp310 = icmp eq ptr %233, null, !dbg !2668
  br i1 %cmp310, label %lor.rhs, label %lor.end, !dbg !2669

lor.rhs:                                          ; preds = %while.cond307
  %QB311 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2670
  %stqh_first312 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB311, i32 0, i32 0, !dbg !2670
  %234 = load ptr, ptr %stqh_first312, align 8, !dbg !2670, !tbaa !2427
  %cmp313 = icmp eq ptr %234, null, !dbg !2670
  %lnot = xor i1 %cmp313, true, !dbg !2671
  br label %lor.end, !dbg !2669

lor.end:                                          ; preds = %lor.rhs, %while.cond307
  %235 = phi i1 [ true, %while.cond307 ], [ %lnot, %lor.rhs ]
  br i1 %235, label %while.body314, label %while.end488, !dbg !2667

while.body314:                                    ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_len) #6, !dbg !2672
  tail call void @llvm.dbg.declare(metadata ptr %orig_len, metadata !2129, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset_diff) #6, !dbg !2674
  tail call void @llvm.dbg.declare(metadata ptr %offset_diff, metadata !2131, metadata !DIExpression()), !dbg !2675
  %QA315 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2676
  %stqh_first316 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA315, i32 0, i32 0, !dbg !2676
  %236 = load ptr, ptr %stqh_first316, align 8, !dbg !2676, !tbaa !2665
  %cmp317 = icmp eq ptr %236, null, !dbg !2676
  br i1 %cmp317, label %if.else337, label %if.then318, !dbg !2678

if.then318:                                       ; preds = %while.body314
  %QA319 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2679
  %stqh_first320 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA319, i32 0, i32 0, !dbg !2679
  %237 = load ptr, ptr %stqh_first320, align 8, !dbg !2679, !tbaa !2665
  store ptr %237, ptr %span, align 8, !dbg !2681, !tbaa !898
  br label %do.body321, !dbg !2682

do.body321:                                       ; preds = %if.then318
  %QA322 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2683
  %stqh_first323 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA322, i32 0, i32 0, !dbg !2683
  %238 = load ptr, ptr %stqh_first323, align 8, !dbg !2683, !tbaa !2665
  %linkq324 = getelementptr inbounds %struct.yasm_span, ptr %238, i32 0, i32 1, !dbg !2683
  %stqe_next325 = getelementptr inbounds %struct.anon.4, ptr %linkq324, i32 0, i32 0, !dbg !2683
  %239 = load ptr, ptr %stqe_next325, align 8, !dbg !2683, !tbaa !2538
  %QA326 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2683
  %stqh_first327 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA326, i32 0, i32 0, !dbg !2683
  store ptr %239, ptr %stqh_first327, align 8, !dbg !2683, !tbaa !2665
  %cmp328 = icmp eq ptr %239, null, !dbg !2683
  br i1 %cmp328, label %if.then329, label %if.end334, !dbg !2686

if.then329:                                       ; preds = %do.body321
  %QA330 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2683
  %stqh_first331 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA330, i32 0, i32 0, !dbg !2683
  %QA332 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 1, !dbg !2683
  %stqh_last333 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA332, i32 0, i32 1, !dbg !2683
  store ptr %stqh_first331, ptr %stqh_last333, align 8, !dbg !2683, !tbaa !2666
  br label %if.end334, !dbg !2683

if.end334:                                        ; preds = %if.then329, %do.body321
  br label %do.cond335, !dbg !2686

do.cond335:                                       ; preds = %if.end334
  br label %do.end336, !dbg !2686

do.end336:                                        ; preds = %do.cond335
  br label %if.end356, !dbg !2687

if.else337:                                       ; preds = %while.body314
  %QB338 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2688
  %stqh_first339 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB338, i32 0, i32 0, !dbg !2688
  %240 = load ptr, ptr %stqh_first339, align 8, !dbg !2688, !tbaa !2427
  store ptr %240, ptr %span, align 8, !dbg !2690, !tbaa !898
  br label %do.body340, !dbg !2691

do.body340:                                       ; preds = %if.else337
  %QB341 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2692
  %stqh_first342 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB341, i32 0, i32 0, !dbg !2692
  %241 = load ptr, ptr %stqh_first342, align 8, !dbg !2692, !tbaa !2427
  %linkq343 = getelementptr inbounds %struct.yasm_span, ptr %241, i32 0, i32 1, !dbg !2692
  %stqe_next344 = getelementptr inbounds %struct.anon.4, ptr %linkq343, i32 0, i32 0, !dbg !2692
  %242 = load ptr, ptr %stqe_next344, align 8, !dbg !2692, !tbaa !2538
  %QB345 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2692
  %stqh_first346 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB345, i32 0, i32 0, !dbg !2692
  store ptr %242, ptr %stqh_first346, align 8, !dbg !2692, !tbaa !2427
  %cmp347 = icmp eq ptr %242, null, !dbg !2692
  br i1 %cmp347, label %if.then348, label %if.end353, !dbg !2695

if.then348:                                       ; preds = %do.body340
  %QB349 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2692
  %stqh_first350 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB349, i32 0, i32 0, !dbg !2692
  %QB351 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 2, !dbg !2692
  %stqh_last352 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB351, i32 0, i32 1, !dbg !2692
  store ptr %stqh_first350, ptr %stqh_last352, align 8, !dbg !2692, !tbaa !2428
  br label %if.end353, !dbg !2692

if.end353:                                        ; preds = %if.then348, %do.body340
  br label %do.cond354, !dbg !2695

do.cond354:                                       ; preds = %if.end353
  br label %do.end355, !dbg !2695

do.end355:                                        ; preds = %do.cond354
  br label %if.end356

if.end356:                                        ; preds = %do.end355, %do.end336
  %243 = load ptr, ptr %span, align 8, !dbg !2696, !tbaa !898
  %active357 = getelementptr inbounds %struct.yasm_span, ptr %243, i32 0, i32 13, !dbg !2698
  %244 = load i32, ptr %active357, align 4, !dbg !2698, !tbaa !2377
  %tobool358 = icmp ne i32 %244, 0, !dbg !2696
  br i1 %tobool358, label %if.end360, label %if.then359, !dbg !2699

if.then359:                                       ; preds = %if.end356
  store i32 44, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2700, !llvm.loop !2701

if.end360:                                        ; preds = %if.end356
  %245 = load ptr, ptr %span, align 8, !dbg !2703, !tbaa !898
  %active361 = getelementptr inbounds %struct.yasm_span, ptr %245, i32 0, i32 13, !dbg !2704
  store i32 1, ptr %active361, align 4, !dbg !2705, !tbaa !2377
  %246 = load ptr, ptr %span, align 8, !dbg !2706, !tbaa !898
  %call362 = call i32 @recalc_normal_span(ptr noundef %246), !dbg !2708
  %tobool363 = icmp ne i32 %call362, 0, !dbg !2708
  br i1 %tobool363, label %if.end365, label %if.then364, !dbg !2709

if.then364:                                       ; preds = %if.end360
  store i32 44, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2710, !llvm.loop !2701

if.end365:                                        ; preds = %if.end360
  %247 = load ptr, ptr %span, align 8, !dbg !2711, !tbaa !898
  %bc366 = getelementptr inbounds %struct.yasm_span, ptr %247, i32 0, i32 2, !dbg !2712
  %248 = load ptr, ptr %bc366, align 8, !dbg !2712, !tbaa !2331
  %len367 = getelementptr inbounds %struct.yasm_bytecode, ptr %248, i32 0, i32 4, !dbg !2713
  %249 = load i64, ptr %len367, align 8, !dbg !2713, !tbaa !2291
  %250 = load ptr, ptr %span, align 8, !dbg !2714, !tbaa !898
  %bc368 = getelementptr inbounds %struct.yasm_span, ptr %250, i32 0, i32 2, !dbg !2715
  %251 = load ptr, ptr %bc368, align 8, !dbg !2715, !tbaa !2331
  %mult_int369 = getelementptr inbounds %struct.yasm_bytecode, ptr %251, i32 0, i32 5, !dbg !2716
  %252 = load i64, ptr %mult_int369, align 8, !dbg !2716, !tbaa !2294
  %mul370 = mul i64 %249, %252, !dbg !2717
  store i64 %mul370, ptr %orig_len, align 8, !dbg !2718, !tbaa !1262
  %253 = load ptr, ptr %span, align 8, !dbg !2719, !tbaa !898
  %bc371 = getelementptr inbounds %struct.yasm_span, ptr %253, i32 0, i32 2, !dbg !2720
  %254 = load ptr, ptr %bc371, align 8, !dbg !2720, !tbaa !2331
  %255 = load ptr, ptr %span, align 8, !dbg !2721, !tbaa !898
  %id372 = getelementptr inbounds %struct.yasm_span, ptr %255, i32 0, i32 12, !dbg !2722
  %256 = load i32, ptr %id372, align 8, !dbg !2722, !tbaa !2345
  %257 = load ptr, ptr %span, align 8, !dbg !2723, !tbaa !898
  %cur_val373 = getelementptr inbounds %struct.yasm_span, ptr %257, i32 0, i32 8, !dbg !2724
  %258 = load i64, ptr %cur_val373, align 8, !dbg !2724, !tbaa !2348
  %259 = load ptr, ptr %span, align 8, !dbg !2725, !tbaa !898
  %new_val374 = getelementptr inbounds %struct.yasm_span, ptr %259, i32 0, i32 9, !dbg !2726
  %260 = load i64, ptr %new_val374, align 8, !dbg !2726, !tbaa !2351
  %261 = load ptr, ptr %span, align 8, !dbg !2727, !tbaa !898
  %neg_thres375 = getelementptr inbounds %struct.yasm_span, ptr %261, i32 0, i32 10, !dbg !2728
  %262 = load ptr, ptr %span, align 8, !dbg !2729, !tbaa !898
  %pos_thres376 = getelementptr inbounds %struct.yasm_span, ptr %262, i32 0, i32 11, !dbg !2730
  %call377 = call i32 @yasm_bc_expand(ptr noundef %254, i32 noundef %256, i64 noundef %258, i64 noundef %260, ptr noundef %neg_thres375, ptr noundef %pos_thres376), !dbg !2731
  store i32 %call377, ptr %retval, align 4, !dbg !2732, !tbaa !1002
  %263 = load ptr, ptr %errwarns.addr, align 8, !dbg !2733, !tbaa !898
  %264 = load ptr, ptr %span, align 8, !dbg !2734, !tbaa !898
  %bc378 = getelementptr inbounds %struct.yasm_span, ptr %264, i32 0, i32 2, !dbg !2735
  %265 = load ptr, ptr %bc378, align 8, !dbg !2735, !tbaa !2331
  %line379 = getelementptr inbounds %struct.yasm_bytecode, ptr %265, i32 0, i32 6, !dbg !2736
  %266 = load i64, ptr %line379, align 8, !dbg !2736, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %263, i64 noundef %266), !dbg !2737
  %267 = load i32, ptr %retval, align 4, !dbg !2738, !tbaa !1002
  %cmp380 = icmp slt i32 %267, 0, !dbg !2740
  br i1 %cmp380, label %if.then381, label %if.else382, !dbg !2741

if.then381:                                       ; preds = %if.end365
  store i32 1, ptr %saw_error, align 4, !dbg !2742, !tbaa !1002
  store i32 44, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2744, !llvm.loop !2701

if.else382:                                       ; preds = %if.end365
  %268 = load i32, ptr %retval, align 4, !dbg !2745, !tbaa !1002
  %cmp383 = icmp sgt i32 %268, 0, !dbg !2747
  br i1 %cmp383, label %if.then384, label %if.else410, !dbg !2748

if.then384:                                       ; preds = %if.else382
  store i32 0, ptr %i, align 4, !dbg !2749, !tbaa !1002
  br label %for.cond385, !dbg !2752

for.cond385:                                      ; preds = %for.inc397, %if.then384
  %269 = load i32, ptr %i, align 4, !dbg !2753, !tbaa !1002
  %270 = load ptr, ptr %span, align 8, !dbg !2755, !tbaa !898
  %num_terms386 = getelementptr inbounds %struct.yasm_span, ptr %270, i32 0, i32 7, !dbg !2756
  %271 = load i32, ptr %num_terms386, align 8, !dbg !2756, !tbaa !2440
  %cmp387 = icmp ult i32 %269, %271, !dbg !2757
  br i1 %cmp387, label %for.body388, label %for.end399, !dbg !2758

for.body388:                                      ; preds = %for.cond385
  %272 = load ptr, ptr %span, align 8, !dbg !2759, !tbaa !898
  %terms389 = getelementptr inbounds %struct.yasm_span, ptr %272, i32 0, i32 5, !dbg !2760
  %273 = load ptr, ptr %terms389, align 8, !dbg !2760, !tbaa !2446
  %274 = load i32, ptr %i, align 4, !dbg !2761, !tbaa !1002
  %idxprom390 = zext i32 %274 to i64, !dbg !2759
  %arrayidx391 = getelementptr inbounds %struct.yasm_span_term, ptr %273, i64 %idxprom390, !dbg !2759
  %new_val392 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx391, i32 0, i32 4, !dbg !2762
  %275 = load i64, ptr %new_val392, align 8, !dbg !2762, !tbaa !2466
  %276 = load ptr, ptr %span, align 8, !dbg !2763, !tbaa !898
  %terms393 = getelementptr inbounds %struct.yasm_span, ptr %276, i32 0, i32 5, !dbg !2764
  %277 = load ptr, ptr %terms393, align 8, !dbg !2764, !tbaa !2446
  %278 = load i32, ptr %i, align 4, !dbg !2765, !tbaa !1002
  %idxprom394 = zext i32 %278 to i64, !dbg !2763
  %arrayidx395 = getelementptr inbounds %struct.yasm_span_term, ptr %277, i64 %idxprom394, !dbg !2763
  %cur_val396 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx395, i32 0, i32 3, !dbg !2766
  store i64 %275, ptr %cur_val396, align 8, !dbg !2767, !tbaa !2472
  br label %for.inc397, !dbg !2763

for.inc397:                                       ; preds = %for.body388
  %279 = load i32, ptr %i, align 4, !dbg !2768, !tbaa !1002
  %inc398 = add i32 %279, 1, !dbg !2768
  store i32 %inc398, ptr %i, align 4, !dbg !2768, !tbaa !1002
  br label %for.cond385, !dbg !2769, !llvm.loop !2770

for.end399:                                       ; preds = %for.cond385
  %280 = load ptr, ptr %span, align 8, !dbg !2772, !tbaa !898
  %rel_term400 = getelementptr inbounds %struct.yasm_span, ptr %280, i32 0, i32 4, !dbg !2774
  %281 = load ptr, ptr %rel_term400, align 8, !dbg !2774, !tbaa !2490
  %tobool401 = icmp ne ptr %281, null, !dbg !2772
  br i1 %tobool401, label %if.then402, label %if.end407, !dbg !2775

if.then402:                                       ; preds = %for.end399
  %282 = load ptr, ptr %span, align 8, !dbg !2776, !tbaa !898
  %rel_term403 = getelementptr inbounds %struct.yasm_span, ptr %282, i32 0, i32 4, !dbg !2777
  %283 = load ptr, ptr %rel_term403, align 8, !dbg !2777, !tbaa !2490
  %new_val404 = getelementptr inbounds %struct.yasm_span_term, ptr %283, i32 0, i32 4, !dbg !2778
  %284 = load i64, ptr %new_val404, align 8, !dbg !2778, !tbaa !2466
  %285 = load ptr, ptr %span, align 8, !dbg !2779, !tbaa !898
  %rel_term405 = getelementptr inbounds %struct.yasm_span, ptr %285, i32 0, i32 4, !dbg !2780
  %286 = load ptr, ptr %rel_term405, align 8, !dbg !2780, !tbaa !2490
  %cur_val406 = getelementptr inbounds %struct.yasm_span_term, ptr %286, i32 0, i32 3, !dbg !2781
  store i64 %284, ptr %cur_val406, align 8, !dbg !2782, !tbaa !2472
  br label %if.end407, !dbg !2779

if.end407:                                        ; preds = %if.then402, %for.end399
  %287 = load ptr, ptr %span, align 8, !dbg !2783, !tbaa !898
  %new_val408 = getelementptr inbounds %struct.yasm_span, ptr %287, i32 0, i32 9, !dbg !2784
  %288 = load i64, ptr %new_val408, align 8, !dbg !2784, !tbaa !2351
  %289 = load ptr, ptr %span, align 8, !dbg !2785, !tbaa !898
  %cur_val409 = getelementptr inbounds %struct.yasm_span, ptr %289, i32 0, i32 8, !dbg !2786
  store i64 %288, ptr %cur_val409, align 8, !dbg !2787, !tbaa !2348
  br label %if.end412, !dbg !2788

if.else410:                                       ; preds = %if.else382
  %290 = load ptr, ptr %span, align 8, !dbg !2789, !tbaa !898
  %active411 = getelementptr inbounds %struct.yasm_span, ptr %290, i32 0, i32 13, !dbg !2790
  store i32 0, ptr %active411, align 4, !dbg !2791, !tbaa !2377
  br label %if.end412

if.end412:                                        ; preds = %if.else410, %if.end407
  br label %if.end413

if.end413:                                        ; preds = %if.end412
  %291 = load ptr, ptr %span, align 8, !dbg !2792, !tbaa !898
  %bc414 = getelementptr inbounds %struct.yasm_span, ptr %291, i32 0, i32 2, !dbg !2793
  %292 = load ptr, ptr %bc414, align 8, !dbg !2793, !tbaa !2331
  %len415 = getelementptr inbounds %struct.yasm_bytecode, ptr %292, i32 0, i32 4, !dbg !2794
  %293 = load i64, ptr %len415, align 8, !dbg !2794, !tbaa !2291
  %294 = load ptr, ptr %span, align 8, !dbg !2795, !tbaa !898
  %bc416 = getelementptr inbounds %struct.yasm_span, ptr %294, i32 0, i32 2, !dbg !2796
  %295 = load ptr, ptr %bc416, align 8, !dbg !2796, !tbaa !2331
  %mult_int417 = getelementptr inbounds %struct.yasm_bytecode, ptr %295, i32 0, i32 5, !dbg !2797
  %296 = load i64, ptr %mult_int417, align 8, !dbg !2797, !tbaa !2294
  %mul418 = mul i64 %293, %296, !dbg !2798
  %297 = load i64, ptr %orig_len, align 8, !dbg !2799, !tbaa !1262
  %sub419 = sub i64 %mul418, %297, !dbg !2800
  %len_diff = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 5, !dbg !2801
  store i64 %sub419, ptr %len_diff, align 8, !dbg !2802, !tbaa !2803
  %len_diff420 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 5, !dbg !2804
  %298 = load i64, ptr %len_diff420, align 8, !dbg !2804, !tbaa !2803
  %cmp421 = icmp eq i64 %298, 0, !dbg !2806
  br i1 %cmp421, label %if.then422, label %if.end423, !dbg !2807

if.then422:                                       ; preds = %if.end413
  store i32 44, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2808, !llvm.loop !2701

if.end423:                                        ; preds = %if.end413
  %itree424 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 3, !dbg !2809
  %299 = load ptr, ptr %itree424, align 8, !dbg !2809, !tbaa !2171
  %300 = load ptr, ptr %span, align 8, !dbg !2810, !tbaa !898
  %bc425 = getelementptr inbounds %struct.yasm_span, ptr %300, i32 0, i32 2, !dbg !2811
  %301 = load ptr, ptr %bc425, align 8, !dbg !2811, !tbaa !2331
  %bc_index426 = getelementptr inbounds %struct.yasm_bytecode, ptr %301, i32 0, i32 8, !dbg !2812
  %302 = load i64, ptr %bc_index426, align 8, !dbg !2812, !tbaa !2210
  %303 = load ptr, ptr %span, align 8, !dbg !2813, !tbaa !898
  %bc427 = getelementptr inbounds %struct.yasm_span, ptr %303, i32 0, i32 2, !dbg !2814
  %304 = load ptr, ptr %bc427, align 8, !dbg !2814, !tbaa !2331
  %bc_index428 = getelementptr inbounds %struct.yasm_bytecode, ptr %304, i32 0, i32 8, !dbg !2815
  %305 = load i64, ptr %bc_index428, align 8, !dbg !2815, !tbaa !2210
  call void @IT_enumerate(ptr noundef %299, i64 noundef %302, i64 noundef %305, ptr noundef %optd, ptr noundef @optimize_term_expand), !dbg !2816
  %306 = load ptr, ptr %span, align 8, !dbg !2817, !tbaa !898
  %os429 = getelementptr inbounds %struct.yasm_span, ptr %306, i32 0, i32 16, !dbg !2818
  %307 = load ptr, ptr %os429, align 8, !dbg !2818, !tbaa !2819
  store ptr %307, ptr %os, align 8, !dbg !2820, !tbaa !898
  %len_diff430 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 5, !dbg !2821
  %308 = load i64, ptr %len_diff430, align 8, !dbg !2821, !tbaa !2803
  store i64 %308, ptr %offset_diff, align 8, !dbg !2822, !tbaa !1262
  br label %while.cond431, !dbg !2823

while.cond431:                                    ; preds = %if.end481, %if.end423
  %309 = load ptr, ptr %os, align 8, !dbg !2824, !tbaa !898
  %bc432 = getelementptr inbounds %struct.yasm_offset_setter, ptr %309, i32 0, i32 1, !dbg !2825
  %310 = load ptr, ptr %bc432, align 8, !dbg !2825, !tbaa !2177
  %tobool433 = icmp ne ptr %310, null, !dbg !2824
  br i1 %tobool433, label %land.lhs.true, label %land.end440, !dbg !2826

land.lhs.true:                                    ; preds = %while.cond431
  %311 = load ptr, ptr %os, align 8, !dbg !2827, !tbaa !898
  %bc434 = getelementptr inbounds %struct.yasm_offset_setter, ptr %311, i32 0, i32 1, !dbg !2828
  %312 = load ptr, ptr %bc434, align 8, !dbg !2828, !tbaa !2177
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %312, i32 0, i32 2, !dbg !2829
  %313 = load ptr, ptr %section, align 8, !dbg !2829, !tbaa !1328
  %314 = load ptr, ptr %span, align 8, !dbg !2830, !tbaa !898
  %bc435 = getelementptr inbounds %struct.yasm_span, ptr %314, i32 0, i32 2, !dbg !2831
  %315 = load ptr, ptr %bc435, align 8, !dbg !2831, !tbaa !2331
  %section436 = getelementptr inbounds %struct.yasm_bytecode, ptr %315, i32 0, i32 2, !dbg !2832
  %316 = load ptr, ptr %section436, align 8, !dbg !2832, !tbaa !1328
  %cmp437 = icmp eq ptr %313, %316, !dbg !2833
  br i1 %cmp437, label %land.rhs438, label %land.end440, !dbg !2834

land.rhs438:                                      ; preds = %land.lhs.true
  %317 = load i64, ptr %offset_diff, align 8, !dbg !2835, !tbaa !1262
  %cmp439 = icmp ne i64 %317, 0, !dbg !2836
  br label %land.end440

land.end440:                                      ; preds = %land.rhs438, %land.lhs.true, %while.cond431
  %318 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond431 ], [ %cmp439, %land.rhs438 ], !dbg !2837
  br i1 %318, label %while.body441, label %while.end486, !dbg !2823

while.body441:                                    ; preds = %land.end440
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_next_offset) #6, !dbg !2838
  tail call void @llvm.dbg.declare(metadata ptr %old_next_offset, metadata !2132, metadata !DIExpression()), !dbg !2839
  %319 = load ptr, ptr %os, align 8, !dbg !2840, !tbaa !898
  %cur_val442 = getelementptr inbounds %struct.yasm_offset_setter, ptr %319, i32 0, i32 2, !dbg !2841
  %320 = load i64, ptr %cur_val442, align 8, !dbg !2841, !tbaa !2182
  %321 = load ptr, ptr %os, align 8, !dbg !2842, !tbaa !898
  %bc443 = getelementptr inbounds %struct.yasm_offset_setter, ptr %321, i32 0, i32 1, !dbg !2843
  %322 = load ptr, ptr %bc443, align 8, !dbg !2843, !tbaa !2177
  %len444 = getelementptr inbounds %struct.yasm_bytecode, ptr %322, i32 0, i32 4, !dbg !2844
  %323 = load i64, ptr %len444, align 8, !dbg !2844, !tbaa !2291
  %add445 = add i64 %320, %323, !dbg !2845
  store i64 %add445, ptr %old_next_offset, align 8, !dbg !2839, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %neg_thres_temp) #6, !dbg !2846
  tail call void @llvm.dbg.declare(metadata ptr %neg_thres_temp, metadata !2134, metadata !DIExpression()), !dbg !2847
  %324 = load i64, ptr %offset_diff, align 8, !dbg !2848, !tbaa !1262
  %cmp446 = icmp slt i64 %324, 0, !dbg !2850
  br i1 %cmp446, label %land.lhs.true447, label %if.end452, !dbg !2851

land.lhs.true447:                                 ; preds = %while.body441
  %325 = load i64, ptr %offset_diff, align 8, !dbg !2852, !tbaa !1262
  %sub448 = sub nsw i64 0, %325, !dbg !2853
  %326 = load ptr, ptr %os, align 8, !dbg !2854, !tbaa !898
  %new_val449 = getelementptr inbounds %struct.yasm_offset_setter, ptr %326, i32 0, i32 3, !dbg !2855
  %327 = load i64, ptr %new_val449, align 8, !dbg !2855, !tbaa !2186
  %cmp450 = icmp ugt i64 %sub448, %327, !dbg !2856
  br i1 %cmp450, label %if.then451, label %if.end452, !dbg !2857

if.then451:                                       ; preds = %land.lhs.true447
  %328 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2858, !tbaa !898
  call void %328(ptr noundef @.str.6, i32 noundef 1553, ptr noundef @.str.17), !dbg !2858
  br label %if.end452, !dbg !2858

if.end452:                                        ; preds = %if.then451, %land.lhs.true447, %while.body441
  %329 = load i64, ptr %offset_diff, align 8, !dbg !2859, !tbaa !1262
  %330 = load ptr, ptr %os, align 8, !dbg !2860, !tbaa !898
  %new_val453 = getelementptr inbounds %struct.yasm_offset_setter, ptr %330, i32 0, i32 3, !dbg !2861
  %331 = load i64, ptr %new_val453, align 8, !dbg !2862, !tbaa !2186
  %add454 = add i64 %331, %329, !dbg !2862
  store i64 %add454, ptr %new_val453, align 8, !dbg !2862, !tbaa !2186
  %332 = load ptr, ptr %os, align 8, !dbg !2863, !tbaa !898
  %bc455 = getelementptr inbounds %struct.yasm_offset_setter, ptr %332, i32 0, i32 1, !dbg !2864
  %333 = load ptr, ptr %bc455, align 8, !dbg !2864, !tbaa !2177
  %len456 = getelementptr inbounds %struct.yasm_bytecode, ptr %333, i32 0, i32 4, !dbg !2865
  %334 = load i64, ptr %len456, align 8, !dbg !2865, !tbaa !2291
  store i64 %334, ptr %orig_len, align 8, !dbg !2866, !tbaa !1262
  %335 = load ptr, ptr %os, align 8, !dbg !2867, !tbaa !898
  %bc457 = getelementptr inbounds %struct.yasm_offset_setter, ptr %335, i32 0, i32 1, !dbg !2868
  %336 = load ptr, ptr %bc457, align 8, !dbg !2868, !tbaa !2177
  %337 = load ptr, ptr %os, align 8, !dbg !2869, !tbaa !898
  %cur_val458 = getelementptr inbounds %struct.yasm_offset_setter, ptr %337, i32 0, i32 2, !dbg !2870
  %338 = load i64, ptr %cur_val458, align 8, !dbg !2870, !tbaa !2182
  %339 = load ptr, ptr %os, align 8, !dbg !2871, !tbaa !898
  %new_val459 = getelementptr inbounds %struct.yasm_offset_setter, ptr %339, i32 0, i32 3, !dbg !2872
  %340 = load i64, ptr %new_val459, align 8, !dbg !2872, !tbaa !2186
  %341 = load ptr, ptr %os, align 8, !dbg !2873, !tbaa !898
  %thres460 = getelementptr inbounds %struct.yasm_offset_setter, ptr %341, i32 0, i32 4, !dbg !2874
  %call461 = call i32 @yasm_bc_expand(ptr noundef %336, i32 noundef 1, i64 noundef %338, i64 noundef %340, ptr noundef %neg_thres_temp, ptr noundef %thres460), !dbg !2875
  store i32 %call461, ptr %retval, align 4, !dbg !2876, !tbaa !1002
  %342 = load ptr, ptr %errwarns.addr, align 8, !dbg !2877, !tbaa !898
  %343 = load ptr, ptr %os, align 8, !dbg !2878, !tbaa !898
  %bc462 = getelementptr inbounds %struct.yasm_offset_setter, ptr %343, i32 0, i32 1, !dbg !2879
  %344 = load ptr, ptr %bc462, align 8, !dbg !2879, !tbaa !2177
  %line463 = getelementptr inbounds %struct.yasm_bytecode, ptr %344, i32 0, i32 6, !dbg !2880
  %345 = load i64, ptr %line463, align 8, !dbg !2880, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %342, i64 noundef %345), !dbg !2881
  %346 = load ptr, ptr %os, align 8, !dbg !2882, !tbaa !898
  %new_val464 = getelementptr inbounds %struct.yasm_offset_setter, ptr %346, i32 0, i32 3, !dbg !2883
  %347 = load i64, ptr %new_val464, align 8, !dbg !2883, !tbaa !2186
  %348 = load ptr, ptr %os, align 8, !dbg !2884, !tbaa !898
  %bc465 = getelementptr inbounds %struct.yasm_offset_setter, ptr %348, i32 0, i32 1, !dbg !2885
  %349 = load ptr, ptr %bc465, align 8, !dbg !2885, !tbaa !2177
  %len466 = getelementptr inbounds %struct.yasm_bytecode, ptr %349, i32 0, i32 4, !dbg !2886
  %350 = load i64, ptr %len466, align 8, !dbg !2886, !tbaa !2291
  %add467 = add i64 %347, %350, !dbg !2887
  %351 = load i64, ptr %old_next_offset, align 8, !dbg !2888, !tbaa !1262
  %sub468 = sub i64 %add467, %351, !dbg !2889
  store i64 %sub468, ptr %offset_diff, align 8, !dbg !2890, !tbaa !1262
  %352 = load ptr, ptr %os, align 8, !dbg !2891, !tbaa !898
  %bc469 = getelementptr inbounds %struct.yasm_offset_setter, ptr %352, i32 0, i32 1, !dbg !2892
  %353 = load ptr, ptr %bc469, align 8, !dbg !2892, !tbaa !2177
  %len470 = getelementptr inbounds %struct.yasm_bytecode, ptr %353, i32 0, i32 4, !dbg !2893
  %354 = load i64, ptr %len470, align 8, !dbg !2893, !tbaa !2291
  %355 = load i64, ptr %orig_len, align 8, !dbg !2894, !tbaa !1262
  %sub471 = sub i64 %354, %355, !dbg !2895
  %len_diff472 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 5, !dbg !2896
  store i64 %sub471, ptr %len_diff472, align 8, !dbg !2897, !tbaa !2803
  %len_diff473 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 5, !dbg !2898
  %356 = load i64, ptr %len_diff473, align 8, !dbg !2898, !tbaa !2803
  %cmp474 = icmp ne i64 %356, 0, !dbg !2900
  br i1 %cmp474, label %if.then475, label %if.end481, !dbg !2901

if.then475:                                       ; preds = %if.end452
  %itree476 = getelementptr inbounds %struct.optimize_data, ptr %optd, i32 0, i32 3, !dbg !2902
  %357 = load ptr, ptr %itree476, align 8, !dbg !2902, !tbaa !2171
  %358 = load ptr, ptr %os, align 8, !dbg !2903, !tbaa !898
  %bc477 = getelementptr inbounds %struct.yasm_offset_setter, ptr %358, i32 0, i32 1, !dbg !2904
  %359 = load ptr, ptr %bc477, align 8, !dbg !2904, !tbaa !2177
  %bc_index478 = getelementptr inbounds %struct.yasm_bytecode, ptr %359, i32 0, i32 8, !dbg !2905
  %360 = load i64, ptr %bc_index478, align 8, !dbg !2905, !tbaa !2210
  %361 = load ptr, ptr %os, align 8, !dbg !2906, !tbaa !898
  %bc479 = getelementptr inbounds %struct.yasm_offset_setter, ptr %361, i32 0, i32 1, !dbg !2907
  %362 = load ptr, ptr %bc479, align 8, !dbg !2907, !tbaa !2177
  %bc_index480 = getelementptr inbounds %struct.yasm_bytecode, ptr %362, i32 0, i32 8, !dbg !2908
  %363 = load i64, ptr %bc_index480, align 8, !dbg !2908, !tbaa !2210
  call void @IT_enumerate(ptr noundef %357, i64 noundef %360, i64 noundef %363, ptr noundef %optd, ptr noundef @optimize_term_expand), !dbg !2909
  br label %if.end481, !dbg !2909

if.end481:                                        ; preds = %if.then475, %if.end452
  %364 = load ptr, ptr %os, align 8, !dbg !2910, !tbaa !898
  %new_val482 = getelementptr inbounds %struct.yasm_offset_setter, ptr %364, i32 0, i32 3, !dbg !2911
  %365 = load i64, ptr %new_val482, align 8, !dbg !2911, !tbaa !2186
  %366 = load ptr, ptr %os, align 8, !dbg !2912, !tbaa !898
  %cur_val483 = getelementptr inbounds %struct.yasm_offset_setter, ptr %366, i32 0, i32 2, !dbg !2913
  store i64 %365, ptr %cur_val483, align 8, !dbg !2914, !tbaa !2182
  %367 = load ptr, ptr %os, align 8, !dbg !2915, !tbaa !898
  %link484 = getelementptr inbounds %struct.yasm_offset_setter, ptr %367, i32 0, i32 0, !dbg !2915
  %stqe_next485 = getelementptr inbounds %struct.anon.2, ptr %link484, i32 0, i32 0, !dbg !2915
  %368 = load ptr, ptr %stqe_next485, align 8, !dbg !2915, !tbaa !2194
  store ptr %368, ptr %os, align 8, !dbg !2916, !tbaa !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %neg_thres_temp) #6, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_next_offset) #6, !dbg !2917
  br label %while.cond431, !dbg !2823, !llvm.loop !2918

while.end486:                                     ; preds = %land.end440
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2702
  br label %cleanup, !dbg !2702

cleanup:                                          ; preds = %while.end486, %if.then422, %if.then381, %if.then364, %if.then359
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset_diff) #6, !dbg !2702
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_len) #6, !dbg !2702
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 44, label %while.cond307
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond307, !dbg !2667, !llvm.loop !2701

while.end488:                                     ; preds = %lor.end
  %369 = load i32, ptr %saw_error, align 4, !dbg !2919, !tbaa !1002
  %tobool489 = icmp ne i32 %369, 0, !dbg !2919
  br i1 %tobool489, label %if.then490, label %if.end491, !dbg !2921

if.then490:                                       ; preds = %while.end488
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup493, !dbg !2924

if.end491:                                        ; preds = %while.end488
  %370 = load ptr, ptr %object.addr, align 8, !dbg !2925, !tbaa !898
  %371 = load ptr, ptr %errwarns.addr, align 8, !dbg !2926, !tbaa !898
  %call492 = call i32 @update_all_bc_offsets(ptr noundef %370, ptr noundef %371), !dbg !2927
  call void @optimize_cleanup(ptr noundef %optd), !dbg !2928
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2929
  br label %cleanup493, !dbg !2929

cleanup493:                                       ; preds = %if.end491, %if.then490, %if.then297, %if.then223, %if.then132, %if.then128, %if.then64
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %os) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %span_temp) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %span) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 96, ptr %optd) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 4, ptr %saw_error) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc_index) #6, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #6, !dbg !2929
  %cleanup.dest502 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest502, label %unreachable [
    i32 0, label %cleanup.cont503
    i32 1, label %cleanup.cont503
  ]

cleanup.cont503:                                  ; preds = %cleanup493, %cleanup493
  ret void, !dbg !2929

unreachable:                                      ; preds = %cleanup493, %cleanup
  unreachable
}

declare !dbg !2930 ptr @IT_create() #2

declare !dbg !2933 i32 @yasm_bc_calc_len(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @optimize_add_span(ptr noundef %add_span_data, ptr noundef %bc, i32 noundef %id, ptr noundef %value, i64 noundef %neg_thres, i64 noundef %pos_thres) #0 !dbg !2934 {
entry:
  %add_span_data.addr = alloca ptr, align 8
  %bc.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %neg_thres.addr = alloca i64, align 8
  %pos_thres.addr = alloca i64, align 8
  %optd = alloca ptr, align 8
  %span = alloca ptr, align 8
  store ptr %add_span_data, ptr %add_span_data.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %add_span_data.addr, metadata !2936, metadata !DIExpression()), !dbg !2944
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2937, metadata !DIExpression()), !dbg !2945
  store i32 %id, ptr %id.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2938, metadata !DIExpression()), !dbg !2946
  store ptr %value, ptr %value.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2939, metadata !DIExpression()), !dbg !2947
  store i64 %neg_thres, ptr %neg_thres.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %neg_thres.addr, metadata !2940, metadata !DIExpression()), !dbg !2948
  store i64 %pos_thres, ptr %pos_thres.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %pos_thres.addr, metadata !2941, metadata !DIExpression()), !dbg !2949
  call void @llvm.lifetime.start.p0(i64 8, ptr %optd) #6, !dbg !2950
  tail call void @llvm.dbg.declare(metadata ptr %optd, metadata !2942, metadata !DIExpression()), !dbg !2951
  %0 = load ptr, ptr %add_span_data.addr, align 8, !dbg !2952, !tbaa !898
  store ptr %0, ptr %optd, align 8, !dbg !2951, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %span) #6, !dbg !2953
  tail call void @llvm.dbg.declare(metadata ptr %span, metadata !2943, metadata !DIExpression()), !dbg !2954
  %1 = load ptr, ptr %bc.addr, align 8, !dbg !2955, !tbaa !898
  %2 = load i32, ptr %id.addr, align 4, !dbg !2956, !tbaa !1002
  %3 = load ptr, ptr %value.addr, align 8, !dbg !2957, !tbaa !898
  %4 = load i64, ptr %neg_thres.addr, align 8, !dbg !2958, !tbaa !1262
  %5 = load i64, ptr %pos_thres.addr, align 8, !dbg !2959, !tbaa !1262
  %6 = load ptr, ptr %optd, align 8, !dbg !2960, !tbaa !898
  %os = getelementptr inbounds %struct.optimize_data, ptr %6, i32 0, i32 7, !dbg !2961
  %7 = load ptr, ptr %os, align 8, !dbg !2961, !tbaa !2198
  %call = call ptr @create_span(ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %7), !dbg !2962
  store ptr %call, ptr %span, align 8, !dbg !2963, !tbaa !898
  br label %do.body, !dbg !2964

do.body:                                          ; preds = %entry
  %8 = load ptr, ptr %span, align 8, !dbg !2965, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_span, ptr %8, i32 0, i32 0, !dbg !2965
  %tqe_next = getelementptr inbounds %struct.anon.3, ptr %link, i32 0, i32 0, !dbg !2965
  store ptr null, ptr %tqe_next, align 8, !dbg !2965, !tbaa !2315
  %9 = load ptr, ptr %optd, align 8, !dbg !2965, !tbaa !898
  %spans = getelementptr inbounds %struct.optimize_data, ptr %9, i32 0, i32 0, !dbg !2965
  %tqh_last = getelementptr inbounds %struct.yasm_span_head, ptr %spans, i32 0, i32 1, !dbg !2965
  %10 = load ptr, ptr %tqh_last, align 8, !dbg !2965, !tbaa !2162
  %11 = load ptr, ptr %span, align 8, !dbg !2965, !tbaa !898
  %link1 = getelementptr inbounds %struct.yasm_span, ptr %11, i32 0, i32 0, !dbg !2965
  %tqe_prev = getelementptr inbounds %struct.anon.3, ptr %link1, i32 0, i32 1, !dbg !2965
  store ptr %10, ptr %tqe_prev, align 8, !dbg !2965, !tbaa !2395
  %12 = load ptr, ptr %span, align 8, !dbg !2965, !tbaa !898
  %13 = load ptr, ptr %optd, align 8, !dbg !2965, !tbaa !898
  %spans2 = getelementptr inbounds %struct.optimize_data, ptr %13, i32 0, i32 0, !dbg !2965
  %tqh_last3 = getelementptr inbounds %struct.yasm_span_head, ptr %spans2, i32 0, i32 1, !dbg !2965
  %14 = load ptr, ptr %tqh_last3, align 8, !dbg !2965, !tbaa !2162
  store ptr %12, ptr %14, align 8, !dbg !2965, !tbaa !898
  %15 = load ptr, ptr %span, align 8, !dbg !2965, !tbaa !898
  %link4 = getelementptr inbounds %struct.yasm_span, ptr %15, i32 0, i32 0, !dbg !2965
  %tqe_next5 = getelementptr inbounds %struct.anon.3, ptr %link4, i32 0, i32 0, !dbg !2965
  %16 = load ptr, ptr %optd, align 8, !dbg !2965, !tbaa !898
  %spans6 = getelementptr inbounds %struct.optimize_data, ptr %16, i32 0, i32 0, !dbg !2965
  %tqh_last7 = getelementptr inbounds %struct.yasm_span_head, ptr %spans6, i32 0, i32 1, !dbg !2965
  store ptr %tqe_next5, ptr %tqh_last7, align 8, !dbg !2965, !tbaa !2162
  br label %do.cond, !dbg !2965

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2965

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %span) #6, !dbg !2967
  call void @llvm.lifetime.end.p0(i64 8, ptr %optd) #6, !dbg !2967
  ret void, !dbg !2967
}

declare !dbg !2968 i64 @yasm_bc_next_offset(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @optimize_cleanup(ptr noundef %optd) #0 !dbg !2971 {
entry:
  %optd.addr = alloca ptr, align 8
  %s1 = alloca ptr, align 8
  %s2 = alloca ptr, align 8
  %os1 = alloca ptr, align 8
  %os2 = alloca ptr, align 8
  store ptr %optd, ptr %optd.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %optd.addr, metadata !2975, metadata !DIExpression()), !dbg !2980
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #6, !dbg !2981
  tail call void @llvm.dbg.declare(metadata ptr %s1, metadata !2976, metadata !DIExpression()), !dbg !2982
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #6, !dbg !2981
  tail call void @llvm.dbg.declare(metadata ptr %s2, metadata !2977, metadata !DIExpression()), !dbg !2983
  call void @llvm.lifetime.start.p0(i64 8, ptr %os1) #6, !dbg !2984
  tail call void @llvm.dbg.declare(metadata ptr %os1, metadata !2978, metadata !DIExpression()), !dbg !2985
  call void @llvm.lifetime.start.p0(i64 8, ptr %os2) #6, !dbg !2984
  tail call void @llvm.dbg.declare(metadata ptr %os2, metadata !2979, metadata !DIExpression()), !dbg !2986
  %0 = load ptr, ptr %optd.addr, align 8, !dbg !2987, !tbaa !898
  %itree = getelementptr inbounds %struct.optimize_data, ptr %0, i32 0, i32 3, !dbg !2988
  %1 = load ptr, ptr %itree, align 8, !dbg !2988, !tbaa !2171
  call void @IT_destroy(ptr noundef %1), !dbg !2989
  %2 = load ptr, ptr %optd.addr, align 8, !dbg !2990, !tbaa !898
  %spans = getelementptr inbounds %struct.optimize_data, ptr %2, i32 0, i32 0, !dbg !2990
  %tqh_first = getelementptr inbounds %struct.yasm_span_head, ptr %spans, i32 0, i32 0, !dbg !2990
  %3 = load ptr, ptr %tqh_first, align 8, !dbg !2990, !tbaa !2157
  store ptr %3, ptr %s1, align 8, !dbg !2991, !tbaa !898
  br label %while.cond, !dbg !2992

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %s1, align 8, !dbg !2993, !tbaa !898
  %tobool = icmp ne ptr %4, null, !dbg !2992
  br i1 %tobool, label %while.body, label %while.end, !dbg !2992

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %s1, align 8, !dbg !2994, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_span, ptr %5, i32 0, i32 0, !dbg !2994
  %tqe_next = getelementptr inbounds %struct.anon.3, ptr %link, i32 0, i32 0, !dbg !2994
  %6 = load ptr, ptr %tqe_next, align 8, !dbg !2994, !tbaa !2315
  store ptr %6, ptr %s2, align 8, !dbg !2996, !tbaa !898
  %7 = load ptr, ptr %s1, align 8, !dbg !2997, !tbaa !898
  call void @span_destroy(ptr noundef %7), !dbg !2998
  %8 = load ptr, ptr %s2, align 8, !dbg !2999, !tbaa !898
  store ptr %8, ptr %s1, align 8, !dbg !3000, !tbaa !898
  br label %while.cond, !dbg !2992, !llvm.loop !3001

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %optd.addr, align 8, !dbg !3003, !tbaa !898
  %offset_setters = getelementptr inbounds %struct.optimize_data, ptr %9, i32 0, i32 4, !dbg !3003
  %stqh_first = getelementptr inbounds %struct.offset_setters_head, ptr %offset_setters, i32 0, i32 0, !dbg !3003
  %10 = load ptr, ptr %stqh_first, align 8, !dbg !3003, !tbaa !2166
  store ptr %10, ptr %os1, align 8, !dbg !3004, !tbaa !898
  br label %while.cond1, !dbg !3005

while.cond1:                                      ; preds = %while.body3, %while.end
  %11 = load ptr, ptr %os1, align 8, !dbg !3006, !tbaa !898
  %tobool2 = icmp ne ptr %11, null, !dbg !3005
  br i1 %tobool2, label %while.body3, label %while.end5, !dbg !3005

while.body3:                                      ; preds = %while.cond1
  %12 = load ptr, ptr %os1, align 8, !dbg !3007, !tbaa !898
  %link4 = getelementptr inbounds %struct.yasm_offset_setter, ptr %12, i32 0, i32 0, !dbg !3007
  %stqe_next = getelementptr inbounds %struct.anon.2, ptr %link4, i32 0, i32 0, !dbg !3007
  %13 = load ptr, ptr %stqe_next, align 8, !dbg !3007, !tbaa !2194
  store ptr %13, ptr %os2, align 8, !dbg !3009, !tbaa !898
  %14 = load ptr, ptr @yasm_xfree, align 8, !dbg !3010, !tbaa !898
  %15 = load ptr, ptr %os1, align 8, !dbg !3011, !tbaa !898
  call void %14(ptr noundef %15), !dbg !3010
  %16 = load ptr, ptr %os2, align 8, !dbg !3012, !tbaa !898
  store ptr %16, ptr %os1, align 8, !dbg !3013, !tbaa !898
  br label %while.cond1, !dbg !3005, !llvm.loop !3014

while.end5:                                       ; preds = %while.cond1
  call void @llvm.lifetime.end.p0(i64 8, ptr %os2) #6, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 8, ptr %os1) #6, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #6, !dbg !3016
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #6, !dbg !3016
  ret void, !dbg !3016
}

; Function Attrs: nounwind uwtable
define internal void @span_create_terms(ptr noundef %span) #0 !dbg !3017 {
entry:
  %span.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rel_precbc = alloca ptr, align 8
  %sym_local = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %span, ptr %span.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %span.addr, metadata !3021, metadata !DIExpression()), !dbg !3027
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !3028
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3022, metadata !DIExpression()), !dbg !3029
  %0 = load ptr, ptr %span.addr, align 8, !dbg !3030, !tbaa !898
  %depval = getelementptr inbounds %struct.yasm_span, ptr %0, i32 0, i32 3, !dbg !3032
  %abs = getelementptr inbounds %struct.yasm_value, ptr %depval, i32 0, i32 0, !dbg !3033
  %1 = load ptr, ptr %abs, align 8, !dbg !3033, !tbaa !3034
  %tobool = icmp ne ptr %1, null, !dbg !3030
  br i1 %tobool, label %if.then, label %if.end52, !dbg !3035

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %span.addr, align 8, !dbg !3036, !tbaa !898
  %depval1 = getelementptr inbounds %struct.yasm_span, ptr %2, i32 0, i32 3, !dbg !3038
  %abs2 = getelementptr inbounds %struct.yasm_value, ptr %depval1, i32 0, i32 0, !dbg !3039
  %3 = load ptr, ptr %span.addr, align 8, !dbg !3040, !tbaa !898
  %call = call i32 @yasm_expr__bc_dist_subst(ptr noundef %abs2, ptr noundef %3, ptr noundef @add_span_term), !dbg !3041
  %4 = load ptr, ptr %span.addr, align 8, !dbg !3042, !tbaa !898
  %num_terms = getelementptr inbounds %struct.yasm_span, ptr %4, i32 0, i32 7, !dbg !3043
  store i32 %call, ptr %num_terms, align 8, !dbg !3044, !tbaa !2440
  %5 = load ptr, ptr %span.addr, align 8, !dbg !3045, !tbaa !898
  %num_terms3 = getelementptr inbounds %struct.yasm_span, ptr %5, i32 0, i32 7, !dbg !3047
  %6 = load i32, ptr %num_terms3, align 8, !dbg !3047, !tbaa !2440
  %cmp = icmp ugt i32 %6, 0, !dbg !3048
  br i1 %cmp, label %if.then4, label %if.end51, !dbg !3049

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !3050, !tbaa !898
  %8 = load ptr, ptr %span.addr, align 8, !dbg !3052, !tbaa !898
  %num_terms5 = getelementptr inbounds %struct.yasm_span, ptr %8, i32 0, i32 7, !dbg !3053
  %9 = load i32, ptr %num_terms5, align 8, !dbg !3053, !tbaa !2440
  %conv = zext i32 %9 to i64, !dbg !3052
  %mul = mul i64 %conv, 16, !dbg !3054
  %call6 = call ptr %7(i64 noundef %mul), !dbg !3050
  %10 = load ptr, ptr %span.addr, align 8, !dbg !3055, !tbaa !898
  %items = getelementptr inbounds %struct.yasm_span, ptr %10, i32 0, i32 6, !dbg !3056
  store ptr %call6, ptr %items, align 8, !dbg !3057, !tbaa !3058
  store i32 0, ptr %i, align 4, !dbg !3059, !tbaa !1002
  br label %for.cond, !dbg !3061

for.cond:                                         ; preds = %for.inc, %if.then4
  %11 = load i32, ptr %i, align 4, !dbg !3062, !tbaa !1002
  %12 = load ptr, ptr %span.addr, align 8, !dbg !3064, !tbaa !898
  %num_terms7 = getelementptr inbounds %struct.yasm_span, ptr %12, i32 0, i32 7, !dbg !3065
  %13 = load i32, ptr %num_terms7, align 8, !dbg !3065, !tbaa !2440
  %cmp8 = icmp ult i32 %11, %13, !dbg !3066
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3067

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %span.addr, align 8, !dbg !3068, !tbaa !898
  %items10 = getelementptr inbounds %struct.yasm_span, ptr %14, i32 0, i32 6, !dbg !3070
  %15 = load ptr, ptr %items10, align 8, !dbg !3070, !tbaa !3058
  %16 = load i32, ptr %i, align 4, !dbg !3071, !tbaa !1002
  %idxprom = zext i32 %16 to i64, !dbg !3068
  %arrayidx = getelementptr inbounds %struct.yasm_expr__item, ptr %15, i64 %idxprom, !dbg !3068
  %type = getelementptr inbounds %struct.yasm_expr__item, ptr %arrayidx, i32 0, i32 0, !dbg !3072
  store i32 2, ptr %type, align 8, !dbg !3073, !tbaa !3074
  %call11 = call ptr @yasm_intnum_create_int(i64 noundef 0), !dbg !3076
  %17 = load ptr, ptr %span.addr, align 8, !dbg !3077, !tbaa !898
  %items12 = getelementptr inbounds %struct.yasm_span, ptr %17, i32 0, i32 6, !dbg !3078
  %18 = load ptr, ptr %items12, align 8, !dbg !3078, !tbaa !3058
  %19 = load i32, ptr %i, align 4, !dbg !3079, !tbaa !1002
  %idxprom13 = zext i32 %19 to i64, !dbg !3077
  %arrayidx14 = getelementptr inbounds %struct.yasm_expr__item, ptr %18, i64 %idxprom13, !dbg !3077
  %data = getelementptr inbounds %struct.yasm_expr__item, ptr %arrayidx14, i32 0, i32 1, !dbg !3080
  store ptr %call11, ptr %data, align 8, !dbg !3081, !tbaa !2325
  %20 = load ptr, ptr %span.addr, align 8, !dbg !3082, !tbaa !898
  %id = getelementptr inbounds %struct.yasm_span, ptr %20, i32 0, i32 12, !dbg !3084
  %21 = load i32, ptr %id, align 8, !dbg !3084, !tbaa !2345
  %cmp15 = icmp sle i32 %21, 0, !dbg !3085
  br i1 %cmp15, label %land.lhs.true, label %if.end, !dbg !3086

land.lhs.true:                                    ; preds = %for.body
  %22 = load ptr, ptr %span.addr, align 8, !dbg !3087, !tbaa !898
  %bc = getelementptr inbounds %struct.yasm_span, ptr %22, i32 0, i32 2, !dbg !3088
  %23 = load ptr, ptr %bc, align 8, !dbg !3088, !tbaa !2331
  %bc_index = getelementptr inbounds %struct.yasm_bytecode, ptr %23, i32 0, i32 8, !dbg !3089
  %24 = load i64, ptr %bc_index, align 8, !dbg !3089, !tbaa !2210
  %25 = load ptr, ptr %span.addr, align 8, !dbg !3090, !tbaa !898
  %terms = getelementptr inbounds %struct.yasm_span, ptr %25, i32 0, i32 5, !dbg !3091
  %26 = load ptr, ptr %terms, align 8, !dbg !3091, !tbaa !2446
  %27 = load i32, ptr %i, align 4, !dbg !3092, !tbaa !1002
  %idxprom17 = zext i32 %27 to i64, !dbg !3090
  %arrayidx18 = getelementptr inbounds %struct.yasm_span_term, ptr %26, i64 %idxprom17, !dbg !3090
  %precbc = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx18, i32 0, i32 0, !dbg !3093
  %28 = load ptr, ptr %precbc, align 8, !dbg !3093, !tbaa !2449
  %bc_index19 = getelementptr inbounds %struct.yasm_bytecode, ptr %28, i32 0, i32 8, !dbg !3094
  %29 = load i64, ptr %bc_index19, align 8, !dbg !3094, !tbaa !2210
  %cmp20 = icmp ugt i64 %24, %29, !dbg !3095
  br i1 %cmp20, label %land.lhs.true22, label %lor.lhs.false, !dbg !3096

land.lhs.true22:                                  ; preds = %land.lhs.true
  %30 = load ptr, ptr %span.addr, align 8, !dbg !3097, !tbaa !898
  %bc23 = getelementptr inbounds %struct.yasm_span, ptr %30, i32 0, i32 2, !dbg !3098
  %31 = load ptr, ptr %bc23, align 8, !dbg !3098, !tbaa !2331
  %bc_index24 = getelementptr inbounds %struct.yasm_bytecode, ptr %31, i32 0, i32 8, !dbg !3099
  %32 = load i64, ptr %bc_index24, align 8, !dbg !3099, !tbaa !2210
  %33 = load ptr, ptr %span.addr, align 8, !dbg !3100, !tbaa !898
  %terms25 = getelementptr inbounds %struct.yasm_span, ptr %33, i32 0, i32 5, !dbg !3101
  %34 = load ptr, ptr %terms25, align 8, !dbg !3101, !tbaa !2446
  %35 = load i32, ptr %i, align 4, !dbg !3102, !tbaa !1002
  %idxprom26 = zext i32 %35 to i64, !dbg !3100
  %arrayidx27 = getelementptr inbounds %struct.yasm_span_term, ptr %34, i64 %idxprom26, !dbg !3100
  %precbc2 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx27, i32 0, i32 1, !dbg !3103
  %36 = load ptr, ptr %precbc2, align 8, !dbg !3103, !tbaa !2455
  %bc_index28 = getelementptr inbounds %struct.yasm_bytecode, ptr %36, i32 0, i32 8, !dbg !3104
  %37 = load i64, ptr %bc_index28, align 8, !dbg !3104, !tbaa !2210
  %cmp29 = icmp ule i64 %32, %37, !dbg !3105
  br i1 %cmp29, label %if.then50, label %lor.lhs.false, !dbg !3106

lor.lhs.false:                                    ; preds = %land.lhs.true22, %land.lhs.true
  %38 = load ptr, ptr %span.addr, align 8, !dbg !3107, !tbaa !898
  %bc31 = getelementptr inbounds %struct.yasm_span, ptr %38, i32 0, i32 2, !dbg !3108
  %39 = load ptr, ptr %bc31, align 8, !dbg !3108, !tbaa !2331
  %bc_index32 = getelementptr inbounds %struct.yasm_bytecode, ptr %39, i32 0, i32 8, !dbg !3109
  %40 = load i64, ptr %bc_index32, align 8, !dbg !3109, !tbaa !2210
  %41 = load ptr, ptr %span.addr, align 8, !dbg !3110, !tbaa !898
  %terms33 = getelementptr inbounds %struct.yasm_span, ptr %41, i32 0, i32 5, !dbg !3111
  %42 = load ptr, ptr %terms33, align 8, !dbg !3111, !tbaa !2446
  %43 = load i32, ptr %i, align 4, !dbg !3112, !tbaa !1002
  %idxprom34 = zext i32 %43 to i64, !dbg !3110
  %arrayidx35 = getelementptr inbounds %struct.yasm_span_term, ptr %42, i64 %idxprom34, !dbg !3110
  %precbc236 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx35, i32 0, i32 1, !dbg !3113
  %44 = load ptr, ptr %precbc236, align 8, !dbg !3113, !tbaa !2455
  %bc_index37 = getelementptr inbounds %struct.yasm_bytecode, ptr %44, i32 0, i32 8, !dbg !3114
  %45 = load i64, ptr %bc_index37, align 8, !dbg !3114, !tbaa !2210
  %cmp38 = icmp ugt i64 %40, %45, !dbg !3115
  br i1 %cmp38, label %land.lhs.true40, label %if.end, !dbg !3116

land.lhs.true40:                                  ; preds = %lor.lhs.false
  %46 = load ptr, ptr %span.addr, align 8, !dbg !3117, !tbaa !898
  %bc41 = getelementptr inbounds %struct.yasm_span, ptr %46, i32 0, i32 2, !dbg !3118
  %47 = load ptr, ptr %bc41, align 8, !dbg !3118, !tbaa !2331
  %bc_index42 = getelementptr inbounds %struct.yasm_bytecode, ptr %47, i32 0, i32 8, !dbg !3119
  %48 = load i64, ptr %bc_index42, align 8, !dbg !3119, !tbaa !2210
  %49 = load ptr, ptr %span.addr, align 8, !dbg !3120, !tbaa !898
  %terms43 = getelementptr inbounds %struct.yasm_span, ptr %49, i32 0, i32 5, !dbg !3121
  %50 = load ptr, ptr %terms43, align 8, !dbg !3121, !tbaa !2446
  %51 = load i32, ptr %i, align 4, !dbg !3122, !tbaa !1002
  %idxprom44 = zext i32 %51 to i64, !dbg !3120
  %arrayidx45 = getelementptr inbounds %struct.yasm_span_term, ptr %50, i64 %idxprom44, !dbg !3120
  %precbc46 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx45, i32 0, i32 0, !dbg !3123
  %52 = load ptr, ptr %precbc46, align 8, !dbg !3123, !tbaa !2449
  %bc_index47 = getelementptr inbounds %struct.yasm_bytecode, ptr %52, i32 0, i32 8, !dbg !3124
  %53 = load i64, ptr %bc_index47, align 8, !dbg !3124, !tbaa !2210
  %cmp48 = icmp ule i64 %48, %53, !dbg !3125
  br i1 %cmp48, label %if.then50, label %if.end, !dbg !3126

if.then50:                                        ; preds = %land.lhs.true40, %land.lhs.true22
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 4, ptr noundef @.str.32), !dbg !3127
  br label %if.end, !dbg !3127

if.end:                                           ; preds = %if.then50, %land.lhs.true40, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !3128

for.inc:                                          ; preds = %if.end
  %54 = load i32, ptr %i, align 4, !dbg !3129, !tbaa !1002
  %inc = add i32 %54, 1, !dbg !3129
  store i32 %inc, ptr %i, align 4, !dbg !3129, !tbaa !1002
  br label %for.cond, !dbg !3130, !llvm.loop !3131

for.end:                                          ; preds = %for.cond
  br label %if.end51, !dbg !3133

if.end51:                                         ; preds = %for.end, %if.then
  br label %if.end52, !dbg !3134

if.end52:                                         ; preds = %if.end51, %entry
  %55 = load ptr, ptr %span.addr, align 8, !dbg !3135, !tbaa !898
  %depval53 = getelementptr inbounds %struct.yasm_span, ptr %55, i32 0, i32 3, !dbg !3136
  %rel = getelementptr inbounds %struct.yasm_value, ptr %depval53, i32 0, i32 1, !dbg !3137
  %56 = load ptr, ptr %rel, align 8, !dbg !3137, !tbaa !3138
  %tobool54 = icmp ne ptr %56, null, !dbg !3135
  br i1 %tobool54, label %if.then55, label %if.end99, !dbg !3139

if.then55:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel_precbc) #6, !dbg !3140
  tail call void @llvm.dbg.declare(metadata ptr %rel_precbc, metadata !3023, metadata !DIExpression()), !dbg !3141
  call void @llvm.lifetime.start.p0(i64 4, ptr %sym_local) #6, !dbg !3142
  tail call void @llvm.dbg.declare(metadata ptr %sym_local, metadata !3026, metadata !DIExpression()), !dbg !3143
  %57 = load ptr, ptr %span.addr, align 8, !dbg !3144, !tbaa !898
  %depval56 = getelementptr inbounds %struct.yasm_span, ptr %57, i32 0, i32 3, !dbg !3145
  %rel57 = getelementptr inbounds %struct.yasm_value, ptr %depval56, i32 0, i32 1, !dbg !3146
  %58 = load ptr, ptr %rel57, align 8, !dbg !3146, !tbaa !3138
  %call58 = call i32 @yasm_symrec_get_label(ptr noundef %58, ptr noundef %rel_precbc), !dbg !3147
  store i32 %call58, ptr %sym_local, align 4, !dbg !3148, !tbaa !1002
  %59 = load ptr, ptr %span.addr, align 8, !dbg !3149, !tbaa !898
  %depval59 = getelementptr inbounds %struct.yasm_span, ptr %59, i32 0, i32 3, !dbg !3151
  %wrt = getelementptr inbounds %struct.yasm_value, ptr %depval59, i32 0, i32 2, !dbg !3152
  %60 = load ptr, ptr %wrt, align 8, !dbg !3152, !tbaa !3153
  %tobool60 = icmp ne ptr %60, null, !dbg !3149
  br i1 %tobool60, label %if.then71, label %lor.lhs.false61, !dbg !3154

lor.lhs.false61:                                  ; preds = %if.then55
  %61 = load ptr, ptr %span.addr, align 8, !dbg !3155, !tbaa !898
  %depval62 = getelementptr inbounds %struct.yasm_span, ptr %61, i32 0, i32 3, !dbg !3156
  %seg_of = getelementptr inbounds %struct.yasm_value, ptr %depval62, i32 0, i32 3, !dbg !3157
  %bf.load = load i32, ptr %seg_of, align 8, !dbg !3157
  %bf.clear = and i32 %bf.load, 1, !dbg !3157
  %tobool63 = icmp ne i32 %bf.clear, 0, !dbg !3155
  br i1 %tobool63, label %if.then71, label %lor.lhs.false64, !dbg !3158

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %62 = load ptr, ptr %span.addr, align 8, !dbg !3159, !tbaa !898
  %depval65 = getelementptr inbounds %struct.yasm_span, ptr %62, i32 0, i32 3, !dbg !3160
  %section_rel = getelementptr inbounds %struct.yasm_value, ptr %depval65, i32 0, i32 3, !dbg !3161
  %bf.load66 = load i32, ptr %section_rel, align 8, !dbg !3161
  %bf.lshr = lshr i32 %bf.load66, 11, !dbg !3161
  %bf.clear67 = and i32 %bf.lshr, 1, !dbg !3161
  %tobool68 = icmp ne i32 %bf.clear67, 0, !dbg !3159
  br i1 %tobool68, label %if.then71, label %lor.lhs.false69, !dbg !3162

lor.lhs.false69:                                  ; preds = %lor.lhs.false64
  %63 = load i32, ptr %sym_local, align 4, !dbg !3163, !tbaa !1002
  %tobool70 = icmp ne i32 %63, 0, !dbg !3163
  br i1 %tobool70, label %if.end72, label %if.then71, !dbg !3164

if.then71:                                        ; preds = %lor.lhs.false69, %lor.lhs.false64, %lor.lhs.false61, %if.then55
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3165

if.end72:                                         ; preds = %lor.lhs.false69
  %64 = load ptr, ptr %rel_precbc, align 8, !dbg !3166, !tbaa !898
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %64, i32 0, i32 2, !dbg !3168
  %65 = load ptr, ptr %section, align 8, !dbg !3168, !tbaa !1328
  %66 = load ptr, ptr %span.addr, align 8, !dbg !3169, !tbaa !898
  %bc73 = getelementptr inbounds %struct.yasm_span, ptr %66, i32 0, i32 2, !dbg !3170
  %67 = load ptr, ptr %bc73, align 8, !dbg !3170, !tbaa !2331
  %section74 = getelementptr inbounds %struct.yasm_bytecode, ptr %67, i32 0, i32 2, !dbg !3171
  %68 = load ptr, ptr %section74, align 8, !dbg !3171, !tbaa !1328
  %cmp75 = icmp ne ptr %65, %68, !dbg !3172
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !3173

if.then77:                                        ; preds = %if.end72
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3174

if.end78:                                         ; preds = %if.end72
  %69 = load ptr, ptr %span.addr, align 8, !dbg !3175, !tbaa !898
  %depval79 = getelementptr inbounds %struct.yasm_span, ptr %69, i32 0, i32 3, !dbg !3177
  %curpos_rel = getelementptr inbounds %struct.yasm_value, ptr %depval79, i32 0, i32 3, !dbg !3178
  %bf.load80 = load i32, ptr %curpos_rel, align 8, !dbg !3178
  %bf.lshr81 = lshr i32 %bf.load80, 8, !dbg !3178
  %bf.clear82 = and i32 %bf.lshr81, 1, !dbg !3178
  %tobool83 = icmp ne i32 %bf.clear82, 0, !dbg !3175
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !3179

if.then84:                                        ; preds = %if.end78
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3180

if.end85:                                         ; preds = %if.end78
  %70 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !3181, !tbaa !898
  %call86 = call ptr %70(i64 noundef 48), !dbg !3181
  %71 = load ptr, ptr %span.addr, align 8, !dbg !3182, !tbaa !898
  %rel_term = getelementptr inbounds %struct.yasm_span, ptr %71, i32 0, i32 4, !dbg !3183
  store ptr %call86, ptr %rel_term, align 8, !dbg !3184, !tbaa !2490
  %72 = load ptr, ptr %span.addr, align 8, !dbg !3185, !tbaa !898
  %rel_term87 = getelementptr inbounds %struct.yasm_span, ptr %72, i32 0, i32 4, !dbg !3186
  %73 = load ptr, ptr %rel_term87, align 8, !dbg !3186, !tbaa !2490
  %precbc88 = getelementptr inbounds %struct.yasm_span_term, ptr %73, i32 0, i32 0, !dbg !3187
  store ptr null, ptr %precbc88, align 8, !dbg !3188, !tbaa !2449
  %74 = load ptr, ptr %rel_precbc, align 8, !dbg !3189, !tbaa !898
  %75 = load ptr, ptr %span.addr, align 8, !dbg !3190, !tbaa !898
  %rel_term89 = getelementptr inbounds %struct.yasm_span, ptr %75, i32 0, i32 4, !dbg !3191
  %76 = load ptr, ptr %rel_term89, align 8, !dbg !3191, !tbaa !2490
  %precbc290 = getelementptr inbounds %struct.yasm_span_term, ptr %76, i32 0, i32 1, !dbg !3192
  store ptr %74, ptr %precbc290, align 8, !dbg !3193, !tbaa !2455
  %77 = load ptr, ptr %span.addr, align 8, !dbg !3194, !tbaa !898
  %78 = load ptr, ptr %span.addr, align 8, !dbg !3195, !tbaa !898
  %rel_term91 = getelementptr inbounds %struct.yasm_span, ptr %78, i32 0, i32 4, !dbg !3196
  %79 = load ptr, ptr %rel_term91, align 8, !dbg !3196, !tbaa !2490
  %span92 = getelementptr inbounds %struct.yasm_span_term, ptr %79, i32 0, i32 2, !dbg !3197
  store ptr %77, ptr %span92, align 8, !dbg !3198, !tbaa !3199
  %80 = load ptr, ptr %span.addr, align 8, !dbg !3200, !tbaa !898
  %rel_term93 = getelementptr inbounds %struct.yasm_span, ptr %80, i32 0, i32 4, !dbg !3201
  %81 = load ptr, ptr %rel_term93, align 8, !dbg !3201, !tbaa !2490
  %subst = getelementptr inbounds %struct.yasm_span_term, ptr %81, i32 0, i32 5, !dbg !3202
  store i32 -1, ptr %subst, align 8, !dbg !3203, !tbaa !3204
  %82 = load ptr, ptr %span.addr, align 8, !dbg !3205, !tbaa !898
  %rel_term94 = getelementptr inbounds %struct.yasm_span, ptr %82, i32 0, i32 4, !dbg !3206
  %83 = load ptr, ptr %rel_term94, align 8, !dbg !3206, !tbaa !2490
  %cur_val = getelementptr inbounds %struct.yasm_span_term, ptr %83, i32 0, i32 3, !dbg !3207
  store i64 0, ptr %cur_val, align 8, !dbg !3208, !tbaa !2472
  %84 = load ptr, ptr %rel_precbc, align 8, !dbg !3209, !tbaa !898
  %call95 = call i64 @yasm_bc_next_offset(ptr noundef %84), !dbg !3210
  %85 = load ptr, ptr %span.addr, align 8, !dbg !3211, !tbaa !898
  %bc96 = getelementptr inbounds %struct.yasm_span, ptr %85, i32 0, i32 2, !dbg !3212
  %86 = load ptr, ptr %bc96, align 8, !dbg !3212, !tbaa !2331
  %offset = getelementptr inbounds %struct.yasm_bytecode, ptr %86, i32 0, i32 7, !dbg !3213
  %87 = load i64, ptr %offset, align 8, !dbg !3213, !tbaa !1333
  %sub = sub i64 %call95, %87, !dbg !3214
  %88 = load ptr, ptr %span.addr, align 8, !dbg !3215, !tbaa !898
  %rel_term97 = getelementptr inbounds %struct.yasm_span, ptr %88, i32 0, i32 4, !dbg !3216
  %89 = load ptr, ptr %rel_term97, align 8, !dbg !3216, !tbaa !2490
  %new_val = getelementptr inbounds %struct.yasm_span_term, ptr %89, i32 0, i32 4, !dbg !3217
  store i64 %sub, ptr %new_val, align 8, !dbg !3218, !tbaa !2466
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3219
  br label %cleanup, !dbg !3219

cleanup:                                          ; preds = %if.end85, %if.then84, %if.then77, %if.then71
  call void @llvm.lifetime.end.p0(i64 4, ptr %sym_local) #6, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel_precbc) #6, !dbg !3219
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end99, !dbg !3220

if.end99:                                         ; preds = %cleanup.cont, %if.end52
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3221
  br label %cleanup100, !dbg !3221

cleanup100:                                       ; preds = %if.end99, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !3221
  %cleanup.dest101 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest101, label %unreachable [
    i32 0, label %cleanup.cont102
    i32 1, label %cleanup.cont102
  ]

cleanup.cont102:                                  ; preds = %cleanup100, %cleanup100
  ret void, !dbg !3221

unreachable:                                      ; preds = %cleanup100
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @recalc_normal_span(ptr noundef %span) #0 !dbg !3222 {
entry:
  %retval = alloca i32, align 4
  %span.addr = alloca ptr, align 8
  %abs_copy = alloca ptr, align 8
  %num = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %span, ptr %span.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %span.addr, metadata !3226, metadata !DIExpression()), !dbg !3232
  %0 = load ptr, ptr %span.addr, align 8, !dbg !3233, !tbaa !898
  %new_val = getelementptr inbounds %struct.yasm_span, ptr %0, i32 0, i32 9, !dbg !3234
  store i64 0, ptr %new_val, align 8, !dbg !3235, !tbaa !2351
  %1 = load ptr, ptr %span.addr, align 8, !dbg !3236, !tbaa !898
  %depval = getelementptr inbounds %struct.yasm_span, ptr %1, i32 0, i32 3, !dbg !3237
  %abs = getelementptr inbounds %struct.yasm_value, ptr %depval, i32 0, i32 0, !dbg !3238
  %2 = load ptr, ptr %abs, align 8, !dbg !3238, !tbaa !3034
  %tobool = icmp ne ptr %2, null, !dbg !3236
  br i1 %tobool, label %if.then, label %if.end15, !dbg !3239

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %abs_copy) #6, !dbg !3240
  tail call void @llvm.dbg.declare(metadata ptr %abs_copy, metadata !3227, metadata !DIExpression()), !dbg !3241
  %3 = load ptr, ptr %span.addr, align 8, !dbg !3242, !tbaa !898
  %depval1 = getelementptr inbounds %struct.yasm_span, ptr %3, i32 0, i32 3, !dbg !3242
  %abs2 = getelementptr inbounds %struct.yasm_value, ptr %depval1, i32 0, i32 0, !dbg !3242
  %4 = load ptr, ptr %abs2, align 8, !dbg !3242, !tbaa !3034
  %call = call ptr @yasm_expr__copy_except(ptr noundef %4, i32 noundef -1), !dbg !3242
  store ptr %call, ptr %abs_copy, align 8, !dbg !3241, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #6, !dbg !3243
  tail call void @llvm.dbg.declare(metadata ptr %num, metadata !3230, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !3245
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3231, metadata !DIExpression()), !dbg !3246
  store i32 0, ptr %i, align 4, !dbg !3247, !tbaa !1002
  br label %for.cond, !dbg !3249

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4, !dbg !3250, !tbaa !1002
  %6 = load ptr, ptr %span.addr, align 8, !dbg !3252, !tbaa !898
  %num_terms = getelementptr inbounds %struct.yasm_span, ptr %6, i32 0, i32 7, !dbg !3253
  %7 = load i32, ptr %num_terms, align 8, !dbg !3253, !tbaa !2440
  %cmp = icmp ult i32 %5, %7, !dbg !3254
  br i1 %cmp, label %for.body, label %for.end, !dbg !3255

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %span.addr, align 8, !dbg !3256, !tbaa !898
  %items = getelementptr inbounds %struct.yasm_span, ptr %8, i32 0, i32 6, !dbg !3257
  %9 = load ptr, ptr %items, align 8, !dbg !3257, !tbaa !3058
  %10 = load i32, ptr %i, align 4, !dbg !3258, !tbaa !1002
  %idxprom = zext i32 %10 to i64, !dbg !3256
  %arrayidx = getelementptr inbounds %struct.yasm_expr__item, ptr %9, i64 %idxprom, !dbg !3256
  %data = getelementptr inbounds %struct.yasm_expr__item, ptr %arrayidx, i32 0, i32 1, !dbg !3259
  %11 = load ptr, ptr %data, align 8, !dbg !3260, !tbaa !2325
  %12 = load ptr, ptr %span.addr, align 8, !dbg !3261, !tbaa !898
  %terms = getelementptr inbounds %struct.yasm_span, ptr %12, i32 0, i32 5, !dbg !3262
  %13 = load ptr, ptr %terms, align 8, !dbg !3262, !tbaa !2446
  %14 = load i32, ptr %i, align 4, !dbg !3263, !tbaa !1002
  %idxprom3 = zext i32 %14 to i64, !dbg !3261
  %arrayidx4 = getelementptr inbounds %struct.yasm_span_term, ptr %13, i64 %idxprom3, !dbg !3261
  %new_val5 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx4, i32 0, i32 4, !dbg !3264
  %15 = load i64, ptr %new_val5, align 8, !dbg !3264, !tbaa !2466
  call void @yasm_intnum_set_int(ptr noundef %11, i64 noundef %15), !dbg !3265
  br label %for.inc, !dbg !3265

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !3266, !tbaa !1002
  %inc = add i32 %16, 1, !dbg !3266
  store i32 %inc, ptr %i, align 4, !dbg !3266, !tbaa !1002
  br label %for.cond, !dbg !3267, !llvm.loop !3268

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %abs_copy, align 8, !dbg !3270, !tbaa !898
  %18 = load ptr, ptr %span.addr, align 8, !dbg !3271, !tbaa !898
  %num_terms6 = getelementptr inbounds %struct.yasm_span, ptr %18, i32 0, i32 7, !dbg !3272
  %19 = load i32, ptr %num_terms6, align 8, !dbg !3272, !tbaa !2440
  %20 = load ptr, ptr %span.addr, align 8, !dbg !3273, !tbaa !898
  %items7 = getelementptr inbounds %struct.yasm_span, ptr %20, i32 0, i32 6, !dbg !3274
  %21 = load ptr, ptr %items7, align 8, !dbg !3274, !tbaa !3058
  %call8 = call i32 @yasm_expr__subst(ptr noundef %17, i32 noundef %19, ptr noundef %21), !dbg !3275
  %call9 = call ptr @yasm_expr_get_intnum(ptr noundef %abs_copy, i32 noundef 0), !dbg !3276
  store ptr %call9, ptr %num, align 8, !dbg !3277, !tbaa !898
  %22 = load ptr, ptr %num, align 8, !dbg !3278, !tbaa !898
  %tobool10 = icmp ne ptr %22, null, !dbg !3278
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !3280

if.then11:                                        ; preds = %for.end
  %23 = load ptr, ptr %num, align 8, !dbg !3281, !tbaa !898
  %call12 = call i64 @yasm_intnum_get_int(ptr noundef %23), !dbg !3282
  %24 = load ptr, ptr %span.addr, align 8, !dbg !3283, !tbaa !898
  %new_val13 = getelementptr inbounds %struct.yasm_span, ptr %24, i32 0, i32 9, !dbg !3284
  store i64 %call12, ptr %new_val13, align 8, !dbg !3285, !tbaa !2351
  br label %if.end, !dbg !3283

if.else:                                          ; preds = %for.end
  %25 = load ptr, ptr %span.addr, align 8, !dbg !3286, !tbaa !898
  %new_val14 = getelementptr inbounds %struct.yasm_span, ptr %25, i32 0, i32 9, !dbg !3287
  store i64 9223372036854775807, ptr %new_val14, align 8, !dbg !3288, !tbaa !2351
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  %26 = load ptr, ptr %abs_copy, align 8, !dbg !3289, !tbaa !898
  call void @yasm_expr_destroy(ptr noundef %26), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %abs_copy) #6, !dbg !3291
  br label %if.end15, !dbg !3292

if.end15:                                         ; preds = %if.end, %entry
  %27 = load ptr, ptr %span.addr, align 8, !dbg !3293, !tbaa !898
  %rel_term = getelementptr inbounds %struct.yasm_span, ptr %27, i32 0, i32 4, !dbg !3295
  %28 = load ptr, ptr %rel_term, align 8, !dbg !3295, !tbaa !2490
  %tobool16 = icmp ne ptr %28, null, !dbg !3293
  br i1 %tobool16, label %if.then17, label %if.else31, !dbg !3296

if.then17:                                        ; preds = %if.end15
  %29 = load ptr, ptr %span.addr, align 8, !dbg !3297, !tbaa !898
  %new_val18 = getelementptr inbounds %struct.yasm_span, ptr %29, i32 0, i32 9, !dbg !3300
  %30 = load i64, ptr %new_val18, align 8, !dbg !3300, !tbaa !2351
  %cmp19 = icmp ne i64 %30, 9223372036854775807, !dbg !3301
  br i1 %cmp19, label %land.lhs.true, label %if.else28, !dbg !3302

land.lhs.true:                                    ; preds = %if.then17
  %31 = load ptr, ptr %span.addr, align 8, !dbg !3303, !tbaa !898
  %rel_term20 = getelementptr inbounds %struct.yasm_span, ptr %31, i32 0, i32 4, !dbg !3304
  %32 = load ptr, ptr %rel_term20, align 8, !dbg !3304, !tbaa !2490
  %new_val21 = getelementptr inbounds %struct.yasm_span_term, ptr %32, i32 0, i32 4, !dbg !3305
  %33 = load i64, ptr %new_val21, align 8, !dbg !3305, !tbaa !2466
  %cmp22 = icmp ne i64 %33, 9223372036854775807, !dbg !3306
  br i1 %cmp22, label %if.then23, label %if.else28, !dbg !3307

if.then23:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %span.addr, align 8, !dbg !3308, !tbaa !898
  %rel_term24 = getelementptr inbounds %struct.yasm_span, ptr %34, i32 0, i32 4, !dbg !3309
  %35 = load ptr, ptr %rel_term24, align 8, !dbg !3309, !tbaa !2490
  %new_val25 = getelementptr inbounds %struct.yasm_span_term, ptr %35, i32 0, i32 4, !dbg !3310
  %36 = load i64, ptr %new_val25, align 8, !dbg !3310, !tbaa !2466
  %37 = load ptr, ptr %span.addr, align 8, !dbg !3311, !tbaa !898
  %depval26 = getelementptr inbounds %struct.yasm_span, ptr %37, i32 0, i32 3, !dbg !3312
  %rshift = getelementptr inbounds %struct.yasm_value, ptr %depval26, i32 0, i32 3, !dbg !3313
  %bf.load = load i32, ptr %rshift, align 8, !dbg !3313
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !3313
  %bf.clear = and i32 %bf.lshr, 127, !dbg !3313
  %sh_prom = zext i32 %bf.clear to i64, !dbg !3314
  %shr = ashr i64 %36, %sh_prom, !dbg !3314
  %38 = load ptr, ptr %span.addr, align 8, !dbg !3315, !tbaa !898
  %new_val27 = getelementptr inbounds %struct.yasm_span, ptr %38, i32 0, i32 9, !dbg !3316
  %39 = load i64, ptr %new_val27, align 8, !dbg !3317, !tbaa !2351
  %add = add nsw i64 %39, %shr, !dbg !3317
  store i64 %add, ptr %new_val27, align 8, !dbg !3317, !tbaa !2351
  br label %if.end30, !dbg !3315

if.else28:                                        ; preds = %land.lhs.true, %if.then17
  %40 = load ptr, ptr %span.addr, align 8, !dbg !3318, !tbaa !898
  %new_val29 = getelementptr inbounds %struct.yasm_span, ptr %40, i32 0, i32 9, !dbg !3319
  store i64 9223372036854775807, ptr %new_val29, align 8, !dbg !3320, !tbaa !2351
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then23
  br label %if.end37, !dbg !3321

if.else31:                                        ; preds = %if.end15
  %41 = load ptr, ptr %span.addr, align 8, !dbg !3322, !tbaa !898
  %depval32 = getelementptr inbounds %struct.yasm_span, ptr %41, i32 0, i32 3, !dbg !3324
  %rel = getelementptr inbounds %struct.yasm_value, ptr %depval32, i32 0, i32 1, !dbg !3325
  %42 = load ptr, ptr %rel, align 8, !dbg !3325, !tbaa !3138
  %tobool33 = icmp ne ptr %42, null, !dbg !3322
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !3326

if.then34:                                        ; preds = %if.else31
  %43 = load ptr, ptr %span.addr, align 8, !dbg !3327, !tbaa !898
  %new_val35 = getelementptr inbounds %struct.yasm_span, ptr %43, i32 0, i32 9, !dbg !3328
  store i64 9223372036854775807, ptr %new_val35, align 8, !dbg !3329, !tbaa !2351
  br label %if.end36, !dbg !3327

if.end36:                                         ; preds = %if.then34, %if.else31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end30
  %44 = load ptr, ptr %span.addr, align 8, !dbg !3330, !tbaa !898
  %new_val38 = getelementptr inbounds %struct.yasm_span, ptr %44, i32 0, i32 9, !dbg !3332
  %45 = load i64, ptr %new_val38, align 8, !dbg !3332, !tbaa !2351
  %cmp39 = icmp eq i64 %45, 9223372036854775807, !dbg !3333
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3334

if.then40:                                        ; preds = %if.end37
  %46 = load ptr, ptr %span.addr, align 8, !dbg !3335, !tbaa !898
  %active = getelementptr inbounds %struct.yasm_span, ptr %46, i32 0, i32 13, !dbg !3336
  store i32 0, ptr %active, align 4, !dbg !3337, !tbaa !2377
  br label %if.end41, !dbg !3335

if.end41:                                         ; preds = %if.then40, %if.end37
  %47 = load ptr, ptr %span.addr, align 8, !dbg !3338, !tbaa !898
  %id = getelementptr inbounds %struct.yasm_span, ptr %47, i32 0, i32 12, !dbg !3340
  %48 = load i32, ptr %id, align 8, !dbg !3340, !tbaa !2345
  %cmp42 = icmp sle i32 %48, 0, !dbg !3341
  br i1 %cmp42, label %if.then43, label %if.end46, !dbg !3342

if.then43:                                        ; preds = %if.end41
  %49 = load ptr, ptr %span.addr, align 8, !dbg !3343, !tbaa !898
  %new_val44 = getelementptr inbounds %struct.yasm_span, ptr %49, i32 0, i32 9, !dbg !3344
  %50 = load i64, ptr %new_val44, align 8, !dbg !3344, !tbaa !2351
  %51 = load ptr, ptr %span.addr, align 8, !dbg !3345, !tbaa !898
  %cur_val = getelementptr inbounds %struct.yasm_span, ptr %51, i32 0, i32 8, !dbg !3346
  %52 = load i64, ptr %cur_val, align 8, !dbg !3346, !tbaa !2348
  %cmp45 = icmp ne i64 %50, %52, !dbg !3347
  %conv = zext i1 %cmp45 to i32, !dbg !3347
  store i32 %conv, ptr %retval, align 4, !dbg !3348
  br label %return, !dbg !3348

if.end46:                                         ; preds = %if.end41
  %53 = load ptr, ptr %span.addr, align 8, !dbg !3349, !tbaa !898
  %new_val47 = getelementptr inbounds %struct.yasm_span, ptr %53, i32 0, i32 9, !dbg !3350
  %54 = load i64, ptr %new_val47, align 8, !dbg !3350, !tbaa !2351
  %55 = load ptr, ptr %span.addr, align 8, !dbg !3351, !tbaa !898
  %neg_thres = getelementptr inbounds %struct.yasm_span, ptr %55, i32 0, i32 10, !dbg !3352
  %56 = load i64, ptr %neg_thres, align 8, !dbg !3352, !tbaa !3353
  %cmp48 = icmp slt i64 %54, %56, !dbg !3354
  br i1 %cmp48, label %lor.end, label %lor.rhs, !dbg !3355

lor.rhs:                                          ; preds = %if.end46
  %57 = load ptr, ptr %span.addr, align 8, !dbg !3356, !tbaa !898
  %new_val50 = getelementptr inbounds %struct.yasm_span, ptr %57, i32 0, i32 9, !dbg !3357
  %58 = load i64, ptr %new_val50, align 8, !dbg !3357, !tbaa !2351
  %59 = load ptr, ptr %span.addr, align 8, !dbg !3358, !tbaa !898
  %pos_thres = getelementptr inbounds %struct.yasm_span, ptr %59, i32 0, i32 11, !dbg !3359
  %60 = load i64, ptr %pos_thres, align 8, !dbg !3359, !tbaa !3360
  %cmp51 = icmp sgt i64 %58, %60, !dbg !3361
  br label %lor.end, !dbg !3355

lor.end:                                          ; preds = %lor.rhs, %if.end46
  %61 = phi i1 [ true, %if.end46 ], [ %cmp51, %lor.rhs ]
  %lor.ext = zext i1 %61 to i32, !dbg !3355
  store i32 %lor.ext, ptr %retval, align 4, !dbg !3362
  br label %return, !dbg !3362

return:                                           ; preds = %lor.end, %if.then43
  %62 = load i32, ptr %retval, align 4, !dbg !3363
  ret i32 %62, !dbg !3363
}

declare !dbg !3364 i32 @yasm_bc_expand(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @span_destroy(ptr noundef %span) #0 !dbg !3365 {
entry:
  %span.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %span, ptr %span.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %span.addr, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !3370
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3368, metadata !DIExpression()), !dbg !3371
  %0 = load ptr, ptr %span.addr, align 8, !dbg !3372, !tbaa !898
  %depval = getelementptr inbounds %struct.yasm_span, ptr %0, i32 0, i32 3, !dbg !3373
  call void @yasm_value_delete(ptr noundef %depval), !dbg !3374
  %1 = load ptr, ptr %span.addr, align 8, !dbg !3375, !tbaa !898
  %rel_term = getelementptr inbounds %struct.yasm_span, ptr %1, i32 0, i32 4, !dbg !3377
  %2 = load ptr, ptr %rel_term, align 8, !dbg !3377, !tbaa !2490
  %tobool = icmp ne ptr %2, null, !dbg !3375
  br i1 %tobool, label %if.then, label %if.end, !dbg !3378

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @yasm_xfree, align 8, !dbg !3379, !tbaa !898
  %4 = load ptr, ptr %span.addr, align 8, !dbg !3380, !tbaa !898
  %rel_term1 = getelementptr inbounds %struct.yasm_span, ptr %4, i32 0, i32 4, !dbg !3381
  %5 = load ptr, ptr %rel_term1, align 8, !dbg !3381, !tbaa !2490
  call void %3(ptr noundef %5), !dbg !3379
  br label %if.end, !dbg !3379

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %span.addr, align 8, !dbg !3382, !tbaa !898
  %terms = getelementptr inbounds %struct.yasm_span, ptr %6, i32 0, i32 5, !dbg !3384
  %7 = load ptr, ptr %terms, align 8, !dbg !3384, !tbaa !2446
  %tobool2 = icmp ne ptr %7, null, !dbg !3382
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3385

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr @yasm_xfree, align 8, !dbg !3386, !tbaa !898
  %9 = load ptr, ptr %span.addr, align 8, !dbg !3387, !tbaa !898
  %terms4 = getelementptr inbounds %struct.yasm_span, ptr %9, i32 0, i32 5, !dbg !3388
  %10 = load ptr, ptr %terms4, align 8, !dbg !3388, !tbaa !2446
  call void %8(ptr noundef %10), !dbg !3386
  br label %if.end5, !dbg !3386

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load ptr, ptr %span.addr, align 8, !dbg !3389, !tbaa !898
  %items = getelementptr inbounds %struct.yasm_span, ptr %11, i32 0, i32 6, !dbg !3391
  %12 = load ptr, ptr %items, align 8, !dbg !3391, !tbaa !3058
  %tobool6 = icmp ne ptr %12, null, !dbg !3389
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !3392

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %i, align 4, !dbg !3393, !tbaa !1002
  br label %for.cond, !dbg !3396

for.cond:                                         ; preds = %for.inc, %if.then7
  %13 = load i32, ptr %i, align 4, !dbg !3397, !tbaa !1002
  %14 = load ptr, ptr %span.addr, align 8, !dbg !3399, !tbaa !898
  %num_terms = getelementptr inbounds %struct.yasm_span, ptr %14, i32 0, i32 7, !dbg !3400
  %15 = load i32, ptr %num_terms, align 8, !dbg !3400, !tbaa !2440
  %cmp = icmp ult i32 %13, %15, !dbg !3401
  br i1 %cmp, label %for.body, label %for.end, !dbg !3402

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %span.addr, align 8, !dbg !3403, !tbaa !898
  %items8 = getelementptr inbounds %struct.yasm_span, ptr %16, i32 0, i32 6, !dbg !3404
  %17 = load ptr, ptr %items8, align 8, !dbg !3404, !tbaa !3058
  %18 = load i32, ptr %i, align 4, !dbg !3405, !tbaa !1002
  %idxprom = zext i32 %18 to i64, !dbg !3403
  %arrayidx = getelementptr inbounds %struct.yasm_expr__item, ptr %17, i64 %idxprom, !dbg !3403
  %data = getelementptr inbounds %struct.yasm_expr__item, ptr %arrayidx, i32 0, i32 1, !dbg !3406
  %19 = load ptr, ptr %data, align 8, !dbg !3407, !tbaa !2325
  call void @yasm_intnum_destroy(ptr noundef %19), !dbg !3408
  br label %for.inc, !dbg !3408

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !dbg !3409, !tbaa !1002
  %inc = add i32 %20, 1, !dbg !3409
  store i32 %inc, ptr %i, align 4, !dbg !3409, !tbaa !1002
  br label %for.cond, !dbg !3410, !llvm.loop !3411

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr @yasm_xfree, align 8, !dbg !3413, !tbaa !898
  %22 = load ptr, ptr %span.addr, align 8, !dbg !3414, !tbaa !898
  %items9 = getelementptr inbounds %struct.yasm_span, ptr %22, i32 0, i32 6, !dbg !3415
  %23 = load ptr, ptr %items9, align 8, !dbg !3415, !tbaa !3058
  call void %21(ptr noundef %23), !dbg !3413
  br label %if.end10, !dbg !3416

if.end10:                                         ; preds = %for.end, %if.end5
  %24 = load ptr, ptr %span.addr, align 8, !dbg !3417, !tbaa !898
  %backtrace = getelementptr inbounds %struct.yasm_span, ptr %24, i32 0, i32 14, !dbg !3419
  %25 = load ptr, ptr %backtrace, align 8, !dbg !3419, !tbaa !3420
  %tobool11 = icmp ne ptr %25, null, !dbg !3417
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !3421

if.then12:                                        ; preds = %if.end10
  %26 = load ptr, ptr @yasm_xfree, align 8, !dbg !3422, !tbaa !898
  %27 = load ptr, ptr %span.addr, align 8, !dbg !3423, !tbaa !898
  %backtrace13 = getelementptr inbounds %struct.yasm_span, ptr %27, i32 0, i32 14, !dbg !3424
  %28 = load ptr, ptr %backtrace13, align 8, !dbg !3424, !tbaa !3420
  call void %26(ptr noundef %28), !dbg !3422
  br label %if.end14, !dbg !3422

if.end14:                                         ; preds = %if.then12, %if.end10
  %29 = load ptr, ptr @yasm_xfree, align 8, !dbg !3425, !tbaa !898
  %30 = load ptr, ptr %span.addr, align 8, !dbg !3426, !tbaa !898
  call void %29(ptr noundef %30), !dbg !3425
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !3427
  ret void, !dbg !3427
}

; Function Attrs: nounwind uwtable
define internal i32 @update_all_bc_offsets(ptr noundef %object, ptr noundef %errwarns) #0 !dbg !3428 {
entry:
  %object.addr = alloca ptr, align 8
  %errwarns.addr = alloca ptr, align 8
  %sect = alloca ptr, align 8
  %saw_error = alloca i32, align 4
  %offset = alloca i64, align 8
  %bc = alloca ptr, align 8
  %prevbc = alloca ptr, align 8
  %neg_thres = alloca i64, align 8
  %pos_thres = alloca i64, align 8
  %retval3 = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !3432, metadata !DIExpression()), !dbg !3448
  store ptr %errwarns, ptr %errwarns.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %errwarns.addr, metadata !3433, metadata !DIExpression()), !dbg !3449
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #6, !dbg !3450
  tail call void @llvm.dbg.declare(metadata ptr %sect, metadata !3434, metadata !DIExpression()), !dbg !3451
  call void @llvm.lifetime.start.p0(i64 4, ptr %saw_error) #6, !dbg !3452
  tail call void @llvm.dbg.declare(metadata ptr %saw_error, metadata !3435, metadata !DIExpression()), !dbg !3453
  store i32 0, ptr %saw_error, align 4, !dbg !3453, !tbaa !1002
  %0 = load ptr, ptr %object.addr, align 8, !dbg !3454, !tbaa !898
  %sections = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 7, !dbg !3454
  %stqh_first = getelementptr inbounds %struct.yasm_sectionhead, ptr %sections, i32 0, i32 0, !dbg !3454
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !3454, !tbaa !945
  store ptr %1, ptr %sect, align 8, !dbg !3454, !tbaa !898
  br label %for.cond, !dbg !3454

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %sect, align 8, !dbg !3455, !tbaa !898
  %tobool = icmp ne ptr %2, null, !dbg !3454
  br i1 %tobool, label %for.body, label %for.end, !dbg !3454

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #6, !dbg !3456
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !3436, metadata !DIExpression()), !dbg !3457
  store i64 0, ptr %offset, align 8, !dbg !3457, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #6, !dbg !3458
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !3440, metadata !DIExpression()), !dbg !3459
  %3 = load ptr, ptr %sect, align 8, !dbg !3460, !tbaa !898
  %bcs = getelementptr inbounds %struct.yasm_section, ptr %3, i32 0, i32 9, !dbg !3460
  %stqh_first1 = getelementptr inbounds %struct.yasm_bytecodehead, ptr %bcs, i32 0, i32 0, !dbg !3460
  %4 = load ptr, ptr %stqh_first1, align 8, !dbg !3460, !tbaa !1320
  store ptr %4, ptr %bc, align 8, !dbg !3459, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %prevbc) #6, !dbg !3461
  tail call void @llvm.dbg.declare(metadata ptr %prevbc, metadata !3441, metadata !DIExpression()), !dbg !3462
  %5 = load ptr, ptr %bc, align 8, !dbg !3463, !tbaa !898
  store ptr %5, ptr %prevbc, align 8, !dbg !3464, !tbaa !898
  %6 = load ptr, ptr %bc, align 8, !dbg !3465, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %6, i32 0, i32 0, !dbg !3465
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !3465
  %7 = load ptr, ptr %stqe_next, align 8, !dbg !3465, !tbaa !1337
  store ptr %7, ptr %bc, align 8, !dbg !3466, !tbaa !898
  br label %while.cond, !dbg !3467

while.cond:                                       ; preds = %if.end8, %for.body
  %8 = load ptr, ptr %bc, align 8, !dbg !3468, !tbaa !898
  %tobool2 = icmp ne ptr %8, null, !dbg !3467
  br i1 %tobool2, label %while.body, label %while.end, !dbg !3467

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %bc, align 8, !dbg !3469, !tbaa !898
  %callback = getelementptr inbounds %struct.yasm_bytecode, ptr %9, i32 0, i32 1, !dbg !3470
  %10 = load ptr, ptr %callback, align 8, !dbg !3470, !tbaa !2002
  %special = getelementptr inbounds %struct.yasm_bytecode_callback, ptr %10, i32 0, i32 7, !dbg !3471
  %11 = load i32, ptr %special, align 8, !dbg !3471, !tbaa !2241
  %cmp = icmp eq i32 %11, 2, !dbg !3472
  br i1 %cmp, label %if.then, label %if.end8, !dbg !3473

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %neg_thres) #6, !dbg !3474
  tail call void @llvm.dbg.declare(metadata ptr %neg_thres, metadata !3442, metadata !DIExpression()), !dbg !3475
  store i64 0, ptr %neg_thres, align 8, !dbg !3475, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos_thres) #6, !dbg !3476
  tail call void @llvm.dbg.declare(metadata ptr %pos_thres, metadata !3446, metadata !DIExpression()), !dbg !3477
  %12 = load ptr, ptr %bc, align 8, !dbg !3478, !tbaa !898
  %call = call i64 @yasm_bc_next_offset(ptr noundef %12), !dbg !3479
  store i64 %call, ptr %pos_thres, align 8, !dbg !3477, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval3) #6, !dbg !3480
  tail call void @llvm.dbg.declare(metadata ptr %retval3, metadata !3447, metadata !DIExpression()), !dbg !3481
  %13 = load ptr, ptr %bc, align 8, !dbg !3482, !tbaa !898
  %14 = load ptr, ptr %prevbc, align 8, !dbg !3483, !tbaa !898
  %call4 = call i64 @yasm_bc_next_offset(ptr noundef %14), !dbg !3484
  %call5 = call i32 @yasm_bc_expand(ptr noundef %13, i32 noundef 1, i64 noundef 0, i64 noundef %call4, ptr noundef %neg_thres, ptr noundef %pos_thres), !dbg !3485
  store i32 %call5, ptr %retval3, align 4, !dbg !3481, !tbaa !1002
  %15 = load ptr, ptr %errwarns.addr, align 8, !dbg !3486, !tbaa !898
  %16 = load ptr, ptr %bc, align 8, !dbg !3487, !tbaa !898
  %line = getelementptr inbounds %struct.yasm_bytecode, ptr %16, i32 0, i32 6, !dbg !3488
  %17 = load i64, ptr %line, align 8, !dbg !3488, !tbaa !1818
  call void @yasm_errwarn_propagate(ptr noundef %15, i64 noundef %17), !dbg !3489
  %18 = load i32, ptr %retval3, align 4, !dbg !3490, !tbaa !1002
  %cmp6 = icmp slt i32 %18, 0, !dbg !3492
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !3493

if.then7:                                         ; preds = %if.then
  store i32 1, ptr %saw_error, align 4, !dbg !3494, !tbaa !1002
  br label %if.end, !dbg !3495

if.end:                                           ; preds = %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval3) #6, !dbg !3496
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos_thres) #6, !dbg !3496
  call void @llvm.lifetime.end.p0(i64 8, ptr %neg_thres) #6, !dbg !3496
  br label %if.end8, !dbg !3497

if.end8:                                          ; preds = %if.end, %while.body
  %19 = load i64, ptr %offset, align 8, !dbg !3498, !tbaa !1262
  %20 = load ptr, ptr %bc, align 8, !dbg !3499, !tbaa !898
  %offset9 = getelementptr inbounds %struct.yasm_bytecode, ptr %20, i32 0, i32 7, !dbg !3500
  store i64 %19, ptr %offset9, align 8, !dbg !3501, !tbaa !1333
  %21 = load ptr, ptr %bc, align 8, !dbg !3502, !tbaa !898
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %21, i32 0, i32 4, !dbg !3503
  %22 = load i64, ptr %len, align 8, !dbg !3503, !tbaa !2291
  %23 = load ptr, ptr %bc, align 8, !dbg !3504, !tbaa !898
  %mult_int = getelementptr inbounds %struct.yasm_bytecode, ptr %23, i32 0, i32 5, !dbg !3505
  %24 = load i64, ptr %mult_int, align 8, !dbg !3505, !tbaa !2294
  %mul = mul i64 %22, %24, !dbg !3506
  %25 = load i64, ptr %offset, align 8, !dbg !3507, !tbaa !1262
  %add = add i64 %25, %mul, !dbg !3507
  store i64 %add, ptr %offset, align 8, !dbg !3507, !tbaa !1262
  %26 = load ptr, ptr %bc, align 8, !dbg !3508, !tbaa !898
  store ptr %26, ptr %prevbc, align 8, !dbg !3509, !tbaa !898
  %27 = load ptr, ptr %bc, align 8, !dbg !3510, !tbaa !898
  %link10 = getelementptr inbounds %struct.yasm_bytecode, ptr %27, i32 0, i32 0, !dbg !3510
  %stqe_next11 = getelementptr inbounds %struct.anon.0, ptr %link10, i32 0, i32 0, !dbg !3510
  %28 = load ptr, ptr %stqe_next11, align 8, !dbg !3510, !tbaa !1337
  store ptr %28, ptr %bc, align 8, !dbg !3511, !tbaa !898
  br label %while.cond, !dbg !3467, !llvm.loop !3512

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %prevbc) #6, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #6, !dbg !3514
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #6, !dbg !3514
  br label %for.inc, !dbg !3515

for.inc:                                          ; preds = %while.end
  %29 = load ptr, ptr %sect, align 8, !dbg !3455, !tbaa !898
  %link12 = getelementptr inbounds %struct.yasm_section, ptr %29, i32 0, i32 0, !dbg !3455
  %stqe_next13 = getelementptr inbounds %struct.anon, ptr %link12, i32 0, i32 0, !dbg !3455
  %30 = load ptr, ptr %stqe_next13, align 8, !dbg !3455, !tbaa !1206
  store ptr %30, ptr %sect, align 8, !dbg !3455, !tbaa !898
  br label %for.cond, !dbg !3455, !llvm.loop !3516

for.end:                                          ; preds = %for.cond
  %31 = load i32, ptr %saw_error, align 4, !dbg !3518, !tbaa !1002
  call void @llvm.lifetime.end.p0(i64 4, ptr %saw_error) #6, !dbg !3519
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #6, !dbg !3519
  ret i32 %31, !dbg !3520
}

declare !dbg !3521 ptr @yasm_calc_bc_dist(ptr noundef, ptr noundef) #2

declare !dbg !3524 i64 @yasm_intnum_get_int(ptr noundef) #2

declare !dbg !3528 void @yasm_intnum_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @optimize_itree_add(ptr noundef %itree, ptr noundef %span, ptr noundef %term) #0 !dbg !3531 {
entry:
  %itree.addr = alloca ptr, align 8
  %span.addr = alloca ptr, align 8
  %term.addr = alloca ptr, align 8
  %precbc_index = alloca i64, align 8
  %precbc2_index = alloca i64, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %itree, ptr %itree.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %itree.addr, metadata !3535, metadata !DIExpression()), !dbg !3542
  store ptr %span, ptr %span.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %span.addr, metadata !3536, metadata !DIExpression()), !dbg !3543
  store ptr %term, ptr %term.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %term.addr, metadata !3537, metadata !DIExpression()), !dbg !3544
  call void @llvm.lifetime.start.p0(i64 8, ptr %precbc_index) #6, !dbg !3545
  tail call void @llvm.dbg.declare(metadata ptr %precbc_index, metadata !3538, metadata !DIExpression()), !dbg !3546
  call void @llvm.lifetime.start.p0(i64 8, ptr %precbc2_index) #6, !dbg !3545
  tail call void @llvm.dbg.declare(metadata ptr %precbc2_index, metadata !3539, metadata !DIExpression()), !dbg !3547
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #6, !dbg !3548
  tail call void @llvm.dbg.declare(metadata ptr %low, metadata !3540, metadata !DIExpression()), !dbg !3549
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #6, !dbg !3548
  tail call void @llvm.dbg.declare(metadata ptr %high, metadata !3541, metadata !DIExpression()), !dbg !3550
  %0 = load ptr, ptr %term.addr, align 8, !dbg !3551, !tbaa !898
  %precbc = getelementptr inbounds %struct.yasm_span_term, ptr %0, i32 0, i32 0, !dbg !3553
  %1 = load ptr, ptr %precbc, align 8, !dbg !3553, !tbaa !2449
  %tobool = icmp ne ptr %1, null, !dbg !3551
  br i1 %tobool, label %if.then, label %if.else, !dbg !3554

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %term.addr, align 8, !dbg !3555, !tbaa !898
  %precbc1 = getelementptr inbounds %struct.yasm_span_term, ptr %2, i32 0, i32 0, !dbg !3556
  %3 = load ptr, ptr %precbc1, align 8, !dbg !3556, !tbaa !2449
  %bc_index = getelementptr inbounds %struct.yasm_bytecode, ptr %3, i32 0, i32 8, !dbg !3557
  %4 = load i64, ptr %bc_index, align 8, !dbg !3557, !tbaa !2210
  store i64 %4, ptr %precbc_index, align 8, !dbg !3558, !tbaa !1262
  br label %if.end, !dbg !3559

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %span.addr, align 8, !dbg !3560, !tbaa !898
  %bc = getelementptr inbounds %struct.yasm_span, ptr %5, i32 0, i32 2, !dbg !3561
  %6 = load ptr, ptr %bc, align 8, !dbg !3561, !tbaa !2331
  %bc_index2 = getelementptr inbounds %struct.yasm_bytecode, ptr %6, i32 0, i32 8, !dbg !3562
  %7 = load i64, ptr %bc_index2, align 8, !dbg !3562, !tbaa !2210
  %sub = sub i64 %7, 1, !dbg !3563
  store i64 %sub, ptr %precbc_index, align 8, !dbg !3564, !tbaa !1262
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %term.addr, align 8, !dbg !3565, !tbaa !898
  %precbc2 = getelementptr inbounds %struct.yasm_span_term, ptr %8, i32 0, i32 1, !dbg !3567
  %9 = load ptr, ptr %precbc2, align 8, !dbg !3567, !tbaa !2455
  %tobool3 = icmp ne ptr %9, null, !dbg !3565
  br i1 %tobool3, label %if.then4, label %if.else7, !dbg !3568

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %term.addr, align 8, !dbg !3569, !tbaa !898
  %precbc25 = getelementptr inbounds %struct.yasm_span_term, ptr %10, i32 0, i32 1, !dbg !3570
  %11 = load ptr, ptr %precbc25, align 8, !dbg !3570, !tbaa !2455
  %bc_index6 = getelementptr inbounds %struct.yasm_bytecode, ptr %11, i32 0, i32 8, !dbg !3571
  %12 = load i64, ptr %bc_index6, align 8, !dbg !3571, !tbaa !2210
  store i64 %12, ptr %precbc2_index, align 8, !dbg !3572, !tbaa !1262
  br label %if.end11, !dbg !3573

if.else7:                                         ; preds = %if.end
  %13 = load ptr, ptr %span.addr, align 8, !dbg !3574, !tbaa !898
  %bc8 = getelementptr inbounds %struct.yasm_span, ptr %13, i32 0, i32 2, !dbg !3575
  %14 = load ptr, ptr %bc8, align 8, !dbg !3575, !tbaa !2331
  %bc_index9 = getelementptr inbounds %struct.yasm_bytecode, ptr %14, i32 0, i32 8, !dbg !3576
  %15 = load i64, ptr %bc_index9, align 8, !dbg !3576, !tbaa !2210
  %sub10 = sub i64 %15, 1, !dbg !3577
  store i64 %sub10, ptr %precbc2_index, align 8, !dbg !3578, !tbaa !1262
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then4
  %16 = load i64, ptr %precbc_index, align 8, !dbg !3579, !tbaa !1262
  %17 = load i64, ptr %precbc2_index, align 8, !dbg !3581, !tbaa !1262
  %cmp = icmp slt i64 %16, %17, !dbg !3582
  br i1 %cmp, label %if.then12, label %if.else13, !dbg !3583

if.then12:                                        ; preds = %if.end11
  %18 = load i64, ptr %precbc_index, align 8, !dbg !3584, !tbaa !1262
  %add = add nsw i64 %18, 1, !dbg !3586
  store i64 %add, ptr %low, align 8, !dbg !3587, !tbaa !1262
  %19 = load i64, ptr %precbc2_index, align 8, !dbg !3588, !tbaa !1262
  store i64 %19, ptr %high, align 8, !dbg !3589, !tbaa !1262
  br label %if.end19, !dbg !3590

if.else13:                                        ; preds = %if.end11
  %20 = load i64, ptr %precbc_index, align 8, !dbg !3591, !tbaa !1262
  %21 = load i64, ptr %precbc2_index, align 8, !dbg !3593, !tbaa !1262
  %cmp14 = icmp sgt i64 %20, %21, !dbg !3594
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !3595

if.then15:                                        ; preds = %if.else13
  %22 = load i64, ptr %precbc2_index, align 8, !dbg !3596, !tbaa !1262
  %add16 = add nsw i64 %22, 1, !dbg !3598
  store i64 %add16, ptr %low, align 8, !dbg !3599, !tbaa !1262
  %23 = load i64, ptr %precbc_index, align 8, !dbg !3600, !tbaa !1262
  store i64 %23, ptr %high, align 8, !dbg !3601, !tbaa !1262
  br label %if.end18, !dbg !3602

if.else17:                                        ; preds = %if.else13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3603

if.end18:                                         ; preds = %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then12
  %24 = load ptr, ptr %itree.addr, align 8, !dbg !3604, !tbaa !898
  %25 = load i64, ptr %low, align 8, !dbg !3605, !tbaa !1262
  %26 = load i64, ptr %high, align 8, !dbg !3606, !tbaa !1262
  %27 = load ptr, ptr %term.addr, align 8, !dbg !3607, !tbaa !898
  %call = call ptr @IT_insert(ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27), !dbg !3608
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3609
  br label %cleanup, !dbg !3609

cleanup:                                          ; preds = %if.end19, %if.else17
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #6, !dbg !3609
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #6, !dbg !3609
  call void @llvm.lifetime.end.p0(i64 8, ptr %precbc2_index) #6, !dbg !3609
  call void @llvm.lifetime.end.p0(i64 8, ptr %precbc_index) #6, !dbg !3609
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3609

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !3610 void @IT_enumerate(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @check_cycle(ptr noundef %node, ptr noundef %d) #0 !dbg !3616 {
entry:
  %node.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %optd = alloca ptr, align 8
  %term = alloca ptr, align 8
  %depspan = alloca ptr, align 8
  %i = alloca i32, align 4
  %depspan_bt_alloc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %present = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3618, metadata !DIExpression()), !dbg !3630
  store ptr %d, ptr %d.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3619, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 8, ptr %optd) #6, !dbg !3632
  tail call void @llvm.dbg.declare(metadata ptr %optd, metadata !3620, metadata !DIExpression()), !dbg !3633
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3634, !tbaa !898
  store ptr %0, ptr %optd, align 8, !dbg !3633, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %term) #6, !dbg !3635
  tail call void @llvm.dbg.declare(metadata ptr %term, metadata !3621, metadata !DIExpression()), !dbg !3636
  %1 = load ptr, ptr %node.addr, align 8, !dbg !3637, !tbaa !898
  %data = getelementptr inbounds %struct.IntervalTreeNode, ptr %1, i32 0, i32 3, !dbg !3638
  %2 = load ptr, ptr %data, align 8, !dbg !3638, !tbaa !3639
  store ptr %2, ptr %term, align 8, !dbg !3636, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %depspan) #6, !dbg !3641
  tail call void @llvm.dbg.declare(metadata ptr %depspan, metadata !3622, metadata !DIExpression()), !dbg !3642
  %3 = load ptr, ptr %term, align 8, !dbg !3643, !tbaa !898
  %span = getelementptr inbounds %struct.yasm_span_term, ptr %3, i32 0, i32 2, !dbg !3644
  %4 = load ptr, ptr %span, align 8, !dbg !3644, !tbaa !3199
  store ptr %4, ptr %depspan, align 8, !dbg !3642, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !3645
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3623, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 4, ptr %depspan_bt_alloc) #6, !dbg !3647
  tail call void @llvm.dbg.declare(metadata ptr %depspan_bt_alloc, metadata !3624, metadata !DIExpression()), !dbg !3648
  %5 = load ptr, ptr %depspan, align 8, !dbg !3649, !tbaa !898
  %id = getelementptr inbounds %struct.yasm_span, ptr %5, i32 0, i32 12, !dbg !3651
  %6 = load i32, ptr %id, align 8, !dbg !3651, !tbaa !2345
  %cmp = icmp sgt i32 %6, 0, !dbg !3652
  br i1 %cmp, label %if.then, label %if.end, !dbg !3653

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !3654

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %optd, align 8, !dbg !3655, !tbaa !898
  %span1 = getelementptr inbounds %struct.optimize_data, ptr %7, i32 0, i32 6, !dbg !3657
  %8 = load ptr, ptr %span1, align 8, !dbg !3657, !tbaa !2633
  %backtrace = getelementptr inbounds %struct.yasm_span, ptr %8, i32 0, i32 14, !dbg !3658
  %9 = load ptr, ptr %backtrace, align 8, !dbg !3658, !tbaa !3420
  %tobool = icmp ne ptr %9, null, !dbg !3655
  br i1 %tobool, label %if.then2, label %if.end10, !dbg !3659

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !3660, !tbaa !1002
  br label %for.cond, !dbg !3663

for.cond:                                         ; preds = %for.inc, %if.then2
  %10 = load i32, ptr %i, align 4, !dbg !3664, !tbaa !1002
  %11 = load ptr, ptr %optd, align 8, !dbg !3666, !tbaa !898
  %span3 = getelementptr inbounds %struct.optimize_data, ptr %11, i32 0, i32 6, !dbg !3667
  %12 = load ptr, ptr %span3, align 8, !dbg !3667, !tbaa !2633
  %backtrace_size = getelementptr inbounds %struct.yasm_span, ptr %12, i32 0, i32 15, !dbg !3668
  %13 = load i32, ptr %backtrace_size, align 8, !dbg !3668, !tbaa !3669
  %cmp4 = icmp slt i32 %10, %13, !dbg !3670
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3671

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %optd, align 8, !dbg !3672, !tbaa !898
  %span5 = getelementptr inbounds %struct.optimize_data, ptr %14, i32 0, i32 6, !dbg !3675
  %15 = load ptr, ptr %span5, align 8, !dbg !3675, !tbaa !2633
  %backtrace6 = getelementptr inbounds %struct.yasm_span, ptr %15, i32 0, i32 14, !dbg !3676
  %16 = load ptr, ptr %backtrace6, align 8, !dbg !3676, !tbaa !3420
  %17 = load i32, ptr %i, align 4, !dbg !3677, !tbaa !1002
  %idxprom = sext i32 %17 to i64, !dbg !3672
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom, !dbg !3672
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !3672, !tbaa !898
  %19 = load ptr, ptr %depspan, align 8, !dbg !3678, !tbaa !898
  %cmp7 = icmp eq ptr %18, %19, !dbg !3679
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3680

if.then8:                                         ; preds = %for.body
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 4, ptr noundef @.str.32), !dbg !3681
  br label %if.end9, !dbg !3681

if.end9:                                          ; preds = %if.then8, %for.body
  br label %for.inc, !dbg !3682

for.inc:                                          ; preds = %if.end9
  %20 = load i32, ptr %i, align 4, !dbg !3683, !tbaa !1002
  %inc = add nsw i32 %20, 1, !dbg !3683
  store i32 %inc, ptr %i, align 4, !dbg !3683, !tbaa !1002
  br label %for.cond, !dbg !3684, !llvm.loop !3685

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !3687

if.end10:                                         ; preds = %for.end, %if.end
  %21 = load ptr, ptr %depspan, align 8, !dbg !3688, !tbaa !898
  %backtrace11 = getelementptr inbounds %struct.yasm_span, ptr %21, i32 0, i32 14, !dbg !3690
  %22 = load ptr, ptr %backtrace11, align 8, !dbg !3690, !tbaa !3420
  %tobool12 = icmp ne ptr %22, null, !dbg !3688
  br i1 %tobool12, label %if.end40, label %if.then13, !dbg !3691

if.then13:                                        ; preds = %if.end10
  %23 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !3692, !tbaa !898
  %24 = load ptr, ptr %optd, align 8, !dbg !3694, !tbaa !898
  %span14 = getelementptr inbounds %struct.optimize_data, ptr %24, i32 0, i32 6, !dbg !3695
  %25 = load ptr, ptr %span14, align 8, !dbg !3695, !tbaa !2633
  %backtrace_size15 = getelementptr inbounds %struct.yasm_span, ptr %25, i32 0, i32 15, !dbg !3696
  %26 = load i32, ptr %backtrace_size15, align 8, !dbg !3696, !tbaa !3669
  %add = add nsw i32 %26, 1, !dbg !3697
  %conv = sext i32 %add to i64, !dbg !3698
  %mul = mul i64 %conv, 8, !dbg !3699
  %call = call ptr %23(i64 noundef %mul), !dbg !3692
  %27 = load ptr, ptr %depspan, align 8, !dbg !3700, !tbaa !898
  %backtrace16 = getelementptr inbounds %struct.yasm_span, ptr %27, i32 0, i32 14, !dbg !3701
  store ptr %call, ptr %backtrace16, align 8, !dbg !3702, !tbaa !3420
  %28 = load ptr, ptr %optd, align 8, !dbg !3703, !tbaa !898
  %span17 = getelementptr inbounds %struct.optimize_data, ptr %28, i32 0, i32 6, !dbg !3705
  %29 = load ptr, ptr %span17, align 8, !dbg !3705, !tbaa !2633
  %backtrace_size18 = getelementptr inbounds %struct.yasm_span, ptr %29, i32 0, i32 15, !dbg !3706
  %30 = load i32, ptr %backtrace_size18, align 8, !dbg !3706, !tbaa !3669
  %cmp19 = icmp sgt i32 %30, 0, !dbg !3707
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !3708

if.then21:                                        ; preds = %if.then13
  %31 = load ptr, ptr %depspan, align 8, !dbg !3709, !tbaa !898
  %backtrace22 = getelementptr inbounds %struct.yasm_span, ptr %31, i32 0, i32 14, !dbg !3710
  %32 = load ptr, ptr %backtrace22, align 8, !dbg !3710, !tbaa !3420
  %33 = load ptr, ptr %optd, align 8, !dbg !3711, !tbaa !898
  %span23 = getelementptr inbounds %struct.optimize_data, ptr %33, i32 0, i32 6, !dbg !3712
  %34 = load ptr, ptr %span23, align 8, !dbg !3712, !tbaa !2633
  %backtrace24 = getelementptr inbounds %struct.yasm_span, ptr %34, i32 0, i32 14, !dbg !3713
  %35 = load ptr, ptr %backtrace24, align 8, !dbg !3713, !tbaa !3420
  %36 = load ptr, ptr %optd, align 8, !dbg !3714, !tbaa !898
  %span25 = getelementptr inbounds %struct.optimize_data, ptr %36, i32 0, i32 6, !dbg !3715
  %37 = load ptr, ptr %span25, align 8, !dbg !3715, !tbaa !2633
  %backtrace_size26 = getelementptr inbounds %struct.yasm_span, ptr %37, i32 0, i32 15, !dbg !3716
  %38 = load i32, ptr %backtrace_size26, align 8, !dbg !3716, !tbaa !3669
  %conv27 = sext i32 %38 to i64, !dbg !3714
  %mul28 = mul i64 %conv27, 8, !dbg !3717
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %35, i64 %mul28, i1 false), !dbg !3718
  br label %if.end29, !dbg !3718

if.end29:                                         ; preds = %if.then21, %if.then13
  %39 = load ptr, ptr %optd, align 8, !dbg !3719, !tbaa !898
  %span30 = getelementptr inbounds %struct.optimize_data, ptr %39, i32 0, i32 6, !dbg !3720
  %40 = load ptr, ptr %span30, align 8, !dbg !3720, !tbaa !2633
  %41 = load ptr, ptr %depspan, align 8, !dbg !3721, !tbaa !898
  %backtrace31 = getelementptr inbounds %struct.yasm_span, ptr %41, i32 0, i32 14, !dbg !3722
  %42 = load ptr, ptr %backtrace31, align 8, !dbg !3722, !tbaa !3420
  %43 = load ptr, ptr %optd, align 8, !dbg !3723, !tbaa !898
  %span32 = getelementptr inbounds %struct.optimize_data, ptr %43, i32 0, i32 6, !dbg !3724
  %44 = load ptr, ptr %span32, align 8, !dbg !3724, !tbaa !2633
  %backtrace_size33 = getelementptr inbounds %struct.yasm_span, ptr %44, i32 0, i32 15, !dbg !3725
  %45 = load i32, ptr %backtrace_size33, align 8, !dbg !3725, !tbaa !3669
  %idxprom34 = sext i32 %45 to i64, !dbg !3721
  %arrayidx35 = getelementptr inbounds ptr, ptr %42, i64 %idxprom34, !dbg !3721
  store ptr %40, ptr %arrayidx35, align 8, !dbg !3726, !tbaa !898
  %46 = load ptr, ptr %optd, align 8, !dbg !3727, !tbaa !898
  %span36 = getelementptr inbounds %struct.optimize_data, ptr %46, i32 0, i32 6, !dbg !3728
  %47 = load ptr, ptr %span36, align 8, !dbg !3728, !tbaa !2633
  %backtrace_size37 = getelementptr inbounds %struct.yasm_span, ptr %47, i32 0, i32 15, !dbg !3729
  %48 = load i32, ptr %backtrace_size37, align 8, !dbg !3729, !tbaa !3669
  %add38 = add nsw i32 %48, 1, !dbg !3730
  %49 = load ptr, ptr %depspan, align 8, !dbg !3731, !tbaa !898
  %backtrace_size39 = getelementptr inbounds %struct.yasm_span, ptr %49, i32 0, i32 15, !dbg !3732
  store i32 %add38, ptr %backtrace_size39, align 8, !dbg !3733, !tbaa !3669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup114, !dbg !3734

if.end40:                                         ; preds = %if.end10
  %50 = load ptr, ptr %depspan, align 8, !dbg !3735, !tbaa !898
  %backtrace_size41 = getelementptr inbounds %struct.yasm_span, ptr %50, i32 0, i32 15, !dbg !3736
  %51 = load i32, ptr %backtrace_size41, align 8, !dbg !3736, !tbaa !3669
  store i32 %51, ptr %depspan_bt_alloc, align 4, !dbg !3737, !tbaa !1002
  store i32 0, ptr %i, align 4, !dbg !3738, !tbaa !1002
  br label %for.cond42, !dbg !3739

for.cond42:                                       ; preds = %for.inc93, %if.end40
  %52 = load i32, ptr %i, align 4, !dbg !3740, !tbaa !1002
  %53 = load ptr, ptr %optd, align 8, !dbg !3741, !tbaa !898
  %span43 = getelementptr inbounds %struct.optimize_data, ptr %53, i32 0, i32 6, !dbg !3742
  %54 = load ptr, ptr %span43, align 8, !dbg !3742, !tbaa !2633
  %backtrace_size44 = getelementptr inbounds %struct.yasm_span, ptr %54, i32 0, i32 15, !dbg !3743
  %55 = load i32, ptr %backtrace_size44, align 8, !dbg !3743, !tbaa !3669
  %cmp45 = icmp slt i32 %52, %55, !dbg !3744
  br i1 %cmp45, label %for.body47, label %for.end95, !dbg !3745

for.body47:                                       ; preds = %for.cond42
  call void @llvm.lifetime.start.p0(i64 4, ptr %present) #6, !dbg !3746
  tail call void @llvm.dbg.declare(metadata ptr %present, metadata !3625, metadata !DIExpression()), !dbg !3747
  store i32 0, ptr %present, align 4, !dbg !3747, !tbaa !1002
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !3748
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3629, metadata !DIExpression()), !dbg !3749
  store i32 0, ptr %j, align 4, !dbg !3750, !tbaa !1002
  br label %for.cond48, !dbg !3752

for.cond48:                                       ; preds = %for.inc65, %for.body47
  %56 = load i32, ptr %j, align 4, !dbg !3753, !tbaa !1002
  %57 = load ptr, ptr %depspan, align 8, !dbg !3755, !tbaa !898
  %backtrace_size49 = getelementptr inbounds %struct.yasm_span, ptr %57, i32 0, i32 15, !dbg !3756
  %58 = load i32, ptr %backtrace_size49, align 8, !dbg !3756, !tbaa !3669
  %cmp50 = icmp slt i32 %56, %58, !dbg !3757
  br i1 %cmp50, label %for.body52, label %for.end67, !dbg !3758

for.body52:                                       ; preds = %for.cond48
  %59 = load ptr, ptr %optd, align 8, !dbg !3759, !tbaa !898
  %span53 = getelementptr inbounds %struct.optimize_data, ptr %59, i32 0, i32 6, !dbg !3762
  %60 = load ptr, ptr %span53, align 8, !dbg !3762, !tbaa !2633
  %backtrace54 = getelementptr inbounds %struct.yasm_span, ptr %60, i32 0, i32 14, !dbg !3763
  %61 = load ptr, ptr %backtrace54, align 8, !dbg !3763, !tbaa !3420
  %62 = load i32, ptr %i, align 4, !dbg !3764, !tbaa !1002
  %idxprom55 = sext i32 %62 to i64, !dbg !3759
  %arrayidx56 = getelementptr inbounds ptr, ptr %61, i64 %idxprom55, !dbg !3759
  %63 = load ptr, ptr %arrayidx56, align 8, !dbg !3759, !tbaa !898
  %64 = load ptr, ptr %optd, align 8, !dbg !3765, !tbaa !898
  %span57 = getelementptr inbounds %struct.optimize_data, ptr %64, i32 0, i32 6, !dbg !3766
  %65 = load ptr, ptr %span57, align 8, !dbg !3766, !tbaa !2633
  %backtrace58 = getelementptr inbounds %struct.yasm_span, ptr %65, i32 0, i32 14, !dbg !3767
  %66 = load ptr, ptr %backtrace58, align 8, !dbg !3767, !tbaa !3420
  %67 = load i32, ptr %j, align 4, !dbg !3768, !tbaa !1002
  %idxprom59 = sext i32 %67 to i64, !dbg !3765
  %arrayidx60 = getelementptr inbounds ptr, ptr %66, i64 %idxprom59, !dbg !3765
  %68 = load ptr, ptr %arrayidx60, align 8, !dbg !3765, !tbaa !898
  %cmp61 = icmp eq ptr %63, %68, !dbg !3769
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !3770

if.then63:                                        ; preds = %for.body52
  store i32 1, ptr %present, align 4, !dbg !3771, !tbaa !1002
  br label %for.end67, !dbg !3773

if.end64:                                         ; preds = %for.body52
  br label %for.inc65, !dbg !3774

for.inc65:                                        ; preds = %if.end64
  %69 = load i32, ptr %j, align 4, !dbg !3775, !tbaa !1002
  %inc66 = add nsw i32 %69, 1, !dbg !3775
  store i32 %inc66, ptr %j, align 4, !dbg !3775, !tbaa !1002
  br label %for.cond48, !dbg !3776, !llvm.loop !3777

for.end67:                                        ; preds = %if.then63, %for.cond48
  %70 = load i32, ptr %present, align 4, !dbg !3779, !tbaa !1002
  %tobool68 = icmp ne i32 %70, 0, !dbg !3779
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !3781

if.then69:                                        ; preds = %for.end67
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3782

if.end70:                                         ; preds = %for.end67
  %71 = load ptr, ptr %depspan, align 8, !dbg !3783, !tbaa !898
  %backtrace_size71 = getelementptr inbounds %struct.yasm_span, ptr %71, i32 0, i32 15, !dbg !3785
  %72 = load i32, ptr %backtrace_size71, align 8, !dbg !3785, !tbaa !3669
  %73 = load i32, ptr %depspan_bt_alloc, align 4, !dbg !3786, !tbaa !1002
  %cmp72 = icmp sge i32 %72, %73, !dbg !3787
  br i1 %cmp72, label %if.then74, label %if.end81, !dbg !3788

if.then74:                                        ; preds = %if.end70
  %74 = load i32, ptr %depspan_bt_alloc, align 4, !dbg !3789, !tbaa !1002
  %mul75 = mul nsw i32 %74, 2, !dbg !3789
  store i32 %mul75, ptr %depspan_bt_alloc, align 4, !dbg !3789, !tbaa !1002
  %75 = load ptr, ptr @yasm_xrealloc, align 8, !dbg !3791, !tbaa !898
  %76 = load ptr, ptr %depspan, align 8, !dbg !3792, !tbaa !898
  %backtrace76 = getelementptr inbounds %struct.yasm_span, ptr %76, i32 0, i32 14, !dbg !3793
  %77 = load ptr, ptr %backtrace76, align 8, !dbg !3793, !tbaa !3420
  %78 = load i32, ptr %depspan_bt_alloc, align 4, !dbg !3794, !tbaa !1002
  %conv77 = sext i32 %78 to i64, !dbg !3794
  %mul78 = mul i64 %conv77, 8, !dbg !3795
  %call79 = call ptr %75(ptr noundef %77, i64 noundef %mul78), !dbg !3791
  %79 = load ptr, ptr %depspan, align 8, !dbg !3796, !tbaa !898
  %backtrace80 = getelementptr inbounds %struct.yasm_span, ptr %79, i32 0, i32 14, !dbg !3797
  store ptr %call79, ptr %backtrace80, align 8, !dbg !3798, !tbaa !3420
  br label %if.end81, !dbg !3799

if.end81:                                         ; preds = %if.then74, %if.end70
  %80 = load ptr, ptr %optd, align 8, !dbg !3800, !tbaa !898
  %span82 = getelementptr inbounds %struct.optimize_data, ptr %80, i32 0, i32 6, !dbg !3801
  %81 = load ptr, ptr %span82, align 8, !dbg !3801, !tbaa !2633
  %backtrace83 = getelementptr inbounds %struct.yasm_span, ptr %81, i32 0, i32 14, !dbg !3802
  %82 = load ptr, ptr %backtrace83, align 8, !dbg !3802, !tbaa !3420
  %83 = load i32, ptr %i, align 4, !dbg !3803, !tbaa !1002
  %idxprom84 = sext i32 %83 to i64, !dbg !3800
  %arrayidx85 = getelementptr inbounds ptr, ptr %82, i64 %idxprom84, !dbg !3800
  %84 = load ptr, ptr %arrayidx85, align 8, !dbg !3800, !tbaa !898
  %85 = load ptr, ptr %depspan, align 8, !dbg !3804, !tbaa !898
  %backtrace86 = getelementptr inbounds %struct.yasm_span, ptr %85, i32 0, i32 14, !dbg !3805
  %86 = load ptr, ptr %backtrace86, align 8, !dbg !3805, !tbaa !3420
  %87 = load ptr, ptr %depspan, align 8, !dbg !3806, !tbaa !898
  %backtrace_size87 = getelementptr inbounds %struct.yasm_span, ptr %87, i32 0, i32 15, !dbg !3807
  %88 = load i32, ptr %backtrace_size87, align 8, !dbg !3807, !tbaa !3669
  %idxprom88 = sext i32 %88 to i64, !dbg !3804
  %arrayidx89 = getelementptr inbounds ptr, ptr %86, i64 %idxprom88, !dbg !3804
  store ptr %84, ptr %arrayidx89, align 8, !dbg !3808, !tbaa !898
  %89 = load ptr, ptr %depspan, align 8, !dbg !3809, !tbaa !898
  %backtrace_size90 = getelementptr inbounds %struct.yasm_span, ptr %89, i32 0, i32 15, !dbg !3810
  %90 = load i32, ptr %backtrace_size90, align 8, !dbg !3811, !tbaa !3669
  %inc91 = add nsw i32 %90, 1, !dbg !3811
  store i32 %inc91, ptr %backtrace_size90, align 8, !dbg !3811, !tbaa !3669
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3812
  br label %cleanup, !dbg !3812

cleanup:                                          ; preds = %if.end81, %if.then69
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !3812
  call void @llvm.lifetime.end.p0(i64 4, ptr %present) #6, !dbg !3812
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc93
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc93, !dbg !3813

for.inc93:                                        ; preds = %cleanup.cont, %cleanup
  %91 = load i32, ptr %i, align 4, !dbg !3814, !tbaa !1002
  %inc94 = add nsw i32 %91, 1, !dbg !3814
  store i32 %inc94, ptr %i, align 4, !dbg !3814, !tbaa !1002
  br label %for.cond42, !dbg !3815, !llvm.loop !3816

for.end95:                                        ; preds = %for.cond42
  %92 = load ptr, ptr %depspan, align 8, !dbg !3818, !tbaa !898
  %backtrace_size96 = getelementptr inbounds %struct.yasm_span, ptr %92, i32 0, i32 15, !dbg !3820
  %93 = load i32, ptr %backtrace_size96, align 8, !dbg !3820, !tbaa !3669
  %94 = load i32, ptr %depspan_bt_alloc, align 4, !dbg !3821, !tbaa !1002
  %cmp97 = icmp sge i32 %93, %94, !dbg !3822
  br i1 %cmp97, label %if.then99, label %if.end106, !dbg !3823

if.then99:                                        ; preds = %for.end95
  %95 = load i32, ptr %depspan_bt_alloc, align 4, !dbg !3824, !tbaa !1002
  %inc100 = add nsw i32 %95, 1, !dbg !3824
  store i32 %inc100, ptr %depspan_bt_alloc, align 4, !dbg !3824, !tbaa !1002
  %96 = load ptr, ptr @yasm_xrealloc, align 8, !dbg !3826, !tbaa !898
  %97 = load ptr, ptr %depspan, align 8, !dbg !3827, !tbaa !898
  %backtrace101 = getelementptr inbounds %struct.yasm_span, ptr %97, i32 0, i32 14, !dbg !3828
  %98 = load ptr, ptr %backtrace101, align 8, !dbg !3828, !tbaa !3420
  %99 = load i32, ptr %depspan_bt_alloc, align 4, !dbg !3829, !tbaa !1002
  %conv102 = sext i32 %99 to i64, !dbg !3829
  %mul103 = mul i64 %conv102, 8, !dbg !3830
  %call104 = call ptr %96(ptr noundef %98, i64 noundef %mul103), !dbg !3826
  %100 = load ptr, ptr %depspan, align 8, !dbg !3831, !tbaa !898
  %backtrace105 = getelementptr inbounds %struct.yasm_span, ptr %100, i32 0, i32 14, !dbg !3832
  store ptr %call104, ptr %backtrace105, align 8, !dbg !3833, !tbaa !3420
  br label %if.end106, !dbg !3834

if.end106:                                        ; preds = %if.then99, %for.end95
  %101 = load ptr, ptr %optd, align 8, !dbg !3835, !tbaa !898
  %span107 = getelementptr inbounds %struct.optimize_data, ptr %101, i32 0, i32 6, !dbg !3836
  %102 = load ptr, ptr %span107, align 8, !dbg !3836, !tbaa !2633
  %103 = load ptr, ptr %depspan, align 8, !dbg !3837, !tbaa !898
  %backtrace108 = getelementptr inbounds %struct.yasm_span, ptr %103, i32 0, i32 14, !dbg !3838
  %104 = load ptr, ptr %backtrace108, align 8, !dbg !3838, !tbaa !3420
  %105 = load ptr, ptr %depspan, align 8, !dbg !3839, !tbaa !898
  %backtrace_size109 = getelementptr inbounds %struct.yasm_span, ptr %105, i32 0, i32 15, !dbg !3840
  %106 = load i32, ptr %backtrace_size109, align 8, !dbg !3840, !tbaa !3669
  %idxprom110 = sext i32 %106 to i64, !dbg !3837
  %arrayidx111 = getelementptr inbounds ptr, ptr %104, i64 %idxprom110, !dbg !3837
  store ptr %102, ptr %arrayidx111, align 8, !dbg !3841, !tbaa !898
  %107 = load ptr, ptr %depspan, align 8, !dbg !3842, !tbaa !898
  %backtrace_size112 = getelementptr inbounds %struct.yasm_span, ptr %107, i32 0, i32 15, !dbg !3843
  %108 = load i32, ptr %backtrace_size112, align 8, !dbg !3844, !tbaa !3669
  %inc113 = add nsw i32 %108, 1, !dbg !3844
  store i32 %inc113, ptr %backtrace_size112, align 8, !dbg !3844, !tbaa !3669
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3845
  br label %cleanup114, !dbg !3845

cleanup114:                                       ; preds = %if.end106, %if.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %depspan_bt_alloc) #6, !dbg !3845
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !3845
  call void @llvm.lifetime.end.p0(i64 8, ptr %depspan) #6, !dbg !3845
  call void @llvm.lifetime.end.p0(i64 8, ptr %term) #6, !dbg !3845
  call void @llvm.lifetime.end.p0(i64 8, ptr %optd) #6, !dbg !3845
  %cleanup.dest119 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest119, label %unreachable [
    i32 0, label %cleanup.cont120
    i32 1, label %cleanup.cont120
  ]

cleanup.cont120:                                  ; preds = %cleanup114, %cleanup114
  ret void, !dbg !3845

unreachable:                                      ; preds = %cleanup114, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @optimize_term_expand(ptr noundef %node, ptr noundef %d) #0 !dbg !3846 {
entry:
  %node.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %optd = alloca ptr, align 8
  %term = alloca ptr, align 8
  %span = alloca ptr, align 8
  %len_diff = alloca i64, align 8
  %precbc_index = alloca i64, align 8
  %precbc2_index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3848, metadata !DIExpression()), !dbg !3856
  store ptr %d, ptr %d.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3849, metadata !DIExpression()), !dbg !3857
  call void @llvm.lifetime.start.p0(i64 8, ptr %optd) #6, !dbg !3858
  tail call void @llvm.dbg.declare(metadata ptr %optd, metadata !3850, metadata !DIExpression()), !dbg !3859
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3860, !tbaa !898
  store ptr %0, ptr %optd, align 8, !dbg !3859, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %term) #6, !dbg !3861
  tail call void @llvm.dbg.declare(metadata ptr %term, metadata !3851, metadata !DIExpression()), !dbg !3862
  %1 = load ptr, ptr %node.addr, align 8, !dbg !3863, !tbaa !898
  %data = getelementptr inbounds %struct.IntervalTreeNode, ptr %1, i32 0, i32 3, !dbg !3864
  %2 = load ptr, ptr %data, align 8, !dbg !3864, !tbaa !3639
  store ptr %2, ptr %term, align 8, !dbg !3862, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %span) #6, !dbg !3865
  tail call void @llvm.dbg.declare(metadata ptr %span, metadata !3852, metadata !DIExpression()), !dbg !3866
  %3 = load ptr, ptr %term, align 8, !dbg !3867, !tbaa !898
  %span1 = getelementptr inbounds %struct.yasm_span_term, ptr %3, i32 0, i32 2, !dbg !3868
  %4 = load ptr, ptr %span1, align 8, !dbg !3868, !tbaa !3199
  store ptr %4, ptr %span, align 8, !dbg !3866, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %len_diff) #6, !dbg !3869
  tail call void @llvm.dbg.declare(metadata ptr %len_diff, metadata !3853, metadata !DIExpression()), !dbg !3870
  %5 = load ptr, ptr %optd, align 8, !dbg !3871, !tbaa !898
  %len_diff2 = getelementptr inbounds %struct.optimize_data, ptr %5, i32 0, i32 5, !dbg !3872
  %6 = load i64, ptr %len_diff2, align 8, !dbg !3872, !tbaa !2803
  store i64 %6, ptr %len_diff, align 8, !dbg !3870, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %precbc_index) #6, !dbg !3873
  tail call void @llvm.dbg.declare(metadata ptr %precbc_index, metadata !3854, metadata !DIExpression()), !dbg !3874
  call void @llvm.lifetime.start.p0(i64 8, ptr %precbc2_index) #6, !dbg !3873
  tail call void @llvm.dbg.declare(metadata ptr %precbc2_index, metadata !3855, metadata !DIExpression()), !dbg !3875
  %7 = load ptr, ptr %span, align 8, !dbg !3876, !tbaa !898
  %active = getelementptr inbounds %struct.yasm_span, ptr %7, i32 0, i32 13, !dbg !3878
  %8 = load i32, ptr %active, align 4, !dbg !3878, !tbaa !2377
  %tobool = icmp ne i32 %8, 0, !dbg !3876
  br i1 %tobool, label %if.end, label %if.then, !dbg !3879

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3880

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %term, align 8, !dbg !3881, !tbaa !898
  %precbc = getelementptr inbounds %struct.yasm_span_term, ptr %9, i32 0, i32 0, !dbg !3883
  %10 = load ptr, ptr %precbc, align 8, !dbg !3883, !tbaa !2449
  %tobool3 = icmp ne ptr %10, null, !dbg !3881
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !3884

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %term, align 8, !dbg !3885, !tbaa !898
  %precbc5 = getelementptr inbounds %struct.yasm_span_term, ptr %11, i32 0, i32 0, !dbg !3886
  %12 = load ptr, ptr %precbc5, align 8, !dbg !3886, !tbaa !2449
  %bc_index = getelementptr inbounds %struct.yasm_bytecode, ptr %12, i32 0, i32 8, !dbg !3887
  %13 = load i64, ptr %bc_index, align 8, !dbg !3887, !tbaa !2210
  store i64 %13, ptr %precbc_index, align 8, !dbg !3888, !tbaa !1262
  br label %if.end7, !dbg !3889

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %span, align 8, !dbg !3890, !tbaa !898
  %bc = getelementptr inbounds %struct.yasm_span, ptr %14, i32 0, i32 2, !dbg !3891
  %15 = load ptr, ptr %bc, align 8, !dbg !3891, !tbaa !2331
  %bc_index6 = getelementptr inbounds %struct.yasm_bytecode, ptr %15, i32 0, i32 8, !dbg !3892
  %16 = load i64, ptr %bc_index6, align 8, !dbg !3892, !tbaa !2210
  %sub = sub i64 %16, 1, !dbg !3893
  store i64 %sub, ptr %precbc_index, align 8, !dbg !3894, !tbaa !1262
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %17 = load ptr, ptr %term, align 8, !dbg !3895, !tbaa !898
  %precbc2 = getelementptr inbounds %struct.yasm_span_term, ptr %17, i32 0, i32 1, !dbg !3897
  %18 = load ptr, ptr %precbc2, align 8, !dbg !3897, !tbaa !2455
  %tobool8 = icmp ne ptr %18, null, !dbg !3895
  br i1 %tobool8, label %if.then9, label %if.else12, !dbg !3898

if.then9:                                         ; preds = %if.end7
  %19 = load ptr, ptr %term, align 8, !dbg !3899, !tbaa !898
  %precbc210 = getelementptr inbounds %struct.yasm_span_term, ptr %19, i32 0, i32 1, !dbg !3900
  %20 = load ptr, ptr %precbc210, align 8, !dbg !3900, !tbaa !2455
  %bc_index11 = getelementptr inbounds %struct.yasm_bytecode, ptr %20, i32 0, i32 8, !dbg !3901
  %21 = load i64, ptr %bc_index11, align 8, !dbg !3901, !tbaa !2210
  store i64 %21, ptr %precbc2_index, align 8, !dbg !3902, !tbaa !1262
  br label %if.end16, !dbg !3903

if.else12:                                        ; preds = %if.end7
  %22 = load ptr, ptr %span, align 8, !dbg !3904, !tbaa !898
  %bc13 = getelementptr inbounds %struct.yasm_span, ptr %22, i32 0, i32 2, !dbg !3905
  %23 = load ptr, ptr %bc13, align 8, !dbg !3905, !tbaa !2331
  %bc_index14 = getelementptr inbounds %struct.yasm_bytecode, ptr %23, i32 0, i32 8, !dbg !3906
  %24 = load i64, ptr %bc_index14, align 8, !dbg !3906, !tbaa !2210
  %sub15 = sub i64 %24, 1, !dbg !3907
  store i64 %sub15, ptr %precbc2_index, align 8, !dbg !3908, !tbaa !1262
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then9
  %25 = load i64, ptr %precbc_index, align 8, !dbg !3909, !tbaa !1262
  %26 = load i64, ptr %precbc2_index, align 8, !dbg !3911, !tbaa !1262
  %cmp = icmp slt i64 %25, %26, !dbg !3912
  br i1 %cmp, label %if.then17, label %if.else18, !dbg !3913

if.then17:                                        ; preds = %if.end16
  %27 = load i64, ptr %len_diff, align 8, !dbg !3914, !tbaa !1262
  %28 = load ptr, ptr %term, align 8, !dbg !3915, !tbaa !898
  %new_val = getelementptr inbounds %struct.yasm_span_term, ptr %28, i32 0, i32 4, !dbg !3916
  %29 = load i64, ptr %new_val, align 8, !dbg !3917, !tbaa !2466
  %add = add nsw i64 %29, %27, !dbg !3917
  store i64 %add, ptr %new_val, align 8, !dbg !3917, !tbaa !2466
  br label %if.end21, !dbg !3915

if.else18:                                        ; preds = %if.end16
  %30 = load i64, ptr %len_diff, align 8, !dbg !3918, !tbaa !1262
  %31 = load ptr, ptr %term, align 8, !dbg !3919, !tbaa !898
  %new_val19 = getelementptr inbounds %struct.yasm_span_term, ptr %31, i32 0, i32 4, !dbg !3920
  %32 = load i64, ptr %new_val19, align 8, !dbg !3921, !tbaa !2466
  %sub20 = sub nsw i64 %32, %30, !dbg !3921
  store i64 %sub20, ptr %new_val19, align 8, !dbg !3921, !tbaa !2466
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then17
  %33 = load ptr, ptr %span, align 8, !dbg !3922, !tbaa !898
  %active22 = getelementptr inbounds %struct.yasm_span, ptr %33, i32 0, i32 13, !dbg !3924
  %34 = load i32, ptr %active22, align 4, !dbg !3924, !tbaa !2377
  %cmp23 = icmp eq i32 %34, 2, !dbg !3925
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !3926

if.then24:                                        ; preds = %if.end21
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3927

if.end25:                                         ; preds = %if.end21
  %35 = load ptr, ptr %span, align 8, !dbg !3928, !tbaa !898
  %call = call i32 @recalc_normal_span(ptr noundef %35), !dbg !3930
  %tobool26 = icmp ne i32 %call, 0, !dbg !3930
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !3931

if.then27:                                        ; preds = %if.end25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3932

if.end28:                                         ; preds = %if.end25
  %36 = load ptr, ptr %span, align 8, !dbg !3933, !tbaa !898
  %id = getelementptr inbounds %struct.yasm_span, ptr %36, i32 0, i32 12, !dbg !3935
  %37 = load i32, ptr %id, align 8, !dbg !3935, !tbaa !2345
  %cmp29 = icmp sle i32 %37, 0, !dbg !3936
  br i1 %cmp29, label %if.then30, label %if.else35, !dbg !3937

if.then30:                                        ; preds = %if.end28
  br label %do.body, !dbg !3938

do.body:                                          ; preds = %if.then30
  %38 = load ptr, ptr %span, align 8, !dbg !3939, !tbaa !898
  %linkq = getelementptr inbounds %struct.yasm_span, ptr %38, i32 0, i32 1, !dbg !3939
  %stqe_next = getelementptr inbounds %struct.anon.4, ptr %linkq, i32 0, i32 0, !dbg !3939
  store ptr null, ptr %stqe_next, align 8, !dbg !3939, !tbaa !2538
  %39 = load ptr, ptr %span, align 8, !dbg !3939, !tbaa !898
  %40 = load ptr, ptr %optd, align 8, !dbg !3939, !tbaa !898
  %QA = getelementptr inbounds %struct.optimize_data, ptr %40, i32 0, i32 1, !dbg !3939
  %stqh_last = getelementptr inbounds %struct.yasm_span_shead, ptr %QA, i32 0, i32 1, !dbg !3939
  %41 = load ptr, ptr %stqh_last, align 8, !dbg !3939, !tbaa !2666
  store ptr %39, ptr %41, align 8, !dbg !3939, !tbaa !898
  %42 = load ptr, ptr %span, align 8, !dbg !3939, !tbaa !898
  %linkq31 = getelementptr inbounds %struct.yasm_span, ptr %42, i32 0, i32 1, !dbg !3939
  %stqe_next32 = getelementptr inbounds %struct.anon.4, ptr %linkq31, i32 0, i32 0, !dbg !3939
  %43 = load ptr, ptr %optd, align 8, !dbg !3939, !tbaa !898
  %QA33 = getelementptr inbounds %struct.optimize_data, ptr %43, i32 0, i32 1, !dbg !3939
  %stqh_last34 = getelementptr inbounds %struct.yasm_span_shead, ptr %QA33, i32 0, i32 1, !dbg !3939
  store ptr %stqe_next32, ptr %stqh_last34, align 8, !dbg !3939, !tbaa !2666
  br label %do.cond, !dbg !3939

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3939

do.end:                                           ; preds = %do.cond
  br label %if.end46, !dbg !3939

if.else35:                                        ; preds = %if.end28
  br label %do.body36, !dbg !3941

do.body36:                                        ; preds = %if.else35
  %44 = load ptr, ptr %span, align 8, !dbg !3942, !tbaa !898
  %linkq37 = getelementptr inbounds %struct.yasm_span, ptr %44, i32 0, i32 1, !dbg !3942
  %stqe_next38 = getelementptr inbounds %struct.anon.4, ptr %linkq37, i32 0, i32 0, !dbg !3942
  store ptr null, ptr %stqe_next38, align 8, !dbg !3942, !tbaa !2538
  %45 = load ptr, ptr %span, align 8, !dbg !3942, !tbaa !898
  %46 = load ptr, ptr %optd, align 8, !dbg !3942, !tbaa !898
  %QB = getelementptr inbounds %struct.optimize_data, ptr %46, i32 0, i32 2, !dbg !3942
  %stqh_last39 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB, i32 0, i32 1, !dbg !3942
  %47 = load ptr, ptr %stqh_last39, align 8, !dbg !3942, !tbaa !2428
  store ptr %45, ptr %47, align 8, !dbg !3942, !tbaa !898
  %48 = load ptr, ptr %span, align 8, !dbg !3942, !tbaa !898
  %linkq40 = getelementptr inbounds %struct.yasm_span, ptr %48, i32 0, i32 1, !dbg !3942
  %stqe_next41 = getelementptr inbounds %struct.anon.4, ptr %linkq40, i32 0, i32 0, !dbg !3942
  %49 = load ptr, ptr %optd, align 8, !dbg !3942, !tbaa !898
  %QB42 = getelementptr inbounds %struct.optimize_data, ptr %49, i32 0, i32 2, !dbg !3942
  %stqh_last43 = getelementptr inbounds %struct.yasm_span_shead, ptr %QB42, i32 0, i32 1, !dbg !3942
  store ptr %stqe_next41, ptr %stqh_last43, align 8, !dbg !3942, !tbaa !2428
  br label %do.cond44, !dbg !3942

do.cond44:                                        ; preds = %do.body36
  br label %do.end45, !dbg !3942

do.end45:                                         ; preds = %do.cond44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %do.end
  %50 = load ptr, ptr %span, align 8, !dbg !3944, !tbaa !898
  %active47 = getelementptr inbounds %struct.yasm_span, ptr %50, i32 0, i32 13, !dbg !3945
  store i32 2, ptr %active47, align 4, !dbg !3946, !tbaa !2377
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3947
  br label %cleanup, !dbg !3947

cleanup:                                          ; preds = %if.end46, %if.then27, %if.then24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %precbc2_index) #6, !dbg !3947
  call void @llvm.lifetime.end.p0(i64 8, ptr %precbc_index) #6, !dbg !3947
  call void @llvm.lifetime.end.p0(i64 8, ptr %len_diff) #6, !dbg !3947
  call void @llvm.lifetime.end.p0(i64 8, ptr %span) #6, !dbg !3947
  call void @llvm.lifetime.end.p0(i64 8, ptr %term) #6, !dbg !3947
  call void @llvm.lifetime.end.p0(i64 8, ptr %optd) #6, !dbg !3947
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3947

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !3948 ptr @HAMT_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @directive_level2_delete(ptr noundef %data) #0 !dbg !3951 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  %0 = load ptr, ptr @yasm_xfree, align 8, !dbg !3955, !tbaa !898
  %1 = load ptr, ptr %data.addr, align 8, !dbg !3956, !tbaa !898
  call void %0(ptr noundef %1), !dbg !3955
  ret void, !dbg !3957
}

; Function Attrs: nounwind uwtable
define internal void @dir_extern(ptr noundef %object, ptr noundef %valparams, ptr noundef %objext_valparams, i64 noundef %line) #0 !dbg !3958 {
entry:
  %object.addr = alloca ptr, align 8
  %valparams.addr = alloca ptr, align 8
  %objext_valparams.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %vp = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %vps = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !3960, metadata !DIExpression()), !dbg !3971
  store ptr %valparams, ptr %valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %valparams.addr, metadata !3961, metadata !DIExpression()), !dbg !3972
  store ptr %objext_valparams, ptr %objext_valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %objext_valparams.addr, metadata !3962, metadata !DIExpression()), !dbg !3973
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !3963, metadata !DIExpression()), !dbg !3974
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #6, !dbg !3975
  tail call void @llvm.dbg.declare(metadata ptr %vp, metadata !3964, metadata !DIExpression()), !dbg !3976
  %0 = load ptr, ptr %valparams.addr, align 8, !dbg !3977, !tbaa !898
  %stqh_first = getelementptr inbounds %struct.yasm_valparamhead, ptr %0, i32 0, i32 0, !dbg !3977
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !3977, !tbaa !3978
  store ptr %1, ptr %vp, align 8, !dbg !3976, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #6, !dbg !3980
  tail call void @llvm.dbg.declare(metadata ptr %sym, metadata !3967, metadata !DIExpression()), !dbg !3981
  %2 = load ptr, ptr %object.addr, align 8, !dbg !3982, !tbaa !898
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %2, i32 0, i32 2, !dbg !3983
  %3 = load ptr, ptr %symtab, align 8, !dbg !3983, !tbaa !941
  %4 = load ptr, ptr %vp, align 8, !dbg !3984, !tbaa !898
  %call = call ptr @yasm_vp_id(ptr noundef %4), !dbg !3985
  %5 = load i64, ptr %line.addr, align 8, !dbg !3986, !tbaa !1262
  %call1 = call ptr @yasm_symtab_declare(ptr noundef %3, ptr noundef %call, i32 noundef 4, i64 noundef %5), !dbg !3987
  store ptr %call1, ptr %sym, align 8, !dbg !3988, !tbaa !898
  %6 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !3989, !tbaa !898
  %tobool = icmp ne ptr %6, null, !dbg !3989
  br i1 %tobool, label %if.then, label %if.end, !dbg !3990

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %vps) #6, !dbg !3991
  tail call void @llvm.dbg.declare(metadata ptr %vps, metadata !3968, metadata !DIExpression()), !dbg !3992
  %call2 = call ptr @yasm_vps_create(), !dbg !3993
  store ptr %call2, ptr %vps, align 8, !dbg !3992, !tbaa !898
  %7 = load ptr, ptr %vps, align 8, !dbg !3994, !tbaa !898
  %8 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !3995, !tbaa !898
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 16, i1 false), !dbg !3996, !tbaa.struct !3997
  br label %do.body, !dbg !3998

do.body:                                          ; preds = %if.then
  %9 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !3999, !tbaa !898
  %stqh_first3 = getelementptr inbounds %struct.yasm_valparamhead, ptr %9, i32 0, i32 0, !dbg !3999
  store ptr null, ptr %stqh_first3, align 8, !dbg !3999, !tbaa !3978
  %10 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !3999, !tbaa !898
  %stqh_first4 = getelementptr inbounds %struct.yasm_valparamhead, ptr %10, i32 0, i32 0, !dbg !3999
  %11 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !3999, !tbaa !898
  %stqh_last = getelementptr inbounds %struct.yasm_valparamhead, ptr %11, i32 0, i32 1, !dbg !3999
  store ptr %stqh_first4, ptr %stqh_last, align 8, !dbg !3999, !tbaa !4001
  br label %do.cond, !dbg !3999

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3999

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %sym, align 8, !dbg !4002, !tbaa !898
  %13 = load ptr, ptr %vps, align 8, !dbg !4003, !tbaa !898
  call void @yasm_symrec_set_objext_valparams(ptr noundef %12, ptr noundef %13), !dbg !4004
  call void @llvm.lifetime.end.p0(i64 8, ptr %vps) #6, !dbg !4005
  br label %if.end, !dbg !4006

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #6, !dbg !4007
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #6, !dbg !4007
  ret void, !dbg !4007
}

; Function Attrs: nounwind uwtable
define internal void @dir_global(ptr noundef %object, ptr noundef %valparams, ptr noundef %objext_valparams, i64 noundef %line) #0 !dbg !4008 {
entry:
  %object.addr = alloca ptr, align 8
  %valparams.addr = alloca ptr, align 8
  %objext_valparams.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %vp = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %vps = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !4010, metadata !DIExpression()), !dbg !4019
  store ptr %valparams, ptr %valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %valparams.addr, metadata !4011, metadata !DIExpression()), !dbg !4020
  store ptr %objext_valparams, ptr %objext_valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %objext_valparams.addr, metadata !4012, metadata !DIExpression()), !dbg !4021
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4013, metadata !DIExpression()), !dbg !4022
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #6, !dbg !4023
  tail call void @llvm.dbg.declare(metadata ptr %vp, metadata !4014, metadata !DIExpression()), !dbg !4024
  %0 = load ptr, ptr %valparams.addr, align 8, !dbg !4025, !tbaa !898
  %stqh_first = getelementptr inbounds %struct.yasm_valparamhead, ptr %0, i32 0, i32 0, !dbg !4025
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !4025, !tbaa !3978
  store ptr %1, ptr %vp, align 8, !dbg !4024, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #6, !dbg !4026
  tail call void @llvm.dbg.declare(metadata ptr %sym, metadata !4015, metadata !DIExpression()), !dbg !4027
  %2 = load ptr, ptr %object.addr, align 8, !dbg !4028, !tbaa !898
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %2, i32 0, i32 2, !dbg !4029
  %3 = load ptr, ptr %symtab, align 8, !dbg !4029, !tbaa !941
  %4 = load ptr, ptr %vp, align 8, !dbg !4030, !tbaa !898
  %call = call ptr @yasm_vp_id(ptr noundef %4), !dbg !4031
  %5 = load i64, ptr %line.addr, align 8, !dbg !4032, !tbaa !1262
  %call1 = call ptr @yasm_symtab_declare(ptr noundef %3, ptr noundef %call, i32 noundef 1, i64 noundef %5), !dbg !4033
  store ptr %call1, ptr %sym, align 8, !dbg !4034, !tbaa !898
  %6 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4035, !tbaa !898
  %tobool = icmp ne ptr %6, null, !dbg !4035
  br i1 %tobool, label %if.then, label %if.end, !dbg !4036

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %vps) #6, !dbg !4037
  tail call void @llvm.dbg.declare(metadata ptr %vps, metadata !4016, metadata !DIExpression()), !dbg !4038
  %call2 = call ptr @yasm_vps_create(), !dbg !4039
  store ptr %call2, ptr %vps, align 8, !dbg !4038, !tbaa !898
  %7 = load ptr, ptr %vps, align 8, !dbg !4040, !tbaa !898
  %8 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4041, !tbaa !898
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 16, i1 false), !dbg !4042, !tbaa.struct !3997
  br label %do.body, !dbg !4043

do.body:                                          ; preds = %if.then
  %9 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4044, !tbaa !898
  %stqh_first3 = getelementptr inbounds %struct.yasm_valparamhead, ptr %9, i32 0, i32 0, !dbg !4044
  store ptr null, ptr %stqh_first3, align 8, !dbg !4044, !tbaa !3978
  %10 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4044, !tbaa !898
  %stqh_first4 = getelementptr inbounds %struct.yasm_valparamhead, ptr %10, i32 0, i32 0, !dbg !4044
  %11 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4044, !tbaa !898
  %stqh_last = getelementptr inbounds %struct.yasm_valparamhead, ptr %11, i32 0, i32 1, !dbg !4044
  store ptr %stqh_first4, ptr %stqh_last, align 8, !dbg !4044, !tbaa !4001
  br label %do.cond, !dbg !4044

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4044

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %sym, align 8, !dbg !4046, !tbaa !898
  %13 = load ptr, ptr %vps, align 8, !dbg !4047, !tbaa !898
  call void @yasm_symrec_set_objext_valparams(ptr noundef %12, ptr noundef %13), !dbg !4048
  call void @llvm.lifetime.end.p0(i64 8, ptr %vps) #6, !dbg !4049
  br label %if.end, !dbg !4050

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #6, !dbg !4051
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #6, !dbg !4051
  ret void, !dbg !4051
}

; Function Attrs: nounwind uwtable
define internal void @dir_common(ptr noundef %object, ptr noundef %valparams, ptr noundef %objext_valparams, i64 noundef %line) #0 !dbg !4052 {
entry:
  %object.addr = alloca ptr, align 8
  %valparams.addr = alloca ptr, align 8
  %objext_valparams.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %vp = alloca ptr, align 8
  %vp2 = alloca ptr, align 8
  %size = alloca ptr, align 8
  %sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vps = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !4054, metadata !DIExpression()), !dbg !4065
  store ptr %valparams, ptr %valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %valparams.addr, metadata !4055, metadata !DIExpression()), !dbg !4066
  store ptr %objext_valparams, ptr %objext_valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %objext_valparams.addr, metadata !4056, metadata !DIExpression()), !dbg !4067
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4057, metadata !DIExpression()), !dbg !4068
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #6, !dbg !4069
  tail call void @llvm.dbg.declare(metadata ptr %vp, metadata !4058, metadata !DIExpression()), !dbg !4070
  %0 = load ptr, ptr %valparams.addr, align 8, !dbg !4071, !tbaa !898
  %stqh_first = getelementptr inbounds %struct.yasm_valparamhead, ptr %0, i32 0, i32 0, !dbg !4071
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !4071, !tbaa !3978
  store ptr %1, ptr %vp, align 8, !dbg !4070, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp2) #6, !dbg !4072
  tail call void @llvm.dbg.declare(metadata ptr %vp2, metadata !4059, metadata !DIExpression()), !dbg !4073
  %2 = load ptr, ptr %vp, align 8, !dbg !4074, !tbaa !898
  %link = getelementptr inbounds %struct.yasm_valparam, ptr %2, i32 0, i32 0, !dbg !4074
  %stqe_next = getelementptr inbounds %struct.anon.5, ptr %link, i32 0, i32 0, !dbg !4074
  %3 = load ptr, ptr %stqe_next, align 8, !dbg !4074, !tbaa !4075
  store ptr %3, ptr %vp2, align 8, !dbg !4073, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6, !dbg !4077
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !4060, metadata !DIExpression()), !dbg !4078
  %4 = load ptr, ptr %vp2, align 8, !dbg !4079, !tbaa !898
  %5 = load ptr, ptr %object.addr, align 8, !dbg !4080, !tbaa !898
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %5, i32 0, i32 2, !dbg !4081
  %6 = load ptr, ptr %symtab, align 8, !dbg !4081, !tbaa !941
  %7 = load i64, ptr %line.addr, align 8, !dbg !4082, !tbaa !1262
  %call = call ptr @yasm_vp_expr(ptr noundef %4, ptr noundef %6, i64 noundef %7), !dbg !4083
  store ptr %call, ptr %size, align 8, !dbg !4078, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %sym) #6, !dbg !4084
  tail call void @llvm.dbg.declare(metadata ptr %sym, metadata !4061, metadata !DIExpression()), !dbg !4085
  %8 = load ptr, ptr %size, align 8, !dbg !4086, !tbaa !898
  %tobool = icmp ne ptr %8, null, !dbg !4086
  br i1 %tobool, label %if.end, label %if.then, !dbg !4088

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 64, ptr noundef @.str.28, ptr noundef @.str.29), !dbg !4089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4091

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %object.addr, align 8, !dbg !4092, !tbaa !898
  %symtab1 = getelementptr inbounds %struct.yasm_object, ptr %9, i32 0, i32 2, !dbg !4093
  %10 = load ptr, ptr %symtab1, align 8, !dbg !4093, !tbaa !941
  %11 = load ptr, ptr %vp, align 8, !dbg !4094, !tbaa !898
  %call2 = call ptr @yasm_vp_id(ptr noundef %11), !dbg !4095
  %12 = load i64, ptr %line.addr, align 8, !dbg !4096, !tbaa !1262
  %call3 = call ptr @yasm_symtab_declare(ptr noundef %10, ptr noundef %call2, i32 noundef 2, i64 noundef %12), !dbg !4097
  store ptr %call3, ptr %sym, align 8, !dbg !4098, !tbaa !898
  %13 = load ptr, ptr %sym, align 8, !dbg !4099, !tbaa !898
  %14 = load ptr, ptr %size, align 8, !dbg !4100, !tbaa !898
  call void @yasm_symrec_set_common_size(ptr noundef %13, ptr noundef %14), !dbg !4101
  %15 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4102, !tbaa !898
  %tobool4 = icmp ne ptr %15, null, !dbg !4102
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !4103

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %vps) #6, !dbg !4104
  tail call void @llvm.dbg.declare(metadata ptr %vps, metadata !4062, metadata !DIExpression()), !dbg !4105
  %call6 = call ptr @yasm_vps_create(), !dbg !4106
  store ptr %call6, ptr %vps, align 8, !dbg !4105, !tbaa !898
  %16 = load ptr, ptr %vps, align 8, !dbg !4107, !tbaa !898
  %17 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4108, !tbaa !898
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %17, i64 16, i1 false), !dbg !4109, !tbaa.struct !3997
  br label %do.body, !dbg !4110

do.body:                                          ; preds = %if.then5
  %18 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4111, !tbaa !898
  %stqh_first7 = getelementptr inbounds %struct.yasm_valparamhead, ptr %18, i32 0, i32 0, !dbg !4111
  store ptr null, ptr %stqh_first7, align 8, !dbg !4111, !tbaa !3978
  %19 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4111, !tbaa !898
  %stqh_first8 = getelementptr inbounds %struct.yasm_valparamhead, ptr %19, i32 0, i32 0, !dbg !4111
  %20 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4111, !tbaa !898
  %stqh_last = getelementptr inbounds %struct.yasm_valparamhead, ptr %20, i32 0, i32 1, !dbg !4111
  store ptr %stqh_first8, ptr %stqh_last, align 8, !dbg !4111, !tbaa !4001
  br label %do.cond, !dbg !4111

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4111

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %sym, align 8, !dbg !4113, !tbaa !898
  %22 = load ptr, ptr %vps, align 8, !dbg !4114, !tbaa !898
  call void @yasm_symrec_set_objext_valparams(ptr noundef %21, ptr noundef %22), !dbg !4115
  call void @llvm.lifetime.end.p0(i64 8, ptr %vps) #6, !dbg !4116
  br label %if.end9, !dbg !4117

if.end9:                                          ; preds = %do.end, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4118
  br label %cleanup, !dbg !4118

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sym) #6, !dbg !4118
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6, !dbg !4118
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp2) #6, !dbg !4118
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #6, !dbg !4118
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4118

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dir_section(ptr noundef %object, ptr noundef %valparams, ptr noundef %objext_valparams, i64 noundef %line) #0 !dbg !4119 {
entry:
  %object.addr = alloca ptr, align 8
  %valparams.addr = alloca ptr, align 8
  %objext_valparams.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %new_section = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !4121, metadata !DIExpression()), !dbg !4126
  store ptr %valparams, ptr %valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %valparams.addr, metadata !4122, metadata !DIExpression()), !dbg !4127
  store ptr %objext_valparams, ptr %objext_valparams.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %objext_valparams.addr, metadata !4123, metadata !DIExpression()), !dbg !4128
  store i64 %line, ptr %line.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4124, metadata !DIExpression()), !dbg !4129
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_section) #6, !dbg !4130
  tail call void @llvm.dbg.declare(metadata ptr %new_section, metadata !4125, metadata !DIExpression()), !dbg !4131
  %0 = load ptr, ptr %object.addr, align 8, !dbg !4132, !tbaa !898
  %objfmt = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 4, !dbg !4132
  %1 = load ptr, ptr %objfmt, align 8, !dbg !4132, !tbaa !968
  %module = getelementptr inbounds %struct.yasm_objfmt_base, ptr %1, i32 0, i32 0, !dbg !4132
  %2 = load ptr, ptr %module, align 8, !dbg !4132, !tbaa !992
  %section_switch = getelementptr inbounds %struct.yasm_objfmt_module, ptr %2, i32 0, i32 14, !dbg !4132
  %3 = load ptr, ptr %section_switch, align 8, !dbg !4132, !tbaa !4133
  %4 = load ptr, ptr %object.addr, align 8, !dbg !4132, !tbaa !898
  %5 = load ptr, ptr %valparams.addr, align 8, !dbg !4132, !tbaa !898
  %6 = load ptr, ptr %objext_valparams.addr, align 8, !dbg !4132, !tbaa !898
  %7 = load i64, ptr %line.addr, align 8, !dbg !4132, !tbaa !1262
  %call = call ptr %3(ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7), !dbg !4132
  store ptr %call, ptr %new_section, align 8, !dbg !4131, !tbaa !898
  %8 = load ptr, ptr %new_section, align 8, !dbg !4134, !tbaa !898
  %tobool = icmp ne ptr %8, null, !dbg !4134
  br i1 %tobool, label %if.then, label %if.else, !dbg !4136

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %new_section, align 8, !dbg !4137, !tbaa !898
  %10 = load ptr, ptr %object.addr, align 8, !dbg !4138, !tbaa !898
  %cur_section = getelementptr inbounds %struct.yasm_object, ptr %10, i32 0, i32 6, !dbg !4139
  store ptr %9, ptr %cur_section, align 8, !dbg !4140, !tbaa !1000
  br label %if.end, !dbg !4138

if.else:                                          ; preds = %entry
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 64, ptr noundef @.str.30, ptr noundef @.str.31), !dbg !4141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_section) #6, !dbg !4142
  ret void, !dbg !4142
}

declare !dbg !4143 ptr @yasm_symtab_declare(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !4147 ptr @yasm_vp_id(ptr noundef) #2

declare !dbg !4152 ptr @yasm_vps_create() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !4155 void @yasm_symrec_set_objext_valparams(ptr noundef, ptr noundef) #2

declare !dbg !4158 ptr @yasm_vp_expr(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !4161 void @yasm_symrec_set_common_size(ptr noundef, ptr noundef) #2

declare !dbg !4164 void @yasm__assoc_data_destroy(ptr noundef) #2

declare !dbg !4167 void @yasm_bc_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @create_span(ptr noundef %bc, i32 noundef %id, ptr noundef %value, i64 noundef %neg_thres, i64 noundef %pos_thres, ptr noundef %os) #0 !dbg !4170 {
entry:
  %bc.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %neg_thres.addr = alloca i64, align 8
  %pos_thres.addr = alloca i64, align 8
  %os.addr = alloca ptr, align 8
  %span = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !4174, metadata !DIExpression()), !dbg !4181
  store i32 %id, ptr %id.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4175, metadata !DIExpression()), !dbg !4182
  store ptr %value, ptr %value.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4176, metadata !DIExpression()), !dbg !4183
  store i64 %neg_thres, ptr %neg_thres.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %neg_thres.addr, metadata !4177, metadata !DIExpression()), !dbg !4184
  store i64 %pos_thres, ptr %pos_thres.addr, align 8, !tbaa !1262
  tail call void @llvm.dbg.declare(metadata ptr %pos_thres.addr, metadata !4178, metadata !DIExpression()), !dbg !4185
  store ptr %os, ptr %os.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %os.addr, metadata !4179, metadata !DIExpression()), !dbg !4186
  call void @llvm.lifetime.start.p0(i64 8, ptr %span) #6, !dbg !4187
  tail call void @llvm.dbg.declare(metadata ptr %span, metadata !4180, metadata !DIExpression()), !dbg !4188
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !4189, !tbaa !898
  %call = call ptr %0(i64 noundef 160), !dbg !4189
  store ptr %call, ptr %span, align 8, !dbg !4188, !tbaa !898
  %1 = load ptr, ptr %bc.addr, align 8, !dbg !4190, !tbaa !898
  %2 = load ptr, ptr %span, align 8, !dbg !4191, !tbaa !898
  %bc1 = getelementptr inbounds %struct.yasm_span, ptr %2, i32 0, i32 2, !dbg !4192
  store ptr %1, ptr %bc1, align 8, !dbg !4193, !tbaa !2331
  %3 = load ptr, ptr %value.addr, align 8, !dbg !4194, !tbaa !898
  %tobool = icmp ne ptr %3, null, !dbg !4194
  br i1 %tobool, label %if.then, label %if.else, !dbg !4196

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %span, align 8, !dbg !4197, !tbaa !898
  %depval = getelementptr inbounds %struct.yasm_span, ptr %4, i32 0, i32 3, !dbg !4198
  %5 = load ptr, ptr %value.addr, align 8, !dbg !4199, !tbaa !898
  call void @yasm_value_init_copy(ptr noundef %depval, ptr noundef %5), !dbg !4200
  br label %if.end, !dbg !4200

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %span, align 8, !dbg !4201, !tbaa !898
  %depval2 = getelementptr inbounds %struct.yasm_span, ptr %6, i32 0, i32 3, !dbg !4202
  call void @yasm_value_initialize(ptr noundef %depval2, ptr noundef null, i32 noundef 0), !dbg !4203
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %span, align 8, !dbg !4204, !tbaa !898
  %rel_term = getelementptr inbounds %struct.yasm_span, ptr %7, i32 0, i32 4, !dbg !4205
  store ptr null, ptr %rel_term, align 8, !dbg !4206, !tbaa !2490
  %8 = load ptr, ptr %span, align 8, !dbg !4207, !tbaa !898
  %terms = getelementptr inbounds %struct.yasm_span, ptr %8, i32 0, i32 5, !dbg !4208
  store ptr null, ptr %terms, align 8, !dbg !4209, !tbaa !2446
  %9 = load ptr, ptr %span, align 8, !dbg !4210, !tbaa !898
  %items = getelementptr inbounds %struct.yasm_span, ptr %9, i32 0, i32 6, !dbg !4211
  store ptr null, ptr %items, align 8, !dbg !4212, !tbaa !3058
  %10 = load ptr, ptr %span, align 8, !dbg !4213, !tbaa !898
  %num_terms = getelementptr inbounds %struct.yasm_span, ptr %10, i32 0, i32 7, !dbg !4214
  store i32 0, ptr %num_terms, align 8, !dbg !4215, !tbaa !2440
  %11 = load ptr, ptr %span, align 8, !dbg !4216, !tbaa !898
  %cur_val = getelementptr inbounds %struct.yasm_span, ptr %11, i32 0, i32 8, !dbg !4217
  store i64 0, ptr %cur_val, align 8, !dbg !4218, !tbaa !2348
  %12 = load ptr, ptr %span, align 8, !dbg !4219, !tbaa !898
  %new_val = getelementptr inbounds %struct.yasm_span, ptr %12, i32 0, i32 9, !dbg !4220
  store i64 0, ptr %new_val, align 8, !dbg !4221, !tbaa !2351
  %13 = load i64, ptr %neg_thres.addr, align 8, !dbg !4222, !tbaa !1262
  %14 = load ptr, ptr %span, align 8, !dbg !4223, !tbaa !898
  %neg_thres3 = getelementptr inbounds %struct.yasm_span, ptr %14, i32 0, i32 10, !dbg !4224
  store i64 %13, ptr %neg_thres3, align 8, !dbg !4225, !tbaa !3353
  %15 = load i64, ptr %pos_thres.addr, align 8, !dbg !4226, !tbaa !1262
  %16 = load ptr, ptr %span, align 8, !dbg !4227, !tbaa !898
  %pos_thres4 = getelementptr inbounds %struct.yasm_span, ptr %16, i32 0, i32 11, !dbg !4228
  store i64 %15, ptr %pos_thres4, align 8, !dbg !4229, !tbaa !3360
  %17 = load i32, ptr %id.addr, align 4, !dbg !4230, !tbaa !1002
  %18 = load ptr, ptr %span, align 8, !dbg !4231, !tbaa !898
  %id5 = getelementptr inbounds %struct.yasm_span, ptr %18, i32 0, i32 12, !dbg !4232
  store i32 %17, ptr %id5, align 8, !dbg !4233, !tbaa !2345
  %19 = load ptr, ptr %span, align 8, !dbg !4234, !tbaa !898
  %active = getelementptr inbounds %struct.yasm_span, ptr %19, i32 0, i32 13, !dbg !4235
  store i32 1, ptr %active, align 4, !dbg !4236, !tbaa !2377
  %20 = load ptr, ptr %span, align 8, !dbg !4237, !tbaa !898
  %backtrace = getelementptr inbounds %struct.yasm_span, ptr %20, i32 0, i32 14, !dbg !4238
  store ptr null, ptr %backtrace, align 8, !dbg !4239, !tbaa !3420
  %21 = load ptr, ptr %span, align 8, !dbg !4240, !tbaa !898
  %backtrace_size = getelementptr inbounds %struct.yasm_span, ptr %21, i32 0, i32 15, !dbg !4241
  store i32 0, ptr %backtrace_size, align 8, !dbg !4242, !tbaa !3669
  %22 = load ptr, ptr %os.addr, align 8, !dbg !4243, !tbaa !898
  %23 = load ptr, ptr %span, align 8, !dbg !4244, !tbaa !898
  %os6 = getelementptr inbounds %struct.yasm_span, ptr %23, i32 0, i32 16, !dbg !4245
  store ptr %22, ptr %os6, align 8, !dbg !4246, !tbaa !2819
  %24 = load ptr, ptr %span, align 8, !dbg !4247, !tbaa !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %span) #6, !dbg !4248
  ret ptr %24, !dbg !4249
}

declare !dbg !4250 void @yasm_value_init_copy(ptr noundef, ptr noundef) #2

declare !dbg !4254 void @yasm_value_initialize(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !4257 void @IT_destroy(ptr noundef) #2

declare !dbg !4260 i32 @yasm_expr__bc_dist_subst(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @add_span_term(i32 noundef %subst, ptr noundef %precbc, ptr noundef %precbc2, ptr noundef %d) #0 !dbg !4267 {
entry:
  %subst.addr = alloca i32, align 4
  %precbc.addr = alloca ptr, align 8
  %precbc2.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %span = alloca ptr, align 8
  %intn = alloca ptr, align 8
  store i32 %subst, ptr %subst.addr, align 4, !tbaa !1002
  tail call void @llvm.dbg.declare(metadata ptr %subst.addr, metadata !4269, metadata !DIExpression()), !dbg !4275
  store ptr %precbc, ptr %precbc.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %precbc.addr, metadata !4270, metadata !DIExpression()), !dbg !4276
  store ptr %precbc2, ptr %precbc2.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %precbc2.addr, metadata !4271, metadata !DIExpression()), !dbg !4277
  store ptr %d, ptr %d.addr, align 8, !tbaa !898
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !4272, metadata !DIExpression()), !dbg !4278
  call void @llvm.lifetime.start.p0(i64 8, ptr %span) #6, !dbg !4279
  tail call void @llvm.dbg.declare(metadata ptr %span, metadata !4273, metadata !DIExpression()), !dbg !4280
  %0 = load ptr, ptr %d.addr, align 8, !dbg !4281, !tbaa !898
  store ptr %0, ptr %span, align 8, !dbg !4280, !tbaa !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %intn) #6, !dbg !4282
  tail call void @llvm.dbg.declare(metadata ptr %intn, metadata !4274, metadata !DIExpression()), !dbg !4283
  %1 = load i32, ptr %subst.addr, align 4, !dbg !4284, !tbaa !1002
  %2 = load ptr, ptr %span, align 8, !dbg !4286, !tbaa !898
  %num_terms = getelementptr inbounds %struct.yasm_span, ptr %2, i32 0, i32 7, !dbg !4287
  %3 = load i32, ptr %num_terms, align 8, !dbg !4287, !tbaa !2440
  %cmp = icmp uge i32 %1, %3, !dbg !4288
  br i1 %cmp, label %if.then, label %if.end, !dbg !4289

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %subst.addr, align 4, !dbg !4290, !tbaa !1002
  %add = add i32 %4, 1, !dbg !4292
  %5 = load ptr, ptr %span, align 8, !dbg !4293, !tbaa !898
  %num_terms1 = getelementptr inbounds %struct.yasm_span, ptr %5, i32 0, i32 7, !dbg !4294
  store i32 %add, ptr %num_terms1, align 8, !dbg !4295, !tbaa !2440
  %6 = load ptr, ptr @yasm_xrealloc, align 8, !dbg !4296, !tbaa !898
  %7 = load ptr, ptr %span, align 8, !dbg !4297, !tbaa !898
  %terms = getelementptr inbounds %struct.yasm_span, ptr %7, i32 0, i32 5, !dbg !4298
  %8 = load ptr, ptr %terms, align 8, !dbg !4298, !tbaa !2446
  %9 = load ptr, ptr %span, align 8, !dbg !4299, !tbaa !898
  %num_terms2 = getelementptr inbounds %struct.yasm_span, ptr %9, i32 0, i32 7, !dbg !4300
  %10 = load i32, ptr %num_terms2, align 8, !dbg !4300, !tbaa !2440
  %conv = zext i32 %10 to i64, !dbg !4299
  %mul = mul i64 %conv, 48, !dbg !4301
  %call = call ptr %6(ptr noundef %8, i64 noundef %mul), !dbg !4296
  %11 = load ptr, ptr %span, align 8, !dbg !4302, !tbaa !898
  %terms3 = getelementptr inbounds %struct.yasm_span, ptr %11, i32 0, i32 5, !dbg !4303
  store ptr %call, ptr %terms3, align 8, !dbg !4304, !tbaa !2446
  br label %if.end, !dbg !4305

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %precbc.addr, align 8, !dbg !4306, !tbaa !898
  %13 = load ptr, ptr %span, align 8, !dbg !4307, !tbaa !898
  %terms4 = getelementptr inbounds %struct.yasm_span, ptr %13, i32 0, i32 5, !dbg !4308
  %14 = load ptr, ptr %terms4, align 8, !dbg !4308, !tbaa !2446
  %15 = load i32, ptr %subst.addr, align 4, !dbg !4309, !tbaa !1002
  %idxprom = zext i32 %15 to i64, !dbg !4307
  %arrayidx = getelementptr inbounds %struct.yasm_span_term, ptr %14, i64 %idxprom, !dbg !4307
  %precbc5 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx, i32 0, i32 0, !dbg !4310
  store ptr %12, ptr %precbc5, align 8, !dbg !4311, !tbaa !2449
  %16 = load ptr, ptr %precbc2.addr, align 8, !dbg !4312, !tbaa !898
  %17 = load ptr, ptr %span, align 8, !dbg !4313, !tbaa !898
  %terms6 = getelementptr inbounds %struct.yasm_span, ptr %17, i32 0, i32 5, !dbg !4314
  %18 = load ptr, ptr %terms6, align 8, !dbg !4314, !tbaa !2446
  %19 = load i32, ptr %subst.addr, align 4, !dbg !4315, !tbaa !1002
  %idxprom7 = zext i32 %19 to i64, !dbg !4313
  %arrayidx8 = getelementptr inbounds %struct.yasm_span_term, ptr %18, i64 %idxprom7, !dbg !4313
  %precbc29 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx8, i32 0, i32 1, !dbg !4316
  store ptr %16, ptr %precbc29, align 8, !dbg !4317, !tbaa !2455
  %20 = load ptr, ptr %span, align 8, !dbg !4318, !tbaa !898
  %21 = load ptr, ptr %span, align 8, !dbg !4319, !tbaa !898
  %terms10 = getelementptr inbounds %struct.yasm_span, ptr %21, i32 0, i32 5, !dbg !4320
  %22 = load ptr, ptr %terms10, align 8, !dbg !4320, !tbaa !2446
  %23 = load i32, ptr %subst.addr, align 4, !dbg !4321, !tbaa !1002
  %idxprom11 = zext i32 %23 to i64, !dbg !4319
  %arrayidx12 = getelementptr inbounds %struct.yasm_span_term, ptr %22, i64 %idxprom11, !dbg !4319
  %span13 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx12, i32 0, i32 2, !dbg !4322
  store ptr %20, ptr %span13, align 8, !dbg !4323, !tbaa !3199
  %24 = load i32, ptr %subst.addr, align 4, !dbg !4324, !tbaa !1002
  %25 = load ptr, ptr %span, align 8, !dbg !4325, !tbaa !898
  %terms14 = getelementptr inbounds %struct.yasm_span, ptr %25, i32 0, i32 5, !dbg !4326
  %26 = load ptr, ptr %terms14, align 8, !dbg !4326, !tbaa !2446
  %27 = load i32, ptr %subst.addr, align 4, !dbg !4327, !tbaa !1002
  %idxprom15 = zext i32 %27 to i64, !dbg !4325
  %arrayidx16 = getelementptr inbounds %struct.yasm_span_term, ptr %26, i64 %idxprom15, !dbg !4325
  %subst17 = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx16, i32 0, i32 5, !dbg !4328
  store i32 %24, ptr %subst17, align 8, !dbg !4329, !tbaa !3204
  %28 = load ptr, ptr %precbc.addr, align 8, !dbg !4330, !tbaa !898
  %29 = load ptr, ptr %precbc2.addr, align 8, !dbg !4331, !tbaa !898
  %call18 = call ptr @yasm_calc_bc_dist(ptr noundef %28, ptr noundef %29), !dbg !4332
  store ptr %call18, ptr %intn, align 8, !dbg !4333, !tbaa !898
  %30 = load ptr, ptr %intn, align 8, !dbg !4334, !tbaa !898
  %tobool = icmp ne ptr %30, null, !dbg !4334
  br i1 %tobool, label %if.end20, label %if.then19, !dbg !4336

if.then19:                                        ; preds = %if.end
  %31 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !4337, !tbaa !898
  call void %31(ptr noundef @.str.6, i32 noundef 948, ptr noundef @.str.16), !dbg !4337
  br label %if.end20, !dbg !4337

if.end20:                                         ; preds = %if.then19, %if.end
  %32 = load ptr, ptr %span, align 8, !dbg !4338, !tbaa !898
  %terms21 = getelementptr inbounds %struct.yasm_span, ptr %32, i32 0, i32 5, !dbg !4339
  %33 = load ptr, ptr %terms21, align 8, !dbg !4339, !tbaa !2446
  %34 = load i32, ptr %subst.addr, align 4, !dbg !4340, !tbaa !1002
  %idxprom22 = zext i32 %34 to i64, !dbg !4338
  %arrayidx23 = getelementptr inbounds %struct.yasm_span_term, ptr %33, i64 %idxprom22, !dbg !4338
  %cur_val = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx23, i32 0, i32 3, !dbg !4341
  store i64 0, ptr %cur_val, align 8, !dbg !4342, !tbaa !2472
  %35 = load ptr, ptr %intn, align 8, !dbg !4343, !tbaa !898
  %call24 = call i64 @yasm_intnum_get_int(ptr noundef %35), !dbg !4344
  %36 = load ptr, ptr %span, align 8, !dbg !4345, !tbaa !898
  %terms25 = getelementptr inbounds %struct.yasm_span, ptr %36, i32 0, i32 5, !dbg !4346
  %37 = load ptr, ptr %terms25, align 8, !dbg !4346, !tbaa !2446
  %38 = load i32, ptr %subst.addr, align 4, !dbg !4347, !tbaa !1002
  %idxprom26 = zext i32 %38 to i64, !dbg !4345
  %arrayidx27 = getelementptr inbounds %struct.yasm_span_term, ptr %37, i64 %idxprom26, !dbg !4345
  %new_val = getelementptr inbounds %struct.yasm_span_term, ptr %arrayidx27, i32 0, i32 4, !dbg !4348
  store i64 %call24, ptr %new_val, align 8, !dbg !4349, !tbaa !2466
  %39 = load ptr, ptr %intn, align 8, !dbg !4350, !tbaa !898
  call void @yasm_intnum_destroy(ptr noundef %39), !dbg !4351
  call void @llvm.lifetime.end.p0(i64 8, ptr %intn) #6, !dbg !4352
  call void @llvm.lifetime.end.p0(i64 8, ptr %span) #6, !dbg !4352
  ret void, !dbg !4352
}

declare !dbg !4353 ptr @yasm_intnum_create_int(i64 noundef) #2

declare !dbg !4356 i32 @yasm_symrec_get_label(ptr noundef, ptr noundef) #2

declare !dbg !4363 ptr @yasm_expr__copy_except(ptr noundef, i32 noundef) #2

declare !dbg !4368 void @yasm_intnum_set_int(ptr noundef, i64 noundef) #2

declare !dbg !4371 i32 @yasm_expr__subst(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !4376 ptr @yasm_expr_get_intnum(ptr noundef, i32 noundef) #2

declare !dbg !4379 void @yasm_expr_destroy(ptr noundef) #2

declare !dbg !4382 void @yasm_value_delete(ptr noundef) #2

declare !dbg !4385 ptr @IT_insert(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!872, !873, !874, !875, !876, !877}
!llvm.ident = !{!878}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "libyasm/section.c", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "95029ae4c72ecaea1564a0b451da4283")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 67)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 56)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "object_directives", scope: !21, file: !2, line: 163, type: !869, isLocal: true, isDefinition: true)
!21 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !134, globals: !750, splitDebugInlining: false, nameTableKind: None)
!22 = !{!23, !60, !71, !78, !84, !89, !108, !114, !119, !126}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_expr_op", file: !24, line: 218, baseType: !25, size: 32, elements: !26)
!24 = !DIFile(filename: "./libyasm/coretype.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "9dfc5415d2e988670aaac0a7c37cb8d6")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!27 = !DIEnumerator(name: "YASM_EXPR_IDENT", value: 0)
!28 = !DIEnumerator(name: "YASM_EXPR_ADD", value: 1)
!29 = !DIEnumerator(name: "YASM_EXPR_SUB", value: 2)
!30 = !DIEnumerator(name: "YASM_EXPR_MUL", value: 3)
!31 = !DIEnumerator(name: "YASM_EXPR_DIV", value: 4)
!32 = !DIEnumerator(name: "YASM_EXPR_SIGNDIV", value: 5)
!33 = !DIEnumerator(name: "YASM_EXPR_MOD", value: 6)
!34 = !DIEnumerator(name: "YASM_EXPR_SIGNMOD", value: 7)
!35 = !DIEnumerator(name: "YASM_EXPR_NEG", value: 8)
!36 = !DIEnumerator(name: "YASM_EXPR_NOT", value: 9)
!37 = !DIEnumerator(name: "YASM_EXPR_OR", value: 10)
!38 = !DIEnumerator(name: "YASM_EXPR_AND", value: 11)
!39 = !DIEnumerator(name: "YASM_EXPR_XOR", value: 12)
!40 = !DIEnumerator(name: "YASM_EXPR_XNOR", value: 13)
!41 = !DIEnumerator(name: "YASM_EXPR_NOR", value: 14)
!42 = !DIEnumerator(name: "YASM_EXPR_SHL", value: 15)
!43 = !DIEnumerator(name: "YASM_EXPR_SHR", value: 16)
!44 = !DIEnumerator(name: "YASM_EXPR_LOR", value: 17)
!45 = !DIEnumerator(name: "YASM_EXPR_LAND", value: 18)
!46 = !DIEnumerator(name: "YASM_EXPR_LNOT", value: 19)
!47 = !DIEnumerator(name: "YASM_EXPR_LXOR", value: 20)
!48 = !DIEnumerator(name: "YASM_EXPR_LXNOR", value: 21)
!49 = !DIEnumerator(name: "YASM_EXPR_LNOR", value: 22)
!50 = !DIEnumerator(name: "YASM_EXPR_LT", value: 23)
!51 = !DIEnumerator(name: "YASM_EXPR_GT", value: 24)
!52 = !DIEnumerator(name: "YASM_EXPR_EQ", value: 25)
!53 = !DIEnumerator(name: "YASM_EXPR_LE", value: 26)
!54 = !DIEnumerator(name: "YASM_EXPR_GE", value: 27)
!55 = !DIEnumerator(name: "YASM_EXPR_NE", value: 28)
!56 = !DIEnumerator(name: "YASM_EXPR_NONNUM", value: 29)
!57 = !DIEnumerator(name: "YASM_EXPR_SEG", value: 30)
!58 = !DIEnumerator(name: "YASM_EXPR_WRT", value: 31)
!59 = !DIEnumerator(name: "YASM_EXPR_SEGOFF", value: 32)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_expr__type", file: !61, line: 42, baseType: !25, size: 32, elements: !62)
!61 = !DIFile(filename: "libyasm/expr.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "56c4cabf03e15977fb62c919c460e24b")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70}
!63 = !DIEnumerator(name: "YASM_EXPR_NONE", value: 0)
!64 = !DIEnumerator(name: "YASM_EXPR_REG", value: 1)
!65 = !DIEnumerator(name: "YASM_EXPR_INT", value: 2)
!66 = !DIEnumerator(name: "YASM_EXPR_SUBST", value: 4)
!67 = !DIEnumerator(name: "YASM_EXPR_FLOAT", value: 8)
!68 = !DIEnumerator(name: "YASM_EXPR_SYM", value: 16)
!69 = !DIEnumerator(name: "YASM_EXPR_PRECBC", value: 32)
!70 = !DIEnumerator(name: "YASM_EXPR_EXPR", value: 64)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_bytecode_special_type", file: !72, line: 168, baseType: !25, size: 32, elements: !73)
!72 = !DIFile(filename: "libyasm/bytecode.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "0499d1c9795aedbcd3282f1a8076b927")
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "YASM_BC_SPECIAL_NONE", value: 0)
!75 = !DIEnumerator(name: "YASM_BC_SPECIAL_RESERVE", value: 1)
!76 = !DIEnumerator(name: "YASM_BC_SPECIAL_OFFSET", value: 2)
!77 = !DIEnumerator(name: "YASM_BC_SPECIAL_INSN", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_param_type", file: !79, line: 43, baseType: !25, size: 32, elements: !80)
!79 = !DIFile(filename: "libyasm/valparam.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "345460cb5d2689afdbce8a9a43dd6428")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "YASM_PARAM_ID", value: 0)
!82 = !DIEnumerator(name: "YASM_PARAM_STRING", value: 1)
!83 = !DIEnumerator(name: "YASM_PARAM_EXPR", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_directive_flags", file: !79, line: 88, baseType: !25, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "YASM_DIR_ANY", value: 0)
!87 = !DIEnumerator(name: "YASM_DIR_ARG_REQUIRED", value: 1)
!88 = !DIEnumerator(name: "YASM_DIR_ID_REQUIRED", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_error_class", file: !90, line: 50, baseType: !25, size: 32, elements: !91)
!90 = !DIFile(filename: "libyasm/errwarn.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "e8ddf1933c5e2c4fd74d90f9312311d9")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!92 = !DIEnumerator(name: "YASM_ERROR_NONE", value: 0)
!93 = !DIEnumerator(name: "YASM_ERROR_GENERAL", value: 65535)
!94 = !DIEnumerator(name: "YASM_ERROR_ARITHMETIC", value: 1)
!95 = !DIEnumerator(name: "YASM_ERROR_OVERFLOW", value: 32769)
!96 = !DIEnumerator(name: "YASM_ERROR_FLOATING_POINT", value: 16385)
!97 = !DIEnumerator(name: "YASM_ERROR_ZERO_DIVISION", value: 8193)
!98 = !DIEnumerator(name: "YASM_ERROR_ASSERTION", value: 2)
!99 = !DIEnumerator(name: "YASM_ERROR_VALUE", value: 4)
!100 = !DIEnumerator(name: "YASM_ERROR_NOT_ABSOLUTE", value: 32772)
!101 = !DIEnumerator(name: "YASM_ERROR_TOO_COMPLEX", value: 16388)
!102 = !DIEnumerator(name: "YASM_ERROR_NOT_CONSTANT", value: 8196)
!103 = !DIEnumerator(name: "YASM_ERROR_IO", value: 8)
!104 = !DIEnumerator(name: "YASM_ERROR_NOT_IMPLEMENTED", value: 16)
!105 = !DIEnumerator(name: "YASM_ERROR_TYPE", value: 32)
!106 = !DIEnumerator(name: "YASM_ERROR_SYNTAX", value: 64)
!107 = !DIEnumerator(name: "YASM_ERROR_PARSE", value: 32832)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_arch_create_error", file: !109, line: 34, baseType: !25, size: 32, elements: !110)
!109 = !DIFile(filename: "libyasm/arch.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "77f71bc1a4e496e53cd435f5de451074")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "YASM_ARCH_CREATE_OK", value: 0)
!112 = !DIEnumerator(name: "YASM_ARCH_CREATE_BAD_MACHINE", value: 1)
!113 = !DIEnumerator(name: "YASM_ARCH_CREATE_BAD_PARSER", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_arch_insnprefix", file: !109, line: 41, baseType: !25, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "YASM_ARCH_NOTINSNPREFIX", value: 0)
!117 = !DIEnumerator(name: "YASM_ARCH_INSN", value: 1)
!118 = !DIEnumerator(name: "YASM_ARCH_PREFIX", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_arch_regtmod", file: !109, line: 50, baseType: !25, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIEnumerator(name: "YASM_ARCH_NOTREGTMOD", value: 0)
!122 = !DIEnumerator(name: "YASM_ARCH_REG", value: 1)
!123 = !DIEnumerator(name: "YASM_ARCH_REGGROUP", value: 2)
!124 = !DIEnumerator(name: "YASM_ARCH_SEGREG", value: 3)
!125 = !DIEnumerator(name: "YASM_ARCH_TARGETMOD", value: 4)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_sym_vis", file: !127, line: 52, baseType: !25, size: 32, elements: !128)
!127 = !DIFile(filename: "libyasm/symrec.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "dfb116438a620dd87f0db3310d44d920")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "YASM_SYM_LOCAL", value: 0)
!130 = !DIEnumerator(name: "YASM_SYM_GLOBAL", value: 1)
!131 = !DIEnumerator(name: "YASM_SYM_COMMON", value: 2)
!132 = !DIEnumerator(name: "YASM_SYM_EXTERN", value: 4)
!133 = !DIEnumerator(name: "YASM_SYM_DLOCAL", value: 8)
!134 = !{!135, !552, !611, !229, !212, !166, !295, !264, !202, !368, !639}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_base", file: !109, line: 65, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch_base", file: !109, line: 62, size: 64, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !137, file: !109, line: 64, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch_module", file: !109, line: 88, size: 1536, elements: !143)
!143 = !{!144, !147, !148, !450, !456, !460, !466, !470, !474, !481, !486, !493, !499, !507, !511, !515, !519, !520, !527, !531, !537, !541, !549, !550, !551}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !109, line: 92, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !142, file: !109, line: 97, baseType: !145, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !142, file: !109, line: 100, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_directive", file: !24, line: 205, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_directive", file: !79, line: 69, size: 256, elements: !153)
!153 = !{!154, !155, !156, !449}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !79, line: 74, baseType: !145, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !152, file: !79, line: 76, baseType: !145, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !152, file: !79, line: 84, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160, !426, !426, !202}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_object", file: !24, line: 96, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_object", file: !163, line: 49, size: 768, elements: !164)
!163 = !DIFile(filename: "libyasm/section.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ba239fc7317ff7164be158d14b67c691")
!164 = !{!165, !167, !168, !172, !176, !180, !184, !414, !420, !424, !425}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "src_filename", scope: !162, file: !163, line: 50, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "obj_filename", scope: !162, file: !163, line: 51, baseType: !166, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !162, file: !163, line: 53, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symtab", file: !24, line: 102, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_symtab", file: !24, line: 102, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !162, file: !163, line: 54, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch", file: !24, line: 38, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch", file: !24, line: 38, flags: DIFlagFwdDecl)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "objfmt", scope: !162, file: !163, line: 55, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_objfmt", file: !24, line: 44, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_objfmt", file: !24, line: 44, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dbgfmt", scope: !162, file: !163, line: 56, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt", file: !24, line: 46, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt", file: !24, line: 46, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cur_section", scope: !162, file: !163, line: 61, baseType: !185, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_section", file: !24, line: 99, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_section", file: !2, line: 54, size: 832, elements: !188)
!188 = !{!189, !194, !195, !196, !201, !203, !204, !206, !207, !208, !398, !413}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !187, file: !2, line: 55, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !187, file: !2, line: 55, size: 64, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !190, file: !2, line: 55, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !187, file: !2, line: 57, baseType: !160, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !2, line: 59, baseType: !166, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "assoc_data", scope: !187, file: !2, line: 62, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm__assoc_data", file: !199, line: 38, baseType: !200)
!199 = !DIFile(filename: "libyasm/assocdat.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "4cef246b4ffb4d8adbd050c0415d069f")
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm__assoc_data", file: !199, line: 38, flags: DIFlagFwdDecl)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !187, file: !2, line: 64, baseType: !202, size: 64, offset: 256)
!202 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "opt_flags", scope: !187, file: !2, line: 66, baseType: !202, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !187, file: !2, line: 68, baseType: !205, size: 32, offset: 384)
!205 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "res_only", scope: !187, file: !2, line: 69, baseType: !205, size: 32, offset: 416)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !187, file: !2, line: 70, baseType: !205, size: 32, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "bcs", scope: !187, file: !2, line: 74, baseType: !209, size: 128, offset: 512)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecodehead", file: !2, line: 74, size: 128, elements: !210)
!210 = !{!211, !396}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !209, file: !2, line: 74, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecode", file: !72, line: 183, size: 704, elements: !214)
!214 = !{!215, !219, !386, !387, !388, !389, !390, !391, !392, !393, !395}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !213, file: !72, line: 187, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !72, line: 187, size: 64, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !216, file: !72, line: 187, baseType: !212, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !213, file: !72, line: 192, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bytecode_callback", file: !72, line: 180, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecode_callback", file: !72, line: 63, size: 512, elements: !224)
!224 = !{!225, !230, !291, !297, !301, !364, !369, !385}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !223, file: !72, line: 68, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !223, file: !72, line: 76, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !234, !236, !205}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !238, line: 7, baseType: !239)
!238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !240, line: 49, size: 1728, elements: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !257, !259, !260, !261, !265, !267, !269, !270, !273, !275, !278, !281, !282, !283, !286, !287}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !239, file: !240, line: 51, baseType: !205, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !239, file: !240, line: 54, baseType: !166, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !239, file: !240, line: 55, baseType: !166, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !239, file: !240, line: 56, baseType: !166, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !239, file: !240, line: 57, baseType: !166, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !239, file: !240, line: 58, baseType: !166, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !239, file: !240, line: 59, baseType: !166, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !239, file: !240, line: 60, baseType: !166, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !239, file: !240, line: 61, baseType: !166, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !239, file: !240, line: 64, baseType: !166, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !239, file: !240, line: 65, baseType: !166, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !239, file: !240, line: 66, baseType: !166, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !239, file: !240, line: 68, baseType: !255, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !240, line: 36, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !239, file: !240, line: 70, baseType: !258, size: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !239, file: !240, line: 72, baseType: !205, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !239, file: !240, line: 73, baseType: !205, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !239, file: !240, line: 74, baseType: !262, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !263, line: 152, baseType: !264)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !239, file: !240, line: 77, baseType: !266, size: 16, offset: 1024)
!266 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !239, file: !240, line: 78, baseType: !268, size: 8, offset: 1040)
!268 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !239, file: !240, line: 79, baseType: !3, size: 8, offset: 1048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !239, file: !240, line: 81, baseType: !271, size: 64, offset: 1088)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !240, line: 43, baseType: null)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !239, file: !240, line: 89, baseType: !274, size: 64, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !263, line: 153, baseType: !264)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !239, file: !240, line: 91, baseType: !276, size: 64, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !240, line: 37, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !239, file: !240, line: 92, baseType: !279, size: 64, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !240, line: 38, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !239, file: !240, line: 93, baseType: !258, size: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !239, file: !240, line: 94, baseType: !229, size: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !239, file: !240, line: 95, baseType: !284, size: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !285, line: 70, baseType: !202)
!285 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !239, file: !240, line: 96, baseType: !205, size: 32, offset: 1536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !239, file: !240, line: 98, baseType: !288, size: 160, offset: 1568)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 20)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !223, file: !72, line: 83, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bytecode", file: !24, line: 93, baseType: !213)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !223, file: !72, line: 91, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!205, !295}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "calc_len", scope: !223, file: !72, line: 108, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!205, !295, !305, !229}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bc_add_span_func", file: !72, line: 55, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !229, !295, !205, !309, !264, !264}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_value", file: !24, line: 184, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_value", file: !24, line: 121, size: 256, elements: !313)
!313 = !{!314, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !312, file: !24, line: 126, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr", file: !24, line: 108, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_expr", file: !61, line: 70, size: 448, elements: !318)
!318 = !{!319, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !317, file: !61, line: 71, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr_op", file: !24, line: 253, baseType: !23)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !317, file: !61, line: 72, baseType: !202, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "numterms", scope: !317, file: !61, line: 73, baseType: !205, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "terms", scope: !317, file: !61, line: 79, baseType: !324, size: 256, offset: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !351)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr__item", file: !61, line: 67, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_expr__item", file: !61, line: 54, size: 128, elements: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !61, line: 55, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr__type", file: !61, line: 51, baseType: !60)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !326, file: !61, line: 66, baseType: !331, size: 64, offset: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !61, line: 58, size: 64, elements: !332)
!332 = !{!333, !334, !338, !339, !343, !347, !350}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "precbc", scope: !331, file: !61, line: 59, baseType: !295, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !331, file: !61, line: 60, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symrec", file: !24, line: 105, baseType: !337)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_symrec", file: !24, line: 105, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "expn", scope: !331, file: !61, line: 61, baseType: !315, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "intn", scope: !331, file: !61, line: 62, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_intnum", file: !24, line: 110, baseType: !342)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_intnum", file: !24, line: 110, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flt", scope: !331, file: !61, line: 63, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_floatnum", file: !24, line: 114, baseType: !346)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_floatnum", file: !24, line: 114, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !331, file: !61, line: 64, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !349, line: 90, baseType: !202)
!349 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!350 = !DIDerivedType(tag: DW_TAG_member, name: "subst", scope: !331, file: !61, line: 65, baseType: !25, size: 32)
!351 = !{!352}
!352 = !DISubrange(count: 2)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rel", scope: !312, file: !24, line: 131, baseType: !335, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wrt", scope: !312, file: !24, line: 134, baseType: !335, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "seg_of", scope: !312, file: !24, line: 139, baseType: !25, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rshift", scope: !312, file: !24, line: 145, baseType: !25, size: 7, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "curpos_rel", scope: !312, file: !24, line: 152, baseType: !25, size: 1, offset: 200, flags: DIFlagBitField, extraData: i64 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rel", scope: !312, file: !24, line: 158, baseType: !25, size: 1, offset: 201, flags: DIFlagBitField, extraData: i64 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "jump_target", scope: !312, file: !24, line: 164, baseType: !25, size: 1, offset: 202, flags: DIFlagBitField, extraData: i64 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "section_rel", scope: !312, file: !24, line: 172, baseType: !25, size: 1, offset: 203, flags: DIFlagBitField, extraData: i64 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "no_warn", scope: !312, file: !24, line: 175, baseType: !25, size: 1, offset: 204, flags: DIFlagBitField, extraData: i64 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !312, file: !24, line: 180, baseType: !25, size: 1, offset: 205, flags: DIFlagBitField, extraData: i64 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !312, file: !24, line: 183, baseType: !25, size: 8, offset: 206, flags: DIFlagBitField, extraData: i64 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !223, file: !72, line: 132, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!205, !295, !205, !264, !264, !368, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tobytes", scope: !223, file: !72, line: 159, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!205, !295, !373, !374, !229, !376, !381}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_output_value_func", file: !24, line: 273, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!205, !380, !374, !25, !202, !295, !205, !229}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_output_reloc_func", file: !24, line: 294, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!205, !335, !295, !374, !25, !25, !205, !229}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "special", scope: !223, file: !72, line: 179, baseType: !71, size: 32, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !213, file: !72, line: 197, baseType: !185, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !213, file: !72, line: 202, baseType: !315, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !213, file: !72, line: 205, baseType: !202, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mult_int", scope: !213, file: !72, line: 208, baseType: !264, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !213, file: !72, line: 211, baseType: !202, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !213, file: !72, line: 216, baseType: !202, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bc_index", scope: !213, file: !72, line: 219, baseType: !202, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "symrecs", scope: !213, file: !72, line: 224, baseType: !394, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !213, file: !72, line: 227, baseType: !229, size: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !209, file: !2, line: 74, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "relocs", scope: !187, file: !2, line: 77, baseType: !399, size: 128, offset: 640)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_relochead", file: !2, line: 77, size: 128, elements: !400)
!400 = !{!401, !411}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !399, file: !2, line: 77, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_reloc", file: !163, line: 42, size: 192, elements: !404)
!404 = !{!405, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !403, file: !163, line: 43, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !163, line: 43, size: 64, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !406, file: !163, line: 43, baseType: !402, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !403, file: !163, line: 44, baseType: !340, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !403, file: !163, line: 45, baseType: !335, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !399, file: !2, line: 77, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_reloc", scope: !187, file: !2, line: 79, baseType: !226, size: 64, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !162, file: !163, line: 64, baseType: !415, size: 128, offset: 448)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_sectionhead", file: !163, line: 64, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !415, file: !163, line: 64, baseType: !193, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !415, file: !163, line: 64, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !162, file: !163, line: 69, baseType: !421, size: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "HAMT", file: !423, line: 38, flags: DIFlagFwdDecl)
!423 = !DIFile(filename: "libyasm/hamt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ee0aefbcc035f779a3961203e3690615")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "global_prefix", scope: !162, file: !163, line: 72, baseType: !166, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "global_suffix", scope: !162, file: !163, line: 75, baseType: !166, size: 64, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_valparamhead", file: !24, line: 201, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_valparamhead", file: !79, line: 66, size: 128, elements: !429)
!429 = !{!430, !447}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !428, file: !79, line: 66, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_valparam", file: !79, line: 38, size: 320, elements: !433)
!433 = !{!434, !438, !439, !440, !446}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !432, file: !79, line: 39, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !79, line: 39, size: 64, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !435, file: !79, line: 39, baseType: !431, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !79, line: 40, baseType: !166, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !432, file: !79, line: 47, baseType: !78, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !432, file: !79, line: 54, baseType: !441, size: 64, offset: 192)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "yasm_param", file: !79, line: 50, size: 64, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !441, file: !79, line: 51, baseType: !166, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !441, file: !79, line: 52, baseType: !166, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !441, file: !79, line: 53, baseType: !315, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "id_prefix", scope: !432, file: !79, line: 62, baseType: !4, size: 8, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !428, file: !79, line: 66, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !79, line: 92, baseType: !84, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !142, file: !109, line: 106, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!173, !145, !145, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_create_error", file: !109, line: 38, baseType: !108)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !142, file: !109, line: 112, baseType: !457, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !173}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "get_machine", scope: !142, file: !109, line: 117, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!145, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_address_size", scope: !142, file: !109, line: 122, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!25, !464}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "set_var", scope: !142, file: !109, line: 127, baseType: !471, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!205, !173, !145, !202}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "parse_check_insnprefix", scope: !142, file: !109, line: 132, baseType: !475, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !173, !145, !284, !202, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_insnprefix", file: !109, line: 45, baseType: !114)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "parse_check_regtmod", scope: !142, file: !109, line: 139, baseType: !482, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !173, !145, !284, !480}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_regtmod", file: !109, line: 56, baseType: !119)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_fill", scope: !142, file: !109, line: 146, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !464}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "floatnum_tobytes", scope: !142, file: !109, line: 151, baseType: !494, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!205, !173, !497, !374, !284, !284, !284, !205}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "intnum_tobytes", scope: !142, file: !109, line: 158, baseType: !500, size: 64, offset: 768)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!205, !173, !503, !374, !284, !284, !205, !505, !205}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_reg_size", scope: !142, file: !109, line: 166, baseType: !508, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!25, !173, !348}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reggroup_get_reg", scope: !142, file: !109, line: 171, baseType: !512, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!348, !173, !348, !202}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reg_print", scope: !142, file: !109, line: 177, baseType: !516, size: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !173, !348, !236}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "segreg_print", scope: !142, file: !109, line: 182, baseType: !516, size: 64, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ea_create", scope: !142, file: !109, line: 187, baseType: !521, size: 64, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !173, !315}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_effaddr", file: !24, line: 210, baseType: !526)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_effaddr", file: !24, line: 210, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ea_destroy", scope: !142, file: !109, line: 192, baseType: !528, size: 64, offset: 1152)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !524}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ea_print", scope: !142, file: !109, line: 197, baseType: !532, size: 64, offset: 1216)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535, !236, !205}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "create_empty_insn", scope: !142, file: !109, line: 202, baseType: !538, size: 64, offset: 1280)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!295, !173, !202}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "machines", scope: !142, file: !109, line: 209, baseType: !542, size: 64, offset: 1344)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_machine", file: !109, line: 80, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch_machine", file: !109, line: 74, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !109, line: 76, baseType: !145, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !545, file: !109, line: 79, baseType: !145, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "default_machine_keyword", scope: !142, file: !109, line: 215, baseType: !145, size: 64, offset: 1408)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wordsize", scope: !142, file: !109, line: 221, baseType: !25, size: 32, offset: 1472)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "min_insn_len", scope: !142, file: !109, line: 227, baseType: !25, size: 32, offset: 1504)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_objfmt_base", file: !554, line: 40, baseType: !555)
!554 = !DIFile(filename: "libyasm/objfmt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "8e7c18fd1d052962fbf061dcf70bcae9")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_objfmt_base", file: !554, line: 37, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !555, file: !554, line: 39, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_objfmt_module", file: !554, line: 44, size: 960, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !569, !570, !571, !580, !584, !591, !595, !599, !603, !607}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !560, file: !554, line: 46, baseType: !145, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !560, file: !554, line: 49, baseType: !145, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !560, file: !554, line: 54, baseType: !145, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "default_x86_mode_bits", scope: !560, file: !554, line: 59, baseType: !492, size: 8, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "id_at_ok", scope: !560, file: !554, line: 62, baseType: !492, size: 8, offset: 200)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dbgfmt_keywords", scope: !560, file: !554, line: 69, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "default_dbgfmt_keyword", scope: !560, file: !554, line: 74, baseType: !145, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !560, file: !554, line: 77, baseType: !149, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "stdmacs", scope: !560, file: !554, line: 80, baseType: !572, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_stdmac", file: !24, line: 68, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_stdmac", file: !24, line: 60, size: 192, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !575, file: !24, line: 61, baseType: !145, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "preproc", scope: !575, file: !24, line: 62, baseType: !145, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "macros", scope: !575, file: !24, line: 67, baseType: !568, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !560, file: !554, line: 89, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!177, !160}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !560, file: !554, line: 94, baseType: !585, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !160, !236, !205, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_errwarns", file: !24, line: 90, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_errwarns", file: !24, line: 90, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !560, file: !554, line: 100, baseType: !592, size: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !177}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "add_default_section", scope: !560, file: !554, line: 105, baseType: !596, size: 64, offset: 704)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!185, !160}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "init_new_section", scope: !560, file: !554, line: 110, baseType: !600, size: 64, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !185, !202}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "section_switch", scope: !560, file: !554, line: 116, baseType: !604, size: 64, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!185, !160, !426, !426, !202}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_special_sym", scope: !560, file: !554, line: 124, baseType: !608, size: 64, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!335, !160, !145, !145}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt_base", file: !613, line: 40, baseType: !614)
!613 = !DIFile(filename: "libyasm/dbgfmt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "7a63e9e5d68a274fccf929049b351cb9")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt_base", file: !613, line: 37, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !614, file: !613, line: 39, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt_module", file: !613, line: 44, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !628, !632}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !613, line: 46, baseType: !145, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !619, file: !613, line: 49, baseType: !145, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !619, file: !613, line: 52, baseType: !149, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !619, file: !613, line: 60, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!181, !160}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !619, file: !613, line: 65, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !181}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !619, file: !613, line: 70, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !160, !636, !588}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_linemap", file: !24, line: 192, baseType: !638)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_linemap", file: !24, line: 192, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "optimize_data", file: !2, line: 888, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimize_data", file: !2, line: 879, size: 768, elements: !642)
!642 = !{!643, !703, !708, !709, !741, !747, !748, !749}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "spans", scope: !641, file: !2, line: 880, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_span_head", file: !2, line: 880, size: 128, elements: !645)
!645 = !{!646, !702}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !644, file: !2, line: 880, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_span", file: !2, line: 844, size: 1280, elements: !649)
!649 = !{!650, !656, !660, !661, !662, !675, !676, !678, !679, !680, !681, !682, !683, !684, !685, !687, !688}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !648, file: !2, line: 845, baseType: !651, size: 128)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !2, line: 845, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !651, file: !2, line: 845, baseType: !647, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !651, file: !2, line: 845, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "linkq", scope: !648, file: !2, line: 846, baseType: !657, size: 64, offset: 128)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !2, line: 846, size: 64, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !657, file: !2, line: 846, baseType: !647, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !648, file: !2, line: 848, baseType: !295, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "depval", scope: !648, file: !2, line: 850, baseType: !311, size: 256, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rel_term", scope: !648, file: !2, line: 853, baseType: !663, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_span_term", file: !2, line: 842, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_span_term", file: !2, line: 837, size: 384, elements: !666)
!666 = !{!667, !668, !669, !672, !673, !674}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "precbc", scope: !665, file: !2, line: 838, baseType: !295, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "precbc2", scope: !665, file: !2, line: 838, baseType: !295, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !665, file: !2, line: 839, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_span", file: !2, line: 825, baseType: !648)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cur_val", scope: !665, file: !2, line: 840, baseType: !264, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "new_val", scope: !665, file: !2, line: 840, baseType: !264, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "subst", scope: !665, file: !2, line: 841, baseType: !25, size: 32, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "terms", scope: !648, file: !2, line: 855, baseType: !663, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !648, file: !2, line: 856, baseType: !677, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "num_terms", scope: !648, file: !2, line: 857, baseType: !25, size: 32, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cur_val", scope: !648, file: !2, line: 859, baseType: !264, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "new_val", scope: !648, file: !2, line: 860, baseType: !264, size: 64, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "neg_thres", scope: !648, file: !2, line: 862, baseType: !264, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pos_thres", scope: !648, file: !2, line: 863, baseType: !264, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !648, file: !2, line: 865, baseType: !205, size: 32, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !648, file: !2, line: 867, baseType: !205, size: 32, offset: 1056)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "backtrace", scope: !648, file: !2, line: 872, baseType: !686, size: 64, offset: 1088)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "backtrace_size", scope: !648, file: !2, line: 873, baseType: !205, size: 32, offset: 1152)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !648, file: !2, line: 876, baseType: !689, size: 64, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_offset_setter", file: !2, line: 835, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_offset_setter", file: !2, line: 827, size: 320, elements: !692)
!692 = !{!693, !698, !699, !700, !701}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !691, file: !2, line: 829, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !2, line: 829, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !694, file: !2, line: 829, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !691, file: !2, line: 831, baseType: !295, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "cur_val", scope: !691, file: !2, line: 833, baseType: !202, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "new_val", scope: !691, file: !2, line: 833, baseType: !202, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "thres", scope: !691, file: !2, line: 834, baseType: !202, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !644, file: !2, line: 880, baseType: !655, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "QA", scope: !641, file: !2, line: 881, baseType: !704, size: 128, offset: 128)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_span_shead", file: !2, line: 881, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !704, file: !2, line: 881, baseType: !647, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !704, file: !2, line: 881, baseType: !655, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "QB", scope: !641, file: !2, line: 881, baseType: !704, size: 128, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "itree", scope: !641, file: !2, line: 882, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntervalTree", file: !712, line: 49, baseType: !713)
!712 = !DIFile(filename: "libyasm/inttree.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "9bea31d3dc25a249189ad53ace1ed5a0")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntervalTree", file: !712, line: 33, size: 320, elements: !714)
!714 = !{!715, !729, !730, !731, !739, !740}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !713, file: !712, line: 41, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntervalTreeNode", file: !712, line: 21, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntervalTreeNode", file: !712, line: 14, size: 512, elements: !719)
!719 = !{!720, !722, !723, !724, !725, !726, !727, !728}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !718, file: !712, line: 15, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !718, file: !712, line: 15, baseType: !721, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !718, file: !712, line: 15, baseType: !721, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !718, file: !712, line: 16, baseType: !229, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !718, file: !712, line: 17, baseType: !264, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !718, file: !712, line: 18, baseType: !264, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "maxHigh", scope: !718, file: !712, line: 19, baseType: !264, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !718, file: !712, line: 20, baseType: !205, size: 32, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nil", scope: !713, file: !712, line: 42, baseType: !716, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "recursionNodeStackSize", scope: !713, file: !712, line: 45, baseType: !25, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "recursionNodeStack", scope: !713, file: !712, line: 46, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "it_recursion_node", file: !712, line: 31, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "it_recursion_node", file: !712, line: 23, size: 128, elements: !735)
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !734, file: !712, line: 28, baseType: !716, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parentIndex", scope: !734, file: !712, line: 29, baseType: !25, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tryRightBranch", scope: !734, file: !712, line: 30, baseType: !205, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "currentParent", scope: !713, file: !712, line: 47, baseType: !25, size: 32, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "recursionNodeStackTop", scope: !713, file: !712, line: 48, baseType: !25, size: 32, offset: 288)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "offset_setters", scope: !641, file: !2, line: 884, baseType: !742, size: 128, offset: 448)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_setters_head", file: !2, line: 883, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !742, file: !2, line: 883, baseType: !697, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !742, file: !2, line: 883, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "len_diff", scope: !641, file: !2, line: 885, baseType: !264, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !641, file: !2, line: 886, baseType: !670, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "os", scope: !641, file: !2, line: 887, baseType: !689, size: 64, offset: 704)
!750 = !{!0, !7, !12, !17, !751, !756, !761, !763, !768, !773, !778, !783, !788, !793, !798, !803, !808, !813, !818, !823, !828, !830, !835, !837, !842, !844, !846, !848, !19, !850, !855, !857, !862, !864}
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !753, isLocal: true, isDefinition: true)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 18)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 13)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !753, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !2, line: 571, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 41)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !770, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 46)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !2, line: 703, type: !775, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 11)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !2, line: 707, type: !780, isLocal: true, isDefinition: true)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 12)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !2, line: 710, type: !785, isLocal: true, isDefinition: true)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 21)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 15)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !2, line: 720, type: !795, isLocal: true, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 19)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1350, type: !800, isLocal: true, isDefinition: true)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 55)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1384, type: !805, isLocal: true, isDefinition: true)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 49)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1418, type: !810, isLocal: true, isDefinition: true)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 32)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1553, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 34)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 8)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 4)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !820, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 7)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !832, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 5)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !832, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !832, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !820, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !820, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !852, isLocal: true, isDefinition: true)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 36)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !832, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !859, isLocal: true, isDefinition: true)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 35)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !820, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !2, line: 977, type: !866, isLocal: true, isDefinition: true)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 28)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2304, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 9)
!872 = !{i32 7, !"Dwarf Version", i32 5}
!873 = !{i32 2, !"Debug Info Version", i32 3}
!874 = !{i32 1, !"wchar_size", i32 4}
!875 = !{i32 8, !"PIC Level", i32 2}
!876 = !{i32 7, !"PIE Level", i32 2}
!877 = !{i32 7, !"uwtable", i32 2}
!878 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!879 = distinct !DISubprogram(name: "yasm_object_create", scope: !2, file: !2, line: 214, type: !880, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !888)
!880 = !DISubroutineType(types: !881)
!881 = !{!160, !145, !145, !173, !882, !885}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_objfmt_module", file: !24, line: 51, baseType: !560)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt_module", file: !24, line: 53, baseType: !619)
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !897}
!889 = !DILocalVariable(name: "src_filename", arg: 1, scope: !879, file: !2, line: 214, type: !145)
!890 = !DILocalVariable(name: "obj_filename", arg: 2, scope: !879, file: !2, line: 214, type: !145)
!891 = !DILocalVariable(name: "arch", arg: 3, scope: !879, file: !2, line: 215, type: !173)
!892 = !DILocalVariable(name: "objfmt_module", arg: 4, scope: !879, file: !2, line: 216, type: !882)
!893 = !DILocalVariable(name: "dbgfmt_module", arg: 5, scope: !879, file: !2, line: 217, type: !885)
!894 = !DILocalVariable(name: "object", scope: !879, file: !2, line: 219, type: !160)
!895 = !DILocalVariable(name: "matched", scope: !879, file: !2, line: 220, type: !205)
!896 = !DILocalVariable(name: "i", scope: !879, file: !2, line: 220, type: !205)
!897 = !DILabel(scope: !879, name: "error", file: !2, line: 299)
!898 = !{!899, !899, i64 0}
!899 = !{!"any pointer", !900, i64 0}
!900 = !{!"omnipotent char", !901, i64 0}
!901 = !{!"Simple C/C++ TBAA"}
!902 = !DILocation(line: 214, column: 32, scope: !879)
!903 = !DILocation(line: 214, column: 58, scope: !879)
!904 = !DILocation(line: 215, column: 42, scope: !879)
!905 = !DILocation(line: 216, column: 46, scope: !879)
!906 = !DILocation(line: 217, column: 46, scope: !879)
!907 = !DILocation(line: 219, column: 5, scope: !879)
!908 = !DILocation(line: 219, column: 18, scope: !879)
!909 = !DILocation(line: 219, column: 27, scope: !879)
!910 = !DILocation(line: 220, column: 5, scope: !879)
!911 = !DILocation(line: 220, column: 9, scope: !879)
!912 = !DILocation(line: 220, column: 18, scope: !879)
!913 = !DILocation(line: 222, column: 42, scope: !879)
!914 = !DILocation(line: 222, column: 28, scope: !879)
!915 = !DILocation(line: 222, column: 5, scope: !879)
!916 = !DILocation(line: 222, column: 13, scope: !879)
!917 = !DILocation(line: 222, column: 26, scope: !879)
!918 = !{!919, !899, i64 0}
!919 = !{!"yasm_object", !899, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !899, i64 32, !899, i64 40, !899, i64 48, !920, i64 56, !899, i64 72, !899, i64 80, !899, i64 88}
!920 = !{!"yasm_sectionhead", !899, i64 0, !899, i64 8}
!921 = !DILocation(line: 223, column: 42, scope: !879)
!922 = !DILocation(line: 223, column: 28, scope: !879)
!923 = !DILocation(line: 223, column: 5, scope: !879)
!924 = !DILocation(line: 223, column: 13, scope: !879)
!925 = !DILocation(line: 223, column: 26, scope: !879)
!926 = !{!919, !899, i64 8}
!927 = !DILocation(line: 226, column: 29, scope: !879)
!928 = !DILocation(line: 226, column: 5, scope: !879)
!929 = !DILocation(line: 226, column: 13, scope: !879)
!930 = !DILocation(line: 226, column: 27, scope: !879)
!931 = !{!919, !899, i64 80}
!932 = !DILocation(line: 227, column: 29, scope: !879)
!933 = !DILocation(line: 227, column: 5, scope: !879)
!934 = !DILocation(line: 227, column: 13, scope: !879)
!935 = !DILocation(line: 227, column: 27, scope: !879)
!936 = !{!919, !899, i64 88}
!937 = !DILocation(line: 230, column: 22, scope: !879)
!938 = !DILocation(line: 230, column: 5, scope: !879)
!939 = !DILocation(line: 230, column: 13, scope: !879)
!940 = !DILocation(line: 230, column: 20, scope: !879)
!941 = !{!919, !899, i64 16}
!942 = !DILocation(line: 233, column: 5, scope: !879)
!943 = !DILocation(line: 233, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !879, file: !2, line: 233, column: 5)
!945 = !{!919, !899, i64 56}
!946 = !{!919, !899, i64 64}
!947 = !DILocation(line: 236, column: 41, scope: !879)
!948 = !DILocation(line: 236, column: 26, scope: !879)
!949 = !DILocation(line: 236, column: 5, scope: !879)
!950 = !DILocation(line: 236, column: 13, scope: !879)
!951 = !DILocation(line: 236, column: 24, scope: !879)
!952 = !{!919, !899, i64 72}
!953 = !DILocation(line: 239, column: 20, scope: !879)
!954 = !DILocation(line: 239, column: 5, scope: !879)
!955 = !DILocation(line: 239, column: 13, scope: !879)
!956 = !DILocation(line: 239, column: 18, scope: !879)
!957 = !{!919, !899, i64 24}
!958 = !DILocation(line: 242, column: 5, scope: !879)
!959 = !DILocation(line: 242, column: 13, scope: !879)
!960 = !DILocation(line: 242, column: 20, scope: !879)
!961 = !{!919, !899, i64 40}
!962 = !DILocation(line: 245, column: 22, scope: !879)
!963 = !{!964, !899, i64 64}
!964 = !{!"yasm_objfmt_module", !899, i64 0, !899, i64 8, !899, i64 16, !900, i64 24, !900, i64 25, !899, i64 32, !899, i64 40, !899, i64 48, !899, i64 56, !899, i64 64, !899, i64 72, !899, i64 80, !899, i64 88, !899, i64 96, !899, i64 104, !899, i64 112}
!965 = !DILocation(line: 245, column: 5, scope: !879)
!966 = !DILocation(line: 245, column: 13, scope: !879)
!967 = !DILocation(line: 245, column: 20, scope: !879)
!968 = !{!919, !899, i64 32}
!969 = !DILocation(line: 246, column: 10, scope: !970)
!970 = distinct !DILexicalBlock(scope: !879, file: !2, line: 246, column: 9)
!971 = !DILocation(line: 246, column: 18, scope: !970)
!972 = !DILocation(line: 246, column: 9, scope: !879)
!973 = !DILocation(line: 249, column: 13, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !2, line: 246, column: 26)
!975 = !DILocation(line: 249, column: 28, scope: !974)
!976 = !{!964, !899, i64 8}
!977 = !DILocation(line: 249, column: 56, scope: !974)
!978 = !DILocation(line: 249, column: 63, scope: !974)
!979 = !{!980, !899, i64 0}
!980 = !{!"yasm_arch_base", !899, i64 0}
!981 = !DILocation(line: 249, column: 71, scope: !974)
!982 = !{!983, !899, i64 8}
!983 = !{!"yasm_arch_module", !899, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !899, i64 32, !899, i64 40, !899, i64 48, !899, i64 56, !899, i64 64, !899, i64 72, !899, i64 80, !899, i64 88, !899, i64 96, !899, i64 104, !899, i64 112, !899, i64 120, !899, i64 128, !899, i64 136, !899, i64 144, !899, i64 152, !899, i64 160, !899, i64 168, !899, i64 176, !984, i64 184, !984, i64 188}
!984 = !{!"int", !900, i64 0}
!985 = !DILocation(line: 250, column: 13, scope: !974)
!986 = !{!983, !899, i64 40}
!987 = !DILocation(line: 247, column: 9, scope: !974)
!988 = !DILocation(line: 251, column: 9, scope: !974)
!989 = !DILocation(line: 255, column: 42, scope: !879)
!990 = !DILocation(line: 255, column: 50, scope: !879)
!991 = !DILocation(line: 255, column: 59, scope: !879)
!992 = !{!993, !899, i64 0}
!993 = !{!"yasm_objfmt_base", !899, i64 0}
!994 = !DILocation(line: 255, column: 19, scope: !879)
!995 = !DILocation(line: 258, column: 27, scope: !879)
!996 = !{!964, !899, i64 88}
!997 = !DILocation(line: 258, column: 5, scope: !879)
!998 = !DILocation(line: 258, column: 13, scope: !879)
!999 = !DILocation(line: 258, column: 25, scope: !879)
!1000 = !{!919, !899, i64 48}
!1001 = !DILocation(line: 263, column: 13, scope: !879)
!1002 = !{!984, !984, i64 0}
!1003 = !DILocation(line: 264, column: 11, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !879, file: !2, line: 264, column: 5)
!1005 = !DILocation(line: 264, column: 10, scope: !1004)
!1006 = !DILocation(line: 264, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 264, column: 5)
!1008 = !DILocation(line: 264, column: 30, scope: !1007)
!1009 = !{!964, !899, i64 32}
!1010 = !DILocation(line: 264, column: 46, scope: !1007)
!1011 = !DILocation(line: 264, column: 5, scope: !1004)
!1012 = !DILocation(line: 265, column: 13, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 265, column: 13)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 264, column: 55)
!1015 = !{!1016, !899, i64 8}
!1016 = !{!"yasm_dbgfmt_module", !899, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !899, i64 32, !899, i64 40}
!1017 = !DILocation(line: 266, column: 54, scope: !1013)
!1018 = !DILocation(line: 265, column: 13, scope: !1014)
!1019 = !DILocation(line: 267, column: 21, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 266, column: 60)
!1021 = !DILocation(line: 268, column: 13, scope: !1020)
!1022 = !DILocation(line: 270, column: 5, scope: !1014)
!1023 = !DILocation(line: 264, column: 51, scope: !1007)
!1024 = !DILocation(line: 264, column: 5, scope: !1007)
!1025 = distinct !{!1025, !1011, !1026, !1027}
!1026 = !DILocation(line: 270, column: 5, scope: !1004)
!1027 = !{!"llvm.loop.mustprogress"}
!1028 = !DILocation(line: 272, column: 10, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !879, file: !2, line: 272, column: 9)
!1030 = !DILocation(line: 272, column: 9, scope: !879)
!1031 = !DILocation(line: 275, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 272, column: 19)
!1033 = !DILocation(line: 275, column: 28, scope: !1032)
!1034 = !DILocation(line: 275, column: 37, scope: !1032)
!1035 = !DILocation(line: 275, column: 52, scope: !1032)
!1036 = !DILocation(line: 273, column: 9, scope: !1032)
!1037 = !DILocation(line: 276, column: 9, scope: !1032)
!1038 = !DILocation(line: 280, column: 22, scope: !879)
!1039 = !{!1016, !899, i64 24}
!1040 = !DILocation(line: 280, column: 5, scope: !879)
!1041 = !DILocation(line: 280, column: 13, scope: !879)
!1042 = !DILocation(line: 280, column: 20, scope: !879)
!1043 = !DILocation(line: 281, column: 10, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !879, file: !2, line: 281, column: 9)
!1045 = !DILocation(line: 281, column: 18, scope: !1044)
!1046 = !DILocation(line: 281, column: 9, scope: !879)
!1047 = !DILocation(line: 284, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 281, column: 26)
!1049 = !DILocation(line: 284, column: 28, scope: !1048)
!1050 = !DILocation(line: 284, column: 37, scope: !1048)
!1051 = !DILocation(line: 284, column: 52, scope: !1048)
!1052 = !DILocation(line: 282, column: 9, scope: !1048)
!1053 = !DILocation(line: 285, column: 9, scope: !1048)
!1054 = !DILocation(line: 289, column: 20, scope: !879)
!1055 = !DILocation(line: 290, column: 41, scope: !879)
!1056 = !DILocation(line: 290, column: 49, scope: !879)
!1057 = !DILocation(line: 290, column: 58, scope: !879)
!1058 = !DILocation(line: 290, column: 66, scope: !879)
!1059 = !{!964, !899, i64 48}
!1060 = !DILocation(line: 289, column: 5, scope: !879)
!1061 = !DILocation(line: 291, column: 20, scope: !879)
!1062 = !DILocation(line: 292, column: 41, scope: !879)
!1063 = !DILocation(line: 292, column: 49, scope: !879)
!1064 = !DILocation(line: 292, column: 58, scope: !879)
!1065 = !{!1066, !899, i64 0}
!1066 = !{!"yasm_dbgfmt_base", !899, i64 0}
!1067 = !DILocation(line: 292, column: 66, scope: !879)
!1068 = !{!1016, !899, i64 16}
!1069 = !DILocation(line: 291, column: 5, scope: !879)
!1070 = !DILocation(line: 293, column: 20, scope: !879)
!1071 = !DILocation(line: 294, column: 39, scope: !879)
!1072 = !DILocation(line: 294, column: 47, scope: !879)
!1073 = !DILocation(line: 294, column: 54, scope: !879)
!1074 = !DILocation(line: 294, column: 62, scope: !879)
!1075 = !{!983, !899, i64 16}
!1076 = !DILocation(line: 293, column: 5, scope: !879)
!1077 = !DILocation(line: 295, column: 20, scope: !879)
!1078 = !DILocation(line: 295, column: 5, scope: !879)
!1079 = !DILocation(line: 297, column: 12, scope: !879)
!1080 = !DILocation(line: 297, column: 5, scope: !879)
!1081 = !DILocation(line: 299, column: 1, scope: !879)
!1082 = !DILocation(line: 300, column: 25, scope: !879)
!1083 = !DILocation(line: 300, column: 5, scope: !879)
!1084 = !DILocation(line: 301, column: 5, scope: !879)
!1085 = !DILocation(line: 302, column: 1, scope: !879)
!1086 = !DISubprogram(name: "yasm__xstrdup", scope: !24, file: !24, line: 343, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!166, !145}
!1089 = !DISubprogram(name: "yasm_symtab_create", scope: !127, file: !127, line: 62, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!169}
!1092 = !DISubprogram(name: "HAMT_create", scope: !423, file: !423, line: 49, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!1095, !205, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAMT", file: !423, line: 38, baseType: !422)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !145, !25, !145}
!1100 = !DISubprogram(name: "yasm_error_set", scope: !90, file: !90, line: 162, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1103, !145, null}
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_error_class", file: !90, line: 68, baseType: !89)
!1104 = !DISubprogram(name: "strcasecmp", scope: !1105, file: !1105, line: 116, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1105 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!205, !145, !145}
!1108 = distinct !DISubprogram(name: "directives_add", scope: !2, file: !2, line: 188, type: !1109, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !160, !149}
!1111 = !{!1112, !1113, !1114, !1116, !1117}
!1112 = !DILocalVariable(name: "object", arg: 1, scope: !1108, file: !2, line: 188, type: !160)
!1113 = !DILocalVariable(name: "dir", arg: 2, scope: !1108, file: !2, line: 188, type: !149)
!1114 = !DILocalVariable(name: "level2", scope: !1115, file: !2, line: 194, type: !1095)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 193, column: 23)
!1116 = !DILocalVariable(name: "replace", scope: !1115, file: !2, line: 195, type: !205)
!1117 = !DILocalVariable(name: "wrap", scope: !1115, file: !2, line: 196, type: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_directive_wrap", file: !2, line: 87, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_directive_wrap", file: !2, line: 85, size: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !1120, file: !2, line: 86, baseType: !149, size: 64)
!1123 = !DILocation(line: 188, column: 29, scope: !1108)
!1124 = !DILocation(line: 188, column: 70, scope: !1108)
!1125 = !DILocation(line: 190, column: 10, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 190, column: 9)
!1127 = !DILocation(line: 190, column: 9, scope: !1108)
!1128 = !DILocation(line: 191, column: 9, scope: !1126)
!1129 = !DILocation(line: 193, column: 5, scope: !1108)
!1130 = !DILocation(line: 193, column: 12, scope: !1108)
!1131 = !DILocation(line: 193, column: 17, scope: !1108)
!1132 = !{!1133, !899, i64 0}
!1133 = !{!"yasm_directive", !899, i64 0, !899, i64 8, !899, i64 16, !900, i64 24}
!1134 = !DILocation(line: 194, column: 9, scope: !1115)
!1135 = !DILocation(line: 194, column: 15, scope: !1115)
!1136 = !DILocation(line: 194, column: 36, scope: !1115)
!1137 = !DILocation(line: 194, column: 44, scope: !1115)
!1138 = !DILocation(line: 194, column: 56, scope: !1115)
!1139 = !DILocation(line: 194, column: 61, scope: !1115)
!1140 = !{!1133, !899, i64 8}
!1141 = !DILocation(line: 194, column: 24, scope: !1115)
!1142 = !DILocation(line: 195, column: 9, scope: !1115)
!1143 = !DILocation(line: 195, column: 13, scope: !1115)
!1144 = !DILocation(line: 196, column: 9, scope: !1115)
!1145 = !DILocation(line: 196, column: 30, scope: !1115)
!1146 = !DILocation(line: 196, column: 37, scope: !1115)
!1147 = !DILocation(line: 198, column: 14, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 198, column: 13)
!1149 = !DILocation(line: 198, column: 13, scope: !1115)
!1150 = !DILocation(line: 199, column: 21, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 198, column: 22)
!1152 = !DILocation(line: 200, column: 34, scope: !1151)
!1153 = !DILocation(line: 200, column: 42, scope: !1151)
!1154 = !DILocation(line: 200, column: 54, scope: !1151)
!1155 = !DILocation(line: 200, column: 59, scope: !1151)
!1156 = !DILocation(line: 201, column: 49, scope: !1151)
!1157 = !DILocation(line: 201, column: 34, scope: !1151)
!1158 = !DILocation(line: 200, column: 22, scope: !1151)
!1159 = !DILocation(line: 200, column: 20, scope: !1151)
!1160 = !DILocation(line: 203, column: 9, scope: !1151)
!1161 = !DILocation(line: 204, column: 17, scope: !1115)
!1162 = !DILocation(line: 205, column: 27, scope: !1115)
!1163 = !DILocation(line: 205, column: 9, scope: !1115)
!1164 = !DILocation(line: 205, column: 15, scope: !1115)
!1165 = !DILocation(line: 205, column: 25, scope: !1115)
!1166 = !{!1167, !899, i64 0}
!1167 = !{!"yasm_directive_wrap", !899, i64 0}
!1168 = !DILocation(line: 206, column: 21, scope: !1115)
!1169 = !DILocation(line: 206, column: 29, scope: !1115)
!1170 = !DILocation(line: 206, column: 34, scope: !1115)
!1171 = !DILocation(line: 206, column: 40, scope: !1115)
!1172 = !DILocation(line: 206, column: 9, scope: !1115)
!1173 = !DILocation(line: 208, column: 12, scope: !1115)
!1174 = !DILocation(line: 209, column: 5, scope: !1108)
!1175 = distinct !{!1175, !1129, !1174, !1027}
!1176 = !DILocation(line: 210, column: 1, scope: !1108)
!1177 = distinct !DISubprogram(name: "yasm_object_destroy", scope: !2, file: !2, line: 454, type: !1178, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !160}
!1180 = !{!1181, !1182, !1183}
!1181 = !DILocalVariable(name: "object", arg: 1, scope: !1177, file: !2, line: 454, type: !160)
!1182 = !DILocalVariable(name: "cur", scope: !1177, file: !2, line: 456, type: !185)
!1183 = !DILocalVariable(name: "next", scope: !1177, file: !2, line: 456, type: !185)
!1184 = !DILocation(line: 454, column: 34, scope: !1177)
!1185 = !DILocation(line: 456, column: 5, scope: !1177)
!1186 = !DILocation(line: 456, column: 19, scope: !1177)
!1187 = !DILocation(line: 456, column: 25, scope: !1177)
!1188 = !DILocation(line: 461, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 461, column: 9)
!1190 = !DILocation(line: 461, column: 17, scope: !1189)
!1191 = !DILocation(line: 461, column: 9, scope: !1177)
!1192 = !DILocation(line: 462, column: 9, scope: !1189)
!1193 = !{!964, !899, i64 80}
!1194 = !DILocation(line: 463, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 463, column: 9)
!1196 = !DILocation(line: 463, column: 17, scope: !1195)
!1197 = !DILocation(line: 463, column: 9, scope: !1177)
!1198 = !DILocation(line: 464, column: 9, scope: !1195)
!1199 = !{!1016, !899, i64 32}
!1200 = !DILocation(line: 467, column: 11, scope: !1177)
!1201 = !DILocation(line: 467, column: 9, scope: !1177)
!1202 = !DILocation(line: 468, column: 5, scope: !1177)
!1203 = !DILocation(line: 468, column: 12, scope: !1177)
!1204 = !DILocation(line: 469, column: 16, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 468, column: 17)
!1206 = !{!1207, !899, i64 0}
!1207 = !{!"yasm_section", !1208, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !1209, i64 32, !1209, i64 40, !984, i64 48, !984, i64 52, !984, i64 56, !1210, i64 64, !1211, i64 80, !899, i64 96}
!1208 = !{!"", !899, i64 0}
!1209 = !{!"long", !900, i64 0}
!1210 = !{!"yasm_bytecodehead", !899, i64 0, !899, i64 8}
!1211 = !{!"yasm_relochead", !899, i64 0, !899, i64 8}
!1212 = !DILocation(line: 469, column: 14, scope: !1205)
!1213 = !DILocation(line: 470, column: 30, scope: !1205)
!1214 = !DILocation(line: 470, column: 9, scope: !1205)
!1215 = !DILocation(line: 471, column: 15, scope: !1205)
!1216 = !DILocation(line: 471, column: 13, scope: !1205)
!1217 = distinct !{!1217, !1202, !1218, !1027}
!1218 = !DILocation(line: 472, column: 5, scope: !1177)
!1219 = !DILocation(line: 475, column: 18, scope: !1177)
!1220 = !DILocation(line: 475, column: 26, scope: !1177)
!1221 = !DILocation(line: 475, column: 5, scope: !1177)
!1222 = !DILocation(line: 478, column: 5, scope: !1177)
!1223 = !DILocation(line: 478, column: 16, scope: !1177)
!1224 = !DILocation(line: 478, column: 24, scope: !1177)
!1225 = !DILocation(line: 479, column: 5, scope: !1177)
!1226 = !DILocation(line: 479, column: 16, scope: !1177)
!1227 = !DILocation(line: 479, column: 24, scope: !1177)
!1228 = !DILocation(line: 482, column: 5, scope: !1177)
!1229 = !DILocation(line: 482, column: 16, scope: !1177)
!1230 = !DILocation(line: 482, column: 24, scope: !1177)
!1231 = !DILocation(line: 483, column: 5, scope: !1177)
!1232 = !DILocation(line: 483, column: 16, scope: !1177)
!1233 = !DILocation(line: 483, column: 24, scope: !1177)
!1234 = !DILocation(line: 486, column: 25, scope: !1177)
!1235 = !DILocation(line: 486, column: 33, scope: !1177)
!1236 = !DILocation(line: 486, column: 5, scope: !1177)
!1237 = !DILocation(line: 489, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 489, column: 9)
!1239 = !DILocation(line: 489, column: 17, scope: !1238)
!1240 = !DILocation(line: 489, column: 9, scope: !1177)
!1241 = !DILocation(line: 490, column: 9, scope: !1238)
!1242 = !{!983, !899, i64 32}
!1243 = !DILocation(line: 492, column: 5, scope: !1177)
!1244 = !DILocation(line: 492, column: 16, scope: !1177)
!1245 = !DILocation(line: 493, column: 1, scope: !1177)
!1246 = distinct !DISubprogram(name: "yasm_object_get_general", scope: !2, file: !2, line: 307, type: !1247, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1250)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!185, !160, !145, !202, !205, !205, !1249, !202}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1251 = !DILocalVariable(name: "object", arg: 1, scope: !1246, file: !2, line: 307, type: !160)
!1252 = !DILocalVariable(name: "name", arg: 2, scope: !1246, file: !2, line: 307, type: !145)
!1253 = !DILocalVariable(name: "align", arg: 3, scope: !1246, file: !2, line: 308, type: !202)
!1254 = !DILocalVariable(name: "code", arg: 4, scope: !1246, file: !2, line: 308, type: !205)
!1255 = !DILocalVariable(name: "res_only", arg: 5, scope: !1246, file: !2, line: 308, type: !205)
!1256 = !DILocalVariable(name: "isnew", arg: 6, scope: !1246, file: !2, line: 309, type: !1249)
!1257 = !DILocalVariable(name: "line", arg: 7, scope: !1246, file: !2, line: 309, type: !202)
!1258 = !DILocalVariable(name: "s", scope: !1246, file: !2, line: 311, type: !185)
!1259 = !DILocalVariable(name: "bc", scope: !1246, file: !2, line: 312, type: !295)
!1260 = !DILocation(line: 307, column: 38, scope: !1246)
!1261 = !DILocation(line: 307, column: 58, scope: !1246)
!1262 = !{!1209, !1209, i64 0}
!1263 = !DILocation(line: 308, column: 39, scope: !1246)
!1264 = !DILocation(line: 308, column: 50, scope: !1246)
!1265 = !DILocation(line: 308, column: 60, scope: !1246)
!1266 = !DILocation(line: 309, column: 30, scope: !1246)
!1267 = !DILocation(line: 309, column: 51, scope: !1246)
!1268 = !DILocation(line: 311, column: 5, scope: !1246)
!1269 = !DILocation(line: 311, column: 19, scope: !1246)
!1270 = !DILocation(line: 312, column: 5, scope: !1246)
!1271 = !DILocation(line: 312, column: 20, scope: !1246)
!1272 = !DILocation(line: 317, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 317, column: 5)
!1274 = !DILocation(line: 317, column: 5, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 317, column: 5)
!1276 = !DILocation(line: 318, column: 20, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 318, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 317, column: 48)
!1279 = !DILocation(line: 318, column: 23, scope: !1277)
!1280 = !{!1207, !899, i64 16}
!1281 = !DILocation(line: 318, column: 29, scope: !1277)
!1282 = !DILocation(line: 318, column: 13, scope: !1277)
!1283 = !DILocation(line: 318, column: 35, scope: !1277)
!1284 = !DILocation(line: 318, column: 13, scope: !1278)
!1285 = !DILocation(line: 319, column: 14, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 318, column: 41)
!1287 = !DILocation(line: 319, column: 20, scope: !1286)
!1288 = !DILocation(line: 320, column: 20, scope: !1286)
!1289 = !DILocation(line: 320, column: 13, scope: !1286)
!1290 = !DILocation(line: 322, column: 5, scope: !1278)
!1291 = distinct !{!1291, !1272, !1292, !1027}
!1292 = !DILocation(line: 322, column: 5, scope: !1273)
!1293 = !DILocation(line: 327, column: 9, scope: !1246)
!1294 = !DILocation(line: 327, column: 7, scope: !1246)
!1295 = !DILocation(line: 328, column: 5, scope: !1246)
!1296 = !DILocation(line: 328, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 328, column: 5)
!1298 = !DILocation(line: 330, column: 17, scope: !1246)
!1299 = !DILocation(line: 330, column: 5, scope: !1246)
!1300 = !DILocation(line: 330, column: 8, scope: !1246)
!1301 = !DILocation(line: 330, column: 15, scope: !1246)
!1302 = !{!1207, !899, i64 8}
!1303 = !DILocation(line: 331, column: 29, scope: !1246)
!1304 = !DILocation(line: 331, column: 15, scope: !1246)
!1305 = !DILocation(line: 331, column: 5, scope: !1246)
!1306 = !DILocation(line: 331, column: 8, scope: !1246)
!1307 = !DILocation(line: 331, column: 13, scope: !1246)
!1308 = !DILocation(line: 332, column: 5, scope: !1246)
!1309 = !DILocation(line: 332, column: 8, scope: !1246)
!1310 = !DILocation(line: 332, column: 19, scope: !1246)
!1311 = !{!1207, !899, i64 24}
!1312 = !DILocation(line: 333, column: 16, scope: !1246)
!1313 = !DILocation(line: 333, column: 5, scope: !1246)
!1314 = !DILocation(line: 333, column: 8, scope: !1246)
!1315 = !DILocation(line: 333, column: 14, scope: !1246)
!1316 = !{!1207, !1209, i64 32}
!1317 = !DILocation(line: 338, column: 5, scope: !1246)
!1318 = !DILocation(line: 338, column: 5, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 338, column: 5)
!1320 = !{!1207, !899, i64 64}
!1321 = !{!1207, !899, i64 72}
!1322 = !DILocation(line: 339, column: 10, scope: !1246)
!1323 = !DILocation(line: 339, column: 8, scope: !1246)
!1324 = !DILocation(line: 340, column: 19, scope: !1246)
!1325 = !DILocation(line: 340, column: 5, scope: !1246)
!1326 = !DILocation(line: 340, column: 9, scope: !1246)
!1327 = !DILocation(line: 340, column: 17, scope: !1246)
!1328 = !{!1329, !899, i64 16}
!1329 = !{!"yasm_bytecode", !1208, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !1209, i64 32, !1209, i64 40, !1209, i64 48, !1209, i64 56, !1209, i64 64, !899, i64 72, !899, i64 80}
!1330 = !DILocation(line: 341, column: 5, scope: !1246)
!1331 = !DILocation(line: 341, column: 9, scope: !1246)
!1332 = !DILocation(line: 341, column: 16, scope: !1246)
!1333 = !{!1329, !1209, i64 56}
!1334 = !DILocation(line: 342, column: 5, scope: !1246)
!1335 = !DILocation(line: 342, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 342, column: 5)
!1337 = !{!1329, !899, i64 0}
!1338 = !DILocation(line: 345, column: 5, scope: !1246)
!1339 = !DILocation(line: 345, column: 5, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 345, column: 5)
!1341 = !{!1207, !899, i64 80}
!1342 = !{!1207, !899, i64 88}
!1343 = !DILocation(line: 346, column: 5, scope: !1246)
!1344 = !DILocation(line: 346, column: 8, scope: !1246)
!1345 = !DILocation(line: 346, column: 22, scope: !1246)
!1346 = !{!1207, !899, i64 96}
!1347 = !DILocation(line: 348, column: 15, scope: !1246)
!1348 = !DILocation(line: 348, column: 5, scope: !1246)
!1349 = !DILocation(line: 348, column: 8, scope: !1246)
!1350 = !DILocation(line: 348, column: 13, scope: !1246)
!1351 = !{!1207, !984, i64 48}
!1352 = !DILocation(line: 349, column: 19, scope: !1246)
!1353 = !DILocation(line: 349, column: 5, scope: !1246)
!1354 = !DILocation(line: 349, column: 8, scope: !1246)
!1355 = !DILocation(line: 349, column: 17, scope: !1246)
!1356 = !{!1207, !984, i64 52}
!1357 = !DILocation(line: 350, column: 5, scope: !1246)
!1358 = !DILocation(line: 350, column: 8, scope: !1246)
!1359 = !DILocation(line: 350, column: 12, scope: !1246)
!1360 = !{!1207, !984, i64 56}
!1361 = !DILocation(line: 353, column: 5, scope: !1246)
!1362 = !{!964, !899, i64 96}
!1363 = !DILocation(line: 355, column: 6, scope: !1246)
!1364 = !DILocation(line: 355, column: 12, scope: !1246)
!1365 = !DILocation(line: 356, column: 12, scope: !1246)
!1366 = !DILocation(line: 356, column: 5, scope: !1246)
!1367 = !DILocation(line: 357, column: 1, scope: !1246)
!1368 = !DISubprogram(name: "strcmp", scope: !1369, file: !1369, line: 156, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1370 = !DISubprogram(name: "yasm_bc_create_common", scope: !72, file: !72, line: 238, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!295, !220, !229, !202}
!1373 = distinct !DISubprogram(name: "yasm_object_directive", scope: !2, file: !2, line: 361, type: !1374, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!205, !160, !145, !145, !426, !426, !202}
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384}
!1377 = !DILocalVariable(name: "object", arg: 1, scope: !1373, file: !2, line: 361, type: !160)
!1378 = !DILocalVariable(name: "name", arg: 2, scope: !1373, file: !2, line: 361, type: !145)
!1379 = !DILocalVariable(name: "parser", arg: 3, scope: !1373, file: !2, line: 362, type: !145)
!1380 = !DILocalVariable(name: "valparams", arg: 4, scope: !1373, file: !2, line: 362, type: !426)
!1381 = !DILocalVariable(name: "objext_valparams", arg: 5, scope: !1373, file: !2, line: 363, type: !426)
!1382 = !DILocalVariable(name: "line", arg: 6, scope: !1373, file: !2, line: 364, type: !202)
!1383 = !DILocalVariable(name: "level2", scope: !1373, file: !2, line: 366, type: !1095)
!1384 = !DILocalVariable(name: "wrap", scope: !1373, file: !2, line: 367, type: !1118)
!1385 = !DILocation(line: 361, column: 36, scope: !1373)
!1386 = !DILocation(line: 361, column: 56, scope: !1373)
!1387 = !DILocation(line: 362, column: 35, scope: !1373)
!1388 = !DILocation(line: 362, column: 62, scope: !1373)
!1389 = !DILocation(line: 363, column: 42, scope: !1373)
!1390 = !DILocation(line: 364, column: 37, scope: !1373)
!1391 = !DILocation(line: 366, column: 5, scope: !1373)
!1392 = !DILocation(line: 366, column: 11, scope: !1373)
!1393 = !DILocation(line: 367, column: 5, scope: !1373)
!1394 = !DILocation(line: 367, column: 26, scope: !1373)
!1395 = !DILocation(line: 369, column: 26, scope: !1373)
!1396 = !DILocation(line: 369, column: 34, scope: !1373)
!1397 = !DILocation(line: 369, column: 46, scope: !1373)
!1398 = !DILocation(line: 369, column: 14, scope: !1373)
!1399 = !DILocation(line: 369, column: 12, scope: !1373)
!1400 = !DILocation(line: 370, column: 10, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 370, column: 9)
!1402 = !DILocation(line: 370, column: 9, scope: !1373)
!1403 = !DILocation(line: 371, column: 9, scope: !1401)
!1404 = !DILocation(line: 373, column: 24, scope: !1373)
!1405 = !DILocation(line: 373, column: 32, scope: !1373)
!1406 = !DILocation(line: 373, column: 12, scope: !1373)
!1407 = !DILocation(line: 373, column: 10, scope: !1373)
!1408 = !DILocation(line: 374, column: 10, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 374, column: 9)
!1410 = !DILocation(line: 374, column: 9, scope: !1373)
!1411 = !DILocation(line: 375, column: 9, scope: !1409)
!1412 = !DILocation(line: 377, column: 25, scope: !1373)
!1413 = !DILocation(line: 377, column: 31, scope: !1373)
!1414 = !DILocation(line: 377, column: 42, scope: !1373)
!1415 = !DILocation(line: 377, column: 50, scope: !1373)
!1416 = !DILocation(line: 377, column: 61, scope: !1373)
!1417 = !DILocation(line: 378, column: 25, scope: !1373)
!1418 = !DILocation(line: 377, column: 5, scope: !1373)
!1419 = !DILocation(line: 379, column: 5, scope: !1373)
!1420 = !DILocation(line: 380, column: 1, scope: !1373)
!1421 = !DISubprogram(name: "HAMT_search", scope: !423, file: !423, line: 88, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!229, !1095, !145}
!1424 = !DISubprogram(name: "yasm_call_directive", scope: !79, file: !79, line: 105, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !149, !160, !426, !426, !202}
!1427 = distinct !DISubprogram(name: "yasm_object_set_source_fn", scope: !2, file: !2, line: 383, type: !1428, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !160, !145}
!1430 = !{!1431, !1432}
!1431 = !DILocalVariable(name: "object", arg: 1, scope: !1427, file: !2, line: 383, type: !160)
!1432 = !DILocalVariable(name: "src_filename", arg: 2, scope: !1427, file: !2, line: 383, type: !145)
!1433 = !DILocation(line: 383, column: 40, scope: !1427)
!1434 = !DILocation(line: 383, column: 60, scope: !1427)
!1435 = !DILocation(line: 385, column: 5, scope: !1427)
!1436 = !DILocation(line: 385, column: 16, scope: !1427)
!1437 = !DILocation(line: 385, column: 24, scope: !1427)
!1438 = !DILocation(line: 386, column: 42, scope: !1427)
!1439 = !DILocation(line: 386, column: 28, scope: !1427)
!1440 = !DILocation(line: 386, column: 5, scope: !1427)
!1441 = !DILocation(line: 386, column: 13, scope: !1427)
!1442 = !DILocation(line: 386, column: 26, scope: !1427)
!1443 = !DILocation(line: 387, column: 1, scope: !1427)
!1444 = distinct !DISubprogram(name: "yasm_object_set_global_prefix", scope: !2, file: !2, line: 390, type: !1428, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1445)
!1445 = !{!1446, !1447}
!1446 = !DILocalVariable(name: "object", arg: 1, scope: !1444, file: !2, line: 390, type: !160)
!1447 = !DILocalVariable(name: "prefix", arg: 2, scope: !1444, file: !2, line: 390, type: !145)
!1448 = !DILocation(line: 390, column: 44, scope: !1444)
!1449 = !DILocation(line: 390, column: 64, scope: !1444)
!1450 = !DILocation(line: 392, column: 5, scope: !1444)
!1451 = !DILocation(line: 392, column: 16, scope: !1444)
!1452 = !DILocation(line: 392, column: 24, scope: !1444)
!1453 = !DILocation(line: 393, column: 43, scope: !1444)
!1454 = !DILocation(line: 393, column: 29, scope: !1444)
!1455 = !DILocation(line: 393, column: 5, scope: !1444)
!1456 = !DILocation(line: 393, column: 13, scope: !1444)
!1457 = !DILocation(line: 393, column: 27, scope: !1444)
!1458 = !DILocation(line: 394, column: 1, scope: !1444)
!1459 = distinct !DISubprogram(name: "yasm_object_set_global_suffix", scope: !2, file: !2, line: 397, type: !1428, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1460)
!1460 = !{!1461, !1462}
!1461 = !DILocalVariable(name: "object", arg: 1, scope: !1459, file: !2, line: 397, type: !160)
!1462 = !DILocalVariable(name: "suffix", arg: 2, scope: !1459, file: !2, line: 397, type: !145)
!1463 = !DILocation(line: 397, column: 44, scope: !1459)
!1464 = !DILocation(line: 397, column: 64, scope: !1459)
!1465 = !DILocation(line: 399, column: 5, scope: !1459)
!1466 = !DILocation(line: 399, column: 16, scope: !1459)
!1467 = !DILocation(line: 399, column: 24, scope: !1459)
!1468 = !DILocation(line: 400, column: 43, scope: !1459)
!1469 = !DILocation(line: 400, column: 29, scope: !1459)
!1470 = !DILocation(line: 400, column: 5, scope: !1459)
!1471 = !DILocation(line: 400, column: 13, scope: !1459)
!1472 = !DILocation(line: 400, column: 27, scope: !1459)
!1473 = !DILocation(line: 401, column: 1, scope: !1459)
!1474 = distinct !DISubprogram(name: "yasm_section_is_code", scope: !2, file: !2, line: 404, type: !1475, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!205, !185}
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "sect", arg: 1, scope: !1474, file: !2, line: 404, type: !185)
!1479 = !DILocation(line: 404, column: 36, scope: !1474)
!1480 = !DILocation(line: 406, column: 12, scope: !1474)
!1481 = !DILocation(line: 406, column: 18, scope: !1474)
!1482 = !DILocation(line: 406, column: 5, scope: !1474)
!1483 = distinct !DISubprogram(name: "yasm_section_get_opt_flags", scope: !2, file: !2, line: 410, type: !1484, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1488)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!202, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1488 = !{!1489}
!1489 = !DILocalVariable(name: "sect", arg: 1, scope: !1483, file: !2, line: 410, type: !1486)
!1490 = !DILocation(line: 410, column: 48, scope: !1483)
!1491 = !DILocation(line: 412, column: 12, scope: !1483)
!1492 = !DILocation(line: 412, column: 18, scope: !1483)
!1493 = !{!1207, !1209, i64 40}
!1494 = !DILocation(line: 412, column: 5, scope: !1483)
!1495 = distinct !DISubprogram(name: "yasm_section_set_opt_flags", scope: !2, file: !2, line: 416, type: !601, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1496)
!1496 = !{!1497, !1498}
!1497 = !DILocalVariable(name: "sect", arg: 1, scope: !1495, file: !2, line: 416, type: !185)
!1498 = !DILocalVariable(name: "opt_flags", arg: 2, scope: !1495, file: !2, line: 416, type: !202)
!1499 = !DILocation(line: 416, column: 42, scope: !1495)
!1500 = !DILocation(line: 416, column: 62, scope: !1495)
!1501 = !DILocation(line: 418, column: 23, scope: !1495)
!1502 = !DILocation(line: 418, column: 5, scope: !1495)
!1503 = !DILocation(line: 418, column: 11, scope: !1495)
!1504 = !DILocation(line: 418, column: 21, scope: !1495)
!1505 = !DILocation(line: 419, column: 1, scope: !1495)
!1506 = distinct !DISubprogram(name: "yasm_section_is_default", scope: !2, file: !2, line: 422, type: !1507, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!205, !1486}
!1509 = !{!1510}
!1510 = !DILocalVariable(name: "sect", arg: 1, scope: !1506, file: !2, line: 422, type: !1486)
!1511 = !DILocation(line: 422, column: 45, scope: !1506)
!1512 = !DILocation(line: 424, column: 12, scope: !1506)
!1513 = !DILocation(line: 424, column: 18, scope: !1506)
!1514 = !DILocation(line: 424, column: 5, scope: !1506)
!1515 = distinct !DISubprogram(name: "yasm_section_set_default", scope: !2, file: !2, line: 428, type: !1516, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !185, !205}
!1518 = !{!1519, !1520}
!1519 = !DILocalVariable(name: "sect", arg: 1, scope: !1515, file: !2, line: 428, type: !185)
!1520 = !DILocalVariable(name: "def", arg: 2, scope: !1515, file: !2, line: 428, type: !205)
!1521 = !DILocation(line: 428, column: 40, scope: !1515)
!1522 = !DILocation(line: 428, column: 50, scope: !1515)
!1523 = !DILocation(line: 430, column: 17, scope: !1515)
!1524 = !DILocation(line: 430, column: 5, scope: !1515)
!1525 = !DILocation(line: 430, column: 11, scope: !1515)
!1526 = !DILocation(line: 430, column: 15, scope: !1515)
!1527 = !DILocation(line: 431, column: 1, scope: !1515)
!1528 = distinct !DISubprogram(name: "yasm_section_get_object", scope: !2, file: !2, line: 434, type: !1529, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!160, !1486}
!1531 = !{!1532}
!1532 = !DILocalVariable(name: "sect", arg: 1, scope: !1528, file: !2, line: 434, type: !1486)
!1533 = !DILocation(line: 434, column: 45, scope: !1528)
!1534 = !DILocation(line: 436, column: 12, scope: !1528)
!1535 = !DILocation(line: 436, column: 18, scope: !1528)
!1536 = !DILocation(line: 436, column: 5, scope: !1528)
!1537 = distinct !DISubprogram(name: "yasm_section_get_data", scope: !2, file: !2, line: 440, type: !1538, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1550)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!229, !185, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_assoc_data_callback", file: !24, line: 85, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_assoc_data_callback", file: !24, line: 73, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1543, file: !24, line: 77, baseType: !226, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !1543, file: !24, line: 84, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !229, !236, !205}
!1550 = !{!1551, !1552}
!1551 = !DILocalVariable(name: "sect", arg: 1, scope: !1537, file: !2, line: 440, type: !185)
!1552 = !DILocalVariable(name: "callback", arg: 2, scope: !1537, file: !2, line: 441, type: !1540)
!1553 = !DILocation(line: 440, column: 37, scope: !1537)
!1554 = !DILocation(line: 441, column: 55, scope: !1537)
!1555 = !DILocation(line: 443, column: 33, scope: !1537)
!1556 = !DILocation(line: 443, column: 39, scope: !1537)
!1557 = !DILocation(line: 443, column: 51, scope: !1537)
!1558 = !DILocation(line: 443, column: 12, scope: !1537)
!1559 = !DILocation(line: 443, column: 5, scope: !1537)
!1560 = !DISubprogram(name: "yasm__assoc_data_get", scope: !199, file: !199, line: 50, type: !1561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!229, !197, !1540}
!1563 = distinct !DISubprogram(name: "yasm_section_add_data", scope: !2, file: !2, line: 447, type: !1564, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !185, !1540, !229}
!1566 = !{!1567, !1568, !1569}
!1567 = !DILocalVariable(name: "sect", arg: 1, scope: !1563, file: !2, line: 447, type: !185)
!1568 = !DILocalVariable(name: "callback", arg: 2, scope: !1563, file: !2, line: 448, type: !1540)
!1569 = !DILocalVariable(name: "data", arg: 3, scope: !1563, file: !2, line: 448, type: !229)
!1570 = !DILocation(line: 447, column: 37, scope: !1563)
!1571 = !DILocation(line: 448, column: 55, scope: !1563)
!1572 = !DILocation(line: 448, column: 71, scope: !1563)
!1573 = !DILocation(line: 450, column: 45, scope: !1563)
!1574 = !DILocation(line: 450, column: 51, scope: !1563)
!1575 = !DILocation(line: 450, column: 63, scope: !1563)
!1576 = !DILocation(line: 450, column: 73, scope: !1563)
!1577 = !DILocation(line: 450, column: 24, scope: !1563)
!1578 = !DILocation(line: 450, column: 5, scope: !1563)
!1579 = !DILocation(line: 450, column: 11, scope: !1563)
!1580 = !DILocation(line: 450, column: 22, scope: !1563)
!1581 = !DILocation(line: 451, column: 1, scope: !1563)
!1582 = !DISubprogram(name: "yasm__assoc_data_add", scope: !199, file: !199, line: 61, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!197, !197, !1540, !229}
!1585 = distinct !DISubprogram(name: "yasm_section_destroy", scope: !2, file: !2, line: 667, type: !1586, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !185}
!1588 = !{!1589, !1590, !1591, !1592, !1595}
!1589 = !DILocalVariable(name: "sect", arg: 1, scope: !1585, file: !2, line: 667, type: !185)
!1590 = !DILocalVariable(name: "cur", scope: !1585, file: !2, line: 669, type: !295)
!1591 = !DILocalVariable(name: "next", scope: !1585, file: !2, line: 669, type: !295)
!1592 = !DILocalVariable(name: "r_cur", scope: !1585, file: !2, line: 670, type: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_reloc", file: !163, line: 40, baseType: !403)
!1595 = !DILocalVariable(name: "r_next", scope: !1585, file: !2, line: 670, type: !1593)
!1596 = !DILocation(line: 667, column: 36, scope: !1585)
!1597 = !DILocation(line: 669, column: 5, scope: !1585)
!1598 = !DILocation(line: 669, column: 20, scope: !1585)
!1599 = !DILocation(line: 669, column: 26, scope: !1585)
!1600 = !DILocation(line: 670, column: 5, scope: !1585)
!1601 = !DILocation(line: 670, column: 17, scope: !1585)
!1602 = !DILocation(line: 670, column: 25, scope: !1585)
!1603 = !DILocation(line: 672, column: 10, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 672, column: 9)
!1605 = !DILocation(line: 672, column: 9, scope: !1585)
!1606 = !DILocation(line: 673, column: 9, scope: !1604)
!1607 = !DILocation(line: 675, column: 5, scope: !1585)
!1608 = !DILocation(line: 675, column: 16, scope: !1585)
!1609 = !DILocation(line: 675, column: 22, scope: !1585)
!1610 = !DILocation(line: 676, column: 30, scope: !1585)
!1611 = !DILocation(line: 676, column: 36, scope: !1585)
!1612 = !DILocation(line: 676, column: 5, scope: !1585)
!1613 = !DILocation(line: 679, column: 11, scope: !1585)
!1614 = !DILocation(line: 679, column: 9, scope: !1585)
!1615 = !DILocation(line: 680, column: 5, scope: !1585)
!1616 = !DILocation(line: 680, column: 12, scope: !1585)
!1617 = !DILocation(line: 681, column: 16, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 680, column: 17)
!1619 = !DILocation(line: 681, column: 14, scope: !1618)
!1620 = !DILocation(line: 682, column: 25, scope: !1618)
!1621 = !DILocation(line: 682, column: 9, scope: !1618)
!1622 = !DILocation(line: 683, column: 15, scope: !1618)
!1623 = !DILocation(line: 683, column: 13, scope: !1618)
!1624 = distinct !{!1624, !1615, !1625, !1027}
!1625 = !DILocation(line: 684, column: 5, scope: !1585)
!1626 = !DILocation(line: 687, column: 13, scope: !1585)
!1627 = !DILocation(line: 687, column: 11, scope: !1585)
!1628 = !DILocation(line: 688, column: 5, scope: !1585)
!1629 = !DILocation(line: 688, column: 12, scope: !1585)
!1630 = !DILocation(line: 689, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 688, column: 19)
!1632 = !{!1633, !899, i64 0}
!1633 = !{!"yasm_reloc", !1208, i64 0, !899, i64 8, !899, i64 16}
!1634 = !DILocation(line: 689, column: 16, scope: !1631)
!1635 = !DILocation(line: 690, column: 29, scope: !1631)
!1636 = !DILocation(line: 690, column: 36, scope: !1631)
!1637 = !{!1633, !899, i64 8}
!1638 = !DILocation(line: 690, column: 9, scope: !1631)
!1639 = !DILocation(line: 691, column: 9, scope: !1631)
!1640 = !DILocation(line: 691, column: 15, scope: !1631)
!1641 = !DILocation(line: 691, column: 29, scope: !1631)
!1642 = !DILocation(line: 692, column: 17, scope: !1631)
!1643 = !DILocation(line: 692, column: 15, scope: !1631)
!1644 = distinct !{!1644, !1628, !1645, !1027}
!1645 = !DILocation(line: 693, column: 5, scope: !1585)
!1646 = !DILocation(line: 695, column: 5, scope: !1585)
!1647 = !DILocation(line: 695, column: 16, scope: !1585)
!1648 = !DILocation(line: 696, column: 1, scope: !1585)
!1649 = !DISubprogram(name: "HAMT_destroy", scope: !423, file: !423, line: 58, type: !1650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1095, !226}
!1652 = distinct !DISubprogram(name: "directive_level1_delete", scope: !2, file: !2, line: 182, type: !227, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1653)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "data", arg: 1, scope: !1652, file: !2, line: 182, type: !229)
!1655 = !DILocation(line: 182, column: 42, scope: !1652)
!1656 = !DILocation(line: 184, column: 18, scope: !1652)
!1657 = !DILocation(line: 184, column: 5, scope: !1652)
!1658 = !DILocation(line: 185, column: 1, scope: !1652)
!1659 = !DISubprogram(name: "yasm_symtab_destroy", scope: !127, file: !127, line: 70, type: !1660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !169}
!1662 = distinct !DISubprogram(name: "yasm_object_print", scope: !2, file: !2, line: 496, type: !1663, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1667)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !1665, !236, !205}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1667 = !{!1668, !1669, !1670, !1671}
!1668 = !DILocalVariable(name: "object", arg: 1, scope: !1662, file: !2, line: 496, type: !1665)
!1669 = !DILocalVariable(name: "f", arg: 2, scope: !1662, file: !2, line: 496, type: !236)
!1670 = !DILocalVariable(name: "indent_level", arg: 3, scope: !1662, file: !2, line: 496, type: !205)
!1671 = !DILocalVariable(name: "cur", scope: !1662, file: !2, line: 498, type: !185)
!1672 = !DILocation(line: 496, column: 38, scope: !1662)
!1673 = !DILocation(line: 496, column: 52, scope: !1662)
!1674 = !DILocation(line: 496, column: 59, scope: !1662)
!1675 = !DILocation(line: 498, column: 5, scope: !1662)
!1676 = !DILocation(line: 498, column: 19, scope: !1662)
!1677 = !DILocation(line: 501, column: 13, scope: !1662)
!1678 = !DILocation(line: 501, column: 38, scope: !1662)
!1679 = !DILocation(line: 501, column: 5, scope: !1662)
!1680 = !DILocation(line: 502, column: 23, scope: !1662)
!1681 = !DILocation(line: 502, column: 31, scope: !1662)
!1682 = !DILocation(line: 502, column: 39, scope: !1662)
!1683 = !DILocation(line: 502, column: 42, scope: !1662)
!1684 = !DILocation(line: 502, column: 54, scope: !1662)
!1685 = !DILocation(line: 502, column: 5, scope: !1662)
!1686 = !DILocation(line: 505, column: 5, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 505, column: 5)
!1688 = !DILocation(line: 505, column: 5, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 505, column: 5)
!1690 = !DILocation(line: 506, column: 17, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 505, column: 50)
!1692 = !DILocation(line: 506, column: 37, scope: !1691)
!1693 = !DILocation(line: 506, column: 9, scope: !1691)
!1694 = !DILocation(line: 507, column: 28, scope: !1691)
!1695 = !DILocation(line: 507, column: 33, scope: !1691)
!1696 = !DILocation(line: 507, column: 36, scope: !1691)
!1697 = !DILocation(line: 507, column: 48, scope: !1691)
!1698 = !DILocation(line: 507, column: 9, scope: !1691)
!1699 = !DILocation(line: 508, column: 5, scope: !1691)
!1700 = distinct !{!1700, !1686, !1701, !1027}
!1701 = !DILocation(line: 508, column: 5, scope: !1687)
!1702 = !DILocation(line: 509, column: 1, scope: !1662)
!1703 = !DISubprogram(name: "fprintf", scope: !1704, file: !1704, line: 350, type: !1705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1704 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!205, !1707, !1708, null}
!1707 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!1708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!1709 = !DISubprogram(name: "yasm_symtab_print", scope: !127, file: !127, line: 251, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !169, !236, !205}
!1712 = distinct !DISubprogram(name: "yasm_section_print", scope: !2, file: !2, line: 699, type: !1713, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1486, !236, !205, !205}
!1715 = !{!1716, !1717, !1718, !1719, !1720}
!1716 = !DILocalVariable(name: "sect", arg: 1, scope: !1712, file: !2, line: 699, type: !1486)
!1717 = !DILocalVariable(name: "f", arg: 2, scope: !1712, file: !2, line: 699, type: !236)
!1718 = !DILocalVariable(name: "indent_level", arg: 3, scope: !1712, file: !2, line: 699, type: !205)
!1719 = !DILocalVariable(name: "print_bcs", arg: 4, scope: !1712, file: !2, line: 700, type: !205)
!1720 = !DILocalVariable(name: "cur", scope: !1721, file: !2, line: 715, type: !295)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 714, column: 20)
!1722 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 714, column: 9)
!1723 = !DILocation(line: 699, column: 40, scope: !1712)
!1724 = !DILocation(line: 699, column: 52, scope: !1712)
!1725 = !DILocation(line: 699, column: 59, scope: !1712)
!1726 = !DILocation(line: 700, column: 24, scope: !1712)
!1727 = !DILocation(line: 702, column: 10, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 702, column: 9)
!1729 = !DILocation(line: 702, column: 9, scope: !1712)
!1730 = !DILocation(line: 703, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 702, column: 16)
!1732 = !DILocation(line: 703, column: 35, scope: !1731)
!1733 = !DILocation(line: 703, column: 9, scope: !1731)
!1734 = !DILocation(line: 704, column: 9, scope: !1731)
!1735 = !DILocation(line: 707, column: 13, scope: !1712)
!1736 = !DILocation(line: 707, column: 32, scope: !1712)
!1737 = !DILocation(line: 707, column: 50, scope: !1712)
!1738 = !DILocation(line: 707, column: 56, scope: !1712)
!1739 = !DILocation(line: 707, column: 5, scope: !1712)
!1740 = !DILocation(line: 709, column: 9, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 709, column: 9)
!1742 = !DILocation(line: 709, column: 15, scope: !1741)
!1743 = !DILocation(line: 709, column: 9, scope: !1712)
!1744 = !DILocation(line: 710, column: 17, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 709, column: 27)
!1746 = !DILocation(line: 710, column: 45, scope: !1745)
!1747 = !DILocation(line: 710, column: 9, scope: !1745)
!1748 = !DILocation(line: 711, column: 32, scope: !1745)
!1749 = !DILocation(line: 711, column: 38, scope: !1745)
!1750 = !DILocation(line: 711, column: 50, scope: !1745)
!1751 = !DILocation(line: 711, column: 53, scope: !1745)
!1752 = !DILocation(line: 711, column: 65, scope: !1745)
!1753 = !DILocation(line: 711, column: 9, scope: !1745)
!1754 = !DILocation(line: 712, column: 5, scope: !1745)
!1755 = !DILocation(line: 714, column: 9, scope: !1722)
!1756 = !DILocation(line: 714, column: 9, scope: !1712)
!1757 = !DILocation(line: 715, column: 9, scope: !1721)
!1758 = !DILocation(line: 715, column: 24, scope: !1721)
!1759 = !DILocation(line: 717, column: 17, scope: !1721)
!1760 = !DILocation(line: 717, column: 39, scope: !1721)
!1761 = !DILocation(line: 717, column: 9, scope: !1721)
!1762 = !DILocation(line: 719, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 719, column: 9)
!1764 = !DILocation(line: 719, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 719, column: 9)
!1766 = !DILocation(line: 720, column: 21, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 719, column: 47)
!1768 = !DILocation(line: 720, column: 47, scope: !1767)
!1769 = !DILocation(line: 720, column: 59, scope: !1767)
!1770 = !DILocation(line: 720, column: 13, scope: !1767)
!1771 = !DILocation(line: 721, column: 27, scope: !1767)
!1772 = !DILocation(line: 721, column: 32, scope: !1767)
!1773 = !DILocation(line: 721, column: 35, scope: !1767)
!1774 = !DILocation(line: 721, column: 47, scope: !1767)
!1775 = !DILocation(line: 721, column: 13, scope: !1767)
!1776 = !DILocation(line: 722, column: 9, scope: !1767)
!1777 = distinct !{!1777, !1762, !1778, !1027}
!1778 = !DILocation(line: 722, column: 9, scope: !1763)
!1779 = !DILocation(line: 723, column: 5, scope: !1722)
!1780 = !DILocation(line: 723, column: 5, scope: !1721)
!1781 = !DILocation(line: 724, column: 1, scope: !1712)
!1782 = distinct !DISubprogram(name: "yasm_object_finalize", scope: !2, file: !2, line: 512, type: !1783, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !160, !588}
!1785 = !{!1786, !1787, !1788, !1789, !1793}
!1786 = !DILocalVariable(name: "object", arg: 1, scope: !1782, file: !2, line: 512, type: !160)
!1787 = !DILocalVariable(name: "errwarns", arg: 2, scope: !1782, file: !2, line: 512, type: !588)
!1788 = !DILocalVariable(name: "sect", scope: !1782, file: !2, line: 514, type: !185)
!1789 = !DILocalVariable(name: "cur", scope: !1790, file: !2, line: 518, type: !295)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !2, line: 517, column: 51)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 517, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 517, column: 5)
!1793 = !DILocalVariable(name: "prev", scope: !1790, file: !2, line: 519, type: !295)
!1794 = !DILocation(line: 512, column: 35, scope: !1782)
!1795 = !DILocation(line: 512, column: 58, scope: !1782)
!1796 = !DILocation(line: 514, column: 5, scope: !1782)
!1797 = !DILocation(line: 514, column: 19, scope: !1782)
!1798 = !DILocation(line: 517, column: 5, scope: !1792)
!1799 = !DILocation(line: 517, column: 5, scope: !1791)
!1800 = !DILocation(line: 518, column: 9, scope: !1790)
!1801 = !DILocation(line: 518, column: 24, scope: !1790)
!1802 = !DILocation(line: 518, column: 30, scope: !1790)
!1803 = !DILocation(line: 519, column: 9, scope: !1790)
!1804 = !DILocation(line: 519, column: 24, scope: !1790)
!1805 = !DILocation(line: 522, column: 16, scope: !1790)
!1806 = !DILocation(line: 522, column: 14, scope: !1790)
!1807 = !DILocation(line: 523, column: 15, scope: !1790)
!1808 = !DILocation(line: 523, column: 13, scope: !1790)
!1809 = !DILocation(line: 526, column: 9, scope: !1790)
!1810 = !DILocation(line: 526, column: 16, scope: !1790)
!1811 = !DILocation(line: 528, column: 30, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 526, column: 21)
!1813 = !DILocation(line: 528, column: 35, scope: !1812)
!1814 = !DILocation(line: 528, column: 13, scope: !1812)
!1815 = !DILocation(line: 529, column: 36, scope: !1812)
!1816 = !DILocation(line: 529, column: 46, scope: !1812)
!1817 = !DILocation(line: 529, column: 51, scope: !1812)
!1818 = !{!1329, !1209, i64 48}
!1819 = !DILocation(line: 529, column: 13, scope: !1812)
!1820 = !DILocation(line: 530, column: 20, scope: !1812)
!1821 = !DILocation(line: 530, column: 18, scope: !1812)
!1822 = !DILocation(line: 531, column: 19, scope: !1812)
!1823 = !DILocation(line: 531, column: 17, scope: !1812)
!1824 = distinct !{!1824, !1809, !1825, !1027}
!1825 = !DILocation(line: 532, column: 9, scope: !1790)
!1826 = !DILocation(line: 533, column: 5, scope: !1791)
!1827 = !DILocation(line: 533, column: 5, scope: !1790)
!1828 = distinct !{!1828, !1798, !1829, !1027}
!1829 = !DILocation(line: 533, column: 5, scope: !1792)
!1830 = !DILocation(line: 534, column: 1, scope: !1782)
!1831 = !DISubprogram(name: "yasm_bc_finalize", scope: !72, file: !72, line: 426, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DISubprogram(name: "yasm_errwarn_propagate", scope: !90, file: !90, line: 289, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !588, !202}
!1835 = distinct !DISubprogram(name: "yasm_object_sections_traverse", scope: !2, file: !2, line: 537, type: !1836, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1841)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!205, !160, !229, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!205, !185, !229}
!1841 = !{!1842, !1843, !1844, !1845, !1846}
!1842 = !DILocalVariable(name: "object", arg: 1, scope: !1835, file: !2, line: 537, type: !160)
!1843 = !DILocalVariable(name: "d", arg: 2, scope: !1835, file: !2, line: 537, type: !229)
!1844 = !DILocalVariable(name: "func", arg: 3, scope: !1835, file: !2, line: 538, type: !1838)
!1845 = !DILocalVariable(name: "cur", scope: !1835, file: !2, line: 541, type: !185)
!1846 = !DILocalVariable(name: "retval", scope: !1847, file: !2, line: 544, type: !205)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 543, column: 50)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 543, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 543, column: 5)
!1850 = !DILocation(line: 537, column: 44, scope: !1835)
!1851 = !DILocation(line: 537, column: 69, scope: !1835)
!1852 = !DILocation(line: 538, column: 37, scope: !1835)
!1853 = !DILocation(line: 541, column: 5, scope: !1835)
!1854 = !DILocation(line: 541, column: 19, scope: !1835)
!1855 = !DILocation(line: 543, column: 5, scope: !1849)
!1856 = !DILocation(line: 543, column: 5, scope: !1848)
!1857 = !DILocation(line: 544, column: 9, scope: !1847)
!1858 = !DILocation(line: 544, column: 13, scope: !1847)
!1859 = !DILocation(line: 544, column: 22, scope: !1847)
!1860 = !DILocation(line: 544, column: 27, scope: !1847)
!1861 = !DILocation(line: 544, column: 32, scope: !1847)
!1862 = !DILocation(line: 545, column: 13, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 545, column: 13)
!1864 = !DILocation(line: 545, column: 20, scope: !1863)
!1865 = !DILocation(line: 545, column: 13, scope: !1847)
!1866 = !DILocation(line: 546, column: 20, scope: !1863)
!1867 = !DILocation(line: 546, column: 13, scope: !1863)
!1868 = !DILocation(line: 547, column: 5, scope: !1848)
!1869 = !DILocation(line: 547, column: 5, scope: !1847)
!1870 = distinct !{!1870, !1855, !1871, !1027}
!1871 = !DILocation(line: 547, column: 5, scope: !1849)
!1872 = !DILocation(line: 548, column: 5, scope: !1835)
!1873 = !DILocation(line: 549, column: 1, scope: !1835)
!1874 = distinct !DISubprogram(name: "yasm_object_find_general", scope: !2, file: !2, line: 553, type: !1875, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!185, !160, !145}
!1877 = !{!1878, !1879, !1880}
!1878 = !DILocalVariable(name: "object", arg: 1, scope: !1874, file: !2, line: 553, type: !160)
!1879 = !DILocalVariable(name: "name", arg: 2, scope: !1874, file: !2, line: 553, type: !145)
!1880 = !DILocalVariable(name: "cur", scope: !1874, file: !2, line: 555, type: !185)
!1881 = !DILocation(line: 553, column: 39, scope: !1874)
!1882 = !DILocation(line: 553, column: 59, scope: !1874)
!1883 = !DILocation(line: 555, column: 5, scope: !1874)
!1884 = !DILocation(line: 555, column: 19, scope: !1874)
!1885 = !DILocation(line: 557, column: 5, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 557, column: 5)
!1887 = !DILocation(line: 557, column: 5, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 557, column: 5)
!1889 = !DILocation(line: 558, column: 20, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 558, column: 13)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 557, column: 50)
!1892 = !DILocation(line: 558, column: 25, scope: !1890)
!1893 = !DILocation(line: 558, column: 31, scope: !1890)
!1894 = !DILocation(line: 558, column: 13, scope: !1890)
!1895 = !DILocation(line: 558, column: 37, scope: !1890)
!1896 = !DILocation(line: 558, column: 13, scope: !1891)
!1897 = !DILocation(line: 559, column: 20, scope: !1890)
!1898 = !DILocation(line: 559, column: 13, scope: !1890)
!1899 = !DILocation(line: 560, column: 5, scope: !1891)
!1900 = distinct !{!1900, !1885, !1901, !1027}
!1901 = !DILocation(line: 560, column: 5, scope: !1886)
!1902 = !DILocation(line: 561, column: 5, scope: !1874)
!1903 = !DILocation(line: 562, column: 1, scope: !1874)
!1904 = distinct !DISubprogram(name: "yasm_section_add_reloc", scope: !2, file: !2, line: 566, type: !1905, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !185, !1593, !226}
!1907 = !{!1908, !1909, !1910}
!1908 = !DILocalVariable(name: "sect", arg: 1, scope: !1904, file: !2, line: 566, type: !185)
!1909 = !DILocalVariable(name: "reloc", arg: 2, scope: !1904, file: !2, line: 566, type: !1593)
!1910 = !DILocalVariable(name: "destroy_func", arg: 3, scope: !1904, file: !2, line: 567, type: !226)
!1911 = !DILocation(line: 566, column: 38, scope: !1904)
!1912 = !DILocation(line: 566, column: 56, scope: !1904)
!1913 = !DILocation(line: 567, column: 31, scope: !1904)
!1914 = !DILocation(line: 569, column: 5, scope: !1904)
!1915 = !DILocation(line: 569, column: 5, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 569, column: 5)
!1917 = !DILocation(line: 570, column: 10, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1904, file: !2, line: 570, column: 9)
!1919 = !DILocation(line: 570, column: 9, scope: !1904)
!1920 = !DILocation(line: 571, column: 9, scope: !1918)
!1921 = !DILocation(line: 572, column: 14, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 572, column: 14)
!1923 = !DILocation(line: 572, column: 20, scope: !1922)
!1924 = !DILocation(line: 572, column: 34, scope: !1922)
!1925 = !DILocation(line: 572, column: 37, scope: !1922)
!1926 = !DILocation(line: 572, column: 53, scope: !1922)
!1927 = !DILocation(line: 572, column: 59, scope: !1922)
!1928 = !DILocation(line: 572, column: 50, scope: !1922)
!1929 = !DILocation(line: 572, column: 14, scope: !1918)
!1930 = !DILocation(line: 573, column: 9, scope: !1922)
!1931 = !DILocation(line: 574, column: 27, scope: !1904)
!1932 = !DILocation(line: 574, column: 5, scope: !1904)
!1933 = !DILocation(line: 574, column: 11, scope: !1904)
!1934 = !DILocation(line: 574, column: 25, scope: !1904)
!1935 = !DILocation(line: 575, column: 1, scope: !1904)
!1936 = distinct !DISubprogram(name: "yasm_section_relocs_first", scope: !2, file: !2, line: 578, type: !1937, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1593, !185}
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "sect", arg: 1, scope: !1936, file: !2, line: 578, type: !185)
!1941 = !DILocation(line: 578, column: 41, scope: !1936)
!1942 = !DILocation(line: 580, column: 12, scope: !1936)
!1943 = !DILocation(line: 580, column: 5, scope: !1936)
!1944 = distinct !DISubprogram(name: "yasm_section_reloc_next", scope: !2, file: !2, line: 585, type: !1945, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1593, !1593}
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "reloc", arg: 1, scope: !1944, file: !2, line: 585, type: !1593)
!1949 = !DILocation(line: 585, column: 37, scope: !1944)
!1950 = !DILocation(line: 587, column: 12, scope: !1944)
!1951 = !DILocation(line: 587, column: 5, scope: !1944)
!1952 = distinct !DISubprogram(name: "yasm_reloc_get", scope: !2, file: !2, line: 591, type: !1953, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1956)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1593, !1955, !394}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1956 = !{!1957, !1958, !1959}
!1957 = !DILocalVariable(name: "reloc", arg: 1, scope: !1952, file: !2, line: 591, type: !1593)
!1958 = !DILocalVariable(name: "addrp", arg: 2, scope: !1952, file: !2, line: 591, type: !1955)
!1959 = !DILocalVariable(name: "symp", arg: 3, scope: !1952, file: !2, line: 591, type: !394)
!1960 = !DILocation(line: 591, column: 28, scope: !1952)
!1961 = !DILocation(line: 591, column: 49, scope: !1952)
!1962 = !DILocation(line: 591, column: 70, scope: !1952)
!1963 = !DILocation(line: 593, column: 14, scope: !1952)
!1964 = !DILocation(line: 593, column: 21, scope: !1952)
!1965 = !DILocation(line: 593, column: 6, scope: !1952)
!1966 = !DILocation(line: 593, column: 12, scope: !1952)
!1967 = !DILocation(line: 594, column: 13, scope: !1952)
!1968 = !DILocation(line: 594, column: 20, scope: !1952)
!1969 = !{!1633, !899, i64 16}
!1970 = !DILocation(line: 594, column: 6, scope: !1952)
!1971 = !DILocation(line: 594, column: 11, scope: !1952)
!1972 = !DILocation(line: 595, column: 1, scope: !1952)
!1973 = distinct !DISubprogram(name: "yasm_section_bcs_first", scope: !2, file: !2, line: 599, type: !1974, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!295, !185}
!1976 = !{!1977}
!1977 = !DILocalVariable(name: "sect", arg: 1, scope: !1973, file: !2, line: 599, type: !185)
!1978 = !DILocation(line: 599, column: 38, scope: !1973)
!1979 = !DILocation(line: 601, column: 12, scope: !1973)
!1980 = !DILocation(line: 601, column: 5, scope: !1973)
!1981 = distinct !DISubprogram(name: "yasm_section_bcs_last", scope: !2, file: !2, line: 605, type: !1974, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1982)
!1982 = !{!1983}
!1983 = !DILocalVariable(name: "sect", arg: 1, scope: !1981, file: !2, line: 605, type: !185)
!1984 = !DILocation(line: 605, column: 37, scope: !1981)
!1985 = !DILocation(line: 607, column: 12, scope: !1981)
!1986 = !DILocation(line: 607, column: 5, scope: !1981)
!1987 = distinct !DISubprogram(name: "yasm_section_bcs_append", scope: !2, file: !2, line: 611, type: !1988, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!295, !185, !295}
!1990 = !{!1991, !1992}
!1991 = !DILocalVariable(name: "sect", arg: 1, scope: !1987, file: !2, line: 611, type: !185)
!1992 = !DILocalVariable(name: "bc", arg: 2, scope: !1987, file: !2, line: 611, type: !295)
!1993 = !DILocation(line: 611, column: 39, scope: !1987)
!1994 = !DILocation(line: 611, column: 60, scope: !1987)
!1995 = !DILocation(line: 613, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 613, column: 9)
!1997 = !DILocation(line: 613, column: 9, scope: !1987)
!1998 = !DILocation(line: 614, column: 13, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 614, column: 13)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 613, column: 13)
!2001 = !DILocation(line: 614, column: 17, scope: !1999)
!2002 = !{!1329, !899, i64 8}
!2003 = !DILocation(line: 614, column: 13, scope: !2000)
!2004 = !DILocation(line: 615, column: 27, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !2, line: 614, column: 27)
!2006 = !DILocation(line: 615, column: 13, scope: !2005)
!2007 = !DILocation(line: 615, column: 17, scope: !2005)
!2008 = !DILocation(line: 615, column: 25, scope: !2005)
!2009 = !DILocation(line: 616, column: 13, scope: !2005)
!2010 = !DILocation(line: 616, column: 13, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 616, column: 13)
!2012 = !DILocation(line: 617, column: 20, scope: !2005)
!2013 = !DILocation(line: 617, column: 13, scope: !2005)
!2014 = !DILocation(line: 619, column: 13, scope: !1999)
!2015 = !DILocation(line: 619, column: 24, scope: !1999)
!2016 = !DILocation(line: 620, column: 5, scope: !2000)
!2017 = !DILocation(line: 621, column: 5, scope: !1987)
!2018 = !DILocation(line: 622, column: 1, scope: !1987)
!2019 = distinct !DISubprogram(name: "yasm_section_bcs_traverse", scope: !2, file: !2, line: 625, type: !2020, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2025)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!205, !185, !588, !229, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!205, !295, !229}
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031}
!2026 = !DILocalVariable(name: "sect", arg: 1, scope: !2019, file: !2, line: 625, type: !185)
!2027 = !DILocalVariable(name: "errwarns", arg: 2, scope: !2019, file: !2, line: 626, type: !588)
!2028 = !DILocalVariable(name: "d", arg: 3, scope: !2019, file: !2, line: 627, type: !229)
!2029 = !DILocalVariable(name: "func", arg: 4, scope: !2019, file: !2, line: 628, type: !2022)
!2030 = !DILocalVariable(name: "cur", scope: !2019, file: !2, line: 630, type: !295)
!2031 = !DILocalVariable(name: "retval", scope: !2032, file: !2, line: 637, type: !205)
!2032 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 636, column: 17)
!2033 = !DILocation(line: 625, column: 41, scope: !2019)
!2034 = !DILocation(line: 626, column: 53, scope: !2019)
!2035 = !DILocation(line: 627, column: 44, scope: !2019)
!2036 = !DILocation(line: 628, column: 33, scope: !2019)
!2037 = !DILocation(line: 630, column: 5, scope: !2019)
!2038 = !DILocation(line: 630, column: 20, scope: !2019)
!2039 = !DILocation(line: 630, column: 26, scope: !2019)
!2040 = !DILocation(line: 633, column: 11, scope: !2019)
!2041 = !DILocation(line: 633, column: 9, scope: !2019)
!2042 = !DILocation(line: 636, column: 5, scope: !2019)
!2043 = !DILocation(line: 636, column: 12, scope: !2019)
!2044 = !DILocation(line: 637, column: 9, scope: !2032)
!2045 = !DILocation(line: 637, column: 13, scope: !2032)
!2046 = !DILocation(line: 637, column: 22, scope: !2032)
!2047 = !DILocation(line: 637, column: 27, scope: !2032)
!2048 = !DILocation(line: 637, column: 32, scope: !2032)
!2049 = !DILocation(line: 638, column: 13, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 638, column: 13)
!2051 = !DILocation(line: 638, column: 13, scope: !2032)
!2052 = !DILocation(line: 639, column: 36, scope: !2050)
!2053 = !DILocation(line: 639, column: 46, scope: !2050)
!2054 = !DILocation(line: 639, column: 51, scope: !2050)
!2055 = !DILocation(line: 639, column: 13, scope: !2050)
!2056 = !DILocation(line: 640, column: 13, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 640, column: 13)
!2058 = !DILocation(line: 640, column: 20, scope: !2057)
!2059 = !DILocation(line: 640, column: 13, scope: !2032)
!2060 = !DILocation(line: 641, column: 20, scope: !2057)
!2061 = !DILocation(line: 641, column: 13, scope: !2057)
!2062 = !DILocation(line: 642, column: 15, scope: !2032)
!2063 = !DILocation(line: 642, column: 13, scope: !2032)
!2064 = !DILocation(line: 643, column: 5, scope: !2019)
!2065 = distinct !{!2065, !2042, !2064, !1027}
!2066 = !DILocation(line: 644, column: 5, scope: !2019)
!2067 = !DILocation(line: 645, column: 1, scope: !2019)
!2068 = distinct !DISubprogram(name: "yasm_section_get_name", scope: !2, file: !2, line: 648, type: !2069, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!145, !1486}
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "sect", arg: 1, scope: !2068, file: !2, line: 648, type: !1486)
!2073 = !DILocation(line: 648, column: 43, scope: !2068)
!2074 = !DILocation(line: 650, column: 12, scope: !2068)
!2075 = !DILocation(line: 650, column: 18, scope: !2068)
!2076 = !DILocation(line: 650, column: 5, scope: !2068)
!2077 = distinct !DISubprogram(name: "yasm_section_set_align", scope: !2, file: !2, line: 654, type: !2078, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !185, !202, !202}
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "sect", arg: 1, scope: !2077, file: !2, line: 654, type: !185)
!2082 = !DILocalVariable(name: "align", arg: 2, scope: !2077, file: !2, line: 654, type: !202)
!2083 = !DILocalVariable(name: "line", arg: 3, scope: !2077, file: !2, line: 655, type: !202)
!2084 = !DILocation(line: 654, column: 38, scope: !2077)
!2085 = !DILocation(line: 654, column: 58, scope: !2077)
!2086 = !DILocation(line: 655, column: 38, scope: !2077)
!2087 = !DILocation(line: 657, column: 19, scope: !2077)
!2088 = !DILocation(line: 657, column: 5, scope: !2077)
!2089 = !DILocation(line: 657, column: 11, scope: !2077)
!2090 = !DILocation(line: 657, column: 17, scope: !2077)
!2091 = !DILocation(line: 658, column: 1, scope: !2077)
!2092 = distinct !DISubprogram(name: "yasm_section_get_align", scope: !2, file: !2, line: 661, type: !1484, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2093)
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "sect", arg: 1, scope: !2092, file: !2, line: 661, type: !1486)
!2095 = !DILocation(line: 661, column: 44, scope: !2092)
!2096 = !DILocation(line: 663, column: 12, scope: !2092)
!2097 = !DILocation(line: 663, column: 18, scope: !2092)
!2098 = !DILocation(line: 663, column: 5, scope: !2092)
!2099 = !DISubprogram(name: "yasm__assoc_data_print", scope: !199, file: !199, line: 73, type: !2100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !2102, !236, !205}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!2104 = !DISubprogram(name: "yasm_bc_print", scope: !72, file: !72, line: 419, type: !2105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !505, !236, !205}
!2107 = distinct !DISubprogram(name: "yasm_object_optimize", scope: !2, file: !2, line: 1287, type: !1783, scopeLine: 1288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2124, !2125, !2129, !2131, !2132, !2134}
!2109 = !DILocalVariable(name: "object", arg: 1, scope: !2107, file: !2, line: 1287, type: !160)
!2110 = !DILocalVariable(name: "errwarns", arg: 2, scope: !2107, file: !2, line: 1287, type: !588)
!2111 = !DILocalVariable(name: "sect", scope: !2107, file: !2, line: 1289, type: !185)
!2112 = !DILocalVariable(name: "bc_index", scope: !2107, file: !2, line: 1290, type: !202)
!2113 = !DILocalVariable(name: "saw_error", scope: !2107, file: !2, line: 1291, type: !205)
!2114 = !DILocalVariable(name: "optd", scope: !2107, file: !2, line: 1292, type: !640)
!2115 = !DILocalVariable(name: "span", scope: !2107, file: !2, line: 1293, type: !670)
!2116 = !DILocalVariable(name: "span_temp", scope: !2107, file: !2, line: 1293, type: !670)
!2117 = !DILocalVariable(name: "os", scope: !2107, file: !2, line: 1294, type: !689)
!2118 = !DILocalVariable(name: "retval", scope: !2107, file: !2, line: 1295, type: !205)
!2119 = !DILocalVariable(name: "i", scope: !2107, file: !2, line: 1296, type: !25)
!2120 = !DILocalVariable(name: "offset", scope: !2121, file: !2, line: 1315, type: !202)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 1314, column: 51)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 1314, column: 5)
!2123 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1314, column: 5)
!2124 = !DILocalVariable(name: "bc", scope: !2121, file: !2, line: 1317, type: !295)
!2125 = !DILocalVariable(name: "intn", scope: !2126, file: !2, line: 1411, type: !340)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 1410, column: 44)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 1410, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1410, column: 5)
!2129 = !DILocalVariable(name: "orig_len", scope: !2130, file: !2, line: 1485, type: !202)
!2130 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1484, column: 66)
!2131 = !DILocalVariable(name: "offset_diff", scope: !2130, file: !2, line: 1486, type: !264)
!2132 = !DILocalVariable(name: "old_next_offset", scope: !2133, file: !2, line: 1549, type: !202)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1548, column: 37)
!2134 = !DILocalVariable(name: "neg_thres_temp", scope: !2133, file: !2, line: 1550, type: !264)
!2135 = !DILocation(line: 1287, column: 35, scope: !2107)
!2136 = !DILocation(line: 1287, column: 58, scope: !2107)
!2137 = !DILocation(line: 1289, column: 5, scope: !2107)
!2138 = !DILocation(line: 1289, column: 19, scope: !2107)
!2139 = !DILocation(line: 1290, column: 5, scope: !2107)
!2140 = !DILocation(line: 1290, column: 19, scope: !2107)
!2141 = !DILocation(line: 1291, column: 5, scope: !2107)
!2142 = !DILocation(line: 1291, column: 9, scope: !2107)
!2143 = !DILocation(line: 1292, column: 5, scope: !2107)
!2144 = !DILocation(line: 1292, column: 19, scope: !2107)
!2145 = !DILocation(line: 1293, column: 5, scope: !2107)
!2146 = !DILocation(line: 1293, column: 16, scope: !2107)
!2147 = !DILocation(line: 1293, column: 23, scope: !2107)
!2148 = !DILocation(line: 1294, column: 5, scope: !2107)
!2149 = !DILocation(line: 1294, column: 25, scope: !2107)
!2150 = !DILocation(line: 1295, column: 5, scope: !2107)
!2151 = !DILocation(line: 1295, column: 9, scope: !2107)
!2152 = !DILocation(line: 1296, column: 5, scope: !2107)
!2153 = !DILocation(line: 1296, column: 18, scope: !2107)
!2154 = !DILocation(line: 1298, column: 5, scope: !2107)
!2155 = !DILocation(line: 1298, column: 5, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1298, column: 5)
!2157 = !{!2158, !899, i64 0}
!2158 = !{!"optimize_data", !2159, i64 0, !2160, i64 16, !2160, i64 32, !899, i64 48, !2161, i64 56, !1209, i64 72, !899, i64 80, !899, i64 88}
!2159 = !{!"yasm_span_head", !899, i64 0, !899, i64 8}
!2160 = !{!"yasm_span_shead", !899, i64 0, !899, i64 8}
!2161 = !{!"offset_setters_head", !899, i64 0, !899, i64 8}
!2162 = !{!2158, !899, i64 8}
!2163 = !DILocation(line: 1299, column: 5, scope: !2107)
!2164 = !DILocation(line: 1299, column: 5, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1299, column: 5)
!2166 = !{!2158, !899, i64 56}
!2167 = !{!2158, !899, i64 64}
!2168 = !DILocation(line: 1300, column: 18, scope: !2107)
!2169 = !DILocation(line: 1300, column: 10, scope: !2107)
!2170 = !DILocation(line: 1300, column: 16, scope: !2107)
!2171 = !{!2158, !899, i64 48}
!2172 = !DILocation(line: 1305, column: 10, scope: !2107)
!2173 = !DILocation(line: 1305, column: 8, scope: !2107)
!2174 = !DILocation(line: 1306, column: 5, scope: !2107)
!2175 = !DILocation(line: 1306, column: 9, scope: !2107)
!2176 = !DILocation(line: 1306, column: 12, scope: !2107)
!2177 = !{!2178, !899, i64 8}
!2178 = !{!"yasm_offset_setter", !1208, i64 0, !899, i64 8, !1209, i64 16, !1209, i64 24, !1209, i64 32}
!2179 = !DILocation(line: 1307, column: 5, scope: !2107)
!2180 = !DILocation(line: 1307, column: 9, scope: !2107)
!2181 = !DILocation(line: 1307, column: 17, scope: !2107)
!2182 = !{!2178, !1209, i64 16}
!2183 = !DILocation(line: 1308, column: 5, scope: !2107)
!2184 = !DILocation(line: 1308, column: 9, scope: !2107)
!2185 = !DILocation(line: 1308, column: 17, scope: !2107)
!2186 = !{!2178, !1209, i64 24}
!2187 = !DILocation(line: 1309, column: 5, scope: !2107)
!2188 = !DILocation(line: 1309, column: 9, scope: !2107)
!2189 = !DILocation(line: 1309, column: 15, scope: !2107)
!2190 = !{!2178, !1209, i64 32}
!2191 = !DILocation(line: 1310, column: 5, scope: !2107)
!2192 = !DILocation(line: 1310, column: 5, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1310, column: 5)
!2194 = !{!2178, !899, i64 0}
!2195 = !DILocation(line: 1311, column: 15, scope: !2107)
!2196 = !DILocation(line: 1311, column: 10, scope: !2107)
!2197 = !DILocation(line: 1311, column: 13, scope: !2107)
!2198 = !{!2158, !899, i64 88}
!2199 = !DILocation(line: 1314, column: 5, scope: !2123)
!2200 = !DILocation(line: 1314, column: 5, scope: !2122)
!2201 = !DILocation(line: 1315, column: 9, scope: !2121)
!2202 = !DILocation(line: 1315, column: 23, scope: !2121)
!2203 = !DILocation(line: 1317, column: 9, scope: !2121)
!2204 = !DILocation(line: 1317, column: 24, scope: !2121)
!2205 = !DILocation(line: 1317, column: 29, scope: !2121)
!2206 = !DILocation(line: 1319, column: 32, scope: !2121)
!2207 = !DILocation(line: 1319, column: 9, scope: !2121)
!2208 = !DILocation(line: 1319, column: 13, scope: !2121)
!2209 = !DILocation(line: 1319, column: 22, scope: !2121)
!2210 = !{!1329, !1209, i64 64}
!2211 = !DILocation(line: 1322, column: 14, scope: !2121)
!2212 = !DILocation(line: 1322, column: 12, scope: !2121)
!2213 = !DILocation(line: 1325, column: 9, scope: !2121)
!2214 = !DILocation(line: 1325, column: 16, scope: !2121)
!2215 = !DILocation(line: 1326, column: 36, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 1325, column: 20)
!2217 = !DILocation(line: 1326, column: 13, scope: !2216)
!2218 = !DILocation(line: 1326, column: 17, scope: !2216)
!2219 = !DILocation(line: 1326, column: 26, scope: !2216)
!2220 = !DILocation(line: 1327, column: 26, scope: !2216)
!2221 = !DILocation(line: 1327, column: 13, scope: !2216)
!2222 = !DILocation(line: 1327, column: 17, scope: !2216)
!2223 = !DILocation(line: 1327, column: 24, scope: !2216)
!2224 = !DILocation(line: 1329, column: 39, scope: !2216)
!2225 = !DILocation(line: 1329, column: 22, scope: !2216)
!2226 = !DILocation(line: 1329, column: 20, scope: !2216)
!2227 = !DILocation(line: 1330, column: 36, scope: !2216)
!2228 = !DILocation(line: 1330, column: 46, scope: !2216)
!2229 = !DILocation(line: 1330, column: 50, scope: !2216)
!2230 = !DILocation(line: 1330, column: 13, scope: !2216)
!2231 = !DILocation(line: 1331, column: 17, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 1331, column: 17)
!2233 = !DILocation(line: 1331, column: 17, scope: !2216)
!2234 = !DILocation(line: 1332, column: 27, scope: !2232)
!2235 = !DILocation(line: 1332, column: 17, scope: !2232)
!2236 = !DILocation(line: 1334, column: 21, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 1334, column: 21)
!2238 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 1333, column: 18)
!2239 = !DILocation(line: 1334, column: 25, scope: !2237)
!2240 = !DILocation(line: 1334, column: 35, scope: !2237)
!2241 = !{!2242, !900, i64 56}
!2242 = !{!"yasm_bytecode_callback", !899, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !899, i64 32, !899, i64 40, !899, i64 48, !900, i64 56}
!2243 = !DILocation(line: 1334, column: 43, scope: !2237)
!2244 = !DILocation(line: 1334, column: 21, scope: !2238)
!2245 = !DILocation(line: 1336, column: 30, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1334, column: 70)
!2247 = !DILocation(line: 1336, column: 21, scope: !2246)
!2248 = !DILocation(line: 1336, column: 25, scope: !2246)
!2249 = !DILocation(line: 1336, column: 28, scope: !2246)
!2250 = !DILocation(line: 1337, column: 53, scope: !2246)
!2251 = !DILocation(line: 1337, column: 33, scope: !2246)
!2252 = !DILocation(line: 1337, column: 21, scope: !2246)
!2253 = !DILocation(line: 1337, column: 25, scope: !2246)
!2254 = !DILocation(line: 1337, column: 31, scope: !2246)
!2255 = !DILocation(line: 1340, column: 26, scope: !2246)
!2256 = !DILocation(line: 1340, column: 24, scope: !2246)
!2257 = !DILocation(line: 1341, column: 21, scope: !2246)
!2258 = !DILocation(line: 1341, column: 25, scope: !2246)
!2259 = !DILocation(line: 1341, column: 28, scope: !2246)
!2260 = !DILocation(line: 1342, column: 21, scope: !2246)
!2261 = !DILocation(line: 1342, column: 25, scope: !2246)
!2262 = !DILocation(line: 1342, column: 33, scope: !2246)
!2263 = !DILocation(line: 1343, column: 21, scope: !2246)
!2264 = !DILocation(line: 1343, column: 25, scope: !2246)
!2265 = !DILocation(line: 1343, column: 33, scope: !2246)
!2266 = !DILocation(line: 1344, column: 21, scope: !2246)
!2267 = !DILocation(line: 1344, column: 25, scope: !2246)
!2268 = !DILocation(line: 1344, column: 31, scope: !2246)
!2269 = !DILocation(line: 1345, column: 21, scope: !2246)
!2270 = !DILocation(line: 1345, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 1345, column: 21)
!2272 = !DILocation(line: 1346, column: 31, scope: !2246)
!2273 = !DILocation(line: 1346, column: 26, scope: !2246)
!2274 = !DILocation(line: 1346, column: 29, scope: !2246)
!2275 = !DILocation(line: 1348, column: 25, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 1348, column: 25)
!2277 = !DILocation(line: 1348, column: 29, scope: !2276)
!2278 = !{!1329, !899, i64 24}
!2279 = !DILocation(line: 1348, column: 25, scope: !2246)
!2280 = !DILocation(line: 1349, column: 25, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 1348, column: 39)
!2282 = !DILocation(line: 1351, column: 48, scope: !2281)
!2283 = !DILocation(line: 1351, column: 58, scope: !2281)
!2284 = !DILocation(line: 1351, column: 62, scope: !2281)
!2285 = !DILocation(line: 1351, column: 25, scope: !2281)
!2286 = !DILocation(line: 1352, column: 35, scope: !2281)
!2287 = !DILocation(line: 1353, column: 21, scope: !2281)
!2288 = !DILocation(line: 1354, column: 17, scope: !2246)
!2289 = !DILocation(line: 1356, column: 27, scope: !2238)
!2290 = !DILocation(line: 1356, column: 31, scope: !2238)
!2291 = !{!1329, !1209, i64 32}
!2292 = !DILocation(line: 1356, column: 35, scope: !2238)
!2293 = !DILocation(line: 1356, column: 39, scope: !2238)
!2294 = !{!1329, !1209, i64 40}
!2295 = !DILocation(line: 1356, column: 34, scope: !2238)
!2296 = !DILocation(line: 1356, column: 24, scope: !2238)
!2297 = !DILocation(line: 1359, column: 18, scope: !2216)
!2298 = !DILocation(line: 1359, column: 16, scope: !2216)
!2299 = distinct !{!2299, !2213, !2300, !1027}
!2300 = !DILocation(line: 1360, column: 9, scope: !2121)
!2301 = !DILocation(line: 1361, column: 5, scope: !2122)
!2302 = !DILocation(line: 1361, column: 5, scope: !2121)
!2303 = distinct !{!2303, !2199, !2304, !1027}
!2304 = !DILocation(line: 1361, column: 5, scope: !2123)
!2305 = !DILocation(line: 1363, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1363, column: 9)
!2307 = !DILocation(line: 1363, column: 9, scope: !2107)
!2308 = !DILocation(line: 1364, column: 9, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 1363, column: 20)
!2310 = !DILocation(line: 1365, column: 9, scope: !2309)
!2311 = !DILocation(line: 1369, column: 5, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1369, column: 5)
!2313 = !DILocation(line: 1369, column: 5, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 1369, column: 5)
!2315 = !{!2316, !899, i64 0}
!2316 = !{!"yasm_span", !2317, i64 0, !1208, i64 16, !899, i64 24, !2318, i64 32, !899, i64 64, !899, i64 72, !899, i64 80, !984, i64 88, !1209, i64 96, !1209, i64 104, !1209, i64 112, !1209, i64 120, !984, i64 128, !984, i64 132, !899, i64 136, !984, i64 144, !899, i64 152}
!2317 = !{!"", !899, i64 0, !899, i64 8}
!2318 = !{!"yasm_value", !899, i64 0, !899, i64 8, !899, i64 16, !984, i64 24, !984, i64 24, !984, i64 25, !984, i64 25, !984, i64 25, !984, i64 25, !984, i64 25, !984, i64 25, !984, i64 25}
!2319 = !DILocation(line: 0, scope: !2314)
!2320 = !DILocation(line: 1370, column: 27, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 1369, column: 60)
!2322 = !DILocation(line: 1370, column: 9, scope: !2321)
!2323 = !DILocation(line: 1371, column: 13, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 1371, column: 13)
!2325 = !{!900, !900, i64 0}
!2326 = !DILocation(line: 1371, column: 13, scope: !2321)
!2327 = !DILocation(line: 1372, column: 36, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 1371, column: 36)
!2329 = !DILocation(line: 1372, column: 46, scope: !2328)
!2330 = !DILocation(line: 1372, column: 52, scope: !2328)
!2331 = !{!2316, !899, i64 24}
!2332 = !DILocation(line: 1372, column: 56, scope: !2328)
!2333 = !DILocation(line: 1372, column: 13, scope: !2328)
!2334 = !DILocation(line: 1373, column: 23, scope: !2328)
!2335 = !DILocation(line: 1374, column: 9, scope: !2328)
!2336 = !DILocation(line: 1374, column: 39, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 1374, column: 20)
!2338 = !DILocation(line: 1374, column: 20, scope: !2337)
!2339 = !DILocation(line: 1374, column: 20, scope: !2324)
!2340 = !DILocation(line: 1375, column: 37, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !2, line: 1374, column: 46)
!2342 = !DILocation(line: 1375, column: 43, scope: !2341)
!2343 = !DILocation(line: 1375, column: 47, scope: !2341)
!2344 = !DILocation(line: 1375, column: 53, scope: !2341)
!2345 = !{!2316, !984, i64 128}
!2346 = !DILocation(line: 1375, column: 57, scope: !2341)
!2347 = !DILocation(line: 1375, column: 63, scope: !2341)
!2348 = !{!2316, !1209, i64 96}
!2349 = !DILocation(line: 1376, column: 37, scope: !2341)
!2350 = !DILocation(line: 1376, column: 43, scope: !2341)
!2351 = !{!2316, !1209, i64 104}
!2352 = !DILocation(line: 1376, column: 53, scope: !2341)
!2353 = !DILocation(line: 1376, column: 59, scope: !2341)
!2354 = !DILocation(line: 1377, column: 38, scope: !2341)
!2355 = !DILocation(line: 1377, column: 44, scope: !2341)
!2356 = !DILocation(line: 1375, column: 22, scope: !2341)
!2357 = !DILocation(line: 1375, column: 20, scope: !2341)
!2358 = !DILocation(line: 1378, column: 36, scope: !2341)
!2359 = !DILocation(line: 1378, column: 46, scope: !2341)
!2360 = !DILocation(line: 1378, column: 52, scope: !2341)
!2361 = !DILocation(line: 1378, column: 56, scope: !2341)
!2362 = !DILocation(line: 1378, column: 13, scope: !2341)
!2363 = !DILocation(line: 1379, column: 17, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 1379, column: 17)
!2365 = !DILocation(line: 1379, column: 24, scope: !2364)
!2366 = !DILocation(line: 1379, column: 17, scope: !2341)
!2367 = !DILocation(line: 1380, column: 27, scope: !2364)
!2368 = !DILocation(line: 1380, column: 17, scope: !2364)
!2369 = !DILocation(line: 1381, column: 22, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 1381, column: 22)
!2371 = !DILocation(line: 1381, column: 29, scope: !2370)
!2372 = !DILocation(line: 1381, column: 22, scope: !2364)
!2373 = !DILocation(line: 1382, column: 22, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !2, line: 1382, column: 21)
!2375 = distinct !DILexicalBlock(scope: !2370, file: !2, line: 1381, column: 34)
!2376 = !DILocation(line: 1382, column: 28, scope: !2374)
!2377 = !{!2316, !984, i64 132}
!2378 = !DILocation(line: 1382, column: 21, scope: !2375)
!2379 = !DILocation(line: 1383, column: 21, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 1382, column: 36)
!2381 = !DILocation(line: 1385, column: 44, scope: !2380)
!2382 = !DILocation(line: 1385, column: 54, scope: !2380)
!2383 = !DILocation(line: 1385, column: 60, scope: !2380)
!2384 = !DILocation(line: 1385, column: 64, scope: !2380)
!2385 = !DILocation(line: 1385, column: 21, scope: !2380)
!2386 = !DILocation(line: 1386, column: 31, scope: !2380)
!2387 = !DILocation(line: 1387, column: 17, scope: !2380)
!2388 = !DILocation(line: 1388, column: 13, scope: !2375)
!2389 = !DILocation(line: 1389, column: 17, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2370, file: !2, line: 1388, column: 20)
!2391 = !DILocation(line: 1389, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 1389, column: 17)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 1389, column: 17)
!2394 = !DILocation(line: 1389, column: 17, scope: !2393)
!2395 = !{!2316, !899, i64 8}
!2396 = !DILocation(line: 1389, column: 17, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !2, line: 1389, column: 17)
!2398 = !DILocation(line: 1390, column: 30, scope: !2390)
!2399 = !DILocation(line: 1390, column: 17, scope: !2390)
!2400 = !DILocation(line: 1391, column: 17, scope: !2390)
!2401 = !DILocation(line: 1393, column: 9, scope: !2341)
!2402 = !DILocation(line: 1394, column: 25, scope: !2321)
!2403 = !DILocation(line: 1394, column: 31, scope: !2321)
!2404 = !DILocation(line: 1394, column: 9, scope: !2321)
!2405 = !DILocation(line: 1394, column: 15, scope: !2321)
!2406 = !DILocation(line: 1394, column: 23, scope: !2321)
!2407 = !DILocation(line: 1395, column: 5, scope: !2321)
!2408 = distinct !{!2408, !2311, !2409, !1027}
!2409 = !DILocation(line: 1395, column: 5, scope: !2312)
!2410 = !DILocation(line: 1397, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1397, column: 9)
!2412 = !DILocation(line: 1397, column: 9, scope: !2107)
!2413 = !DILocation(line: 1398, column: 9, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !2, line: 1397, column: 20)
!2415 = !DILocation(line: 1399, column: 9, scope: !2414)
!2416 = !DILocation(line: 1403, column: 31, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1403, column: 9)
!2418 = !DILocation(line: 1403, column: 39, scope: !2417)
!2419 = !DILocation(line: 1403, column: 9, scope: !2417)
!2420 = !DILocation(line: 1403, column: 9, scope: !2107)
!2421 = !DILocation(line: 1404, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 1403, column: 50)
!2423 = !DILocation(line: 1405, column: 9, scope: !2422)
!2424 = !DILocation(line: 1409, column: 5, scope: !2107)
!2425 = !DILocation(line: 1409, column: 5, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1409, column: 5)
!2427 = !{!2158, !899, i64 32}
!2428 = !{!2158, !899, i64 40}
!2429 = !DILocation(line: 1410, column: 5, scope: !2128)
!2430 = !DILocation(line: 1410, column: 5, scope: !2127)
!2431 = !DILocation(line: 1411, column: 9, scope: !2126)
!2432 = !DILocation(line: 1411, column: 22, scope: !2126)
!2433 = !DILocation(line: 1414, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 1414, column: 9)
!2435 = !DILocation(line: 1414, column: 14, scope: !2434)
!2436 = !DILocation(line: 1414, column: 19, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 1414, column: 9)
!2438 = !DILocation(line: 1414, column: 21, scope: !2437)
!2439 = !DILocation(line: 1414, column: 27, scope: !2437)
!2440 = !{!2316, !984, i64 88}
!2441 = !DILocation(line: 1414, column: 20, scope: !2437)
!2442 = !DILocation(line: 1414, column: 9, scope: !2434)
!2443 = !DILocation(line: 1415, column: 38, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 1414, column: 43)
!2445 = !DILocation(line: 1415, column: 44, scope: !2444)
!2446 = !{!2316, !899, i64 72}
!2447 = !DILocation(line: 1415, column: 50, scope: !2444)
!2448 = !DILocation(line: 1415, column: 53, scope: !2444)
!2449 = !{!2450, !899, i64 0}
!2450 = !{!"yasm_span_term", !899, i64 0, !899, i64 8, !899, i64 16, !1209, i64 24, !1209, i64 32, !984, i64 40}
!2451 = !DILocation(line: 1416, column: 38, scope: !2444)
!2452 = !DILocation(line: 1416, column: 44, scope: !2444)
!2453 = !DILocation(line: 1416, column: 50, scope: !2444)
!2454 = !DILocation(line: 1416, column: 53, scope: !2444)
!2455 = !{!2450, !899, i64 8}
!2456 = !DILocation(line: 1415, column: 20, scope: !2444)
!2457 = !DILocation(line: 1415, column: 18, scope: !2444)
!2458 = !DILocation(line: 1417, column: 18, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 1417, column: 17)
!2460 = !DILocation(line: 1417, column: 17, scope: !2444)
!2461 = !DILocation(line: 1418, column: 17, scope: !2459)
!2462 = !DILocation(line: 1419, column: 38, scope: !2444)
!2463 = !DILocation(line: 1419, column: 44, scope: !2444)
!2464 = !DILocation(line: 1419, column: 50, scope: !2444)
!2465 = !DILocation(line: 1419, column: 53, scope: !2444)
!2466 = !{!2450, !1209, i64 32}
!2467 = !DILocation(line: 1419, column: 13, scope: !2444)
!2468 = !DILocation(line: 1419, column: 19, scope: !2444)
!2469 = !DILocation(line: 1419, column: 25, scope: !2444)
!2470 = !DILocation(line: 1419, column: 28, scope: !2444)
!2471 = !DILocation(line: 1419, column: 36, scope: !2444)
!2472 = !{!2450, !1209, i64 24}
!2473 = !DILocation(line: 1420, column: 58, scope: !2444)
!2474 = !DILocation(line: 1420, column: 38, scope: !2444)
!2475 = !DILocation(line: 1420, column: 13, scope: !2444)
!2476 = !DILocation(line: 1420, column: 19, scope: !2444)
!2477 = !DILocation(line: 1420, column: 25, scope: !2444)
!2478 = !DILocation(line: 1420, column: 28, scope: !2444)
!2479 = !DILocation(line: 1420, column: 36, scope: !2444)
!2480 = !DILocation(line: 1421, column: 33, scope: !2444)
!2481 = !DILocation(line: 1421, column: 13, scope: !2444)
!2482 = !DILocation(line: 1422, column: 9, scope: !2444)
!2483 = !DILocation(line: 1414, column: 39, scope: !2437)
!2484 = !DILocation(line: 1414, column: 9, scope: !2437)
!2485 = distinct !{!2485, !2442, !2486, !1027}
!2486 = !DILocation(line: 1422, column: 9, scope: !2434)
!2487 = !DILocation(line: 1423, column: 13, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 1423, column: 13)
!2489 = !DILocation(line: 1423, column: 19, scope: !2488)
!2490 = !{!2316, !899, i64 64}
!2491 = !DILocation(line: 1423, column: 13, scope: !2126)
!2492 = !DILocation(line: 1424, column: 39, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 1423, column: 29)
!2494 = !DILocation(line: 1424, column: 45, scope: !2493)
!2495 = !DILocation(line: 1424, column: 55, scope: !2493)
!2496 = !DILocation(line: 1424, column: 13, scope: !2493)
!2497 = !DILocation(line: 1424, column: 19, scope: !2493)
!2498 = !DILocation(line: 1424, column: 29, scope: !2493)
!2499 = !DILocation(line: 1424, column: 37, scope: !2493)
!2500 = !DILocation(line: 1425, column: 17, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2493, file: !2, line: 1425, column: 17)
!2502 = !DILocation(line: 1425, column: 23, scope: !2501)
!2503 = !DILocation(line: 1425, column: 33, scope: !2501)
!2504 = !DILocation(line: 1425, column: 17, scope: !2493)
!2505 = !DILocation(line: 1427, column: 41, scope: !2501)
!2506 = !DILocation(line: 1427, column: 47, scope: !2501)
!2507 = !DILocation(line: 1427, column: 57, scope: !2501)
!2508 = !DILocation(line: 1427, column: 21, scope: !2501)
!2509 = !DILocation(line: 1428, column: 21, scope: !2501)
!2510 = !DILocation(line: 1428, column: 27, scope: !2501)
!2511 = !DILocation(line: 1428, column: 31, scope: !2501)
!2512 = !DILocation(line: 1427, column: 66, scope: !2501)
!2513 = !DILocation(line: 1426, column: 17, scope: !2501)
!2514 = !DILocation(line: 1426, column: 23, scope: !2501)
!2515 = !DILocation(line: 1426, column: 33, scope: !2501)
!2516 = !DILocation(line: 1426, column: 41, scope: !2501)
!2517 = !DILocation(line: 1430, column: 43, scope: !2501)
!2518 = !DILocation(line: 1430, column: 49, scope: !2501)
!2519 = !DILocation(line: 1430, column: 53, scope: !2501)
!2520 = !DILocation(line: 1431, column: 41, scope: !2501)
!2521 = !DILocation(line: 1431, column: 47, scope: !2501)
!2522 = !DILocation(line: 1431, column: 57, scope: !2501)
!2523 = !DILocation(line: 1431, column: 21, scope: !2501)
!2524 = !DILocation(line: 1430, column: 60, scope: !2501)
!2525 = !DILocation(line: 1430, column: 17, scope: !2501)
!2526 = !DILocation(line: 1430, column: 23, scope: !2501)
!2527 = !DILocation(line: 1430, column: 33, scope: !2501)
!2528 = !DILocation(line: 1430, column: 41, scope: !2501)
!2529 = !DILocation(line: 1432, column: 9, scope: !2493)
!2530 = !DILocation(line: 1434, column: 32, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2126, file: !2, line: 1434, column: 13)
!2532 = !DILocation(line: 1434, column: 13, scope: !2531)
!2533 = !DILocation(line: 1434, column: 13, scope: !2126)
!2534 = !DILocation(line: 1436, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 1434, column: 39)
!2536 = !DILocation(line: 1436, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 1436, column: 13)
!2538 = !{!2316, !899, i64 16}
!2539 = !DILocation(line: 1437, column: 13, scope: !2535)
!2540 = !DILocation(line: 1437, column: 19, scope: !2535)
!2541 = !DILocation(line: 1437, column: 26, scope: !2535)
!2542 = !DILocation(line: 1438, column: 9, scope: !2535)
!2543 = !DILocation(line: 1439, column: 5, scope: !2127)
!2544 = !DILocation(line: 1439, column: 5, scope: !2126)
!2545 = distinct !{!2545, !2429, !2546, !1027}
!2546 = !DILocation(line: 1439, column: 5, scope: !2128)
!2547 = !DILocation(line: 1442, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1442, column: 9)
!2549 = !DILocation(line: 1442, column: 9, scope: !2107)
!2550 = !DILocation(line: 1443, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !2, line: 1442, column: 33)
!2552 = !DILocation(line: 1444, column: 9, scope: !2551)
!2553 = !DILocation(line: 1448, column: 5, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1448, column: 5)
!2555 = !DILocation(line: 1448, column: 5, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 1448, column: 5)
!2557 = !DILocation(line: 1449, column: 14, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !2, line: 1449, column: 13)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !2, line: 1448, column: 52)
!2560 = !DILocation(line: 1449, column: 18, scope: !2558)
!2561 = !DILocation(line: 1449, column: 13, scope: !2559)
!2562 = !DILocation(line: 1450, column: 13, scope: !2558)
!2563 = !DILocation(line: 1451, column: 41, scope: !2559)
!2564 = !DILocation(line: 1451, column: 45, scope: !2559)
!2565 = !DILocation(line: 1451, column: 21, scope: !2559)
!2566 = !DILocation(line: 1451, column: 9, scope: !2559)
!2567 = !DILocation(line: 1451, column: 13, scope: !2559)
!2568 = !DILocation(line: 1451, column: 19, scope: !2559)
!2569 = !DILocation(line: 1452, column: 23, scope: !2559)
!2570 = !DILocation(line: 1452, column: 27, scope: !2559)
!2571 = !DILocation(line: 1452, column: 31, scope: !2559)
!2572 = !DILocation(line: 1452, column: 9, scope: !2559)
!2573 = !DILocation(line: 1452, column: 13, scope: !2559)
!2574 = !DILocation(line: 1452, column: 21, scope: !2559)
!2575 = !DILocation(line: 1453, column: 23, scope: !2559)
!2576 = !DILocation(line: 1453, column: 27, scope: !2559)
!2577 = !DILocation(line: 1453, column: 9, scope: !2559)
!2578 = !DILocation(line: 1453, column: 13, scope: !2559)
!2579 = !DILocation(line: 1453, column: 21, scope: !2559)
!2580 = !DILocation(line: 1454, column: 5, scope: !2559)
!2581 = distinct !{!2581, !2553, !2582, !1027}
!2582 = !DILocation(line: 1454, column: 5, scope: !2554)
!2583 = !DILocation(line: 1457, column: 5, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1457, column: 5)
!2585 = !DILocation(line: 1457, column: 5, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 1457, column: 5)
!2587 = !DILocation(line: 1458, column: 15, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 1458, column: 9)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !2, line: 1457, column: 44)
!2590 = !DILocation(line: 1458, column: 14, scope: !2588)
!2591 = !DILocation(line: 1458, column: 19, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !2, line: 1458, column: 9)
!2593 = !DILocation(line: 1458, column: 21, scope: !2592)
!2594 = !DILocation(line: 1458, column: 27, scope: !2592)
!2595 = !DILocation(line: 1458, column: 20, scope: !2592)
!2596 = !DILocation(line: 1458, column: 9, scope: !2588)
!2597 = !DILocation(line: 1459, column: 37, scope: !2592)
!2598 = !DILocation(line: 1459, column: 44, scope: !2592)
!2599 = !DILocation(line: 1459, column: 51, scope: !2592)
!2600 = !DILocation(line: 1459, column: 57, scope: !2592)
!2601 = !DILocation(line: 1459, column: 63, scope: !2592)
!2602 = !DILocation(line: 1459, column: 13, scope: !2592)
!2603 = !DILocation(line: 1458, column: 39, scope: !2592)
!2604 = !DILocation(line: 1458, column: 9, scope: !2592)
!2605 = distinct !{!2605, !2596, !2606, !1027}
!2606 = !DILocation(line: 1459, column: 65, scope: !2588)
!2607 = !DILocation(line: 1460, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 1460, column: 13)
!2609 = !DILocation(line: 1460, column: 19, scope: !2608)
!2610 = !DILocation(line: 1460, column: 13, scope: !2589)
!2611 = !DILocation(line: 1461, column: 37, scope: !2608)
!2612 = !DILocation(line: 1461, column: 44, scope: !2608)
!2613 = !DILocation(line: 1461, column: 50, scope: !2608)
!2614 = !DILocation(line: 1461, column: 56, scope: !2608)
!2615 = !DILocation(line: 1461, column: 13, scope: !2608)
!2616 = !DILocation(line: 1462, column: 5, scope: !2589)
!2617 = distinct !{!2617, !2583, !2618, !1027}
!2618 = !DILocation(line: 1462, column: 5, scope: !2584)
!2619 = !DILocation(line: 1465, column: 5, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1465, column: 5)
!2621 = !DILocation(line: 1465, column: 5, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 1465, column: 5)
!2623 = !DILocation(line: 1466, column: 13, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !2, line: 1466, column: 13)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !2, line: 1465, column: 44)
!2626 = !DILocation(line: 1466, column: 19, scope: !2624)
!2627 = !DILocation(line: 1466, column: 22, scope: !2624)
!2628 = !DILocation(line: 1466, column: 13, scope: !2625)
!2629 = !DILocation(line: 1467, column: 13, scope: !2624)
!2630 = !DILocation(line: 1468, column: 21, scope: !2625)
!2631 = !DILocation(line: 1468, column: 14, scope: !2625)
!2632 = !DILocation(line: 1468, column: 19, scope: !2625)
!2633 = !{!2158, !899, i64 80}
!2634 = !DILocation(line: 1469, column: 27, scope: !2625)
!2635 = !DILocation(line: 1469, column: 40, scope: !2625)
!2636 = !DILocation(line: 1469, column: 46, scope: !2625)
!2637 = !DILocation(line: 1469, column: 50, scope: !2625)
!2638 = !DILocation(line: 1470, column: 28, scope: !2625)
!2639 = !DILocation(line: 1470, column: 34, scope: !2625)
!2640 = !DILocation(line: 1470, column: 38, scope: !2625)
!2641 = !DILocation(line: 1469, column: 9, scope: !2625)
!2642 = !DILocation(line: 1471, column: 13, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2625, file: !2, line: 1471, column: 13)
!2644 = !DILocation(line: 1471, column: 13, scope: !2625)
!2645 = !DILocation(line: 1472, column: 36, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 1471, column: 36)
!2647 = !DILocation(line: 1472, column: 46, scope: !2646)
!2648 = !DILocation(line: 1472, column: 52, scope: !2646)
!2649 = !DILocation(line: 1472, column: 56, scope: !2646)
!2650 = !DILocation(line: 1472, column: 13, scope: !2646)
!2651 = !DILocation(line: 1473, column: 23, scope: !2646)
!2652 = !DILocation(line: 1474, column: 9, scope: !2646)
!2653 = !DILocation(line: 1475, column: 5, scope: !2625)
!2654 = distinct !{!2654, !2619, !2655, !1027}
!2655 = !DILocation(line: 1475, column: 5, scope: !2620)
!2656 = !DILocation(line: 1477, column: 9, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1477, column: 9)
!2658 = !DILocation(line: 1477, column: 9, scope: !2107)
!2659 = !DILocation(line: 1478, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !2, line: 1477, column: 20)
!2661 = !DILocation(line: 1479, column: 9, scope: !2660)
!2662 = !DILocation(line: 1483, column: 5, scope: !2107)
!2663 = !DILocation(line: 1483, column: 5, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1483, column: 5)
!2665 = !{!2158, !899, i64 16}
!2666 = !{!2158, !899, i64 24}
!2667 = !DILocation(line: 1484, column: 5, scope: !2107)
!2668 = !DILocation(line: 1484, column: 13, scope: !2107)
!2669 = !DILocation(line: 1484, column: 36, scope: !2107)
!2670 = !DILocation(line: 1484, column: 41, scope: !2107)
!2671 = !DILocation(line: 1484, column: 39, scope: !2107)
!2672 = !DILocation(line: 1485, column: 9, scope: !2130)
!2673 = !DILocation(line: 1485, column: 23, scope: !2130)
!2674 = !DILocation(line: 1486, column: 9, scope: !2130)
!2675 = !DILocation(line: 1486, column: 14, scope: !2130)
!2676 = !DILocation(line: 1492, column: 14, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1492, column: 13)
!2678 = !DILocation(line: 1492, column: 13, scope: !2130)
!2679 = !DILocation(line: 1493, column: 20, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !2, line: 1492, column: 38)
!2681 = !DILocation(line: 1493, column: 18, scope: !2680)
!2682 = !DILocation(line: 1494, column: 13, scope: !2680)
!2683 = !DILocation(line: 1494, column: 13, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 1494, column: 13)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 1494, column: 13)
!2686 = !DILocation(line: 1494, column: 13, scope: !2685)
!2687 = !DILocation(line: 1495, column: 9, scope: !2680)
!2688 = !DILocation(line: 1496, column: 20, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2677, file: !2, line: 1495, column: 16)
!2690 = !DILocation(line: 1496, column: 18, scope: !2689)
!2691 = !DILocation(line: 1497, column: 13, scope: !2689)
!2692 = !DILocation(line: 1497, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !2, line: 1497, column: 13)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 1497, column: 13)
!2695 = !DILocation(line: 1497, column: 13, scope: !2694)
!2696 = !DILocation(line: 1500, column: 14, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1500, column: 13)
!2698 = !DILocation(line: 1500, column: 20, scope: !2697)
!2699 = !DILocation(line: 1500, column: 13, scope: !2130)
!2700 = !DILocation(line: 1501, column: 13, scope: !2697)
!2701 = distinct !{!2701, !2667, !2702, !1027}
!2702 = !DILocation(line: 1571, column: 5, scope: !2107)
!2703 = !DILocation(line: 1502, column: 9, scope: !2130)
!2704 = !DILocation(line: 1502, column: 15, scope: !2130)
!2705 = !DILocation(line: 1502, column: 22, scope: !2130)
!2706 = !DILocation(line: 1508, column: 33, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1508, column: 13)
!2708 = !DILocation(line: 1508, column: 14, scope: !2707)
!2709 = !DILocation(line: 1508, column: 13, scope: !2130)
!2710 = !DILocation(line: 1509, column: 13, scope: !2707)
!2711 = !DILocation(line: 1511, column: 20, scope: !2130)
!2712 = !DILocation(line: 1511, column: 26, scope: !2130)
!2713 = !DILocation(line: 1511, column: 30, scope: !2130)
!2714 = !DILocation(line: 1511, column: 36, scope: !2130)
!2715 = !DILocation(line: 1511, column: 42, scope: !2130)
!2716 = !DILocation(line: 1511, column: 46, scope: !2130)
!2717 = !DILocation(line: 1511, column: 34, scope: !2130)
!2718 = !DILocation(line: 1511, column: 18, scope: !2130)
!2719 = !DILocation(line: 1513, column: 33, scope: !2130)
!2720 = !DILocation(line: 1513, column: 39, scope: !2130)
!2721 = !DILocation(line: 1513, column: 43, scope: !2130)
!2722 = !DILocation(line: 1513, column: 49, scope: !2130)
!2723 = !DILocation(line: 1513, column: 53, scope: !2130)
!2724 = !DILocation(line: 1513, column: 59, scope: !2130)
!2725 = !DILocation(line: 1514, column: 33, scope: !2130)
!2726 = !DILocation(line: 1514, column: 39, scope: !2130)
!2727 = !DILocation(line: 1514, column: 49, scope: !2130)
!2728 = !DILocation(line: 1514, column: 55, scope: !2130)
!2729 = !DILocation(line: 1515, column: 34, scope: !2130)
!2730 = !DILocation(line: 1515, column: 40, scope: !2130)
!2731 = !DILocation(line: 1513, column: 18, scope: !2130)
!2732 = !DILocation(line: 1513, column: 16, scope: !2130)
!2733 = !DILocation(line: 1516, column: 32, scope: !2130)
!2734 = !DILocation(line: 1516, column: 42, scope: !2130)
!2735 = !DILocation(line: 1516, column: 48, scope: !2130)
!2736 = !DILocation(line: 1516, column: 52, scope: !2130)
!2737 = !DILocation(line: 1516, column: 9, scope: !2130)
!2738 = !DILocation(line: 1518, column: 13, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1518, column: 13)
!2740 = !DILocation(line: 1518, column: 20, scope: !2739)
!2741 = !DILocation(line: 1518, column: 13, scope: !2130)
!2742 = !DILocation(line: 1520, column: 23, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1518, column: 25)
!2744 = !DILocation(line: 1521, column: 13, scope: !2743)
!2745 = !DILocation(line: 1522, column: 20, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1522, column: 20)
!2747 = !DILocation(line: 1522, column: 27, scope: !2746)
!2748 = !DILocation(line: 1522, column: 20, scope: !2739)
!2749 = !DILocation(line: 1524, column: 19, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !2, line: 1524, column: 13)
!2751 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 1522, column: 32)
!2752 = !DILocation(line: 1524, column: 18, scope: !2750)
!2753 = !DILocation(line: 1524, column: 23, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 1524, column: 13)
!2755 = !DILocation(line: 1524, column: 25, scope: !2754)
!2756 = !DILocation(line: 1524, column: 31, scope: !2754)
!2757 = !DILocation(line: 1524, column: 24, scope: !2754)
!2758 = !DILocation(line: 1524, column: 13, scope: !2750)
!2759 = !DILocation(line: 1525, column: 42, scope: !2754)
!2760 = !DILocation(line: 1525, column: 48, scope: !2754)
!2761 = !DILocation(line: 1525, column: 54, scope: !2754)
!2762 = !DILocation(line: 1525, column: 57, scope: !2754)
!2763 = !DILocation(line: 1525, column: 17, scope: !2754)
!2764 = !DILocation(line: 1525, column: 23, scope: !2754)
!2765 = !DILocation(line: 1525, column: 29, scope: !2754)
!2766 = !DILocation(line: 1525, column: 32, scope: !2754)
!2767 = !DILocation(line: 1525, column: 40, scope: !2754)
!2768 = !DILocation(line: 1524, column: 43, scope: !2754)
!2769 = !DILocation(line: 1524, column: 13, scope: !2754)
!2770 = distinct !{!2770, !2758, !2771, !1027}
!2771 = !DILocation(line: 1525, column: 57, scope: !2750)
!2772 = !DILocation(line: 1526, column: 17, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2751, file: !2, line: 1526, column: 17)
!2774 = !DILocation(line: 1526, column: 23, scope: !2773)
!2775 = !DILocation(line: 1526, column: 17, scope: !2751)
!2776 = !DILocation(line: 1527, column: 43, scope: !2773)
!2777 = !DILocation(line: 1527, column: 49, scope: !2773)
!2778 = !DILocation(line: 1527, column: 59, scope: !2773)
!2779 = !DILocation(line: 1527, column: 17, scope: !2773)
!2780 = !DILocation(line: 1527, column: 23, scope: !2773)
!2781 = !DILocation(line: 1527, column: 33, scope: !2773)
!2782 = !DILocation(line: 1527, column: 41, scope: !2773)
!2783 = !DILocation(line: 1528, column: 29, scope: !2751)
!2784 = !DILocation(line: 1528, column: 35, scope: !2751)
!2785 = !DILocation(line: 1528, column: 13, scope: !2751)
!2786 = !DILocation(line: 1528, column: 19, scope: !2751)
!2787 = !DILocation(line: 1528, column: 27, scope: !2751)
!2788 = !DILocation(line: 1529, column: 9, scope: !2751)
!2789 = !DILocation(line: 1530, column: 13, scope: !2746)
!2790 = !DILocation(line: 1530, column: 19, scope: !2746)
!2791 = !DILocation(line: 1530, column: 26, scope: !2746)
!2792 = !DILocation(line: 1532, column: 25, scope: !2130)
!2793 = !DILocation(line: 1532, column: 31, scope: !2130)
!2794 = !DILocation(line: 1532, column: 35, scope: !2130)
!2795 = !DILocation(line: 1532, column: 41, scope: !2130)
!2796 = !DILocation(line: 1532, column: 47, scope: !2130)
!2797 = !DILocation(line: 1532, column: 51, scope: !2130)
!2798 = !DILocation(line: 1532, column: 39, scope: !2130)
!2799 = !DILocation(line: 1532, column: 62, scope: !2130)
!2800 = !DILocation(line: 1532, column: 60, scope: !2130)
!2801 = !DILocation(line: 1532, column: 14, scope: !2130)
!2802 = !DILocation(line: 1532, column: 23, scope: !2130)
!2803 = !{!2158, !1209, i64 72}
!2804 = !DILocation(line: 1533, column: 18, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1533, column: 13)
!2806 = !DILocation(line: 1533, column: 27, scope: !2805)
!2807 = !DILocation(line: 1533, column: 13, scope: !2130)
!2808 = !DILocation(line: 1534, column: 13, scope: !2805)
!2809 = !DILocation(line: 1537, column: 27, scope: !2130)
!2810 = !DILocation(line: 1537, column: 40, scope: !2130)
!2811 = !DILocation(line: 1537, column: 46, scope: !2130)
!2812 = !DILocation(line: 1537, column: 50, scope: !2130)
!2813 = !DILocation(line: 1538, column: 28, scope: !2130)
!2814 = !DILocation(line: 1538, column: 34, scope: !2130)
!2815 = !DILocation(line: 1538, column: 38, scope: !2130)
!2816 = !DILocation(line: 1537, column: 9, scope: !2130)
!2817 = !DILocation(line: 1545, column: 14, scope: !2130)
!2818 = !DILocation(line: 1545, column: 20, scope: !2130)
!2819 = !{!2316, !899, i64 152}
!2820 = !DILocation(line: 1545, column: 12, scope: !2130)
!2821 = !DILocation(line: 1546, column: 28, scope: !2130)
!2822 = !DILocation(line: 1546, column: 21, scope: !2130)
!2823 = !DILocation(line: 1547, column: 9, scope: !2130)
!2824 = !DILocation(line: 1547, column: 16, scope: !2130)
!2825 = !DILocation(line: 1547, column: 20, scope: !2130)
!2826 = !DILocation(line: 1547, column: 23, scope: !2130)
!2827 = !DILocation(line: 1547, column: 26, scope: !2130)
!2828 = !DILocation(line: 1547, column: 30, scope: !2130)
!2829 = !DILocation(line: 1547, column: 34, scope: !2130)
!2830 = !DILocation(line: 1547, column: 45, scope: !2130)
!2831 = !DILocation(line: 1547, column: 51, scope: !2130)
!2832 = !DILocation(line: 1547, column: 55, scope: !2130)
!2833 = !DILocation(line: 1547, column: 42, scope: !2130)
!2834 = !DILocation(line: 1548, column: 16, scope: !2130)
!2835 = !DILocation(line: 1548, column: 19, scope: !2130)
!2836 = !DILocation(line: 1548, column: 31, scope: !2130)
!2837 = !DILocation(line: 0, scope: !2130)
!2838 = !DILocation(line: 1549, column: 13, scope: !2133)
!2839 = !DILocation(line: 1549, column: 27, scope: !2133)
!2840 = !DILocation(line: 1549, column: 45, scope: !2133)
!2841 = !DILocation(line: 1549, column: 49, scope: !2133)
!2842 = !DILocation(line: 1549, column: 59, scope: !2133)
!2843 = !DILocation(line: 1549, column: 63, scope: !2133)
!2844 = !DILocation(line: 1549, column: 67, scope: !2133)
!2845 = !DILocation(line: 1549, column: 57, scope: !2133)
!2846 = !DILocation(line: 1550, column: 13, scope: !2133)
!2847 = !DILocation(line: 1550, column: 18, scope: !2133)
!2848 = !DILocation(line: 1552, column: 17, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 1552, column: 17)
!2850 = !DILocation(line: 1552, column: 29, scope: !2849)
!2851 = !DILocation(line: 1552, column: 33, scope: !2849)
!2852 = !DILocation(line: 1552, column: 53, scope: !2849)
!2853 = !DILocation(line: 1552, column: 52, scope: !2849)
!2854 = !DILocation(line: 1552, column: 68, scope: !2849)
!2855 = !DILocation(line: 1552, column: 72, scope: !2849)
!2856 = !DILocation(line: 1552, column: 66, scope: !2849)
!2857 = !DILocation(line: 1552, column: 17, scope: !2133)
!2858 = !DILocation(line: 1553, column: 17, scope: !2849)
!2859 = !DILocation(line: 1554, column: 28, scope: !2133)
!2860 = !DILocation(line: 1554, column: 13, scope: !2133)
!2861 = !DILocation(line: 1554, column: 17, scope: !2133)
!2862 = !DILocation(line: 1554, column: 25, scope: !2133)
!2863 = !DILocation(line: 1556, column: 24, scope: !2133)
!2864 = !DILocation(line: 1556, column: 28, scope: !2133)
!2865 = !DILocation(line: 1556, column: 32, scope: !2133)
!2866 = !DILocation(line: 1556, column: 22, scope: !2133)
!2867 = !DILocation(line: 1557, column: 37, scope: !2133)
!2868 = !DILocation(line: 1557, column: 41, scope: !2133)
!2869 = !DILocation(line: 1557, column: 54, scope: !2133)
!2870 = !DILocation(line: 1557, column: 58, scope: !2133)
!2871 = !DILocation(line: 1558, column: 43, scope: !2133)
!2872 = !DILocation(line: 1558, column: 47, scope: !2133)
!2873 = !DILocation(line: 1559, column: 46, scope: !2133)
!2874 = !DILocation(line: 1559, column: 50, scope: !2133)
!2875 = !DILocation(line: 1557, column: 22, scope: !2133)
!2876 = !DILocation(line: 1557, column: 20, scope: !2133)
!2877 = !DILocation(line: 1560, column: 36, scope: !2133)
!2878 = !DILocation(line: 1560, column: 46, scope: !2133)
!2879 = !DILocation(line: 1560, column: 50, scope: !2133)
!2880 = !DILocation(line: 1560, column: 54, scope: !2133)
!2881 = !DILocation(line: 1560, column: 13, scope: !2133)
!2882 = !DILocation(line: 1562, column: 27, scope: !2133)
!2883 = !DILocation(line: 1562, column: 31, scope: !2133)
!2884 = !DILocation(line: 1562, column: 41, scope: !2133)
!2885 = !DILocation(line: 1562, column: 45, scope: !2133)
!2886 = !DILocation(line: 1562, column: 49, scope: !2133)
!2887 = !DILocation(line: 1562, column: 39, scope: !2133)
!2888 = !DILocation(line: 1562, column: 55, scope: !2133)
!2889 = !DILocation(line: 1562, column: 53, scope: !2133)
!2890 = !DILocation(line: 1562, column: 25, scope: !2133)
!2891 = !DILocation(line: 1563, column: 29, scope: !2133)
!2892 = !DILocation(line: 1563, column: 33, scope: !2133)
!2893 = !DILocation(line: 1563, column: 37, scope: !2133)
!2894 = !DILocation(line: 1563, column: 43, scope: !2133)
!2895 = !DILocation(line: 1563, column: 41, scope: !2133)
!2896 = !DILocation(line: 1563, column: 18, scope: !2133)
!2897 = !DILocation(line: 1563, column: 27, scope: !2133)
!2898 = !DILocation(line: 1564, column: 22, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 1564, column: 17)
!2900 = !DILocation(line: 1564, column: 31, scope: !2899)
!2901 = !DILocation(line: 1564, column: 17, scope: !2133)
!2902 = !DILocation(line: 1565, column: 35, scope: !2899)
!2903 = !DILocation(line: 1565, column: 48, scope: !2899)
!2904 = !DILocation(line: 1565, column: 52, scope: !2899)
!2905 = !DILocation(line: 1565, column: 56, scope: !2899)
!2906 = !DILocation(line: 1566, column: 28, scope: !2899)
!2907 = !DILocation(line: 1566, column: 32, scope: !2899)
!2908 = !DILocation(line: 1566, column: 36, scope: !2899)
!2909 = !DILocation(line: 1565, column: 17, scope: !2899)
!2910 = !DILocation(line: 1568, column: 27, scope: !2133)
!2911 = !DILocation(line: 1568, column: 31, scope: !2133)
!2912 = !DILocation(line: 1568, column: 13, scope: !2133)
!2913 = !DILocation(line: 1568, column: 17, scope: !2133)
!2914 = !DILocation(line: 1568, column: 25, scope: !2133)
!2915 = !DILocation(line: 1569, column: 18, scope: !2133)
!2916 = !DILocation(line: 1569, column: 16, scope: !2133)
!2917 = !DILocation(line: 1570, column: 9, scope: !2130)
!2918 = distinct !{!2918, !2823, !2917, !1027}
!2919 = !DILocation(line: 1573, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1573, column: 9)
!2921 = !DILocation(line: 1573, column: 9, scope: !2107)
!2922 = !DILocation(line: 1574, column: 9, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !2, line: 1573, column: 20)
!2924 = !DILocation(line: 1575, column: 9, scope: !2923)
!2925 = !DILocation(line: 1579, column: 27, scope: !2107)
!2926 = !DILocation(line: 1579, column: 35, scope: !2107)
!2927 = !DILocation(line: 1579, column: 5, scope: !2107)
!2928 = !DILocation(line: 1580, column: 5, scope: !2107)
!2929 = !DILocation(line: 1581, column: 1, scope: !2107)
!2930 = !DISubprogram(name: "IT_create", scope: !712, file: !712, line: 52, type: !2931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!710}
!2933 = !DISubprogram(name: "yasm_bc_calc_len", scope: !72, file: !72, line: 470, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2934 = distinct !DISubprogram(name: "optimize_add_span", scope: !2, file: !2, line: 919, type: !307, scopeLine: 921, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2936 = !DILocalVariable(name: "add_span_data", arg: 1, scope: !2934, file: !2, line: 919, type: !229)
!2937 = !DILocalVariable(name: "bc", arg: 2, scope: !2934, file: !2, line: 919, type: !295)
!2938 = !DILocalVariable(name: "id", arg: 3, scope: !2934, file: !2, line: 919, type: !205)
!2939 = !DILocalVariable(name: "value", arg: 4, scope: !2934, file: !2, line: 920, type: !309)
!2940 = !DILocalVariable(name: "neg_thres", arg: 5, scope: !2934, file: !2, line: 920, type: !264)
!2941 = !DILocalVariable(name: "pos_thres", arg: 6, scope: !2934, file: !2, line: 920, type: !264)
!2942 = !DILocalVariable(name: "optd", scope: !2934, file: !2, line: 922, type: !639)
!2943 = !DILocalVariable(name: "span", scope: !2934, file: !2, line: 923, type: !670)
!2944 = !DILocation(line: 919, column: 25, scope: !2934)
!2945 = !DILocation(line: 919, column: 55, scope: !2934)
!2946 = !DILocation(line: 919, column: 63, scope: !2934)
!2947 = !DILocation(line: 920, column: 37, scope: !2934)
!2948 = !DILocation(line: 920, column: 49, scope: !2934)
!2949 = !DILocation(line: 920, column: 65, scope: !2934)
!2950 = !DILocation(line: 922, column: 5, scope: !2934)
!2951 = !DILocation(line: 922, column: 20, scope: !2934)
!2952 = !DILocation(line: 922, column: 44, scope: !2934)
!2953 = !DILocation(line: 923, column: 5, scope: !2934)
!2954 = !DILocation(line: 923, column: 16, scope: !2934)
!2955 = !DILocation(line: 924, column: 24, scope: !2934)
!2956 = !DILocation(line: 924, column: 28, scope: !2934)
!2957 = !DILocation(line: 924, column: 32, scope: !2934)
!2958 = !DILocation(line: 924, column: 39, scope: !2934)
!2959 = !DILocation(line: 924, column: 50, scope: !2934)
!2960 = !DILocation(line: 924, column: 61, scope: !2934)
!2961 = !DILocation(line: 924, column: 67, scope: !2934)
!2962 = !DILocation(line: 924, column: 12, scope: !2934)
!2963 = !DILocation(line: 924, column: 10, scope: !2934)
!2964 = !DILocation(line: 925, column: 5, scope: !2934)
!2965 = !DILocation(line: 925, column: 5, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2934, file: !2, line: 925, column: 5)
!2967 = !DILocation(line: 926, column: 1, scope: !2934)
!2968 = !DISubprogram(name: "yasm_bc_next_offset", scope: !72, file: !72, line: 446, type: !2969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!202, !295}
!2971 = distinct !DISubprogram(name: "optimize_cleanup", scope: !2, file: !2, line: 1115, type: !2972, scopeLine: 1116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !639}
!2974 = !{!2975, !2976, !2977, !2978, !2979}
!2975 = !DILocalVariable(name: "optd", arg: 1, scope: !2971, file: !2, line: 1115, type: !639)
!2976 = !DILocalVariable(name: "s1", scope: !2971, file: !2, line: 1117, type: !670)
!2977 = !DILocalVariable(name: "s2", scope: !2971, file: !2, line: 1117, type: !670)
!2978 = !DILocalVariable(name: "os1", scope: !2971, file: !2, line: 1118, type: !689)
!2979 = !DILocalVariable(name: "os2", scope: !2971, file: !2, line: 1118, type: !689)
!2980 = !DILocation(line: 1115, column: 33, scope: !2971)
!2981 = !DILocation(line: 1117, column: 5, scope: !2971)
!2982 = !DILocation(line: 1117, column: 16, scope: !2971)
!2983 = !DILocation(line: 1117, column: 21, scope: !2971)
!2984 = !DILocation(line: 1118, column: 5, scope: !2971)
!2985 = !DILocation(line: 1118, column: 25, scope: !2971)
!2986 = !DILocation(line: 1118, column: 31, scope: !2971)
!2987 = !DILocation(line: 1120, column: 16, scope: !2971)
!2988 = !DILocation(line: 1120, column: 22, scope: !2971)
!2989 = !DILocation(line: 1120, column: 5, scope: !2971)
!2990 = !DILocation(line: 1122, column: 10, scope: !2971)
!2991 = !DILocation(line: 1122, column: 8, scope: !2971)
!2992 = !DILocation(line: 1123, column: 5, scope: !2971)
!2993 = !DILocation(line: 1123, column: 12, scope: !2971)
!2994 = !DILocation(line: 1124, column: 14, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 1123, column: 16)
!2996 = !DILocation(line: 1124, column: 12, scope: !2995)
!2997 = !DILocation(line: 1125, column: 22, scope: !2995)
!2998 = !DILocation(line: 1125, column: 9, scope: !2995)
!2999 = !DILocation(line: 1126, column: 14, scope: !2995)
!3000 = !DILocation(line: 1126, column: 12, scope: !2995)
!3001 = distinct !{!3001, !2992, !3002, !1027}
!3002 = !DILocation(line: 1127, column: 5, scope: !2971)
!3003 = !DILocation(line: 1129, column: 11, scope: !2971)
!3004 = !DILocation(line: 1129, column: 9, scope: !2971)
!3005 = !DILocation(line: 1130, column: 5, scope: !2971)
!3006 = !DILocation(line: 1130, column: 12, scope: !2971)
!3007 = !DILocation(line: 1131, column: 15, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 1130, column: 17)
!3009 = !DILocation(line: 1131, column: 13, scope: !3008)
!3010 = !DILocation(line: 1132, column: 9, scope: !3008)
!3011 = !DILocation(line: 1132, column: 20, scope: !3008)
!3012 = !DILocation(line: 1133, column: 15, scope: !3008)
!3013 = !DILocation(line: 1133, column: 13, scope: !3008)
!3014 = distinct !{!3014, !3005, !3015, !1027}
!3015 = !DILocation(line: 1134, column: 5, scope: !2971)
!3016 = !DILocation(line: 1135, column: 1, scope: !2971)
!3017 = distinct !DISubprogram(name: "span_create_terms", scope: !2, file: !2, line: 955, type: !3018, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !670}
!3020 = !{!3021, !3022, !3023, !3026}
!3021 = !DILocalVariable(name: "span", arg: 1, scope: !3017, file: !2, line: 955, type: !670)
!3022 = !DILocalVariable(name: "i", scope: !3017, file: !2, line: 957, type: !25)
!3023 = !DILocalVariable(name: "rel_precbc", scope: !3024, file: !2, line: 984, type: !295)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 983, column: 27)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 983, column: 9)
!3026 = !DILocalVariable(name: "sym_local", scope: !3024, file: !2, line: 985, type: !205)
!3027 = !DILocation(line: 955, column: 30, scope: !3017)
!3028 = !DILocation(line: 957, column: 5, scope: !3017)
!3029 = !DILocation(line: 957, column: 18, scope: !3017)
!3030 = !DILocation(line: 960, column: 9, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 960, column: 9)
!3032 = !DILocation(line: 960, column: 15, scope: !3031)
!3033 = !DILocation(line: 960, column: 22, scope: !3031)
!3034 = !{!2316, !899, i64 32}
!3035 = !DILocation(line: 960, column: 9, scope: !3017)
!3036 = !DILocation(line: 961, column: 53, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3031, file: !2, line: 960, column: 27)
!3038 = !DILocation(line: 961, column: 59, scope: !3037)
!3039 = !DILocation(line: 961, column: 66, scope: !3037)
!3040 = !DILocation(line: 961, column: 71, scope: !3037)
!3041 = !DILocation(line: 961, column: 27, scope: !3037)
!3042 = !DILocation(line: 961, column: 9, scope: !3037)
!3043 = !DILocation(line: 961, column: 15, scope: !3037)
!3044 = !DILocation(line: 961, column: 25, scope: !3037)
!3045 = !DILocation(line: 963, column: 13, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 963, column: 13)
!3047 = !DILocation(line: 963, column: 19, scope: !3046)
!3048 = !DILocation(line: 963, column: 29, scope: !3046)
!3049 = !DILocation(line: 963, column: 13, scope: !3037)
!3050 = !DILocation(line: 964, column: 27, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3046, file: !2, line: 963, column: 34)
!3052 = !DILocation(line: 964, column: 40, scope: !3051)
!3053 = !DILocation(line: 964, column: 46, scope: !3051)
!3054 = !DILocation(line: 964, column: 55, scope: !3051)
!3055 = !DILocation(line: 964, column: 13, scope: !3051)
!3056 = !DILocation(line: 964, column: 19, scope: !3051)
!3057 = !DILocation(line: 964, column: 25, scope: !3051)
!3058 = !{!2316, !899, i64 80}
!3059 = !DILocation(line: 965, column: 19, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3051, file: !2, line: 965, column: 13)
!3061 = !DILocation(line: 965, column: 18, scope: !3060)
!3062 = !DILocation(line: 965, column: 23, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 965, column: 13)
!3064 = !DILocation(line: 965, column: 25, scope: !3063)
!3065 = !DILocation(line: 965, column: 31, scope: !3063)
!3066 = !DILocation(line: 965, column: 24, scope: !3063)
!3067 = !DILocation(line: 965, column: 13, scope: !3060)
!3068 = !DILocation(line: 967, column: 17, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !2, line: 965, column: 47)
!3070 = !DILocation(line: 967, column: 23, scope: !3069)
!3071 = !DILocation(line: 967, column: 29, scope: !3069)
!3072 = !DILocation(line: 967, column: 32, scope: !3069)
!3073 = !DILocation(line: 967, column: 37, scope: !3069)
!3074 = !{!3075, !900, i64 0}
!3075 = !{!"yasm_expr__item", !900, i64 0, !900, i64 8}
!3076 = !DILocation(line: 968, column: 44, scope: !3069)
!3077 = !DILocation(line: 968, column: 17, scope: !3069)
!3078 = !DILocation(line: 968, column: 23, scope: !3069)
!3079 = !DILocation(line: 968, column: 29, scope: !3069)
!3080 = !DILocation(line: 968, column: 32, scope: !3069)
!3081 = !DILocation(line: 968, column: 42, scope: !3069)
!3082 = !DILocation(line: 971, column: 21, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3069, file: !2, line: 971, column: 21)
!3084 = !DILocation(line: 971, column: 27, scope: !3083)
!3085 = !DILocation(line: 971, column: 30, scope: !3083)
!3086 = !DILocation(line: 971, column: 35, scope: !3083)
!3087 = !DILocation(line: 972, column: 23, scope: !3083)
!3088 = !DILocation(line: 972, column: 29, scope: !3083)
!3089 = !DILocation(line: 972, column: 33, scope: !3083)
!3090 = !DILocation(line: 972, column: 44, scope: !3083)
!3091 = !DILocation(line: 972, column: 50, scope: !3083)
!3092 = !DILocation(line: 972, column: 56, scope: !3083)
!3093 = !DILocation(line: 972, column: 59, scope: !3083)
!3094 = !DILocation(line: 972, column: 67, scope: !3083)
!3095 = !DILocation(line: 972, column: 42, scope: !3083)
!3096 = !DILocation(line: 972, column: 76, scope: !3083)
!3097 = !DILocation(line: 973, column: 23, scope: !3083)
!3098 = !DILocation(line: 973, column: 29, scope: !3083)
!3099 = !DILocation(line: 973, column: 33, scope: !3083)
!3100 = !DILocation(line: 973, column: 45, scope: !3083)
!3101 = !DILocation(line: 973, column: 51, scope: !3083)
!3102 = !DILocation(line: 973, column: 57, scope: !3083)
!3103 = !DILocation(line: 973, column: 60, scope: !3083)
!3104 = !DILocation(line: 973, column: 69, scope: !3083)
!3105 = !DILocation(line: 973, column: 42, scope: !3083)
!3106 = !DILocation(line: 973, column: 79, scope: !3083)
!3107 = !DILocation(line: 974, column: 23, scope: !3083)
!3108 = !DILocation(line: 974, column: 29, scope: !3083)
!3109 = !DILocation(line: 974, column: 33, scope: !3083)
!3110 = !DILocation(line: 974, column: 44, scope: !3083)
!3111 = !DILocation(line: 974, column: 50, scope: !3083)
!3112 = !DILocation(line: 974, column: 56, scope: !3083)
!3113 = !DILocation(line: 974, column: 59, scope: !3083)
!3114 = !DILocation(line: 974, column: 68, scope: !3083)
!3115 = !DILocation(line: 974, column: 42, scope: !3083)
!3116 = !DILocation(line: 974, column: 77, scope: !3083)
!3117 = !DILocation(line: 975, column: 23, scope: !3083)
!3118 = !DILocation(line: 975, column: 29, scope: !3083)
!3119 = !DILocation(line: 975, column: 33, scope: !3083)
!3120 = !DILocation(line: 975, column: 45, scope: !3083)
!3121 = !DILocation(line: 975, column: 51, scope: !3083)
!3122 = !DILocation(line: 975, column: 57, scope: !3083)
!3123 = !DILocation(line: 975, column: 60, scope: !3083)
!3124 = !DILocation(line: 975, column: 68, scope: !3083)
!3125 = !DILocation(line: 975, column: 42, scope: !3083)
!3126 = !DILocation(line: 971, column: 21, scope: !3069)
!3127 = !DILocation(line: 976, column: 21, scope: !3083)
!3128 = !DILocation(line: 978, column: 13, scope: !3069)
!3129 = !DILocation(line: 965, column: 43, scope: !3063)
!3130 = !DILocation(line: 965, column: 13, scope: !3063)
!3131 = distinct !{!3131, !3067, !3132, !1027}
!3132 = !DILocation(line: 978, column: 13, scope: !3060)
!3133 = !DILocation(line: 979, column: 9, scope: !3051)
!3134 = !DILocation(line: 980, column: 5, scope: !3037)
!3135 = !DILocation(line: 983, column: 9, scope: !3025)
!3136 = !DILocation(line: 983, column: 15, scope: !3025)
!3137 = !DILocation(line: 983, column: 22, scope: !3025)
!3138 = !{!2316, !899, i64 40}
!3139 = !DILocation(line: 983, column: 9, scope: !3017)
!3140 = !DILocation(line: 984, column: 9, scope: !3024)
!3141 = !DILocation(line: 984, column: 24, scope: !3024)
!3142 = !DILocation(line: 985, column: 9, scope: !3024)
!3143 = !DILocation(line: 985, column: 13, scope: !3024)
!3144 = !DILocation(line: 987, column: 43, scope: !3024)
!3145 = !DILocation(line: 987, column: 49, scope: !3024)
!3146 = !DILocation(line: 987, column: 56, scope: !3024)
!3147 = !DILocation(line: 987, column: 21, scope: !3024)
!3148 = !DILocation(line: 987, column: 19, scope: !3024)
!3149 = !DILocation(line: 988, column: 13, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3024, file: !2, line: 988, column: 13)
!3151 = !DILocation(line: 988, column: 19, scope: !3150)
!3152 = !DILocation(line: 988, column: 26, scope: !3150)
!3153 = !{!2316, !899, i64 48}
!3154 = !DILocation(line: 988, column: 30, scope: !3150)
!3155 = !DILocation(line: 988, column: 33, scope: !3150)
!3156 = !DILocation(line: 988, column: 39, scope: !3150)
!3157 = !DILocation(line: 988, column: 46, scope: !3150)
!3158 = !DILocation(line: 988, column: 53, scope: !3150)
!3159 = !DILocation(line: 988, column: 56, scope: !3150)
!3160 = !DILocation(line: 988, column: 62, scope: !3150)
!3161 = !DILocation(line: 988, column: 69, scope: !3150)
!3162 = !DILocation(line: 989, column: 13, scope: !3150)
!3163 = !DILocation(line: 989, column: 17, scope: !3150)
!3164 = !DILocation(line: 988, column: 13, scope: !3024)
!3165 = !DILocation(line: 990, column: 13, scope: !3150)
!3166 = !DILocation(line: 991, column: 13, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3024, file: !2, line: 991, column: 13)
!3168 = !DILocation(line: 991, column: 25, scope: !3167)
!3169 = !DILocation(line: 991, column: 36, scope: !3167)
!3170 = !DILocation(line: 991, column: 42, scope: !3167)
!3171 = !DILocation(line: 991, column: 46, scope: !3167)
!3172 = !DILocation(line: 991, column: 33, scope: !3167)
!3173 = !DILocation(line: 991, column: 13, scope: !3024)
!3174 = !DILocation(line: 992, column: 13, scope: !3167)
!3175 = !DILocation(line: 993, column: 14, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3024, file: !2, line: 993, column: 13)
!3177 = !DILocation(line: 993, column: 20, scope: !3176)
!3178 = !DILocation(line: 993, column: 27, scope: !3176)
!3179 = !DILocation(line: 993, column: 13, scope: !3024)
!3180 = !DILocation(line: 994, column: 13, scope: !3176)
!3181 = !DILocation(line: 996, column: 26, scope: !3024)
!3182 = !DILocation(line: 996, column: 9, scope: !3024)
!3183 = !DILocation(line: 996, column: 15, scope: !3024)
!3184 = !DILocation(line: 996, column: 24, scope: !3024)
!3185 = !DILocation(line: 997, column: 9, scope: !3024)
!3186 = !DILocation(line: 997, column: 15, scope: !3024)
!3187 = !DILocation(line: 997, column: 25, scope: !3024)
!3188 = !DILocation(line: 997, column: 32, scope: !3024)
!3189 = !DILocation(line: 998, column: 35, scope: !3024)
!3190 = !DILocation(line: 998, column: 9, scope: !3024)
!3191 = !DILocation(line: 998, column: 15, scope: !3024)
!3192 = !DILocation(line: 998, column: 25, scope: !3024)
!3193 = !DILocation(line: 998, column: 33, scope: !3024)
!3194 = !DILocation(line: 999, column: 32, scope: !3024)
!3195 = !DILocation(line: 999, column: 9, scope: !3024)
!3196 = !DILocation(line: 999, column: 15, scope: !3024)
!3197 = !DILocation(line: 999, column: 25, scope: !3024)
!3198 = !DILocation(line: 999, column: 30, scope: !3024)
!3199 = !{!2450, !899, i64 16}
!3200 = !DILocation(line: 1000, column: 9, scope: !3024)
!3201 = !DILocation(line: 1000, column: 15, scope: !3024)
!3202 = !DILocation(line: 1000, column: 25, scope: !3024)
!3203 = !DILocation(line: 1000, column: 31, scope: !3024)
!3204 = !{!2450, !984, i64 40}
!3205 = !DILocation(line: 1002, column: 9, scope: !3024)
!3206 = !DILocation(line: 1002, column: 15, scope: !3024)
!3207 = !DILocation(line: 1002, column: 25, scope: !3024)
!3208 = !DILocation(line: 1002, column: 33, scope: !3024)
!3209 = !DILocation(line: 1003, column: 55, scope: !3024)
!3210 = !DILocation(line: 1003, column: 35, scope: !3024)
!3211 = !DILocation(line: 1004, column: 13, scope: !3024)
!3212 = !DILocation(line: 1004, column: 19, scope: !3024)
!3213 = !DILocation(line: 1004, column: 23, scope: !3024)
!3214 = !DILocation(line: 1003, column: 67, scope: !3024)
!3215 = !DILocation(line: 1003, column: 9, scope: !3024)
!3216 = !DILocation(line: 1003, column: 15, scope: !3024)
!3217 = !DILocation(line: 1003, column: 25, scope: !3024)
!3218 = !DILocation(line: 1003, column: 33, scope: !3024)
!3219 = !DILocation(line: 1005, column: 5, scope: !3025)
!3220 = !DILocation(line: 1005, column: 5, scope: !3024)
!3221 = !DILocation(line: 1006, column: 1, scope: !3017)
!3222 = distinct !DISubprogram(name: "recalc_normal_span", scope: !2, file: !2, line: 1012, type: !3223, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!205, !670}
!3225 = !{!3226, !3227, !3230, !3231}
!3226 = !DILocalVariable(name: "span", arg: 1, scope: !3222, file: !2, line: 1012, type: !670)
!3227 = !DILocalVariable(name: "abs_copy", scope: !3228, file: !2, line: 1017, type: !315)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !2, line: 1016, column: 27)
!3229 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1016, column: 9)
!3230 = !DILocalVariable(name: "num", scope: !3228, file: !2, line: 1018, type: !340)
!3231 = !DILocalVariable(name: "i", scope: !3228, file: !2, line: 1021, type: !25)
!3232 = !DILocation(line: 1012, column: 31, scope: !3222)
!3233 = !DILocation(line: 1014, column: 5, scope: !3222)
!3234 = !DILocation(line: 1014, column: 11, scope: !3222)
!3235 = !DILocation(line: 1014, column: 19, scope: !3222)
!3236 = !DILocation(line: 1016, column: 9, scope: !3229)
!3237 = !DILocation(line: 1016, column: 15, scope: !3229)
!3238 = !DILocation(line: 1016, column: 22, scope: !3229)
!3239 = !DILocation(line: 1016, column: 9, scope: !3222)
!3240 = !DILocation(line: 1017, column: 9, scope: !3228)
!3241 = !DILocation(line: 1017, column: 20, scope: !3228)
!3242 = !DILocation(line: 1017, column: 31, scope: !3228)
!3243 = !DILocation(line: 1018, column: 36, scope: !3228)
!3244 = !DILocation(line: 1018, column: 49, scope: !3228)
!3245 = !DILocation(line: 1021, column: 9, scope: !3228)
!3246 = !DILocation(line: 1021, column: 22, scope: !3228)
!3247 = !DILocation(line: 1022, column: 15, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1022, column: 9)
!3249 = !DILocation(line: 1022, column: 14, scope: !3248)
!3250 = !DILocation(line: 1022, column: 19, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !2, line: 1022, column: 9)
!3252 = !DILocation(line: 1022, column: 21, scope: !3251)
!3253 = !DILocation(line: 1022, column: 27, scope: !3251)
!3254 = !DILocation(line: 1022, column: 20, scope: !3251)
!3255 = !DILocation(line: 1022, column: 9, scope: !3248)
!3256 = !DILocation(line: 1023, column: 33, scope: !3251)
!3257 = !DILocation(line: 1023, column: 39, scope: !3251)
!3258 = !DILocation(line: 1023, column: 45, scope: !3251)
!3259 = !DILocation(line: 1023, column: 48, scope: !3251)
!3260 = !DILocation(line: 1023, column: 53, scope: !3251)
!3261 = !DILocation(line: 1024, column: 33, scope: !3251)
!3262 = !DILocation(line: 1024, column: 39, scope: !3251)
!3263 = !DILocation(line: 1024, column: 45, scope: !3251)
!3264 = !DILocation(line: 1024, column: 48, scope: !3251)
!3265 = !DILocation(line: 1023, column: 13, scope: !3251)
!3266 = !DILocation(line: 1022, column: 39, scope: !3251)
!3267 = !DILocation(line: 1022, column: 9, scope: !3251)
!3268 = distinct !{!3268, !3255, !3269, !1027}
!3269 = !DILocation(line: 1024, column: 55, scope: !3248)
!3270 = !DILocation(line: 1025, column: 26, scope: !3228)
!3271 = !DILocation(line: 1025, column: 36, scope: !3228)
!3272 = !DILocation(line: 1025, column: 42, scope: !3228)
!3273 = !DILocation(line: 1025, column: 53, scope: !3228)
!3274 = !DILocation(line: 1025, column: 59, scope: !3228)
!3275 = !DILocation(line: 1025, column: 9, scope: !3228)
!3276 = !DILocation(line: 1026, column: 15, scope: !3228)
!3277 = !DILocation(line: 1026, column: 13, scope: !3228)
!3278 = !DILocation(line: 1027, column: 13, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1027, column: 13)
!3280 = !DILocation(line: 1027, column: 13, scope: !3228)
!3281 = !DILocation(line: 1028, column: 49, scope: !3279)
!3282 = !DILocation(line: 1028, column: 29, scope: !3279)
!3283 = !DILocation(line: 1028, column: 13, scope: !3279)
!3284 = !DILocation(line: 1028, column: 19, scope: !3279)
!3285 = !DILocation(line: 1028, column: 27, scope: !3279)
!3286 = !DILocation(line: 1030, column: 13, scope: !3279)
!3287 = !DILocation(line: 1030, column: 19, scope: !3279)
!3288 = !DILocation(line: 1030, column: 27, scope: !3279)
!3289 = !DILocation(line: 1031, column: 27, scope: !3228)
!3290 = !DILocation(line: 1031, column: 9, scope: !3228)
!3291 = !DILocation(line: 1032, column: 5, scope: !3229)
!3292 = !DILocation(line: 1032, column: 5, scope: !3228)
!3293 = !DILocation(line: 1034, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1034, column: 9)
!3295 = !DILocation(line: 1034, column: 15, scope: !3294)
!3296 = !DILocation(line: 1034, column: 9, scope: !3222)
!3297 = !DILocation(line: 1035, column: 13, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !2, line: 1035, column: 13)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1034, column: 25)
!3300 = !DILocation(line: 1035, column: 19, scope: !3298)
!3301 = !DILocation(line: 1035, column: 27, scope: !3298)
!3302 = !DILocation(line: 1035, column: 39, scope: !3298)
!3303 = !DILocation(line: 1035, column: 42, scope: !3298)
!3304 = !DILocation(line: 1035, column: 48, scope: !3298)
!3305 = !DILocation(line: 1035, column: 58, scope: !3298)
!3306 = !DILocation(line: 1035, column: 66, scope: !3298)
!3307 = !DILocation(line: 1035, column: 13, scope: !3299)
!3308 = !DILocation(line: 1036, column: 30, scope: !3298)
!3309 = !DILocation(line: 1036, column: 36, scope: !3298)
!3310 = !DILocation(line: 1036, column: 46, scope: !3298)
!3311 = !DILocation(line: 1036, column: 57, scope: !3298)
!3312 = !DILocation(line: 1036, column: 63, scope: !3298)
!3313 = !DILocation(line: 1036, column: 70, scope: !3298)
!3314 = !DILocation(line: 1036, column: 54, scope: !3298)
!3315 = !DILocation(line: 1036, column: 13, scope: !3298)
!3316 = !DILocation(line: 1036, column: 19, scope: !3298)
!3317 = !DILocation(line: 1036, column: 27, scope: !3298)
!3318 = !DILocation(line: 1038, column: 13, scope: !3298)
!3319 = !DILocation(line: 1038, column: 19, scope: !3298)
!3320 = !DILocation(line: 1038, column: 27, scope: !3298)
!3321 = !DILocation(line: 1039, column: 5, scope: !3299)
!3322 = !DILocation(line: 1039, column: 16, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1039, column: 16)
!3324 = !DILocation(line: 1039, column: 22, scope: !3323)
!3325 = !DILocation(line: 1039, column: 29, scope: !3323)
!3326 = !DILocation(line: 1039, column: 16, scope: !3294)
!3327 = !DILocation(line: 1040, column: 9, scope: !3323)
!3328 = !DILocation(line: 1040, column: 15, scope: !3323)
!3329 = !DILocation(line: 1040, column: 23, scope: !3323)
!3330 = !DILocation(line: 1042, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1042, column: 9)
!3332 = !DILocation(line: 1042, column: 15, scope: !3331)
!3333 = !DILocation(line: 1042, column: 23, scope: !3331)
!3334 = !DILocation(line: 1042, column: 9, scope: !3222)
!3335 = !DILocation(line: 1043, column: 9, scope: !3331)
!3336 = !DILocation(line: 1043, column: 15, scope: !3331)
!3337 = !DILocation(line: 1043, column: 22, scope: !3331)
!3338 = !DILocation(line: 1046, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1046, column: 9)
!3340 = !DILocation(line: 1046, column: 15, scope: !3339)
!3341 = !DILocation(line: 1046, column: 18, scope: !3339)
!3342 = !DILocation(line: 1046, column: 9, scope: !3222)
!3343 = !DILocation(line: 1047, column: 17, scope: !3339)
!3344 = !DILocation(line: 1047, column: 23, scope: !3339)
!3345 = !DILocation(line: 1047, column: 34, scope: !3339)
!3346 = !DILocation(line: 1047, column: 40, scope: !3339)
!3347 = !DILocation(line: 1047, column: 31, scope: !3339)
!3348 = !DILocation(line: 1047, column: 9, scope: !3339)
!3349 = !DILocation(line: 1049, column: 13, scope: !3222)
!3350 = !DILocation(line: 1049, column: 19, scope: !3222)
!3351 = !DILocation(line: 1049, column: 29, scope: !3222)
!3352 = !DILocation(line: 1049, column: 35, scope: !3222)
!3353 = !{!2316, !1209, i64 112}
!3354 = !DILocation(line: 1049, column: 27, scope: !3222)
!3355 = !DILocation(line: 1050, column: 13, scope: !3222)
!3356 = !DILocation(line: 1050, column: 16, scope: !3222)
!3357 = !DILocation(line: 1050, column: 22, scope: !3222)
!3358 = !DILocation(line: 1050, column: 32, scope: !3222)
!3359 = !DILocation(line: 1050, column: 38, scope: !3222)
!3360 = !{!2316, !1209, i64 120}
!3361 = !DILocation(line: 1050, column: 30, scope: !3222)
!3362 = !DILocation(line: 1049, column: 5, scope: !3222)
!3363 = !DILocation(line: 1051, column: 1, scope: !3222)
!3364 = !DISubprogram(name: "yasm_bc_expand", scope: !72, file: !72, line: 488, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3365 = distinct !DISubprogram(name: "span_destroy", scope: !2, file: !2, line: 1095, type: !3018, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3366)
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "span", arg: 1, scope: !3365, file: !2, line: 1095, type: !670)
!3368 = !DILocalVariable(name: "i", scope: !3365, file: !2, line: 1097, type: !25)
!3369 = !DILocation(line: 1095, column: 36, scope: !3365)
!3370 = !DILocation(line: 1097, column: 5, scope: !3365)
!3371 = !DILocation(line: 1097, column: 18, scope: !3365)
!3372 = !DILocation(line: 1099, column: 24, scope: !3365)
!3373 = !DILocation(line: 1099, column: 30, scope: !3365)
!3374 = !DILocation(line: 1099, column: 5, scope: !3365)
!3375 = !DILocation(line: 1100, column: 9, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3365, file: !2, line: 1100, column: 9)
!3377 = !DILocation(line: 1100, column: 15, scope: !3376)
!3378 = !DILocation(line: 1100, column: 9, scope: !3365)
!3379 = !DILocation(line: 1101, column: 9, scope: !3376)
!3380 = !DILocation(line: 1101, column: 20, scope: !3376)
!3381 = !DILocation(line: 1101, column: 26, scope: !3376)
!3382 = !DILocation(line: 1102, column: 9, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3365, file: !2, line: 1102, column: 9)
!3384 = !DILocation(line: 1102, column: 15, scope: !3383)
!3385 = !DILocation(line: 1102, column: 9, scope: !3365)
!3386 = !DILocation(line: 1103, column: 9, scope: !3383)
!3387 = !DILocation(line: 1103, column: 20, scope: !3383)
!3388 = !DILocation(line: 1103, column: 26, scope: !3383)
!3389 = !DILocation(line: 1104, column: 9, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3365, file: !2, line: 1104, column: 9)
!3391 = !DILocation(line: 1104, column: 15, scope: !3390)
!3392 = !DILocation(line: 1104, column: 9, scope: !3365)
!3393 = !DILocation(line: 1105, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !2, line: 1105, column: 9)
!3395 = distinct !DILexicalBlock(scope: !3390, file: !2, line: 1104, column: 22)
!3396 = !DILocation(line: 1105, column: 14, scope: !3394)
!3397 = !DILocation(line: 1105, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !2, line: 1105, column: 9)
!3399 = !DILocation(line: 1105, column: 21, scope: !3398)
!3400 = !DILocation(line: 1105, column: 27, scope: !3398)
!3401 = !DILocation(line: 1105, column: 20, scope: !3398)
!3402 = !DILocation(line: 1105, column: 9, scope: !3394)
!3403 = !DILocation(line: 1106, column: 33, scope: !3398)
!3404 = !DILocation(line: 1106, column: 39, scope: !3398)
!3405 = !DILocation(line: 1106, column: 45, scope: !3398)
!3406 = !DILocation(line: 1106, column: 48, scope: !3398)
!3407 = !DILocation(line: 1106, column: 53, scope: !3398)
!3408 = !DILocation(line: 1106, column: 13, scope: !3398)
!3409 = !DILocation(line: 1105, column: 39, scope: !3398)
!3410 = !DILocation(line: 1105, column: 9, scope: !3398)
!3411 = distinct !{!3411, !3402, !3412, !1027}
!3412 = !DILocation(line: 1106, column: 57, scope: !3394)
!3413 = !DILocation(line: 1107, column: 9, scope: !3395)
!3414 = !DILocation(line: 1107, column: 20, scope: !3395)
!3415 = !DILocation(line: 1107, column: 26, scope: !3395)
!3416 = !DILocation(line: 1108, column: 5, scope: !3395)
!3417 = !DILocation(line: 1109, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3365, file: !2, line: 1109, column: 9)
!3419 = !DILocation(line: 1109, column: 15, scope: !3418)
!3420 = !{!2316, !899, i64 136}
!3421 = !DILocation(line: 1109, column: 9, scope: !3365)
!3422 = !DILocation(line: 1110, column: 9, scope: !3418)
!3423 = !DILocation(line: 1110, column: 20, scope: !3418)
!3424 = !DILocation(line: 1110, column: 26, scope: !3418)
!3425 = !DILocation(line: 1111, column: 5, scope: !3365)
!3426 = !DILocation(line: 1111, column: 16, scope: !3365)
!3427 = !DILocation(line: 1112, column: 1, scope: !3365)
!3428 = distinct !DISubprogram(name: "update_all_bc_offsets", scope: !2, file: !2, line: 1057, type: !3429, scopeLine: 1058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!205, !160, !588}
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3440, !3441, !3442, !3446, !3447}
!3432 = !DILocalVariable(name: "object", arg: 1, scope: !3428, file: !2, line: 1057, type: !160)
!3433 = !DILocalVariable(name: "errwarns", arg: 2, scope: !3428, file: !2, line: 1057, type: !588)
!3434 = !DILocalVariable(name: "sect", scope: !3428, file: !2, line: 1059, type: !185)
!3435 = !DILocalVariable(name: "saw_error", scope: !3428, file: !2, line: 1060, type: !205)
!3436 = !DILocalVariable(name: "offset", scope: !3437, file: !2, line: 1063, type: !202)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !2, line: 1062, column: 51)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !2, line: 1062, column: 5)
!3439 = distinct !DILexicalBlock(scope: !3428, file: !2, line: 1062, column: 5)
!3440 = !DILocalVariable(name: "bc", scope: !3437, file: !2, line: 1065, type: !295)
!3441 = !DILocalVariable(name: "prevbc", scope: !3437, file: !2, line: 1066, type: !295)
!3442 = !DILocalVariable(name: "neg_thres", scope: !3443, file: !2, line: 1076, type: !264)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 1074, column: 66)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !2, line: 1074, column: 17)
!3445 = distinct !DILexicalBlock(scope: !3437, file: !2, line: 1073, column: 20)
!3446 = !DILocalVariable(name: "pos_thres", scope: !3443, file: !2, line: 1077, type: !264)
!3447 = !DILocalVariable(name: "retval", scope: !3443, file: !2, line: 1078, type: !205)
!3448 = !DILocation(line: 1057, column: 36, scope: !3428)
!3449 = !DILocation(line: 1057, column: 59, scope: !3428)
!3450 = !DILocation(line: 1059, column: 5, scope: !3428)
!3451 = !DILocation(line: 1059, column: 19, scope: !3428)
!3452 = !DILocation(line: 1060, column: 5, scope: !3428)
!3453 = !DILocation(line: 1060, column: 9, scope: !3428)
!3454 = !DILocation(line: 1062, column: 5, scope: !3439)
!3455 = !DILocation(line: 1062, column: 5, scope: !3438)
!3456 = !DILocation(line: 1063, column: 9, scope: !3437)
!3457 = !DILocation(line: 1063, column: 23, scope: !3437)
!3458 = !DILocation(line: 1065, column: 9, scope: !3437)
!3459 = !DILocation(line: 1065, column: 24, scope: !3437)
!3460 = !DILocation(line: 1065, column: 29, scope: !3437)
!3461 = !DILocation(line: 1066, column: 9, scope: !3437)
!3462 = !DILocation(line: 1066, column: 24, scope: !3437)
!3463 = !DILocation(line: 1069, column: 18, scope: !3437)
!3464 = !DILocation(line: 1069, column: 16, scope: !3437)
!3465 = !DILocation(line: 1070, column: 14, scope: !3437)
!3466 = !DILocation(line: 1070, column: 12, scope: !3437)
!3467 = !DILocation(line: 1073, column: 9, scope: !3437)
!3468 = !DILocation(line: 1073, column: 16, scope: !3437)
!3469 = !DILocation(line: 1074, column: 17, scope: !3444)
!3470 = !DILocation(line: 1074, column: 21, scope: !3444)
!3471 = !DILocation(line: 1074, column: 31, scope: !3444)
!3472 = !DILocation(line: 1074, column: 39, scope: !3444)
!3473 = !DILocation(line: 1074, column: 17, scope: !3445)
!3474 = !DILocation(line: 1076, column: 17, scope: !3443)
!3475 = !DILocation(line: 1076, column: 22, scope: !3443)
!3476 = !DILocation(line: 1077, column: 17, scope: !3443)
!3477 = !DILocation(line: 1077, column: 22, scope: !3443)
!3478 = !DILocation(line: 1077, column: 60, scope: !3443)
!3479 = !DILocation(line: 1077, column: 40, scope: !3443)
!3480 = !DILocation(line: 1078, column: 17, scope: !3443)
!3481 = !DILocation(line: 1078, column: 21, scope: !3443)
!3482 = !DILocation(line: 1078, column: 45, scope: !3443)
!3483 = !DILocation(line: 1079, column: 71, scope: !3443)
!3484 = !DILocation(line: 1079, column: 51, scope: !3443)
!3485 = !DILocation(line: 1078, column: 30, scope: !3443)
!3486 = !DILocation(line: 1081, column: 40, scope: !3443)
!3487 = !DILocation(line: 1081, column: 50, scope: !3443)
!3488 = !DILocation(line: 1081, column: 54, scope: !3443)
!3489 = !DILocation(line: 1081, column: 17, scope: !3443)
!3490 = !DILocation(line: 1082, column: 21, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3443, file: !2, line: 1082, column: 21)
!3492 = !DILocation(line: 1082, column: 28, scope: !3491)
!3493 = !DILocation(line: 1082, column: 21, scope: !3443)
!3494 = !DILocation(line: 1083, column: 31, scope: !3491)
!3495 = !DILocation(line: 1083, column: 21, scope: !3491)
!3496 = !DILocation(line: 1084, column: 13, scope: !3444)
!3497 = !DILocation(line: 1084, column: 13, scope: !3443)
!3498 = !DILocation(line: 1085, column: 26, scope: !3445)
!3499 = !DILocation(line: 1085, column: 13, scope: !3445)
!3500 = !DILocation(line: 1085, column: 17, scope: !3445)
!3501 = !DILocation(line: 1085, column: 24, scope: !3445)
!3502 = !DILocation(line: 1086, column: 23, scope: !3445)
!3503 = !DILocation(line: 1086, column: 27, scope: !3445)
!3504 = !DILocation(line: 1086, column: 31, scope: !3445)
!3505 = !DILocation(line: 1086, column: 35, scope: !3445)
!3506 = !DILocation(line: 1086, column: 30, scope: !3445)
!3507 = !DILocation(line: 1086, column: 20, scope: !3445)
!3508 = !DILocation(line: 1087, column: 22, scope: !3445)
!3509 = !DILocation(line: 1087, column: 20, scope: !3445)
!3510 = !DILocation(line: 1088, column: 18, scope: !3445)
!3511 = !DILocation(line: 1088, column: 16, scope: !3445)
!3512 = distinct !{!3512, !3467, !3513, !1027}
!3513 = !DILocation(line: 1089, column: 9, scope: !3437)
!3514 = !DILocation(line: 1090, column: 5, scope: !3438)
!3515 = !DILocation(line: 1090, column: 5, scope: !3437)
!3516 = distinct !{!3516, !3454, !3517, !1027}
!3517 = !DILocation(line: 1090, column: 5, scope: !3439)
!3518 = !DILocation(line: 1091, column: 12, scope: !3428)
!3519 = !DILocation(line: 1092, column: 1, scope: !3428)
!3520 = !DILocation(line: 1091, column: 5, scope: !3428)
!3521 = !DISubprogram(name: "yasm_calc_bc_dist", scope: !72, file: !72, line: 436, type: !3522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!340, !295, !295}
!3524 = !DISubprogram(name: "yasm_intnum_get_int", scope: !3525, file: !3525, line: 232, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3525 = !DIFile(filename: "libyasm/intnum.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "42af26c6ae684cef89aa66e5164f3d8f")
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!264, !503}
!3528 = !DISubprogram(name: "yasm_intnum_destroy", scope: !3525, file: !3525, line: 138, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !340}
!3531 = distinct !DISubprogram(name: "optimize_itree_add", scope: !2, file: !2, line: 1138, type: !3532, scopeLine: 1139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !710, !670, !663}
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541}
!3535 = !DILocalVariable(name: "itree", arg: 1, scope: !3531, file: !2, line: 1138, type: !710)
!3536 = !DILocalVariable(name: "span", arg: 2, scope: !3531, file: !2, line: 1138, type: !670)
!3537 = !DILocalVariable(name: "term", arg: 3, scope: !3531, file: !2, line: 1138, type: !663)
!3538 = !DILocalVariable(name: "precbc_index", scope: !3531, file: !2, line: 1140, type: !264)
!3539 = !DILocalVariable(name: "precbc2_index", scope: !3531, file: !2, line: 1140, type: !264)
!3540 = !DILocalVariable(name: "low", scope: !3531, file: !2, line: 1141, type: !202)
!3541 = !DILocalVariable(name: "high", scope: !3531, file: !2, line: 1141, type: !202)
!3542 = !DILocation(line: 1138, column: 34, scope: !3531)
!3543 = !DILocation(line: 1138, column: 52, scope: !3531)
!3544 = !DILocation(line: 1138, column: 74, scope: !3531)
!3545 = !DILocation(line: 1140, column: 5, scope: !3531)
!3546 = !DILocation(line: 1140, column: 10, scope: !3531)
!3547 = !DILocation(line: 1140, column: 24, scope: !3531)
!3548 = !DILocation(line: 1141, column: 5, scope: !3531)
!3549 = !DILocation(line: 1141, column: 19, scope: !3531)
!3550 = !DILocation(line: 1141, column: 24, scope: !3531)
!3551 = !DILocation(line: 1144, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 1144, column: 9)
!3553 = !DILocation(line: 1144, column: 15, scope: !3552)
!3554 = !DILocation(line: 1144, column: 9, scope: !3531)
!3555 = !DILocation(line: 1145, column: 24, scope: !3552)
!3556 = !DILocation(line: 1145, column: 30, scope: !3552)
!3557 = !DILocation(line: 1145, column: 38, scope: !3552)
!3558 = !DILocation(line: 1145, column: 22, scope: !3552)
!3559 = !DILocation(line: 1145, column: 9, scope: !3552)
!3560 = !DILocation(line: 1147, column: 24, scope: !3552)
!3561 = !DILocation(line: 1147, column: 30, scope: !3552)
!3562 = !DILocation(line: 1147, column: 34, scope: !3552)
!3563 = !DILocation(line: 1147, column: 42, scope: !3552)
!3564 = !DILocation(line: 1147, column: 22, scope: !3552)
!3565 = !DILocation(line: 1149, column: 9, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 1149, column: 9)
!3567 = !DILocation(line: 1149, column: 15, scope: !3566)
!3568 = !DILocation(line: 1149, column: 9, scope: !3531)
!3569 = !DILocation(line: 1150, column: 25, scope: !3566)
!3570 = !DILocation(line: 1150, column: 31, scope: !3566)
!3571 = !DILocation(line: 1150, column: 40, scope: !3566)
!3572 = !DILocation(line: 1150, column: 23, scope: !3566)
!3573 = !DILocation(line: 1150, column: 9, scope: !3566)
!3574 = !DILocation(line: 1152, column: 25, scope: !3566)
!3575 = !DILocation(line: 1152, column: 31, scope: !3566)
!3576 = !DILocation(line: 1152, column: 35, scope: !3566)
!3577 = !DILocation(line: 1152, column: 43, scope: !3566)
!3578 = !DILocation(line: 1152, column: 23, scope: !3566)
!3579 = !DILocation(line: 1154, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 1154, column: 9)
!3581 = !DILocation(line: 1154, column: 24, scope: !3580)
!3582 = !DILocation(line: 1154, column: 22, scope: !3580)
!3583 = !DILocation(line: 1154, column: 9, scope: !3531)
!3584 = !DILocation(line: 1155, column: 15, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3580, file: !2, line: 1154, column: 39)
!3586 = !DILocation(line: 1155, column: 27, scope: !3585)
!3587 = !DILocation(line: 1155, column: 13, scope: !3585)
!3588 = !DILocation(line: 1156, column: 16, scope: !3585)
!3589 = !DILocation(line: 1156, column: 14, scope: !3585)
!3590 = !DILocation(line: 1157, column: 5, scope: !3585)
!3591 = !DILocation(line: 1157, column: 16, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3580, file: !2, line: 1157, column: 16)
!3593 = !DILocation(line: 1157, column: 31, scope: !3592)
!3594 = !DILocation(line: 1157, column: 29, scope: !3592)
!3595 = !DILocation(line: 1157, column: 16, scope: !3580)
!3596 = !DILocation(line: 1158, column: 15, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3592, file: !2, line: 1157, column: 46)
!3598 = !DILocation(line: 1158, column: 28, scope: !3597)
!3599 = !DILocation(line: 1158, column: 13, scope: !3597)
!3600 = !DILocation(line: 1159, column: 16, scope: !3597)
!3601 = !DILocation(line: 1159, column: 14, scope: !3597)
!3602 = !DILocation(line: 1160, column: 5, scope: !3597)
!3603 = !DILocation(line: 1161, column: 9, scope: !3592)
!3604 = !DILocation(line: 1163, column: 15, scope: !3531)
!3605 = !DILocation(line: 1163, column: 28, scope: !3531)
!3606 = !DILocation(line: 1163, column: 39, scope: !3531)
!3607 = !DILocation(line: 1163, column: 45, scope: !3531)
!3608 = !DILocation(line: 1163, column: 5, scope: !3531)
!3609 = !DILocation(line: 1164, column: 1, scope: !3531)
!3610 = !DISubprogram(name: "IT_enumerate", scope: !712, file: !712, line: 67, type: !3611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !710, !264, !264, !229, !3613}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !716, !229}
!3616 = distinct !DISubprogram(name: "check_cycle", scope: !2, file: !2, line: 1167, type: !3614, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3629}
!3618 = !DILocalVariable(name: "node", arg: 1, scope: !3616, file: !2, line: 1167, type: !716)
!3619 = !DILocalVariable(name: "d", arg: 2, scope: !3616, file: !2, line: 1167, type: !229)
!3620 = !DILocalVariable(name: "optd", scope: !3616, file: !2, line: 1169, type: !639)
!3621 = !DILocalVariable(name: "term", scope: !3616, file: !2, line: 1170, type: !663)
!3622 = !DILocalVariable(name: "depspan", scope: !3616, file: !2, line: 1171, type: !670)
!3623 = !DILocalVariable(name: "i", scope: !3616, file: !2, line: 1172, type: !205)
!3624 = !DILocalVariable(name: "depspan_bt_alloc", scope: !3616, file: !2, line: 1173, type: !205)
!3625 = !DILocalVariable(name: "present", scope: !3626, file: !2, line: 1207, type: !205)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !2, line: 1206, column: 50)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !2, line: 1206, column: 5)
!3628 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 1206, column: 5)
!3629 = !DILocalVariable(name: "j", scope: !3626, file: !2, line: 1208, type: !205)
!3630 = !DILocation(line: 1167, column: 31, scope: !3616)
!3631 = !DILocation(line: 1167, column: 43, scope: !3616)
!3632 = !DILocation(line: 1169, column: 5, scope: !3616)
!3633 = !DILocation(line: 1169, column: 20, scope: !3616)
!3634 = !DILocation(line: 1169, column: 27, scope: !3616)
!3635 = !DILocation(line: 1170, column: 5, scope: !3616)
!3636 = !DILocation(line: 1170, column: 21, scope: !3616)
!3637 = !DILocation(line: 1170, column: 28, scope: !3616)
!3638 = !DILocation(line: 1170, column: 34, scope: !3616)
!3639 = !{!3640, !899, i64 24}
!3640 = !{!"IntervalTreeNode", !899, i64 0, !899, i64 8, !899, i64 16, !899, i64 24, !1209, i64 32, !1209, i64 40, !1209, i64 48, !984, i64 56}
!3641 = !DILocation(line: 1171, column: 5, scope: !3616)
!3642 = !DILocation(line: 1171, column: 16, scope: !3616)
!3643 = !DILocation(line: 1171, column: 26, scope: !3616)
!3644 = !DILocation(line: 1171, column: 32, scope: !3616)
!3645 = !DILocation(line: 1172, column: 5, scope: !3616)
!3646 = !DILocation(line: 1172, column: 9, scope: !3616)
!3647 = !DILocation(line: 1173, column: 5, scope: !3616)
!3648 = !DILocation(line: 1173, column: 9, scope: !3616)
!3649 = !DILocation(line: 1176, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 1176, column: 9)
!3651 = !DILocation(line: 1176, column: 18, scope: !3650)
!3652 = !DILocation(line: 1176, column: 21, scope: !3650)
!3653 = !DILocation(line: 1176, column: 9, scope: !3616)
!3654 = !DILocation(line: 1177, column: 9, scope: !3650)
!3655 = !DILocation(line: 1182, column: 9, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 1182, column: 9)
!3657 = !DILocation(line: 1182, column: 15, scope: !3656)
!3658 = !DILocation(line: 1182, column: 21, scope: !3656)
!3659 = !DILocation(line: 1182, column: 9, scope: !3616)
!3660 = !DILocation(line: 1183, column: 15, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 1183, column: 9)
!3662 = distinct !DILexicalBlock(scope: !3656, file: !2, line: 1182, column: 32)
!3663 = !DILocation(line: 1183, column: 14, scope: !3661)
!3664 = !DILocation(line: 1183, column: 19, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !2, line: 1183, column: 9)
!3666 = !DILocation(line: 1183, column: 21, scope: !3665)
!3667 = !DILocation(line: 1183, column: 27, scope: !3665)
!3668 = !DILocation(line: 1183, column: 33, scope: !3665)
!3669 = !{!2316, !984, i64 144}
!3670 = !DILocation(line: 1183, column: 20, scope: !3665)
!3671 = !DILocation(line: 1183, column: 9, scope: !3661)
!3672 = !DILocation(line: 1184, column: 17, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !2, line: 1184, column: 17)
!3674 = distinct !DILexicalBlock(scope: !3665, file: !2, line: 1183, column: 54)
!3675 = !DILocation(line: 1184, column: 23, scope: !3673)
!3676 = !DILocation(line: 1184, column: 29, scope: !3673)
!3677 = !DILocation(line: 1184, column: 39, scope: !3673)
!3678 = !DILocation(line: 1184, column: 45, scope: !3673)
!3679 = !DILocation(line: 1184, column: 42, scope: !3673)
!3680 = !DILocation(line: 1184, column: 17, scope: !3674)
!3681 = !DILocation(line: 1185, column: 17, scope: !3673)
!3682 = !DILocation(line: 1187, column: 9, scope: !3674)
!3683 = !DILocation(line: 1183, column: 50, scope: !3665)
!3684 = !DILocation(line: 1183, column: 9, scope: !3665)
!3685 = distinct !{!3685, !3671, !3686, !1027}
!3686 = !DILocation(line: 1187, column: 9, scope: !3661)
!3687 = !DILocation(line: 1188, column: 5, scope: !3662)
!3688 = !DILocation(line: 1193, column: 10, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 1193, column: 9)
!3690 = !DILocation(line: 1193, column: 19, scope: !3689)
!3691 = !DILocation(line: 1193, column: 9, scope: !3616)
!3692 = !DILocation(line: 1194, column: 30, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3689, file: !2, line: 1193, column: 30)
!3694 = !DILocation(line: 1194, column: 44, scope: !3693)
!3695 = !DILocation(line: 1194, column: 50, scope: !3693)
!3696 = !DILocation(line: 1194, column: 56, scope: !3693)
!3697 = !DILocation(line: 1194, column: 70, scope: !3693)
!3698 = !DILocation(line: 1194, column: 43, scope: !3693)
!3699 = !DILocation(line: 1194, column: 73, scope: !3693)
!3700 = !DILocation(line: 1194, column: 9, scope: !3693)
!3701 = !DILocation(line: 1194, column: 18, scope: !3693)
!3702 = !DILocation(line: 1194, column: 28, scope: !3693)
!3703 = !DILocation(line: 1196, column: 13, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3693, file: !2, line: 1196, column: 13)
!3705 = !DILocation(line: 1196, column: 19, scope: !3704)
!3706 = !DILocation(line: 1196, column: 25, scope: !3704)
!3707 = !DILocation(line: 1196, column: 40, scope: !3704)
!3708 = !DILocation(line: 1196, column: 13, scope: !3693)
!3709 = !DILocation(line: 1197, column: 20, scope: !3704)
!3710 = !DILocation(line: 1197, column: 29, scope: !3704)
!3711 = !DILocation(line: 1197, column: 40, scope: !3704)
!3712 = !DILocation(line: 1197, column: 46, scope: !3704)
!3713 = !DILocation(line: 1197, column: 52, scope: !3704)
!3714 = !DILocation(line: 1198, column: 20, scope: !3704)
!3715 = !DILocation(line: 1198, column: 26, scope: !3704)
!3716 = !DILocation(line: 1198, column: 32, scope: !3704)
!3717 = !DILocation(line: 1198, column: 46, scope: !3704)
!3718 = !DILocation(line: 1197, column: 13, scope: !3704)
!3719 = !DILocation(line: 1199, column: 58, scope: !3693)
!3720 = !DILocation(line: 1199, column: 64, scope: !3693)
!3721 = !DILocation(line: 1199, column: 9, scope: !3693)
!3722 = !DILocation(line: 1199, column: 18, scope: !3693)
!3723 = !DILocation(line: 1199, column: 28, scope: !3693)
!3724 = !DILocation(line: 1199, column: 34, scope: !3693)
!3725 = !DILocation(line: 1199, column: 40, scope: !3693)
!3726 = !DILocation(line: 1199, column: 56, scope: !3693)
!3727 = !DILocation(line: 1200, column: 35, scope: !3693)
!3728 = !DILocation(line: 1200, column: 41, scope: !3693)
!3729 = !DILocation(line: 1200, column: 47, scope: !3693)
!3730 = !DILocation(line: 1200, column: 61, scope: !3693)
!3731 = !DILocation(line: 1200, column: 9, scope: !3693)
!3732 = !DILocation(line: 1200, column: 18, scope: !3693)
!3733 = !DILocation(line: 1200, column: 33, scope: !3693)
!3734 = !DILocation(line: 1201, column: 9, scope: !3693)
!3735 = !DILocation(line: 1205, column: 24, scope: !3616)
!3736 = !DILocation(line: 1205, column: 33, scope: !3616)
!3737 = !DILocation(line: 1205, column: 22, scope: !3616)
!3738 = !DILocation(line: 1206, column: 11, scope: !3628)
!3739 = !DILocation(line: 1206, column: 10, scope: !3628)
!3740 = !DILocation(line: 1206, column: 15, scope: !3627)
!3741 = !DILocation(line: 1206, column: 17, scope: !3627)
!3742 = !DILocation(line: 1206, column: 23, scope: !3627)
!3743 = !DILocation(line: 1206, column: 29, scope: !3627)
!3744 = !DILocation(line: 1206, column: 16, scope: !3627)
!3745 = !DILocation(line: 1206, column: 5, scope: !3628)
!3746 = !DILocation(line: 1207, column: 9, scope: !3626)
!3747 = !DILocation(line: 1207, column: 13, scope: !3626)
!3748 = !DILocation(line: 1208, column: 9, scope: !3626)
!3749 = !DILocation(line: 1208, column: 13, scope: !3626)
!3750 = !DILocation(line: 1209, column: 15, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 1209, column: 9)
!3752 = !DILocation(line: 1209, column: 14, scope: !3751)
!3753 = !DILocation(line: 1209, column: 19, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !2, line: 1209, column: 9)
!3755 = !DILocation(line: 1209, column: 21, scope: !3754)
!3756 = !DILocation(line: 1209, column: 30, scope: !3754)
!3757 = !DILocation(line: 1209, column: 20, scope: !3754)
!3758 = !DILocation(line: 1209, column: 9, scope: !3751)
!3759 = !DILocation(line: 1210, column: 17, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !2, line: 1210, column: 17)
!3761 = distinct !DILexicalBlock(scope: !3754, file: !2, line: 1209, column: 51)
!3762 = !DILocation(line: 1210, column: 23, scope: !3760)
!3763 = !DILocation(line: 1210, column: 29, scope: !3760)
!3764 = !DILocation(line: 1210, column: 39, scope: !3760)
!3765 = !DILocation(line: 1210, column: 45, scope: !3760)
!3766 = !DILocation(line: 1210, column: 51, scope: !3760)
!3767 = !DILocation(line: 1210, column: 57, scope: !3760)
!3768 = !DILocation(line: 1210, column: 67, scope: !3760)
!3769 = !DILocation(line: 1210, column: 42, scope: !3760)
!3770 = !DILocation(line: 1210, column: 17, scope: !3761)
!3771 = !DILocation(line: 1211, column: 25, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3760, file: !2, line: 1210, column: 71)
!3773 = !DILocation(line: 1212, column: 17, scope: !3772)
!3774 = !DILocation(line: 1214, column: 9, scope: !3761)
!3775 = !DILocation(line: 1209, column: 47, scope: !3754)
!3776 = !DILocation(line: 1209, column: 9, scope: !3754)
!3777 = distinct !{!3777, !3758, !3778, !1027}
!3778 = !DILocation(line: 1214, column: 9, scope: !3751)
!3779 = !DILocation(line: 1215, column: 13, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 1215, column: 13)
!3781 = !DILocation(line: 1215, column: 13, scope: !3626)
!3782 = !DILocation(line: 1216, column: 13, scope: !3780)
!3783 = !DILocation(line: 1218, column: 13, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 1218, column: 13)
!3785 = !DILocation(line: 1218, column: 22, scope: !3784)
!3786 = !DILocation(line: 1218, column: 40, scope: !3784)
!3787 = !DILocation(line: 1218, column: 37, scope: !3784)
!3788 = !DILocation(line: 1218, column: 13, scope: !3626)
!3789 = !DILocation(line: 1220, column: 30, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3784, file: !2, line: 1219, column: 9)
!3791 = !DILocation(line: 1222, column: 17, scope: !3790)
!3792 = !DILocation(line: 1222, column: 31, scope: !3790)
!3793 = !DILocation(line: 1222, column: 40, scope: !3790)
!3794 = !DILocation(line: 1223, column: 31, scope: !3790)
!3795 = !DILocation(line: 1223, column: 47, scope: !3790)
!3796 = !DILocation(line: 1221, column: 13, scope: !3790)
!3797 = !DILocation(line: 1221, column: 22, scope: !3790)
!3798 = !DILocation(line: 1221, column: 32, scope: !3790)
!3799 = !DILocation(line: 1224, column: 9, scope: !3790)
!3800 = !DILocation(line: 1225, column: 55, scope: !3626)
!3801 = !DILocation(line: 1225, column: 61, scope: !3626)
!3802 = !DILocation(line: 1225, column: 67, scope: !3626)
!3803 = !DILocation(line: 1225, column: 77, scope: !3626)
!3804 = !DILocation(line: 1225, column: 9, scope: !3626)
!3805 = !DILocation(line: 1225, column: 18, scope: !3626)
!3806 = !DILocation(line: 1225, column: 28, scope: !3626)
!3807 = !DILocation(line: 1225, column: 37, scope: !3626)
!3808 = !DILocation(line: 1225, column: 53, scope: !3626)
!3809 = !DILocation(line: 1226, column: 9, scope: !3626)
!3810 = !DILocation(line: 1226, column: 18, scope: !3626)
!3811 = !DILocation(line: 1226, column: 32, scope: !3626)
!3812 = !DILocation(line: 1227, column: 5, scope: !3627)
!3813 = !DILocation(line: 1227, column: 5, scope: !3626)
!3814 = !DILocation(line: 1206, column: 46, scope: !3627)
!3815 = !DILocation(line: 1206, column: 5, scope: !3627)
!3816 = distinct !{!3816, !3745, !3817, !1027}
!3817 = !DILocation(line: 1227, column: 5, scope: !3628)
!3818 = !DILocation(line: 1230, column: 9, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 1230, column: 9)
!3820 = !DILocation(line: 1230, column: 18, scope: !3819)
!3821 = !DILocation(line: 1230, column: 36, scope: !3819)
!3822 = !DILocation(line: 1230, column: 33, scope: !3819)
!3823 = !DILocation(line: 1230, column: 9, scope: !3616)
!3824 = !DILocation(line: 1232, column: 25, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3819, file: !2, line: 1231, column: 5)
!3826 = !DILocation(line: 1234, column: 13, scope: !3825)
!3827 = !DILocation(line: 1234, column: 27, scope: !3825)
!3828 = !DILocation(line: 1234, column: 36, scope: !3825)
!3829 = !DILocation(line: 1235, column: 27, scope: !3825)
!3830 = !DILocation(line: 1235, column: 43, scope: !3825)
!3831 = !DILocation(line: 1233, column: 9, scope: !3825)
!3832 = !DILocation(line: 1233, column: 18, scope: !3825)
!3833 = !DILocation(line: 1233, column: 28, scope: !3825)
!3834 = !DILocation(line: 1236, column: 5, scope: !3825)
!3835 = !DILocation(line: 1237, column: 51, scope: !3616)
!3836 = !DILocation(line: 1237, column: 57, scope: !3616)
!3837 = !DILocation(line: 1237, column: 5, scope: !3616)
!3838 = !DILocation(line: 1237, column: 14, scope: !3616)
!3839 = !DILocation(line: 1237, column: 24, scope: !3616)
!3840 = !DILocation(line: 1237, column: 33, scope: !3616)
!3841 = !DILocation(line: 1237, column: 49, scope: !3616)
!3842 = !DILocation(line: 1238, column: 5, scope: !3616)
!3843 = !DILocation(line: 1238, column: 14, scope: !3616)
!3844 = !DILocation(line: 1238, column: 28, scope: !3616)
!3845 = !DILocation(line: 1239, column: 1, scope: !3616)
!3846 = distinct !DISubprogram(name: "optimize_term_expand", scope: !2, file: !2, line: 1242, type: !3614, scopeLine: 1243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3848 = !DILocalVariable(name: "node", arg: 1, scope: !3846, file: !2, line: 1242, type: !716)
!3849 = !DILocalVariable(name: "d", arg: 2, scope: !3846, file: !2, line: 1242, type: !229)
!3850 = !DILocalVariable(name: "optd", scope: !3846, file: !2, line: 1244, type: !639)
!3851 = !DILocalVariable(name: "term", scope: !3846, file: !2, line: 1245, type: !663)
!3852 = !DILocalVariable(name: "span", scope: !3846, file: !2, line: 1246, type: !670)
!3853 = !DILocalVariable(name: "len_diff", scope: !3846, file: !2, line: 1247, type: !264)
!3854 = !DILocalVariable(name: "precbc_index", scope: !3846, file: !2, line: 1248, type: !264)
!3855 = !DILocalVariable(name: "precbc2_index", scope: !3846, file: !2, line: 1248, type: !264)
!3856 = !DILocation(line: 1242, column: 40, scope: !3846)
!3857 = !DILocation(line: 1242, column: 52, scope: !3846)
!3858 = !DILocation(line: 1244, column: 5, scope: !3846)
!3859 = !DILocation(line: 1244, column: 20, scope: !3846)
!3860 = !DILocation(line: 1244, column: 27, scope: !3846)
!3861 = !DILocation(line: 1245, column: 5, scope: !3846)
!3862 = !DILocation(line: 1245, column: 21, scope: !3846)
!3863 = !DILocation(line: 1245, column: 28, scope: !3846)
!3864 = !DILocation(line: 1245, column: 34, scope: !3846)
!3865 = !DILocation(line: 1246, column: 5, scope: !3846)
!3866 = !DILocation(line: 1246, column: 16, scope: !3846)
!3867 = !DILocation(line: 1246, column: 23, scope: !3846)
!3868 = !DILocation(line: 1246, column: 29, scope: !3846)
!3869 = !DILocation(line: 1247, column: 5, scope: !3846)
!3870 = !DILocation(line: 1247, column: 10, scope: !3846)
!3871 = !DILocation(line: 1247, column: 21, scope: !3846)
!3872 = !DILocation(line: 1247, column: 27, scope: !3846)
!3873 = !DILocation(line: 1248, column: 5, scope: !3846)
!3874 = !DILocation(line: 1248, column: 10, scope: !3846)
!3875 = !DILocation(line: 1248, column: 24, scope: !3846)
!3876 = !DILocation(line: 1251, column: 10, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1251, column: 9)
!3878 = !DILocation(line: 1251, column: 16, scope: !3877)
!3879 = !DILocation(line: 1251, column: 9, scope: !3846)
!3880 = !DILocation(line: 1252, column: 9, scope: !3877)
!3881 = !DILocation(line: 1255, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1255, column: 9)
!3883 = !DILocation(line: 1255, column: 15, scope: !3882)
!3884 = !DILocation(line: 1255, column: 9, scope: !3846)
!3885 = !DILocation(line: 1256, column: 24, scope: !3882)
!3886 = !DILocation(line: 1256, column: 30, scope: !3882)
!3887 = !DILocation(line: 1256, column: 38, scope: !3882)
!3888 = !DILocation(line: 1256, column: 22, scope: !3882)
!3889 = !DILocation(line: 1256, column: 9, scope: !3882)
!3890 = !DILocation(line: 1258, column: 24, scope: !3882)
!3891 = !DILocation(line: 1258, column: 30, scope: !3882)
!3892 = !DILocation(line: 1258, column: 34, scope: !3882)
!3893 = !DILocation(line: 1258, column: 42, scope: !3882)
!3894 = !DILocation(line: 1258, column: 22, scope: !3882)
!3895 = !DILocation(line: 1260, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1260, column: 9)
!3897 = !DILocation(line: 1260, column: 15, scope: !3896)
!3898 = !DILocation(line: 1260, column: 9, scope: !3846)
!3899 = !DILocation(line: 1261, column: 25, scope: !3896)
!3900 = !DILocation(line: 1261, column: 31, scope: !3896)
!3901 = !DILocation(line: 1261, column: 40, scope: !3896)
!3902 = !DILocation(line: 1261, column: 23, scope: !3896)
!3903 = !DILocation(line: 1261, column: 9, scope: !3896)
!3904 = !DILocation(line: 1263, column: 25, scope: !3896)
!3905 = !DILocation(line: 1263, column: 31, scope: !3896)
!3906 = !DILocation(line: 1263, column: 35, scope: !3896)
!3907 = !DILocation(line: 1263, column: 43, scope: !3896)
!3908 = !DILocation(line: 1263, column: 23, scope: !3896)
!3909 = !DILocation(line: 1265, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1265, column: 9)
!3911 = !DILocation(line: 1265, column: 24, scope: !3910)
!3912 = !DILocation(line: 1265, column: 22, scope: !3910)
!3913 = !DILocation(line: 1265, column: 9, scope: !3846)
!3914 = !DILocation(line: 1266, column: 26, scope: !3910)
!3915 = !DILocation(line: 1266, column: 9, scope: !3910)
!3916 = !DILocation(line: 1266, column: 15, scope: !3910)
!3917 = !DILocation(line: 1266, column: 23, scope: !3910)
!3918 = !DILocation(line: 1268, column: 26, scope: !3910)
!3919 = !DILocation(line: 1268, column: 9, scope: !3910)
!3920 = !DILocation(line: 1268, column: 15, scope: !3910)
!3921 = !DILocation(line: 1268, column: 23, scope: !3910)
!3922 = !DILocation(line: 1271, column: 9, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1271, column: 9)
!3924 = !DILocation(line: 1271, column: 15, scope: !3923)
!3925 = !DILocation(line: 1271, column: 22, scope: !3923)
!3926 = !DILocation(line: 1271, column: 9, scope: !3846)
!3927 = !DILocation(line: 1272, column: 9, scope: !3923)
!3928 = !DILocation(line: 1275, column: 29, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1275, column: 9)
!3930 = !DILocation(line: 1275, column: 10, scope: !3929)
!3931 = !DILocation(line: 1275, column: 9, scope: !3846)
!3932 = !DILocation(line: 1276, column: 9, scope: !3929)
!3933 = !DILocation(line: 1279, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1279, column: 9)
!3935 = !DILocation(line: 1279, column: 15, scope: !3934)
!3936 = !DILocation(line: 1279, column: 18, scope: !3934)
!3937 = !DILocation(line: 1279, column: 9, scope: !3846)
!3938 = !DILocation(line: 1280, column: 9, scope: !3934)
!3939 = !DILocation(line: 1280, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 1280, column: 9)
!3941 = !DILocation(line: 1282, column: 9, scope: !3934)
!3942 = !DILocation(line: 1282, column: 9, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 1282, column: 9)
!3944 = !DILocation(line: 1283, column: 5, scope: !3846)
!3945 = !DILocation(line: 1283, column: 11, scope: !3846)
!3946 = !DILocation(line: 1283, column: 18, scope: !3846)
!3947 = !DILocation(line: 1284, column: 1, scope: !3846)
!3948 = !DISubprogram(name: "HAMT_insert", scope: !423, file: !423, line: 78, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!229, !1095, !145, !229, !1249, !226}
!3951 = distinct !DISubprogram(name: "directive_level2_delete", scope: !2, file: !2, line: 176, type: !227, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3952)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "data", arg: 1, scope: !3951, file: !2, line: 176, type: !229)
!3954 = !DILocation(line: 176, column: 42, scope: !3951)
!3955 = !DILocation(line: 178, column: 5, scope: !3951)
!3956 = !DILocation(line: 178, column: 16, scope: !3951)
!3957 = !DILocation(line: 179, column: 1, scope: !3951)
!3958 = distinct !DISubprogram(name: "dir_extern", scope: !2, file: !2, line: 94, type: !158, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !3959)
!3959 = !{!3960, !3961, !3962, !3963, !3964, !3967, !3968}
!3960 = !DILocalVariable(name: "object", arg: 1, scope: !3958, file: !2, line: 94, type: !160)
!3961 = !DILocalVariable(name: "valparams", arg: 2, scope: !3958, file: !2, line: 94, type: !426)
!3962 = !DILocalVariable(name: "objext_valparams", arg: 3, scope: !3958, file: !2, line: 95, type: !426)
!3963 = !DILocalVariable(name: "line", arg: 4, scope: !3958, file: !2, line: 95, type: !202)
!3964 = !DILocalVariable(name: "vp", scope: !3958, file: !2, line: 97, type: !3965)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_valparam", file: !24, line: 197, baseType: !432)
!3967 = !DILocalVariable(name: "sym", scope: !3958, file: !2, line: 98, type: !335)
!3968 = !DILocalVariable(name: "vps", scope: !3969, file: !2, line: 102, type: !426)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !2, line: 101, column: 27)
!3970 = distinct !DILexicalBlock(scope: !3958, file: !2, line: 101, column: 9)
!3971 = !DILocation(line: 94, column: 25, scope: !3958)
!3972 = !DILocation(line: 94, column: 52, scope: !3958)
!3973 = !DILocation(line: 95, column: 31, scope: !3958)
!3974 = !DILocation(line: 95, column: 63, scope: !3958)
!3975 = !DILocation(line: 97, column: 5, scope: !3958)
!3976 = !DILocation(line: 97, column: 20, scope: !3958)
!3977 = !DILocation(line: 97, column: 25, scope: !3958)
!3978 = !{!3979, !899, i64 0}
!3979 = !{!"yasm_valparamhead", !899, i64 0, !899, i64 8}
!3980 = !DILocation(line: 98, column: 5, scope: !3958)
!3981 = !DILocation(line: 98, column: 18, scope: !3958)
!3982 = !DILocation(line: 99, column: 31, scope: !3958)
!3983 = !DILocation(line: 99, column: 39, scope: !3958)
!3984 = !DILocation(line: 99, column: 58, scope: !3958)
!3985 = !DILocation(line: 99, column: 47, scope: !3958)
!3986 = !DILocation(line: 100, column: 31, scope: !3958)
!3987 = !DILocation(line: 99, column: 11, scope: !3958)
!3988 = !DILocation(line: 99, column: 9, scope: !3958)
!3989 = !DILocation(line: 101, column: 9, scope: !3970)
!3990 = !DILocation(line: 101, column: 9, scope: !3958)
!3991 = !DILocation(line: 102, column: 9, scope: !3969)
!3992 = !DILocation(line: 102, column: 28, scope: !3969)
!3993 = !DILocation(line: 102, column: 34, scope: !3969)
!3994 = !DILocation(line: 103, column: 10, scope: !3969)
!3995 = !DILocation(line: 103, column: 17, scope: !3969)
!3996 = !DILocation(line: 103, column: 16, scope: !3969)
!3997 = !{i64 0, i64 8, !898, i64 8, i64 8, !898}
!3998 = !DILocation(line: 104, column: 9, scope: !3969)
!3999 = !DILocation(line: 104, column: 9, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3969, file: !2, line: 104, column: 9)
!4001 = !{!3979, !899, i64 8}
!4002 = !DILocation(line: 105, column: 42, scope: !3969)
!4003 = !DILocation(line: 105, column: 47, scope: !3969)
!4004 = !DILocation(line: 105, column: 9, scope: !3969)
!4005 = !DILocation(line: 106, column: 5, scope: !3970)
!4006 = !DILocation(line: 106, column: 5, scope: !3969)
!4007 = !DILocation(line: 107, column: 1, scope: !3958)
!4008 = distinct !DISubprogram(name: "dir_global", scope: !2, file: !2, line: 110, type: !158, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016}
!4010 = !DILocalVariable(name: "object", arg: 1, scope: !4008, file: !2, line: 110, type: !160)
!4011 = !DILocalVariable(name: "valparams", arg: 2, scope: !4008, file: !2, line: 110, type: !426)
!4012 = !DILocalVariable(name: "objext_valparams", arg: 3, scope: !4008, file: !2, line: 111, type: !426)
!4013 = !DILocalVariable(name: "line", arg: 4, scope: !4008, file: !2, line: 111, type: !202)
!4014 = !DILocalVariable(name: "vp", scope: !4008, file: !2, line: 113, type: !3965)
!4015 = !DILocalVariable(name: "sym", scope: !4008, file: !2, line: 114, type: !335)
!4016 = !DILocalVariable(name: "vps", scope: !4017, file: !2, line: 118, type: !426)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !2, line: 117, column: 27)
!4018 = distinct !DILexicalBlock(scope: !4008, file: !2, line: 117, column: 9)
!4019 = !DILocation(line: 110, column: 25, scope: !4008)
!4020 = !DILocation(line: 110, column: 52, scope: !4008)
!4021 = !DILocation(line: 111, column: 31, scope: !4008)
!4022 = !DILocation(line: 111, column: 63, scope: !4008)
!4023 = !DILocation(line: 113, column: 5, scope: !4008)
!4024 = !DILocation(line: 113, column: 20, scope: !4008)
!4025 = !DILocation(line: 113, column: 25, scope: !4008)
!4026 = !DILocation(line: 114, column: 5, scope: !4008)
!4027 = !DILocation(line: 114, column: 18, scope: !4008)
!4028 = !DILocation(line: 115, column: 31, scope: !4008)
!4029 = !DILocation(line: 115, column: 39, scope: !4008)
!4030 = !DILocation(line: 115, column: 58, scope: !4008)
!4031 = !DILocation(line: 115, column: 47, scope: !4008)
!4032 = !DILocation(line: 116, column: 31, scope: !4008)
!4033 = !DILocation(line: 115, column: 11, scope: !4008)
!4034 = !DILocation(line: 115, column: 9, scope: !4008)
!4035 = !DILocation(line: 117, column: 9, scope: !4018)
!4036 = !DILocation(line: 117, column: 9, scope: !4008)
!4037 = !DILocation(line: 118, column: 9, scope: !4017)
!4038 = !DILocation(line: 118, column: 28, scope: !4017)
!4039 = !DILocation(line: 118, column: 34, scope: !4017)
!4040 = !DILocation(line: 119, column: 10, scope: !4017)
!4041 = !DILocation(line: 119, column: 17, scope: !4017)
!4042 = !DILocation(line: 119, column: 16, scope: !4017)
!4043 = !DILocation(line: 120, column: 9, scope: !4017)
!4044 = !DILocation(line: 120, column: 9, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4017, file: !2, line: 120, column: 9)
!4046 = !DILocation(line: 121, column: 42, scope: !4017)
!4047 = !DILocation(line: 121, column: 47, scope: !4017)
!4048 = !DILocation(line: 121, column: 9, scope: !4017)
!4049 = !DILocation(line: 122, column: 5, scope: !4018)
!4050 = !DILocation(line: 122, column: 5, scope: !4017)
!4051 = !DILocation(line: 123, column: 1, scope: !4008)
!4052 = distinct !DISubprogram(name: "dir_common", scope: !2, file: !2, line: 126, type: !158, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062}
!4054 = !DILocalVariable(name: "object", arg: 1, scope: !4052, file: !2, line: 126, type: !160)
!4055 = !DILocalVariable(name: "valparams", arg: 2, scope: !4052, file: !2, line: 126, type: !426)
!4056 = !DILocalVariable(name: "objext_valparams", arg: 3, scope: !4052, file: !2, line: 127, type: !426)
!4057 = !DILocalVariable(name: "line", arg: 4, scope: !4052, file: !2, line: 127, type: !202)
!4058 = !DILocalVariable(name: "vp", scope: !4052, file: !2, line: 129, type: !3965)
!4059 = !DILocalVariable(name: "vp2", scope: !4052, file: !2, line: 130, type: !3965)
!4060 = !DILocalVariable(name: "size", scope: !4052, file: !2, line: 131, type: !315)
!4061 = !DILocalVariable(name: "sym", scope: !4052, file: !2, line: 132, type: !335)
!4062 = !DILocalVariable(name: "vps", scope: !4063, file: !2, line: 143, type: !426)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !2, line: 142, column: 27)
!4064 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 142, column: 9)
!4065 = !DILocation(line: 126, column: 25, scope: !4052)
!4066 = !DILocation(line: 126, column: 52, scope: !4052)
!4067 = !DILocation(line: 127, column: 31, scope: !4052)
!4068 = !DILocation(line: 127, column: 63, scope: !4052)
!4069 = !DILocation(line: 129, column: 5, scope: !4052)
!4070 = !DILocation(line: 129, column: 20, scope: !4052)
!4071 = !DILocation(line: 129, column: 25, scope: !4052)
!4072 = !DILocation(line: 130, column: 5, scope: !4052)
!4073 = !DILocation(line: 130, column: 20, scope: !4052)
!4074 = !DILocation(line: 130, column: 26, scope: !4052)
!4075 = !{!4076, !899, i64 0}
!4076 = !{!"yasm_valparam", !1208, i64 0, !899, i64 8, !900, i64 16, !900, i64 24, !900, i64 32}
!4077 = !DILocation(line: 131, column: 5, scope: !4052)
!4078 = !DILocation(line: 131, column: 16, scope: !4052)
!4079 = !DILocation(line: 131, column: 36, scope: !4052)
!4080 = !DILocation(line: 131, column: 41, scope: !4052)
!4081 = !DILocation(line: 131, column: 49, scope: !4052)
!4082 = !DILocation(line: 131, column: 57, scope: !4052)
!4083 = !DILocation(line: 131, column: 23, scope: !4052)
!4084 = !DILocation(line: 132, column: 5, scope: !4052)
!4085 = !DILocation(line: 132, column: 18, scope: !4052)
!4086 = !DILocation(line: 134, column: 10, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 134, column: 9)
!4088 = !DILocation(line: 134, column: 9, scope: !4052)
!4089 = !DILocation(line: 135, column: 9, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4087, file: !2, line: 134, column: 16)
!4091 = !DILocation(line: 137, column: 9, scope: !4090)
!4092 = !DILocation(line: 139, column: 31, scope: !4052)
!4093 = !DILocation(line: 139, column: 39, scope: !4052)
!4094 = !DILocation(line: 139, column: 58, scope: !4052)
!4095 = !DILocation(line: 139, column: 47, scope: !4052)
!4096 = !DILocation(line: 140, column: 31, scope: !4052)
!4097 = !DILocation(line: 139, column: 11, scope: !4052)
!4098 = !DILocation(line: 139, column: 9, scope: !4052)
!4099 = !DILocation(line: 141, column: 33, scope: !4052)
!4100 = !DILocation(line: 141, column: 38, scope: !4052)
!4101 = !DILocation(line: 141, column: 5, scope: !4052)
!4102 = !DILocation(line: 142, column: 9, scope: !4064)
!4103 = !DILocation(line: 142, column: 9, scope: !4052)
!4104 = !DILocation(line: 143, column: 9, scope: !4063)
!4105 = !DILocation(line: 143, column: 28, scope: !4063)
!4106 = !DILocation(line: 143, column: 34, scope: !4063)
!4107 = !DILocation(line: 144, column: 10, scope: !4063)
!4108 = !DILocation(line: 144, column: 17, scope: !4063)
!4109 = !DILocation(line: 144, column: 16, scope: !4063)
!4110 = !DILocation(line: 145, column: 9, scope: !4063)
!4111 = !DILocation(line: 145, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4063, file: !2, line: 145, column: 9)
!4113 = !DILocation(line: 146, column: 42, scope: !4063)
!4114 = !DILocation(line: 146, column: 47, scope: !4063)
!4115 = !DILocation(line: 146, column: 9, scope: !4063)
!4116 = !DILocation(line: 147, column: 5, scope: !4064)
!4117 = !DILocation(line: 147, column: 5, scope: !4063)
!4118 = !DILocation(line: 148, column: 1, scope: !4052)
!4119 = distinct !DISubprogram(name: "dir_section", scope: !2, file: !2, line: 151, type: !158, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125}
!4121 = !DILocalVariable(name: "object", arg: 1, scope: !4119, file: !2, line: 151, type: !160)
!4122 = !DILocalVariable(name: "valparams", arg: 2, scope: !4119, file: !2, line: 151, type: !426)
!4123 = !DILocalVariable(name: "objext_valparams", arg: 3, scope: !4119, file: !2, line: 152, type: !426)
!4124 = !DILocalVariable(name: "line", arg: 4, scope: !4119, file: !2, line: 152, type: !202)
!4125 = !DILocalVariable(name: "new_section", scope: !4119, file: !2, line: 154, type: !185)
!4126 = !DILocation(line: 151, column: 26, scope: !4119)
!4127 = !DILocation(line: 151, column: 53, scope: !4119)
!4128 = !DILocation(line: 152, column: 32, scope: !4119)
!4129 = !DILocation(line: 152, column: 64, scope: !4119)
!4130 = !DILocation(line: 154, column: 5, scope: !4119)
!4131 = !DILocation(line: 154, column: 19, scope: !4119)
!4132 = !DILocation(line: 155, column: 9, scope: !4119)
!4133 = !{!964, !899, i64 104}
!4134 = !DILocation(line: 156, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4119, file: !2, line: 156, column: 9)
!4136 = !DILocation(line: 156, column: 9, scope: !4119)
!4137 = !DILocation(line: 157, column: 31, scope: !4135)
!4138 = !DILocation(line: 157, column: 9, scope: !4135)
!4139 = !DILocation(line: 157, column: 17, scope: !4135)
!4140 = !DILocation(line: 157, column: 29, scope: !4135)
!4141 = !DILocation(line: 159, column: 9, scope: !4135)
!4142 = !DILocation(line: 161, column: 1, scope: !4119)
!4143 = !DISubprogram(name: "yasm_symtab_declare", scope: !127, file: !127, line: 175, type: !4144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!335, !169, !145, !4146, !202}
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_sym_vis", file: !127, line: 58, baseType: !126)
!4147 = !DISubprogram(name: "yasm_vp_id", scope: !79, file: !79, line: 164, type: !4148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!145, !4150}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3966)
!4152 = !DISubprogram(name: "yasm_vps_create", scope: !79, file: !79, line: 170, type: !4153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!426}
!4155 = !DISubprogram(name: "yasm_symrec_set_objext_valparams", scope: !127, file: !127, line: 380, type: !4156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !335, !426}
!4158 = !DISubprogram(name: "yasm_vp_expr", scope: !79, file: !79, line: 146, type: !4159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!315, !4150, !169, !202}
!4161 = !DISubprogram(name: "yasm_symrec_set_common_size", scope: !127, file: !127, line: 397, type: !4162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !335, !315}
!4164 = !DISubprogram(name: "yasm__assoc_data_destroy", scope: !199, file: !199, line: 68, type: !4165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !197}
!4167 = !DISubprogram(name: "yasm_bc_destroy", scope: !72, file: !72, line: 411, type: !4168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{null, !295}
!4170 = distinct !DISubprogram(name: "create_span", scope: !2, file: !2, line: 891, type: !4171, scopeLine: 893, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!670, !295, !205, !309, !264, !264, !689}
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179, !4180}
!4174 = !DILocalVariable(name: "bc", arg: 1, scope: !4170, file: !2, line: 891, type: !295)
!4175 = !DILocalVariable(name: "id", arg: 2, scope: !4170, file: !2, line: 891, type: !205)
!4176 = !DILocalVariable(name: "value", arg: 3, scope: !4170, file: !2, line: 891, type: !309)
!4177 = !DILocalVariable(name: "neg_thres", arg: 4, scope: !4170, file: !2, line: 892, type: !264)
!4178 = !DILocalVariable(name: "pos_thres", arg: 5, scope: !4170, file: !2, line: 892, type: !264)
!4179 = !DILocalVariable(name: "os", arg: 6, scope: !4170, file: !2, line: 892, type: !689)
!4180 = !DILocalVariable(name: "span", scope: !4170, file: !2, line: 894, type: !670)
!4181 = !DILocation(line: 891, column: 28, scope: !4170)
!4182 = !DILocation(line: 891, column: 36, scope: !4170)
!4183 = !DILocation(line: 891, column: 69, scope: !4170)
!4184 = !DILocation(line: 892, column: 18, scope: !4170)
!4185 = !DILocation(line: 892, column: 34, scope: !4170)
!4186 = !DILocation(line: 892, column: 65, scope: !4170)
!4187 = !DILocation(line: 894, column: 5, scope: !4170)
!4188 = !DILocation(line: 894, column: 16, scope: !4170)
!4189 = !DILocation(line: 894, column: 23, scope: !4170)
!4190 = !DILocation(line: 896, column: 16, scope: !4170)
!4191 = !DILocation(line: 896, column: 5, scope: !4170)
!4192 = !DILocation(line: 896, column: 11, scope: !4170)
!4193 = !DILocation(line: 896, column: 14, scope: !4170)
!4194 = !DILocation(line: 897, column: 9, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4170, file: !2, line: 897, column: 9)
!4196 = !DILocation(line: 897, column: 9, scope: !4170)
!4197 = !DILocation(line: 898, column: 31, scope: !4195)
!4198 = !DILocation(line: 898, column: 37, scope: !4195)
!4199 = !DILocation(line: 898, column: 45, scope: !4195)
!4200 = !DILocation(line: 898, column: 9, scope: !4195)
!4201 = !DILocation(line: 900, column: 32, scope: !4195)
!4202 = !DILocation(line: 900, column: 38, scope: !4195)
!4203 = !DILocation(line: 900, column: 9, scope: !4195)
!4204 = !DILocation(line: 901, column: 5, scope: !4170)
!4205 = !DILocation(line: 901, column: 11, scope: !4170)
!4206 = !DILocation(line: 901, column: 20, scope: !4170)
!4207 = !DILocation(line: 902, column: 5, scope: !4170)
!4208 = !DILocation(line: 902, column: 11, scope: !4170)
!4209 = !DILocation(line: 902, column: 17, scope: !4170)
!4210 = !DILocation(line: 903, column: 5, scope: !4170)
!4211 = !DILocation(line: 903, column: 11, scope: !4170)
!4212 = !DILocation(line: 903, column: 17, scope: !4170)
!4213 = !DILocation(line: 904, column: 5, scope: !4170)
!4214 = !DILocation(line: 904, column: 11, scope: !4170)
!4215 = !DILocation(line: 904, column: 21, scope: !4170)
!4216 = !DILocation(line: 905, column: 5, scope: !4170)
!4217 = !DILocation(line: 905, column: 11, scope: !4170)
!4218 = !DILocation(line: 905, column: 19, scope: !4170)
!4219 = !DILocation(line: 906, column: 5, scope: !4170)
!4220 = !DILocation(line: 906, column: 11, scope: !4170)
!4221 = !DILocation(line: 906, column: 19, scope: !4170)
!4222 = !DILocation(line: 907, column: 23, scope: !4170)
!4223 = !DILocation(line: 907, column: 5, scope: !4170)
!4224 = !DILocation(line: 907, column: 11, scope: !4170)
!4225 = !DILocation(line: 907, column: 21, scope: !4170)
!4226 = !DILocation(line: 908, column: 23, scope: !4170)
!4227 = !DILocation(line: 908, column: 5, scope: !4170)
!4228 = !DILocation(line: 908, column: 11, scope: !4170)
!4229 = !DILocation(line: 908, column: 21, scope: !4170)
!4230 = !DILocation(line: 909, column: 16, scope: !4170)
!4231 = !DILocation(line: 909, column: 5, scope: !4170)
!4232 = !DILocation(line: 909, column: 11, scope: !4170)
!4233 = !DILocation(line: 909, column: 14, scope: !4170)
!4234 = !DILocation(line: 910, column: 5, scope: !4170)
!4235 = !DILocation(line: 910, column: 11, scope: !4170)
!4236 = !DILocation(line: 910, column: 18, scope: !4170)
!4237 = !DILocation(line: 911, column: 5, scope: !4170)
!4238 = !DILocation(line: 911, column: 11, scope: !4170)
!4239 = !DILocation(line: 911, column: 21, scope: !4170)
!4240 = !DILocation(line: 912, column: 5, scope: !4170)
!4241 = !DILocation(line: 912, column: 11, scope: !4170)
!4242 = !DILocation(line: 912, column: 26, scope: !4170)
!4243 = !DILocation(line: 913, column: 16, scope: !4170)
!4244 = !DILocation(line: 913, column: 5, scope: !4170)
!4245 = !DILocation(line: 913, column: 11, scope: !4170)
!4246 = !DILocation(line: 913, column: 14, scope: !4170)
!4247 = !DILocation(line: 915, column: 12, scope: !4170)
!4248 = !DILocation(line: 916, column: 1, scope: !4170)
!4249 = !DILocation(line: 915, column: 5, scope: !4170)
!4250 = !DISubprogram(name: "yasm_value_init_copy", scope: !4251, file: !4251, line: 70, type: !4252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4251 = !DIFile(filename: "libyasm/value.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "142e0bbf164f2a173a50a67c59b7b18d")
!4252 = !DISubroutineType(types: !4253)
!4253 = !{null, !380, !309}
!4254 = !DISubprogram(name: "yasm_value_initialize", scope: !4251, file: !4251, line: 49, type: !4255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !380, !315, !25}
!4257 = !DISubprogram(name: "IT_destroy", scope: !712, file: !712, line: 54, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !710}
!4260 = !DISubprogram(name: "yasm_expr__bc_dist_subst", scope: !61, file: !61, line: 371, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!205, !4263, !229, !4264}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{null, !25, !295, !295, !229}
!4267 = distinct !DISubprogram(name: "add_span_term", scope: !2, file: !2, line: 929, type: !4265, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !4268)
!4268 = !{!4269, !4270, !4271, !4272, !4273, !4274}
!4269 = !DILocalVariable(name: "subst", arg: 1, scope: !4267, file: !2, line: 929, type: !25)
!4270 = !DILocalVariable(name: "precbc", arg: 2, scope: !4267, file: !2, line: 929, type: !295)
!4271 = !DILocalVariable(name: "precbc2", arg: 3, scope: !4267, file: !2, line: 930, type: !295)
!4272 = !DILocalVariable(name: "d", arg: 4, scope: !4267, file: !2, line: 930, type: !229)
!4273 = !DILocalVariable(name: "span", scope: !4267, file: !2, line: 932, type: !670)
!4274 = !DILocalVariable(name: "intn", scope: !4267, file: !2, line: 933, type: !340)
!4275 = !DILocation(line: 929, column: 28, scope: !4267)
!4276 = !DILocation(line: 929, column: 50, scope: !4267)
!4277 = !DILocation(line: 930, column: 30, scope: !4267)
!4278 = !DILocation(line: 930, column: 45, scope: !4267)
!4279 = !DILocation(line: 932, column: 5, scope: !4267)
!4280 = !DILocation(line: 932, column: 16, scope: !4267)
!4281 = !DILocation(line: 932, column: 23, scope: !4267)
!4282 = !DILocation(line: 933, column: 5, scope: !4267)
!4283 = !DILocation(line: 933, column: 18, scope: !4267)
!4284 = !DILocation(line: 935, column: 9, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4267, file: !2, line: 935, column: 9)
!4286 = !DILocation(line: 935, column: 18, scope: !4285)
!4287 = !DILocation(line: 935, column: 24, scope: !4285)
!4288 = !DILocation(line: 935, column: 15, scope: !4285)
!4289 = !DILocation(line: 935, column: 9, scope: !4267)
!4290 = !DILocation(line: 937, column: 27, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4285, file: !2, line: 935, column: 35)
!4292 = !DILocation(line: 937, column: 32, scope: !4291)
!4293 = !DILocation(line: 937, column: 9, scope: !4291)
!4294 = !DILocation(line: 937, column: 15, scope: !4291)
!4295 = !DILocation(line: 937, column: 25, scope: !4291)
!4296 = !DILocation(line: 938, column: 23, scope: !4291)
!4297 = !DILocation(line: 938, column: 37, scope: !4291)
!4298 = !DILocation(line: 938, column: 43, scope: !4291)
!4299 = !DILocation(line: 939, column: 37, scope: !4291)
!4300 = !DILocation(line: 939, column: 43, scope: !4291)
!4301 = !DILocation(line: 939, column: 52, scope: !4291)
!4302 = !DILocation(line: 938, column: 9, scope: !4291)
!4303 = !DILocation(line: 938, column: 15, scope: !4291)
!4304 = !DILocation(line: 938, column: 21, scope: !4291)
!4305 = !DILocation(line: 940, column: 5, scope: !4291)
!4306 = !DILocation(line: 941, column: 33, scope: !4267)
!4307 = !DILocation(line: 941, column: 5, scope: !4267)
!4308 = !DILocation(line: 941, column: 11, scope: !4267)
!4309 = !DILocation(line: 941, column: 17, scope: !4267)
!4310 = !DILocation(line: 941, column: 24, scope: !4267)
!4311 = !DILocation(line: 941, column: 31, scope: !4267)
!4312 = !DILocation(line: 942, column: 34, scope: !4267)
!4313 = !DILocation(line: 942, column: 5, scope: !4267)
!4314 = !DILocation(line: 942, column: 11, scope: !4267)
!4315 = !DILocation(line: 942, column: 17, scope: !4267)
!4316 = !DILocation(line: 942, column: 24, scope: !4267)
!4317 = !DILocation(line: 942, column: 32, scope: !4267)
!4318 = !DILocation(line: 943, column: 31, scope: !4267)
!4319 = !DILocation(line: 943, column: 5, scope: !4267)
!4320 = !DILocation(line: 943, column: 11, scope: !4267)
!4321 = !DILocation(line: 943, column: 17, scope: !4267)
!4322 = !DILocation(line: 943, column: 24, scope: !4267)
!4323 = !DILocation(line: 943, column: 29, scope: !4267)
!4324 = !DILocation(line: 944, column: 32, scope: !4267)
!4325 = !DILocation(line: 944, column: 5, scope: !4267)
!4326 = !DILocation(line: 944, column: 11, scope: !4267)
!4327 = !DILocation(line: 944, column: 17, scope: !4267)
!4328 = !DILocation(line: 944, column: 24, scope: !4267)
!4329 = !DILocation(line: 944, column: 30, scope: !4267)
!4330 = !DILocation(line: 946, column: 30, scope: !4267)
!4331 = !DILocation(line: 946, column: 38, scope: !4267)
!4332 = !DILocation(line: 946, column: 12, scope: !4267)
!4333 = !DILocation(line: 946, column: 10, scope: !4267)
!4334 = !DILocation(line: 947, column: 10, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4267, file: !2, line: 947, column: 9)
!4336 = !DILocation(line: 947, column: 9, scope: !4267)
!4337 = !DILocation(line: 948, column: 9, scope: !4335)
!4338 = !DILocation(line: 949, column: 5, scope: !4267)
!4339 = !DILocation(line: 949, column: 11, scope: !4267)
!4340 = !DILocation(line: 949, column: 17, scope: !4267)
!4341 = !DILocation(line: 949, column: 24, scope: !4267)
!4342 = !DILocation(line: 949, column: 32, scope: !4267)
!4343 = !DILocation(line: 950, column: 54, scope: !4267)
!4344 = !DILocation(line: 950, column: 34, scope: !4267)
!4345 = !DILocation(line: 950, column: 5, scope: !4267)
!4346 = !DILocation(line: 950, column: 11, scope: !4267)
!4347 = !DILocation(line: 950, column: 17, scope: !4267)
!4348 = !DILocation(line: 950, column: 24, scope: !4267)
!4349 = !DILocation(line: 950, column: 32, scope: !4267)
!4350 = !DILocation(line: 951, column: 25, scope: !4267)
!4351 = !DILocation(line: 951, column: 5, scope: !4267)
!4352 = !DILocation(line: 952, column: 1, scope: !4267)
!4353 = !DISubprogram(name: "yasm_intnum_create_int", scope: !3525, file: !3525, line: 103, type: !4354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!340, !264}
!4356 = !DISubprogram(name: "yasm_symrec_get_label", scope: !127, file: !127, line: 322, type: !4357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!205, !4359, !4361}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symrec_get_label_bytecodep", file: !127, line: 313, baseType: !295)
!4363 = !DISubprogram(name: "yasm_expr__copy_except", scope: !61, file: !61, line: 351, type: !4364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!315, !4366, !205}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!4368 = !DISubprogram(name: "yasm_intnum_set_int", scope: !3525, file: !3525, line: 184, type: !4369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !340, !264}
!4371 = !DISubprogram(name: "yasm_expr__subst", scope: !61, file: !61, line: 385, type: !4372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!205, !315, !25, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!4376 = !DISubprogram(name: "yasm_expr_get_intnum", scope: !61, file: !61, line: 266, type: !4377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!340, !4263, !205}
!4379 = !DISubprogram(name: "yasm_expr_destroy", scope: !61, file: !61, line: 176, type: !4380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{null, !315}
!4382 = !DISubprogram(name: "yasm_value_delete", scope: !4251, file: !4251, line: 76, type: !4383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !380}
!4385 = !DISubprogram(name: "IT_insert", scope: !712, file: !712, line: 61, type: !4386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!716, !710, !264, !264, !229}
