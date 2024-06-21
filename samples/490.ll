; ModuleID = 'samples/490.bc'
source_filename = "dt/datatype_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucp_mem_dummy_handle_t = type { %struct.ucp_mem, [64 x ptr] }
%struct.ucp_mem = type { %struct.ucs_rcache_region, ptr, i32, i32, i8, i64, ptr, [0 x ptr] }
%struct.ucs_rcache_region = type { %struct.ucs_pgt_region, %struct.ucs_list_link, %struct.ucs_list_link, %struct.ucs_list_link, i32, i8, i8, i8, i8, %union.anon.2 }
%struct.ucs_pgt_region = type { i64, i64 }
%struct.ucs_list_link = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.ucp_datatype_iter_t = type { i32, %struct.ucp_memory_info_t, i64, i64, %union.anon }
%struct.ucp_memory_info_t = type { i8, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i64, ptr, ptr }
%struct.anon.1 = type { ptr, i64, i64, ptr }
%struct.ucp_dt_iov = type { ptr, i64 }
%struct.ucp_context = type { ptr, i8, ptr, i8, [5 x i64], [5 x i64], i64, [5 x i8], i8, [5 x i8], i64, ptr, %struct.ucs_bitmap_128_t, i8, i64, ptr, %struct.anon.3, %struct.ucp_mt_lock, [32 x i8], %struct.ucs_list_link }
%struct.ucs_bitmap_128_t = type { [2 x i64] }
%struct.anon.3 = type { i64, i64, i32, i32, %struct.anon.4, ptr, i32, %struct.ucs_bitmap_128_t, [128 x i8], i8, %struct.ucp_context_config, ptr, i32, %struct.anon.5 }
%struct.anon.4 = type { i64, ptr, ptr }
%struct.ucp_context_config = type { i64, i64, i64, i64, double, double, double, i64, i32, i64, double, i64, [5 x i64], [5 x i64], i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, ptr, ptr }
%struct.anon.5 = type { i32, ptr }
%struct.ucp_mt_lock = type { i32, %union.anon.6 }
%union.anon.6 = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.uct_iov = type { ptr, i64, ptr, i64, i32 }
%struct.anon = type { ptr, ptr }
%struct.ucs_recursive_spinlock = type { %struct.ucs_spinlock, i32, i64 }
%struct.ucs_spinlock = type { i32 }
%struct.ucs_rcache = type { %struct.ucs_rcache_params, %union.pthread_rwlock_t, %struct.ucs_pgtable, %struct.ucs_spinlock, %struct.ucs_mpool, %struct.ucs_queue_head, %struct.ucs_list_link, i64, i64, i64, %struct.anon.7, ptr, %struct.ucs_list_link, ptr }
%struct.ucs_rcache_params = type { i64, i64, i64, i32, i32, ptr, ptr, i32, i64, i64, i64 }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%struct.ucs_pgtable = type { %struct.ucs_pgt_entry, i64, i64, i32, i32, ptr, ptr }
%struct.ucs_pgt_entry = type { i64 }
%struct.ucs_mpool = type { ptr, ptr }
%struct.ucs_queue_head = type { ptr, ptr }
%struct.anon.7 = type { %struct.ucs_spinlock, %struct.ucs_list_link }

@.str = private unnamed_addr constant [12 x i8] c"dt_iov_memh\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !7
@ucs_memory_type_names = external global [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%zu/%zu %s\00", align 1, !dbg !12
@ucp_datatype_class_names = external global [0 x ptr], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" buffer:%p\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [7 x i8] c" [%zu]\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [15 x i8] c" *{%p,%zu/%zu}\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [11 x i8] c" {%p, %zu}\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [20 x i8] c" dt_gen:%p state:%p\00", align 1, !dbg !31
@ucp_mem_dummy_handle = external global %struct.ucp_mem_dummy_handle_t, align 8

; Function Attrs: nounwind uwtable
define signext i8 @ucp_datatype_iter_iov_mem_reg(ptr noundef %context, ptr noundef %dt_iter, i64 noundef %md_map, i32 noundef %uct_flags) #0 !dbg !747 {
entry:
  %retval = alloca i8, align 1
  %context.addr = alloca ptr, align 8
  %dt_iter.addr = alloca ptr, align 8
  %md_map.addr = alloca i64, align 8
  %uct_flags.addr = alloca i32, align 4
  %iov_count = alloca i64, align 8
  %iov = alloca ptr, align 8
  %iov_memh = alloca ptr, align 8
  %status = alloca i8, align 1
  %iov_index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !830, metadata !DIExpression()), !dbg !843
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !831, metadata !DIExpression()), !dbg !844
  store i64 %md_map, ptr %md_map.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %md_map.addr, metadata !832, metadata !DIExpression()), !dbg !847
  store i32 %uct_flags, ptr %uct_flags.addr, align 4, !tbaa !848
  tail call void @llvm.dbg.declare(metadata ptr %uct_flags.addr, metadata !833, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_count) #9, !dbg !851
  tail call void @llvm.dbg.declare(metadata ptr %iov_count, metadata !834, metadata !DIExpression()), !dbg !852
  %0 = load ptr, ptr %dt_iter.addr, align 8, !dbg !853, !tbaa !839
  %call = call i64 @ucp_datatype_iter_iov_count(ptr noundef %0), !dbg !854
  store i64 %call, ptr %iov_count, align 8, !dbg !852, !tbaa !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov) #9, !dbg !855
  tail call void @llvm.dbg.declare(metadata ptr %iov, metadata !835, metadata !DIExpression()), !dbg !856
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_memh) #9, !dbg !857
  tail call void @llvm.dbg.declare(metadata ptr %iov_memh, metadata !836, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #9, !dbg !859
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !837, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_index) #9, !dbg !861
  tail call void @llvm.dbg.declare(metadata ptr %iov_index, metadata !838, metadata !DIExpression()), !dbg !862
  %1 = load i64, ptr %md_map.addr, align 8, !dbg !863, !tbaa !845
  %cmp = icmp eq i64 %1, 0, !dbg !865
  br i1 %cmp, label %if.then, label %if.end, !dbg !866

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !867

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %iov_count, align 8, !dbg !869, !tbaa !845
  %call1 = call ptr @ucs_calloc(i64 noundef %2, i64 noundef 8, ptr noundef @.str), !dbg !870
  store ptr %call1, ptr %iov_memh, align 8, !dbg !871, !tbaa !839
  %3 = load ptr, ptr %iov_memh, align 8, !dbg !872, !tbaa !839
  %cmp2 = icmp eq ptr %3, null, !dbg !874
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !875

if.then3:                                         ; preds = %if.end
  store i8 -4, ptr %retval, align 1, !dbg !876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !876

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %iov_memh, align 8, !dbg !878, !tbaa !839
  %5 = load ptr, ptr %dt_iter.addr, align 8, !dbg !879, !tbaa !839
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %5, i32 0, i32 4, !dbg !880
  %memh = getelementptr inbounds %struct.anon.1, ptr %type, i32 0, i32 3, !dbg !881
  store ptr %4, ptr %memh, align 8, !dbg !882, !tbaa !883
  store i64 0, ptr %iov_index, align 8, !dbg !884, !tbaa !845
  br label %for.cond, !dbg !886

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i64, ptr %iov_index, align 8, !dbg !887, !tbaa !845
  %7 = load i64, ptr %iov_count, align 8, !dbg !889, !tbaa !845
  %cmp5 = icmp ult i64 %6, %7, !dbg !890
  br i1 %cmp5, label %for.body, label %for.end, !dbg !891

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dt_iter.addr, align 8, !dbg !892, !tbaa !839
  %9 = load i64, ptr %iov_index, align 8, !dbg !894, !tbaa !845
  %call6 = call ptr @ucp_datatype_iter_iov_at(ptr noundef %8, i64 noundef %9), !dbg !895
  store ptr %call6, ptr %iov, align 8, !dbg !896, !tbaa !839
  %10 = load ptr, ptr %context.addr, align 8, !dbg !897, !tbaa !839
  %11 = load ptr, ptr %iov, align 8, !dbg !898, !tbaa !839
  %buffer = getelementptr inbounds %struct.ucp_dt_iov, ptr %11, i32 0, i32 0, !dbg !899
  %12 = load ptr, ptr %buffer, align 8, !dbg !899, !tbaa !900
  %13 = load ptr, ptr %iov, align 8, !dbg !902, !tbaa !839
  %length = getelementptr inbounds %struct.ucp_dt_iov, ptr %13, i32 0, i32 1, !dbg !903
  %14 = load i64, ptr %length, align 8, !dbg !903, !tbaa !904
  %15 = load ptr, ptr %dt_iter.addr, align 8, !dbg !905, !tbaa !839
  %mem_info = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %15, i32 0, i32 1, !dbg !906
  %type7 = getelementptr inbounds %struct.ucp_memory_info_t, ptr %mem_info, i32 0, i32 0, !dbg !907
  %16 = load i8, ptr %type7, align 4, !dbg !907, !tbaa !908
  %conv = zext i8 %16 to i32, !dbg !905
  %17 = load i64, ptr %md_map.addr, align 8, !dbg !911, !tbaa !845
  %18 = load i32, ptr %uct_flags.addr, align 4, !dbg !912, !tbaa !848
  %19 = load ptr, ptr %iov_memh, align 8, !dbg !913, !tbaa !839
  %20 = load i64, ptr %iov_index, align 8, !dbg !914, !tbaa !845
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !913
  %call8 = call signext i8 @ucp_memh_get(ptr noundef %10, ptr noundef %12, i64 noundef %14, i32 noundef %conv, i64 noundef %17, i32 noundef %18, ptr noundef %arrayidx), !dbg !915
  store i8 %call8, ptr %status, align 1, !dbg !916, !tbaa !883
  %21 = load i8, ptr %status, align 1, !dbg !917, !tbaa !883
  %conv9 = sext i8 %21 to i32, !dbg !917
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !919
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !920

if.then12:                                        ; preds = %for.body
  %22 = load ptr, ptr %context.addr, align 8, !dbg !921, !tbaa !839
  %23 = load ptr, ptr %dt_iter.addr, align 8, !dbg !923, !tbaa !839
  call void @ucp_datatype_iter_iov_mem_dereg(ptr noundef %22, ptr noundef %23), !dbg !924
  %24 = load i8, ptr %status, align 1, !dbg !925, !tbaa !883
  store i8 %24, ptr %retval, align 1, !dbg !926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !926

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !927

for.inc:                                          ; preds = %if.end13
  %25 = load i64, ptr %iov_index, align 8, !dbg !928, !tbaa !845
  %inc = add i64 %25, 1, !dbg !928
  store i64 %inc, ptr %iov_index, align 8, !dbg !928, !tbaa !845
  br label %for.cond, !dbg !929, !llvm.loop !930

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %retval, align 1, !dbg !933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !933

cleanup:                                          ; preds = %for.end, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_index) #9, !dbg !934
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #9, !dbg !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_memh) #9, !dbg !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov) #9, !dbg !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_count) #9, !dbg !934
  %26 = load i8, ptr %retval, align 1, !dbg !934
  ret i8 %26, !dbg !934
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i64 @ucp_datatype_iter_iov_count(ptr noundef %dt_iter) #0 !dbg !935 {
entry:
  %dt_iter.addr = alloca ptr, align 8
  %iov_count = alloca i64, align 8
  %length = alloca i64, align 8
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !939, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_count) #9, !dbg !943
  tail call void @llvm.dbg.declare(metadata ptr %iov_count, metadata !940, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #9, !dbg !943
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !941, metadata !DIExpression()), !dbg !945
  store i64 0, ptr %iov_count, align 8, !dbg !946, !tbaa !845
  store i64 0, ptr %length, align 8, !dbg !946, !tbaa !845
  br label %for.cond, !dbg !946

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %length, align 8, !dbg !948, !tbaa !845
  %1 = load ptr, ptr %dt_iter.addr, align 8, !dbg !948, !tbaa !839
  %length1 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %1, i32 0, i32 2, !dbg !948
  %2 = load i64, ptr %length1, align 8, !dbg !948, !tbaa !950
  %cmp = icmp ult i64 %0, %2, !dbg !948
  br i1 %cmp, label %for.body, label %for.end, !dbg !946

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !946

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %dt_iter.addr, align 8, !dbg !948, !tbaa !839
  %4 = load i64, ptr %iov_count, align 8, !dbg !948, !tbaa !845
  %inc = add i64 %4, 1, !dbg !948
  store i64 %inc, ptr %iov_count, align 8, !dbg !948, !tbaa !845
  %call = call ptr @ucp_datatype_iter_iov_at(ptr noundef %3, i64 noundef %4), !dbg !948
  %length2 = getelementptr inbounds %struct.ucp_dt_iov, ptr %call, i32 0, i32 1, !dbg !948
  %5 = load i64, ptr %length2, align 8, !dbg !948, !tbaa !904
  %6 = load i64, ptr %length, align 8, !dbg !948, !tbaa !845
  %add = add i64 %6, %5, !dbg !948
  store i64 %add, ptr %length, align 8, !dbg !948, !tbaa !845
  br label %for.cond, !dbg !948, !llvm.loop !951

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %iov_count, align 8, !dbg !953, !tbaa !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #9, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_count) #9, !dbg !954
  ret i64 %7, !dbg !955
}

declare !dbg !956 ptr @ucs_calloc(i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_datatype_iter_iov_at(ptr noundef %dt_iter, i64 noundef %index) #3 !dbg !962 {
entry:
  %dt_iter.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !968, metadata !DIExpression()), !dbg !970
  store i64 %index, ptr %index.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !969, metadata !DIExpression()), !dbg !971
  %0 = load ptr, ptr %dt_iter.addr, align 8, !dbg !972, !tbaa !839
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %0, i32 0, i32 4, !dbg !973
  %iov = getelementptr inbounds %struct.anon.1, ptr %type, i32 0, i32 0, !dbg !974
  %1 = load ptr, ptr %iov, align 8, !dbg !974, !tbaa !883
  %2 = load i64, ptr %index.addr, align 8, !dbg !975, !tbaa !845
  %arrayidx = getelementptr inbounds %struct.ucp_dt_iov, ptr %1, i64 %2, !dbg !972
  ret ptr %arrayidx, !dbg !976
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_memh_get(ptr noundef %context, ptr noundef %address, i64 noundef %length, i32 noundef %mem_type, i64 noundef %reg_md_map, i32 noundef %uct_flags, ptr noundef %memh_p) #3 !dbg !977 {
entry:
  %retval = alloca i8, align 1
  %context.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %mem_type.addr = alloca i32, align 4
  %reg_md_map.addr = alloca i64, align 8
  %uct_flags.addr = alloca i32, align 4
  %memh_p.addr = alloca ptr, align 8
  %rregion = alloca ptr, align 8
  %status = alloca i8, align 1
  %memh = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !982, metadata !DIExpression()), !dbg !996
  store ptr %address, ptr %address.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !983, metadata !DIExpression()), !dbg !997
  store i64 %length, ptr %length.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !984, metadata !DIExpression()), !dbg !998
  store i32 %mem_type, ptr %mem_type.addr, align 4, !tbaa !883
  tail call void @llvm.dbg.declare(metadata ptr %mem_type.addr, metadata !985, metadata !DIExpression()), !dbg !999
  store i64 %reg_md_map, ptr %reg_md_map.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %reg_md_map.addr, metadata !986, metadata !DIExpression()), !dbg !1000
  store i32 %uct_flags, ptr %uct_flags.addr, align 4, !tbaa !848
  tail call void @llvm.dbg.declare(metadata ptr %uct_flags.addr, metadata !987, metadata !DIExpression()), !dbg !1001
  store ptr %memh_p, ptr %memh_p.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %memh_p.addr, metadata !988, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 8, ptr %rregion) #9, !dbg !1003
  tail call void @llvm.dbg.declare(metadata ptr %rregion, metadata !989, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #9, !dbg !1005
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !990, metadata !DIExpression()), !dbg !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr %memh) #9, !dbg !1007
  tail call void @llvm.dbg.declare(metadata ptr %memh, metadata !991, metadata !DIExpression()), !dbg !1008
  %0 = load i64, ptr %length.addr, align 8, !dbg !1009, !tbaa !845
  %cmp = icmp eq i64 %0, 0, !dbg !1011
  br i1 %cmp, label %if.then, label %if.end, !dbg !1012

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %memh_p.addr, align 8, !dbg !1013, !tbaa !839
  store ptr @ucp_mem_dummy_handle, ptr %1, align 8, !dbg !1015, !tbaa !839
  br label %do.body, !dbg !1016

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !1017

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !1019

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1019

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !1017

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !1017

do.end3:                                          ; preds = %do.cond2
  store i8 0, ptr %retval, align 1, !dbg !1021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1021

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8, !dbg !1022, !tbaa !839
  %rcache = getelementptr inbounds %struct.ucp_context, ptr %2, i32 0, i32 15, !dbg !1022
  %3 = load ptr, ptr %rcache, align 8, !dbg !1022, !tbaa !1023
  %cmp4 = icmp ne ptr %3, null, !dbg !1022
  %conv = zext i1 %cmp4 to i32, !dbg !1022
  %conv5 = sext i32 %conv to i64, !dbg !1022
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 1), !dbg !1022
  %tobool = icmp ne i64 %expval, 0, !dbg !1022
  br i1 %tobool, label %if.then6, label %if.end64, !dbg !1033

if.then6:                                         ; preds = %if.end
  br label %do.body7, !dbg !1034

do.body7:                                         ; preds = %if.then6
  %4 = load ptr, ptr %context.addr, align 8, !dbg !1035, !tbaa !839
  %mt_lock = getelementptr inbounds %struct.ucp_context, ptr %4, i32 0, i32 17, !dbg !1035
  %mt_type = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock, i32 0, i32 0, !dbg !1035
  %5 = load i32, ptr %mt_type, align 8, !dbg !1035, !tbaa !1038
  %cmp8 = icmp eq i32 %5, 1, !dbg !1035
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1039

if.then10:                                        ; preds = %do.body7
  %6 = load ptr, ptr %context.addr, align 8, !dbg !1040, !tbaa !839
  %mt_lock11 = getelementptr inbounds %struct.ucp_context, ptr %6, i32 0, i32 17, !dbg !1040
  %lock = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock11, i32 0, i32 1, !dbg !1040
  call void @ucs_recursive_spin_lock(ptr noundef %lock), !dbg !1040
  br label %if.end20, !dbg !1040

if.else:                                          ; preds = %do.body7
  %7 = load ptr, ptr %context.addr, align 8, !dbg !1042, !tbaa !839
  %mt_lock12 = getelementptr inbounds %struct.ucp_context, ptr %7, i32 0, i32 17, !dbg !1042
  %mt_type13 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock12, i32 0, i32 0, !dbg !1042
  %8 = load i32, ptr %mt_type13, align 8, !dbg !1042, !tbaa !1038
  %cmp14 = icmp eq i32 %8, 2, !dbg !1042
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !1035

if.then16:                                        ; preds = %if.else
  %9 = load ptr, ptr %context.addr, align 8, !dbg !1044, !tbaa !839
  %mt_lock17 = getelementptr inbounds %struct.ucp_context, ptr %9, i32 0, i32 17, !dbg !1044
  %lock18 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock17, i32 0, i32 1, !dbg !1044
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock18) #9, !dbg !1044
  br label %if.end19, !dbg !1044

if.end19:                                         ; preds = %if.then16, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  br label %do.cond21, !dbg !1039

do.cond21:                                        ; preds = %if.end20
  br label %do.end22, !dbg !1039

do.end22:                                         ; preds = %do.cond21
  %10 = load ptr, ptr %context.addr, align 8, !dbg !1046, !tbaa !839
  %rcache23 = getelementptr inbounds %struct.ucp_context, ptr %10, i32 0, i32 15, !dbg !1047
  %11 = load ptr, ptr %rcache23, align 8, !dbg !1047, !tbaa !1023
  %12 = load ptr, ptr %address.addr, align 8, !dbg !1048, !tbaa !839
  %13 = load i64, ptr %length.addr, align 8, !dbg !1049, !tbaa !845
  %call24 = call ptr @ucs_rcache_lookup_unsafe(ptr noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef 3), !dbg !1050
  store ptr %call24, ptr %rregion, align 8, !dbg !1051, !tbaa !839
  %14 = load ptr, ptr %rregion, align 8, !dbg !1052, !tbaa !839
  %cmp25 = icmp eq ptr %14, null, !dbg !1054
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1055

if.then27:                                        ; preds = %do.end22
  br label %not_found, !dbg !1056

if.end28:                                         ; preds = %do.end22
  %15 = load ptr, ptr %rregion, align 8, !dbg !1058, !tbaa !839
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 0, !dbg !1058
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1058, !tbaa !839
  %16 = load ptr, ptr %tmp, align 8, !dbg !1058, !tbaa !839
  store ptr %16, ptr %memh, align 8, !dbg !1060, !tbaa !839
  %17 = load ptr, ptr %memh, align 8, !dbg !1061, !tbaa !839
  %md_map = getelementptr inbounds %struct.ucp_mem, ptr %17, i32 0, i32 5, !dbg !1061
  %18 = load i64, ptr %md_map, align 8, !dbg !1061, !tbaa !1063
  %19 = load i64, ptr %reg_md_map.addr, align 8, !dbg !1061, !tbaa !845
  %and = and i64 %18, %19, !dbg !1061
  %20 = load i64, ptr %reg_md_map.addr, align 8, !dbg !1061, !tbaa !845
  %cmp29 = icmp eq i64 %and, %20, !dbg !1061
  %conv30 = zext i1 %cmp29 to i32, !dbg !1061
  %conv31 = sext i32 %conv30 to i64, !dbg !1061
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 1), !dbg !1061
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !1061
  br i1 %tobool33, label %if.then34, label %if.end41, !dbg !1067

if.then34:                                        ; preds = %if.end28
  br label %do.body35, !dbg !1068

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !1070

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !1072

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !1072

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !1070

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !1070

do.end40:                                         ; preds = %do.cond39
  %21 = load ptr, ptr %memh, align 8, !dbg !1074, !tbaa !839
  %22 = load ptr, ptr %memh_p.addr, align 8, !dbg !1075, !tbaa !839
  store ptr %21, ptr %22, align 8, !dbg !1076, !tbaa !839
  store i8 0, ptr %status, align 1, !dbg !1077, !tbaa !883
  br label %out_unlock, !dbg !1078

if.end41:                                         ; preds = %if.end28
  %23 = load ptr, ptr %context.addr, align 8, !dbg !1079, !tbaa !839
  %rcache42 = getelementptr inbounds %struct.ucp_context, ptr %23, i32 0, i32 15, !dbg !1080
  %24 = load ptr, ptr %rcache42, align 8, !dbg !1080, !tbaa !1023
  %25 = load ptr, ptr %rregion, align 8, !dbg !1081, !tbaa !839
  call void @ucs_rcache_region_put_unsafe(ptr noundef %24, ptr noundef %25), !dbg !1082
  br label %not_found, !dbg !1082

not_found:                                        ; preds = %if.end41, %if.then27
  tail call void @llvm.dbg.label(metadata !992), !dbg !1083
  br label %do.body43, !dbg !1084

do.body43:                                        ; preds = %not_found
  %26 = load ptr, ptr %context.addr, align 8, !dbg !1085, !tbaa !839
  %mt_lock44 = getelementptr inbounds %struct.ucp_context, ptr %26, i32 0, i32 17, !dbg !1085
  %mt_type45 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock44, i32 0, i32 0, !dbg !1085
  %27 = load i32, ptr %mt_type45, align 8, !dbg !1085, !tbaa !1038
  %cmp46 = icmp eq i32 %27, 1, !dbg !1085
  br i1 %cmp46, label %if.then48, label %if.else51, !dbg !1088

if.then48:                                        ; preds = %do.body43
  %28 = load ptr, ptr %context.addr, align 8, !dbg !1089, !tbaa !839
  %mt_lock49 = getelementptr inbounds %struct.ucp_context, ptr %28, i32 0, i32 17, !dbg !1089
  %lock50 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock49, i32 0, i32 1, !dbg !1089
  call void @ucs_recursive_spin_unlock(ptr noundef %lock50), !dbg !1089
  br label %if.end61, !dbg !1089

if.else51:                                        ; preds = %do.body43
  %29 = load ptr, ptr %context.addr, align 8, !dbg !1091, !tbaa !839
  %mt_lock52 = getelementptr inbounds %struct.ucp_context, ptr %29, i32 0, i32 17, !dbg !1091
  %mt_type53 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock52, i32 0, i32 0, !dbg !1091
  %30 = load i32, ptr %mt_type53, align 8, !dbg !1091, !tbaa !1038
  %cmp54 = icmp eq i32 %30, 2, !dbg !1091
  br i1 %cmp54, label %if.then56, label %if.end60, !dbg !1085

if.then56:                                        ; preds = %if.else51
  %31 = load ptr, ptr %context.addr, align 8, !dbg !1093, !tbaa !839
  %mt_lock57 = getelementptr inbounds %struct.ucp_context, ptr %31, i32 0, i32 17, !dbg !1093
  %lock58 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock57, i32 0, i32 1, !dbg !1093
  %call59 = call i32 @pthread_mutex_unlock(ptr noundef %lock58) #9, !dbg !1093
  br label %if.end60, !dbg !1093

if.end60:                                         ; preds = %if.then56, %if.else51
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then48
  br label %do.cond62, !dbg !1088

do.cond62:                                        ; preds = %if.end61
  br label %do.end63, !dbg !1088

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !1095

if.end64:                                         ; preds = %do.end63, %if.end
  %32 = load ptr, ptr %context.addr, align 8, !dbg !1096, !tbaa !839
  %33 = load ptr, ptr %address.addr, align 8, !dbg !1097, !tbaa !839
  %34 = load i64, ptr %length.addr, align 8, !dbg !1098, !tbaa !845
  %35 = load i32, ptr %mem_type.addr, align 4, !dbg !1099, !tbaa !883
  %36 = load i64, ptr %reg_md_map.addr, align 8, !dbg !1100, !tbaa !845
  %37 = load i32, ptr %uct_flags.addr, align 4, !dbg !1101, !tbaa !848
  %38 = load ptr, ptr %memh_p.addr, align 8, !dbg !1102, !tbaa !839
  %call65 = call signext i8 @ucp_memh_get_slow(ptr noundef %32, ptr noundef %33, i64 noundef %34, i32 noundef %35, i64 noundef %36, i32 noundef %37, ptr noundef %38), !dbg !1103
  store i8 %call65, ptr %retval, align 1, !dbg !1104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1104

out_unlock:                                       ; preds = %do.end40
  tail call void @llvm.dbg.label(metadata !995), !dbg !1105
  br label %do.body66, !dbg !1106

do.body66:                                        ; preds = %out_unlock
  %39 = load ptr, ptr %context.addr, align 8, !dbg !1107, !tbaa !839
  %mt_lock67 = getelementptr inbounds %struct.ucp_context, ptr %39, i32 0, i32 17, !dbg !1107
  %mt_type68 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock67, i32 0, i32 0, !dbg !1107
  %40 = load i32, ptr %mt_type68, align 8, !dbg !1107, !tbaa !1038
  %cmp69 = icmp eq i32 %40, 1, !dbg !1107
  br i1 %cmp69, label %if.then71, label %if.else74, !dbg !1110

if.then71:                                        ; preds = %do.body66
  %41 = load ptr, ptr %context.addr, align 8, !dbg !1111, !tbaa !839
  %mt_lock72 = getelementptr inbounds %struct.ucp_context, ptr %41, i32 0, i32 17, !dbg !1111
  %lock73 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock72, i32 0, i32 1, !dbg !1111
  call void @ucs_recursive_spin_unlock(ptr noundef %lock73), !dbg !1111
  br label %if.end84, !dbg !1111

if.else74:                                        ; preds = %do.body66
  %42 = load ptr, ptr %context.addr, align 8, !dbg !1113, !tbaa !839
  %mt_lock75 = getelementptr inbounds %struct.ucp_context, ptr %42, i32 0, i32 17, !dbg !1113
  %mt_type76 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock75, i32 0, i32 0, !dbg !1113
  %43 = load i32, ptr %mt_type76, align 8, !dbg !1113, !tbaa !1038
  %cmp77 = icmp eq i32 %43, 2, !dbg !1113
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !1107

