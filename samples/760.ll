; ModuleID = 'samples/760.bc'
source_filename = "/local-ssd/globalarrays-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v-build/aidengro/spack-stage-globalarrays-5.8.2-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v/spack-src/global/src/global.nalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ga_typeinfo_t = type { i32, i64 }
%struct._iterator_hdl = type { i64, [7 x i64], [7 x i64], i64, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, [7 x i64], [7 x i64], [7 x i64], [7 x i64], [7 x i64], [7 x i64], [7 x i64], [7 x i64], [7 x i64], [7 x i64] }
%struct.DoubleComplex = type { double, double }
%struct.SingleComplex = type { float, float }

@_ga_sync_begin = external global i32, align 4
@_ga_sync_end = external global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"ga_zero\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"layout problem\00", align 1
@ga_types = external global [0 x %struct.ga_typeinfo_t], align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"arrays have to be different \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"types not the same\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"dimensions not the same\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Both arrays must be defined on same group\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@one_arr = internal global [7 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.7 = private unnamed_addr constant [17 x i8] c"type not correct\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"layout problem with ghosts\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"inconsistent number of elements\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" wrong data type \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"pnga_dot: type not supported\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ga_scale\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"All three arrays must be on same group for ga_add\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"types not consistent\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"inconsistent number of elements a\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"inconsistent number of elements b\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"dimension must be 2\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"array type mismatch \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"transpose_tmp\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"bad type:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_zero(i64 noundef %g_a) #0 {
entry:
  %g_a.addr = alloca i64, align 8
  %ndim = alloca i64, align 8
  %type = alloca i64, align 8
  %me = alloca i64, align 8
  %elems = alloca i64, align 8
  %p_handle = alloca i64, align 8
  %num_blocks = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %_dims = alloca [7 x i64], align 16
  %_ld = alloca [6 x i64], align 16
  %_lo = alloca [7 x i64], align 16
  %_hi = alloca [7 x i64], align 16
  %local_sync_begin = alloca i32, align 4
  %local_sync_end = alloca i32, align 4
  %_i = alloca i32, align 4
  store i64 %g_a, ptr %g_a.addr, align 8
  %0 = load i32, ptr @_ga_sync_begin, align 4
  store i32 %0, ptr %local_sync_begin, align 4
  %1 = load i32, ptr @_ga_sync_end, align 4
  store i32 %1, ptr %local_sync_end, align 4
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %2 = load i64, ptr %g_a.addr, align 8
  %call = call i64 @pnga_get_pgroup(i64 noundef %2)
  store i64 %call, ptr %p_handle, align 8
  %3 = load i32, ptr %local_sync_begin, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %p_handle, align 8
  call void @pnga_pgroup_sync(i64 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %p_handle, align 8
  %call1 = call i64 @pnga_pgroup_nodeid(i64 noundef %5)
  store i64 %call1, ptr %me, align 8
  %6 = load i64, ptr %g_a.addr, align 8
  call void @pnga_check_handle(i64 noundef %6, ptr noundef @.str)
  %7 = load i64, ptr %g_a.addr, align 8
  %call2 = call i64 @pnga_total_blocks(i64 noundef %7)
  store i64 %call2, ptr %num_blocks, align 8
  %8 = load i64, ptr %g_a.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %8, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay)
  %9 = load i64, ptr %num_blocks, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load i64, ptr %g_a.addr, align 8
  %11 = load i64, ptr %me, align 8
  %arraydecay4 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %10, i64 noundef %11, ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  %arrayidx = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %12 = load i64, ptr %arrayidx, align 16
  %cmp6 = icmp sgt i64 %12, 0
  br i1 %cmp6, label %if.then7, label %if.end47

if.then7:                                         ; preds = %if.then3
  %13 = load i64, ptr %g_a.addr, align 8
  %call8 = call i64 @pnga_has_ghosts(i64 noundef %13)
  %tobool9 = icmp ne i64 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then7
  %14 = load i64, ptr %g_a.addr, align 8
  %arraydecay11 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_zero_patch(i64 noundef %14, ptr noundef %arraydecay11, ptr noundef %arraydecay12)
  br label %if.end55

if.end13:                                         ; preds = %if.then7
  %15 = load i64, ptr %g_a.addr, align 8
  %arraydecay14 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %15, ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef %ptr, ptr noundef %arraydecay16)
  store i32 0, ptr %_i, align 4
  %16 = load i64, ptr %ndim, align 8
  %sub = sub nsw i64 %16, 1
  %arrayidx17 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub
  %17 = load i64, ptr %arrayidx17, align 8
  %18 = load i64, ptr %ndim, align 8
  %sub18 = sub nsw i64 %18, 1
  %arrayidx19 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub18
  %19 = load i64, ptr %arrayidx19, align 8
  %sub20 = sub nsw i64 %17, %19
  %add = add nsw i64 %sub20, 1
  store i64 %add, ptr %elems, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %20 = load i32, ptr %_i, align 4
  %conv = sext i32 %20 to i64
  %21 = load i64, ptr %ndim, align 8
  %sub21 = sub nsw i64 %21, 1
  %cmp22 = icmp slt i64 %conv, %sub21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %_i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom
  %23 = load i64, ptr %arrayidx24, align 8
  %24 = load i32, ptr %_i, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom25
  %25 = load i64, ptr %arrayidx26, align 8
  %26 = load i32, ptr %_i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom27
  %27 = load i64, ptr %arrayidx28, align 8
  %sub29 = sub nsw i64 %25, %27
  %add30 = add nsw i64 %sub29, 1
  %cmp31 = icmp ne i64 %23, %add30
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body
  %28 = load i32, ptr %_i, align 4
  %conv34 = sext i32 %28 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv34)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body
  %29 = load i32, ptr %_i, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom36
  %30 = load i64, ptr %arrayidx37, align 8
  %31 = load i32, ptr %_i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom38
  %32 = load i64, ptr %arrayidx39, align 8
  %sub40 = sub nsw i64 %30, %32
  %add41 = add nsw i64 %sub40, 1
  %33 = load i64, ptr %elems, align 8
  %mul = mul nsw i64 %33, %add41
  store i64 %mul, ptr %elems, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %34 = load i32, ptr %_i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %_i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %ptr, align 8
  %36 = load i64, ptr %type, align 8
  %sub42 = sub nsw i64 %36, 1000
  %arrayidx43 = getelementptr inbounds [0 x %struct.ga_typeinfo_t], ptr @ga_types, i64 0, i64 %sub42
  %size = getelementptr inbounds %struct.ga_typeinfo_t, ptr %arrayidx43, i32 0, i32 1
  %37 = load i64, ptr %size, align 8
  %38 = load i64, ptr %elems, align 8
  %mul44 = mul i64 %37, %38
  call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 %mul44, i1 false)
  %39 = load i64, ptr %g_a.addr, align 8
  %arraydecay45 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release_update(i64 noundef %39, ptr noundef %arraydecay45, ptr noundef %arraydecay46)
  br label %if.end47

if.end47:                                         ; preds = %for.end, %if.then3
  br label %if.end52

if.else:                                          ; preds = %if.end
  %40 = load i64, ptr %g_a.addr, align 8
  %41 = load i64, ptr %me, align 8
  call void @pnga_access_block_segment_ptr(i64 noundef %40, i64 noundef %41, ptr noundef %ptr, ptr noundef %elems)
  %42 = load ptr, ptr %ptr, align 8
  %43 = load i64, ptr %type, align 8
  %sub48 = sub nsw i64 %43, 1000
  %arrayidx49 = getelementptr inbounds [0 x %struct.ga_typeinfo_t], ptr @ga_types, i64 0, i64 %sub48
  %size50 = getelementptr inbounds %struct.ga_typeinfo_t, ptr %arrayidx49, i32 0, i32 1
  %44 = load i64, ptr %size50, align 8
  %45 = load i64, ptr %elems, align 8
  %mul51 = mul i64 %44, %45
  call void @llvm.memset.p0.i64(ptr align 1 %42, i8 0, i64 %mul51, i1 false)
  %46 = load i64, ptr %g_a.addr, align 8
  %47 = load i64, ptr %me, align 8
  call void @pnga_release_update_block_segment(i64 noundef %46, i64 noundef %47)
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end47
  %48 = load i32, ptr %local_sync_end, align 4
  %tobool53 = icmp ne i32 %48, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end52
  %49 = load i64, ptr %p_handle, align 8
  call void @pnga_pgroup_sync(i64 noundef %49)
  br label %if.end55

if.end55:                                         ; preds = %if.then10, %if.then54, %if.end52
  ret void
}

declare i64 @pnga_get_pgroup(i64 noundef) #1

declare void @pnga_pgroup_sync(i64 noundef) #1

declare i64 @pnga_pgroup_nodeid(i64 noundef) #1

declare void @pnga_check_handle(i64 noundef, ptr noundef) #1

declare i64 @pnga_total_blocks(i64 noundef) #1

declare void @pnga_inquire(i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @pnga_distribution(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare i64 @pnga_has_ghosts(i64 noundef) #1

declare void @pnga_zero_patch(i64 noundef, ptr noundef, ptr noundef) #1

declare void @pnga_access_ptr(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @pnga_error(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @pnga_release_update(i64 noundef, ptr noundef, ptr noundef) #1

declare void @pnga_access_block_segment_ptr(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #1

declare void @pnga_release_update_block_segment(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_copy(i64 noundef %g_a, i64 noundef %g_b) #0 {
entry:
  %g_a.addr = alloca i64, align 8
  %g_b.addr = alloca i64, align 8
  %ndim = alloca i64, align 8
  %ndimb = alloca i64, align 8
  %type = alloca i64, align 8
  %typeb = alloca i64, align 8
  %me_a = alloca i64, align 8
  %me_b = alloca i64, align 8
  %dimsb = alloca [7 x i64], align 16
  %i = alloca i64, align 8
  %a_grp = alloca i64, align 8
  %b_grp = alloca i64, align 8
  %anproc = alloca i64, align 8
  %bnproc = alloca i64, align 8
  %num_blocks_a = alloca i64, align 8
  %num_blocks_b = alloca i64, align 8
  %blocks = alloca [7 x i64], align 16
  %block_dims = alloca [7 x i64], align 16
  %ptr_a = alloca ptr, align 8
  %ptr_b = alloca ptr, align 8
  %local_sync_begin = alloca i32, align 4
  %local_sync_end = alloca i32, align 4
  %use_put = alloca i32, align 4
  %hdl = alloca %struct._iterator_hdl, align 8
  %_dims = alloca [7 x i64], align 16
  %_ld = alloca [6 x i64], align 16
  %_lo = alloca [7 x i64], align 16
  %_hi = alloca [7 x i64], align 16
  store i64 %g_a, ptr %g_a.addr, align 8
  store i64 %g_b, ptr %g_b.addr, align 8
  %0 = load i32, ptr @_ga_sync_begin, align 4
  store i32 %0, ptr %local_sync_begin, align 4
  %1 = load i32, ptr @_ga_sync_end, align 4
  store i32 %1, ptr %local_sync_end, align 4
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %2 = load i64, ptr %g_a.addr, align 8
  %call = call i64 @pnga_get_pgroup(i64 noundef %2)
  store i64 %call, ptr %a_grp, align 8
  %3 = load i64, ptr %g_b.addr, align 8
  %call1 = call i64 @pnga_get_pgroup(i64 noundef %3)
  store i64 %call1, ptr %b_grp, align 8
  %4 = load i64, ptr %a_grp, align 8
  %call2 = call i64 @pnga_pgroup_nodeid(i64 noundef %4)
  store i64 %call2, ptr %me_a, align 8
  %5 = load i64, ptr %b_grp, align 8
  %call3 = call i64 @pnga_pgroup_nodeid(i64 noundef %5)
  store i64 %call3, ptr %me_b, align 8
  %6 = load i64, ptr %a_grp, align 8
  %call4 = call i64 @pnga_get_pgroup_size(i64 noundef %6)
  store i64 %call4, ptr %anproc, align 8
  %7 = load i64, ptr %b_grp, align 8
  %call5 = call i64 @pnga_get_pgroup_size(i64 noundef %7)
  store i64 %call5, ptr %bnproc, align 8
  %8 = load i64, ptr %g_a.addr, align 8
  %call6 = call i64 @pnga_total_blocks(i64 noundef %8)
  store i64 %call6, ptr %num_blocks_a, align 8
  %9 = load i64, ptr %g_b.addr, align 8
  %call7 = call i64 @pnga_total_blocks(i64 noundef %9)
  store i64 %call7, ptr %num_blocks_b, align 8
  %10 = load i64, ptr %anproc, align 8
  %11 = load i64, ptr %bnproc, align 8
  %cmp = icmp sle i64 %10, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %use_put, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %use_put, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr %local_sync_begin, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then8, label %if.end20

if.then8:                                         ; preds = %if.end
  %13 = load i64, ptr %anproc, align 8
  %14 = load i64, ptr %bnproc, align 8
  %cmp9 = icmp sle i64 %13, %14
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.then8
  %15 = load i64, ptr %a_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %15)
  br label %if.end19

if.else11:                                        ; preds = %if.then8
  %16 = load i64, ptr %a_grp, align 8
  %call12 = call i64 (...) @pnga_pgroup_get_world()
  %cmp13 = icmp eq i64 %16, %call12
  br i1 %cmp13, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %if.else11
  %17 = load i64, ptr %b_grp, align 8
  %call14 = call i64 (...) @pnga_pgroup_get_world()
  %cmp15 = icmp eq i64 %17, %call14
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %land.lhs.true
  call void (...) @pnga_sync()
  br label %if.end18

if.else17:                                        ; preds = %land.lhs.true, %if.else11
  %18 = load i64, ptr %b_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %18)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %19 = load i64, ptr %g_a.addr, align 8
  %20 = load i64, ptr %g_b.addr, align 8
  %cmp21 = icmp eq i64 %19, %20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @pnga_error(ptr noundef @.str.2, i64 noundef 0)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  %21 = load i64, ptr %g_a.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %21, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay)
  %22 = load i64, ptr %g_b.addr, align 8
  %arraydecay24 = getelementptr inbounds [7 x i64], ptr %dimsb, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %22, ptr noundef %typeb, ptr noundef %ndimb, ptr noundef %arraydecay24)
  %23 = load i64, ptr %type, align 8
  %24 = load i64, ptr %typeb, align 8
  %cmp25 = icmp ne i64 %23, %24
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %25 = load i64, ptr %g_b.addr, align 8
  call void @pnga_error(ptr noundef @.str.3, i64 noundef %25)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %26 = load i64, ptr %ndim, align 8
  %27 = load i64, ptr %ndimb, align 8
  %cmp28 = icmp ne i64 %26, %27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  %28 = load i64, ptr %ndimb, align 8
  call void @pnga_error(ptr noundef @.str.4, i64 noundef %28)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %29 = load i64, ptr %i, align 8
  %30 = load i64, ptr %ndim, align 8
  %cmp31 = icmp slt i64 %29, %30
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 %31
  %32 = load i64, ptr %arrayidx, align 8
  %33 = load i64, ptr %i, align 8
  %arrayidx32 = getelementptr inbounds [7 x i64], ptr %dimsb, i64 0, i64 %33
  %34 = load i64, ptr %arrayidx32, align 8
  %cmp33 = icmp ne i64 %32, %34
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body
  %35 = load i64, ptr %i, align 8
  call void @pnga_error(ptr noundef @.str.4, i64 noundef %35)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %36 = load i64, ptr %i, align 8
  %inc = add nsw i64 %36, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %g_a.addr, align 8
  %call36 = call i64 @pnga_is_mirrored(i64 noundef %37)
  %tobool37 = icmp ne i64 %call36, 0
  br i1 %tobool37, label %land.lhs.true38, label %lor.lhs.false

land.lhs.true38:                                  ; preds = %for.end
  %38 = load i64, ptr %g_b.addr, align 8
  %call39 = call i64 @pnga_is_mirrored(i64 noundef %38)
  %tobool40 = icmp ne i64 %call39, 0
  br i1 %tobool40, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true38, %for.end
  %39 = load i64, ptr %g_a.addr, align 8
  %call41 = call i64 @pnga_is_mirrored(i64 noundef %39)
  %tobool42 = icmp ne i64 %call41, 0
  br i1 %tobool42, label %if.else70, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %lor.lhs.false
  %40 = load i64, ptr %g_b.addr, align 8
  %call44 = call i64 @pnga_is_mirrored(i64 noundef %40)
  %tobool45 = icmp ne i64 %call44, 0
  br i1 %tobool45, label %if.else70, label %if.then46

if.then46:                                        ; preds = %land.lhs.true43, %land.lhs.true38
  %41 = load i32, ptr %use_put, align 4
  %tobool47 = icmp ne i32 %41, 0
  br i1 %tobool47, label %if.then48, label %if.else57

if.then48:                                        ; preds = %if.then46
  %42 = load i64, ptr %g_a.addr, align 8
  call void @pnga_local_iterator_init(i64 noundef %42, ptr noundef %hdl)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then48
  %arraydecay49 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay50 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  %call52 = call i32 @pnga_local_iterator_next(ptr noundef %hdl, ptr noundef %arraydecay49, ptr noundef %arraydecay50, ptr noundef %ptr_a, ptr noundef %arraydecay51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i64, ptr %g_b.addr, align 8
  %arraydecay54 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %44 = load ptr, ptr %ptr_a, align 8
  %arraydecay56 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_put(i64 noundef %43, ptr noundef %arraydecay54, ptr noundef %arraydecay55, ptr noundef %44, ptr noundef %arraydecay56)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %if.end69

if.else57:                                        ; preds = %if.then46
  %45 = load i64, ptr %g_b.addr, align 8
  call void @pnga_local_iterator_init(i64 noundef %45, ptr noundef %hdl)
  br label %while.cond58

while.cond58:                                     ; preds = %while.body64, %if.else57
  %arraydecay59 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay60 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay61 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  %call62 = call i32 @pnga_local_iterator_next(ptr noundef %hdl, ptr noundef %arraydecay59, ptr noundef %arraydecay60, ptr noundef %ptr_b, ptr noundef %arraydecay61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %while.body64, label %while.end68

while.body64:                                     ; preds = %while.cond58
  %46 = load i64, ptr %g_a.addr, align 8
  %arraydecay65 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay66 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %47 = load ptr, ptr %ptr_b, align 8
  %arraydecay67 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_get(i64 noundef %46, ptr noundef %arraydecay65, ptr noundef %arraydecay66, ptr noundef %47, ptr noundef %arraydecay67)
  br label %while.cond58, !llvm.loop !9

while.end68:                                      ; preds = %while.cond58
  br label %if.end69

if.end69:                                         ; preds = %while.end68, %while.end
  br label %if.end100

if.else70:                                        ; preds = %land.lhs.true43, %lor.lhs.false
  %48 = load i64, ptr %g_a.addr, align 8
  %call71 = call i64 @pnga_is_mirrored(i64 noundef %48)
  %tobool72 = icmp ne i64 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.else86

if.then73:                                        ; preds = %if.else70
  %49 = load i64, ptr %g_b.addr, align 8
  %50 = load i64, ptr %me_b, align 8
  %arraydecay74 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay75 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %49, i64 noundef %50, ptr noundef %arraydecay74, ptr noundef %arraydecay75)
  %arrayidx76 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %51 = load i64, ptr %arrayidx76, align 16
  %cmp77 = icmp sgt i64 %51, 0
  br i1 %cmp77, label %if.then78, label %if.end85

if.then78:                                        ; preds = %if.then73
  %52 = load i64, ptr %g_b.addr, align 8
  %arraydecay79 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay80 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay81 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %52, ptr noundef %arraydecay79, ptr noundef %arraydecay80, ptr noundef %ptr_b, ptr noundef %arraydecay81)
  %53 = load i64, ptr %g_a.addr, align 8
  %arraydecay82 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay83 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %54 = load ptr, ptr %ptr_b, align 8
  %arraydecay84 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_get(i64 noundef %53, ptr noundef %arraydecay82, ptr noundef %arraydecay83, ptr noundef %54, ptr noundef %arraydecay84)
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %if.then73
  br label %if.end99

if.else86:                                        ; preds = %if.else70
  %55 = load i64, ptr %g_b.addr, align 8
  call void @pnga_zero(i64 noundef %55)
  %56 = load i64, ptr %g_a.addr, align 8
  %57 = load i64, ptr %me_a, align 8
  %arraydecay87 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay88 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %56, i64 noundef %57, ptr noundef %arraydecay87, ptr noundef %arraydecay88)
  %arrayidx89 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %58 = load i64, ptr %arrayidx89, align 16
  %cmp90 = icmp sgt i64 %58, 0
  br i1 %cmp90, label %if.then91, label %if.end98

if.then91:                                        ; preds = %if.else86
  %59 = load i64, ptr %g_a.addr, align 8
  %arraydecay92 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay93 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay94 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %59, ptr noundef %arraydecay92, ptr noundef %arraydecay93, ptr noundef %ptr_a, ptr noundef %arraydecay94)
  %60 = load i64, ptr %g_b.addr, align 8
  %arraydecay95 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay96 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %61 = load ptr, ptr %ptr_a, align 8
  %arraydecay97 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_put(i64 noundef %60, ptr noundef %arraydecay95, ptr noundef %arraydecay96, ptr noundef %61, ptr noundef %arraydecay97)
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.else86
  %62 = load i64, ptr %g_b.addr, align 8
  call void @pnga_merge_mirrored(i64 noundef %62)
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end85
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end69
  %63 = load i32, ptr %local_sync_end, align 4
  %tobool101 = icmp ne i32 %63, 0
  br i1 %tobool101, label %if.then102, label %if.end115