if.then79:                                        ; preds = %if.else74
  %44 = load ptr, ptr %context.addr, align 8, !dbg !1115, !tbaa !839
  %mt_lock80 = getelementptr inbounds %struct.ucp_context, ptr %44, i32 0, i32 17, !dbg !1115
  %lock81 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock80, i32 0, i32 1, !dbg !1115
  %call82 = call i32 @pthread_mutex_unlock(ptr noundef %lock81) #9, !dbg !1115
  br label %if.end83, !dbg !1115

if.end83:                                         ; preds = %if.then79, %if.else74
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then71
  br label %do.cond85, !dbg !1110

do.cond85:                                        ; preds = %if.end84
  br label %do.end86, !dbg !1110

do.end86:                                         ; preds = %do.cond85
  %45 = load i8, ptr %status, align 1, !dbg !1117, !tbaa !883
  store i8 %45, ptr %retval, align 1, !dbg !1118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1118

cleanup:                                          ; preds = %do.end86, %if.end64, %do.end3
  call void @llvm.lifetime.end.p0(i64 8, ptr %memh) #9, !dbg !1119
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #9, !dbg !1119
  call void @llvm.lifetime.end.p0(i64 8, ptr %rregion) #9, !dbg !1119
  %46 = load i8, ptr %retval, align 1, !dbg !1119
  ret i8 %46, !dbg !1119
}

; Function Attrs: nounwind uwtable
define void @ucp_datatype_iter_iov_mem_dereg(ptr noundef %context, ptr noundef %dt_iter) #0 !dbg !1120 {
entry:
  %context.addr = alloca ptr, align 8
  %dt_iter.addr = alloca ptr, align 8
  %memh = alloca ptr, align 8
  %iov_index = alloca i64, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1124, metadata !DIExpression()), !dbg !1129
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !1125, metadata !DIExpression()), !dbg !1130
  call void @llvm.lifetime.start.p0(i64 8, ptr %memh) #9, !dbg !1131
  tail call void @llvm.dbg.declare(metadata ptr %memh, metadata !1126, metadata !DIExpression()), !dbg !1132
  %0 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1133, !tbaa !839
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %0, i32 0, i32 4, !dbg !1134
  %memh1 = getelementptr inbounds %struct.anon.1, ptr %type, i32 0, i32 3, !dbg !1135
  %1 = load ptr, ptr %memh1, align 8, !dbg !1135, !tbaa !883
  store ptr %1, ptr %memh, align 8, !dbg !1132, !tbaa !839
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_index) #9, !dbg !1136
  tail call void @llvm.dbg.declare(metadata ptr %iov_index, metadata !1127, metadata !DIExpression()), !dbg !1137
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #9, !dbg !1136
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1128, metadata !DIExpression()), !dbg !1138
  %2 = load ptr, ptr %memh, align 8, !dbg !1139, !tbaa !839
  %cmp = icmp eq ptr %2, null, !dbg !1141
  br i1 %cmp, label %if.then, label %if.end, !dbg !1142

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1143

if.end:                                           ; preds = %entry
  store i64 0, ptr %iov_index, align 8, !dbg !1145, !tbaa !845
  store i64 0, ptr %length, align 8, !dbg !1145, !tbaa !845
  br label %for.cond, !dbg !1145

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %length, align 8, !dbg !1147, !tbaa !845
  %4 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1147, !tbaa !839
  %length2 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %4, i32 0, i32 2, !dbg !1147
  %5 = load i64, ptr %length2, align 8, !dbg !1147, !tbaa !950
  %cmp3 = icmp ult i64 %3, %5, !dbg !1147
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1145

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %context.addr, align 8, !dbg !1149, !tbaa !839
  %7 = load ptr, ptr %memh, align 8, !dbg !1151, !tbaa !839
  %8 = load i64, ptr %iov_index, align 8, !dbg !1152, !tbaa !845
  %add.ptr = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !1153
  call void @ucp_datatype_memh_dereg(ptr noundef %6, ptr noundef %add.ptr), !dbg !1154
  br label %for.inc, !dbg !1155

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1147, !tbaa !839
  %10 = load i64, ptr %iov_index, align 8, !dbg !1147, !tbaa !845
  %inc = add i64 %10, 1, !dbg !1147
  store i64 %inc, ptr %iov_index, align 8, !dbg !1147, !tbaa !845
  %call = call ptr @ucp_datatype_iter_iov_at(ptr noundef %9, i64 noundef %10), !dbg !1147
  %length4 = getelementptr inbounds %struct.ucp_dt_iov, ptr %call, i32 0, i32 1, !dbg !1147
  %11 = load i64, ptr %length4, align 8, !dbg !1147, !tbaa !904
  %12 = load i64, ptr %length, align 8, !dbg !1147, !tbaa !845
  %add = add i64 %12, %11, !dbg !1147
  store i64 %add, ptr %length, align 8, !dbg !1147, !tbaa !845
  br label %for.cond, !dbg !1147, !llvm.loop !1156

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %memh, align 8, !dbg !1158, !tbaa !839
  call void @ucs_free(ptr noundef %13), !dbg !1159
  %14 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1160, !tbaa !839
  %type5 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %14, i32 0, i32 4, !dbg !1161
  %memh6 = getelementptr inbounds %struct.anon.1, ptr %type5, i32 0, i32 3, !dbg !1162
  store ptr null, ptr %memh6, align 8, !dbg !1163, !tbaa !883
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1164
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #9, !dbg !1164
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_index) #9, !dbg !1164
  call void @llvm.lifetime.end.p0(i64 8, ptr %memh) #9, !dbg !1164
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1164

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_datatype_memh_dereg(ptr noundef %context, ptr noundef %memh_p) #3 !dbg !1165 {
entry:
  %context.addr = alloca ptr, align 8
  %memh_p.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1170, metadata !DIExpression()), !dbg !1172
  store ptr %memh_p, ptr %memh_p.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %memh_p.addr, metadata !1171, metadata !DIExpression()), !dbg !1173
  %0 = load ptr, ptr %memh_p.addr, align 8, !dbg !1174, !tbaa !839
  %1 = load ptr, ptr %0, align 8, !dbg !1176, !tbaa !839
  %cmp = icmp ne ptr %1, null, !dbg !1177
  br i1 %cmp, label %if.then, label %if.end, !dbg !1178

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %context.addr, align 8, !dbg !1179, !tbaa !839
  %3 = load ptr, ptr %memh_p.addr, align 8, !dbg !1181, !tbaa !839
  %4 = load ptr, ptr %3, align 8, !dbg !1182, !tbaa !839
  call void @ucp_memh_put(ptr noundef %2, ptr noundef %4), !dbg !1183
  %5 = load ptr, ptr %memh_p.addr, align 8, !dbg !1184, !tbaa !839
  store ptr null, ptr %5, align 8, !dbg !1185, !tbaa !839
  br label %if.end, !dbg !1186

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1187
}

declare !dbg !1188 void @ucs_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @ucp_datatype_iter_iov_next_iov(ptr noundef %dt_iter, i64 noundef %max_length, i8 noundef zeroext %memh_index, ptr noundef %next_iter, ptr noundef %iov, i64 noundef %max_iov) #0 !dbg !1189 {
entry:
  %dt_iter.addr = alloca ptr, align 8
  %max_length.addr = alloca i64, align 8
  %memh_index.addr = alloca i8, align 1
  %next_iter.addr = alloca ptr, align 8
  %iov.addr = alloca ptr, align 8
  %max_iov.addr = alloca i64, align 8
  %iov_memh = alloca ptr, align 8
  %remaining_dst = alloca i64, align 8
  %remaining_src = alloca i64, align 8
  %iov_offset = alloca i64, align 8
  %dst_iov_index = alloca i64, align 8
  %length = alloca i64, align 8
  %max_iter_length = alloca i64, align 8
  %src_iov = alloca ptr, align 8
  %memh1 = alloca ptr, align 8
  %dst_iov = alloca ptr, align 8
  %_min_a = alloca i64, align 8
  %_min_b = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !1202, metadata !DIExpression()), !dbg !1221
  store i64 %max_length, ptr %max_length.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %max_length.addr, metadata !1203, metadata !DIExpression()), !dbg !1222
  store i8 %memh_index, ptr %memh_index.addr, align 1, !tbaa !883
  tail call void @llvm.dbg.declare(metadata ptr %memh_index.addr, metadata !1204, metadata !DIExpression()), !dbg !1223
  store ptr %next_iter, ptr %next_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %next_iter.addr, metadata !1205, metadata !DIExpression()), !dbg !1224
  store ptr %iov, ptr %iov.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %iov.addr, metadata !1206, metadata !DIExpression()), !dbg !1225
  store i64 %max_iov, ptr %max_iov.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %max_iov.addr, metadata !1207, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_memh) #9, !dbg !1227
  tail call void @llvm.dbg.declare(metadata ptr %iov_memh, metadata !1208, metadata !DIExpression()), !dbg !1228
  %0 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1229, !tbaa !839
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %0, i32 0, i32 4, !dbg !1230
  %memh = getelementptr inbounds %struct.anon.1, ptr %type, i32 0, i32 3, !dbg !1231
  %1 = load ptr, ptr %memh, align 8, !dbg !1231, !tbaa !883
  store ptr %1, ptr %iov_memh, align 8, !dbg !1228, !tbaa !839
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_dst) #9, !dbg !1232
  tail call void @llvm.dbg.declare(metadata ptr %remaining_dst, metadata !1209, metadata !DIExpression()), !dbg !1233
  call void @llvm.lifetime.start.p0(i64 8, ptr %remaining_src) #9, !dbg !1232
  tail call void @llvm.dbg.declare(metadata ptr %remaining_src, metadata !1210, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_offset) #9, !dbg !1235
  tail call void @llvm.dbg.declare(metadata ptr %iov_offset, metadata !1211, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_iov_index) #9, !dbg !1235
  tail call void @llvm.dbg.declare(metadata ptr %dst_iov_index, metadata !1212, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #9, !dbg !1238
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1213, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_iter_length) #9, !dbg !1238
  tail call void @llvm.dbg.declare(metadata ptr %max_iter_length, metadata !1214, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_iov) #9, !dbg !1241
  tail call void @llvm.dbg.declare(metadata ptr %src_iov, metadata !1215, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %memh1) #9, !dbg !1243
  tail call void @llvm.dbg.declare(metadata ptr %memh1, metadata !1216, metadata !DIExpression()), !dbg !1244
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_iov) #9, !dbg !1245
  tail call void @llvm.dbg.declare(metadata ptr %dst_iov, metadata !1217, metadata !DIExpression()), !dbg !1246
  %2 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1247, !tbaa !839
  call void @ucp_datatype_iter_iov_check(ptr noundef %2), !dbg !1248
  %3 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1249, !tbaa !839
  %type2 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %3, i32 0, i32 4, !dbg !1250
  %iov_index = getelementptr inbounds %struct.anon.1, ptr %type2, i32 0, i32 1, !dbg !1251
  %4 = load i64, ptr %iov_index, align 8, !dbg !1251, !tbaa !883
  %5 = load ptr, ptr %next_iter.addr, align 8, !dbg !1252, !tbaa !839
  %type3 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %5, i32 0, i32 4, !dbg !1253
  %iov_index4 = getelementptr inbounds %struct.anon.1, ptr %type3, i32 0, i32 1, !dbg !1254
  store i64 %4, ptr %iov_index4, align 8, !dbg !1255, !tbaa !883
  %6 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1256, !tbaa !839
  %type5 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %6, i32 0, i32 4, !dbg !1257
  %iov_offset6 = getelementptr inbounds %struct.anon.1, ptr %type5, i32 0, i32 2, !dbg !1258
  %7 = load i64, ptr %iov_offset6, align 8, !dbg !1258, !tbaa !883
  %8 = load ptr, ptr %next_iter.addr, align 8, !dbg !1259, !tbaa !839
  %type7 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %8, i32 0, i32 4, !dbg !1260
  %iov_offset8 = getelementptr inbounds %struct.anon.1, ptr %type7, i32 0, i32 2, !dbg !1261
  store i64 %7, ptr %iov_offset8, align 8, !dbg !1262, !tbaa !883
  call void @llvm.lifetime.start.p0(i64 8, ptr %_min_a) #9, !dbg !1263
  tail call void @llvm.dbg.declare(metadata ptr %_min_a, metadata !1218, metadata !DIExpression()), !dbg !1263
  %9 = load i64, ptr %max_length.addr, align 8, !dbg !1263, !tbaa !845
  store i64 %9, ptr %_min_a, align 8, !dbg !1263, !tbaa !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %_min_b) #9, !dbg !1263
  tail call void @llvm.dbg.declare(metadata ptr %_min_b, metadata !1220, metadata !DIExpression()), !dbg !1263
  %10 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1263, !tbaa !839
  %length9 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %10, i32 0, i32 2, !dbg !1263
  %11 = load i64, ptr %length9, align 8, !dbg !1263, !tbaa !950
  %12 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1263, !tbaa !839
  %offset = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %12, i32 0, i32 3, !dbg !1263
  %13 = load i64, ptr %offset, align 8, !dbg !1263, !tbaa !1264
  %sub = sub i64 %11, %13, !dbg !1263
  store i64 %sub, ptr %_min_b, align 8, !dbg !1263, !tbaa !845
  %14 = load i64, ptr %_min_a, align 8, !dbg !1263, !tbaa !845
  %15 = load i64, ptr %_min_b, align 8, !dbg !1263, !tbaa !845
  %cmp = icmp ult i64 %14, %15, !dbg !1263
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1263

cond.true:                                        ; preds = %entry
  %16 = load i64, ptr %_min_a, align 8, !dbg !1263, !tbaa !845
  br label %cond.end, !dbg !1263

cond.false:                                       ; preds = %entry
  %17 = load i64, ptr %_min_b, align 8, !dbg !1263, !tbaa !845
  br label %cond.end, !dbg !1263

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !1263
  store i64 %cond, ptr %tmp, align 8, !dbg !1263, !tbaa !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %_min_b) #9, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 8, ptr %_min_a) #9, !dbg !1265
  %18 = load i64, ptr %tmp, align 8, !dbg !1263, !tbaa !845
  store i64 %18, ptr %max_iter_length, align 8, !dbg !1266, !tbaa !845
  store i64 0, ptr %length, align 8, !dbg !1267, !tbaa !845
  store i64 0, ptr %dst_iov_index, align 8, !dbg !1268, !tbaa !845
  br label %while.cond, !dbg !1269

while.cond:                                       ; preds = %if.end46, %cond.end
  %19 = load i64, ptr %dst_iov_index, align 8, !dbg !1270, !tbaa !845
  %20 = load i64, ptr %max_iov.addr, align 8, !dbg !1271, !tbaa !845
  %cmp10 = icmp ult i64 %19, %20, !dbg !1272
  br i1 %cmp10, label %land.rhs, label %land.end, !dbg !1273

land.rhs:                                         ; preds = %while.cond
  %21 = load i64, ptr %length, align 8, !dbg !1274, !tbaa !845
  %22 = load i64, ptr %max_iter_length, align 8, !dbg !1275, !tbaa !845
  %cmp11 = icmp ult i64 %21, %22, !dbg !1276
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ], !dbg !1277
  br i1 %23, label %while.body, label %while.end, !dbg !1269

while.body:                                       ; preds = %land.end
  %24 = load ptr, ptr %next_iter.addr, align 8, !dbg !1278, !tbaa !839
  call void @ucp_datatype_iter_iov_check(ptr noundef %24), !dbg !1280
  %25 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1281, !tbaa !839
  %26 = load ptr, ptr %next_iter.addr, align 8, !dbg !1282, !tbaa !839
  %type12 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %26, i32 0, i32 4, !dbg !1283
  %iov_index13 = getelementptr inbounds %struct.anon.1, ptr %type12, i32 0, i32 1, !dbg !1284
  %27 = load i64, ptr %iov_index13, align 8, !dbg !1284, !tbaa !883
  %call = call ptr @ucp_datatype_iter_iov_at(ptr noundef %25, i64 noundef %27), !dbg !1285
  store ptr %call, ptr %src_iov, align 8, !dbg !1286, !tbaa !839
  %28 = load ptr, ptr %src_iov, align 8, !dbg !1287, !tbaa !839
  %length14 = getelementptr inbounds %struct.ucp_dt_iov, ptr %28, i32 0, i32 1, !dbg !1289
  %29 = load i64, ptr %length14, align 8, !dbg !1289, !tbaa !904
  %cmp15 = icmp ugt i64 %29, 0, !dbg !1290
  br i1 %cmp15, label %if.then, label %if.end46, !dbg !1291

if.then:                                          ; preds = %while.body
  %30 = load ptr, ptr %iov.addr, align 8, !dbg !1292, !tbaa !839
  %31 = load i64, ptr %dst_iov_index, align 8, !dbg !1294, !tbaa !845
  %inc = add i64 %31, 1, !dbg !1294
  store i64 %inc, ptr %dst_iov_index, align 8, !dbg !1294, !tbaa !845
  %arrayidx = getelementptr inbounds %struct.uct_iov, ptr %30, i64 %31, !dbg !1292
  store ptr %arrayidx, ptr %dst_iov, align 8, !dbg !1295, !tbaa !839
  %32 = load ptr, ptr %iov_memh, align 8, !dbg !1296, !tbaa !839
  %cmp16 = icmp eq ptr %32, null, !dbg !1297
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !1298

cond.true17:                                      ; preds = %if.then
  br label %cond.end22, !dbg !1298

cond.false18:                                     ; preds = %if.then
  %33 = load ptr, ptr %iov_memh, align 8, !dbg !1299, !tbaa !839
  %34 = load ptr, ptr %next_iter.addr, align 8, !dbg !1300, !tbaa !839
  %type19 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %34, i32 0, i32 4, !dbg !1301
  %iov_index20 = getelementptr inbounds %struct.anon.1, ptr %type19, i32 0, i32 1, !dbg !1302
  %35 = load i64, ptr %iov_index20, align 8, !dbg !1302, !tbaa !883
  %arrayidx21 = getelementptr inbounds ptr, ptr %33, i64 %35, !dbg !1299
  %36 = load ptr, ptr %arrayidx21, align 8, !dbg !1299, !tbaa !839
  br label %cond.end22, !dbg !1298

cond.end22:                                       ; preds = %cond.false18, %cond.true17
  %cond23 = phi ptr [ null, %cond.true17 ], [ %36, %cond.false18 ], !dbg !1298
  store ptr %cond23, ptr %memh1, align 8, !dbg !1303, !tbaa !839
  %37 = load ptr, ptr %next_iter.addr, align 8, !dbg !1304, !tbaa !839
  %type24 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %37, i32 0, i32 4, !dbg !1305
  %iov_offset25 = getelementptr inbounds %struct.anon.1, ptr %type24, i32 0, i32 2, !dbg !1306
  %38 = load i64, ptr %iov_offset25, align 8, !dbg !1306, !tbaa !883
  store i64 %38, ptr %iov_offset, align 8, !dbg !1307, !tbaa !845
  %39 = load ptr, ptr %src_iov, align 8, !dbg !1308, !tbaa !839
  %buffer = getelementptr inbounds %struct.ucp_dt_iov, ptr %39, i32 0, i32 0, !dbg !1308
  %40 = load ptr, ptr %buffer, align 8, !dbg !1308, !tbaa !900
  %41 = ptrtoint ptr %40 to i64, !dbg !1308
  %42 = load i64, ptr %iov_offset, align 8, !dbg !1308, !tbaa !845
  %add = add nsw i64 %41, %42, !dbg !1308
  %43 = inttoptr i64 %add to ptr, !dbg !1308
  %44 = load ptr, ptr %dst_iov, align 8, !dbg !1309, !tbaa !839
  %buffer26 = getelementptr inbounds %struct.uct_iov, ptr %44, i32 0, i32 0, !dbg !1310
  store ptr %43, ptr %buffer26, align 8, !dbg !1311, !tbaa !1312
  %45 = load ptr, ptr %memh1, align 8, !dbg !1314, !tbaa !839
  %cmp27 = icmp eq ptr %45, null, !dbg !1315
  br i1 %cmp27, label %cond.true28, label %cond.false29, !dbg !1316

cond.true28:                                      ; preds = %cond.end22
  br label %cond.end31, !dbg !1316

cond.false29:                                     ; preds = %cond.end22
  %46 = load ptr, ptr %memh1, align 8, !dbg !1317, !tbaa !839
  %47 = load i8, ptr %memh_index.addr, align 1, !dbg !1318, !tbaa !883
  %call30 = call ptr @ucp_datatype_iter_uct_memh(ptr noundef %46, i8 noundef zeroext %47), !dbg !1319
  br label %cond.end31, !dbg !1316

cond.end31:                                       ; preds = %cond.false29, %cond.true28
  %cond32 = phi ptr [ null, %cond.true28 ], [ %call30, %cond.false29 ], !dbg !1316
  %48 = load ptr, ptr %dst_iov, align 8, !dbg !1320, !tbaa !839
  %memh33 = getelementptr inbounds %struct.uct_iov, ptr %48, i32 0, i32 2, !dbg !1321
  store ptr %cond32, ptr %memh33, align 8, !dbg !1322, !tbaa !1323
  %49 = load ptr, ptr %dst_iov, align 8, !dbg !1324, !tbaa !839
  %stride = getelementptr inbounds %struct.uct_iov, ptr %49, i32 0, i32 3, !dbg !1325
  store i64 0, ptr %stride, align 8, !dbg !1326, !tbaa !1327
  %50 = load ptr, ptr %dst_iov, align 8, !dbg !1328, !tbaa !839
  %count = getelementptr inbounds %struct.uct_iov, ptr %50, i32 0, i32 4, !dbg !1329
  store i32 1, ptr %count, align 8, !dbg !1330, !tbaa !1331
  %51 = load ptr, ptr %src_iov, align 8, !dbg !1332, !tbaa !839
  %length34 = getelementptr inbounds %struct.ucp_dt_iov, ptr %51, i32 0, i32 1, !dbg !1333
  %52 = load i64, ptr %length34, align 8, !dbg !1333, !tbaa !904
  %53 = load i64, ptr %iov_offset, align 8, !dbg !1334, !tbaa !845
  %sub35 = sub i64 %52, %53, !dbg !1335
  store i64 %sub35, ptr %remaining_src, align 8, !dbg !1336, !tbaa !845
  %54 = load i64, ptr %max_length.addr, align 8, !dbg !1337, !tbaa !845
  %55 = load i64, ptr %length, align 8, !dbg !1338, !tbaa !845
  %sub36 = sub i64 %54, %55, !dbg !1339
  store i64 %sub36, ptr %remaining_dst, align 8, !dbg !1340, !tbaa !845
  %56 = load i64, ptr %remaining_dst, align 8, !dbg !1341, !tbaa !845
  %57 = load i64, ptr %remaining_src, align 8, !dbg !1343, !tbaa !845
  %cmp37 = icmp ult i64 %56, %57, !dbg !1344
  br i1 %cmp37, label %if.then38, label %if.end, !dbg !1345

if.then38:                                        ; preds = %cond.end31
  %58 = load i64, ptr %remaining_dst, align 8, !dbg !1346, !tbaa !845
  %59 = load ptr, ptr %dst_iov, align 8, !dbg !1348, !tbaa !839
  %length39 = getelementptr inbounds %struct.uct_iov, ptr %59, i32 0, i32 1, !dbg !1349
  store i64 %58, ptr %length39, align 8, !dbg !1350, !tbaa !1351
  %60 = load i64, ptr %remaining_dst, align 8, !dbg !1352, !tbaa !845
  %61 = load i64, ptr %length, align 8, !dbg !1353, !tbaa !845
  %add40 = add i64 %61, %60, !dbg !1353
  store i64 %add40, ptr %length, align 8, !dbg !1353, !tbaa !845
  %62 = load i64, ptr %remaining_dst, align 8, !dbg !1354, !tbaa !845
  %63 = load ptr, ptr %next_iter.addr, align 8, !dbg !1355, !tbaa !839
  %type41 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %63, i32 0, i32 4, !dbg !1356
  %iov_offset42 = getelementptr inbounds %struct.anon.1, ptr %type41, i32 0, i32 2, !dbg !1357
  %64 = load i64, ptr %iov_offset42, align 8, !dbg !1358, !tbaa !883
  %add43 = add i64 %64, %62, !dbg !1358
  store i64 %add43, ptr %iov_offset42, align 8, !dbg !1358, !tbaa !883
  br label %while.end, !dbg !1359

if.end:                                           ; preds = %cond.end31
  %65 = load i64, ptr %remaining_src, align 8, !dbg !1360, !tbaa !845
  %66 = load ptr, ptr %dst_iov, align 8, !dbg !1361, !tbaa !839
  %length44 = getelementptr inbounds %struct.uct_iov, ptr %66, i32 0, i32 1, !dbg !1362
  store i64 %65, ptr %length44, align 8, !dbg !1363, !tbaa !1351
  %67 = load i64, ptr %remaining_src, align 8, !dbg !1364, !tbaa !845
  %68 = load i64, ptr %length, align 8, !dbg !1365, !tbaa !845
  %add45 = add i64 %68, %67, !dbg !1365
  store i64 %add45, ptr %length, align 8, !dbg !1365, !tbaa !845
  br label %if.end46, !dbg !1366

if.end46:                                         ; preds = %if.end, %while.body
  %69 = load ptr, ptr %next_iter.addr, align 8, !dbg !1367, !tbaa !839
  %type47 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %69, i32 0, i32 4, !dbg !1368
  %iov_offset48 = getelementptr inbounds %struct.anon.1, ptr %type47, i32 0, i32 2, !dbg !1369
  store i64 0, ptr %iov_offset48, align 8, !dbg !1370, !tbaa !883
  %70 = load ptr, ptr %next_iter.addr, align 8, !dbg !1371, !tbaa !839
  %type49 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %70, i32 0, i32 4, !dbg !1372
  %iov_index50 = getelementptr inbounds %struct.anon.1, ptr %type49, i32 0, i32 1, !dbg !1373
  %71 = load i64, ptr %iov_index50, align 8, !dbg !1374, !tbaa !883
  %inc51 = add i64 %71, 1, !dbg !1374
  store i64 %inc51, ptr %iov_index50, align 8, !dbg !1374, !tbaa !883
  br label %while.cond, !dbg !1269, !llvm.loop !1375

while.end:                                        ; preds = %if.then38, %land.end
  %72 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1377, !tbaa !839
  %offset52 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %72, i32 0, i32 3, !dbg !1378
  %73 = load i64, ptr %offset52, align 8, !dbg !1378, !tbaa !1264
  %74 = load i64, ptr %length, align 8, !dbg !1379, !tbaa !845
  %add53 = add i64 %73, %74, !dbg !1380
  %75 = load ptr, ptr %next_iter.addr, align 8, !dbg !1381, !tbaa !839
  %offset54 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %75, i32 0, i32 3, !dbg !1382
  store i64 %add53, ptr %offset54, align 8, !dbg !1383, !tbaa !1264
  %76 = load i64, ptr %dst_iov_index, align 8, !dbg !1384, !tbaa !845
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_iov) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %memh1) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_iov) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_iter_length) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_iov_index) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_offset) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_src) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %remaining_dst) #9, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_memh) #9, !dbg !1385
  ret i64 %76, !dbg !1386
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_datatype_iter_iov_check(ptr noundef %dt_iter) #3 !dbg !1387 {
entry:
  %dt_iter.addr = alloca ptr, align 8
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  ret void, !dbg !1393
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_datatype_iter_uct_memh(ptr noundef %memh, i8 noundef zeroext %memh_index) #3 !dbg !1394 {
entry:
  %retval = alloca ptr, align 8
  %memh.addr = alloca ptr, align 8
  %memh_index.addr = alloca i8, align 1
  store ptr %memh, ptr %memh.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %memh.addr, metadata !1399, metadata !DIExpression()), !dbg !1401
  store i8 %memh_index, ptr %memh_index.addr, align 1, !tbaa !883
  tail call void @llvm.dbg.declare(metadata ptr %memh_index.addr, metadata !1400, metadata !DIExpression()), !dbg !1402
  %0 = load i8, ptr %memh_index.addr, align 1, !dbg !1403, !tbaa !883
  %conv = zext i8 %0 to i32, !dbg !1403
  %cmp = icmp eq i32 %conv, 255, !dbg !1405
  br i1 %cmp, label %if.then, label %if.end, !dbg !1406

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1407
  br label %return, !dbg !1407

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %memh.addr, align 8, !dbg !1409, !tbaa !839
  %uct = getelementptr inbounds %struct.ucp_mem, ptr %1, i32 0, i32 7, !dbg !1410
  %2 = load i8, ptr %memh_index.addr, align 1, !dbg !1411, !tbaa !883
  %idxprom = zext i8 %2 to i64, !dbg !1409
  %arrayidx = getelementptr inbounds [0 x ptr], ptr %uct, i64 0, i64 %idxprom, !dbg !1409
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1409, !tbaa !839
  store ptr %3, ptr %retval, align 8, !dbg !1412
  br label %return, !dbg !1412

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !1413
  ret ptr %4, !dbg !1413
}