if.then102:                                       ; preds = %if.end100
  %64 = load i64, ptr %anproc, align 8
  %65 = load i64, ptr %bnproc, align 8
  %cmp103 = icmp sle i64 %64, %65
  br i1 %cmp103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then102
  %66 = load i64, ptr %a_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %66)
  br label %if.end114

if.else105:                                       ; preds = %if.then102
  %67 = load i64, ptr %a_grp, align 8
  %call106 = call i64 (...) @pnga_pgroup_get_world()
  %cmp107 = icmp eq i64 %67, %call106
  br i1 %cmp107, label %land.lhs.true108, label %if.else112

land.lhs.true108:                                 ; preds = %if.else105
  %68 = load i64, ptr %b_grp, align 8
  %call109 = call i64 (...) @pnga_pgroup_get_world()
  %cmp110 = icmp eq i64 %68, %call109
  br i1 %cmp110, label %if.then111, label %if.else112

if.then111:                                       ; preds = %land.lhs.true108
  call void (...) @pnga_sync()
  br label %if.end113

if.else112:                                       ; preds = %land.lhs.true108, %if.else105
  %69 = load i64, ptr %b_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %69)
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.then111
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then104
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end100
  ret void
}

declare i64 @pnga_get_pgroup_size(i64 noundef) #1

declare i64 @pnga_pgroup_get_world(...) #1

declare void @pnga_sync(...) #1

declare i64 @pnga_is_mirrored(i64 noundef) #1

declare void @pnga_local_iterator_init(i64 noundef, ptr noundef) #1

declare i32 @pnga_local_iterator_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @pnga_put(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @pnga_get(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @pnga_merge_mirrored(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_dot(i32 noundef %Type, i64 noundef %g_a, i64 noundef %g_b, ptr noundef %value) #0 {
entry:
  %Type.addr = alloca i32, align 4
  %g_a.addr = alloca i64, align 8
  %g_b.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  %ndim = alloca i64, align 8
  %type = alloca i64, align 8
  %atype = alloca i64, align 8
  %me = alloca i64, align 8
  %elems = alloca i64, align 8
  %elemsb = alloca i64, align 8
  %i = alloca i64, align 8
  %isum = alloca i32, align 4
  %lsum = alloca i64, align 8
  %llsum = alloca i64, align 8
  %zsum = alloca %struct.DoubleComplex, align 8
  %csum = alloca %struct.SingleComplex, align 4
  %fsum = alloca float, align 4
  %ptr_a = alloca ptr, align 8
  %ptr_b = alloca ptr, align 8
  %alen = alloca i32, align 4
  %a_grp = alloca i64, align 8
  %b_grp = alloca i64, align 8
  %num_blocks_a = alloca i64, align 8
  %num_blocks_b = alloca i64, align 8
  %_dims = alloca [7 x i64], align 16
  %_ld = alloca [6 x i64], align 16
  %_lo = alloca [7 x i64], align 16
  %_hi = alloca [7 x i64], align 16
  %andim = alloca i64, align 8
  %adims = alloca [7 x i64], align 16
  %bndim = alloca i64, align 8
  %bdims = alloca [7 x i64], align 16
  %_i = alloca i32, align 4
  %_i67 = alloca i32, align 4
  %_i127 = alloca i32, align 4
  %_i164 = alloca i32, align 4
  %ia = alloca ptr, align 8
  %ib = alloca ptr, align 8
  %da = alloca ptr, align 8
  %db = alloca ptr, align 8
  %fa = alloca ptr, align 8
  %fb = alloca ptr, align 8
  %la = alloca ptr, align 8
  %lb = alloca ptr, align 8
  %lla = alloca ptr, align 8
  %llb = alloca ptr, align 8
  %a = alloca %struct.DoubleComplex, align 8
  %b = alloca %struct.DoubleComplex, align 8
  %a248 = alloca %struct.SingleComplex, align 4
  %b250 = alloca %struct.SingleComplex, align 4
  store i32 %Type, ptr %Type.addr, align 4
  store i64 %g_a, ptr %g_a.addr, align 8
  store i64 %g_b, ptr %g_b.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 0, ptr %ndim, align 8
  store i64 0, ptr %type, align 8
  store i64 0, ptr %atype, align 8
  store i64 0, ptr %me, align 8
  store i64 0, ptr %elems, align 8
  store i64 0, ptr %elemsb, align 8
  store i64 0, ptr %i, align 8
  store i32 0, ptr %isum, align 4
  store i64 0, ptr %lsum, align 8
  store i64 0, ptr %llsum, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %zsum, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %csum, i8 0, i64 8, i1 false)
  store float 0.000000e+00, ptr %fsum, align 4
  store ptr null, ptr %ptr_a, align 8
  store ptr null, ptr %ptr_b, align 8
  store i32 0, ptr %alen, align 4
  store i64 0, ptr %a_grp, align 8
  store i64 0, ptr %b_grp, align 8
  store i64 0, ptr %num_blocks_a, align 8
  store i64 0, ptr %num_blocks_b, align 8
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %0 = load i64, ptr %g_a.addr, align 8
  %call = call i64 @pnga_get_pgroup(i64 noundef %0)
  store i64 %call, ptr %a_grp, align 8
  %1 = load i64, ptr %g_b.addr, align 8
  %call1 = call i64 @pnga_get_pgroup(i64 noundef %1)
  store i64 %call1, ptr %b_grp, align 8
  %2 = load i64, ptr %a_grp, align 8
  %3 = load i64, ptr %b_grp, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @pnga_error(ptr noundef @.str.5, i64 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %a_grp, align 8
  %call2 = call i64 @pnga_pgroup_nodeid(i64 noundef %4)
  store i64 %call2, ptr %me, align 8
  %5 = load i64, ptr %g_a.addr, align 8
  %call3 = call i64 @pnga_total_blocks(i64 noundef %5)
  store i64 %call3, ptr %num_blocks_a, align 8
  %6 = load i64, ptr %g_b.addr, align 8
  %call4 = call i64 @pnga_total_blocks(i64 noundef %6)
  store i64 %call4, ptr %num_blocks_b, align 8
  %7 = load i64, ptr %num_blocks_a, align 8
  %cmp5 = icmp sge i64 %7, 0
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i64, ptr %num_blocks_b, align 8
  %cmp6 = icmp sge i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i64, ptr %g_a.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %9, ptr noundef %type, ptr noundef %andim, ptr noundef %arraydecay)
  %10 = load i64, ptr %g_b.addr, align 8
  %arraydecay8 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %10, ptr noundef %type, ptr noundef %bndim, ptr noundef %arraydecay8)
  %11 = load i64, ptr %g_a.addr, align 8
  %arraydecay9 = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  %12 = load i64, ptr %g_b.addr, align 8
  %arraydecay10 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  %13 = load ptr, ptr %value.addr, align 8
  call void @pnga_dot_patch(i64 noundef %11, ptr noundef @.str.6, ptr noundef @one_arr, ptr noundef %arraydecay9, i64 noundef %12, ptr noundef @.str.6, ptr noundef @one_arr, ptr noundef %arraydecay10, ptr noundef %13)
  br label %if.end357

if.end11:                                         ; preds = %lor.lhs.false
  %14 = load i64, ptr %g_a.addr, align 8
  %15 = load i64, ptr %g_b.addr, align 8
  %call12 = call i64 @pnga_compare_distr(i64 noundef %14, i64 noundef %15)
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %if.then19, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end11
  %16 = load i64, ptr %g_a.addr, align 8
  %call15 = call i64 @pnga_has_ghosts(i64 noundef %16)
  %tobool = icmp ne i64 %call15, 0
  br i1 %tobool, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %17 = load i64, ptr %g_b.addr, align 8
  %call17 = call i64 @pnga_has_ghosts(i64 noundef %17)
  %tobool18 = icmp ne i64 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %lor.lhs.false16, %lor.lhs.false14, %if.end11
  %18 = load i64, ptr %g_a.addr, align 8
  %arraydecay20 = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %18, ptr noundef %type, ptr noundef %andim, ptr noundef %arraydecay20)
  %19 = load i64, ptr %g_b.addr, align 8
  %arraydecay21 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %19, ptr noundef %type, ptr noundef %bndim, ptr noundef %arraydecay21)
  %20 = load i64, ptr %g_a.addr, align 8
  %arraydecay22 = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  %21 = load i64, ptr %g_b.addr, align 8
  %arraydecay23 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  %22 = load ptr, ptr %value.addr, align 8
  call void @pnga_dot_patch(i64 noundef %20, ptr noundef @.str.6, ptr noundef @one_arr, ptr noundef %arraydecay22, i64 noundef %21, ptr noundef @.str.6, ptr noundef @one_arr, ptr noundef %arraydecay23, ptr noundef %22)
  br label %if.end357

if.end24:                                         ; preds = %lor.lhs.false16
  %23 = load i64, ptr %a_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %23)
  %24 = load i64, ptr %g_a.addr, align 8
  %arraydecay25 = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %24, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay25)
  %25 = load i64, ptr %type, align 8
  %26 = load i32, ptr %Type.addr, align 4
  %conv = sext i32 %26 to i64
  %cmp26 = icmp ne i64 %25, %conv
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %27 = load i64, ptr %g_a.addr, align 8
  call void @pnga_error(ptr noundef @.str.7, i64 noundef %27)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24
  %28 = load i64, ptr %g_a.addr, align 8
  %29 = load i64, ptr %me, align 8
  %arraydecay30 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %28, i64 noundef %29, ptr noundef %arraydecay30, ptr noundef %arraydecay31)
  %arrayidx = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %30 = load i64, ptr %arrayidx, align 16
  %cmp32 = icmp sgt i64 %30, 0
  br i1 %cmp32, label %if.then34, label %if.end104

if.then34:                                        ; preds = %if.end29
  %31 = load i64, ptr %g_a.addr, align 8
  %arraydecay35 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %31, ptr noundef %arraydecay35, ptr noundef %arraydecay36, ptr noundef %ptr_a, ptr noundef %arraydecay37)
  %32 = load i64, ptr %g_a.addr, align 8
  %call38 = call i64 @pnga_has_ghosts(i64 noundef %32)
  %tobool39 = icmp ne i64 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then34
  store i32 0, ptr %_i, align 4
  %33 = load i64, ptr %ndim, align 8
  %sub = sub nsw i64 %33, 1
  %arrayidx41 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub
  %34 = load i64, ptr %arrayidx41, align 8
  %35 = load i64, ptr %ndim, align 8
  %sub42 = sub nsw i64 %35, 1
  %arrayidx43 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub42
  %36 = load i64, ptr %arrayidx43, align 8
  %sub44 = sub nsw i64 %34, %36
  %add = add nsw i64 %sub44, 1
  store i64 %add, ptr %elems, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then40
  %37 = load i32, ptr %_i, align 4
  %conv45 = sext i32 %37 to i64
  %38 = load i64, ptr %ndim, align 8
  %sub46 = sub nsw i64 %38, 1
  %cmp47 = icmp slt i64 %conv45, %sub46
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, ptr %_i, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom
  %40 = load i64, ptr %arrayidx49, align 8
  %41 = load i32, ptr %_i, align 4
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom50
  %42 = load i64, ptr %arrayidx51, align 8
  %43 = load i32, ptr %_i, align 4
  %idxprom52 = sext i32 %43 to i64
  %arrayidx53 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom52
  %44 = load i64, ptr %arrayidx53, align 8
  %sub54 = sub nsw i64 %42, %44
  %add55 = add nsw i64 %sub54, 1
  %cmp56 = icmp slt i64 %40, %add55
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %for.body
  %45 = load i32, ptr %_i, align 4
  %conv59 = sext i32 %45 to i64
  call void @pnga_error(ptr noundef @.str.8, i64 noundef %conv59)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %for.body
  %46 = load i32, ptr %_i, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom61
  %47 = load i64, ptr %arrayidx62, align 8
  %48 = load i32, ptr %_i, align 4
  %idxprom63 = sext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom63
  %49 = load i64, ptr %arrayidx64, align 8
  %sub65 = sub nsw i64 %47, %49
  %add66 = add nsw i64 %sub65, 1
  %50 = load i64, ptr %elems, align 8
  %mul = mul nsw i64 %50, %add66
  store i64 %mul, ptr %elems, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end60
  %51 = load i32, ptr %_i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %_i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end103

if.else:                                          ; preds = %if.then34
  store i32 0, ptr %_i67, align 4
  %52 = load i64, ptr %ndim, align 8
  %sub68 = sub nsw i64 %52, 1
  %arrayidx69 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub68
  %53 = load i64, ptr %arrayidx69, align 8
  %54 = load i64, ptr %ndim, align 8
  %sub70 = sub nsw i64 %54, 1
  %arrayidx71 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub70
  %55 = load i64, ptr %arrayidx71, align 8
  %sub72 = sub nsw i64 %53, %55
  %add73 = add nsw i64 %sub72, 1
  store i64 %add73, ptr %elems, align 8
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc100, %if.else
  %56 = load i32, ptr %_i67, align 4
  %conv75 = sext i32 %56 to i64
  %57 = load i64, ptr %ndim, align 8
  %sub76 = sub nsw i64 %57, 1
  %cmp77 = icmp slt i64 %conv75, %sub76
  br i1 %cmp77, label %for.body79, label %for.end102

for.body79:                                       ; preds = %for.cond74
  %58 = load i32, ptr %_i67, align 4
  %idxprom80 = sext i32 %58 to i64
  %arrayidx81 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom80
  %59 = load i64, ptr %arrayidx81, align 8
  %60 = load i32, ptr %_i67, align 4
  %idxprom82 = sext i32 %60 to i64
  %arrayidx83 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom82
  %61 = load i64, ptr %arrayidx83, align 8
  %62 = load i32, ptr %_i67, align 4
  %idxprom84 = sext i32 %62 to i64
  %arrayidx85 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom84
  %63 = load i64, ptr %arrayidx85, align 8
  %sub86 = sub nsw i64 %61, %63
  %add87 = add nsw i64 %sub86, 1
  %cmp88 = icmp ne i64 %59, %add87
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %for.body79
  %64 = load i32, ptr %_i67, align 4
  %conv91 = sext i32 %64 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv91)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %for.body79
  %65 = load i32, ptr %_i67, align 4
  %idxprom93 = sext i32 %65 to i64
  %arrayidx94 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom93
  %66 = load i64, ptr %arrayidx94, align 8
  %67 = load i32, ptr %_i67, align 4
  %idxprom95 = sext i32 %67 to i64
  %arrayidx96 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom95
  %68 = load i64, ptr %arrayidx96, align 8
  %sub97 = sub nsw i64 %66, %68
  %add98 = add nsw i64 %sub97, 1
  %69 = load i64, ptr %elems, align 8
  %mul99 = mul nsw i64 %69, %add98
  store i64 %mul99, ptr %elems, align 8
  br label %for.inc100

for.inc100:                                       ; preds = %if.end92
  %70 = load i32, ptr %_i67, align 4
  %inc101 = add nsw i32 %70, 1
  store i32 %inc101, ptr %_i67, align 4
  br label %for.cond74, !llvm.loop !11

for.end102:                                       ; preds = %for.cond74
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %for.end
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end29
  %71 = load i64, ptr %g_a.addr, align 8
  %72 = load i64, ptr %g_b.addr, align 8
  %cmp105 = icmp eq i64 %71, %72
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.end104
  %73 = load i64, ptr %elems, align 8
  store i64 %73, ptr %elemsb, align 8
  %74 = load ptr, ptr %ptr_a, align 8
  store ptr %74, ptr %ptr_b, align 8
  br label %if.end202

if.else108:                                       ; preds = %if.end104
  %75 = load i64, ptr %g_b.addr, align 8
  %arraydecay109 = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %75, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay109)
  %76 = load i64, ptr %type, align 8
  %77 = load i32, ptr %Type.addr, align 4
  %conv110 = sext i32 %77 to i64
  %cmp111 = icmp ne i64 %76, %conv110
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.else108
  %78 = load i64, ptr %g_b.addr, align 8
  call void @pnga_error(ptr noundef @.str.7, i64 noundef %78)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.else108
  %79 = load i64, ptr %g_b.addr, align 8
  %80 = load i64, ptr %me, align 8
  %arraydecay115 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay116 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %79, i64 noundef %80, ptr noundef %arraydecay115, ptr noundef %arraydecay116)
  %arrayidx117 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %81 = load i64, ptr %arrayidx117, align 16
  %cmp118 = icmp sgt i64 %81, 0
  br i1 %cmp118, label %if.then120, label %if.end201

if.then120:                                       ; preds = %if.end114
  %82 = load i64, ptr %g_b.addr, align 8
  %arraydecay121 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay122 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay123 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %82, ptr noundef %arraydecay121, ptr noundef %arraydecay122, ptr noundef %ptr_b, ptr noundef %arraydecay123)
  %83 = load i64, ptr %g_b.addr, align 8
  %call124 = call i64 @pnga_has_ghosts(i64 noundef %83)
  %tobool125 = icmp ne i64 %call124, 0
  br i1 %tobool125, label %if.then126, label %if.else163

if.then126:                                       ; preds = %if.then120
  store i32 0, ptr %_i127, align 4
  %84 = load i64, ptr %ndim, align 8
  %sub128 = sub nsw i64 %84, 1
  %arrayidx129 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub128
  %85 = load i64, ptr %arrayidx129, align 8
  %86 = load i64, ptr %ndim, align 8
  %sub130 = sub nsw i64 %86, 1
  %arrayidx131 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub130
  %87 = load i64, ptr %arrayidx131, align 8
  %sub132 = sub nsw i64 %85, %87
  %add133 = add nsw i64 %sub132, 1
  store i64 %add133, ptr %elemsb, align 8
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc160, %if.then126
  %88 = load i32, ptr %_i127, align 4
  %conv135 = sext i32 %88 to i64
  %89 = load i64, ptr %ndim, align 8
  %sub136 = sub nsw i64 %89, 1
  %cmp137 = icmp slt i64 %conv135, %sub136
  br i1 %cmp137, label %for.body139, label %for.end162