; Function Attrs: nounwind uwtable
define void @ucp_datatype_iter_str(ptr noundef %dt_iter, ptr noundef %strb) #0 !dbg !1414 {
entry:
  %dt_iter.addr = alloca ptr, align 8
  %strb.addr = alloca ptr, align 8
  %iov_index = alloca i64, align 8
  %offset = alloca i64, align 8
  %iov = alloca ptr, align 8
  %sysdev_name = alloca ptr, align 8
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !1418, metadata !DIExpression()), !dbg !1424
  store ptr %strb, ptr %strb.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %strb.addr, metadata !1419, metadata !DIExpression()), !dbg !1425
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_index) #9, !dbg !1426
  tail call void @llvm.dbg.declare(metadata ptr %iov_index, metadata !1420, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !1426
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !1421, metadata !DIExpression()), !dbg !1428
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov) #9, !dbg !1429
  tail call void @llvm.dbg.declare(metadata ptr %iov, metadata !1422, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.start.p0(i64 8, ptr %sysdev_name) #9, !dbg !1431
  tail call void @llvm.dbg.declare(metadata ptr %sysdev_name, metadata !1423, metadata !DIExpression()), !dbg !1432
  %0 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1433, !tbaa !839
  %mem_info = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %0, i32 0, i32 1, !dbg !1435
  %type = getelementptr inbounds %struct.ucp_memory_info_t, ptr %mem_info, i32 0, i32 0, !dbg !1436
  %1 = load i8, ptr %type, align 4, !dbg !1436, !tbaa !908
  %conv = zext i8 %1 to i32, !dbg !1433
  %cmp = icmp ne i32 %conv, 0, !dbg !1437
  br i1 %cmp, label %if.then, label %if.end, !dbg !1438

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %strb.addr, align 8, !dbg !1439, !tbaa !839
  %3 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1441, !tbaa !839
  %mem_info2 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %3, i32 0, i32 1, !dbg !1442
  %type3 = getelementptr inbounds %struct.ucp_memory_info_t, ptr %mem_info2, i32 0, i32 0, !dbg !1443
  %4 = load i8, ptr %type3, align 4, !dbg !1443, !tbaa !908
  %idxprom = zext i8 %4 to i64, !dbg !1444
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @ucs_memory_type_names, i64 0, i64 %idxprom, !dbg !1444
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1444, !tbaa !839
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %2, ptr noundef @.str.1, ptr noundef %5), !dbg !1445
  br label %if.end, !dbg !1446

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1447, !tbaa !839
  %mem_info4 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %6, i32 0, i32 1, !dbg !1449
  %sys_dev = getelementptr inbounds %struct.ucp_memory_info_t, ptr %mem_info4, i32 0, i32 1, !dbg !1450
  %7 = load i8, ptr %sys_dev, align 1, !dbg !1450, !tbaa !1451
  %conv5 = zext i8 %7 to i32, !dbg !1447
  %cmp6 = icmp ne i32 %conv5, 255, !dbg !1452
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !1453

if.then8:                                         ; preds = %if.end
  %8 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1454, !tbaa !839
  %mem_info9 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %8, i32 0, i32 1, !dbg !1456
  %sys_dev10 = getelementptr inbounds %struct.ucp_memory_info_t, ptr %mem_info9, i32 0, i32 1, !dbg !1457
  %9 = load i8, ptr %sys_dev10, align 1, !dbg !1457, !tbaa !1451
  %call = call ptr @ucs_topo_sys_device_get_name(i8 noundef zeroext %9), !dbg !1458
  store ptr %call, ptr %sysdev_name, align 8, !dbg !1459, !tbaa !839
  %10 = load ptr, ptr %strb.addr, align 8, !dbg !1460, !tbaa !839
  %11 = load ptr, ptr %sysdev_name, align 8, !dbg !1461, !tbaa !839
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %10, ptr noundef @.str.1, ptr noundef %11), !dbg !1462
  br label %if.end11, !dbg !1463

if.end11:                                         ; preds = %if.then8, %if.end
  %12 = load ptr, ptr %strb.addr, align 8, !dbg !1464, !tbaa !839
  %13 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1465, !tbaa !839
  %offset12 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %13, i32 0, i32 3, !dbg !1466
  %14 = load i64, ptr %offset12, align 8, !dbg !1466, !tbaa !1264
  %15 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1467, !tbaa !839
  %length = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %15, i32 0, i32 2, !dbg !1468
  %16 = load i64, ptr %length, align 8, !dbg !1468, !tbaa !950
  %17 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1469, !tbaa !839
  %dt_class = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %17, i32 0, i32 0, !dbg !1470
  %18 = load i32, ptr %dt_class, align 8, !dbg !1470, !tbaa !1471
  %idxprom13 = zext i32 %18 to i64, !dbg !1472
  %arrayidx14 = getelementptr inbounds [0 x ptr], ptr @ucp_datatype_class_names, i64 0, i64 %idxprom13, !dbg !1472
  %19 = load ptr, ptr %arrayidx14, align 8, !dbg !1472, !tbaa !839
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %12, ptr noundef @.str.2, i64 noundef %14, i64 noundef %16, ptr noundef %19), !dbg !1473
  %20 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1474, !tbaa !839
  %dt_class15 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %20, i32 0, i32 0, !dbg !1475
  %21 = load i32, ptr %dt_class15, align 8, !dbg !1475, !tbaa !1471
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb17
    i32 7, label %sw.bb34
  ], !dbg !1476

sw.bb:                                            ; preds = %if.end11
  %22 = load ptr, ptr %strb.addr, align 8, !dbg !1477, !tbaa !839
  %23 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1479, !tbaa !839
  %type16 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %23, i32 0, i32 4, !dbg !1480
  %buffer = getelementptr inbounds %struct.anon, ptr %type16, i32 0, i32 0, !dbg !1481
  %24 = load ptr, ptr %buffer, align 8, !dbg !1481, !tbaa !883
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %22, ptr noundef @.str.3, ptr noundef %24), !dbg !1482
  br label %sw.epilog, !dbg !1483

sw.bb17:                                          ; preds = %if.end11
  store i64 0, ptr %iov_index, align 8, !dbg !1484, !tbaa !845
  store i64 0, ptr %offset, align 8, !dbg !1485, !tbaa !845
  br label %while.cond, !dbg !1486

while.cond:                                       ; preds = %if.end32, %sw.bb17
  %25 = load i64, ptr %offset, align 8, !dbg !1487, !tbaa !845
  %26 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1488, !tbaa !839
  %length18 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %26, i32 0, i32 2, !dbg !1489
  %27 = load i64, ptr %length18, align 8, !dbg !1489, !tbaa !950
  %cmp19 = icmp ult i64 %25, %27, !dbg !1490
  br i1 %cmp19, label %while.body, label %while.end, !dbg !1486

while.body:                                       ; preds = %while.cond
  %28 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1491, !tbaa !839
  %29 = load i64, ptr %iov_index, align 8, !dbg !1493, !tbaa !845
  %call21 = call ptr @ucp_datatype_iter_iov_at(ptr noundef %28, i64 noundef %29), !dbg !1494
  store ptr %call21, ptr %iov, align 8, !dbg !1495, !tbaa !839
  %30 = load ptr, ptr %strb.addr, align 8, !dbg !1496, !tbaa !839
  %31 = load i64, ptr %iov_index, align 8, !dbg !1497, !tbaa !845
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %30, ptr noundef @.str.4, i64 noundef %31), !dbg !1498
  %32 = load i64, ptr %iov_index, align 8, !dbg !1499, !tbaa !845
  %33 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1501, !tbaa !839
  %type22 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %33, i32 0, i32 4, !dbg !1502
  %iov_index23 = getelementptr inbounds %struct.anon.1, ptr %type22, i32 0, i32 1, !dbg !1503
  %34 = load i64, ptr %iov_index23, align 8, !dbg !1503, !tbaa !883
  %cmp24 = icmp eq i64 %32, %34, !dbg !1504
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !1505

if.then26:                                        ; preds = %while.body
  %35 = load ptr, ptr %strb.addr, align 8, !dbg !1506, !tbaa !839
  %36 = load ptr, ptr %iov, align 8, !dbg !1508, !tbaa !839
  %buffer27 = getelementptr inbounds %struct.ucp_dt_iov, ptr %36, i32 0, i32 0, !dbg !1509
  %37 = load ptr, ptr %buffer27, align 8, !dbg !1509, !tbaa !900
  %38 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1510, !tbaa !839
  %type28 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %38, i32 0, i32 4, !dbg !1511
  %iov_offset = getelementptr inbounds %struct.anon.1, ptr %type28, i32 0, i32 2, !dbg !1512
  %39 = load i64, ptr %iov_offset, align 8, !dbg !1512, !tbaa !883
  %40 = load ptr, ptr %iov, align 8, !dbg !1513, !tbaa !839
  %length29 = getelementptr inbounds %struct.ucp_dt_iov, ptr %40, i32 0, i32 1, !dbg !1514
  %41 = load i64, ptr %length29, align 8, !dbg !1514, !tbaa !904
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %35, ptr noundef @.str.5, ptr noundef %37, i64 noundef %39, i64 noundef %41), !dbg !1515
  br label %if.end32, !dbg !1516

if.else:                                          ; preds = %while.body
  %42 = load ptr, ptr %strb.addr, align 8, !dbg !1517, !tbaa !839
  %43 = load ptr, ptr %iov, align 8, !dbg !1519, !tbaa !839
  %buffer30 = getelementptr inbounds %struct.ucp_dt_iov, ptr %43, i32 0, i32 0, !dbg !1520
  %44 = load ptr, ptr %buffer30, align 8, !dbg !1520, !tbaa !900
  %45 = load ptr, ptr %iov, align 8, !dbg !1521, !tbaa !839
  %length31 = getelementptr inbounds %struct.ucp_dt_iov, ptr %45, i32 0, i32 1, !dbg !1522
  %46 = load i64, ptr %length31, align 8, !dbg !1522, !tbaa !904
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %42, ptr noundef @.str.6, ptr noundef %44, i64 noundef %46), !dbg !1523
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  %47 = load ptr, ptr %iov, align 8, !dbg !1524, !tbaa !839
  %length33 = getelementptr inbounds %struct.ucp_dt_iov, ptr %47, i32 0, i32 1, !dbg !1525
  %48 = load i64, ptr %length33, align 8, !dbg !1525, !tbaa !904
  %49 = load i64, ptr %offset, align 8, !dbg !1526, !tbaa !845
  %add = add i64 %49, %48, !dbg !1526
  store i64 %add, ptr %offset, align 8, !dbg !1526, !tbaa !845
  %50 = load i64, ptr %iov_index, align 8, !dbg !1527, !tbaa !845
  %inc = add i64 %50, 1, !dbg !1527
  store i64 %inc, ptr %iov_index, align 8, !dbg !1527, !tbaa !845
  br label %while.cond, !dbg !1486, !llvm.loop !1528

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1530

sw.bb34:                                          ; preds = %if.end11
  %51 = load ptr, ptr %strb.addr, align 8, !dbg !1531, !tbaa !839
  %52 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1532, !tbaa !839
  %type35 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %52, i32 0, i32 4, !dbg !1533
  %dt_gen = getelementptr inbounds %struct.anon.0, ptr %type35, i32 0, i32 2, !dbg !1534
  %53 = load ptr, ptr %dt_gen, align 8, !dbg !1534, !tbaa !883
  %54 = load ptr, ptr %dt_iter.addr, align 8, !dbg !1535, !tbaa !839
  %type36 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %54, i32 0, i32 4, !dbg !1536
  %state = getelementptr inbounds %struct.anon.0, ptr %type36, i32 0, i32 3, !dbg !1537
  %55 = load ptr, ptr %state, align 8, !dbg !1537, !tbaa !883
  call void (ptr, ptr, ...) @ucs_string_buffer_appendf(ptr noundef %51, ptr noundef @.str.7, ptr noundef %53, ptr noundef %55), !dbg !1538
  br label %sw.epilog, !dbg !1539

sw.default:                                       ; preds = %if.end11
  br label %sw.epilog, !dbg !1540

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %while.end, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %sysdev_name) #9, !dbg !1541
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov) #9, !dbg !1541
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !1541
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_index) #9, !dbg !1541
  ret void, !dbg !1541
}

declare !dbg !1542 void @ucs_string_buffer_appendf(ptr noundef, ptr noundef, ...) #2

declare !dbg !1545 ptr @ucs_topo_sys_device_get_name(i8 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_recursive_spin_lock(ptr noundef %lock) #5 !dbg !1548 {
entry:
  %lock.addr = alloca ptr, align 8
  %self = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1553, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #9, !dbg !1556
  tail call void @llvm.dbg.declare(metadata ptr %self, metadata !1554, metadata !DIExpression()), !dbg !1557
  %call = call i64 @pthread_self() #10, !dbg !1558
  store i64 %call, ptr %self, align 8, !dbg !1557, !tbaa !845
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1559, !tbaa !839
  %1 = load i64, ptr %self, align 8, !dbg !1561, !tbaa !845
  %call1 = call i32 @ucs_recursive_spin_is_owner(ptr noundef %0, i64 noundef %1), !dbg !1562
  %tobool = icmp ne i32 %call1, 0, !dbg !1562
  br i1 %tobool, label %if.then, label %if.end, !dbg !1563

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !1564, !tbaa !839
  %count = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %2, i32 0, i32 1, !dbg !1566
  %3 = load i32, ptr %count, align 4, !dbg !1567, !tbaa !1568
  %inc = add nsw i32 %3, 1, !dbg !1567
  store i32 %inc, ptr %count, align 4, !dbg !1567, !tbaa !1568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1571

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !1572, !tbaa !839
  %super = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %4, i32 0, i32 0, !dbg !1573
  call void @ucs_spin_lock(ptr noundef %super), !dbg !1574
  %5 = load i64, ptr %self, align 8, !dbg !1575, !tbaa !845
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !1576, !tbaa !839
  %owner = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %6, i32 0, i32 2, !dbg !1577
  store i64 %5, ptr %owner, align 8, !dbg !1578, !tbaa !1579
  %7 = load ptr, ptr %lock.addr, align 8, !dbg !1580, !tbaa !839
  %count2 = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %7, i32 0, i32 1, !dbg !1581
  %8 = load i32, ptr %count2, align 4, !dbg !1582, !tbaa !1568
  %inc3 = add nsw i32 %8, 1, !dbg !1582
  store i32 %inc3, ptr %count2, align 4, !dbg !1582, !tbaa !1568
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1583
  br label %cleanup, !dbg !1583

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #9, !dbg !1583
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1583

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare !dbg !1584 i32 @pthread_mutex_lock(ptr noundef) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucs_rcache_lookup_unsafe(ptr noundef %rcache, ptr noundef %address, i64 noundef %length, i32 noundef %prot) #3 !dbg !1589 {
entry:
  %retval = alloca ptr, align 8
  %rcache.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %start = alloca i64, align 8
  %pgt_region = alloca ptr, align 8
  %region = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %rcache, ptr %rcache.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %rcache.addr, metadata !1594, metadata !DIExpression()), !dbg !1602
  store ptr %address, ptr %address.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1595, metadata !DIExpression()), !dbg !1603
  store i64 %length, ptr %length.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1596, metadata !DIExpression()), !dbg !1604
  store i32 %prot, ptr %prot.addr, align 4, !tbaa !848
  tail call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !1597, metadata !DIExpression()), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #9, !dbg !1606
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !1598, metadata !DIExpression()), !dbg !1607
  %0 = load ptr, ptr %address.addr, align 8, !dbg !1608, !tbaa !839
  %1 = ptrtoint ptr %0 to i64, !dbg !1609
  store i64 %1, ptr %start, align 8, !dbg !1607, !tbaa !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgt_region) #9, !dbg !1610
  tail call void @llvm.dbg.declare(metadata ptr %pgt_region, metadata !1599, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #9, !dbg !1612
  tail call void @llvm.dbg.declare(metadata ptr %region, metadata !1601, metadata !DIExpression()), !dbg !1613
  br label %do.body, !dbg !1614

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1615

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !1617

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1617

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !1615

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !1615

do.end3:                                          ; preds = %do.cond2
  %2 = load ptr, ptr %rcache.addr, align 8, !dbg !1619, !tbaa !839
  %inv_q = getelementptr inbounds %struct.ucs_rcache, ptr %2, i32 0, i32 5, !dbg !1619
  %call = call i32 @ucs_queue_is_empty(ptr noundef %inv_q), !dbg !1619
  %tobool = icmp ne i32 %call, 0, !dbg !1619
  %lnot = xor i1 %tobool, true, !dbg !1619
  %lnot.ext = zext i1 %lnot to i32, !dbg !1619
  %conv = sext i32 %lnot.ext to i64, !dbg !1619
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1619
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1619
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1621

if.then:                                          ; preds = %do.end3
  store ptr null, ptr %retval, align 8, !dbg !1622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1622

if.end:                                           ; preds = %do.end3
  %3 = load ptr, ptr %rcache.addr, align 8, !dbg !1624, !tbaa !839
  %pgtable = getelementptr inbounds %struct.ucs_rcache, ptr %3, i32 0, i32 2, !dbg !1624
  %4 = load i64, ptr %start, align 8, !dbg !1624, !tbaa !845
  %call5 = call ptr @ucs_pgtable_lookup(ptr noundef %pgtable, i64 noundef %4), !dbg !1624
  store ptr %call5, ptr %pgt_region, align 8, !dbg !1625, !tbaa !839
  %5 = load ptr, ptr %pgt_region, align 8, !dbg !1626, !tbaa !839
  %cmp = icmp eq ptr %5, null, !dbg !1626
  %conv6 = zext i1 %cmp to i32, !dbg !1626
  %conv7 = sext i32 %conv6 to i64, !dbg !1626
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !1626
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !1626
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1628

if.then10:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1629

if.end11:                                         ; preds = %if.end
  %6 = load ptr, ptr %pgt_region, align 8, !dbg !1631, !tbaa !839
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 0, !dbg !1631
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1631, !tbaa !839
  %7 = load ptr, ptr %tmp, align 8, !dbg !1631, !tbaa !839
  store ptr %7, ptr %region, align 8, !dbg !1633, !tbaa !839
  %8 = load i64, ptr %start, align 8, !dbg !1634, !tbaa !845
  %9 = load i64, ptr %length.addr, align 8, !dbg !1636, !tbaa !845
  %add = add i64 %8, %9, !dbg !1637
  %10 = load ptr, ptr %region, align 8, !dbg !1638, !tbaa !839
  %super = getelementptr inbounds %struct.ucs_rcache_region, ptr %10, i32 0, i32 0, !dbg !1639
  %end = getelementptr inbounds %struct.ucs_pgt_region, ptr %super, i32 0, i32 1, !dbg !1640
  %11 = load i64, ptr %end, align 8, !dbg !1640, !tbaa !1641
  %cmp12 = icmp ugt i64 %add, %11, !dbg !1642
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !1643

lor.lhs.false:                                    ; preds = %if.end11
  %12 = load ptr, ptr %region, align 8, !dbg !1644, !tbaa !839
  %13 = load i32, ptr %prot.addr, align 4, !dbg !1645, !tbaa !848
  %call14 = call i32 @ucs_rcache_region_test(ptr noundef %12, i32 noundef %13), !dbg !1646
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1646
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1647

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  store ptr null, ptr %retval, align 8, !dbg !1648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1648

if.end17:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %region, align 8, !dbg !1650, !tbaa !839
  %refcount = getelementptr inbounds %struct.ucs_rcache_region, ptr %14, i32 0, i32 4, !dbg !1651
  %15 = load volatile i32, ptr %refcount, align 8, !dbg !1652, !tbaa !1653
  %inc = add i32 %15, 1, !dbg !1652
  store volatile i32 %inc, ptr %refcount, align 8, !dbg !1652, !tbaa !1653
  %16 = load ptr, ptr %rcache.addr, align 8, !dbg !1654, !tbaa !839
  %17 = load ptr, ptr %region, align 8, !dbg !1655, !tbaa !839
  call void @ucs_rcache_region_lru_remove(ptr noundef %16, ptr noundef %17), !dbg !1656
  %18 = load ptr, ptr %region, align 8, !dbg !1657, !tbaa !839
  store ptr %18, ptr %retval, align 8, !dbg !1658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1658

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #9, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgt_region) #9, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #9, !dbg !1659
  %19 = load ptr, ptr %retval, align 8, !dbg !1659
  ret ptr %19, !dbg !1659
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucs_rcache_region_put_unsafe(ptr noundef %rcache, ptr noundef %region) #3 !dbg !1660 {
entry:
  %rcache.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  store ptr %rcache, ptr %rcache.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %rcache.addr, metadata !1664, metadata !DIExpression()), !dbg !1666
  store ptr %region, ptr %region.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1665, metadata !DIExpression()), !dbg !1667
  %0 = load ptr, ptr %rcache.addr, align 8, !dbg !1668, !tbaa !839
  %1 = load ptr, ptr %region.addr, align 8, !dbg !1669, !tbaa !839
  call void @ucs_rcache_region_lru_add(ptr noundef %0, ptr noundef %1), !dbg !1670
  %2 = load ptr, ptr %region.addr, align 8, !dbg !1671, !tbaa !839
  %refcount = getelementptr inbounds %struct.ucs_rcache_region, ptr %2, i32 0, i32 4, !dbg !1671
  %3 = load volatile i32, ptr %refcount, align 8, !dbg !1671, !tbaa !1653
  %dec = add i32 %3, -1, !dbg !1671
  store volatile i32 %dec, ptr %refcount, align 8, !dbg !1671, !tbaa !1653
  %cmp = icmp eq i32 %dec, 0, !dbg !1671
  %conv = zext i1 %cmp to i32, !dbg !1671
  %conv1 = sext i32 %conv to i64, !dbg !1671
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1671
  %tobool = icmp ne i64 %expval, 0, !dbg !1671
  br i1 %tobool, label %if.then, label %if.end, !dbg !1673

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rcache.addr, align 8, !dbg !1674, !tbaa !839
  %5 = load ptr, ptr %region.addr, align 8, !dbg !1676, !tbaa !839
  call void @ucs_mem_region_destroy_internal(ptr noundef %4, ptr noundef %5), !dbg !1677
  br label %if.end, !dbg !1678

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1679
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_recursive_spin_unlock(ptr noundef %lock) #5 !dbg !1680 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1682, metadata !DIExpression()), !dbg !1683
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1684, !tbaa !839
  %count = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %0, i32 0, i32 1, !dbg !1685
  %1 = load i32, ptr %count, align 4, !dbg !1686, !tbaa !1568
  %dec = add nsw i32 %1, -1, !dbg !1686
  store i32 %dec, ptr %count, align 4, !dbg !1686, !tbaa !1568
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !1687, !tbaa !839
  %count1 = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %2, i32 0, i32 1, !dbg !1689
  %3 = load i32, ptr %count1, align 4, !dbg !1689, !tbaa !1568
  %cmp = icmp eq i32 %3, 0, !dbg !1690
  br i1 %cmp, label %if.then, label %if.end, !dbg !1691

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !1692, !tbaa !839
  %owner = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %4, i32 0, i32 2, !dbg !1694
  store i64 -1, ptr %owner, align 8, !dbg !1695, !tbaa !1579
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !1696, !tbaa !839
  %super = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %5, i32 0, i32 0, !dbg !1697
  call void @ucs_spin_unlock(ptr noundef %super), !dbg !1698
  br label %if.end, !dbg !1699

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1700
}

; Function Attrs: nounwind
declare !dbg !1701 i32 @pthread_mutex_unlock(ptr noundef) #6

declare !dbg !1702 signext i8 @ucp_memh_get_slow(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1703 i64 @pthread_self() #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ucs_recursive_spin_is_owner(ptr noundef %lock, i64 noundef %self) #5 !dbg !1706 {
entry:
  %lock.addr = alloca ptr, align 8
  %self.addr = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1712, metadata !DIExpression()), !dbg !1714
  store i64 %self, ptr %self.addr, align 8, !tbaa !845
  tail call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !1713, metadata !DIExpression()), !dbg !1715
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1716, !tbaa !839
  %owner = getelementptr inbounds %struct.ucs_recursive_spinlock, ptr %0, i32 0, i32 2, !dbg !1717
  %1 = load i64, ptr %owner, align 8, !dbg !1717, !tbaa !1579
  %2 = load i64, ptr %self.addr, align 8, !dbg !1718, !tbaa !845
  %cmp = icmp eq i64 %1, %2, !dbg !1719
  %conv = zext i1 %cmp to i32, !dbg !1719
  ret i32 %conv, !dbg !1720
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_spin_lock(ptr noundef %lock) #5 !dbg !1721 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1726, metadata !DIExpression()), !dbg !1727
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1728, !tbaa !839
  %lock1 = getelementptr inbounds %struct.ucs_spinlock, ptr %0, i32 0, i32 0, !dbg !1729
  %call = call i32 @pthread_spin_lock(ptr noundef %lock1) #9, !dbg !1730
  ret void, !dbg !1731
}

; Function Attrs: nounwind
declare !dbg !1732 i32 @pthread_spin_lock(ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ucs_queue_is_empty(ptr noundef %queue) #5 !dbg !1736 {
entry:
  %queue.addr = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !1743, metadata !DIExpression()), !dbg !1744
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !1745, !tbaa !839
  %ptail = getelementptr inbounds %struct.ucs_queue_head, ptr %0, i32 0, i32 1, !dbg !1746
  %1 = load ptr, ptr %ptail, align 8, !dbg !1746, !tbaa !1747
  %2 = load ptr, ptr %queue.addr, align 8, !dbg !1749, !tbaa !839
  %head = getelementptr inbounds %struct.ucs_queue_head, ptr %2, i32 0, i32 0, !dbg !1750
  %cmp = icmp eq ptr %1, %head, !dbg !1751
  %conv = zext i1 %cmp to i32, !dbg !1751
  ret i32 %conv, !dbg !1752
}