for.body139:                                      ; preds = %for.cond134
  %90 = load i32, ptr %_i127, align 4
  %idxprom140 = sext i32 %90 to i64
  %arrayidx141 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom140
  %91 = load i64, ptr %arrayidx141, align 8
  %92 = load i32, ptr %_i127, align 4
  %idxprom142 = sext i32 %92 to i64
  %arrayidx143 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom142
  %93 = load i64, ptr %arrayidx143, align 8
  %94 = load i32, ptr %_i127, align 4
  %idxprom144 = sext i32 %94 to i64
  %arrayidx145 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom144
  %95 = load i64, ptr %arrayidx145, align 8
  %sub146 = sub nsw i64 %93, %95
  %add147 = add nsw i64 %sub146, 1
  %cmp148 = icmp slt i64 %91, %add147
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %for.body139
  %96 = load i32, ptr %_i127, align 4
  %conv151 = sext i32 %96 to i64
  call void @pnga_error(ptr noundef @.str.8, i64 noundef %conv151)
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %for.body139
  %97 = load i32, ptr %_i127, align 4
  %idxprom153 = sext i32 %97 to i64
  %arrayidx154 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom153
  %98 = load i64, ptr %arrayidx154, align 8
  %99 = load i32, ptr %_i127, align 4
  %idxprom155 = sext i32 %99 to i64
  %arrayidx156 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom155
  %100 = load i64, ptr %arrayidx156, align 8
  %sub157 = sub nsw i64 %98, %100
  %add158 = add nsw i64 %sub157, 1
  %101 = load i64, ptr %elemsb, align 8
  %mul159 = mul nsw i64 %101, %add158
  store i64 %mul159, ptr %elemsb, align 8
  br label %for.inc160

for.inc160:                                       ; preds = %if.end152
  %102 = load i32, ptr %_i127, align 4
  %inc161 = add nsw i32 %102, 1
  store i32 %inc161, ptr %_i127, align 4
  br label %for.cond134, !llvm.loop !12

for.end162:                                       ; preds = %for.cond134
  br label %if.end200

if.else163:                                       ; preds = %if.then120
  store i32 0, ptr %_i164, align 4
  %103 = load i64, ptr %ndim, align 8
  %sub165 = sub nsw i64 %103, 1
  %arrayidx166 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub165
  %104 = load i64, ptr %arrayidx166, align 8
  %105 = load i64, ptr %ndim, align 8
  %sub167 = sub nsw i64 %105, 1
  %arrayidx168 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub167
  %106 = load i64, ptr %arrayidx168, align 8
  %sub169 = sub nsw i64 %104, %106
  %add170 = add nsw i64 %sub169, 1
  store i64 %add170, ptr %elemsb, align 8
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc197, %if.else163
  %107 = load i32, ptr %_i164, align 4
  %conv172 = sext i32 %107 to i64
  %108 = load i64, ptr %ndim, align 8
  %sub173 = sub nsw i64 %108, 1
  %cmp174 = icmp slt i64 %conv172, %sub173
  br i1 %cmp174, label %for.body176, label %for.end199

for.body176:                                      ; preds = %for.cond171
  %109 = load i32, ptr %_i164, align 4
  %idxprom177 = sext i32 %109 to i64
  %arrayidx178 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom177
  %110 = load i64, ptr %arrayidx178, align 8
  %111 = load i32, ptr %_i164, align 4
  %idxprom179 = sext i32 %111 to i64
  %arrayidx180 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom179
  %112 = load i64, ptr %arrayidx180, align 8
  %113 = load i32, ptr %_i164, align 4
  %idxprom181 = sext i32 %113 to i64
  %arrayidx182 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom181
  %114 = load i64, ptr %arrayidx182, align 8
  %sub183 = sub nsw i64 %112, %114
  %add184 = add nsw i64 %sub183, 1
  %cmp185 = icmp ne i64 %110, %add184
  br i1 %cmp185, label %if.then187, label %if.end189

if.then187:                                       ; preds = %for.body176
  %115 = load i32, ptr %_i164, align 4
  %conv188 = sext i32 %115 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv188)
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %for.body176
  %116 = load i32, ptr %_i164, align 4
  %idxprom190 = sext i32 %116 to i64
  %arrayidx191 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom190
  %117 = load i64, ptr %arrayidx191, align 8
  %118 = load i32, ptr %_i164, align 4
  %idxprom192 = sext i32 %118 to i64
  %arrayidx193 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom192
  %119 = load i64, ptr %arrayidx193, align 8
  %sub194 = sub nsw i64 %117, %119
  %add195 = add nsw i64 %sub194, 1
  %120 = load i64, ptr %elemsb, align 8
  %mul196 = mul nsw i64 %120, %add195
  store i64 %mul196, ptr %elemsb, align 8
  br label %for.inc197

for.inc197:                                       ; preds = %if.end189
  %121 = load i32, ptr %_i164, align 4
  %inc198 = add nsw i32 %121, 1
  store i32 %inc198, ptr %_i164, align 4
  br label %for.cond171, !llvm.loop !13

for.end199:                                       ; preds = %for.cond171
  br label %if.end200

if.end200:                                        ; preds = %for.end199, %for.end162
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end114
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %if.then107
  %122 = load i64, ptr %elems, align 8
  %123 = load i64, ptr %elemsb, align 8
  %cmp203 = icmp ne i64 %122, %123
  br i1 %cmp203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %if.end202
  %124 = load i64, ptr %elems, align 8
  %125 = load i64, ptr %elemsb, align 8
  %sub206 = sub nsw i64 %124, %125
  call void @pnga_error(ptr noundef @.str.9, i64 noundef %sub206)
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end202
  %126 = load i64, ptr %type, align 8
  switch i64 %126, label %sw.default [
    i64 1001, label %sw.bb
    i64 1007, label %sw.bb219
    i64 1006, label %sw.bb243
    i64 1004, label %sw.bb272
    i64 1003, label %sw.bb285
    i64 1002, label %sw.bb296
    i64 1016, label %sw.bb308
  ]

sw.bb:                                            ; preds = %if.end207
  %127 = load ptr, ptr %ptr_a, align 8
  store ptr %127, ptr %ia, align 8
  %128 = load ptr, ptr %ptr_b, align 8
  store ptr %128, ptr %ib, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond208

for.cond208:                                      ; preds = %for.inc216, %sw.bb
  %129 = load i64, ptr %i, align 8
  %130 = load i64, ptr %elems, align 8
  %cmp209 = icmp slt i64 %129, %130
  br i1 %cmp209, label %for.body211, label %for.end218

for.body211:                                      ; preds = %for.cond208
  %131 = load ptr, ptr %ia, align 8
  %132 = load i64, ptr %i, align 8
  %arrayidx212 = getelementptr inbounds i32, ptr %131, i64 %132
  %133 = load i32, ptr %arrayidx212, align 4
  %134 = load ptr, ptr %ib, align 8
  %135 = load i64, ptr %i, align 8
  %arrayidx213 = getelementptr inbounds i32, ptr %134, i64 %135
  %136 = load i32, ptr %arrayidx213, align 4
  %mul214 = mul nsw i32 %133, %136
  %137 = load i32, ptr %isum, align 4
  %add215 = add nsw i32 %137, %mul214
  store i32 %add215, ptr %isum, align 4
  br label %for.inc216

for.inc216:                                       ; preds = %for.body211
  %138 = load i64, ptr %i, align 8
  %inc217 = add nsw i64 %138, 1
  store i64 %inc217, ptr %i, align 8
  br label %for.cond208, !llvm.loop !14

for.end218:                                       ; preds = %for.cond208
  %139 = load i32, ptr %isum, align 4
  %140 = load ptr, ptr %value.addr, align 8
  store i32 %139, ptr %140, align 4
  store i64 1001, ptr %type, align 8
  store i32 1, ptr %alen, align 4
  br label %sw.epilog

sw.bb219:                                         ; preds = %if.end207
  store i64 0, ptr %i, align 8
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc240, %sw.bb219
  %141 = load i64, ptr %i, align 8
  %142 = load i64, ptr %elems, align 8
  %cmp221 = icmp slt i64 %141, %142
  br i1 %cmp221, label %for.body223, label %for.end242

for.body223:                                      ; preds = %for.cond220
  %143 = load ptr, ptr %ptr_a, align 8
  %144 = load i64, ptr %i, align 8
  %arrayidx224 = getelementptr inbounds %struct.DoubleComplex, ptr %143, i64 %144
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %a, ptr align 8 %arrayidx224, i64 16, i1 false)
  %145 = load ptr, ptr %ptr_b, align 8
  %146 = load i64, ptr %i, align 8
  %arrayidx225 = getelementptr inbounds %struct.DoubleComplex, ptr %145, i64 %146
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %b, ptr align 8 %arrayidx225, i64 16, i1 false)
  %real = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 0
  %147 = load double, ptr %real, align 8
  %real226 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 0
  %148 = load double, ptr %real226, align 8
  %imag = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 1
  %149 = load double, ptr %imag, align 8
  %imag228 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 1
  %150 = load double, ptr %imag228, align 8
  %mul229 = fmul double %149, %150
  %neg = fneg double %mul229
  %151 = call double @llvm.fmuladd.f64(double %147, double %148, double %neg)
  %real230 = getelementptr inbounds %struct.DoubleComplex, ptr %zsum, i32 0, i32 0
  %152 = load double, ptr %real230, align 8
  %add231 = fadd double %152, %151
  store double %add231, ptr %real230, align 8
  %imag232 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 1
  %153 = load double, ptr %imag232, align 8
  %real233 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 0
  %154 = load double, ptr %real233, align 8
  %imag235 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 1
  %155 = load double, ptr %imag235, align 8
  %real236 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 0
  %156 = load double, ptr %real236, align 8
  %mul237 = fmul double %155, %156
  %157 = call double @llvm.fmuladd.f64(double %153, double %154, double %mul237)
  %imag238 = getelementptr inbounds %struct.DoubleComplex, ptr %zsum, i32 0, i32 1
  %158 = load double, ptr %imag238, align 8
  %add239 = fadd double %158, %157
  store double %add239, ptr %imag238, align 8
  br label %for.inc240

for.inc240:                                       ; preds = %for.body223
  %159 = load i64, ptr %i, align 8
  %inc241 = add nsw i64 %159, 1
  store i64 %inc241, ptr %i, align 8
  br label %for.cond220, !llvm.loop !15

for.end242:                                       ; preds = %for.cond220
  %160 = load ptr, ptr %value.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %160, ptr align 8 %zsum, i64 16, i1 false)
  store i64 1007, ptr %type, align 8
  store i32 2, ptr %alen, align 4
  br label %sw.epilog

sw.bb243:                                         ; preds = %if.end207
  store i64 0, ptr %i, align 8
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc269, %sw.bb243
  %161 = load i64, ptr %i, align 8
  %162 = load i64, ptr %elems, align 8
  %cmp245 = icmp slt i64 %161, %162
  br i1 %cmp245, label %for.body247, label %for.end271

for.body247:                                      ; preds = %for.cond244
  %163 = load ptr, ptr %ptr_a, align 8
  %164 = load i64, ptr %i, align 8
  %arrayidx249 = getelementptr inbounds %struct.SingleComplex, ptr %163, i64 %164
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a248, ptr align 4 %arrayidx249, i64 8, i1 false)
  %165 = load ptr, ptr %ptr_b, align 8
  %166 = load i64, ptr %i, align 8
  %arrayidx251 = getelementptr inbounds %struct.SingleComplex, ptr %165, i64 %166
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b250, ptr align 4 %arrayidx251, i64 8, i1 false)
  %real252 = getelementptr inbounds %struct.SingleComplex, ptr %a248, i32 0, i32 0
  %167 = load float, ptr %real252, align 4
  %real253 = getelementptr inbounds %struct.SingleComplex, ptr %b250, i32 0, i32 0
  %168 = load float, ptr %real253, align 4
  %imag255 = getelementptr inbounds %struct.SingleComplex, ptr %b250, i32 0, i32 1
  %169 = load float, ptr %imag255, align 4
  %imag256 = getelementptr inbounds %struct.SingleComplex, ptr %a248, i32 0, i32 1
  %170 = load float, ptr %imag256, align 4
  %mul257 = fmul float %169, %170
  %neg258 = fneg float %mul257
  %171 = call float @llvm.fmuladd.f32(float %167, float %168, float %neg258)
  %real259 = getelementptr inbounds %struct.SingleComplex, ptr %csum, i32 0, i32 0
  %172 = load float, ptr %real259, align 4
  %add260 = fadd float %172, %171
  store float %add260, ptr %real259, align 4
  %imag261 = getelementptr inbounds %struct.SingleComplex, ptr %a248, i32 0, i32 1
  %173 = load float, ptr %imag261, align 4
  %real262 = getelementptr inbounds %struct.SingleComplex, ptr %b250, i32 0, i32 0
  %174 = load float, ptr %real262, align 4
  %imag264 = getelementptr inbounds %struct.SingleComplex, ptr %b250, i32 0, i32 1
  %175 = load float, ptr %imag264, align 4
  %real265 = getelementptr inbounds %struct.SingleComplex, ptr %a248, i32 0, i32 0
  %176 = load float, ptr %real265, align 4
  %mul266 = fmul float %175, %176
  %177 = call float @llvm.fmuladd.f32(float %173, float %174, float %mul266)
  %imag267 = getelementptr inbounds %struct.SingleComplex, ptr %csum, i32 0, i32 1
  %178 = load float, ptr %imag267, align 4
  %add268 = fadd float %178, %177
  store float %add268, ptr %imag267, align 4
  br label %for.inc269

for.inc269:                                       ; preds = %for.body247
  %179 = load i64, ptr %i, align 8
  %inc270 = add nsw i64 %179, 1
  store i64 %inc270, ptr %i, align 8
  br label %for.cond244, !llvm.loop !16

for.end271:                                       ; preds = %for.cond244
  %180 = load ptr, ptr %value.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %180, ptr align 4 %csum, i64 8, i1 false)
  store i64 1006, ptr %type, align 8
  store i32 2, ptr %alen, align 4
  br label %sw.epilog

sw.bb272:                                         ; preds = %if.end207
  %181 = load ptr, ptr %ptr_a, align 8
  store ptr %181, ptr %da, align 8
  %182 = load ptr, ptr %ptr_b, align 8
  store ptr %182, ptr %db, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond273

for.cond273:                                      ; preds = %for.inc281, %sw.bb272
  %183 = load i64, ptr %i, align 8
  %184 = load i64, ptr %elems, align 8
  %cmp274 = icmp slt i64 %183, %184
  br i1 %cmp274, label %for.body276, label %for.end283

for.body276:                                      ; preds = %for.cond273
  %185 = load ptr, ptr %da, align 8
  %186 = load i64, ptr %i, align 8
  %arrayidx277 = getelementptr inbounds double, ptr %185, i64 %186
  %187 = load double, ptr %arrayidx277, align 8
  %188 = load ptr, ptr %db, align 8
  %189 = load i64, ptr %i, align 8
  %arrayidx278 = getelementptr inbounds double, ptr %188, i64 %189
  %190 = load double, ptr %arrayidx278, align 8
  %real280 = getelementptr inbounds %struct.DoubleComplex, ptr %zsum, i32 0, i32 0
  %191 = load double, ptr %real280, align 8
  %192 = call double @llvm.fmuladd.f64(double %187, double %190, double %191)
  store double %192, ptr %real280, align 8
  br label %for.inc281

for.inc281:                                       ; preds = %for.body276
  %193 = load i64, ptr %i, align 8
  %inc282 = add nsw i64 %193, 1
  store i64 %inc282, ptr %i, align 8
  br label %for.cond273, !llvm.loop !17

for.end283:                                       ; preds = %for.cond273
  %real284 = getelementptr inbounds %struct.DoubleComplex, ptr %zsum, i32 0, i32 0
  %194 = load double, ptr %real284, align 8
  %195 = load ptr, ptr %value.addr, align 8
  store double %194, ptr %195, align 8
  store i64 1004, ptr %type, align 8
  store i32 1, ptr %alen, align 4
  br label %sw.epilog

sw.bb285:                                         ; preds = %if.end207
  %196 = load ptr, ptr %ptr_a, align 8
  store ptr %196, ptr %fa, align 8
  %197 = load ptr, ptr %ptr_b, align 8
  store ptr %197, ptr %fb, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond286

for.cond286:                                      ; preds = %for.inc293, %sw.bb285
  %198 = load i64, ptr %i, align 8
  %199 = load i64, ptr %elems, align 8
  %cmp287 = icmp slt i64 %198, %199
  br i1 %cmp287, label %for.body289, label %for.end295

for.body289:                                      ; preds = %for.cond286
  %200 = load ptr, ptr %fa, align 8
  %201 = load i64, ptr %i, align 8
  %arrayidx290 = getelementptr inbounds float, ptr %200, i64 %201
  %202 = load float, ptr %arrayidx290, align 4
  %203 = load ptr, ptr %fb, align 8
  %204 = load i64, ptr %i, align 8
  %arrayidx291 = getelementptr inbounds float, ptr %203, i64 %204
  %205 = load float, ptr %arrayidx291, align 4
  %206 = load float, ptr %fsum, align 4
  %207 = call float @llvm.fmuladd.f32(float %202, float %205, float %206)
  store float %207, ptr %fsum, align 4
  br label %for.inc293

for.inc293:                                       ; preds = %for.body289
  %208 = load i64, ptr %i, align 8
  %inc294 = add nsw i64 %208, 1
  store i64 %inc294, ptr %i, align 8
  br label %for.cond286, !llvm.loop !18

for.end295:                                       ; preds = %for.cond286
  %209 = load float, ptr %fsum, align 4
  %210 = load ptr, ptr %value.addr, align 8
  store float %209, ptr %210, align 4
  store i64 1003, ptr %type, align 8
  store i32 1, ptr %alen, align 4
  br label %sw.epilog

sw.bb296:                                         ; preds = %if.end207
  %211 = load ptr, ptr %ptr_a, align 8
  store ptr %211, ptr %la, align 8
  %212 = load ptr, ptr %ptr_b, align 8
  store ptr %212, ptr %lb, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond297

for.cond297:                                      ; preds = %for.inc305, %sw.bb296
  %213 = load i64, ptr %i, align 8
  %214 = load i64, ptr %elems, align 8
  %cmp298 = icmp slt i64 %213, %214
  br i1 %cmp298, label %for.body300, label %for.end307

for.body300:                                      ; preds = %for.cond297
  %215 = load ptr, ptr %la, align 8
  %216 = load i64, ptr %i, align 8
  %arrayidx301 = getelementptr inbounds i64, ptr %215, i64 %216
  %217 = load i64, ptr %arrayidx301, align 8
  %218 = load ptr, ptr %lb, align 8
  %219 = load i64, ptr %i, align 8
  %arrayidx302 = getelementptr inbounds i64, ptr %218, i64 %219
  %220 = load i64, ptr %arrayidx302, align 8
  %mul303 = mul nsw i64 %217, %220
  %221 = load i64, ptr %lsum, align 8
  %add304 = add nsw i64 %221, %mul303
  store i64 %add304, ptr %lsum, align 8
  br label %for.inc305

for.inc305:                                       ; preds = %for.body300
  %222 = load i64, ptr %i, align 8
  %inc306 = add nsw i64 %222, 1
  store i64 %inc306, ptr %i, align 8
  br label %for.cond297, !llvm.loop !19

for.end307:                                       ; preds = %for.cond297
  %223 = load i64, ptr %lsum, align 8
  %224 = load ptr, ptr %value.addr, align 8
  store i64 %223, ptr %224, align 8
  store i64 1002, ptr %type, align 8
  store i32 1, ptr %alen, align 4
  br label %sw.epilog

sw.bb308:                                         ; preds = %if.end207
  %225 = load ptr, ptr %ptr_a, align 8
  store ptr %225, ptr %lla, align 8
  %226 = load ptr, ptr %ptr_b, align 8
  store ptr %226, ptr %llb, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc317, %sw.bb308
  %227 = load i64, ptr %i, align 8
  %228 = load i64, ptr %elems, align 8
  %cmp310 = icmp slt i64 %227, %228
  br i1 %cmp310, label %for.body312, label %for.end319

for.body312:                                      ; preds = %for.cond309
  %229 = load ptr, ptr %lla, align 8
  %230 = load i64, ptr %i, align 8
  %arrayidx313 = getelementptr inbounds i64, ptr %229, i64 %230
  %231 = load i64, ptr %arrayidx313, align 8
  %232 = load ptr, ptr %llb, align 8
  %233 = load i64, ptr %i, align 8
  %arrayidx314 = getelementptr inbounds i64, ptr %232, i64 %233
  %234 = load i64, ptr %arrayidx314, align 8
  %mul315 = mul nsw i64 %231, %234
  %235 = load i64, ptr %llsum, align 8
  %add316 = add nsw i64 %235, %mul315
  store i64 %add316, ptr %llsum, align 8
  br label %for.inc317

for.inc317:                                       ; preds = %for.body312
  %236 = load i64, ptr %i, align 8
  %inc318 = add nsw i64 %236, 1
  store i64 %inc318, ptr %i, align 8
  br label %for.cond309, !llvm.loop !20

for.end319:                                       ; preds = %for.cond309
  %237 = load i64, ptr %llsum, align 8
  %238 = load ptr, ptr %value.addr, align 8
  store i64 %237, ptr %238, align 8
  store i64 1016, ptr %type, align 8
  store i32 1, ptr %alen, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end207
  %239 = load i64, ptr %type, align 8
  call void @pnga_error(ptr noundef @.str.10, i64 noundef %239)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end319, %for.end307, %for.end295, %for.end283, %for.end271, %for.end242, %for.end218
  %240 = load i64, ptr %elems, align 8
  %cmp320 = icmp sgt i64 %240, 0
  br i1 %cmp320, label %if.then322, label %if.end331

if.then322:                                       ; preds = %sw.epilog
  %241 = load i64, ptr %g_a.addr, align 8
  %arraydecay323 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay324 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release(i64 noundef %241, ptr noundef %arraydecay323, ptr noundef %arraydecay324)
  %242 = load i64, ptr %g_a.addr, align 8
  %243 = load i64, ptr %g_b.addr, align 8
  %cmp325 = icmp ne i64 %242, %243
  br i1 %cmp325, label %if.then327, label %if.end330

if.then327:                                       ; preds = %if.then322
  %244 = load i64, ptr %g_b.addr, align 8
  %arraydecay328 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay329 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release(i64 noundef %244, ptr noundef %arraydecay328, ptr noundef %arraydecay329)
  br label %if.end330

if.end330:                                        ; preds = %if.then327, %if.then322
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %sw.epilog
  %245 = load i64, ptr %type, align 8
  switch i64 %245, label %sw.default339 [
    i64 1003, label %sw.bb332
    i64 1004, label %sw.bb333
    i64 1001, label %sw.bb334
    i64 1002, label %sw.bb335
    i64 1016, label %sw.bb336
    i64 1007, label %sw.bb337
    i64 1006, label %sw.bb338
  ]

sw.bb332:                                         ; preds = %if.end331
  store i64 -306, ptr %atype, align 8
  br label %sw.epilog340

sw.bb333:                                         ; preds = %if.end331
  store i64 -307, ptr %atype, align 8
  br label %sw.epilog340

sw.bb334:                                         ; preds = %if.end331
  store i64 -99, ptr %atype, align 8
  br label %sw.epilog340

sw.bb335:                                         ; preds = %if.end331
  store i64 -101, ptr %atype, align 8
  br label %sw.epilog340

sw.bb336:                                         ; preds = %if.end331
  store i64 -102, ptr %atype, align 8
  br label %sw.epilog340

sw.bb337:                                         ; preds = %if.end331
  store i64 -307, ptr %atype, align 8
  br label %sw.epilog340

sw.bb338:                                         ; preds = %if.end331
  store i64 -306, ptr %atype, align 8
  br label %sw.epilog340

sw.default339:                                    ; preds = %if.end331
  %246 = load i64, ptr %type, align 8
  call void @pnga_error(ptr noundef @.str.11, i64 noundef %246)
  br label %sw.epilog340

sw.epilog340:                                     ; preds = %sw.default339, %sw.bb338, %sw.bb337, %sw.bb336, %sw.bb335, %sw.bb334, %sw.bb333, %sw.bb332
  %247 = load i64, ptr %g_a.addr, align 8
  %call341 = call i64 @pnga_is_mirrored(i64 noundef %247)
  %tobool342 = icmp ne i64 %call341, 0
  br i1 %tobool342, label %land.lhs.true, label %if.else347

land.lhs.true:                                    ; preds = %sw.epilog340
  %248 = load i64, ptr %g_b.addr, align 8
  %call343 = call i64 @pnga_is_mirrored(i64 noundef %248)
  %tobool344 = icmp ne i64 %call343, 0
  br i1 %tobool344, label %if.then345, label %if.else347

if.then345:                                       ; preds = %land.lhs.true
  %249 = load ptr, ptr %value.addr, align 8
  %250 = load i32, ptr %alen, align 4
  %251 = load i64, ptr %atype, align 8
  %conv346 = trunc i64 %251 to i32
  call void @armci_msg_gop_scope(i32 noundef 337, ptr noundef %249, i32 noundef %250, ptr noundef @.str.12, i32 noundef %conv346)
  br label %if.end357

if.else347:                                       ; preds = %land.lhs.true, %sw.epilog340
  %252 = load i64, ptr %a_grp, align 8
  %cmp348 = icmp eq i64 %252, -1
  br i1 %cmp348, label %if.then350, label %if.else352

if.then350:                                       ; preds = %if.else347
  %253 = load ptr, ptr %value.addr, align 8
  %254 = load i32, ptr %alen, align 4
  %255 = load i64, ptr %atype, align 8
  %conv351 = trunc i64 %255 to i32
  call void @armci_msg_gop_scope(i32 noundef 333, ptr noundef %253, i32 noundef %254, ptr noundef @.str.12, i32 noundef %conv351)
  br label %if.end356

if.else352:                                       ; preds = %if.else347
  %256 = load ptr, ptr %value.addr, align 8
  %257 = load i32, ptr %alen, align 4
  %258 = load i64, ptr %atype, align 8
  %conv353 = trunc i64 %258 to i32
  %259 = load i64, ptr %a_grp, align 8
  %conv354 = trunc i64 %259 to i32
  %call355 = call ptr @ga_get_armci_group_(i32 noundef %conv354)
  call void @armci_msg_group_gop_scope(i32 noundef 333, ptr noundef %256, i32 noundef %257, ptr noundef @.str.12, i32 noundef %conv353, ptr noundef %call355)
  br label %if.end356

if.end356:                                        ; preds = %if.else352, %if.then350
  br label %if.end357

if.end357:                                        ; preds = %if.then7, %if.then19, %if.end356, %if.then345
  ret void
}

declare void @pnga_dot_patch(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @pnga_compare_distr(i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @pnga_release(i64 noundef, ptr noundef, ptr noundef) #1

declare void @armci_msg_gop_scope(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @armci_msg_group_gop_scope(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @ga_get_armci_group_(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_scale(i64 noundef %g_a, ptr noundef %alpha) #0 {
entry:
  %g_a.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %ndim = alloca i64, align 8
  %type = alloca i64, align 8
  %me = alloca i64, align 8
  %elems = alloca i64, align 8
  %grp_id = alloca i64, align 8
  %i = alloca i64, align 8
  %num_blocks = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %local_sync_begin = alloca i32, align 4
  %local_sync_end = alloca i32, align 4
  %_dims = alloca [7 x i64], align 16
  %_ld = alloca [6 x i64], align 16
  %_lo = alloca [7 x i64], align 16
  %_hi = alloca [7 x i64], align 16
  %_i = alloca i32, align 4
  %ia = alloca ptr, align 8
  %da = alloca ptr, align 8
  %ca = alloca ptr, align 8
  %scale = alloca %struct.DoubleComplex, align 8
  %cfa = alloca ptr, align 8
  %cfscale = alloca %struct.SingleComplex, align 4
  %la = alloca ptr, align 8
  %lla = alloca ptr, align 8
  %fa = alloca ptr, align 8
  %val = alloca %struct.DoubleComplex, align 8
  %val99 = alloca %struct.SingleComplex, align 4
  %ia144 = alloca ptr, align 8
  %da145 = alloca ptr, align 8
  %ca146 = alloca ptr, align 8
  %scale147 = alloca %struct.DoubleComplex, align 8
  %cfa148 = alloca ptr, align 8
  %cfscale149 = alloca %struct.SingleComplex, align 4
  %la150 = alloca ptr, align 8
  %lla151 = alloca ptr, align 8
  %fa152 = alloca ptr, align 8
  %val188 = alloca %struct.DoubleComplex, align 8
  %val215 = alloca %struct.SingleComplex, align 4
  store i64 %g_a, ptr %g_a.addr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8
  %0 = load i32, ptr @_ga_sync_begin, align 4
  store i32 %0, ptr %local_sync_begin, align 4
  %1 = load i32, ptr @_ga_sync_end, align 4
  store i32 %1, ptr %local_sync_end, align 4
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %2 = load i64, ptr %g_a.addr, align 8
  %call = call i64 @pnga_get_pgroup(i64 noundef %2)
  store i64 %call, ptr %grp_id, align 8
  %3 = load i32, ptr %local_sync_begin, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %grp_id, align 8
  call void @pnga_pgroup_sync(i64 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %grp_id, align 8
  %call1 = call i64 @pnga_pgroup_nodeid(i64 noundef %5)
  store i64 %call1, ptr %me, align 8
  %6 = load i64, ptr %g_a.addr, align 8
  call void @pnga_check_handle(i64 noundef %6, ptr noundef @.str.13)
  %7 = load i64, ptr %g_a.addr, align 8
  %call2 = call i64 @pnga_total_blocks(i64 noundef %7)
  store i64 %call2, ptr %num_blocks, align 8
  %8 = load i64, ptr %g_a.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %8, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay)
  %9 = load i64, ptr %num_blocks, align 8
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load i64, ptr %g_a.addr, align 8
  %11 = load i64, ptr %me, align 8
  %arraydecay4 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %10, i64 noundef %11, ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  %12 = load i64, ptr %g_a.addr, align 8
  %call6 = call i64 @pnga_has_ghosts(i64 noundef %12)
  %tobool7 = icmp ne i64 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then3
  %13 = load i64, ptr %g_a.addr, align 8
  %arraydecay9 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %14 = load ptr, ptr %alpha.addr, align 8
  call void @pnga_scale_patch(i64 noundef %13, ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %14)
  br label %if.end262

if.end11:                                         ; preds = %if.then3
  %arrayidx = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %15 = load i64, ptr %arrayidx, align 16
  %cmp12 = icmp sgt i64 %15, 0
  br i1 %cmp12, label %if.then13, label %if.end143

if.then13:                                        ; preds = %if.end11
  %16 = load i64, ptr %g_a.addr, align 8
  %arraydecay14 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %16, ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef %ptr, ptr noundef %arraydecay16)
  store i32 0, ptr %_i, align 4
  %17 = load i64, ptr %ndim, align 8
  %sub = sub nsw i64 %17, 1
  %arrayidx17 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub
  %18 = load i64, ptr %arrayidx17, align 8
  %19 = load i64, ptr %ndim, align 8
  %sub18 = sub nsw i64 %19, 1
  %arrayidx19 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub18
  %20 = load i64, ptr %arrayidx19, align 8
  %sub20 = sub nsw i64 %18, %20
  %add = add nsw i64 %sub20, 1
  store i64 %add, ptr %elems, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %21 = load i32, ptr %_i, align 4
  %conv = sext i32 %21 to i64
  %22 = load i64, ptr %ndim, align 8
  %sub21 = sub nsw i64 %22, 1
  %cmp22 = icmp slt i64 %conv, %sub21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %_i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom
  %24 = load i64, ptr %arrayidx24, align 8
  %25 = load i32, ptr %_i, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom25
  %26 = load i64, ptr %arrayidx26, align 8
  %27 = load i32, ptr %_i, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom27
  %28 = load i64, ptr %arrayidx28, align 8
  %sub29 = sub nsw i64 %26, %28
  %add30 = add nsw i64 %sub29, 1
  %cmp31 = icmp ne i64 %24, %add30
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.body
  %29 = load i32, ptr %_i, align 4
  %conv34 = sext i32 %29 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv34)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.body
  %30 = load i32, ptr %_i, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom36
  %31 = load i64, ptr %arrayidx37, align 8
  %32 = load i32, ptr %_i, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom38
  %33 = load i64, ptr %arrayidx39, align 8
  %sub40 = sub nsw i64 %31, %33
  %add41 = add nsw i64 %sub40, 1
  %34 = load i64, ptr %elems, align 8
  %mul = mul nsw i64 %34, %add41
  store i64 %mul, ptr %elems, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %35 = load i32, ptr %_i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %_i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %36 = load i64, ptr %type, align 8
  switch i64 %36, label %sw.default [
    i64 1001, label %sw.bb
    i64 1002, label %sw.bb51
    i64 1016, label %sw.bb61
    i64 1007, label %sw.bb71
    i64 1006, label %sw.bb94
    i64 1004, label %sw.bb121
    i64 1003, label %sw.bb131
  ]

sw.bb:                                            ; preds = %for.end
  %37 = load ptr, ptr %ptr, align 8
  store ptr %37, ptr %ia, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc48, %sw.bb
  %38 = load i64, ptr %i, align 8
  %39 = load i64, ptr %elems, align 8
  %cmp43 = icmp slt i64 %38, %39
  br i1 %cmp43, label %for.body45, label %for.end50

for.body45:                                       ; preds = %for.cond42
  %40 = load ptr, ptr %alpha.addr, align 8
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %ia, align 8
  %43 = load i64, ptr %i, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %42, i64 %43
  %44 = load i32, ptr %arrayidx46, align 4
  %mul47 = mul nsw i32 %44, %41
  store i32 %mul47, ptr %arrayidx46, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %for.body45
  %45 = load i64, ptr %i, align 8
  %inc49 = add nsw i64 %45, 1
  store i64 %inc49, ptr %i, align 8
  br label %for.cond42, !llvm.loop !22

for.end50:                                        ; preds = %for.cond42
  br label %sw.epilog

sw.bb51:                                          ; preds = %for.end
  %46 = load ptr, ptr %ptr, align 8
  store ptr %46, ptr %la, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc58, %sw.bb51
  %47 = load i64, ptr %i, align 8
  %48 = load i64, ptr %elems, align 8
  %cmp53 = icmp slt i64 %47, %48
  br i1 %cmp53, label %for.body55, label %for.end60

for.body55:                                       ; preds = %for.cond52
  %49 = load ptr, ptr %alpha.addr, align 8
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %la, align 8
  %52 = load i64, ptr %i, align 8
  %arrayidx56 = getelementptr inbounds i64, ptr %51, i64 %52
  %53 = load i64, ptr %arrayidx56, align 8
  %mul57 = mul nsw i64 %53, %50
  store i64 %mul57, ptr %arrayidx56, align 8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body55
  %54 = load i64, ptr %i, align 8
  %inc59 = add nsw i64 %54, 1
  store i64 %inc59, ptr %i, align 8
  br label %for.cond52, !llvm.loop !23

for.end60:                                        ; preds = %for.cond52
  br label %sw.epilog

sw.bb61:                                          ; preds = %for.end
  %55 = load ptr, ptr %ptr, align 8
  store ptr %55, ptr %lla, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc68, %sw.bb61
  %56 = load i64, ptr %i, align 8
  %57 = load i64, ptr %elems, align 8
  %cmp63 = icmp slt i64 %56, %57
  br i1 %cmp63, label %for.body65, label %for.end70

for.body65:                                       ; preds = %for.cond62
  %58 = load ptr, ptr %alpha.addr, align 8
  %59 = load i64, ptr %58, align 8
  %60 = load ptr, ptr %lla, align 8
  %61 = load i64, ptr %i, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %60, i64 %61
  %62 = load i64, ptr %arrayidx66, align 8
  %mul67 = mul nsw i64 %62, %59
  store i64 %mul67, ptr %arrayidx66, align 8
  br label %for.inc68

for.inc68:                                        ; preds = %for.body65
  %63 = load i64, ptr %i, align 8
  %inc69 = add nsw i64 %63, 1
  store i64 %inc69, ptr %i, align 8
  br label %for.cond62, !llvm.loop !24

for.end70:                                        ; preds = %for.cond62
  br label %sw.epilog

sw.bb71:                                          ; preds = %for.end
  %64 = load ptr, ptr %ptr, align 8
  store ptr %64, ptr %ca, align 8
  %65 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scale, ptr align 8 %65, i64 16, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc91, %sw.bb71
  %66 = load i64, ptr %i, align 8
  %67 = load i64, ptr %elems, align 8
  %cmp73 = icmp slt i64 %66, %67
  br i1 %cmp73, label %for.body75, label %for.end93

for.body75:                                       ; preds = %for.cond72
  %68 = load ptr, ptr %ca, align 8
  %69 = load i64, ptr %i, align 8
  %arrayidx76 = getelementptr inbounds %struct.DoubleComplex, ptr %68, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %arrayidx76, i64 16, i1 false)
  %real = getelementptr inbounds %struct.DoubleComplex, ptr %scale, i32 0, i32 0
  %70 = load double, ptr %real, align 8
  %real77 = getelementptr inbounds %struct.DoubleComplex, ptr %val, i32 0, i32 0
  %71 = load double, ptr %real77, align 8
  %imag = getelementptr inbounds %struct.DoubleComplex, ptr %val, i32 0, i32 1
  %72 = load double, ptr %imag, align 8
  %imag79 = getelementptr inbounds %struct.DoubleComplex, ptr %scale, i32 0, i32 1
  %73 = load double, ptr %imag79, align 8
  %mul80 = fmul double %72, %73
  %neg = fneg double %mul80
  %74 = call double @llvm.fmuladd.f64(double %70, double %71, double %neg)
  %75 = load ptr, ptr %ca, align 8
  %76 = load i64, ptr %i, align 8
  %arrayidx81 = getelementptr inbounds %struct.DoubleComplex, ptr %75, i64 %76
  %real82 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx81, i32 0, i32 0
  store double %74, ptr %real82, align 8
  %imag83 = getelementptr inbounds %struct.DoubleComplex, ptr %scale, i32 0, i32 1
  %77 = load double, ptr %imag83, align 8
  %real84 = getelementptr inbounds %struct.DoubleComplex, ptr %val, i32 0, i32 0
  %78 = load double, ptr %real84, align 8
  %imag86 = getelementptr inbounds %struct.DoubleComplex, ptr %val, i32 0, i32 1
  %79 = load double, ptr %imag86, align 8
  %real87 = getelementptr inbounds %struct.DoubleComplex, ptr %scale, i32 0, i32 0
  %80 = load double, ptr %real87, align 8
  %mul88 = fmul double %79, %80
  %81 = call double @llvm.fmuladd.f64(double %77, double %78, double %mul88)
  %82 = load ptr, ptr %ca, align 8
  %83 = load i64, ptr %i, align 8
  %arrayidx89 = getelementptr inbounds %struct.DoubleComplex, ptr %82, i64 %83
  %imag90 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx89, i32 0, i32 1
  store double %81, ptr %imag90, align 8
  br label %for.inc91

for.inc91:                                        ; preds = %for.body75
  %84 = load i64, ptr %i, align 8
  %inc92 = add nsw i64 %84, 1
  store i64 %inc92, ptr %i, align 8
  br label %for.cond72, !llvm.loop !25

for.end93:                                        ; preds = %for.cond72
  br label %sw.epilog

sw.bb94:                                          ; preds = %for.end
  %85 = load ptr, ptr %ptr, align 8
  store ptr %85, ptr %cfa, align 8
  %86 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %cfscale, ptr align 4 %86, i64 8, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc118, %sw.bb94
  %87 = load i64, ptr %i, align 8
  %88 = load i64, ptr %elems, align 8
  %cmp96 = icmp slt i64 %87, %88
  br i1 %cmp96, label %for.body98, label %for.end120

for.body98:                                       ; preds = %for.cond95
  %89 = load ptr, ptr %cfa, align 8
  %90 = load i64, ptr %i, align 8
  %arrayidx100 = getelementptr inbounds %struct.SingleComplex, ptr %89, i64 %90
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %val99, ptr align 4 %arrayidx100, i64 8, i1 false)
  %real101 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale, i32 0, i32 0
  %91 = load float, ptr %real101, align 4
  %real102 = getelementptr inbounds %struct.SingleComplex, ptr %val99, i32 0, i32 0
  %92 = load float, ptr %real102, align 4
  %imag104 = getelementptr inbounds %struct.SingleComplex, ptr %val99, i32 0, i32 1
  %93 = load float, ptr %imag104, align 4
  %imag105 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale, i32 0, i32 1
  %94 = load float, ptr %imag105, align 4
  %mul106 = fmul float %93, %94
  %neg107 = fneg float %mul106
  %95 = call float @llvm.fmuladd.f32(float %91, float %92, float %neg107)
  %96 = load ptr, ptr %cfa, align 8
  %97 = load i64, ptr %i, align 8
  %arrayidx108 = getelementptr inbounds %struct.SingleComplex, ptr %96, i64 %97
  %real109 = getelementptr inbounds %struct.SingleComplex, ptr %arrayidx108, i32 0, i32 0
  store float %95, ptr %real109, align 4
  %imag110 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale, i32 0, i32 1
  %98 = load float, ptr %imag110, align 4
  %real111 = getelementptr inbounds %struct.SingleComplex, ptr %val99, i32 0, i32 0
  %99 = load float, ptr %real111, align 4
  %imag113 = getelementptr inbounds %struct.SingleComplex, ptr %val99, i32 0, i32 1
  %100 = load float, ptr %imag113, align 4
  %real114 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale, i32 0, i32 0
  %101 = load float, ptr %real114, align 4
  %mul115 = fmul float %100, %101
  %102 = call float @llvm.fmuladd.f32(float %98, float %99, float %mul115)
  %103 = load ptr, ptr %cfa, align 8
  %104 = load i64, ptr %i, align 8
  %arrayidx116 = getelementptr inbounds %struct.SingleComplex, ptr %103, i64 %104
  %imag117 = getelementptr inbounds %struct.SingleComplex, ptr %arrayidx116, i32 0, i32 1
  store float %102, ptr %imag117, align 4
  br label %for.inc118

for.inc118:                                       ; preds = %for.body98
  %105 = load i64, ptr %i, align 8
  %inc119 = add nsw i64 %105, 1
  store i64 %inc119, ptr %i, align 8
  br label %for.cond95, !llvm.loop !26

for.end120:                                       ; preds = %for.cond95
  br label %sw.epilog

sw.bb121:                                         ; preds = %for.end
  %106 = load ptr, ptr %ptr, align 8
  store ptr %106, ptr %da, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc128, %sw.bb121
  %107 = load i64, ptr %i, align 8
  %108 = load i64, ptr %elems, align 8
  %cmp123 = icmp slt i64 %107, %108
  br i1 %cmp123, label %for.body125, label %for.end130

for.body125:                                      ; preds = %for.cond122
  %109 = load ptr, ptr %alpha.addr, align 8
  %110 = load double, ptr %109, align 8
  %111 = load ptr, ptr %da, align 8
  %112 = load i64, ptr %i, align 8
  %arrayidx126 = getelementptr inbounds double, ptr %111, i64 %112
  %113 = load double, ptr %arrayidx126, align 8
  %mul127 = fmul double %113, %110
  store double %mul127, ptr %arrayidx126, align 8
  br label %for.inc128

for.inc128:                                       ; preds = %for.body125
  %114 = load i64, ptr %i, align 8
  %inc129 = add nsw i64 %114, 1
  store i64 %inc129, ptr %i, align 8
  br label %for.cond122, !llvm.loop !27

for.end130:                                       ; preds = %for.cond122
  br label %sw.epilog

sw.bb131:                                         ; preds = %for.end
  %115 = load ptr, ptr %ptr, align 8
  store ptr %115, ptr %fa, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc138, %sw.bb131
  %116 = load i64, ptr %i, align 8
  %117 = load i64, ptr %elems, align 8
  %cmp133 = icmp slt i64 %116, %117
  br i1 %cmp133, label %for.body135, label %for.end140

for.body135:                                      ; preds = %for.cond132
  %118 = load ptr, ptr %alpha.addr, align 8
  %119 = load float, ptr %118, align 4
  %120 = load ptr, ptr %fa, align 8
  %121 = load i64, ptr %i, align 8
  %arrayidx136 = getelementptr inbounds float, ptr %120, i64 %121
  %122 = load float, ptr %arrayidx136, align 4
  %mul137 = fmul float %122, %119
  store float %mul137, ptr %arrayidx136, align 4
  br label %for.inc138

for.inc138:                                       ; preds = %for.body135
  %123 = load i64, ptr %i, align 8
  %inc139 = add nsw i64 %123, 1
  store i64 %inc139, ptr %i, align 8
  br label %for.cond132, !llvm.loop !28

for.end140:                                       ; preds = %for.cond132
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %124 = load i64, ptr %type, align 8
  call void @pnga_error(ptr noundef @.str.10, i64 noundef %124)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end140, %for.end130, %for.end120, %for.end93, %for.end70, %for.end60, %for.end50
  %125 = load i64, ptr %g_a.addr, align 8
  %arraydecay141 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release_update(i64 noundef %125, ptr noundef %arraydecay141, ptr noundef %arraydecay142)
  br label %if.end143

if.end143:                                        ; preds = %sw.epilog, %if.end11
  br label %if.end259

if.else:                                          ; preds = %if.end
  %126 = load i64, ptr %g_a.addr, align 8
  %127 = load i64, ptr %me, align 8
  call void @pnga_access_block_segment_ptr(i64 noundef %126, i64 noundef %127, ptr noundef %ptr, ptr noundef %elems)
  %128 = load i64, ptr %type, align 8
  switch i64 %128, label %sw.default257 [
    i64 1001, label %sw.bb153
    i64 1002, label %sw.bb163
    i64 1016, label %sw.bb173
    i64 1007, label %sw.bb183
    i64 1006, label %sw.bb210
    i64 1004, label %sw.bb237
    i64 1003, label %sw.bb247
  ]

sw.bb153:                                         ; preds = %if.else
  %129 = load ptr, ptr %ptr, align 8
  store ptr %129, ptr %ia144, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc160, %sw.bb153
  %130 = load i64, ptr %i, align 8
  %131 = load i64, ptr %elems, align 8
  %cmp155 = icmp slt i64 %130, %131
  br i1 %cmp155, label %for.body157, label %for.end162

for.body157:                                      ; preds = %for.cond154
  %132 = load ptr, ptr %alpha.addr, align 8
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %ia144, align 8
  %135 = load i64, ptr %i, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %134, i64 %135
  %136 = load i32, ptr %arrayidx158, align 4
  %mul159 = mul nsw i32 %136, %133
  store i32 %mul159, ptr %arrayidx158, align 4
  br label %for.inc160

for.inc160:                                       ; preds = %for.body157
  %137 = load i64, ptr %i, align 8
  %inc161 = add nsw i64 %137, 1
  store i64 %inc161, ptr %i, align 8
  br label %for.cond154, !llvm.loop !29

for.end162:                                       ; preds = %for.cond154
  br label %sw.epilog258

sw.bb163:                                         ; preds = %if.else
  %138 = load ptr, ptr %ptr, align 8
  store ptr %138, ptr %la150, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc170, %sw.bb163
  %139 = load i64, ptr %i, align 8
  %140 = load i64, ptr %elems, align 8
  %cmp165 = icmp slt i64 %139, %140
  br i1 %cmp165, label %for.body167, label %for.end172

for.body167:                                      ; preds = %for.cond164
  %141 = load ptr, ptr %alpha.addr, align 8
  %142 = load i64, ptr %141, align 8
  %143 = load ptr, ptr %la150, align 8
  %144 = load i64, ptr %i, align 8
  %arrayidx168 = getelementptr inbounds i64, ptr %143, i64 %144
  %145 = load i64, ptr %arrayidx168, align 8
  %mul169 = mul nsw i64 %145, %142
  store i64 %mul169, ptr %arrayidx168, align 8
  br label %for.inc170

for.inc170:                                       ; preds = %for.body167
  %146 = load i64, ptr %i, align 8
  %inc171 = add nsw i64 %146, 1
  store i64 %inc171, ptr %i, align 8
  br label %for.cond164, !llvm.loop !30

for.end172:                                       ; preds = %for.cond164
  br label %sw.epilog258

sw.bb173:                                         ; preds = %if.else
  %147 = load ptr, ptr %ptr, align 8
  store ptr %147, ptr %lla151, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc180, %sw.bb173
  %148 = load i64, ptr %i, align 8
  %149 = load i64, ptr %elems, align 8
  %cmp175 = icmp slt i64 %148, %149
  br i1 %cmp175, label %for.body177, label %for.end182

for.body177:                                      ; preds = %for.cond174
  %150 = load ptr, ptr %alpha.addr, align 8
  %151 = load i64, ptr %150, align 8
  %152 = load ptr, ptr %lla151, align 8
  %153 = load i64, ptr %i, align 8
  %arrayidx178 = getelementptr inbounds i64, ptr %152, i64 %153
  %154 = load i64, ptr %arrayidx178, align 8
  %mul179 = mul nsw i64 %154, %151
  store i64 %mul179, ptr %arrayidx178, align 8
  br label %for.inc180

for.inc180:                                       ; preds = %for.body177
  %155 = load i64, ptr %i, align 8
  %inc181 = add nsw i64 %155, 1
  store i64 %inc181, ptr %i, align 8
  br label %for.cond174, !llvm.loop !31

for.end182:                                       ; preds = %for.cond174
  br label %sw.epilog258

sw.bb183:                                         ; preds = %if.else
  %156 = load ptr, ptr %ptr, align 8
  store ptr %156, ptr %ca146, align 8
  %157 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scale147, ptr align 8 %157, i64 16, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc207, %sw.bb183
  %158 = load i64, ptr %i, align 8
  %159 = load i64, ptr %elems, align 8
  %cmp185 = icmp slt i64 %158, %159
  br i1 %cmp185, label %for.body187, label %for.end209

for.body187:                                      ; preds = %for.cond184
  %160 = load ptr, ptr %ca146, align 8
  %161 = load i64, ptr %i, align 8
  %arrayidx189 = getelementptr inbounds %struct.DoubleComplex, ptr %160, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val188, ptr align 8 %arrayidx189, i64 16, i1 false)
  %real190 = getelementptr inbounds %struct.DoubleComplex, ptr %scale147, i32 0, i32 0
  %162 = load double, ptr %real190, align 8
  %real191 = getelementptr inbounds %struct.DoubleComplex, ptr %val188, i32 0, i32 0
  %163 = load double, ptr %real191, align 8
  %imag193 = getelementptr inbounds %struct.DoubleComplex, ptr %val188, i32 0, i32 1
  %164 = load double, ptr %imag193, align 8
  %imag194 = getelementptr inbounds %struct.DoubleComplex, ptr %scale147, i32 0, i32 1
  %165 = load double, ptr %imag194, align 8
  %mul195 = fmul double %164, %165
  %neg196 = fneg double %mul195
  %166 = call double @llvm.fmuladd.f64(double %162, double %163, double %neg196)
  %167 = load ptr, ptr %ca146, align 8
  %168 = load i64, ptr %i, align 8
  %arrayidx197 = getelementptr inbounds %struct.DoubleComplex, ptr %167, i64 %168
  %real198 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx197, i32 0, i32 0
  store double %166, ptr %real198, align 8
  %imag199 = getelementptr inbounds %struct.DoubleComplex, ptr %scale147, i32 0, i32 1
  %169 = load double, ptr %imag199, align 8
  %real200 = getelementptr inbounds %struct.DoubleComplex, ptr %val188, i32 0, i32 0
  %170 = load double, ptr %real200, align 8
  %imag202 = getelementptr inbounds %struct.DoubleComplex, ptr %val188, i32 0, i32 1
  %171 = load double, ptr %imag202, align 8
  %real203 = getelementptr inbounds %struct.DoubleComplex, ptr %scale147, i32 0, i32 0
  %172 = load double, ptr %real203, align 8
  %mul204 = fmul double %171, %172
  %173 = call double @llvm.fmuladd.f64(double %169, double %170, double %mul204)
  %174 = load ptr, ptr %ca146, align 8
  %175 = load i64, ptr %i, align 8
  %arrayidx205 = getelementptr inbounds %struct.DoubleComplex, ptr %174, i64 %175
  %imag206 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx205, i32 0, i32 1
  store double %173, ptr %imag206, align 8
  br label %for.inc207