declare !dbg !1753 ptr @ucs_pgtable_lookup(ptr noundef, i64 noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucs_rcache_region_test(ptr noundef %region, i32 noundef %prot) #3 !dbg !1756 {
entry:
  %region.addr = alloca ptr, align 8
  %prot.addr = alloca i32, align 4
  store ptr %region, ptr %region.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1760, metadata !DIExpression()), !dbg !1762
  store i32 %prot, ptr %prot.addr, align 4, !tbaa !848
  tail call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !1761, metadata !DIExpression()), !dbg !1763
  %0 = load ptr, ptr %region.addr, align 8, !dbg !1764, !tbaa !839
  %flags = getelementptr inbounds %struct.ucs_rcache_region, ptr %0, i32 0, i32 7, !dbg !1765
  %1 = load i8, ptr %flags, align 2, !dbg !1765, !tbaa !1766
  %conv = zext i8 %1 to i32, !dbg !1764
  %and = and i32 %conv, 1, !dbg !1767
  %tobool = icmp ne i32 %and, 0, !dbg !1767
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1768

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %region.addr, align 8, !dbg !1769, !tbaa !839
  %prot1 = getelementptr inbounds %struct.ucs_rcache_region, ptr %2, i32 0, i32 6, !dbg !1769
  %3 = load i8, ptr %prot1, align 1, !dbg !1769, !tbaa !1770
  %conv2 = zext i8 %3 to i32, !dbg !1769
  %4 = load i32, ptr %prot.addr, align 4, !dbg !1769, !tbaa !848
  %and3 = and i32 %conv2, %4, !dbg !1769
  %5 = load i32, ptr %prot.addr, align 4, !dbg !1769, !tbaa !848
  %cmp = icmp eq i32 %and3, %5, !dbg !1769
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !1771
  %land.ext = zext i1 %6 to i32, !dbg !1768
  ret i32 %land.ext, !dbg !1772
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucs_rcache_region_lru_remove(ptr noundef %rcache, ptr noundef %region) #3 !dbg !1773 {
entry:
  %rcache.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  store ptr %rcache, ptr %rcache.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %rcache.addr, metadata !1775, metadata !DIExpression()), !dbg !1777
  store ptr %region, ptr %region.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1776, metadata !DIExpression()), !dbg !1778
  %0 = load ptr, ptr %region.addr, align 8, !dbg !1779, !tbaa !839
  %lru_flags = getelementptr inbounds %struct.ucs_rcache_region, ptr %0, i32 0, i32 8, !dbg !1781
  %1 = load i8, ptr %lru_flags, align 1, !dbg !1781, !tbaa !1782
  %conv = zext i8 %1 to i32, !dbg !1779
  %and = and i32 %conv, 1, !dbg !1783
  %tobool = icmp ne i32 %and, 0, !dbg !1783
  br i1 %tobool, label %if.end, label %if.then, !dbg !1784

if.then:                                          ; preds = %entry
  br label %return, !dbg !1785

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1787

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1788

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %region.addr, align 8, !dbg !1790, !tbaa !839
  %lru_list = getelementptr inbounds %struct.ucs_rcache_region, ptr %2, i32 0, i32 1, !dbg !1791
  call void @ucs_list_del(ptr noundef %lru_list), !dbg !1792
  %3 = load ptr, ptr %region.addr, align 8, !dbg !1793, !tbaa !839
  %lru_flags1 = getelementptr inbounds %struct.ucs_rcache_region, ptr %3, i32 0, i32 8, !dbg !1794
  %4 = load i8, ptr %lru_flags1, align 1, !dbg !1795, !tbaa !1782
  %conv2 = zext i8 %4 to i32, !dbg !1795
  %and3 = and i32 %conv2, -2, !dbg !1795
  %conv4 = trunc i32 %and3 to i8, !dbg !1795
  store i8 %conv4, ptr %lru_flags1, align 1, !dbg !1795, !tbaa !1782
  br label %return, !dbg !1796

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1796
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_list_del(ptr noundef %elem) #5 !dbg !1797 {
entry:
  %elem.addr = alloca ptr, align 8
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !1802, metadata !DIExpression()), !dbg !1803
  %0 = load ptr, ptr %elem.addr, align 8, !dbg !1804, !tbaa !839
  %next = getelementptr inbounds %struct.ucs_list_link, ptr %0, i32 0, i32 1, !dbg !1805
  %1 = load ptr, ptr %next, align 8, !dbg !1805, !tbaa !1806
  %2 = load ptr, ptr %elem.addr, align 8, !dbg !1807, !tbaa !839
  %prev = getelementptr inbounds %struct.ucs_list_link, ptr %2, i32 0, i32 0, !dbg !1808
  %3 = load ptr, ptr %prev, align 8, !dbg !1808, !tbaa !1809
  %next1 = getelementptr inbounds %struct.ucs_list_link, ptr %3, i32 0, i32 1, !dbg !1810
  store ptr %1, ptr %next1, align 8, !dbg !1811, !tbaa !1806
  %4 = load ptr, ptr %elem.addr, align 8, !dbg !1812, !tbaa !839
  %prev2 = getelementptr inbounds %struct.ucs_list_link, ptr %4, i32 0, i32 0, !dbg !1813
  %5 = load ptr, ptr %prev2, align 8, !dbg !1813, !tbaa !1809
  %6 = load ptr, ptr %elem.addr, align 8, !dbg !1814, !tbaa !839
  %next3 = getelementptr inbounds %struct.ucs_list_link, ptr %6, i32 0, i32 1, !dbg !1815
  %7 = load ptr, ptr %next3, align 8, !dbg !1815, !tbaa !1806
  %prev4 = getelementptr inbounds %struct.ucs_list_link, ptr %7, i32 0, i32 0, !dbg !1816
  store ptr %5, ptr %prev4, align 8, !dbg !1817, !tbaa !1809
  ret void, !dbg !1818
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucs_rcache_region_lru_add(ptr noundef %rcache, ptr noundef %region) #3 !dbg !1819 {
entry:
  %rcache.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  store ptr %rcache, ptr %rcache.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %rcache.addr, metadata !1821, metadata !DIExpression()), !dbg !1823
  store ptr %region, ptr %region.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1822, metadata !DIExpression()), !dbg !1824
  %0 = load ptr, ptr %region.addr, align 8, !dbg !1825, !tbaa !839
  %lru_flags = getelementptr inbounds %struct.ucs_rcache_region, ptr %0, i32 0, i32 8, !dbg !1827
  %1 = load i8, ptr %lru_flags, align 1, !dbg !1827, !tbaa !1782
  %conv = zext i8 %1 to i32, !dbg !1825
  %and = and i32 %conv, 1, !dbg !1828
  %tobool = icmp ne i32 %and, 0, !dbg !1828
  br i1 %tobool, label %if.then, label %if.end, !dbg !1829

if.then:                                          ; preds = %entry
  br label %return, !dbg !1830

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1832

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1833

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %rcache.addr, align 8, !dbg !1835, !tbaa !839
  %lru = getelementptr inbounds %struct.ucs_rcache, ptr %2, i32 0, i32 10, !dbg !1835
  %list = getelementptr inbounds %struct.anon.7, ptr %lru, i32 0, i32 1, !dbg !1835
  %3 = load ptr, ptr %region.addr, align 8, !dbg !1835, !tbaa !839
  %lru_list = getelementptr inbounds %struct.ucs_rcache_region, ptr %3, i32 0, i32 1, !dbg !1835
  call void @ucs_list_insert_before(ptr noundef %list, ptr noundef %lru_list), !dbg !1835
  %4 = load ptr, ptr %region.addr, align 8, !dbg !1836, !tbaa !839
  %lru_flags1 = getelementptr inbounds %struct.ucs_rcache_region, ptr %4, i32 0, i32 8, !dbg !1837
  %5 = load i8, ptr %lru_flags1, align 1, !dbg !1838, !tbaa !1782
  %conv2 = zext i8 %5 to i32, !dbg !1838
  %or = or i32 %conv2, 1, !dbg !1838
  %conv3 = trunc i32 %or to i8, !dbg !1838
  store i8 %conv3, ptr %lru_flags1, align 1, !dbg !1838, !tbaa !1782
  br label %return, !dbg !1839

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1839
}

declare !dbg !1840 void @ucs_mem_region_destroy_internal(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_list_insert_before(ptr noundef %pos, ptr noundef %new_link) #5 !dbg !1841 {
entry:
  %pos.addr = alloca ptr, align 8
  %new_link.addr = alloca ptr, align 8
  store ptr %pos, ptr %pos.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1845, metadata !DIExpression()), !dbg !1847
  store ptr %new_link, ptr %new_link.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %new_link.addr, metadata !1846, metadata !DIExpression()), !dbg !1848
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !1849, !tbaa !839
  %prev = getelementptr inbounds %struct.ucs_list_link, ptr %0, i32 0, i32 0, !dbg !1850
  %1 = load ptr, ptr %prev, align 8, !dbg !1850, !tbaa !1809
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !1851, !tbaa !839
  %3 = load ptr, ptr %new_link.addr, align 8, !dbg !1852, !tbaa !839
  call void @ucs_list_insert_replace(ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1853
  ret void, !dbg !1854
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_list_insert_replace(ptr noundef %prev, ptr noundef %next, ptr noundef %elem) #5 !dbg !1855 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1859, metadata !DIExpression()), !dbg !1862
  store ptr %next, ptr %next.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1860, metadata !DIExpression()), !dbg !1863
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !1861, metadata !DIExpression()), !dbg !1864
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !1865, !tbaa !839
  %1 = load ptr, ptr %elem.addr, align 8, !dbg !1866, !tbaa !839
  %prev1 = getelementptr inbounds %struct.ucs_list_link, ptr %1, i32 0, i32 0, !dbg !1867
  store ptr %0, ptr %prev1, align 8, !dbg !1868, !tbaa !1809
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1869, !tbaa !839
  %3 = load ptr, ptr %elem.addr, align 8, !dbg !1870, !tbaa !839
  %next2 = getelementptr inbounds %struct.ucs_list_link, ptr %3, i32 0, i32 1, !dbg !1871
  store ptr %2, ptr %next2, align 8, !dbg !1872, !tbaa !1806
  %4 = load ptr, ptr %elem.addr, align 8, !dbg !1873, !tbaa !839
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !1874, !tbaa !839
  %next3 = getelementptr inbounds %struct.ucs_list_link, ptr %5, i32 0, i32 1, !dbg !1875
  store ptr %4, ptr %next3, align 8, !dbg !1876, !tbaa !1806
  %6 = load ptr, ptr %elem.addr, align 8, !dbg !1877, !tbaa !839
  %7 = load ptr, ptr %next.addr, align 8, !dbg !1878, !tbaa !839
  %prev4 = getelementptr inbounds %struct.ucs_list_link, ptr %7, i32 0, i32 0, !dbg !1879
  store ptr %6, ptr %prev4, align 8, !dbg !1880, !tbaa !1809
  ret void, !dbg !1881
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_spin_unlock(ptr noundef %lock) #5 !dbg !1882 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1884, metadata !DIExpression()), !dbg !1885
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1886, !tbaa !839
  %lock1 = getelementptr inbounds %struct.ucs_spinlock, ptr %0, i32 0, i32 0, !dbg !1887
  %call = call i32 @pthread_spin_unlock(ptr noundef %lock1) #9, !dbg !1888
  ret void, !dbg !1889
}

; Function Attrs: nounwind
declare !dbg !1890 i32 @pthread_spin_unlock(ptr noundef) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_memh_put(ptr noundef %context, ptr noundef %memh) #3 !dbg !1891 {
entry:
  %context.addr = alloca ptr, align 8
  %memh.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1895, metadata !DIExpression()), !dbg !1897
  store ptr %memh, ptr %memh.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %memh.addr, metadata !1896, metadata !DIExpression()), !dbg !1898
  br label %do.body, !dbg !1899

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1900

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1902

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !1900

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %memh.addr, align 8, !dbg !1904, !tbaa !839
  %call = call i32 @ucp_memh_is_zero_length(ptr noundef %0), !dbg !1904
  %conv = sext i32 %call to i64, !dbg !1904
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1904
  %tobool = icmp ne i64 %expval, 0, !dbg !1904
  br i1 %tobool, label %if.then, label %if.end, !dbg !1906

if.then:                                          ; preds = %do.end2
  br label %do.end44, !dbg !1907

if.end:                                           ; preds = %do.end2
  %1 = load ptr, ptr %memh.addr, align 8, !dbg !1909, !tbaa !839
  %parent = getelementptr inbounds %struct.ucp_mem, ptr %1, i32 0, i32 6, !dbg !1909
  %2 = load ptr, ptr %parent, align 8, !dbg !1909, !tbaa !1911
  %cmp = icmp ne ptr %2, null, !dbg !1909
  %conv3 = zext i1 %cmp to i32, !dbg !1909
  %conv4 = sext i32 %conv3 to i64, !dbg !1909
  %expval5 = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !1909
  %tobool6 = icmp ne i64 %expval5, 0, !dbg !1909
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1912

if.then7:                                         ; preds = %if.end
  %3 = load ptr, ptr %context.addr, align 8, !dbg !1913, !tbaa !839
  %4 = load ptr, ptr %memh.addr, align 8, !dbg !1915, !tbaa !839
  call void @ucp_memh_cleanup(ptr noundef %3, ptr noundef %4), !dbg !1916
  %5 = load ptr, ptr %memh.addr, align 8, !dbg !1917, !tbaa !839
  call void @ucs_free(ptr noundef %5), !dbg !1918
  br label %do.end44, !dbg !1919

if.end8:                                          ; preds = %if.end
  br label %do.body9, !dbg !1920

do.body9:                                         ; preds = %if.end8
  %6 = load ptr, ptr %context.addr, align 8, !dbg !1921, !tbaa !839
  %mt_lock = getelementptr inbounds %struct.ucp_context, ptr %6, i32 0, i32 17, !dbg !1921
  %mt_type = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock, i32 0, i32 0, !dbg !1921
  %7 = load i32, ptr %mt_type, align 8, !dbg !1921, !tbaa !1038
  %cmp10 = icmp eq i32 %7, 1, !dbg !1921
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1924

if.then12:                                        ; preds = %do.body9
  %8 = load ptr, ptr %context.addr, align 8, !dbg !1925, !tbaa !839
  %mt_lock13 = getelementptr inbounds %struct.ucp_context, ptr %8, i32 0, i32 17, !dbg !1925
  %lock = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock13, i32 0, i32 1, !dbg !1925
  call void @ucs_recursive_spin_lock(ptr noundef %lock), !dbg !1925
  br label %if.end23, !dbg !1925

if.else:                                          ; preds = %do.body9
  %9 = load ptr, ptr %context.addr, align 8, !dbg !1927, !tbaa !839
  %mt_lock14 = getelementptr inbounds %struct.ucp_context, ptr %9, i32 0, i32 17, !dbg !1927
  %mt_type15 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock14, i32 0, i32 0, !dbg !1927
  %10 = load i32, ptr %mt_type15, align 8, !dbg !1927, !tbaa !1038
  %cmp16 = icmp eq i32 %10, 2, !dbg !1927
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !1921

if.then18:                                        ; preds = %if.else
  %11 = load ptr, ptr %context.addr, align 8, !dbg !1929, !tbaa !839
  %mt_lock19 = getelementptr inbounds %struct.ucp_context, ptr %11, i32 0, i32 17, !dbg !1929
  %lock20 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock19, i32 0, i32 1, !dbg !1929
  %call21 = call i32 @pthread_mutex_lock(ptr noundef %lock20) #9, !dbg !1929
  br label %if.end22, !dbg !1929

if.end22:                                         ; preds = %if.then18, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then12
  br label %do.end24, !dbg !1924

do.end24:                                         ; preds = %if.end23
  %12 = load ptr, ptr %context.addr, align 8, !dbg !1931, !tbaa !839
  %rcache = getelementptr inbounds %struct.ucp_context, ptr %12, i32 0, i32 15, !dbg !1932
  %13 = load ptr, ptr %rcache, align 8, !dbg !1932, !tbaa !1023
  %14 = load ptr, ptr %memh.addr, align 8, !dbg !1933, !tbaa !839
  %super = getelementptr inbounds %struct.ucp_mem, ptr %14, i32 0, i32 0, !dbg !1934
  call void @ucs_rcache_region_put_unsafe(ptr noundef %13, ptr noundef %super), !dbg !1935
  br label %do.body25, !dbg !1936

do.body25:                                        ; preds = %do.end24
  %15 = load ptr, ptr %context.addr, align 8, !dbg !1937, !tbaa !839
  %mt_lock26 = getelementptr inbounds %struct.ucp_context, ptr %15, i32 0, i32 17, !dbg !1937
  %mt_type27 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock26, i32 0, i32 0, !dbg !1937
  %16 = load i32, ptr %mt_type27, align 8, !dbg !1937, !tbaa !1038
  %cmp28 = icmp eq i32 %16, 1, !dbg !1937
  br i1 %cmp28, label %if.then30, label %if.else33, !dbg !1940

if.then30:                                        ; preds = %do.body25
  %17 = load ptr, ptr %context.addr, align 8, !dbg !1941, !tbaa !839
  %mt_lock31 = getelementptr inbounds %struct.ucp_context, ptr %17, i32 0, i32 17, !dbg !1941
  %lock32 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock31, i32 0, i32 1, !dbg !1941
  call void @ucs_recursive_spin_unlock(ptr noundef %lock32), !dbg !1941
  br label %if.end43, !dbg !1941

if.else33:                                        ; preds = %do.body25
  %18 = load ptr, ptr %context.addr, align 8, !dbg !1943, !tbaa !839
  %mt_lock34 = getelementptr inbounds %struct.ucp_context, ptr %18, i32 0, i32 17, !dbg !1943
  %mt_type35 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock34, i32 0, i32 0, !dbg !1943
  %19 = load i32, ptr %mt_type35, align 8, !dbg !1943, !tbaa !1038
  %cmp36 = icmp eq i32 %19, 2, !dbg !1943
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !1937

if.then38:                                        ; preds = %if.else33
  %20 = load ptr, ptr %context.addr, align 8, !dbg !1945, !tbaa !839
  %mt_lock39 = getelementptr inbounds %struct.ucp_context, ptr %20, i32 0, i32 17, !dbg !1945
  %lock40 = getelementptr inbounds %struct.ucp_mt_lock, ptr %mt_lock39, i32 0, i32 1, !dbg !1945
  %call41 = call i32 @pthread_mutex_unlock(ptr noundef %lock40) #9, !dbg !1945
  br label %if.end42, !dbg !1945

if.end42:                                         ; preds = %if.then38, %if.else33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then30
  br label %do.end44, !dbg !1940

do.end44:                                         ; preds = %if.then, %if.then7, %if.end43
  ret void, !dbg !1947
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_memh_is_zero_length(ptr noundef %memh) #3 !dbg !1948 {
entry:
  %memh.addr = alloca ptr, align 8
  store ptr %memh, ptr %memh.addr, align 8, !tbaa !839
  tail call void @llvm.dbg.declare(metadata ptr %memh.addr, metadata !1952, metadata !DIExpression()), !dbg !1953
  %0 = load ptr, ptr %memh.addr, align 8, !dbg !1954, !tbaa !839
  %cmp = icmp eq ptr %0, @ucp_mem_dummy_handle, !dbg !1955
  %conv = zext i1 %cmp to i32, !dbg !1955
  ret i32 %conv, !dbg !1956
}