for.inc207:                                       ; preds = %for.body187
  %176 = load i64, ptr %i, align 8
  %inc208 = add nsw i64 %176, 1
  store i64 %inc208, ptr %i, align 8
  br label %for.cond184, !llvm.loop !32

for.end209:                                       ; preds = %for.cond184
  br label %sw.epilog258

sw.bb210:                                         ; preds = %if.else
  %177 = load ptr, ptr %ptr, align 8
  store ptr %177, ptr %cfa148, align 8
  %178 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %cfscale149, ptr align 4 %178, i64 8, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc234, %sw.bb210
  %179 = load i64, ptr %i, align 8
  %180 = load i64, ptr %elems, align 8
  %cmp212 = icmp slt i64 %179, %180
  br i1 %cmp212, label %for.body214, label %for.end236

for.body214:                                      ; preds = %for.cond211
  %181 = load ptr, ptr %cfa148, align 8
  %182 = load i64, ptr %i, align 8
  %arrayidx216 = getelementptr inbounds %struct.SingleComplex, ptr %181, i64 %182
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %val215, ptr align 4 %arrayidx216, i64 8, i1 false)
  %real217 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale149, i32 0, i32 0
  %183 = load float, ptr %real217, align 4
  %real218 = getelementptr inbounds %struct.SingleComplex, ptr %val215, i32 0, i32 0
  %184 = load float, ptr %real218, align 4
  %imag220 = getelementptr inbounds %struct.SingleComplex, ptr %val215, i32 0, i32 1
  %185 = load float, ptr %imag220, align 4
  %imag221 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale149, i32 0, i32 1
  %186 = load float, ptr %imag221, align 4
  %mul222 = fmul float %185, %186
  %neg223 = fneg float %mul222
  %187 = call float @llvm.fmuladd.f32(float %183, float %184, float %neg223)
  %188 = load ptr, ptr %cfa148, align 8
  %189 = load i64, ptr %i, align 8
  %arrayidx224 = getelementptr inbounds %struct.SingleComplex, ptr %188, i64 %189
  %real225 = getelementptr inbounds %struct.SingleComplex, ptr %arrayidx224, i32 0, i32 0
  store float %187, ptr %real225, align 4
  %imag226 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale149, i32 0, i32 1
  %190 = load float, ptr %imag226, align 4
  %real227 = getelementptr inbounds %struct.SingleComplex, ptr %val215, i32 0, i32 0
  %191 = load float, ptr %real227, align 4
  %imag229 = getelementptr inbounds %struct.SingleComplex, ptr %val215, i32 0, i32 1
  %192 = load float, ptr %imag229, align 4
  %real230 = getelementptr inbounds %struct.SingleComplex, ptr %cfscale149, i32 0, i32 0
  %193 = load float, ptr %real230, align 4
  %mul231 = fmul float %192, %193
  %194 = call float @llvm.fmuladd.f32(float %190, float %191, float %mul231)
  %195 = load ptr, ptr %cfa148, align 8
  %196 = load i64, ptr %i, align 8
  %arrayidx232 = getelementptr inbounds %struct.SingleComplex, ptr %195, i64 %196
  %imag233 = getelementptr inbounds %struct.SingleComplex, ptr %arrayidx232, i32 0, i32 1
  store float %194, ptr %imag233, align 4
  br label %for.inc234

for.inc234:                                       ; preds = %for.body214
  %197 = load i64, ptr %i, align 8
  %inc235 = add nsw i64 %197, 1
  store i64 %inc235, ptr %i, align 8
  br label %for.cond211, !llvm.loop !33

for.end236:                                       ; preds = %for.cond211
  br label %sw.epilog258

sw.bb237:                                         ; preds = %if.else
  %198 = load ptr, ptr %ptr, align 8
  store ptr %198, ptr %da145, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc244, %sw.bb237
  %199 = load i64, ptr %i, align 8
  %200 = load i64, ptr %elems, align 8
  %cmp239 = icmp slt i64 %199, %200
  br i1 %cmp239, label %for.body241, label %for.end246

for.body241:                                      ; preds = %for.cond238
  %201 = load ptr, ptr %alpha.addr, align 8
  %202 = load double, ptr %201, align 8
  %203 = load ptr, ptr %da145, align 8
  %204 = load i64, ptr %i, align 8
  %arrayidx242 = getelementptr inbounds double, ptr %203, i64 %204
  %205 = load double, ptr %arrayidx242, align 8
  %mul243 = fmul double %205, %202
  store double %mul243, ptr %arrayidx242, align 8
  br label %for.inc244

for.inc244:                                       ; preds = %for.body241
  %206 = load i64, ptr %i, align 8
  %inc245 = add nsw i64 %206, 1
  store i64 %inc245, ptr %i, align 8
  br label %for.cond238, !llvm.loop !34

for.end246:                                       ; preds = %for.cond238
  br label %sw.epilog258

sw.bb247:                                         ; preds = %if.else
  %207 = load ptr, ptr %ptr, align 8
  store ptr %207, ptr %fa152, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond248

for.cond248:                                      ; preds = %for.inc254, %sw.bb247
  %208 = load i64, ptr %i, align 8
  %209 = load i64, ptr %elems, align 8
  %cmp249 = icmp slt i64 %208, %209
  br i1 %cmp249, label %for.body251, label %for.end256

for.body251:                                      ; preds = %for.cond248
  %210 = load ptr, ptr %alpha.addr, align 8
  %211 = load float, ptr %210, align 4
  %212 = load ptr, ptr %fa152, align 8
  %213 = load i64, ptr %i, align 8
  %arrayidx252 = getelementptr inbounds float, ptr %212, i64 %213
  %214 = load float, ptr %arrayidx252, align 4
  %mul253 = fmul float %214, %211
  store float %mul253, ptr %arrayidx252, align 4
  br label %for.inc254

for.inc254:                                       ; preds = %for.body251
  %215 = load i64, ptr %i, align 8
  %inc255 = add nsw i64 %215, 1
  store i64 %inc255, ptr %i, align 8
  br label %for.cond248, !llvm.loop !35

for.end256:                                       ; preds = %for.cond248
  br label %sw.epilog258

sw.default257:                                    ; preds = %if.else
  %216 = load i64, ptr %type, align 8
  call void @pnga_error(ptr noundef @.str.10, i64 noundef %216)
  br label %sw.epilog258

sw.epilog258:                                     ; preds = %sw.default257, %for.end256, %for.end246, %for.end236, %for.end209, %for.end182, %for.end172, %for.end162
  %217 = load i64, ptr %g_a.addr, align 8
  %218 = load i64, ptr %me, align 8
  call void @pnga_release_update_block_segment(i64 noundef %217, i64 noundef %218)
  br label %if.end259

if.end259:                                        ; preds = %sw.epilog258, %if.end143
  %219 = load i32, ptr %local_sync_end, align 4
  %tobool260 = icmp ne i32 %219, 0
  br i1 %tobool260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.end259
  %220 = load i64, ptr %grp_id, align 8
  call void @pnga_pgroup_sync(i64 noundef %220)
  br label %if.end262

if.end262:                                        ; preds = %if.then8, %if.then261, %if.end259
  ret void
}