declare !dbg !1957 void @ucp_memh_cleanup(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!36}
!llvm.module.flags = !{!741, !742, !743, !744, !745}
!llvm.ident = !{!746}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "dt/datatype_iter.c", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "3725f70b763ef2c5cce4a792f0d83c6d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 11)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 7)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 15)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !14, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 20)
!36 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !37, retainedTypes: !161, globals: !740, splitDebugInlining: false, nameTableKind: None)
!37 = !{!38, !75, !84, !93, !104, !114, !120, !126, !133, !138, !144, !153, !158}
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 45, baseType: !40, size: 8, elements: !41)
!39 = !DIFile(filename: "ucs/type/status.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "28c283b29442b5def29f6cf41aecfb03")
!40 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!42 = !DIEnumerator(name: "UCS_OK", value: 0)
!43 = !DIEnumerator(name: "UCS_INPROGRESS", value: 1)
!44 = !DIEnumerator(name: "UCS_ERR_NO_MESSAGE", value: -1)
!45 = !DIEnumerator(name: "UCS_ERR_NO_RESOURCE", value: -2)
!46 = !DIEnumerator(name: "UCS_ERR_IO_ERROR", value: -3)
!47 = !DIEnumerator(name: "UCS_ERR_NO_MEMORY", value: -4)
!48 = !DIEnumerator(name: "UCS_ERR_INVALID_PARAM", value: -5)
!49 = !DIEnumerator(name: "UCS_ERR_UNREACHABLE", value: -6)
!50 = !DIEnumerator(name: "UCS_ERR_INVALID_ADDR", value: -7)
!51 = !DIEnumerator(name: "UCS_ERR_NOT_IMPLEMENTED", value: -8)
!52 = !DIEnumerator(name: "UCS_ERR_MESSAGE_TRUNCATED", value: -9)
!53 = !DIEnumerator(name: "UCS_ERR_NO_PROGRESS", value: -10)
!54 = !DIEnumerator(name: "UCS_ERR_BUFFER_TOO_SMALL", value: -11)
!55 = !DIEnumerator(name: "UCS_ERR_NO_ELEM", value: -12)
!56 = !DIEnumerator(name: "UCS_ERR_SOME_CONNECTS_FAILED", value: -13)
!57 = !DIEnumerator(name: "UCS_ERR_NO_DEVICE", value: -14)
!58 = !DIEnumerator(name: "UCS_ERR_BUSY", value: -15)
!59 = !DIEnumerator(name: "UCS_ERR_CANCELED", value: -16)
!60 = !DIEnumerator(name: "UCS_ERR_SHMEM_SEGMENT", value: -17)
!61 = !DIEnumerator(name: "UCS_ERR_ALREADY_EXISTS", value: -18)
!62 = !DIEnumerator(name: "UCS_ERR_OUT_OF_RANGE", value: -19)
!63 = !DIEnumerator(name: "UCS_ERR_TIMED_OUT", value: -20)
!64 = !DIEnumerator(name: "UCS_ERR_EXCEEDS_LIMIT", value: -21)
!65 = !DIEnumerator(name: "UCS_ERR_UNSUPPORTED", value: -22)
!66 = !DIEnumerator(name: "UCS_ERR_REJECTED", value: -23)
!67 = !DIEnumerator(name: "UCS_ERR_NOT_CONNECTED", value: -24)
!68 = !DIEnumerator(name: "UCS_ERR_CONNECTION_RESET", value: -25)
!69 = !DIEnumerator(name: "UCS_ERR_FIRST_LINK_FAILURE", value: -40)
!70 = !DIEnumerator(name: "UCS_ERR_LAST_LINK_FAILURE", value: -59)
!71 = !DIEnumerator(name: "UCS_ERR_FIRST_ENDPOINT_FAILURE", value: -60)
!72 = !DIEnumerator(name: "UCS_ERR_ENDPOINT_TIMEOUT", value: -80)
!73 = !DIEnumerator(name: "UCS_ERR_LAST_ENDPOINT_FAILURE", value: -89)
!74 = !DIEnumerator(name: "UCS_ERR_LAST", value: -100)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 307, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "uct/api/uct.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "09bc2273d56a3774e618c4afb5c2e381")
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "UCT_DEVICE_TYPE_NET", value: 0)
!80 = !DIEnumerator(name: "UCT_DEVICE_TYPE_SHM", value: 1)
!81 = !DIEnumerator(name: "UCT_DEVICE_TYPE_ACC", value: 2)
!82 = !DIEnumerator(name: "UCT_DEVICE_TYPE_SELF", value: 3)
!83 = !DIEnumerator(name: "UCT_DEVICE_TYPE_LAST", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 472, baseType: !77, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "UCT_ALLOC_METHOD_THP", value: 0)
!87 = !DIEnumerator(name: "UCT_ALLOC_METHOD_MD", value: 1)
!88 = !DIEnumerator(name: "UCT_ALLOC_METHOD_HEAP", value: 2)
!89 = !DIEnumerator(name: "UCT_ALLOC_METHOD_MMAP", value: 3)
!90 = !DIEnumerator(name: "UCT_ALLOC_METHOD_HUGE", value: 4)
!91 = !DIEnumerator(name: "UCT_ALLOC_METHOD_LAST", value: 5)
!92 = !DIEnumerator(name: "UCT_ALLOC_METHOD_DEFAULT", value: 5)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 227, baseType: !77, size: 32, elements: !95)
!94 = !DIFile(filename: "core/ucp_types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "f846e622b45708728e368de7175239ab")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103}
!96 = !DIEnumerator(name: "UCP_RNDV_MODE_AUTO", value: 0)
!97 = !DIEnumerator(name: "UCP_RNDV_MODE_GET_ZCOPY", value: 1)
!98 = !DIEnumerator(name: "UCP_RNDV_MODE_PUT_ZCOPY", value: 2)
!99 = !DIEnumerator(name: "UCP_RNDV_MODE_GET_PIPELINE", value: 3)
!100 = !DIEnumerator(name: "UCP_RNDV_MODE_PUT_PIPELINE", value: 4)
!101 = !DIEnumerator(name: "UCP_RNDV_MODE_AM", value: 5)
!102 = !DIEnumerator(name: "UCP_RNDV_MODE_RKEY_PTR", value: 6)
!103 = !DIEnumerator(name: "UCP_RNDV_MODE_LAST", value: 7)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucs_memory_type", file: !105, line: 37, baseType: !77, size: 32, elements: !106)
!105 = !DIFile(filename: "ucs/memory/memory_type.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "bb76a75df4f6cf6e24ada6d360f0fc3a")
!106 = !{!107, !108, !109, !110, !111, !112, !113}
!107 = !DIEnumerator(name: "UCS_MEMORY_TYPE_HOST", value: 0)
!108 = !DIEnumerator(name: "UCS_MEMORY_TYPE_CUDA", value: 1)
!109 = !DIEnumerator(name: "UCS_MEMORY_TYPE_CUDA_MANAGED", value: 2)
!110 = !DIEnumerator(name: "UCS_MEMORY_TYPE_ROCM", value: 3)
!111 = !DIEnumerator(name: "UCS_MEMORY_TYPE_ROCM_MANAGED", value: 4)
!112 = !DIEnumerator(name: "UCS_MEMORY_TYPE_LAST", value: 5)
!113 = !DIEnumerator(name: "UCS_MEMORY_TYPE_UNKNOWN", value: 5)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 204, baseType: !77, size: 32, elements: !115)
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "UCP_ATOMIC_MODE_CPU", value: 0)
!117 = !DIEnumerator(name: "UCP_ATOMIC_MODE_DEVICE", value: 1)
!118 = !DIEnumerator(name: "UCP_ATOMIC_MODE_GUESS", value: 2)
!119 = !DIEnumerator(name: "UCP_ATOMIC_MODE_LAST", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 216, baseType: !77, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "UCP_FENCE_MODE_WEAK", value: 0)
!123 = !DIEnumerator(name: "UCP_FENCE_MODE_STRONG", value: 1)
!124 = !DIEnumerator(name: "UCP_FENCE_MODE_AUTO", value: 2)
!125 = !DIEnumerator(name: "UCP_FENCE_MODE_LAST", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucs_on_off_auto_value", file: !127, line: 65, baseType: !77, size: 32, elements: !128)
!127 = !DIFile(filename: "ucs/config/types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "334625b5e9d9ea7b05f72001931650ae")
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "UCS_CONFIG_OFF", value: 0)
!130 = !DIEnumerator(name: "UCS_CONFIG_ON", value: 1)
!131 = !DIEnumerator(name: "UCS_CONFIG_AUTO", value: 2)
!132 = !DIEnumerator(name: "UCS_CONFIG_ON_OFF_LAST", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 242, baseType: !77, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "UCP_OBJECT_VERSION_V1", value: 0)
!136 = !DIEnumerator(name: "UCP_OBJECT_VERSION_V2", value: 1)
!137 = !DIEnumerator(name: "UCP_OBJECT_VERSION_LAST", value: 2)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucp_mt_type", file: !139, line: 22, baseType: !77, size: 32, elements: !140)
!139 = !DIFile(filename: "core/ucp_thread.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "69f03c99e0ee52bb967e07c4e49cc5b3")
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "UCP_MT_TYPE_NONE", value: 0)
!142 = !DIEnumerator(name: "UCP_MT_TYPE_SPINLOCK", value: 1)
!143 = !DIEnumerator(name: "UCP_MT_TYPE_MUTEX", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucp_dt_type", file: !145, line: 529, baseType: !77, size: 32, elements: !146)
!145 = !DIFile(filename: "api/ucp.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "8e9ea5e5050cba93f806ca3d6ba4ae1b")
!146 = !{!147, !148, !149, !150, !151, !152}
!147 = !DIEnumerator(name: "UCP_DATATYPE_CONTIG", value: 0)
!148 = !DIEnumerator(name: "UCP_DATATYPE_STRIDED", value: 1)
!149 = !DIEnumerator(name: "UCP_DATATYPE_IOV", value: 2)
!150 = !DIEnumerator(name: "UCP_DATATYPE_GENERIC", value: 7)
!151 = !DIEnumerator(name: "UCP_DATATYPE_SHIFT", value: 3)
!152 = !DIEnumerator(name: "UCP_DATATYPE_CLASS_MASK", value: 7)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 42, baseType: !77, size: 32, elements: !155)
!154 = !DIFile(filename: "ucs/memory/rcache.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "06bf7169eb23f649f674ba38456d23c5")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "UCS_RCACHE_REGION_FLAG_REGISTERED", value: 1)
!157 = !DIEnumerator(name: "UCS_RCACHE_REGION_FLAG_PGTABLE", value: 2)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 65, baseType: !77, size: 32, elements: !159)
!159 = !{!160}
!160 = !DIEnumerator(name: "UCS_RCACHE_LRU_FLAG_IN_LRU", value: 1)
!161 = !{!162, !163, !166, !397, !182, !739, !388, !695, !251}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !164, line: 87, baseType: !165)
!164 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!165 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mem_t", file: !168, line: 39, baseType: !169)
!168 = !DIFile(filename: "core/ucp_mm.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "0ac0a5be17d547705b049694576c358c")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_mem", file: !168, line: 28, size: 960, elements: !170)
!170 = !{!171, !216, !727, !728, !729, !730, !731, !734}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !169, file: !168, line: 29, baseType: !172, size: 640)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_region_t", file: !154, line: 37, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_region", file: !154, line: 147, size: 640, elements: !174)
!174 = !{!175, !184, !192, !193, !194, !200, !202, !206, !207, !208}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !173, file: !154, line: 148, baseType: !176, size: 128, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_region_t", file: !177, line: 58, baseType: !178)
!177 = !DIFile(filename: "ucs/datastruct/pgtable.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "a88370ba33ea72e5a4a96f02d1bf5ee7")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_region", file: !177, line: 100, size: 128, align: 64, elements: !179)
!179 = !{!180, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !178, file: !177, line: 101, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_addr_t", file: !177, line: 54, baseType: !182)
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !178, file: !177, line: 102, baseType: !181, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lru_list", scope: !173, file: !154, line: 149, baseType: !185, size: 128, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_list_link_t", file: !186, line: 32, baseType: !187)
!186 = !DIFile(filename: "ucs/datastruct/list.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "560ed122fcbf30ccdb1a98bce3f12155")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_list_link", file: !186, line: 29, size: 128, elements: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !187, file: !186, line: 30, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !186, line: 31, baseType: !190, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_list", scope: !173, file: !154, line: 150, baseType: !185, size: 128, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "comp_list", scope: !173, file: !154, line: 151, baseType: !185, size: 128, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !173, file: !154, line: 152, baseType: !195, size: 32, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !197, line: 26, baseType: !198)
!197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !199, line: 42, baseType: !77)
!199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!200 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !173, file: !154, line: 154, baseType: !201, size: 8, offset: 544)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_status_t", file: !39, line: 86, baseType: !38)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !173, file: !154, line: 155, baseType: !203, size: 8, offset: 552)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !197, line: 24, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !199, line: 38, baseType: !205)
!205 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !154, line: 156, baseType: !203, size: 8, offset: 560)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lru_flags", scope: !173, file: !154, line: 157, baseType: !203, size: 8, offset: 568)
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !154, line: 158, baseType: !209, size: 64, offset: 576)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !154, line: 158, size: 64, elements: !210)
!210 = !{!211, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !209, file: !154, line: 159, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !197, line: 27, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !199, line: 45, baseType: !182)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pfn", scope: !209, file: !154, line: 160, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !169, file: !168, line: 30, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_context_h", file: !218, line: 60, baseType: !219)
!218 = !DIFile(filename: "api/ucp_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "7e090a05b600feac1a576a0fb43e2012")
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_context", file: !221, line: 263, size: 7552, elements: !222)
!221 = !DIFile(filename: "core/ucp_context.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "14d6de6ecb5d76517811c5ca138085bb")
!222 = !{!223, !250, !252, !304, !306, !311, !312, !313, !315, !316, !317, !318, !347, !358, !359, !362, !574, !679, !725, !726}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tl_cmpts", scope: !220, file: !221, line: 264, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_cmpt_t", file: !221, line: 226, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_cmpt", file: !221, line: 223, size: 448, elements: !227)
!227 = !{!228, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt", scope: !226, file: !221, line: 224, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_component_h", file: !230, line: 78, baseType: !231)
!230 = !DIFile(filename: "uct/api/uct_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "2cfa90575e26a3e39073bbd74de78a87")
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_component", file: !230, line: 78, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !226, file: !221, line: 225, baseType: !234, size: 384, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_component_attr_t", file: !76, line: 278, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_component_attr", file: !76, line: 244, size: 384, elements: !236)
!236 = !{!237, !238, !242, !243, !249}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !235, file: !76, line: 251, baseType: !212, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !76, line: 254, baseType: !239, size: 128, offset: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "md_resource_count", scope: !235, file: !76, line: 257, baseType: !77, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "md_resources", scope: !235, file: !76, line: 272, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_md_resource_desc_t", file: !76, line: 219, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_md_resource_desc", file: !76, line: 217, size: 128, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "md_name", scope: !246, file: !76, line: 218, baseType: !239, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !76, line: 277, baseType: !212, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "num_cmpts", scope: !220, file: !221, line: 265, baseType: !251, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rsc_index_t", file: !94, line: 31, baseType: !203)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tl_mds", scope: !220, file: !221, line: 267, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_md_t", file: !221, line: 257, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_md", file: !221, line: 232, size: 4416, elements: !256)
!256 = !{!257, !261, !262, !263, !303}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !255, file: !221, line: 236, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_md_h", file: !230, line: 86, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_md", file: !230, line: 86, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt_index", scope: !255, file: !221, line: 241, baseType: !251, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rsc", scope: !255, file: !221, line: 246, baseType: !245, size: 128, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !255, file: !221, line: 251, baseType: !264, size: 4096, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_md_attr_v2_t", file: !265, line: 775, baseType: !266)
!265 = !DIFile(filename: "uct/api/v2/uct_v2.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "804aa3ddb0badaf3e75bc94a03b7c4b9")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 688, size: 4096, elements: !267)
!267 = !{!268, !269, !270, !273, !274, !275, !276, !277, !278, !279, !280, !288, !289, !290, !298, !299}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !266, file: !265, line: 693, baseType: !212, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "max_alloc", scope: !266, file: !265, line: 698, baseType: !212, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg", scope: !266, file: !265, line: 703, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !272, line: 70, baseType: !182)
!272 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !265, line: 709, baseType: !212, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reg_mem_types", scope: !266, file: !265, line: 714, baseType: !212, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "cache_mem_types", scope: !266, file: !265, line: 719, baseType: !212, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "detect_mem_types", scope: !266, file: !265, line: 725, baseType: !212, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_mem_types", scope: !266, file: !265, line: 730, baseType: !212, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "access_mem_types", scope: !266, file: !265, line: 735, baseType: !212, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf_mem_types", scope: !266, file: !265, line: 740, baseType: !212, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reg_cost", scope: !266, file: !265, line: 746, baseType: !281, size: 128, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_linear_func_t", file: !282, line: 24, baseType: !283)
!282 = !DIFile(filename: "ucs/datastruct/linear_func.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "e7c0ec7e78b0e5e3678ea6172235e328")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 21, size: 128, elements: !284)
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !283, file: !282, line: 22, baseType: !286, size: 64)
!286 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !283, file: !282, line: 23, baseType: !286, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "component_name", scope: !266, file: !265, line: 751, baseType: !239, size: 128, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_packed_size", scope: !266, file: !265, line: 756, baseType: !271, size: 64, offset: 896)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "local_cpus", scope: !266, file: !265, line: 761, baseType: !291, size: 1024, offset: 960)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_cpu_set_t", file: !292, line: 28, baseType: !293)
!292 = !DIFile(filename: "ucs/type/cpu_set.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "c2c762a5c7a8721b60757b564d788120")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 26, size: 1024, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ucs_bits", scope: !293, file: !292, line: 27, baseType: !296, size: 1024)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 1024, elements: !240)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_cpu_mask_t", file: !292, line: 14, baseType: !182)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "exported_mkey_packed_size", scope: !266, file: !265, line: 767, baseType: !271, size: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "global_id", scope: !266, file: !265, line: 774, baseType: !300, size: 2048, offset: 2048)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pack_flags_mask", scope: !255, file: !221, line: 256, baseType: !77, size: 32, offset: 4352)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "num_mds", scope: !220, file: !221, line: 268, baseType: !305, size: 8, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_md_index_t", file: !94, line: 36, baseType: !251)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reg_md_map", scope: !220, file: !221, line: 272, baseType: !307, size: 320, offset: 256)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 320, elements: !309)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_md_map_t", file: !94, line: 39, baseType: !212)
!309 = !{!310}
!310 = !DISubrange(count: 5)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cache_md_map", scope: !220, file: !221, line: 275, baseType: !307, size: 320, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf_reg_md_map", scope: !220, file: !221, line: 278, baseType: !308, size: 64, offset: 896)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type_detect_mds", scope: !220, file: !221, line: 281, baseType: !314, size: 40, offset: 960)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 40, elements: !309)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "num_mem_type_detect_mds", scope: !220, file: !221, line: 282, baseType: !305, size: 8, offset: 1000)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf_mds", scope: !220, file: !221, line: 287, baseType: !314, size: 40, offset: 1008)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type_mask", scope: !220, file: !221, line: 289, baseType: !212, size: 64, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tl_rscs", scope: !220, file: !221, line: 291, baseType: !319, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_resource_desc_t", file: !221, line: 208, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_resource_desc", file: !221, line: 201, size: 480, elements: !322)
!322 = !{!323, !340, !344, !345, !346}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tl_rsc", scope: !321, file: !221, line: 202, baseType: !324, size: 416)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_tl_resource_desc_t", file: !76, line: 334, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_tl_resource_desc", file: !76, line: 327, size: 416, elements: !326)
!326 = !{!327, !331, !335, !337}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tl_name", scope: !325, file: !76, line: 328, baseType: !328, size: 80)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 10)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !325, file: !76, line: 329, baseType: !332, size: 256, offset: 80)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !325, file: !76, line: 330, baseType: !336, size: 32, offset: 352)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_device_type_t", file: !76, line: 313, baseType: !75)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sys_device", scope: !325, file: !76, line: 332, baseType: !338, size: 8, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_sys_device_t", file: !339, line: 47, baseType: !203)
!339 = !DIFile(filename: "ucs/sys/topo/base/topo.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "b8cb5c6a5a0b5b89ce20c0d863ab207f")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tl_name_csum", scope: !321, file: !221, line: 203, baseType: !341, size: 16, offset: 416)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !197, line: 25, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !199, line: 40, baseType: !343)
!343 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "md_index", scope: !321, file: !221, line: 204, baseType: !305, size: 8, offset: 432)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !321, file: !221, line: 205, baseType: !251, size: 8, offset: 440)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !221, line: 207, baseType: !203, size: 8, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tl_bitmap", scope: !220, file: !221, line: 292, baseType: !348, size: 128, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_bitmap_t", file: !94, line: 88, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_bitmap_128_t", file: !350, line: 567, baseType: !351)
!350 = !DIFile(filename: "ucs/datastruct/bitmap.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "06a7f794d2a0e1b0fbcdd52ec34d62a5")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 567, size: 128, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !351, file: !350, line: 567, baseType: !354, size: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 128, elements: !356)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_bitmap_word_t", file: !350, line: 21, baseType: !212)
!356 = !{!357}
!357 = !DISubrange(count: 2)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_tls", scope: !220, file: !221, line: 295, baseType: !251, size: 8, offset: 1344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "proto_bitmap", scope: !220, file: !221, line: 296, baseType: !360, size: 64, offset: 1408)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_id_mask_t", file: !361, line: 54, baseType: !212)
!361 = !DIFile(filename: "proto/proto.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "8905f1560da12fa20104b5956b40f906")
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rcache", scope: !220, file: !221, line: 299, baseType: !363, size: 64, offset: 1472)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_t", file: !154, line: 34, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache", file: !366, line: 65, size: 2560, elements: !367)
!366 = !DIFile(filename: "ucs/memory/rcache_int.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "c40c9ea5cb873a9c711cb38596ac7a7b")
!367 = !{!368, !403, !430, !462, !470, !543, !556, !557, !558, !559, !560, !565, !566, !567}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !365, file: !366, line: 66, baseType: !369, size: 640)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_params_t", file: !154, line: 36, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_params", file: !154, line: 125, size: 640, elements: !371)
!371 = !{!372, !373, !374, !375, !377, !378, !398, !399, !400, !401, !402}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "region_struct_size", scope: !370, file: !154, line: 126, baseType: !271, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !370, file: !154, line: 129, baseType: !271, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "max_alignment", scope: !370, file: !154, line: 132, baseType: !271, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ucm_events", scope: !370, file: !154, line: 133, baseType: !376, size: 32, offset: 192)
!376 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ucm_event_priority", scope: !370, file: !154, line: 136, baseType: !376, size: 32, offset: 224)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !370, file: !154, line: 137, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_ops_t", file: !154, line: 35, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_ops", file: !154, line: 76, size: 192, elements: !383)
!383 = !{!384, !389, !393}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mem_reg", scope: !382, file: !154, line: 96, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!201, !162, !363, !162, !388, !341}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dereg", scope: !382, file: !154, line: 106, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !162, !363, !388}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dump_region", scope: !382, file: !154, line: 119, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !162, !363, !388, !397, !271}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !154, line: 138, baseType: !162, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !154, line: 140, baseType: !376, size: 32, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "max_regions", scope: !370, file: !154, line: 141, baseType: !182, size: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !370, file: !154, line: 142, baseType: !271, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "max_unreleased", scope: !370, file: !154, line: 143, baseType: !271, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pgt_lock", scope: !365, file: !366, line: 68, baseType: !404, size: 448, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !405, line: 91, baseType: !406)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !405, line: 86, size: 448, elements: !407)
!407 = !{!408, !425, !429}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !406, file: !405, line: 88, baseType: !409, size: 448)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !410, line: 23, size: 448, elements: !411)
!410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h", directory: "", checksumkind: CSK_MD5, checksum: "2034038f4a99ff6cb7b9de3a3e8c2a8e")
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !423, !424}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !409, file: !410, line: 25, baseType: !77, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !409, file: !410, line: 26, baseType: !77, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !409, file: !410, line: 27, baseType: !77, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !409, file: !410, line: 28, baseType: !77, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !409, file: !410, line: 29, baseType: !77, size: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !409, file: !410, line: 30, baseType: !77, size: 32, offset: 160)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !409, file: !410, line: 32, baseType: !376, size: 32, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !409, file: !410, line: 33, baseType: !376, size: 32, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !409, file: !410, line: 34, baseType: !40, size: 8, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !409, file: !410, line: 39, baseType: !422, size: 56, offset: 264)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 56, elements: !22)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !409, file: !410, line: 42, baseType: !182, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !409, file: !410, line: 45, baseType: !77, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !406, file: !405, line: 89, baseType: !426, size: 448)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 56)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !406, file: !405, line: 90, baseType: !165, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pgtable", scope: !365, file: !366, line: 70, baseType: !431, size: 384, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgtable_t", file: !177, line: 57, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgtable", file: !177, line: 133, size: 384, elements: !433)
!433 = !{!434, !439, !440, !441, !442, !443, !457}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !432, file: !177, line: 138, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_entry_t", file: !177, line: 59, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_entry", file: !177, line: 116, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !177, line: 117, baseType: !181, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !432, file: !177, line: 139, baseType: !181, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !432, file: !177, line: 140, baseType: !181, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !432, file: !177, line: 141, baseType: !77, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !432, file: !177, line: 142, baseType: !77, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_alloc_cb", scope: !432, file: !177, line: 143, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_alloc_callback_t", file: !177, line: 71, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !455}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_t", file: !177, line: 60, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_dir", file: !177, line: 126, size: 1088, elements: !451)
!451 = !{!452, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !450, file: !177, line: 127, baseType: !453, size: 1024)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1024, elements: !240)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !450, file: !177, line: 128, baseType: !77, size: 32, offset: 1024)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_release_cb", scope: !432, file: !177, line: 144, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_release_callback_t", file: !177, line: 81, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !455, !448}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !365, file: !366, line: 73, baseType: !463, size: 32, offset: 1472)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_spinlock_t", file: !464, line: 31, baseType: !465)
!464 = !DIFile(filename: "ucs/type/spinlock.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "bb2c8956ed1d856531912b1024d70c3f")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_spinlock", file: !464, line: 29, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !465, file: !464, line: 30, baseType: !468, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_spinlock_t", file: !405, line: 103, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !376)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !365, file: !366, line: 80, baseType: !471, size: 128, offset: 1536)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_t", file: !472, line: 22, baseType: !473)
!472 = !DIFile(filename: "ucs/datastruct/mpool.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "2baffe91ff5201fdab652b49084a919a")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool", file: !472, line: 66, size: 128, elements: !474)
!474 = !{!475, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !473, file: !472, line: 67, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_elem_t", file: !472, line: 21, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ucs_mpool_elem", file: !472, line: 47, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !472, line: 48, baseType: !476, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mpool", scope: !478, file: !472, line: 49, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !473, file: !472, line: 68, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_data_t", file: !472, line: 23, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_data", file: !472, line: 75, size: 704, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !505, !542}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !486, file: !472, line: 76, baseType: !271, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !486, file: !472, line: 77, baseType: !271, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "align_offset", scope: !486, file: !472, line: 78, baseType: !271, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "grow_factor", scope: !486, file: !472, line: 79, baseType: !286, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "max_chunk_size", scope: !486, file: !472, line: 80, baseType: !271, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "elems_per_chunk", scope: !486, file: !472, line: 82, baseType: !77, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quota", scope: !486, file: !472, line: 83, baseType: !77, size: 32, offset: 352)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_safe", scope: !486, file: !472, line: 84, baseType: !376, size: 32, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !486, file: !472, line: 85, baseType: !476, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !486, file: !472, line: 86, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_chunk_t", file: !472, line: 20, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_chunk", file: !472, line: 56, size: 192, elements: !501)
!501 = !{!502, !503, !504}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !472, line: 57, baseType: !498, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !500, file: !472, line: 58, baseType: !162, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "num_elems", scope: !500, file: !472, line: 59, baseType: !77, size: 32, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !486, file: !472, line: 87, baseType: !506, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_ops_t", file: !472, line: 24, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_ops", file: !472, line: 95, size: 320, elements: !510)
!510 = !{!511, !517, !521, !525, !526}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_alloc", scope: !509, file: !472, line: 107, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!201, !482, !515, !516}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_release", scope: !509, file: !472, line: 115, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !482, !162}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "obj_init", scope: !509, file: !472, line: 126, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !482, !162, !162}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cleanup", scope: !509, file: !472, line: 135, baseType: !518, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "obj_str", scope: !509, file: !472, line: 145, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !482, !162, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_string_buffer_t", file: !532, line: 94, baseType: !533)
!532 = !DIFile(filename: "ucs/datastruct/string_buffer.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "42bc35b3b5ce12d3933ffbf77d160184")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_string_buffer", file: !532, line: 92, size: 192, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !533, file: !532, line: 93, baseType: !536, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_array_string_buffer_t", file: !532, line: 21, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 21, size: 192, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !537, file: !532, line: 21, baseType: !397, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !537, file: !532, line: 21, baseType: !271, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !537, file: !532, line: 21, baseType: !271, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !472, line: 88, baseType: !397, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "inv_q", scope: !365, file: !366, line: 85, baseType: !544, size: 128, offset: 1664)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_queue_head_t", file: !545, line: 12, baseType: !546)
!545 = !DIFile(filename: "ucs/datastruct/queue_types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "337bfa8de2de4146e201b945da9ca259")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_queue_head", file: !545, line: 27, size: 128, elements: !547)
!547 = !{!548, !554}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !546, file: !545, line: 28, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_queue_elem_t", file: !545, line: 11, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_queue_elem", file: !545, line: 19, size: 64, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !545, line: 20, baseType: !549, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ptail", scope: !546, file: !545, line: 29, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gc_list", scope: !365, file: !366, line: 87, baseType: !185, size: 128, offset: 1792)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !365, file: !366, line: 90, baseType: !182, size: 64, offset: 1920)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !365, file: !366, line: 91, baseType: !271, size: 64, offset: 1984)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "unreleased_size", scope: !365, file: !366, line: 92, baseType: !271, size: 64, offset: 2048)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !365, file: !366, line: 100, baseType: !561, size: 192, offset: 2112)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !366, line: 94, size: 192, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !561, file: !366, line: 95, baseType: !463, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !561, file: !366, line: 96, baseType: !185, size: 128, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !366, line: 102, baseType: !397, size: 64, offset: 2304)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !365, file: !366, line: 106, baseType: !185, size: 128, offset: 2368)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "distribution", scope: !365, file: !366, line: 107, baseType: !568, size: 64, offset: 2496)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_distribution_t", file: !366, line: 63, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_distribution", file: !366, line: 60, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !570, file: !366, line: 61, baseType: !271, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !570, file: !366, line: 62, baseType: !271, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !220, file: !221, line: 350, baseType: !575, size: 5248, offset: 1536)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !221, line: 301, size: 5248, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !592, !599, !600, !601, !605, !606, !672, !673, !674}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !575, file: !221, line: 304, baseType: !212, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tag_sender_mask", scope: !575, file: !221, line: 305, baseType: !212, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "est_num_eps", scope: !575, file: !221, line: 308, baseType: !376, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "est_num_ppn", scope: !575, file: !221, line: 311, baseType: !376, size: 32, offset: 160)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !575, file: !221, line: 317, baseType: !582, size: 192, offset: 192)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !221, line: 313, size: 192, elements: !583)
!583 = !{!584, !585, !590}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !582, file: !221, line: 314, baseType: !271, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !582, file: !221, line: 315, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_init_callback_t", file: !218, line: 289, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !162}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !582, file: !221, line: 316, baseType: !591, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_cleanup_callback_t", file: !218, line: 301, baseType: !587)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_methods", scope: !575, file: !221, line: 326, baseType: !593, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !221, line: 320, size: 160, elements: !595)
!595 = !{!596, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !594, file: !221, line: 322, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_alloc_method_t", file: !76, line: 481, baseType: !84)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt_name", scope: !594, file: !221, line: 325, baseType: !239, size: 128, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc_methods", scope: !575, file: !221, line: 327, baseType: !77, size: 32, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cm_cmpts_bitmap", scope: !575, file: !221, line: 330, baseType: !348, size: 128, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cm_cmpt_idxs", scope: !575, file: !221, line: 334, baseType: !602, size: 1024, offset: 640)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 1024, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "num_cm_cmpts", scope: !575, file: !221, line: 335, baseType: !251, size: 8, offset: 1664)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !575, file: !221, line: 338, baseType: !607, size: 3264, offset: 1728)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_context_config_t", file: !221, line: 160, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_context_config", file: !221, line: 42, size: 3264, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !620, !621, !622, !623, !625, !626, !628, !629, !630, !631, !632, !633, !634, !635, !636, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !649, !650, !651, !652, !653, !654, !657, !658, !660, !661, !662, !663, !664, !666, !667, !668, !669, !670, !671}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_thresh", scope: !608, file: !221, line: 44, baseType: !271, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_thresh", scope: !608, file: !221, line: 46, baseType: !271, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_send_nbr_thresh", scope: !608, file: !221, line: 49, baseType: !271, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_thresh_fallback", scope: !608, file: !221, line: 52, baseType: !271, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_perf_diff", scope: !608, file: !221, line: 55, baseType: !286, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "multi_lane_max_ratio", scope: !608, file: !221, line: 58, baseType: !286, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "multi_path_ratio", scope: !608, file: !221, line: 60, baseType: !286, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_thresh", scope: !608, file: !221, line: 62, baseType: !271, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_mode", scope: !608, file: !221, line: 64, baseType: !619, size: 32, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rndv_mode_t", file: !94, line: 236, baseType: !93)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_seg_size", scope: !608, file: !221, line: 66, baseType: !271, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_bw", scope: !608, file: !221, line: 68, baseType: !286, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "seg_size", scope: !608, file: !221, line: 70, baseType: !271, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_frag_size", scope: !608, file: !221, line: 72, baseType: !624, size: 320, offset: 768)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 320, elements: !309)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_num_frags", scope: !608, file: !221, line: 74, baseType: !624, size: 320, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_frag_mem_type", scope: !608, file: !221, line: 76, baseType: !627, size: 32, offset: 1408)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_memory_type_t", file: !105, line: 45, baseType: !104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_pipeline_send_thresh", scope: !608, file: !221, line: 78, baseType: !271, size: 64, offset: 1472)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_shm_ppln_enable", scope: !608, file: !221, line: 80, baseType: !376, size: 32, offset: 1536)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tm_thresh", scope: !608, file: !221, line: 83, baseType: !271, size: 64, offset: 1600)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tm_force_thresh", scope: !608, file: !221, line: 85, baseType: !271, size: 64, offset: 1664)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tm_max_bb_size", scope: !608, file: !221, line: 88, baseType: !271, size: 64, offset: 1728)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sw_rndv", scope: !608, file: !221, line: 90, baseType: !376, size: 32, offset: 1792)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "address_debug_info", scope: !608, file: !221, line: 92, baseType: !376, size: 32, offset: 1824)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "max_worker_address_name", scope: !608, file: !221, line: 94, baseType: !77, size: 32, offset: 1856)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode", scope: !608, file: !221, line: 96, baseType: !637, size: 32, offset: 1888)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_atomic_mode_t", file: !94, line: 210, baseType: !114)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "use_mt_mutex", scope: !608, file: !221, line: 98, baseType: !376, size: 32, offset: 1920)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_progress", scope: !608, file: !221, line: 100, baseType: !376, size: 32, offset: 1952)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "max_eager_lanes", scope: !608, file: !221, line: 102, baseType: !77, size: 32, offset: 1984)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "max_rndv_lanes", scope: !608, file: !221, line: 104, baseType: !77, size: 32, offset: 2016)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "max_rma_lanes", scope: !608, file: !221, line: 106, baseType: !77, size: 32, offset: 2048)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "min_rndv_chunk_size", scope: !608, file: !221, line: 109, baseType: !271, size: 64, offset: 2112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_num_eps", scope: !608, file: !221, line: 111, baseType: !271, size: 64, offset: 2176)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_num_ppn", scope: !608, file: !221, line: 113, baseType: !271, size: 64, offset: 2240)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flush_worker_eps", scope: !608, file: !221, line: 115, baseType: !376, size: 32, offset: 2304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fence_mode", scope: !608, file: !221, line: 117, baseType: !648, size: 32, offset: 2336)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_fence_mode_t", file: !94, line: 221, baseType: !120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unified_mode", scope: !608, file: !221, line: 119, baseType: !376, size: 32, offset: 2368)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cm_use_all_devices", scope: !608, file: !221, line: 122, baseType: !376, size: 32, offset: 2400)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "listener_backlog", scope: !608, file: !221, line: 124, baseType: !271, size: 64, offset: 2432)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "proto_enable", scope: !608, file: !221, line: 126, baseType: !376, size: 32, offset: 2496)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "proto_request_reset", scope: !608, file: !221, line: 128, baseType: !376, size: 32, offset: 2528)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_interval", scope: !608, file: !221, line: 130, baseType: !655, size: 64, offset: 2560)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_time_t", file: !656, line: 23, baseType: !182)
!656 = !DIFile(filename: "ucs/time/time_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "c32183e06bcce8778e98b1f419c838cb")
!657 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_num_eps", scope: !608, file: !221, line: 133, baseType: !77, size: 32, offset: 2624)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "resolve_remote_ep_id", scope: !608, file: !221, line: 136, baseType: !659, size: 32, offset: 2656)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_on_off_auto_value_t", file: !127, line: 70, baseType: !126)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "proto_indirect_id", scope: !608, file: !221, line: 138, baseType: !659, size: 32, offset: 2688)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reg_whole_alloc_bitmap", scope: !608, file: !221, line: 140, baseType: !77, size: 32, offset: 2720)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_put_force_flush", scope: !608, file: !221, line: 142, baseType: !376, size: 32, offset: 2752)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_memtype_direct_size", scope: !608, file: !221, line: 144, baseType: !271, size: 64, offset: 2816)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_client_min_hdr_version", scope: !608, file: !221, line: 146, baseType: !665, size: 32, offset: 2880)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_object_version_t", file: !94, line: 246, baseType: !133)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_mpool_max_md", scope: !608, file: !221, line: 149, baseType: !376, size: 32, offset: 2912)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "worker_addr_version", scope: !608, file: !221, line: 151, baseType: !665, size: 32, offset: 2944)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_align_thresh", scope: !608, file: !221, line: 153, baseType: !271, size: 64, offset: 3008)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "proto_info", scope: !608, file: !221, line: 155, baseType: !376, size: 32, offset: 3072)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "select_distance_md", scope: !608, file: !221, line: 157, baseType: !397, size: 64, offset: 3136)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "proto_info_dir", scope: !608, file: !221, line: 159, baseType: !397, size: 64, offset: 3200)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "env_prefix", scope: !575, file: !221, line: 341, baseType: !397, size: 64, offset: 4992)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "worker_strong_fence", scope: !575, file: !221, line: 344, baseType: !77, size: 32, offset: 5056)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "am_mpools", scope: !575, file: !221, line: 349, baseType: !675, size: 128, offset: 5120)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !221, line: 346, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !675, file: !221, line: 347, baseType: !77, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !675, file: !221, line: 348, baseType: !515, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mt_lock", scope: !220, file: !221, line: 353, baseType: !680, size: 384, offset: 6784)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mt_lock_t", file: !139, line: 40, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_mt_lock", file: !139, line: 32, size: 384, elements: !682)
!682 = !{!683, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mt_type", scope: !681, file: !139, line: 33, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mt_type_t", file: !139, line: 26, baseType: !138)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !681, file: !139, line: 39, baseType: !686, size: 320, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !139, line: 34, size: 320, elements: !687)
!687 = !{!688, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mt_spinlock", scope: !686, file: !139, line: 37, baseType: !689, size: 128)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_recursive_spinlock_t", file: !464, line: 40, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_recursive_spinlock", file: !464, line: 36, size: 128, elements: !691)
!691 = !{!692, !693, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !690, file: !464, line: 37, baseType: !463, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !690, file: !464, line: 38, baseType: !376, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !690, file: !464, line: 39, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !405, line: 27, baseType: !182)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mt_mutex", scope: !686, file: !139, line: 38, baseType: !697, size: 320)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !405, line: 72, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !405, line: 67, size: 320, elements: !699)
!699 = !{!700, !720, !724}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !698, file: !405, line: 69, baseType: !701, size: 320)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !702, line: 22, size: 320, elements: !703)
!702 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!703 = !{!704, !705, !706, !707, !708, !709, !711, !712}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !701, file: !702, line: 24, baseType: !376, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !701, file: !702, line: 25, baseType: !77, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !701, file: !702, line: 26, baseType: !376, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !701, file: !702, line: 28, baseType: !77, size: 32, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !701, file: !702, line: 32, baseType: !376, size: 32, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !701, file: !702, line: 34, baseType: !710, size: 16, offset: 160)
!710 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !701, file: !702, line: 35, baseType: !710, size: 16, offset: 176)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !701, file: !702, line: 36, baseType: !713, size: 128, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !714, line: 55, baseType: !715)
!714 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !714, line: 51, size: 128, elements: !716)
!716 = !{!717, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !715, file: !714, line: 53, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !715, file: !714, line: 54, baseType: !718, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !698, file: !405, line: 70, baseType: !721, size: 320)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 40)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !698, file: !405, line: 71, baseType: !165, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !221, line: 355, baseType: !332, size: 256, offset: 7168)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cached_key_list", scope: !220, file: !221, line: 358, baseType: !185, size: 128, offset: 7424)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_method", scope: !169, file: !168, line: 31, baseType: !597, size: 32, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !169, file: !168, line: 32, baseType: !627, size: 32, offset: 736)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_md_index", scope: !169, file: !168, line: 33, baseType: !305, size: 8, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "md_map", scope: !169, file: !168, line: 34, baseType: !308, size: 64, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !168, line: 35, baseType: !732, size: 64, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mem_h", file: !218, line: 167, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "uct", scope: !169, file: !168, line: 38, baseType: !735, offset: 960)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, elements: !737)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_mem_h", file: !230, line: 84, baseType: !162)
!737 = !{!738}
!738 = !DISubrange(count: 0)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !164, line: 90, baseType: !182)
!740 = !{!0, !7, !12, !17, !19, !24, !29, !31}
!741 = !{i32 7, !"Dwarf Version", i32 5}
!742 = !{i32 2, !"Debug Info Version", i32 3}
!743 = !{i32 1, !"wchar_size", i32 4}
!744 = !{i32 8, !"PIC Level", i32 2}
!745 = !{i32 7, !"uwtable", i32 2}
!746 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!747 = distinct !DISubprogram(name: "ucp_datatype_iter_iov_mem_reg", scope: !2, file: !2, line: 36, type: !748, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !829)
!748 = !DISubroutineType(types: !749)
!749 = !{!201, !217, !750, !308, !77}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_datatype_iter_t", file: !752, line: 69, baseType: !753)
!752 = !DIFile(filename: "dt/datatype_iter.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "961ccb71660907a4154418d8e9b54829")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 35, size: 448, elements: !754)
!754 = !{!755, !758, !764, !765, !766}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dt_class", scope: !753, file: !752, line: 36, baseType: !756, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_class_t", file: !757, line: 22, baseType: !144)
!757 = !DIFile(filename: "dt/dt.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "05805b6250cffae8993297ba3ca02be4")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mem_info", scope: !753, file: !752, line: 37, baseType: !759, size: 16, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_memory_info_t", file: !757, line: 60, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !757, line: 57, size: 16, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !757, line: 58, baseType: !203, size: 8)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !760, file: !757, line: 59, baseType: !338, size: 8, offset: 8)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !753, file: !752, line: 39, baseType: !271, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !753, file: !752, line: 40, baseType: !271, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !752, line: 68, baseType: !767, size: 256, offset: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !752, line: 41, size: 256, elements: !768)
!768 = !{!769, !774, !814}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "contig", scope: !767, file: !752, line: 45, baseType: !770, size: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !752, line: 42, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !770, file: !752, line: 43, baseType: !162, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !770, file: !752, line: 44, baseType: !732, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !767, file: !752, line: 51, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !752, line: 46, size: 256, elements: !776)
!776 = !{!777, !778, !779, !813}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !775, file: !752, line: 47, baseType: !162, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !775, file: !752, line: 48, baseType: !271, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "dt_gen", scope: !775, file: !752, line: 49, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_generic_t", file: !782, line: 20, baseType: !783)
!782 = !DIFile(filename: "dt/dt_generic.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "d341e678663a017539210021db76f97e")
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_dt_generic", file: !782, line: 17, size: 448, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !783, file: !782, line: 18, baseType: !162, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !783, file: !782, line: 19, baseType: !787, size: 384, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_generic_dt_ops_t", file: !145, line: 992, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_generic_dt_ops", file: !145, line: 893, size: 384, elements: !789)
!789 = !{!790, !796, !800, !804, !808, !812}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "start_pack", scope: !788, file: !145, line: 909, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!162, !162, !794, !271}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start_unpack", scope: !788, file: !145, line: 925, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!162, !162, !162, !271}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "packed_size", scope: !788, file: !145, line: 940, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!271, !162}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !788, file: !145, line: 958, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!271, !162, !271, !162, !271}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "unpack", scope: !788, file: !145, line: 975, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!201, !162, !271, !794, !271}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !788, file: !145, line: 991, baseType: !587, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !775, file: !752, line: 50, baseType: !162, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !767, file: !752, line: 67, baseType: !815, size: 256)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !752, line: 52, size: 256, elements: !816)
!816 = !{!817, !825, !826, !827}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !815, file: !752, line: 53, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_iov_t", file: !145, line: 877, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_dt_iov", file: !145, line: 874, size: 128, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !821, file: !145, line: 875, baseType: !162, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !821, file: !145, line: 876, baseType: !271, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "iov_index", scope: !815, file: !752, line: 57, baseType: !271, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !815, file: !752, line: 58, baseType: !271, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !815, file: !752, line: 59, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838}
!830 = !DILocalVariable(name: "context", arg: 1, scope: !747, file: !2, line: 36, type: !217)
!831 = !DILocalVariable(name: "dt_iter", arg: 2, scope: !747, file: !2, line: 37, type: !750)
!832 = !DILocalVariable(name: "md_map", arg: 3, scope: !747, file: !2, line: 38, type: !308)
!833 = !DILocalVariable(name: "uct_flags", arg: 4, scope: !747, file: !2, line: 39, type: !77)
!834 = !DILocalVariable(name: "iov_count", scope: !747, file: !2, line: 41, type: !271)
!835 = !DILocalVariable(name: "iov", scope: !747, file: !2, line: 42, type: !818)
!836 = !DILocalVariable(name: "iov_memh", scope: !747, file: !2, line: 43, type: !828)
!837 = !DILocalVariable(name: "status", scope: !747, file: !2, line: 44, type: !201)
!838 = !DILocalVariable(name: "iov_index", scope: !747, file: !2, line: 45, type: !271)
!839 = !{!840, !840, i64 0}
!840 = !{!"any pointer", !841, i64 0}
!841 = !{!"omnipotent char", !842, i64 0}
!842 = !{!"Simple C/C++ TBAA"}
!843 = !DILocation(line: 36, column: 58, scope: !747)
!844 = !DILocation(line: 37, column: 65, scope: !747)
!845 = !{!846, !846, i64 0}
!846 = !{!"long", !841, i64 0}
!847 = !DILocation(line: 38, column: 57, scope: !747)
!848 = !{!849, !849, i64 0}
!849 = !{!"int", !841, i64 0}
!850 = !DILocation(line: 39, column: 53, scope: !747)
!851 = !DILocation(line: 41, column: 5, scope: !747)
!852 = !DILocation(line: 41, column: 12, scope: !747)
!853 = !DILocation(line: 41, column: 52, scope: !747)
!854 = !DILocation(line: 41, column: 24, scope: !747)
!855 = !DILocation(line: 42, column: 5, scope: !747)
!856 = !DILocation(line: 42, column: 25, scope: !747)
!857 = !DILocation(line: 43, column: 5, scope: !747)
!858 = !DILocation(line: 43, column: 16, scope: !747)
!859 = !DILocation(line: 44, column: 5, scope: !747)
!860 = !DILocation(line: 44, column: 18, scope: !747)
!861 = !DILocation(line: 45, column: 5, scope: !747)
!862 = !DILocation(line: 45, column: 12, scope: !747)
!863 = !DILocation(line: 49, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !747, file: !2, line: 49, column: 9)
!865 = !DILocation(line: 49, column: 16, scope: !864)
!866 = !DILocation(line: 49, column: 9, scope: !747)
!867 = !DILocation(line: 50, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !2, line: 49, column: 22)
!869 = !DILocation(line: 54, column: 27, scope: !747)
!870 = !DILocation(line: 54, column: 16, scope: !747)
!871 = !DILocation(line: 54, column: 14, scope: !747)
!872 = !DILocation(line: 55, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !747, file: !2, line: 55, column: 9)
!874 = !DILocation(line: 55, column: 18, scope: !873)
!875 = !DILocation(line: 55, column: 9, scope: !747)
!876 = !DILocation(line: 56, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !2, line: 55, column: 27)
!878 = !DILocation(line: 59, column: 30, scope: !747)
!879 = !DILocation(line: 59, column: 5, scope: !747)
!880 = !DILocation(line: 59, column: 14, scope: !747)
!881 = !DILocation(line: 59, column: 23, scope: !747)
!882 = !DILocation(line: 59, column: 28, scope: !747)
!883 = !{!841, !841, i64 0}
!884 = !DILocation(line: 61, column: 20, scope: !885)
!885 = distinct !DILexicalBlock(scope: !747, file: !2, line: 61, column: 5)
!886 = !DILocation(line: 61, column: 10, scope: !885)
!887 = !DILocation(line: 61, column: 25, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !2, line: 61, column: 5)
!889 = !DILocation(line: 61, column: 37, scope: !888)
!890 = !DILocation(line: 61, column: 35, scope: !888)
!891 = !DILocation(line: 61, column: 5, scope: !885)
!892 = !DILocation(line: 62, column: 43, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !2, line: 61, column: 61)
!894 = !DILocation(line: 62, column: 52, scope: !893)
!895 = !DILocation(line: 62, column: 18, scope: !893)
!896 = !DILocation(line: 62, column: 16, scope: !893)
!897 = !DILocation(line: 63, column: 31, scope: !893)
!898 = !DILocation(line: 63, column: 40, scope: !893)
!899 = !DILocation(line: 63, column: 45, scope: !893)
!900 = !{!901, !840, i64 0}
!901 = !{!"ucp_dt_iov", !840, i64 0, !846, i64 8}
!902 = !DILocation(line: 63, column: 53, scope: !893)
!903 = !DILocation(line: 63, column: 58, scope: !893)
!904 = !{!901, !846, i64 8}
!905 = !DILocation(line: 64, column: 31, scope: !893)
!906 = !DILocation(line: 64, column: 40, scope: !893)
!907 = !DILocation(line: 64, column: 49, scope: !893)
!908 = !{!909, !841, i64 4}
!909 = !{!"", !841, i64 0, !910, i64 4, !846, i64 8, !846, i64 16, !841, i64 24}
!910 = !{!"", !841, i64 0, !841, i64 1}
!911 = !DILocation(line: 64, column: 55, scope: !893)
!912 = !DILocation(line: 64, column: 63, scope: !893)
!913 = !DILocation(line: 65, column: 32, scope: !893)
!914 = !DILocation(line: 65, column: 41, scope: !893)
!915 = !DILocation(line: 63, column: 18, scope: !893)
!916 = !DILocation(line: 63, column: 16, scope: !893)
!917 = !DILocation(line: 66, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !893, file: !2, line: 66, column: 13)
!919 = !DILocation(line: 66, column: 20, scope: !918)
!920 = !DILocation(line: 66, column: 13, scope: !893)
!921 = !DILocation(line: 67, column: 45, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !2, line: 66, column: 31)
!923 = !DILocation(line: 67, column: 54, scope: !922)
!924 = !DILocation(line: 67, column: 13, scope: !922)
!925 = !DILocation(line: 68, column: 20, scope: !922)
!926 = !DILocation(line: 68, column: 13, scope: !922)
!927 = !DILocation(line: 70, column: 5, scope: !893)
!928 = !DILocation(line: 61, column: 48, scope: !888)
!929 = !DILocation(line: 61, column: 5, scope: !888)
!930 = distinct !{!930, !891, !931, !932}
!931 = !DILocation(line: 70, column: 5, scope: !885)
!932 = !{!"llvm.loop.mustprogress"}
!933 = !DILocation(line: 72, column: 5, scope: !747)
!934 = !DILocation(line: 73, column: 1, scope: !747)
!935 = distinct !DISubprogram(name: "ucp_datatype_iter_iov_count", scope: !2, file: !2, line: 27, type: !936, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!271, !750}
!938 = !{!939, !940, !941}
!939 = !DILocalVariable(name: "dt_iter", arg: 1, scope: !935, file: !2, line: 27, type: !750)
!940 = !DILocalVariable(name: "iov_count", scope: !935, file: !2, line: 29, type: !271)
!941 = !DILocalVariable(name: "length", scope: !935, file: !2, line: 29, type: !271)
!942 = !DILocation(line: 27, column: 64, scope: !935)
!943 = !DILocation(line: 29, column: 5, scope: !935)
!944 = !DILocation(line: 29, column: 12, scope: !935)
!945 = !DILocation(line: 29, column: 23, scope: !935)
!946 = !DILocation(line: 31, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !935, file: !2, line: 31, column: 5)
!948 = !DILocation(line: 31, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !2, line: 31, column: 5)
!950 = !{!909, !846, i64 8}
!951 = distinct !{!951, !946, !952, !932}
!952 = !DILocation(line: 31, column: 63, scope: !947)
!953 = !DILocation(line: 33, column: 12, scope: !935)
!954 = !DILocation(line: 34, column: 1, scope: !935)
!955 = !DILocation(line: 33, column: 5, scope: !935)
!956 = !DISubprogram(name: "ucs_calloc", scope: !957, file: !957, line: 82, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIFile(filename: "ucs/debug/memtrack_int.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "66715be3ea050c4d1a170a6c46a24389")
!958 = !DISubroutineType(types: !959)
!959 = !{!162, !271, !271, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!962 = distinct !DISubprogram(name: "ucp_datatype_iter_iov_at", scope: !2, file: !2, line: 20, type: !963, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !967)
!963 = !DISubroutineType(types: !964)
!964 = !{!818, !965, !271}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!967 = !{!968, !969}
!968 = !DILocalVariable(name: "dt_iter", arg: 1, scope: !962, file: !2, line: 20, type: !965)
!969 = !DILocalVariable(name: "index", arg: 2, scope: !962, file: !2, line: 20, type: !271)
!970 = !DILocation(line: 20, column: 53, scope: !962)
!971 = !DILocation(line: 20, column: 69, scope: !962)
!972 = !DILocation(line: 24, column: 13, scope: !962)
!973 = !DILocation(line: 24, column: 22, scope: !962)
!974 = !DILocation(line: 24, column: 31, scope: !962)
!975 = !DILocation(line: 24, column: 35, scope: !962)
!976 = !DILocation(line: 24, column: 5, scope: !962)
!977 = distinct !DISubprogram(name: "ucp_memh_get", scope: !978, file: !978, line: 22, type: !979, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !981)
!978 = !DIFile(filename: "core/ucp_mm.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "f588dc36a8e6fac6aa4287f9d11c7b65")
!979 = !DISubroutineType(types: !980)
!980 = !{!201, !217, !162, !271, !627, !308, !77, !828}
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !995}
!982 = !DILocalVariable(name: "context", arg: 1, scope: !977, file: !978, line: 22, type: !217)
!983 = !DILocalVariable(name: "address", arg: 2, scope: !977, file: !978, line: 22, type: !162)
!984 = !DILocalVariable(name: "length", arg: 3, scope: !977, file: !978, line: 22, type: !271)
!985 = !DILocalVariable(name: "mem_type", arg: 4, scope: !977, file: !978, line: 23, type: !627)
!986 = !DILocalVariable(name: "reg_md_map", arg: 5, scope: !977, file: !978, line: 23, type: !308)
!987 = !DILocalVariable(name: "uct_flags", arg: 6, scope: !977, file: !978, line: 24, type: !77)
!988 = !DILocalVariable(name: "memh_p", arg: 7, scope: !977, file: !978, line: 24, type: !828)
!989 = !DILocalVariable(name: "rregion", scope: !977, file: !978, line: 26, type: !388)
!990 = !DILocalVariable(name: "status", scope: !977, file: !978, line: 27, type: !201)
!991 = !DILocalVariable(name: "memh", scope: !977, file: !978, line: 28, type: !732)
!992 = !DILabel(scope: !993, name: "not_found", file: !978, line: 60)
!993 = distinct !DILexicalBlock(scope: !994, file: !978, line: 39, column: 46)
!994 = distinct !DILexicalBlock(scope: !977, file: !978, line: 39, column: 9)
!995 = !DILabel(scope: !977, name: "out_unlock", file: !978, line: 66)
!996 = !DILocation(line: 22, column: 28, scope: !977)
!997 = !DILocation(line: 22, column: 43, scope: !977)
!998 = !DILocation(line: 22, column: 59, scope: !977)
!999 = !DILocation(line: 23, column: 32, scope: !977)
!1000 = !DILocation(line: 23, column: 55, scope: !977)
!1001 = !DILocation(line: 24, column: 23, scope: !977)
!1002 = !DILocation(line: 24, column: 45, scope: !977)
!1003 = !DILocation(line: 26, column: 5, scope: !977)
!1004 = !DILocation(line: 26, column: 26, scope: !977)
!1005 = !DILocation(line: 27, column: 5, scope: !977)
!1006 = !DILocation(line: 27, column: 18, scope: !977)
!1007 = !DILocation(line: 28, column: 5, scope: !977)
!1008 = !DILocation(line: 28, column: 15, scope: !977)
!1009 = !DILocation(line: 30, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !977, file: !978, line: 30, column: 9)
!1011 = !DILocation(line: 30, column: 16, scope: !1010)
!1012 = !DILocation(line: 30, column: 9, scope: !977)
!1013 = !DILocation(line: 34, column: 10, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !978, line: 30, column: 22)
!1015 = !DILocation(line: 34, column: 17, scope: !1014)
!1016 = !DILocation(line: 35, column: 9, scope: !1014)
!1017 = !DILocation(line: 35, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !978, line: 35, column: 9)
!1019 = !DILocation(line: 35, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !978, line: 35, column: 9)
!1021 = !DILocation(line: 36, column: 9, scope: !1014)
!1022 = !DILocation(line: 39, column: 9, scope: !994)
!1023 = !{!1024, !840, i64 184}
!1024 = !{!"ucp_context", !840, i64 0, !841, i64 8, !840, i64 16, !841, i64 24, !841, i64 32, !841, i64 72, !846, i64 112, !841, i64 120, !841, i64 125, !841, i64 126, !846, i64 136, !840, i64 144, !1025, i64 152, !841, i64 168, !846, i64 176, !840, i64 184, !1026, i64 192, !1031, i64 848, !841, i64 896, !1032, i64 928}
!1025 = !{!"", !841, i64 0}
!1026 = !{!"", !846, i64 0, !846, i64 8, !849, i64 16, !849, i64 20, !1027, i64 24, !840, i64 48, !849, i64 56, !1025, i64 64, !841, i64 80, !841, i64 208, !1028, i64 216, !840, i64 624, !849, i64 632, !1030, i64 640}
!1027 = !{!"", !846, i64 0, !840, i64 8, !840, i64 16}
!1028 = !{!"ucp_context_config", !846, i64 0, !846, i64 8, !846, i64 16, !846, i64 24, !1029, i64 32, !1029, i64 40, !1029, i64 48, !846, i64 56, !841, i64 64, !846, i64 72, !1029, i64 80, !846, i64 88, !841, i64 96, !841, i64 136, !841, i64 176, !846, i64 184, !849, i64 192, !846, i64 200, !846, i64 208, !846, i64 216, !849, i64 224, !849, i64 228, !849, i64 232, !841, i64 236, !849, i64 240, !849, i64 244, !849, i64 248, !849, i64 252, !849, i64 256, !846, i64 264, !846, i64 272, !846, i64 280, !849, i64 288, !841, i64 292, !849, i64 296, !849, i64 300, !846, i64 304, !849, i64 312, !849, i64 316, !846, i64 320, !849, i64 328, !841, i64 332, !841, i64 336, !849, i64 340, !849, i64 344, !846, i64 352, !841, i64 360, !849, i64 364, !841, i64 368, !846, i64 376, !849, i64 384, !840, i64 392, !840, i64 400}
!1029 = !{!"double", !841, i64 0}
!1030 = !{!"", !849, i64 0, !840, i64 8}
!1031 = !{!"ucp_mt_lock", !841, i64 0, !841, i64 8}
!1032 = !{!"ucs_list_link", !840, i64 0, !840, i64 8}
!1033 = !DILocation(line: 39, column: 9, scope: !977)
!1034 = !DILocation(line: 40, column: 9, scope: !993)
!1035 = !DILocation(line: 40, column: 9, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !978, line: 40, column: 9)
!1037 = distinct !DILexicalBlock(scope: !993, file: !978, line: 40, column: 9)
!1038 = !{!1024, !841, i64 848}
!1039 = !DILocation(line: 40, column: 9, scope: !1037)
!1040 = !DILocation(line: 40, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !978, line: 40, column: 9)
!1042 = !DILocation(line: 40, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1036, file: !978, line: 40, column: 9)
!1044 = !DILocation(line: 40, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1043, file: !978, line: 40, column: 9)
!1046 = !DILocation(line: 41, column: 44, scope: !993)
!1047 = !DILocation(line: 41, column: 53, scope: !993)
!1048 = !DILocation(line: 41, column: 61, scope: !993)
!1049 = !DILocation(line: 41, column: 70, scope: !993)
!1050 = !DILocation(line: 41, column: 19, scope: !993)
!1051 = !DILocation(line: 41, column: 17, scope: !993)
!1052 = !DILocation(line: 43, column: 13, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !993, file: !978, line: 43, column: 13)
!1054 = !DILocation(line: 43, column: 21, scope: !1053)
!1055 = !DILocation(line: 43, column: 13, scope: !993)
!1056 = !DILocation(line: 44, column: 13, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !978, line: 43, column: 30)
!1058 = !DILocation(line: 47, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !993, file: !978, line: 47, column: 16)
!1060 = !DILocation(line: 47, column: 14, scope: !993)
!1061 = !DILocation(line: 49, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !993, file: !978, line: 49, column: 13)
!1063 = !{!1064, !846, i64 104}
!1064 = !{!"ucp_mem", !1065, i64 0, !840, i64 80, !841, i64 88, !841, i64 92, !841, i64 96, !846, i64 104, !840, i64 112, !841, i64 120}
!1065 = !{!"ucs_rcache_region", !1066, i64 0, !1032, i64 16, !1032, i64 32, !1032, i64 48, !849, i64 64, !841, i64 68, !841, i64 69, !841, i64 70, !841, i64 71, !841, i64 72}
!1066 = !{!"ucs_pgt_region", !846, i64 0, !846, i64 8}
!1067 = !DILocation(line: 49, column: 13, scope: !993)
!1068 = !DILocation(line: 50, column: 13, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1062, file: !978, line: 49, column: 71)
!1070 = !DILocation(line: 50, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1069, file: !978, line: 50, column: 13)
!1072 = !DILocation(line: 50, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !978, line: 50, column: 13)
!1074 = !DILocation(line: 54, column: 23, scope: !1069)
!1075 = !DILocation(line: 54, column: 14, scope: !1069)
!1076 = !DILocation(line: 54, column: 21, scope: !1069)
!1077 = !DILocation(line: 55, column: 20, scope: !1069)
!1078 = !DILocation(line: 56, column: 13, scope: !1069)
!1079 = !DILocation(line: 59, column: 38, scope: !993)
!1080 = !DILocation(line: 59, column: 47, scope: !993)
!1081 = !DILocation(line: 59, column: 55, scope: !993)
!1082 = !DILocation(line: 59, column: 9, scope: !993)
!1083 = !DILocation(line: 60, column: 1, scope: !993)
!1084 = !DILocation(line: 61, column: 9, scope: !993)
!1085 = !DILocation(line: 61, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !978, line: 61, column: 9)
!1087 = distinct !DILexicalBlock(scope: !993, file: !978, line: 61, column: 9)
!1088 = !DILocation(line: 61, column: 9, scope: !1087)
!1089 = !DILocation(line: 61, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !978, line: 61, column: 9)
!1091 = !DILocation(line: 61, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !978, line: 61, column: 9)
!1093 = !DILocation(line: 61, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !978, line: 61, column: 9)
!1095 = !DILocation(line: 62, column: 5, scope: !993)
!1096 = !DILocation(line: 64, column: 30, scope: !977)
!1097 = !DILocation(line: 64, column: 39, scope: !977)
!1098 = !DILocation(line: 64, column: 48, scope: !977)
!1099 = !DILocation(line: 64, column: 56, scope: !977)
!1100 = !DILocation(line: 64, column: 66, scope: !977)
!1101 = !DILocation(line: 65, column: 30, scope: !977)
!1102 = !DILocation(line: 65, column: 41, scope: !977)
!1103 = !DILocation(line: 64, column: 12, scope: !977)
!1104 = !DILocation(line: 64, column: 5, scope: !977)
!1105 = !DILocation(line: 66, column: 1, scope: !977)
!1106 = !DILocation(line: 67, column: 5, scope: !977)
!1107 = !DILocation(line: 67, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !978, line: 67, column: 5)
!1109 = distinct !DILexicalBlock(scope: !977, file: !978, line: 67, column: 5)
!1110 = !DILocation(line: 67, column: 5, scope: !1109)
!1111 = !DILocation(line: 67, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !978, line: 67, column: 5)
!1113 = !DILocation(line: 67, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !978, line: 67, column: 5)
!1115 = !DILocation(line: 67, column: 5, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1114, file: !978, line: 67, column: 5)
!1117 = !DILocation(line: 68, column: 12, scope: !977)
!1118 = !DILocation(line: 68, column: 5, scope: !977)
!1119 = !DILocation(line: 69, column: 1, scope: !977)
!1120 = distinct !DISubprogram(name: "ucp_datatype_iter_iov_mem_dereg", scope: !2, file: !2, line: 75, type: !1121, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !217, !750}
!1123 = !{!1124, !1125, !1126, !1127, !1128}
!1124 = !DILocalVariable(name: "context", arg: 1, scope: !1120, file: !2, line: 75, type: !217)
!1125 = !DILocalVariable(name: "dt_iter", arg: 2, scope: !1120, file: !2, line: 76, type: !750)
!1126 = !DILocalVariable(name: "memh", scope: !1120, file: !2, line: 78, type: !828)
!1127 = !DILocalVariable(name: "iov_index", scope: !1120, file: !2, line: 79, type: !271)
!1128 = !DILocalVariable(name: "length", scope: !1120, file: !2, line: 79, type: !271)
!1129 = !DILocation(line: 75, column: 52, scope: !1120)
!1130 = !DILocation(line: 76, column: 59, scope: !1120)
!1131 = !DILocation(line: 78, column: 5, scope: !1120)
!1132 = !DILocation(line: 78, column: 16, scope: !1120)
!1133 = !DILocation(line: 78, column: 23, scope: !1120)
!1134 = !DILocation(line: 78, column: 32, scope: !1120)
!1135 = !DILocation(line: 78, column: 41, scope: !1120)
!1136 = !DILocation(line: 79, column: 5, scope: !1120)
!1137 = !DILocation(line: 79, column: 12, scope: !1120)
!1138 = !DILocation(line: 79, column: 23, scope: !1120)
!1139 = !DILocation(line: 81, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 81, column: 9)
!1141 = !DILocation(line: 81, column: 14, scope: !1140)
!1142 = !DILocation(line: 81, column: 9, scope: !1120)
!1143 = !DILocation(line: 82, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 81, column: 23)
!1145 = !DILocation(line: 85, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 85, column: 5)
!1147 = !DILocation(line: 85, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 85, column: 5)
!1149 = !DILocation(line: 86, column: 33, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 85, column: 64)
!1151 = !DILocation(line: 86, column: 42, scope: !1150)
!1152 = !DILocation(line: 86, column: 49, scope: !1150)
!1153 = !DILocation(line: 86, column: 47, scope: !1150)
!1154 = !DILocation(line: 86, column: 9, scope: !1150)
!1155 = !DILocation(line: 87, column: 5, scope: !1150)
!1156 = distinct !{!1156, !1145, !1157, !932}
!1157 = !DILocation(line: 87, column: 5, scope: !1146)
!1158 = !DILocation(line: 89, column: 14, scope: !1120)
!1159 = !DILocation(line: 89, column: 5, scope: !1120)
!1160 = !DILocation(line: 90, column: 5, scope: !1120)
!1161 = !DILocation(line: 90, column: 14, scope: !1120)
!1162 = !DILocation(line: 90, column: 23, scope: !1120)
!1163 = !DILocation(line: 90, column: 28, scope: !1120)
!1164 = !DILocation(line: 91, column: 1, scope: !1120)
!1165 = distinct !DISubprogram(name: "ucp_datatype_memh_dereg", scope: !1166, file: !1166, line: 503, type: !1167, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1169)
!1166 = !DIFile(filename: "dt/datatype_iter.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "81854f7feef2efa3fba052b38d3c5ed1")
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !217, !828}
!1169 = !{!1170, !1171}
!1170 = !DILocalVariable(name: "context", arg: 1, scope: !1165, file: !1166, line: 503, type: !217)
!1171 = !DILocalVariable(name: "memh_p", arg: 2, scope: !1165, file: !1166, line: 503, type: !828)
!1172 = !DILocation(line: 503, column: 39, scope: !1165)
!1173 = !DILocation(line: 503, column: 59, scope: !1165)
!1174 = !DILocation(line: 505, column: 10, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1165, file: !1166, line: 505, column: 9)
!1176 = !DILocation(line: 505, column: 9, scope: !1175)
!1177 = !DILocation(line: 505, column: 17, scope: !1175)
!1178 = !DILocation(line: 505, column: 9, scope: !1165)
!1179 = !DILocation(line: 506, column: 22, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !1166, line: 505, column: 26)
!1181 = !DILocation(line: 506, column: 32, scope: !1180)
!1182 = !DILocation(line: 506, column: 31, scope: !1180)
!1183 = !DILocation(line: 506, column: 9, scope: !1180)
!1184 = !DILocation(line: 507, column: 10, scope: !1180)
!1185 = !DILocation(line: 507, column: 17, scope: !1180)
!1186 = !DILocation(line: 508, column: 5, scope: !1180)
!1187 = !DILocation(line: 509, column: 1, scope: !1165)
!1188 = !DISubprogram(name: "ucs_free", scope: !957, file: !957, line: 86, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1189 = distinct !DISubprogram(name: "ucp_datatype_iter_iov_next_iov", scope: !2, file: !2, line: 93, type: !1190, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1201)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!271, !965, !271, !251, !750, !1192, !271}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iov_t", file: !230, line: 154, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_iov", file: !230, line: 147, size: 320, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1194, file: !230, line: 148, baseType: !162, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1194, file: !230, line: 149, baseType: !271, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !1194, file: !230, line: 150, baseType: !736, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1194, file: !230, line: 151, baseType: !271, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1194, file: !230, line: 153, baseType: !77, size: 32, offset: 256)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1220}
!1202 = !DILocalVariable(name: "dt_iter", arg: 1, scope: !1189, file: !2, line: 93, type: !965)
!1203 = !DILocalVariable(name: "max_length", arg: 2, scope: !1189, file: !2, line: 94, type: !271)
!1204 = !DILocalVariable(name: "memh_index", arg: 3, scope: !1189, file: !2, line: 95, type: !251)
!1205 = !DILocalVariable(name: "next_iter", arg: 4, scope: !1189, file: !2, line: 96, type: !750)
!1206 = !DILocalVariable(name: "iov", arg: 5, scope: !1189, file: !2, line: 97, type: !1192)
!1207 = !DILocalVariable(name: "max_iov", arg: 6, scope: !1189, file: !2, line: 97, type: !271)
!1208 = !DILocalVariable(name: "iov_memh", scope: !1189, file: !2, line: 99, type: !828)
!1209 = !DILocalVariable(name: "remaining_dst", scope: !1189, file: !2, line: 100, type: !271)
!1210 = !DILocalVariable(name: "remaining_src", scope: !1189, file: !2, line: 100, type: !271)
!1211 = !DILocalVariable(name: "iov_offset", scope: !1189, file: !2, line: 101, type: !271)
!1212 = !DILocalVariable(name: "dst_iov_index", scope: !1189, file: !2, line: 101, type: !271)
!1213 = !DILocalVariable(name: "length", scope: !1189, file: !2, line: 102, type: !271)
!1214 = !DILocalVariable(name: "max_iter_length", scope: !1189, file: !2, line: 102, type: !271)
!1215 = !DILocalVariable(name: "src_iov", scope: !1189, file: !2, line: 103, type: !818)
!1216 = !DILocalVariable(name: "memh", scope: !1189, file: !2, line: 104, type: !732)
!1217 = !DILocalVariable(name: "dst_iov", scope: !1189, file: !2, line: 105, type: !1192)
!1218 = !DILocalVariable(name: "_min_a", scope: !1219, file: !2, line: 118, type: !271)
!1219 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 118, column: 23)
!1220 = !DILocalVariable(name: "_min_b", scope: !1219, file: !2, line: 118, type: !271)
!1221 = !DILocation(line: 93, column: 66, scope: !1189)
!1222 = !DILocation(line: 94, column: 46, scope: !1189)
!1223 = !DILocation(line: 95, column: 55, scope: !1189)
!1224 = !DILocation(line: 96, column: 60, scope: !1189)
!1225 = !DILocation(line: 97, column: 50, scope: !1189)
!1226 = !DILocation(line: 97, column: 62, scope: !1189)
!1227 = !DILocation(line: 99, column: 5, scope: !1189)
!1228 = !DILocation(line: 99, column: 16, scope: !1189)
!1229 = !DILocation(line: 99, column: 27, scope: !1189)
!1230 = !DILocation(line: 99, column: 36, scope: !1189)
!1231 = !DILocation(line: 99, column: 45, scope: !1189)
!1232 = !DILocation(line: 100, column: 5, scope: !1189)
!1233 = !DILocation(line: 100, column: 12, scope: !1189)
!1234 = !DILocation(line: 100, column: 27, scope: !1189)
!1235 = !DILocation(line: 101, column: 5, scope: !1189)
!1236 = !DILocation(line: 101, column: 12, scope: !1189)
!1237 = !DILocation(line: 101, column: 24, scope: !1189)
!1238 = !DILocation(line: 102, column: 5, scope: !1189)
!1239 = !DILocation(line: 102, column: 12, scope: !1189)
!1240 = !DILocation(line: 102, column: 20, scope: !1189)
!1241 = !DILocation(line: 103, column: 5, scope: !1189)
!1242 = !DILocation(line: 103, column: 25, scope: !1189)
!1243 = !DILocation(line: 104, column: 5, scope: !1189)
!1244 = !DILocation(line: 104, column: 15, scope: !1189)
!1245 = !DILocation(line: 105, column: 5, scope: !1189)
!1246 = !DILocation(line: 105, column: 16, scope: !1189)
!1247 = !DILocation(line: 107, column: 33, scope: !1189)
!1248 = !DILocation(line: 107, column: 5, scope: !1189)
!1249 = !DILocation(line: 112, column: 38, scope: !1189)
!1250 = !DILocation(line: 112, column: 47, scope: !1189)
!1251 = !DILocation(line: 112, column: 56, scope: !1189)
!1252 = !DILocation(line: 112, column: 5, scope: !1189)
!1253 = !DILocation(line: 112, column: 16, scope: !1189)
!1254 = !DILocation(line: 112, column: 25, scope: !1189)
!1255 = !DILocation(line: 112, column: 36, scope: !1189)
!1256 = !DILocation(line: 113, column: 38, scope: !1189)
!1257 = !DILocation(line: 113, column: 47, scope: !1189)
!1258 = !DILocation(line: 113, column: 56, scope: !1189)
!1259 = !DILocation(line: 113, column: 5, scope: !1189)
!1260 = !DILocation(line: 113, column: 16, scope: !1189)
!1261 = !DILocation(line: 113, column: 25, scope: !1189)
!1262 = !DILocation(line: 113, column: 36, scope: !1189)
!1263 = !DILocation(line: 118, column: 23, scope: !1219)
!1264 = !{!909, !846, i64 16}
!1265 = !DILocation(line: 118, column: 23, scope: !1189)
!1266 = !DILocation(line: 118, column: 21, scope: !1189)
!1267 = !DILocation(line: 120, column: 19, scope: !1189)
!1268 = !DILocation(line: 121, column: 19, scope: !1189)
!1269 = !DILocation(line: 122, column: 5, scope: !1189)
!1270 = !DILocation(line: 122, column: 13, scope: !1189)
!1271 = !DILocation(line: 122, column: 29, scope: !1189)
!1272 = !DILocation(line: 122, column: 27, scope: !1189)
!1273 = !DILocation(line: 122, column: 38, scope: !1189)
!1274 = !DILocation(line: 122, column: 42, scope: !1189)
!1275 = !DILocation(line: 122, column: 51, scope: !1189)
!1276 = !DILocation(line: 122, column: 49, scope: !1189)
!1277 = !DILocation(line: 0, scope: !1189)
!1278 = !DILocation(line: 123, column: 37, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 122, column: 69)
!1280 = !DILocation(line: 123, column: 9, scope: !1279)
!1281 = !DILocation(line: 125, column: 44, scope: !1279)
!1282 = !DILocation(line: 126, column: 44, scope: !1279)
!1283 = !DILocation(line: 126, column: 55, scope: !1279)
!1284 = !DILocation(line: 126, column: 64, scope: !1279)
!1285 = !DILocation(line: 125, column: 19, scope: !1279)
!1286 = !DILocation(line: 125, column: 17, scope: !1279)
!1287 = !DILocation(line: 127, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 127, column: 13)
!1289 = !DILocation(line: 127, column: 22, scope: !1288)
!1290 = !DILocation(line: 127, column: 29, scope: !1288)
!1291 = !DILocation(line: 127, column: 13, scope: !1279)
!1292 = !DILocation(line: 128, column: 32, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 127, column: 34)
!1294 = !DILocation(line: 128, column: 49, scope: !1293)
!1295 = !DILocation(line: 128, column: 29, scope: !1293)
!1296 = !DILocation(line: 129, column: 32, scope: !1293)
!1297 = !DILocation(line: 129, column: 41, scope: !1293)
!1298 = !DILocation(line: 129, column: 31, scope: !1293)
!1299 = !DILocation(line: 130, column: 31, scope: !1293)
!1300 = !DILocation(line: 130, column: 40, scope: !1293)
!1301 = !DILocation(line: 130, column: 51, scope: !1293)
!1302 = !DILocation(line: 130, column: 60, scope: !1293)
!1303 = !DILocation(line: 129, column: 29, scope: !1293)
!1304 = !DILocation(line: 131, column: 31, scope: !1293)
!1305 = !DILocation(line: 131, column: 42, scope: !1293)
!1306 = !DILocation(line: 131, column: 51, scope: !1293)
!1307 = !DILocation(line: 131, column: 29, scope: !1293)
!1308 = !DILocation(line: 132, column: 31, scope: !1293)
!1309 = !DILocation(line: 132, column: 13, scope: !1293)
!1310 = !DILocation(line: 132, column: 22, scope: !1293)
!1311 = !DILocation(line: 132, column: 29, scope: !1293)
!1312 = !{!1313, !840, i64 0}
!1313 = !{!"uct_iov", !840, i64 0, !846, i64 8, !840, i64 16, !846, i64 24, !849, i64 32}
!1314 = !DILocation(line: 133, column: 32, scope: !1293)
!1315 = !DILocation(line: 133, column: 37, scope: !1293)
!1316 = !DILocation(line: 133, column: 31, scope: !1293)
!1317 = !DILocation(line: 134, column: 58, scope: !1293)
!1318 = !DILocation(line: 134, column: 64, scope: !1293)
!1319 = !DILocation(line: 134, column: 31, scope: !1293)
!1320 = !DILocation(line: 133, column: 13, scope: !1293)
!1321 = !DILocation(line: 133, column: 22, scope: !1293)
!1322 = !DILocation(line: 133, column: 29, scope: !1293)
!1323 = !{!1313, !840, i64 16}
!1324 = !DILocation(line: 135, column: 13, scope: !1293)
!1325 = !DILocation(line: 135, column: 22, scope: !1293)
!1326 = !DILocation(line: 135, column: 29, scope: !1293)
!1327 = !{!1313, !846, i64 24}
!1328 = !DILocation(line: 136, column: 13, scope: !1293)
!1329 = !DILocation(line: 136, column: 22, scope: !1293)
!1330 = !DILocation(line: 136, column: 29, scope: !1293)
!1331 = !{!1313, !849, i64 32}
!1332 = !DILocation(line: 138, column: 29, scope: !1293)
!1333 = !DILocation(line: 138, column: 38, scope: !1293)
!1334 = !DILocation(line: 138, column: 47, scope: !1293)
!1335 = !DILocation(line: 138, column: 45, scope: !1293)
!1336 = !DILocation(line: 138, column: 27, scope: !1293)
!1337 = !DILocation(line: 139, column: 29, scope: !1293)
!1338 = !DILocation(line: 139, column: 42, scope: !1293)
!1339 = !DILocation(line: 139, column: 40, scope: !1293)
!1340 = !DILocation(line: 139, column: 27, scope: !1293)
!1341 = !DILocation(line: 143, column: 17, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 143, column: 17)
!1343 = !DILocation(line: 143, column: 33, scope: !1342)
!1344 = !DILocation(line: 143, column: 31, scope: !1342)
!1345 = !DILocation(line: 143, column: 17, scope: !1293)
!1346 = !DILocation(line: 145, column: 51, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 143, column: 48)
!1348 = !DILocation(line: 145, column: 17, scope: !1347)
!1349 = !DILocation(line: 145, column: 26, scope: !1347)
!1350 = !DILocation(line: 145, column: 49, scope: !1347)
!1351 = !{!1313, !846, i64 8}
!1352 = !DILocation(line: 146, column: 51, scope: !1347)
!1353 = !DILocation(line: 146, column: 48, scope: !1347)
!1354 = !DILocation(line: 147, column: 51, scope: !1347)
!1355 = !DILocation(line: 147, column: 17, scope: !1347)
!1356 = !DILocation(line: 147, column: 28, scope: !1347)
!1357 = !DILocation(line: 147, column: 37, scope: !1347)
!1358 = !DILocation(line: 147, column: 48, scope: !1347)
!1359 = !DILocation(line: 148, column: 17, scope: !1347)
!1360 = !DILocation(line: 152, column: 31, scope: !1293)
!1361 = !DILocation(line: 152, column: 13, scope: !1293)
!1362 = !DILocation(line: 152, column: 22, scope: !1293)
!1363 = !DILocation(line: 152, column: 29, scope: !1293)
!1364 = !DILocation(line: 153, column: 31, scope: !1293)
!1365 = !DILocation(line: 153, column: 28, scope: !1293)
!1366 = !DILocation(line: 156, column: 9, scope: !1293)
!1367 = !DILocation(line: 159, column: 9, scope: !1279)
!1368 = !DILocation(line: 159, column: 20, scope: !1279)
!1369 = !DILocation(line: 159, column: 29, scope: !1279)
!1370 = !DILocation(line: 159, column: 40, scope: !1279)
!1371 = !DILocation(line: 160, column: 11, scope: !1279)
!1372 = !DILocation(line: 160, column: 22, scope: !1279)
!1373 = !DILocation(line: 160, column: 31, scope: !1279)
!1374 = !DILocation(line: 160, column: 9, scope: !1279)
!1375 = distinct !{!1375, !1269, !1376, !932}
!1376 = !DILocation(line: 161, column: 5, scope: !1189)
!1377 = !DILocation(line: 173, column: 25, scope: !1189)
!1378 = !DILocation(line: 173, column: 34, scope: !1189)
!1379 = !DILocation(line: 173, column: 43, scope: !1189)
!1380 = !DILocation(line: 173, column: 41, scope: !1189)
!1381 = !DILocation(line: 173, column: 5, scope: !1189)
!1382 = !DILocation(line: 173, column: 16, scope: !1189)
!1383 = !DILocation(line: 173, column: 23, scope: !1189)
!1384 = !DILocation(line: 176, column: 12, scope: !1189)
!1385 = !DILocation(line: 177, column: 1, scope: !1189)
!1386 = !DILocation(line: 176, column: 5, scope: !1189)
!1387 = distinct !DISubprogram(name: "ucp_datatype_iter_iov_check", scope: !1166, file: !1166, line: 204, type: !1388, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !965}
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "dt_iter", arg: 1, scope: !1387, file: !1166, line: 204, type: !965)
!1392 = !DILocation(line: 204, column: 56, scope: !1387)
!1393 = !DILocation(line: 210, column: 1, scope: !1387)
!1394 = distinct !DISubprogram(name: "ucp_datatype_iter_uct_memh", scope: !1166, file: !1166, line: 405, type: !1395, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1398)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!736, !1397, !251}
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!1398 = !{!1399, !1400}
!1399 = !DILocalVariable(name: "memh", arg: 1, scope: !1394, file: !1166, line: 405, type: !1397)
!1400 = !DILocalVariable(name: "memh_index", arg: 2, scope: !1394, file: !1166, line: 405, type: !251)
!1401 = !DILocation(line: 405, column: 44, scope: !1394)
!1402 = !DILocation(line: 405, column: 66, scope: !1394)
!1403 = !DILocation(line: 407, column: 9, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1394, file: !1166, line: 407, column: 9)
!1405 = !DILocation(line: 407, column: 20, scope: !1404)
!1406 = !DILocation(line: 407, column: 9, scope: !1394)
!1407 = !DILocation(line: 408, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !1166, line: 407, column: 42)
!1409 = !DILocation(line: 414, column: 12, scope: !1394)
!1410 = !DILocation(line: 414, column: 18, scope: !1394)
!1411 = !DILocation(line: 414, column: 22, scope: !1394)
!1412 = !DILocation(line: 414, column: 5, scope: !1394)
!1413 = !DILocation(line: 415, column: 1, scope: !1394)
!1414 = distinct !DISubprogram(name: "ucp_datatype_iter_str", scope: !2, file: !2, line: 179, type: !1415, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !965, !530}
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423}
!1418 = !DILocalVariable(name: "dt_iter", arg: 1, scope: !1414, file: !2, line: 179, type: !965)
!1419 = !DILocalVariable(name: "strb", arg: 2, scope: !1414, file: !2, line: 180, type: !530)
!1420 = !DILocalVariable(name: "iov_index", scope: !1414, file: !2, line: 182, type: !271)
!1421 = !DILocalVariable(name: "offset", scope: !1414, file: !2, line: 182, type: !271)
!1422 = !DILocalVariable(name: "iov", scope: !1414, file: !2, line: 183, type: !818)
!1423 = !DILocalVariable(name: "sysdev_name", scope: !1414, file: !2, line: 184, type: !960)
!1424 = !DILocation(line: 179, column: 55, scope: !1414)
!1425 = !DILocation(line: 180, column: 49, scope: !1414)
!1426 = !DILocation(line: 182, column: 5, scope: !1414)
!1427 = !DILocation(line: 182, column: 12, scope: !1414)
!1428 = !DILocation(line: 182, column: 23, scope: !1414)
!1429 = !DILocation(line: 183, column: 5, scope: !1414)
!1430 = !DILocation(line: 183, column: 25, scope: !1414)
!1431 = !DILocation(line: 184, column: 5, scope: !1414)
!1432 = !DILocation(line: 184, column: 17, scope: !1414)
!1433 = !DILocation(line: 186, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 186, column: 9)
!1435 = !DILocation(line: 186, column: 18, scope: !1434)
!1436 = !DILocation(line: 186, column: 27, scope: !1434)
!1437 = !DILocation(line: 186, column: 32, scope: !1434)
!1438 = !DILocation(line: 186, column: 9, scope: !1414)
!1439 = !DILocation(line: 188, column: 17, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 186, column: 57)
!1441 = !DILocation(line: 188, column: 52, scope: !1440)
!1442 = !DILocation(line: 188, column: 61, scope: !1440)
!1443 = !DILocation(line: 188, column: 70, scope: !1440)
!1444 = !DILocation(line: 188, column: 30, scope: !1440)
!1445 = !DILocation(line: 187, column: 9, scope: !1440)
!1446 = !DILocation(line: 189, column: 5, scope: !1440)
!1447 = !DILocation(line: 191, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 191, column: 9)
!1449 = !DILocation(line: 191, column: 18, scope: !1448)
!1450 = !DILocation(line: 191, column: 27, scope: !1448)
!1451 = !{!909, !841, i64 5}
!1452 = !DILocation(line: 191, column: 35, scope: !1448)
!1453 = !DILocation(line: 191, column: 9, scope: !1414)
!1454 = !DILocation(line: 192, column: 52, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 191, column: 65)
!1456 = !DILocation(line: 192, column: 61, scope: !1455)
!1457 = !DILocation(line: 192, column: 70, scope: !1455)
!1458 = !DILocation(line: 192, column: 23, scope: !1455)
!1459 = !DILocation(line: 192, column: 21, scope: !1455)
!1460 = !DILocation(line: 193, column: 35, scope: !1455)
!1461 = !DILocation(line: 193, column: 48, scope: !1455)
!1462 = !DILocation(line: 193, column: 9, scope: !1455)
!1463 = !DILocation(line: 194, column: 5, scope: !1455)
!1464 = !DILocation(line: 196, column: 31, scope: !1414)
!1465 = !DILocation(line: 196, column: 51, scope: !1414)
!1466 = !DILocation(line: 196, column: 60, scope: !1414)
!1467 = !DILocation(line: 197, column: 31, scope: !1414)
!1468 = !DILocation(line: 197, column: 40, scope: !1414)
!1469 = !DILocation(line: 198, column: 56, scope: !1414)
!1470 = !DILocation(line: 198, column: 65, scope: !1414)
!1471 = !{!909, !841, i64 0}
!1472 = !DILocation(line: 198, column: 31, scope: !1414)
!1473 = !DILocation(line: 196, column: 5, scope: !1414)
!1474 = !DILocation(line: 200, column: 13, scope: !1414)
!1475 = !DILocation(line: 200, column: 22, scope: !1414)
!1476 = !DILocation(line: 200, column: 5, scope: !1414)
!1477 = !DILocation(line: 202, column: 35, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 200, column: 32)
!1479 = !DILocation(line: 203, column: 35, scope: !1478)
!1480 = !DILocation(line: 203, column: 44, scope: !1478)
!1481 = !DILocation(line: 203, column: 56, scope: !1478)
!1482 = !DILocation(line: 202, column: 9, scope: !1478)
!1483 = !DILocation(line: 204, column: 9, scope: !1478)
!1484 = !DILocation(line: 206, column: 19, scope: !1478)
!1485 = !DILocation(line: 207, column: 19, scope: !1478)
!1486 = !DILocation(line: 208, column: 9, scope: !1478)
!1487 = !DILocation(line: 208, column: 16, scope: !1478)
!1488 = !DILocation(line: 208, column: 25, scope: !1478)
!1489 = !DILocation(line: 208, column: 34, scope: !1478)
!1490 = !DILocation(line: 208, column: 23, scope: !1478)
!1491 = !DILocation(line: 209, column: 44, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 208, column: 42)
!1493 = !DILocation(line: 209, column: 53, scope: !1492)
!1494 = !DILocation(line: 209, column: 19, scope: !1492)
!1495 = !DILocation(line: 209, column: 17, scope: !1492)
!1496 = !DILocation(line: 210, column: 39, scope: !1492)
!1497 = !DILocation(line: 210, column: 55, scope: !1492)
!1498 = !DILocation(line: 210, column: 13, scope: !1492)
!1499 = !DILocation(line: 211, column: 17, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 211, column: 17)
!1501 = !DILocation(line: 211, column: 30, scope: !1500)
!1502 = !DILocation(line: 211, column: 39, scope: !1500)
!1503 = !DILocation(line: 211, column: 48, scope: !1500)
!1504 = !DILocation(line: 211, column: 27, scope: !1500)
!1505 = !DILocation(line: 211, column: 17, scope: !1492)
!1506 = !DILocation(line: 212, column: 43, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 211, column: 59)
!1508 = !DILocation(line: 212, column: 67, scope: !1507)
!1509 = !DILocation(line: 212, column: 72, scope: !1507)
!1510 = !DILocation(line: 213, column: 43, scope: !1507)
!1511 = !DILocation(line: 213, column: 52, scope: !1507)
!1512 = !DILocation(line: 213, column: 61, scope: !1507)
!1513 = !DILocation(line: 214, column: 43, scope: !1507)
!1514 = !DILocation(line: 214, column: 48, scope: !1507)
!1515 = !DILocation(line: 212, column: 17, scope: !1507)
!1516 = !DILocation(line: 215, column: 13, scope: !1507)
!1517 = !DILocation(line: 216, column: 43, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 215, column: 20)
!1519 = !DILocation(line: 216, column: 63, scope: !1518)
!1520 = !DILocation(line: 216, column: 68, scope: !1518)
!1521 = !DILocation(line: 217, column: 43, scope: !1518)
!1522 = !DILocation(line: 217, column: 48, scope: !1518)
!1523 = !DILocation(line: 216, column: 17, scope: !1518)
!1524 = !DILocation(line: 219, column: 23, scope: !1492)
!1525 = !DILocation(line: 219, column: 28, scope: !1492)
!1526 = !DILocation(line: 219, column: 20, scope: !1492)
!1527 = !DILocation(line: 220, column: 13, scope: !1492)
!1528 = distinct !{!1528, !1486, !1529, !932}
!1529 = !DILocation(line: 221, column: 9, scope: !1478)
!1530 = !DILocation(line: 222, column: 9, scope: !1478)
!1531 = !DILocation(line: 224, column: 35, scope: !1478)
!1532 = !DILocation(line: 225, column: 35, scope: !1478)
!1533 = !DILocation(line: 225, column: 44, scope: !1478)
!1534 = !DILocation(line: 225, column: 57, scope: !1478)
!1535 = !DILocation(line: 226, column: 35, scope: !1478)
!1536 = !DILocation(line: 226, column: 44, scope: !1478)
!1537 = !DILocation(line: 226, column: 57, scope: !1478)
!1538 = !DILocation(line: 224, column: 9, scope: !1478)
!1539 = !DILocation(line: 228, column: 9, scope: !1478)
!1540 = !DILocation(line: 230, column: 9, scope: !1478)
!1541 = !DILocation(line: 232, column: 1, scope: !1414)
!1542 = !DISubprogram(name: "ucs_string_buffer_appendf", scope: !532, file: !532, line: 163, type: !1543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !530, !960, null}
!1545 = !DISubprogram(name: "ucs_topo_sys_device_get_name", scope: !339, file: !339, line: 217, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!960, !338}
!1548 = distinct !DISubprogram(name: "ucs_recursive_spin_lock", scope: !464, file: !464, line: 86, type: !1549, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1552)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1552 = !{!1553, !1554}
!1553 = !DILocalVariable(name: "lock", arg: 1, scope: !1548, file: !464, line: 86, type: !1551)
!1554 = !DILocalVariable(name: "self", scope: !1548, file: !464, line: 88, type: !695)
!1555 = !DILocation(line: 86, column: 70, scope: !1548)
!1556 = !DILocation(line: 88, column: 5, scope: !1548)
!1557 = !DILocation(line: 88, column: 15, scope: !1548)
!1558 = !DILocation(line: 88, column: 22, scope: !1548)
!1559 = !DILocation(line: 90, column: 37, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1548, file: !464, line: 90, column: 9)
!1561 = !DILocation(line: 90, column: 43, scope: !1560)
!1562 = !DILocation(line: 90, column: 9, scope: !1560)
!1563 = !DILocation(line: 90, column: 9, scope: !1548)
!1564 = !DILocation(line: 91, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !464, line: 90, column: 50)
!1566 = !DILocation(line: 91, column: 17, scope: !1565)
!1567 = !DILocation(line: 91, column: 9, scope: !1565)
!1568 = !{!1569, !849, i64 4}
!1569 = !{!"ucs_recursive_spinlock", !1570, i64 0, !849, i64 4, !846, i64 8}
!1570 = !{!"ucs_spinlock", !849, i64 0}
!1571 = !DILocation(line: 92, column: 9, scope: !1565)
!1572 = !DILocation(line: 95, column: 20, scope: !1548)
!1573 = !DILocation(line: 95, column: 26, scope: !1548)
!1574 = !DILocation(line: 95, column: 5, scope: !1548)
!1575 = !DILocation(line: 96, column: 19, scope: !1548)
!1576 = !DILocation(line: 96, column: 5, scope: !1548)
!1577 = !DILocation(line: 96, column: 11, scope: !1548)
!1578 = !DILocation(line: 96, column: 17, scope: !1548)
!1579 = !{!1569, !846, i64 8}
!1580 = !DILocation(line: 97, column: 7, scope: !1548)
!1581 = !DILocation(line: 97, column: 13, scope: !1548)
!1582 = !DILocation(line: 97, column: 5, scope: !1548)
!1583 = !DILocation(line: 98, column: 1, scope: !1548)
!1584 = !DISubprogram(name: "pthread_mutex_lock", scope: !1585, file: !1585, line: 794, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1585 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!376, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!1589 = distinct !DISubprogram(name: "ucs_rcache_lookup_unsafe", scope: !1590, file: !1590, line: 49, type: !1591, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1593)
!1590 = !DIFile(filename: "ucs/memory/rcache.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "f20a841668ae44023c3f33e1519a7563")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!388, !363, !162, !271, !376}
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1601}
!1594 = !DILocalVariable(name: "rcache", arg: 1, scope: !1589, file: !1590, line: 49, type: !363)
!1595 = !DILocalVariable(name: "address", arg: 2, scope: !1589, file: !1590, line: 49, type: !162)
!1596 = !DILocalVariable(name: "length", arg: 3, scope: !1589, file: !1590, line: 49, type: !271)
!1597 = !DILocalVariable(name: "prot", arg: 4, scope: !1589, file: !1590, line: 50, type: !376)
!1598 = !DILocalVariable(name: "start", scope: !1589, file: !1590, line: 52, type: !181)
!1599 = !DILocalVariable(name: "pgt_region", scope: !1589, file: !1590, line: 53, type: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1601 = !DILocalVariable(name: "region", scope: !1589, file: !1590, line: 54, type: !388)
!1602 = !DILocation(line: 49, column: 40, scope: !1589)
!1603 = !DILocation(line: 49, column: 54, scope: !1589)
!1604 = !DILocation(line: 49, column: 70, scope: !1589)
!1605 = !DILocation(line: 50, column: 30, scope: !1589)
!1606 = !DILocation(line: 52, column: 5, scope: !1589)
!1607 = !DILocation(line: 52, column: 20, scope: !1589)
!1608 = !DILocation(line: 52, column: 39, scope: !1589)
!1609 = !DILocation(line: 52, column: 28, scope: !1589)
!1610 = !DILocation(line: 53, column: 5, scope: !1589)
!1611 = !DILocation(line: 53, column: 23, scope: !1589)
!1612 = !DILocation(line: 54, column: 5, scope: !1589)
!1613 = !DILocation(line: 54, column: 26, scope: !1589)
!1614 = !DILocation(line: 56, column: 5, scope: !1589)
!1615 = !DILocation(line: 56, column: 5, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1589, file: !1590, line: 56, column: 5)
!1617 = !DILocation(line: 56, column: 5, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1616, file: !1590, line: 56, column: 5)
!1619 = !DILocation(line: 60, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1589, file: !1590, line: 60, column: 9)
!1621 = !DILocation(line: 60, column: 9, scope: !1589)
!1622 = !DILocation(line: 61, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !1590, line: 60, column: 60)
!1624 = !DILocation(line: 64, column: 18, scope: !1589)
!1625 = !DILocation(line: 64, column: 16, scope: !1589)
!1626 = !DILocation(line: 65, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1589, file: !1590, line: 65, column: 9)
!1628 = !DILocation(line: 65, column: 9, scope: !1589)
!1629 = !DILocation(line: 66, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !1590, line: 65, column: 43)
!1631 = !DILocation(line: 69, column: 14, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1589, file: !1590, line: 69, column: 14)
!1633 = !DILocation(line: 69, column: 12, scope: !1589)
!1634 = !DILocation(line: 70, column: 11, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1589, file: !1590, line: 70, column: 9)
!1636 = !DILocation(line: 70, column: 19, scope: !1635)
!1637 = !DILocation(line: 70, column: 17, scope: !1635)
!1638 = !DILocation(line: 70, column: 29, scope: !1635)
!1639 = !DILocation(line: 70, column: 37, scope: !1635)
!1640 = !DILocation(line: 70, column: 43, scope: !1635)
!1641 = !{!1065, !846, i64 8}
!1642 = !DILocation(line: 70, column: 27, scope: !1635)
!1643 = !DILocation(line: 70, column: 48, scope: !1635)
!1644 = !DILocation(line: 71, column: 33, scope: !1635)
!1645 = !DILocation(line: 71, column: 41, scope: !1635)
!1646 = !DILocation(line: 71, column: 10, scope: !1635)
!1647 = !DILocation(line: 70, column: 9, scope: !1589)
!1648 = !DILocation(line: 73, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1635, file: !1590, line: 72, column: 5)
!1650 = !DILocation(line: 76, column: 5, scope: !1589)
!1651 = !DILocation(line: 76, column: 13, scope: !1589)
!1652 = !DILocation(line: 76, column: 21, scope: !1589)
!1653 = !{!1065, !849, i64 64}
!1654 = !DILocation(line: 77, column: 34, scope: !1589)
!1655 = !DILocation(line: 77, column: 42, scope: !1589)
!1656 = !DILocation(line: 77, column: 5, scope: !1589)
!1657 = !DILocation(line: 79, column: 12, scope: !1589)
!1658 = !DILocation(line: 79, column: 5, scope: !1589)
!1659 = !DILocation(line: 80, column: 1, scope: !1589)
!1660 = distinct !DISubprogram(name: "ucs_rcache_region_put_unsafe", scope: !1590, file: !1590, line: 84, type: !1661, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !363, !388}
!1663 = !{!1664, !1665}
!1664 = !DILocalVariable(name: "rcache", arg: 1, scope: !1660, file: !1590, line: 84, type: !363)
!1665 = !DILocalVariable(name: "region", arg: 2, scope: !1660, file: !1590, line: 84, type: !388)
!1666 = !DILocation(line: 84, column: 44, scope: !1660)
!1667 = !DILocation(line: 84, column: 73, scope: !1660)
!1668 = !DILocation(line: 86, column: 31, scope: !1660)
!1669 = !DILocation(line: 86, column: 39, scope: !1660)
!1670 = !DILocation(line: 86, column: 5, scope: !1660)
!1671 = !DILocation(line: 89, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1660, file: !1590, line: 89, column: 9)
!1673 = !DILocation(line: 89, column: 9, scope: !1660)
!1674 = !DILocation(line: 90, column: 41, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !1590, line: 89, column: 48)
!1676 = !DILocation(line: 90, column: 49, scope: !1675)
!1677 = !DILocation(line: 90, column: 9, scope: !1675)
!1678 = !DILocation(line: 91, column: 5, scope: !1675)
!1679 = !DILocation(line: 94, column: 1, scope: !1660)
!1680 = distinct !DISubprogram(name: "ucs_recursive_spin_unlock", scope: !464, file: !464, line: 132, type: !1549, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1681)
!1681 = !{!1682}
!1682 = !DILocalVariable(name: "lock", arg: 1, scope: !1680, file: !464, line: 132, type: !1551)
!1683 = !DILocation(line: 132, column: 72, scope: !1680)
!1684 = !DILocation(line: 134, column: 7, scope: !1680)
!1685 = !DILocation(line: 134, column: 13, scope: !1680)
!1686 = !DILocation(line: 134, column: 5, scope: !1680)
!1687 = !DILocation(line: 135, column: 9, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !464, line: 135, column: 9)
!1689 = !DILocation(line: 135, column: 15, scope: !1688)
!1690 = !DILocation(line: 135, column: 21, scope: !1688)
!1691 = !DILocation(line: 135, column: 9, scope: !1680)
!1692 = !DILocation(line: 136, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !464, line: 135, column: 27)
!1694 = !DILocation(line: 136, column: 15, scope: !1693)
!1695 = !DILocation(line: 136, column: 21, scope: !1693)
!1696 = !DILocation(line: 137, column: 26, scope: !1693)
!1697 = !DILocation(line: 137, column: 32, scope: !1693)
!1698 = !DILocation(line: 137, column: 9, scope: !1693)
!1699 = !DILocation(line: 138, column: 5, scope: !1693)
!1700 = !DILocation(line: 139, column: 1, scope: !1680)
!1701 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1585, file: !1585, line: 835, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1702 = !DISubprogram(name: "ucp_memh_get_slow", scope: !168, file: !168, line: 133, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1703 = !DISubprogram(name: "pthread_self", scope: !1585, file: !1585, line: 273, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!695}
!1706 = distinct !DISubprogram(name: "ucs_recursive_spin_is_owner", scope: !464, file: !464, line: 75, type: !1707, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1711)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!376, !1709, !695}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!1711 = !{!1712, !1713}
!1712 = !DILocalVariable(name: "lock", arg: 1, scope: !1706, file: !464, line: 75, type: !1709)
!1713 = !DILocalVariable(name: "self", arg: 2, scope: !1706, file: !464, line: 76, type: !695)
!1714 = !DILocation(line: 75, column: 61, scope: !1706)
!1715 = !DILocation(line: 76, column: 39, scope: !1706)
!1716 = !DILocation(line: 78, column: 12, scope: !1706)
!1717 = !DILocation(line: 78, column: 18, scope: !1706)
!1718 = !DILocation(line: 78, column: 27, scope: !1706)
!1719 = !DILocation(line: 78, column: 24, scope: !1706)
!1720 = !DILocation(line: 78, column: 5, scope: !1706)
!1721 = distinct !DISubprogram(name: "ucs_spin_lock", scope: !464, file: !464, line: 81, type: !1722, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1725)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "lock", arg: 1, scope: !1721, file: !464, line: 81, type: !1724)
!1727 = !DILocation(line: 81, column: 50, scope: !1721)
!1728 = !DILocation(line: 83, column: 24, scope: !1721)
!1729 = !DILocation(line: 83, column: 30, scope: !1721)
!1730 = !DILocation(line: 83, column: 5, scope: !1721)
!1731 = !DILocation(line: 84, column: 1, scope: !1721)
!1732 = !DISubprogram(name: "pthread_spin_lock", scope: !1585, file: !1585, line: 1238, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!376, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!1736 = distinct !DISubprogram(name: "ucs_queue_is_empty", scope: !1737, file: !1737, line: 56, type: !1738, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1742)
!1737 = !DIFile(filename: "ucs/datastruct/queue.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "5256a63b9115b799a014ca77a76b9896")
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!376, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!1742 = !{!1743}
!1743 = !DILocalVariable(name: "queue", arg: 1, scope: !1736, file: !1737, line: 56, type: !1740)
!1744 = !DILocation(line: 56, column: 62, scope: !1736)
!1745 = !DILocation(line: 58, column: 12, scope: !1736)
!1746 = !DILocation(line: 58, column: 19, scope: !1736)
!1747 = !{!1748, !840, i64 8}
!1748 = !{!"ucs_queue_head", !840, i64 0, !840, i64 8}
!1749 = !DILocation(line: 58, column: 29, scope: !1736)
!1750 = !DILocation(line: 58, column: 36, scope: !1736)
!1751 = !DILocation(line: 58, column: 25, scope: !1736)
!1752 = !DILocation(line: 58, column: 5, scope: !1736)
!1753 = !DISubprogram(name: "ucs_pgtable_lookup", scope: !177, file: !177, line: 208, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1600, !455, !181}
!1756 = distinct !DISubprogram(name: "ucs_rcache_region_test", scope: !1590, file: !1590, line: 13, type: !1757, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!376, !388, !376}
!1759 = !{!1760, !1761}
!1760 = !DILocalVariable(name: "region", arg: 1, scope: !1756, file: !1590, line: 13, type: !388)
!1761 = !DILocalVariable(name: "prot", arg: 2, scope: !1756, file: !1590, line: 13, type: !376)
!1762 = !DILocation(line: 13, column: 45, scope: !1756)
!1763 = !DILocation(line: 13, column: 57, scope: !1756)
!1764 = !DILocation(line: 15, column: 13, scope: !1756)
!1765 = !DILocation(line: 15, column: 21, scope: !1756)
!1766 = !{!1065, !841, i64 70}
!1767 = !DILocation(line: 15, column: 27, scope: !1756)
!1768 = !DILocation(line: 15, column: 64, scope: !1756)
!1769 = !DILocation(line: 16, column: 12, scope: !1756)
!1770 = !{!1065, !841, i64 69}
!1771 = !DILocation(line: 0, scope: !1756)
!1772 = !DILocation(line: 15, column: 5, scope: !1756)
!1773 = distinct !DISubprogram(name: "ucs_rcache_region_lru_remove", scope: !1590, file: !1590, line: 36, type: !1661, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1774)
!1774 = !{!1775, !1776}
!1775 = !DILocalVariable(name: "rcache", arg: 1, scope: !1773, file: !1590, line: 36, type: !363)
!1776 = !DILocalVariable(name: "region", arg: 2, scope: !1773, file: !1590, line: 36, type: !388)
!1777 = !DILocation(line: 36, column: 44, scope: !1773)
!1778 = !DILocation(line: 36, column: 73, scope: !1773)
!1779 = !DILocation(line: 38, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !1590, line: 38, column: 9)
!1781 = !DILocation(line: 38, column: 19, scope: !1780)
!1782 = !{!1065, !841, i64 71}
!1783 = !DILocation(line: 38, column: 29, scope: !1780)
!1784 = !DILocation(line: 38, column: 9, scope: !1773)
!1785 = !DILocation(line: 39, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !1590, line: 38, column: 60)
!1787 = !DILocation(line: 42, column: 5, scope: !1773)
!1788 = !DILocation(line: 42, column: 5, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1773, file: !1590, line: 42, column: 5)
!1790 = !DILocation(line: 43, column: 19, scope: !1773)
!1791 = !DILocation(line: 43, column: 27, scope: !1773)
!1792 = !DILocation(line: 43, column: 5, scope: !1773)
!1793 = !DILocation(line: 44, column: 5, scope: !1773)
!1794 = !DILocation(line: 44, column: 13, scope: !1773)
!1795 = !DILocation(line: 44, column: 23, scope: !1773)
!1796 = !DILocation(line: 45, column: 1, scope: !1773)
!1797 = distinct !DISubprogram(name: "ucs_list_del", scope: !186, file: !186, line: 103, type: !1798, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1801)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "elem", arg: 1, scope: !1797, file: !186, line: 103, type: !1800)
!1803 = !DILocation(line: 103, column: 50, scope: !1797)
!1804 = !DILocation(line: 105, column: 24, scope: !1797)
!1805 = !DILocation(line: 105, column: 30, scope: !1797)
!1806 = !{!1032, !840, i64 8}
!1807 = !DILocation(line: 105, column: 5, scope: !1797)
!1808 = !DILocation(line: 105, column: 11, scope: !1797)
!1809 = !{!1032, !840, i64 0}
!1810 = !DILocation(line: 105, column: 17, scope: !1797)
!1811 = !DILocation(line: 105, column: 22, scope: !1797)
!1812 = !DILocation(line: 106, column: 24, scope: !1797)
!1813 = !DILocation(line: 106, column: 30, scope: !1797)
!1814 = !DILocation(line: 106, column: 5, scope: !1797)
!1815 = !DILocation(line: 106, column: 11, scope: !1797)
!1816 = !DILocation(line: 106, column: 17, scope: !1797)
!1817 = !DILocation(line: 106, column: 22, scope: !1797)
!1818 = !DILocation(line: 107, column: 1, scope: !1797)
!1819 = distinct !DISubprogram(name: "ucs_rcache_region_lru_add", scope: !1590, file: !1590, line: 22, type: !1661, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1820)
!1820 = !{!1821, !1822}
!1821 = !DILocalVariable(name: "rcache", arg: 1, scope: !1819, file: !1590, line: 22, type: !363)
!1822 = !DILocalVariable(name: "region", arg: 2, scope: !1819, file: !1590, line: 22, type: !388)
!1823 = !DILocation(line: 22, column: 41, scope: !1819)
!1824 = !DILocation(line: 22, column: 70, scope: !1819)
!1825 = !DILocation(line: 24, column: 9, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1819, file: !1590, line: 24, column: 9)
!1827 = !DILocation(line: 24, column: 17, scope: !1826)
!1828 = !DILocation(line: 24, column: 27, scope: !1826)
!1829 = !DILocation(line: 24, column: 9, scope: !1819)
!1830 = !DILocation(line: 25, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !1590, line: 24, column: 57)
!1832 = !DILocation(line: 28, column: 5, scope: !1819)
!1833 = !DILocation(line: 28, column: 5, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1819, file: !1590, line: 28, column: 5)
!1835 = !DILocation(line: 29, column: 5, scope: !1819)
!1836 = !DILocation(line: 30, column: 5, scope: !1819)
!1837 = !DILocation(line: 30, column: 13, scope: !1819)
!1838 = !DILocation(line: 30, column: 23, scope: !1819)
!1839 = !DILocation(line: 31, column: 1, scope: !1819)
!1840 = !DISubprogram(name: "ucs_mem_region_destroy_internal", scope: !366, file: !366, line: 135, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1841 = distinct !DISubprogram(name: "ucs_list_insert_before", scope: !186, file: !186, line: 92, type: !1842, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1800, !1800}
!1844 = !{!1845, !1846}
!1845 = !DILocalVariable(name: "pos", arg: 1, scope: !1841, file: !186, line: 92, type: !1800)
!1846 = !DILocalVariable(name: "new_link", arg: 2, scope: !1841, file: !186, line: 93, type: !1800)
!1847 = !DILocation(line: 92, column: 60, scope: !1841)
!1848 = !DILocation(line: 93, column: 60, scope: !1841)
!1849 = !DILocation(line: 95, column: 29, scope: !1841)
!1850 = !DILocation(line: 95, column: 34, scope: !1841)
!1851 = !DILocation(line: 95, column: 40, scope: !1841)
!1852 = !DILocation(line: 95, column: 45, scope: !1841)
!1853 = !DILocation(line: 95, column: 5, scope: !1841)
!1854 = !DILocation(line: 96, column: 1, scope: !1841)
!1855 = distinct !DISubprogram(name: "ucs_list_insert_replace", scope: !186, file: !186, line: 52, type: !1856, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1800, !1800, !1800}
!1858 = !{!1859, !1860, !1861}
!1859 = !DILocalVariable(name: "prev", arg: 1, scope: !1855, file: !186, line: 52, type: !1800)
!1860 = !DILocalVariable(name: "next", arg: 2, scope: !1855, file: !186, line: 53, type: !1800)
!1861 = !DILocalVariable(name: "elem", arg: 3, scope: !1855, file: !186, line: 54, type: !1800)
!1862 = !DILocation(line: 52, column: 61, scope: !1855)
!1863 = !DILocation(line: 53, column: 61, scope: !1855)
!1864 = !DILocation(line: 54, column: 61, scope: !1855)
!1865 = !DILocation(line: 56, column: 18, scope: !1855)
!1866 = !DILocation(line: 56, column: 5, scope: !1855)
!1867 = !DILocation(line: 56, column: 11, scope: !1855)
!1868 = !DILocation(line: 56, column: 16, scope: !1855)
!1869 = !DILocation(line: 57, column: 18, scope: !1855)
!1870 = !DILocation(line: 57, column: 5, scope: !1855)
!1871 = !DILocation(line: 57, column: 11, scope: !1855)
!1872 = !DILocation(line: 57, column: 16, scope: !1855)
!1873 = !DILocation(line: 58, column: 18, scope: !1855)
!1874 = !DILocation(line: 58, column: 5, scope: !1855)
!1875 = !DILocation(line: 58, column: 11, scope: !1855)
!1876 = !DILocation(line: 58, column: 16, scope: !1855)
!1877 = !DILocation(line: 59, column: 18, scope: !1855)
!1878 = !DILocation(line: 59, column: 5, scope: !1855)
!1879 = !DILocation(line: 59, column: 11, scope: !1855)
!1880 = !DILocation(line: 59, column: 16, scope: !1855)
!1881 = !DILocation(line: 60, column: 1, scope: !1855)
!1882 = distinct !DISubprogram(name: "ucs_spin_unlock", scope: !464, file: !464, line: 127, type: !1722, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1883)
!1883 = !{!1884}
!1884 = !DILocalVariable(name: "lock", arg: 1, scope: !1882, file: !464, line: 127, type: !1724)
!1885 = !DILocation(line: 127, column: 52, scope: !1882)
!1886 = !DILocation(line: 129, column: 26, scope: !1882)
!1887 = !DILocation(line: 129, column: 32, scope: !1882)
!1888 = !DILocation(line: 129, column: 5, scope: !1882)
!1889 = !DILocation(line: 130, column: 1, scope: !1882)
!1890 = !DISubprogram(name: "pthread_spin_unlock", scope: !1585, file: !1585, line: 1246, type: !1733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1891 = distinct !DISubprogram(name: "ucp_memh_put", scope: !978, file: !978, line: 72, type: !1892, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !217, !732}
!1894 = !{!1895, !1896}
!1895 = !DILocalVariable(name: "context", arg: 1, scope: !1891, file: !978, line: 72, type: !217)
!1896 = !DILocalVariable(name: "memh", arg: 2, scope: !1891, file: !978, line: 72, type: !732)
!1897 = !DILocation(line: 72, column: 28, scope: !1891)
!1898 = !DILocation(line: 72, column: 47, scope: !1891)
!1899 = !DILocation(line: 74, column: 5, scope: !1891)
!1900 = !DILocation(line: 74, column: 5, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1891, file: !978, line: 74, column: 5)
!1902 = !DILocation(line: 74, column: 5, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1901, file: !978, line: 74, column: 5)
!1904 = !DILocation(line: 78, column: 9, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1891, file: !978, line: 78, column: 9)
!1906 = !DILocation(line: 78, column: 9, scope: !1891)
!1907 = !DILocation(line: 79, column: 9, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !978, line: 78, column: 54)
!1909 = !DILocation(line: 83, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1891, file: !978, line: 83, column: 9)
!1911 = !{!1064, !840, i64 112}
!1912 = !DILocation(line: 83, column: 9, scope: !1891)
!1913 = !DILocation(line: 84, column: 26, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !978, line: 83, column: 45)
!1915 = !DILocation(line: 84, column: 35, scope: !1914)
!1916 = !DILocation(line: 84, column: 9, scope: !1914)
!1917 = !DILocation(line: 85, column: 18, scope: !1914)
!1918 = !DILocation(line: 85, column: 9, scope: !1914)
!1919 = !DILocation(line: 86, column: 9, scope: !1914)
!1920 = !DILocation(line: 91, column: 5, scope: !1891)
!1921 = !DILocation(line: 91, column: 5, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !978, line: 91, column: 5)
!1923 = distinct !DILexicalBlock(scope: !1891, file: !978, line: 91, column: 5)
!1924 = !DILocation(line: 91, column: 5, scope: !1923)
!1925 = !DILocation(line: 91, column: 5, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !978, line: 91, column: 5)
!1927 = !DILocation(line: 91, column: 5, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1922, file: !978, line: 91, column: 5)
!1929 = !DILocation(line: 91, column: 5, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !978, line: 91, column: 5)
!1931 = !DILocation(line: 92, column: 34, scope: !1891)
!1932 = !DILocation(line: 92, column: 43, scope: !1891)
!1933 = !DILocation(line: 92, column: 52, scope: !1891)
!1934 = !DILocation(line: 92, column: 58, scope: !1891)
!1935 = !DILocation(line: 92, column: 5, scope: !1891)
!1936 = !DILocation(line: 93, column: 5, scope: !1891)
!1937 = !DILocation(line: 93, column: 5, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !978, line: 93, column: 5)
!1939 = distinct !DILexicalBlock(scope: !1891, file: !978, line: 93, column: 5)
!1940 = !DILocation(line: 93, column: 5, scope: !1939)
!1941 = !DILocation(line: 93, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !978, line: 93, column: 5)
!1943 = !DILocation(line: 93, column: 5, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !978, line: 93, column: 5)
!1945 = !DILocation(line: 93, column: 5, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1944, file: !978, line: 93, column: 5)
!1947 = !DILocation(line: 94, column: 1, scope: !1891)
!1948 = distinct !DISubprogram(name: "ucp_memh_is_zero_length", scope: !978, file: !978, line: 16, type: !1949, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!376, !1397}
!1951 = !{!1952}
!1952 = !DILocalVariable(name: "memh", arg: 1, scope: !1948, file: !978, line: 16, type: !1397)
!1953 = !DILocation(line: 16, column: 41, scope: !1948)
!1954 = !DILocation(line: 18, column: 12, scope: !1948)
!1955 = !DILocation(line: 18, column: 17, scope: !1948)
!1956 = !DILocation(line: 18, column: 5, scope: !1948)
!1957 = !DISubprogram(name: "ucp_memh_cleanup", scope: !168, file: !168, line: 138, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