declare void @pnga_scale_patch(i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_add(ptr noundef %alpha, i64 noundef %g_a, ptr noundef %beta, i64 noundef %g_b, i64 noundef %g_c) #0 {
entry:
  %alpha.addr = alloca ptr, align 8
  %g_a.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %g_b.addr = alloca i64, align 8
  %g_c.addr = alloca i64, align 8
  %ndim = alloca i64, align 8
  %type = alloca i64, align 8
  %typeC = alloca i64, align 8
  %me = alloca i64, align 8
  %elems = alloca i64, align 8
  %elemsb = alloca i64, align 8
  %elemsa = alloca i64, align 8
  %i = alloca i64, align 8
  %ptr_a = alloca ptr, align 8
  %ptr_b = alloca ptr, align 8
  %ptr_c = alloca ptr, align 8
  %a_grp = alloca i64, align 8
  %b_grp = alloca i64, align 8
  %c_grp = alloca i64, align 8
  %local_sync_begin = alloca i32, align 4
  %local_sync_end = alloca i32, align 4
  %_dims = alloca [7 x i64], align 16
  %_ld = alloca [6 x i64], align 16
  %_lo = alloca [7 x i64], align 16
  %_hi = alloca [7 x i64], align 16
  %andim = alloca i64, align 8
  %adims = alloca [7 x i64], align 16
  %bndim = alloca i64, align 8
  %bdims = alloca [7 x i64], align 16
  %cndim = alloca i64, align 8
  %cdims = alloca [7 x i64], align 16
  %_i = alloca i32, align 4
  %_i88 = alloca i32, align 4
  %_i144 = alloca i32, align 4
  %ia = alloca ptr, align 8
  %ib = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %da = alloca ptr, align 8
  %db = alloca ptr, align 8
  %dc = alloca ptr, align 8
  %fa = alloca ptr, align 8
  %fb = alloca ptr, align 8
  %fc = alloca ptr, align 8
  %la = alloca ptr, align 8
  %lb = alloca ptr, align 8
  %lc = alloca ptr, align 8
  %lla = alloca ptr, align 8
  %llb = alloca ptr, align 8
  %llc = alloca ptr, align 8
  %a = alloca %struct.DoubleComplex, align 8
  %b = alloca %struct.DoubleComplex, align 8
  %ac = alloca ptr, align 8
  %x = alloca %struct.DoubleComplex, align 8
  %y = alloca %struct.DoubleComplex, align 8
  %a250 = alloca %struct.SingleComplex, align 4
  %b252 = alloca %struct.SingleComplex, align 4
  %ac254 = alloca ptr, align 8
  %x255 = alloca %struct.SingleComplex, align 4
  %y256 = alloca %struct.SingleComplex, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store i64 %g_a, ptr %g_a.addr, align 8
  store ptr %beta, ptr %beta.addr, align 8
  store i64 %g_b, ptr %g_b.addr, align 8
  store i64 %g_c, ptr %g_c.addr, align 8
  store i64 0, ptr %elems, align 8
  store i64 0, ptr %elemsb, align 8
  store i64 0, ptr %elemsa, align 8
  %0 = load i32, ptr @_ga_sync_begin, align 4
  store i32 %0, ptr %local_sync_begin, align 4
  %1 = load i32, ptr @_ga_sync_end, align 4
  store i32 %1, ptr %local_sync_end, align 4
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %2 = load i64, ptr %g_a.addr, align 8
  %call = call i64 @pnga_get_pgroup(i64 noundef %2)
  store i64 %call, ptr %a_grp, align 8
  %3 = load i64, ptr %g_b.addr, align 8
  %call1 = call i64 @pnga_get_pgroup(i64 noundef %3)
  store i64 %call1, ptr %b_grp, align 8
  %4 = load i64, ptr %g_c.addr, align 8
  %call2 = call i64 @pnga_get_pgroup(i64 noundef %4)
  store i64 %call2, ptr %c_grp, align 8
  %5 = load i64, ptr %a_grp, align 8
  %6 = load i64, ptr %b_grp, align 8
  %cmp = icmp ne i64 %5, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, ptr %b_grp, align 8
  %8 = load i64, ptr %c_grp, align 8
  %cmp3 = icmp ne i64 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @pnga_error(ptr noundef @.str.14, i64 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i32, ptr %local_sync_begin, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load i64, ptr %a_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %10)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %11 = load i64, ptr %a_grp, align 8
  %call6 = call i64 @pnga_pgroup_nodeid(i64 noundef %11)
  store i64 %call6, ptr %me, align 8
  %12 = load i64, ptr %g_a.addr, align 8
  %13 = load i64, ptr %g_b.addr, align 8
  %call7 = call i64 @pnga_compare_distr(i64 noundef %12, i64 noundef %13)
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then30, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end5
  %14 = load i64, ptr %g_a.addr, align 8
  %15 = load i64, ptr %g_c.addr, align 8
  %call10 = call i64 @pnga_compare_distr(i64 noundef %14, i64 noundef %15)
  %cmp11 = icmp eq i64 %call10, 0
  br i1 %cmp11, label %if.then30, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %16 = load i64, ptr %g_a.addr, align 8
  %call13 = call i64 @pnga_has_ghosts(i64 noundef %16)
  %tobool14 = icmp ne i64 %call13, 0
  br i1 %tobool14, label %if.then30, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %17 = load i64, ptr %g_b.addr, align 8
  %call16 = call i64 @pnga_has_ghosts(i64 noundef %17)
  %tobool17 = icmp ne i64 %call16, 0
  br i1 %tobool17, label %if.then30, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %18 = load i64, ptr %g_c.addr, align 8
  %call19 = call i64 @pnga_has_ghosts(i64 noundef %18)
  %tobool20 = icmp ne i64 %call19, 0
  br i1 %tobool20, label %if.then30, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %19 = load i64, ptr %g_a.addr, align 8
  %call22 = call i64 @pnga_total_blocks(i64 noundef %19)
  %cmp23 = icmp sgt i64 %call22, 0
  br i1 %cmp23, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %20 = load i64, ptr %g_b.addr, align 8
  %call25 = call i64 @pnga_total_blocks(i64 noundef %20)
  %cmp26 = icmp sgt i64 %call25, 0
  br i1 %cmp26, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %21 = load i64, ptr %g_c.addr, align 8
  %call28 = call i64 @pnga_total_blocks(i64 noundef %21)
  %cmp29 = icmp sgt i64 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %if.end5
  %22 = load i64, ptr %g_a.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %22, ptr noundef %type, ptr noundef %andim, ptr noundef %arraydecay)
  %23 = load i64, ptr %g_b.addr, align 8
  %arraydecay31 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %23, ptr noundef %type, ptr noundef %bndim, ptr noundef %arraydecay31)
  %24 = load i64, ptr %g_b.addr, align 8
  %arraydecay32 = getelementptr inbounds [7 x i64], ptr %cdims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %24, ptr noundef %type, ptr noundef %cndim, ptr noundef %arraydecay32)
  %25 = load ptr, ptr %alpha.addr, align 8
  %26 = load i64, ptr %g_a.addr, align 8
  %arraydecay33 = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  %27 = load ptr, ptr %beta.addr, align 8
  %28 = load i64, ptr %g_b.addr, align 8
  %arraydecay34 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  %29 = load i64, ptr %g_c.addr, align 8
  %arraydecay35 = getelementptr inbounds [7 x i64], ptr %cdims, i64 0, i64 0
  call void @pnga_add_patch(ptr noundef %25, i64 noundef %26, ptr noundef @one_arr, ptr noundef %arraydecay33, ptr noundef %27, i64 noundef %28, ptr noundef @one_arr, ptr noundef %arraydecay34, i64 noundef %29, ptr noundef @one_arr, ptr noundef %arraydecay35)
  br label %if.end362

if.end36:                                         ; preds = %lor.lhs.false27
  %30 = load i64, ptr %a_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %30)
  %31 = load i64, ptr %g_c.addr, align 8
  %arraydecay37 = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %31, ptr noundef %typeC, ptr noundef %ndim, ptr noundef %arraydecay37)
  %32 = load i64, ptr %g_c.addr, align 8
  %33 = load i64, ptr %me, align 8
  %arraydecay38 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay39 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %32, i64 noundef %33, ptr noundef %arraydecay38, ptr noundef %arraydecay39)
  %arrayidx = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %34 = load i64, ptr %arrayidx, align 16
  %cmp40 = icmp sgt i64 %34, 0
  br i1 %cmp40, label %if.then41, label %if.end70

if.then41:                                        ; preds = %if.end36
  %35 = load i64, ptr %g_c.addr, align 8
  %arraydecay42 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay44 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %35, ptr noundef %arraydecay42, ptr noundef %arraydecay43, ptr noundef %ptr_c, ptr noundef %arraydecay44)
  store i32 0, ptr %_i, align 4
  %36 = load i64, ptr %ndim, align 8
  %sub = sub nsw i64 %36, 1
  %arrayidx45 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub
  %37 = load i64, ptr %arrayidx45, align 8
  %38 = load i64, ptr %ndim, align 8
  %sub46 = sub nsw i64 %38, 1
  %arrayidx47 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub46
  %39 = load i64, ptr %arrayidx47, align 8
  %sub48 = sub nsw i64 %37, %39
  %add = add nsw i64 %sub48, 1
  store i64 %add, ptr %elems, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then41
  %40 = load i32, ptr %_i, align 4
  %conv = sext i32 %40 to i64
  %41 = load i64, ptr %ndim, align 8
  %sub49 = sub nsw i64 %41, 1
  %cmp50 = icmp slt i64 %conv, %sub49
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, ptr %_i, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx52 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom
  %43 = load i64, ptr %arrayidx52, align 8
  %44 = load i32, ptr %_i, align 4
  %idxprom53 = sext i32 %44 to i64
  %arrayidx54 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom53
  %45 = load i64, ptr %arrayidx54, align 8
  %46 = load i32, ptr %_i, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom55
  %47 = load i64, ptr %arrayidx56, align 8
  %sub57 = sub nsw i64 %45, %47
  %add58 = add nsw i64 %sub57, 1
  %cmp59 = icmp ne i64 %43, %add58
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %for.body
  %48 = load i32, ptr %_i, align 4
  %conv62 = sext i32 %48 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv62)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %for.body
  %49 = load i32, ptr %_i, align 4
  %idxprom64 = sext i32 %49 to i64
  %arrayidx65 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom64
  %50 = load i64, ptr %arrayidx65, align 8
  %51 = load i32, ptr %_i, align 4
  %idxprom66 = sext i32 %51 to i64
  %arrayidx67 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom66
  %52 = load i64, ptr %arrayidx67, align 8
  %sub68 = sub nsw i64 %50, %52
  %add69 = add nsw i64 %sub68, 1
  %53 = load i64, ptr %elems, align 8
  %mul = mul nsw i64 %53, %add69
  store i64 %mul, ptr %elems, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %54 = load i32, ptr %_i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %_i, align 4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  br label %if.end70

if.end70:                                         ; preds = %for.end, %if.end36
  %55 = load i64, ptr %g_a.addr, align 8
  %56 = load i64, ptr %g_c.addr, align 8
  %cmp71 = icmp eq i64 %55, %56
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end70
  %57 = load ptr, ptr %ptr_c, align 8
  store ptr %57, ptr %ptr_a, align 8
  %58 = load i64, ptr %elems, align 8
  store i64 %58, ptr %elemsa, align 8
  br label %if.end125

if.else:                                          ; preds = %if.end70
  %59 = load i64, ptr %g_a.addr, align 8
  %arraydecay74 = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %59, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay74)
  %60 = load i64, ptr %type, align 8
  %61 = load i64, ptr %typeC, align 8
  %cmp75 = icmp ne i64 %60, %61
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.else
  %62 = load i64, ptr %g_a.addr, align 8
  call void @pnga_error(ptr noundef @.str.15, i64 noundef %62)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.else
  %63 = load i64, ptr %g_a.addr, align 8
  %64 = load i64, ptr %me, align 8
  %arraydecay79 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay80 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %63, i64 noundef %64, ptr noundef %arraydecay79, ptr noundef %arraydecay80)
  %arrayidx81 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %65 = load i64, ptr %arrayidx81, align 16
  %cmp82 = icmp sgt i64 %65, 0
  br i1 %cmp82, label %if.then84, label %if.end124

if.then84:                                        ; preds = %if.end78
  %66 = load i64, ptr %g_a.addr, align 8
  %arraydecay85 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay86 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay87 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %66, ptr noundef %arraydecay85, ptr noundef %arraydecay86, ptr noundef %ptr_a, ptr noundef %arraydecay87)
  store i32 0, ptr %_i88, align 4
  %67 = load i64, ptr %ndim, align 8
  %sub89 = sub nsw i64 %67, 1
  %arrayidx90 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub89
  %68 = load i64, ptr %arrayidx90, align 8
  %69 = load i64, ptr %ndim, align 8
  %sub91 = sub nsw i64 %69, 1
  %arrayidx92 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub91
  %70 = load i64, ptr %arrayidx92, align 8
  %sub93 = sub nsw i64 %68, %70
  %add94 = add nsw i64 %sub93, 1
  store i64 %add94, ptr %elemsa, align 8
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc121, %if.then84
  %71 = load i32, ptr %_i88, align 4
  %conv96 = sext i32 %71 to i64
  %72 = load i64, ptr %ndim, align 8
  %sub97 = sub nsw i64 %72, 1
  %cmp98 = icmp slt i64 %conv96, %sub97
  br i1 %cmp98, label %for.body100, label %for.end123

for.body100:                                      ; preds = %for.cond95
  %73 = load i32, ptr %_i88, align 4
  %idxprom101 = sext i32 %73 to i64
  %arrayidx102 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom101
  %74 = load i64, ptr %arrayidx102, align 8
  %75 = load i32, ptr %_i88, align 4
  %idxprom103 = sext i32 %75 to i64
  %arrayidx104 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom103
  %76 = load i64, ptr %arrayidx104, align 8
  %77 = load i32, ptr %_i88, align 4
  %idxprom105 = sext i32 %77 to i64
  %arrayidx106 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom105
  %78 = load i64, ptr %arrayidx106, align 8
  %sub107 = sub nsw i64 %76, %78
  %add108 = add nsw i64 %sub107, 1
  %cmp109 = icmp ne i64 %74, %add108
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %for.body100
  %79 = load i32, ptr %_i88, align 4
  %conv112 = sext i32 %79 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv112)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %for.body100
  %80 = load i32, ptr %_i88, align 4
  %idxprom114 = sext i32 %80 to i64
  %arrayidx115 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom114
  %81 = load i64, ptr %arrayidx115, align 8
  %82 = load i32, ptr %_i88, align 4
  %idxprom116 = sext i32 %82 to i64
  %arrayidx117 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom116
  %83 = load i64, ptr %arrayidx117, align 8
  %sub118 = sub nsw i64 %81, %83
  %add119 = add nsw i64 %sub118, 1
  %84 = load i64, ptr %elemsa, align 8
  %mul120 = mul nsw i64 %84, %add119
  store i64 %mul120, ptr %elemsa, align 8
  br label %for.inc121

for.inc121:                                       ; preds = %if.end113
  %85 = load i32, ptr %_i88, align 4
  %inc122 = add nsw i32 %85, 1
  store i32 %inc122, ptr %_i88, align 4
  br label %for.cond95, !llvm.loop !37

for.end123:                                       ; preds = %for.cond95
  br label %if.end124

if.end124:                                        ; preds = %for.end123, %if.end78
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then73
  %86 = load i64, ptr %g_b.addr, align 8
  %87 = load i64, ptr %g_c.addr, align 8
  %cmp126 = icmp eq i64 %86, %87
  br i1 %cmp126, label %if.then128, label %if.else129

if.then128:                                       ; preds = %if.end125
  %88 = load ptr, ptr %ptr_c, align 8
  store ptr %88, ptr %ptr_b, align 8
  %89 = load i64, ptr %elems, align 8
  store i64 %89, ptr %elemsb, align 8
  br label %if.end181

if.else129:                                       ; preds = %if.end125
  %90 = load i64, ptr %g_b.addr, align 8
  %arraydecay130 = getelementptr inbounds [7 x i64], ptr %_dims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %90, ptr noundef %type, ptr noundef %ndim, ptr noundef %arraydecay130)
  %91 = load i64, ptr %type, align 8
  %92 = load i64, ptr %typeC, align 8
  %cmp131 = icmp ne i64 %91, %92
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.else129
  %93 = load i64, ptr %g_b.addr, align 8
  call void @pnga_error(ptr noundef @.str.15, i64 noundef %93)
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.else129
  %94 = load i64, ptr %g_b.addr, align 8
  %95 = load i64, ptr %me, align 8
  %arraydecay135 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay136 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_distribution(i64 noundef %94, i64 noundef %95, ptr noundef %arraydecay135, ptr noundef %arraydecay136)
  %arrayidx137 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %96 = load i64, ptr %arrayidx137, align 16
  %cmp138 = icmp sgt i64 %96, 0
  br i1 %cmp138, label %if.then140, label %if.end180

if.then140:                                       ; preds = %if.end134
  %97 = load i64, ptr %g_b.addr, align 8
  %arraydecay141 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  %arraydecay143 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 0
  call void @pnga_access_ptr(i64 noundef %97, ptr noundef %arraydecay141, ptr noundef %arraydecay142, ptr noundef %ptr_b, ptr noundef %arraydecay143)
  store i32 0, ptr %_i144, align 4
  %98 = load i64, ptr %ndim, align 8
  %sub145 = sub nsw i64 %98, 1
  %arrayidx146 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %sub145
  %99 = load i64, ptr %arrayidx146, align 8
  %100 = load i64, ptr %ndim, align 8
  %sub147 = sub nsw i64 %100, 1
  %arrayidx148 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %sub147
  %101 = load i64, ptr %arrayidx148, align 8
  %sub149 = sub nsw i64 %99, %101
  %add150 = add nsw i64 %sub149, 1
  store i64 %add150, ptr %elemsb, align 8
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc177, %if.then140
  %102 = load i32, ptr %_i144, align 4
  %conv152 = sext i32 %102 to i64
  %103 = load i64, ptr %ndim, align 8
  %sub153 = sub nsw i64 %103, 1
  %cmp154 = icmp slt i64 %conv152, %sub153
  br i1 %cmp154, label %for.body156, label %for.end179

for.body156:                                      ; preds = %for.cond151
  %104 = load i32, ptr %_i144, align 4
  %idxprom157 = sext i32 %104 to i64
  %arrayidx158 = getelementptr inbounds [6 x i64], ptr %_ld, i64 0, i64 %idxprom157
  %105 = load i64, ptr %arrayidx158, align 8
  %106 = load i32, ptr %_i144, align 4
  %idxprom159 = sext i32 %106 to i64
  %arrayidx160 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom159
  %107 = load i64, ptr %arrayidx160, align 8
  %108 = load i32, ptr %_i144, align 4
  %idxprom161 = sext i32 %108 to i64
  %arrayidx162 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom161
  %109 = load i64, ptr %arrayidx162, align 8
  %sub163 = sub nsw i64 %107, %109
  %add164 = add nsw i64 %sub163, 1
  %cmp165 = icmp ne i64 %105, %add164
  br i1 %cmp165, label %if.then167, label %if.end169

if.then167:                                       ; preds = %for.body156
  %110 = load i32, ptr %_i144, align 4
  %conv168 = sext i32 %110 to i64
  call void @pnga_error(ptr noundef @.str.1, i64 noundef %conv168)
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %for.body156
  %111 = load i32, ptr %_i144, align 4
  %idxprom170 = sext i32 %111 to i64
  %arrayidx171 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 %idxprom170
  %112 = load i64, ptr %arrayidx171, align 8
  %113 = load i32, ptr %_i144, align 4
  %idxprom172 = sext i32 %113 to i64
  %arrayidx173 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 %idxprom172
  %114 = load i64, ptr %arrayidx173, align 8
  %sub174 = sub nsw i64 %112, %114
  %add175 = add nsw i64 %sub174, 1
  %115 = load i64, ptr %elemsb, align 8
  %mul176 = mul nsw i64 %115, %add175
  store i64 %mul176, ptr %elemsb, align 8
  br label %for.inc177

for.inc177:                                       ; preds = %if.end169
  %116 = load i32, ptr %_i144, align 4
  %inc178 = add nsw i32 %116, 1
  store i32 %inc178, ptr %_i144, align 4
  br label %for.cond151, !llvm.loop !38

for.end179:                                       ; preds = %for.cond151
  br label %if.end180

if.end180:                                        ; preds = %for.end179, %if.end134
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.then128
  %117 = load i64, ptr %elems, align 8
  %118 = load i64, ptr %elemsb, align 8
  %cmp182 = icmp ne i64 %117, %118
  br i1 %cmp182, label %if.then184, label %if.end186

if.then184:                                       ; preds = %if.end181
  %119 = load i64, ptr %elems, align 8
  %120 = load i64, ptr %elemsb, align 8
  %sub185 = sub nsw i64 %119, %120
  call void @pnga_error(ptr noundef @.str.16, i64 noundef %sub185)
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %if.end181
  %121 = load i64, ptr %elems, align 8
  %122 = load i64, ptr %elemsa, align 8
  %cmp187 = icmp ne i64 %121, %122
  br i1 %cmp187, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end186
  %123 = load i64, ptr %elems, align 8
  %124 = load i64, ptr %elemsa, align 8
  %sub190 = sub nsw i64 %123, %124
  call void @pnga_error(ptr noundef @.str.17, i64 noundef %sub190)
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end186
  %arrayidx192 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %125 = load i64, ptr %arrayidx192, align 16
  %cmp193 = icmp sgt i64 %125, 0
  br i1 %cmp193, label %if.then195, label %if.end359

if.then195:                                       ; preds = %if.end191
  %126 = load i64, ptr %type, align 8
  switch i64 %126, label %sw.epilog [
    i64 1004, label %sw.bb
    i64 1007, label %sw.bb208
    i64 1006, label %sw.bb245
    i64 1003, label %sw.bb290
    i64 1001, label %sw.bb303
    i64 1002, label %sw.bb317
    i64 1016, label %sw.bb331
  ]

sw.bb:                                            ; preds = %if.then195
  %127 = load ptr, ptr %ptr_a, align 8
  store ptr %127, ptr %da, align 8
  %128 = load ptr, ptr %ptr_b, align 8
  store ptr %128, ptr %db, align 8
  %129 = load ptr, ptr %ptr_c, align 8
  store ptr %129, ptr %dc, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc205, %sw.bb
  %130 = load i64, ptr %i, align 8
  %131 = load i64, ptr %elems, align 8
  %cmp197 = icmp slt i64 %130, %131
  br i1 %cmp197, label %for.body199, label %for.end207

for.body199:                                      ; preds = %for.cond196
  %132 = load ptr, ptr %alpha.addr, align 8
  %133 = load double, ptr %132, align 8
  %134 = load ptr, ptr %da, align 8
  %135 = load i64, ptr %i, align 8
  %arrayidx200 = getelementptr inbounds double, ptr %134, i64 %135
  %136 = load double, ptr %arrayidx200, align 8
  %137 = load ptr, ptr %beta.addr, align 8
  %138 = load double, ptr %137, align 8
  %139 = load ptr, ptr %db, align 8
  %140 = load i64, ptr %i, align 8
  %arrayidx202 = getelementptr inbounds double, ptr %139, i64 %140
  %141 = load double, ptr %arrayidx202, align 8
  %mul203 = fmul double %138, %141
  %142 = call double @llvm.fmuladd.f64(double %133, double %136, double %mul203)
  %143 = load ptr, ptr %dc, align 8
  %144 = load i64, ptr %i, align 8
  %arrayidx204 = getelementptr inbounds double, ptr %143, i64 %144
  store double %142, ptr %arrayidx204, align 8
  br label %for.inc205

for.inc205:                                       ; preds = %for.body199
  %145 = load i64, ptr %i, align 8
  %inc206 = add nsw i64 %145, 1
  store i64 %inc206, ptr %i, align 8
  br label %for.cond196, !llvm.loop !39

for.end207:                                       ; preds = %for.cond196
  br label %sw.epilog

sw.bb208:                                         ; preds = %if.then195
  store i64 0, ptr %i, align 8
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc242, %sw.bb208
  %146 = load i64, ptr %i, align 8
  %147 = load i64, ptr %elems, align 8
  %cmp210 = icmp slt i64 %146, %147
  br i1 %cmp210, label %for.body212, label %for.end244

for.body212:                                      ; preds = %for.cond209
  %148 = load ptr, ptr %ptr_a, align 8
  %149 = load i64, ptr %i, align 8
  %arrayidx213 = getelementptr inbounds %struct.DoubleComplex, ptr %148, i64 %149
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %a, ptr align 8 %arrayidx213, i64 16, i1 false)
  %150 = load ptr, ptr %ptr_b, align 8
  %151 = load i64, ptr %i, align 8
  %arrayidx214 = getelementptr inbounds %struct.DoubleComplex, ptr %150, i64 %151
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %b, ptr align 8 %arrayidx214, i64 16, i1 false)
  %152 = load ptr, ptr %ptr_c, align 8
  store ptr %152, ptr %ac, align 8
  %153 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 %153, i64 16, i1 false)
  %154 = load ptr, ptr %beta.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %y, ptr align 8 %154, i64 16, i1 false)
  %real = getelementptr inbounds %struct.DoubleComplex, ptr %x, i32 0, i32 0
  %155 = load double, ptr %real, align 8
  %real215 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 0
  %156 = load double, ptr %real215, align 8
  %imag = getelementptr inbounds %struct.DoubleComplex, ptr %x, i32 0, i32 1
  %157 = load double, ptr %imag, align 8
  %imag217 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 1
  %158 = load double, ptr %imag217, align 8
  %mul218 = fmul double %157, %158
  %neg = fneg double %mul218
  %159 = call double @llvm.fmuladd.f64(double %155, double %156, double %neg)
  %real219 = getelementptr inbounds %struct.DoubleComplex, ptr %y, i32 0, i32 0
  %160 = load double, ptr %real219, align 8
  %real220 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 0
  %161 = load double, ptr %real220, align 8
  %162 = call double @llvm.fmuladd.f64(double %160, double %161, double %159)
  %imag222 = getelementptr inbounds %struct.DoubleComplex, ptr %y, i32 0, i32 1
  %163 = load double, ptr %imag222, align 8
  %imag223 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 1
  %164 = load double, ptr %imag223, align 8
  %neg225 = fneg double %163
  %165 = call double @llvm.fmuladd.f64(double %neg225, double %164, double %162)
  %166 = load ptr, ptr %ac, align 8
  %167 = load i64, ptr %i, align 8
  %arrayidx226 = getelementptr inbounds %struct.DoubleComplex, ptr %166, i64 %167
  %real227 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx226, i32 0, i32 0
  store double %165, ptr %real227, align 8
  %real228 = getelementptr inbounds %struct.DoubleComplex, ptr %x, i32 0, i32 0
  %168 = load double, ptr %real228, align 8
  %imag229 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 1
  %169 = load double, ptr %imag229, align 8
  %imag231 = getelementptr inbounds %struct.DoubleComplex, ptr %x, i32 0, i32 1
  %170 = load double, ptr %imag231, align 8
  %real232 = getelementptr inbounds %struct.DoubleComplex, ptr %a, i32 0, i32 0
  %171 = load double, ptr %real232, align 8
  %mul233 = fmul double %170, %171
  %172 = call double @llvm.fmuladd.f64(double %168, double %169, double %mul233)
  %real234 = getelementptr inbounds %struct.DoubleComplex, ptr %y, i32 0, i32 0
  %173 = load double, ptr %real234, align 8
  %imag235 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 1
  %174 = load double, ptr %imag235, align 8
  %175 = call double @llvm.fmuladd.f64(double %173, double %174, double %172)
  %imag237 = getelementptr inbounds %struct.DoubleComplex, ptr %y, i32 0, i32 1
  %176 = load double, ptr %imag237, align 8
  %real238 = getelementptr inbounds %struct.DoubleComplex, ptr %b, i32 0, i32 0
  %177 = load double, ptr %real238, align 8
  %178 = call double @llvm.fmuladd.f64(double %176, double %177, double %175)
  %179 = load ptr, ptr %ac, align 8
  %180 = load i64, ptr %i, align 8
  %arrayidx240 = getelementptr inbounds %struct.DoubleComplex, ptr %179, i64 %180
  %imag241 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx240, i32 0, i32 1
  store double %178, ptr %imag241, align 8
  br label %for.inc242

for.inc242:                                       ; preds = %for.body212
  %181 = load i64, ptr %i, align 8
  %inc243 = add nsw i64 %181, 1
  store i64 %inc243, ptr %i, align 8
  br label %for.cond209, !llvm.loop !40

for.end244:                                       ; preds = %for.cond209
  br label %sw.epilog

sw.bb245:                                         ; preds = %if.then195
  store i64 0, ptr %i, align 8
  br label %for.cond246

for.cond246:                                      ; preds = %for.inc287, %sw.bb245
  %182 = load i64, ptr %i, align 8
  %183 = load i64, ptr %elems, align 8
  %cmp247 = icmp slt i64 %182, %183
  br i1 %cmp247, label %for.body249, label %for.end289

for.body249:                                      ; preds = %for.cond246
  %184 = load ptr, ptr %ptr_a, align 8
  %185 = load i64, ptr %i, align 8
  %arrayidx251 = getelementptr inbounds %struct.SingleComplex, ptr %184, i64 %185
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a250, ptr align 4 %arrayidx251, i64 8, i1 false)
  %186 = load ptr, ptr %ptr_b, align 8
  %187 = load i64, ptr %i, align 8
  %arrayidx253 = getelementptr inbounds %struct.SingleComplex, ptr %186, i64 %187
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b252, ptr align 4 %arrayidx253, i64 8, i1 false)
  %188 = load ptr, ptr %ptr_c, align 8
  store ptr %188, ptr %ac254, align 8
  %189 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x255, ptr align 4 %189, i64 8, i1 false)
  %190 = load ptr, ptr %beta.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y256, ptr align 4 %190, i64 8, i1 false)
  %real257 = getelementptr inbounds %struct.SingleComplex, ptr %x255, i32 0, i32 0
  %191 = load float, ptr %real257, align 4
  %real258 = getelementptr inbounds %struct.SingleComplex, ptr %a250, i32 0, i32 0
  %192 = load float, ptr %real258, align 4
  %imag260 = getelementptr inbounds %struct.SingleComplex, ptr %x255, i32 0, i32 1
  %193 = load float, ptr %imag260, align 4
  %imag261 = getelementptr inbounds %struct.SingleComplex, ptr %a250, i32 0, i32 1
  %194 = load float, ptr %imag261, align 4
  %mul262 = fmul float %193, %194
  %neg263 = fneg float %mul262
  %195 = call float @llvm.fmuladd.f32(float %191, float %192, float %neg263)
  %real264 = getelementptr inbounds %struct.SingleComplex, ptr %y256, i32 0, i32 0
  %196 = load float, ptr %real264, align 4
  %real265 = getelementptr inbounds %struct.SingleComplex, ptr %b252, i32 0, i32 0
  %197 = load float, ptr %real265, align 4
  %198 = call float @llvm.fmuladd.f32(float %196, float %197, float %195)
  %imag267 = getelementptr inbounds %struct.SingleComplex, ptr %y256, i32 0, i32 1
  %199 = load float, ptr %imag267, align 4
  %imag268 = getelementptr inbounds %struct.SingleComplex, ptr %b252, i32 0, i32 1
  %200 = load float, ptr %imag268, align 4
  %neg270 = fneg float %199
  %201 = call float @llvm.fmuladd.f32(float %neg270, float %200, float %198)
  %202 = load ptr, ptr %ac254, align 8
  %203 = load i64, ptr %i, align 8
  %arrayidx271 = getelementptr inbounds %struct.SingleComplex, ptr %202, i64 %203
  %real272 = getelementptr inbounds %struct.SingleComplex, ptr %arrayidx271, i32 0, i32 0
  store float %201, ptr %real272, align 4
  %real273 = getelementptr inbounds %struct.SingleComplex, ptr %x255, i32 0, i32 0
  %204 = load float, ptr %real273, align 4
  %imag274 = getelementptr inbounds %struct.SingleComplex, ptr %a250, i32 0, i32 1
  %205 = load float, ptr %imag274, align 4
  %imag276 = getelementptr inbounds %struct.SingleComplex, ptr %x255, i32 0, i32 1
  %206 = load float, ptr %imag276, align 4
  %real277 = getelementptr inbounds %struct.SingleComplex, ptr %a250, i32 0, i32 0
  %207 = load float, ptr %real277, align 4
  %mul278 = fmul float %206, %207
  %208 = call float @llvm.fmuladd.f32(float %204, float %205, float %mul278)
  %real279 = getelementptr inbounds %struct.SingleComplex, ptr %y256, i32 0, i32 0
  %209 = load float, ptr %real279, align 4
  %imag280 = getelementptr inbounds %struct.SingleComplex, ptr %b252, i32 0, i32 1
  %210 = load float, ptr %imag280, align 4
  %211 = call float @llvm.fmuladd.f32(float %209, float %210, float %208)
  %imag282 = getelementptr inbounds %struct.SingleComplex, ptr %y256, i32 0, i32 1
  %212 = load float, ptr %imag282, align 4
  %real283 = getelementptr inbounds %struct.SingleComplex, ptr %b252, i32 0, i32 0
  %213 = load float, ptr %real283, align 4
  %214 = call float @llvm.fmuladd.f32(float %212, float %213, float %211)
  %215 = load ptr, ptr %ac254, align 8
  %216 = load i64, ptr %i, align 8
  %arrayidx285 = getelementptr inbounds %struct.SingleComplex, ptr %215, i64 %216
  %imag286 = getelementptr inbounds %struct.SingleComplex, ptr %arrayidx285, i32 0, i32 1
  store float %214, ptr %imag286, align 4
  br label %for.inc287

for.inc287:                                       ; preds = %for.body249
  %217 = load i64, ptr %i, align 8
  %inc288 = add nsw i64 %217, 1
  store i64 %inc288, ptr %i, align 8
  br label %for.cond246, !llvm.loop !41

for.end289:                                       ; preds = %for.cond246
  br label %sw.epilog

sw.bb290:                                         ; preds = %if.then195
  %218 = load ptr, ptr %ptr_a, align 8
  store ptr %218, ptr %fa, align 8
  %219 = load ptr, ptr %ptr_b, align 8
  store ptr %219, ptr %fb, align 8
  %220 = load ptr, ptr %ptr_c, align 8
  store ptr %220, ptr %fc, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond291

for.cond291:                                      ; preds = %for.inc300, %sw.bb290
  %221 = load i64, ptr %i, align 8
  %222 = load i64, ptr %elems, align 8
  %cmp292 = icmp slt i64 %221, %222
  br i1 %cmp292, label %for.body294, label %for.end302

for.body294:                                      ; preds = %for.cond291
  %223 = load ptr, ptr %alpha.addr, align 8
  %224 = load float, ptr %223, align 4
  %225 = load ptr, ptr %fa, align 8
  %226 = load i64, ptr %i, align 8
  %arrayidx295 = getelementptr inbounds float, ptr %225, i64 %226
  %227 = load float, ptr %arrayidx295, align 4
  %228 = load ptr, ptr %beta.addr, align 8
  %229 = load float, ptr %228, align 4
  %230 = load ptr, ptr %fb, align 8
  %231 = load i64, ptr %i, align 8
  %arrayidx297 = getelementptr inbounds float, ptr %230, i64 %231
  %232 = load float, ptr %arrayidx297, align 4
  %mul298 = fmul float %229, %232
  %233 = call float @llvm.fmuladd.f32(float %224, float %227, float %mul298)
  %234 = load ptr, ptr %fc, align 8
  %235 = load i64, ptr %i, align 8
  %arrayidx299 = getelementptr inbounds float, ptr %234, i64 %235
  store float %233, ptr %arrayidx299, align 4
  br label %for.inc300

for.inc300:                                       ; preds = %for.body294
  %236 = load i64, ptr %i, align 8
  %inc301 = add nsw i64 %236, 1
  store i64 %inc301, ptr %i, align 8
  br label %for.cond291, !llvm.loop !42

for.end302:                                       ; preds = %for.cond291
  br label %sw.epilog

sw.bb303:                                         ; preds = %if.then195
  %237 = load ptr, ptr %ptr_a, align 8
  store ptr %237, ptr %ia, align 8
  %238 = load ptr, ptr %ptr_b, align 8
  store ptr %238, ptr %ib, align 8
  %239 = load ptr, ptr %ptr_c, align 8
  store ptr %239, ptr %ic, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond304

for.cond304:                                      ; preds = %for.inc314, %sw.bb303
  %240 = load i64, ptr %i, align 8
  %241 = load i64, ptr %elems, align 8
  %cmp305 = icmp slt i64 %240, %241
  br i1 %cmp305, label %for.body307, label %for.end316

for.body307:                                      ; preds = %for.cond304
  %242 = load ptr, ptr %alpha.addr, align 8
  %243 = load i32, ptr %242, align 4
  %244 = load ptr, ptr %ia, align 8
  %245 = load i64, ptr %i, align 8
  %arrayidx308 = getelementptr inbounds i32, ptr %244, i64 %245
  %246 = load i32, ptr %arrayidx308, align 4
  %mul309 = mul nsw i32 %243, %246
  %247 = load ptr, ptr %beta.addr, align 8
  %248 = load i32, ptr %247, align 4
  %249 = load ptr, ptr %ib, align 8
  %250 = load i64, ptr %i, align 8
  %arrayidx310 = getelementptr inbounds i32, ptr %249, i64 %250
  %251 = load i32, ptr %arrayidx310, align 4
  %mul311 = mul nsw i32 %248, %251
  %add312 = add nsw i32 %mul309, %mul311
  %252 = load ptr, ptr %ic, align 8
  %253 = load i64, ptr %i, align 8
  %arrayidx313 = getelementptr inbounds i32, ptr %252, i64 %253
  store i32 %add312, ptr %arrayidx313, align 4
  br label %for.inc314

for.inc314:                                       ; preds = %for.body307
  %254 = load i64, ptr %i, align 8
  %inc315 = add nsw i64 %254, 1
  store i64 %inc315, ptr %i, align 8
  br label %for.cond304, !llvm.loop !43

for.end316:                                       ; preds = %for.cond304
  br label %sw.epilog

sw.bb317:                                         ; preds = %if.then195
  %255 = load ptr, ptr %ptr_a, align 8
  store ptr %255, ptr %la, align 8
  %256 = load ptr, ptr %ptr_b, align 8
  store ptr %256, ptr %lb, align 8
  %257 = load ptr, ptr %ptr_c, align 8
  store ptr %257, ptr %lc, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond318

for.cond318:                                      ; preds = %for.inc328, %sw.bb317
  %258 = load i64, ptr %i, align 8
  %259 = load i64, ptr %elems, align 8
  %cmp319 = icmp slt i64 %258, %259
  br i1 %cmp319, label %for.body321, label %for.end330

for.body321:                                      ; preds = %for.cond318
  %260 = load ptr, ptr %alpha.addr, align 8
  %261 = load i64, ptr %260, align 8
  %262 = load ptr, ptr %la, align 8
  %263 = load i64, ptr %i, align 8
  %arrayidx322 = getelementptr inbounds i64, ptr %262, i64 %263
  %264 = load i64, ptr %arrayidx322, align 8
  %mul323 = mul nsw i64 %261, %264
  %265 = load ptr, ptr %beta.addr, align 8
  %266 = load i64, ptr %265, align 8
  %267 = load ptr, ptr %lb, align 8
  %268 = load i64, ptr %i, align 8
  %arrayidx324 = getelementptr inbounds i64, ptr %267, i64 %268
  %269 = load i64, ptr %arrayidx324, align 8
  %mul325 = mul nsw i64 %266, %269
  %add326 = add nsw i64 %mul323, %mul325
  %270 = load ptr, ptr %lc, align 8
  %271 = load i64, ptr %i, align 8
  %arrayidx327 = getelementptr inbounds i64, ptr %270, i64 %271
  store i64 %add326, ptr %arrayidx327, align 8
  br label %for.inc328

for.inc328:                                       ; preds = %for.body321
  %272 = load i64, ptr %i, align 8
  %inc329 = add nsw i64 %272, 1
  store i64 %inc329, ptr %i, align 8
  br label %for.cond318, !llvm.loop !44

for.end330:                                       ; preds = %for.cond318
  br label %sw.epilog

sw.bb331:                                         ; preds = %if.then195
  %273 = load ptr, ptr %ptr_a, align 8
  store ptr %273, ptr %lla, align 8
  %274 = load ptr, ptr %ptr_b, align 8
  store ptr %274, ptr %llb, align 8
  %275 = load ptr, ptr %ptr_c, align 8
  store ptr %275, ptr %llc, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc342, %sw.bb331
  %276 = load i64, ptr %i, align 8
  %277 = load i64, ptr %elems, align 8
  %cmp333 = icmp slt i64 %276, %277
  br i1 %cmp333, label %for.body335, label %for.end344

for.body335:                                      ; preds = %for.cond332
  %278 = load ptr, ptr %alpha.addr, align 8
  %279 = load i64, ptr %278, align 8
  %280 = load ptr, ptr %lla, align 8
  %281 = load i64, ptr %i, align 8
  %arrayidx336 = getelementptr inbounds i64, ptr %280, i64 %281
  %282 = load i64, ptr %arrayidx336, align 8
  %mul337 = mul nsw i64 %279, %282
  %283 = load ptr, ptr %beta.addr, align 8
  %284 = load i64, ptr %283, align 8
  %285 = load ptr, ptr %llb, align 8
  %286 = load i64, ptr %i, align 8
  %arrayidx338 = getelementptr inbounds i64, ptr %285, i64 %286
  %287 = load i64, ptr %arrayidx338, align 8
  %mul339 = mul nsw i64 %284, %287
  %add340 = add nsw i64 %mul337, %mul339
  %288 = load ptr, ptr %llc, align 8
  %289 = load i64, ptr %i, align 8
  %arrayidx341 = getelementptr inbounds i64, ptr %288, i64 %289
  store i64 %add340, ptr %arrayidx341, align 8
  br label %for.inc342

for.inc342:                                       ; preds = %for.body335
  %290 = load i64, ptr %i, align 8
  %inc343 = add nsw i64 %290, 1
  store i64 %inc343, ptr %i, align 8
  br label %for.cond332, !llvm.loop !45

for.end344:                                       ; preds = %for.cond332
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end344, %if.then195, %for.end330, %for.end316, %for.end302, %for.end289, %for.end244, %for.end207
  %291 = load i64, ptr %g_c.addr, align 8
  %arraydecay345 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay346 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release_update(i64 noundef %291, ptr noundef %arraydecay345, ptr noundef %arraydecay346)
  %292 = load i64, ptr %g_c.addr, align 8
  %293 = load i64, ptr %g_a.addr, align 8
  %cmp347 = icmp ne i64 %292, %293
  br i1 %cmp347, label %if.then349, label %if.end352

if.then349:                                       ; preds = %sw.epilog
  %294 = load i64, ptr %g_a.addr, align 8
  %arraydecay350 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay351 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release(i64 noundef %294, ptr noundef %arraydecay350, ptr noundef %arraydecay351)
  br label %if.end352

if.end352:                                        ; preds = %if.then349, %sw.epilog
  %295 = load i64, ptr %g_c.addr, align 8
  %296 = load i64, ptr %g_b.addr, align 8
  %cmp353 = icmp ne i64 %295, %296
  br i1 %cmp353, label %if.then355, label %if.end358

if.then355:                                       ; preds = %if.end352
  %297 = load i64, ptr %g_b.addr, align 8
  %arraydecay356 = getelementptr inbounds [7 x i64], ptr %_lo, i64 0, i64 0
  %arraydecay357 = getelementptr inbounds [7 x i64], ptr %_hi, i64 0, i64 0
  call void @pnga_release(i64 noundef %297, ptr noundef %arraydecay356, ptr noundef %arraydecay357)
  br label %if.end358

if.end358:                                        ; preds = %if.then355, %if.end352
  br label %if.end359

if.end359:                                        ; preds = %if.end358, %if.end191
  %298 = load i32, ptr %local_sync_end, align 4
  %tobool360 = icmp ne i32 %298, 0
  br i1 %tobool360, label %if.then361, label %if.end362

if.then361:                                       ; preds = %if.end359
  %299 = load i64, ptr %a_grp, align 8
  call void @pnga_pgroup_sync(i64 noundef %299)
  br label %if.end362

if.end362:                                        ; preds = %if.then30, %if.then361, %if.end359
  ret void
}

declare void @pnga_add_patch(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_transpose(i64 noundef %g_a, i64 noundef %g_b) #0 {
entry:
  %g_a.addr = alloca i64, align 8
  %g_b.addr = alloca i64, align 8
  %me = alloca i64, align 8
  %_ld = alloca [6 x i64], align 16
  %nproc = alloca i64, align 8
  %atype = alloca i64, align 8
  %btype = alloca i64, align 8
  %andim = alloca i64, align 8
  %adims = alloca [7 x i64], align 16
  %bndim = alloca i64, align 8
  %bdims = alloca [7 x i64], align 16
  %lo = alloca [2 x i64], align 16
  %hi = alloca [2 x i64], align 16
  %ld = alloca [2 x i64], align 16
  %local_sync_begin = alloca i32, align 4
  %local_sync_end = alloca i32, align 4
  %num_blocks_a = alloca i64, align 8
  %ptr_tmp = alloca ptr, align 8
  %ptr_a = alloca ptr, align 8
  %hdl = alloca %struct._iterator_hdl, align 8
  %idx = alloca i64, align 8
  %block_dims = alloca [7 x i64], align 16
  %nelem = alloca i64, align 8
  %lob = alloca [2 x i64], align 16
  %hib = alloca [2 x i64], align 16
  %nrow = alloca i64, align 8
  %ncol = alloca i64, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store i64 %g_a, ptr %g_a.addr, align 8
  store i64 %g_b, ptr %g_b.addr, align 8
  %call = call i64 (...) @pnga_nodeid()
  store i64 %call, ptr %me, align 8
  %call1 = call i64 (...) @pnga_nnodes()
  store i64 %call1, ptr %nproc, align 8
  %0 = load i32, ptr @_ga_sync_begin, align 4
  store i32 %0, ptr %local_sync_begin, align 4
  %1 = load i32, ptr @_ga_sync_end, align 4
  store i32 %1, ptr %local_sync_end, align 4
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %2 = load i32, ptr %local_sync_begin, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (...) @pnga_sync()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %g_a.addr, align 8
  %4 = load i64, ptr %g_b.addr, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @pnga_error(ptr noundef @.str.2, i64 noundef 0)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i64, ptr %g_a.addr, align 8
  %arraydecay = getelementptr inbounds [7 x i64], ptr %adims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %5, ptr noundef %atype, ptr noundef %andim, ptr noundef %arraydecay)
  %6 = load i64, ptr %g_b.addr, align 8
  %arraydecay4 = getelementptr inbounds [7 x i64], ptr %bdims, i64 0, i64 0
  call void @pnga_inquire(i64 noundef %6, ptr noundef %btype, ptr noundef %bndim, ptr noundef %arraydecay4)
  %7 = load i64, ptr %bndim, align 8
  %cmp5 = icmp ne i64 %7, 2
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %8 = load i64, ptr %andim, align 8
  %cmp6 = icmp ne i64 %8, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  call void @pnga_error(ptr noundef @.str.18, i64 noundef 0)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %9 = load i64, ptr %atype, align 8
  %10 = load i64, ptr %btype, align 8
  %cmp9 = icmp ne i64 %9, %10
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @pnga_error(ptr noundef @.str.19, i64 noundef 0)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %11 = load i64, ptr %g_a.addr, align 8
  call void @pnga_local_iterator_init(i64 noundef %11, ptr noundef %hdl)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end11
  %arraydecay12 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [2 x i64], ptr %ld, i64 0, i64 0
  %call15 = call i32 @pnga_local_iterator_next(ptr noundef %hdl, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %ptr_a, ptr noundef %arraydecay14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i64, ptr %atype, align 8
  %sub = sub nsw i64 %12, 1000
  %arrayidx = getelementptr inbounds [0 x %struct.ga_typeinfo_t], ptr @ga_types, i64 0, i64 %sub
  %size17 = getelementptr inbounds %struct.ga_typeinfo_t, ptr %arrayidx, i32 0, i32 1
  %13 = load i64, ptr %size17, align 8
  %conv = trunc i64 %13 to i32
  store i32 %conv, ptr %size, align 4
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 0
  %14 = load i64, ptr %arrayidx18, align 16
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 0
  %15 = load i64, ptr %arrayidx19, align 16
  %sub20 = sub nsw i64 %14, %15
  %add = add nsw i64 %sub20, 1
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 1
  %16 = load i64, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 1
  %17 = load i64, ptr %arrayidx22, align 8
  %sub23 = sub nsw i64 %16, %17
  %add24 = add nsw i64 %sub23, 1
  %mul = mul nsw i64 %add, %add24
  store i64 %mul, ptr %nelem, align 8
  %18 = load i64, ptr %nelem, align 8
  %19 = load i64, ptr %atype, align 8
  %conv25 = trunc i64 %19 to i32
  %call26 = call ptr @ga_malloc(i64 noundef %18, i32 noundef %conv25, ptr noundef @.str.20)
  store ptr %call26, ptr %ptr_tmp, align 8
  %arrayidx27 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 0
  %20 = load i64, ptr %arrayidx27, align 16
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 0
  %21 = load i64, ptr %arrayidx28, align 16
  %sub29 = sub nsw i64 %20, %21
  %add30 = add nsw i64 %sub29, 1
  store i64 %add30, ptr %nrow, align 8
  %arrayidx31 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 1
  %22 = load i64, ptr %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 1
  %23 = load i64, ptr %arrayidx32, align 8
  %sub33 = sub nsw i64 %22, %23
  %add34 = add nsw i64 %sub33, 1
  store i64 %add34, ptr %ncol, align 8
  %24 = load i64, ptr %nrow, align 8
  %25 = load i64, ptr %ncol, align 8
  %mul35 = mul nsw i64 %24, %25
  store i64 %mul35, ptr %nelem, align 8
  %arrayidx36 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 1
  %26 = load i64, ptr %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds [2 x i64], ptr %lob, i64 0, i64 0
  store i64 %26, ptr %arrayidx37, align 16
  %arrayidx38 = getelementptr inbounds [2 x i64], ptr %lo, i64 0, i64 0
  %27 = load i64, ptr %arrayidx38, align 16
  %arrayidx39 = getelementptr inbounds [2 x i64], ptr %lob, i64 0, i64 1
  store i64 %27, ptr %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 1
  %28 = load i64, ptr %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds [2 x i64], ptr %hib, i64 0, i64 0
  store i64 %28, ptr %arrayidx41, align 16
  %arrayidx42 = getelementptr inbounds [2 x i64], ptr %hi, i64 0, i64 0
  %29 = load i64, ptr %arrayidx42, align 16
  %arrayidx43 = getelementptr inbounds [2 x i64], ptr %hib, i64 0, i64 1
  store i64 %29, ptr %arrayidx43, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %30 = load i32, ptr %i, align 4
  %conv44 = sext i32 %30 to i64
  %31 = load i64, ptr %ncol, align 8
  %cmp45 = icmp slt i64 %conv44, %31
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %ptr_tmp, align 8
  %33 = load i32, ptr %i, align 4
  %34 = load i32, ptr %size, align 4
  %mul47 = mul nsw i32 %33, %34
  %idx.ext = sext i32 %mul47 to i64
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr, align 8
  %35 = load i64, ptr %atype, align 8
  %36 = load ptr, ptr %ptr_a, align 8
  %37 = load i64, ptr %nrow, align 8
  %38 = load i64, ptr %ncol, align 8
  %39 = load i32, ptr %size, align 4
  %conv48 = sext i32 %39 to i64
  %mul49 = mul nsw i64 %38, %conv48
  %40 = load ptr, ptr %ptr, align 8
  call void @snga_local_transpose(i64 noundef %35, ptr noundef %36, i64 noundef %37, i64 noundef %mul49, ptr noundef %40)
  %arrayidx50 = getelementptr inbounds [2 x i64], ptr %ld, i64 0, i64 0
  %41 = load i64, ptr %arrayidx50, align 16
  %42 = load i32, ptr %size, align 4
  %conv51 = sext i32 %42 to i64
  %mul52 = mul nsw i64 %41, %conv51
  %43 = load ptr, ptr %ptr_a, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %43, i64 %mul52
  store ptr %add.ptr53, ptr %ptr_a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, ptr %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %45 = load i64, ptr %g_b.addr, align 8
  %arraydecay54 = getelementptr inbounds [2 x i64], ptr %lob, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [2 x i64], ptr %hib, i64 0, i64 0
  %46 = load ptr, ptr %ptr_tmp, align 8
  call void @pnga_put(i64 noundef %45, ptr noundef %arraydecay54, ptr noundef %arraydecay55, ptr noundef %46, ptr noundef %ncol)
  %47 = load ptr, ptr %ptr_tmp, align 8
  call void @ga_free(ptr noundef %47)
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  %48 = load i32, ptr %local_sync_end, align 4
  %tobool56 = icmp ne i32 %48, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %while.end
  call void (...) @pnga_sync()
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %while.end
  ret void
}

declare i64 @pnga_nodeid(...) #1

declare i64 @pnga_nnodes(...) #1

declare ptr @ga_malloc(i64 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snga_local_transpose(i64 noundef %type, ptr noundef %ptra, i64 noundef %n, i64 noundef %stride, ptr noundef %ptrb) #0 {
entry:
  %type.addr = alloca i64, align 8
  %ptra.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %stride.addr = alloca i64, align 8
  %ptrb.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  store ptr %ptra, ptr %ptra.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store i64 %stride, ptr %stride.addr, align 8
  store ptr %ptrb, ptr %ptrb.addr, align 8
  %0 = load i64, ptr %type.addr, align 8
  switch i64 %0, label %sw.default [
    i64 1001, label %sw.bb
    i64 1007, label %sw.bb1
    i64 1006, label %sw.bb10
    i64 1004, label %sw.bb19
    i64 1003, label %sw.bb28
    i64 1002, label %sw.bb37
    i64 1016, label %sw.bb46
  ]

sw.bb:                                            ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %n.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ptra.addr, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %4
  %5 = load i32, ptr %arrayidx, align 4
  %6 = load ptr, ptr %ptrb.addr, align 8
  store i32 %5, ptr %6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, ptr %i, align 8
  %8 = load i64, ptr %stride.addr, align 8
  %9 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %8
  store ptr %add.ptr, ptr %ptrb.addr, align 8
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc6, %sw.bb1
  %10 = load i64, ptr %i, align 8
  %11 = load i64, ptr %n.addr, align 8
  %cmp3 = icmp slt i64 %10, %11
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %12 = load ptr, ptr %ptrb.addr, align 8
  %13 = load ptr, ptr %ptra.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds %struct.DoubleComplex, ptr %13, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %arrayidx5, i64 16, i1 false)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body4
  %15 = load i64, ptr %i, align 8
  %inc7 = add nsw i64 %15, 1
  store i64 %inc7, ptr %i, align 8
  %16 = load i64, ptr %stride.addr, align 8
  %17 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %17, i64 %16
  store ptr %add.ptr8, ptr %ptrb.addr, align 8
  br label %for.cond2, !llvm.loop !49

for.end9:                                         ; preds = %for.cond2
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc15, %sw.bb10
  %18 = load i64, ptr %i, align 8
  %19 = load i64, ptr %n.addr, align 8
  %cmp12 = icmp slt i64 %18, %19
  br i1 %cmp12, label %for.body13, label %for.end18

for.body13:                                       ; preds = %for.cond11
  %20 = load ptr, ptr %ptrb.addr, align 8
  %21 = load ptr, ptr %ptra.addr, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds %struct.SingleComplex, ptr %21, i64 %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %arrayidx14, i64 8, i1 false)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body13
  %23 = load i64, ptr %i, align 8
  %inc16 = add nsw i64 %23, 1
  store i64 %inc16, ptr %i, align 8
  %24 = load i64, ptr %stride.addr, align 8
  %25 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %add.ptr17, ptr %ptrb.addr, align 8
  br label %for.cond11, !llvm.loop !50

for.end18:                                        ; preds = %for.cond11
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc24, %sw.bb19
  %26 = load i64, ptr %i, align 8
  %27 = load i64, ptr %n.addr, align 8
  %cmp21 = icmp slt i64 %26, %27
  br i1 %cmp21, label %for.body22, label %for.end27

for.body22:                                       ; preds = %for.cond20
  %28 = load ptr, ptr %ptra.addr, align 8
  %29 = load i64, ptr %i, align 8
  %arrayidx23 = getelementptr inbounds double, ptr %28, i64 %29
  %30 = load double, ptr %arrayidx23, align 8
  %31 = load ptr, ptr %ptrb.addr, align 8
  store double %30, ptr %31, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body22
  %32 = load i64, ptr %i, align 8
  %inc25 = add nsw i64 %32, 1
  store i64 %inc25, ptr %i, align 8
  %33 = load i64, ptr %stride.addr, align 8
  %34 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %34, i64 %33
  store ptr %add.ptr26, ptr %ptrb.addr, align 8
  br label %for.cond20, !llvm.loop !51

for.end27:                                        ; preds = %for.cond20
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc33, %sw.bb28
  %35 = load i64, ptr %i, align 8
  %36 = load i64, ptr %n.addr, align 8
  %cmp30 = icmp slt i64 %35, %36
  br i1 %cmp30, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond29
  %37 = load ptr, ptr %ptra.addr, align 8
  %38 = load i64, ptr %i, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %37, i64 %38
  %39 = load float, ptr %arrayidx32, align 4
  %40 = load ptr, ptr %ptrb.addr, align 8
  store float %39, ptr %40, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body31
  %41 = load i64, ptr %i, align 8
  %inc34 = add nsw i64 %41, 1
  store i64 %inc34, ptr %i, align 8
  %42 = load i64, ptr %stride.addr, align 8
  %43 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %43, i64 %42
  store ptr %add.ptr35, ptr %ptrb.addr, align 8
  br label %for.cond29, !llvm.loop !52

for.end36:                                        ; preds = %for.cond29
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc42, %sw.bb37
  %44 = load i64, ptr %i, align 8
  %45 = load i64, ptr %n.addr, align 8
  %cmp39 = icmp slt i64 %44, %45
  br i1 %cmp39, label %for.body40, label %for.end45

for.body40:                                       ; preds = %for.cond38
  %46 = load ptr, ptr %ptra.addr, align 8
  %47 = load i64, ptr %i, align 8
  %arrayidx41 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx41, align 8
  %49 = load ptr, ptr %ptrb.addr, align 8
  store i64 %48, ptr %49, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %for.body40
  %50 = load i64, ptr %i, align 8
  %inc43 = add nsw i64 %50, 1
  store i64 %inc43, ptr %i, align 8
  %51 = load i64, ptr %stride.addr, align 8
  %52 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %52, i64 %51
  store ptr %add.ptr44, ptr %ptrb.addr, align 8
  br label %for.cond38, !llvm.loop !53

for.end45:                                        ; preds = %for.cond38
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc51, %sw.bb46
  %53 = load i64, ptr %i, align 8
  %54 = load i64, ptr %n.addr, align 8
  %cmp48 = icmp slt i64 %53, %54
  br i1 %cmp48, label %for.body49, label %for.end54

for.body49:                                       ; preds = %for.cond47
  %55 = load ptr, ptr %ptra.addr, align 8
  %56 = load i64, ptr %i, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %55, i64 %56
  %57 = load i64, ptr %arrayidx50, align 8
  %58 = load ptr, ptr %ptrb.addr, align 8
  store i64 %57, ptr %58, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.body49
  %59 = load i64, ptr %i, align 8
  %inc52 = add nsw i64 %59, 1
  store i64 %inc52, ptr %i, align 8
  %60 = load i64, ptr %stride.addr, align 8
  %61 = load ptr, ptr %ptrb.addr, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %61, i64 %60
  store ptr %add.ptr53, ptr %ptrb.addr, align 8
  br label %for.cond47, !llvm.loop !54

for.end54:                                        ; preds = %for.cond47
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %62 = load i64, ptr %type.addr, align 8
  call void @pnga_error(ptr noundef @.str.21, i64 noundef %62)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end54, %for.end45, %for.end36, %for.end27, %for.end18, %for.end9, %for.end
  ret void
}

declare void @ga_free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
