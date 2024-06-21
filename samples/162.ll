; ModuleID = 'samples/162.bc'
source_filename = "mcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk_mcore_t = type { i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gk_mop_t = type { i32, i64, ptr }

@.str = private unnamed_addr constant [22 x i8] c"gk_mcoreCreate: mcore\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gk_mcoreCreate: core\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"gk_mcoreCreate: mcore->mops\00", align 1
@.str.3 = private unnamed_addr constant [275 x i8] c"\0A gk_mcore statistics\0A           coresize: %12zu         nmops: %12zu  cmop: %6zu\0A        num_callocs: %12zu   num_hallocs: %12zu\0A       size_callocs: %12zu  size_hallocs: %12zu\0A        cur_callocs: %12zu   cur_hallocs: %12zu\0A        max_callocs: %12zu   max_hallocs: %12zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [111 x i8] c"***Warning: mcore memory was not fully freed when destroyed.\0A cur_callocs: %6zu  cur_hallocs: %6zu cmop: %6zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [145 x i8] c"\0A gk_mcore statistics\0A         nmops: %12zu  cmop: %6zu\0A   num_hallocs: %12zu\0A  size_hallocs: %12zu\0A   cur_hallocs: %12zu\0A   max_hallocs: %12zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [92 x i8] c"***Warning: mcore memory was not fully freed when destroyed.\0A cur_hallocs: %6zu cmop: %6zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"gk_mcoremalloc: ptr\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"Internal Error: wspace's core is about to be over-freed [%zu, %zu, %zd]\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Unknown mop type of %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"***Memory allocation for gkmcore failed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Incorrect mcore type operation.\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Could not find pointer %p in mcore\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Trying to delete a non-HEAP mop.\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"mcoreDel should never have been here!\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"gkmcoreDel should never have been here!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_mcoreCreate(i64 noundef %coresize) #0 {
entry:
  %coresize.addr = alloca i64, align 8
  %mcore = alloca ptr, align 8
  store i64 %coresize, ptr %coresize.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcore) #8
  %call = call ptr @gk_malloc(i64 noundef 112, ptr noundef @.str)
  store ptr %call, ptr %mcore, align 8, !tbaa !9
  %0 = load ptr, ptr %mcore, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 112, i1 false)
  %1 = load i64, ptr %coresize.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %mcore, align 8, !tbaa !9
  %coresize1 = getelementptr inbounds %struct.gk_mcore_t, ptr %2, i32 0, i32 0
  store i64 %1, ptr %coresize1, align 8, !tbaa !11
  %3 = load ptr, ptr %mcore, align 8, !tbaa !9
  %corecpos = getelementptr inbounds %struct.gk_mcore_t, ptr %3, i32 0, i32 1
  store i64 0, ptr %corecpos, align 8, !tbaa !13
  %4 = load i64, ptr %coresize.addr, align 8, !tbaa !5
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %mcore, align 8, !tbaa !9
  %coresize2 = getelementptr inbounds %struct.gk_mcore_t, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %coresize2, align 8, !tbaa !11
  %call3 = call ptr @gk_malloc(i64 noundef %6, ptr noundef @.str.1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call3, %cond.false ]
  %7 = load ptr, ptr %mcore, align 8, !tbaa !9
  %core = getelementptr inbounds %struct.gk_mcore_t, ptr %7, i32 0, i32 2
  store ptr %cond, ptr %core, align 8, !tbaa !14
  %8 = load ptr, ptr %mcore, align 8, !tbaa !9
  %nmops = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 3
  store i64 2048, ptr %nmops, align 8, !tbaa !15
  %9 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %9, i32 0, i32 4
  store i64 0, ptr %cmop, align 8, !tbaa !16
  %10 = load ptr, ptr %mcore, align 8, !tbaa !9
  %nmops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %nmops4, align 8, !tbaa !15
  %mul = mul i64 %11, 24
  %call5 = call ptr @gk_malloc(i64 noundef %mul, ptr noundef @.str.2)
  %12 = load ptr, ptr %mcore, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %12, i32 0, i32 5
  store ptr %call5, ptr %mops, align 8, !tbaa !17
  %13 = load ptr, ptr %mcore, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcore) #8
  ret ptr %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gk_malloc(i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_gkmcoreCreate() #0 {
entry:
  %retval = alloca ptr, align 8
  %mcore = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcore) #8
  %call = call noalias ptr @malloc(i64 noundef 112) #9
  store ptr %call, ptr %mcore, align 8, !tbaa !9
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %mcore, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 112, i1 false)
  %1 = load ptr, ptr %mcore, align 8, !tbaa !9
  %nmops = getelementptr inbounds %struct.gk_mcore_t, ptr %1, i32 0, i32 3
  store i64 2048, ptr %nmops, align 8, !tbaa !15
  %2 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %2, i32 0, i32 4
  store i64 0, ptr %cmop, align 8, !tbaa !16
  %3 = load ptr, ptr %mcore, align 8, !tbaa !9
  %nmops1 = getelementptr inbounds %struct.gk_mcore_t, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %nmops1, align 8, !tbaa !15
  %mul = mul i64 %4, 24
  %call2 = call noalias ptr @malloc(i64 noundef %mul) #9
  %5 = load ptr, ptr %mcore, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %5, i32 0, i32 5
  store ptr %call2, ptr %mops, align 8, !tbaa !17
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %mcore, align 8, !tbaa !9
  call void @free(ptr noundef %6) #8
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %mcore, align 8, !tbaa !9
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcore) #8
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local void @gk_mcoreDestroy(ptr noundef %r_mcore, i32 noundef %showstats) #0 {
entry:
  %r_mcore.addr = alloca ptr, align 8
  %showstats.addr = alloca i32, align 4
  %mcore = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r_mcore, ptr %r_mcore.addr, align 8, !tbaa !9
  store i32 %showstats, ptr %showstats.addr, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcore) #8
  %0 = load ptr, ptr %r_mcore.addr, align 8, !tbaa !9
  %1 = load ptr, ptr %0, align 8, !tbaa !9
  store ptr %1, ptr %mcore, align 8, !tbaa !9
  %2 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %showstats.addr, align 4, !tbaa !18
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %mcore, align 8, !tbaa !9
  %coresize = getelementptr inbounds %struct.gk_mcore_t, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %coresize, align 8, !tbaa !11
  %6 = load ptr, ptr %mcore, align 8, !tbaa !9
  %nmops = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %nmops, align 8, !tbaa !15
  %8 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 4
  %9 = load i64, ptr %cmop, align 8, !tbaa !16
  %10 = load ptr, ptr %mcore, align 8, !tbaa !9
  %num_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %10, i32 0, i32 6
  %11 = load i64, ptr %num_callocs, align 8, !tbaa !20
  %12 = load ptr, ptr %mcore, align 8, !tbaa !9
  %num_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %12, i32 0, i32 7
  %13 = load i64, ptr %num_hallocs, align 8, !tbaa !21
  %14 = load ptr, ptr %mcore, align 8, !tbaa !9
  %size_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %14, i32 0, i32 8
  %15 = load i64, ptr %size_callocs, align 8, !tbaa !22
  %16 = load ptr, ptr %mcore, align 8, !tbaa !9
  %size_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %16, i32 0, i32 9
  %17 = load i64, ptr %size_hallocs, align 8, !tbaa !23
  %18 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %18, i32 0, i32 10
  %19 = load i64, ptr %cur_callocs, align 8, !tbaa !24
  %20 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %20, i32 0, i32 11
  %21 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %22 = load ptr, ptr %mcore, align 8, !tbaa !9
  %max_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %22, i32 0, i32 12
  %23 = load i64, ptr %max_callocs, align 8, !tbaa !26
  %24 = load ptr, ptr %mcore, align 8, !tbaa !9
  %max_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %24, i32 0, i32 13
  %25 = load i64, ptr %max_hallocs, align 8, !tbaa !27
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23, i64 noundef %25)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %26 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_callocs3 = getelementptr inbounds %struct.gk_mcore_t, ptr %26, i32 0, i32 10
  %27 = load i64, ptr %cur_callocs3, align 8, !tbaa !24
  %cmp4 = icmp ne i64 %27, 0
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %28 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_hallocs5 = getelementptr inbounds %struct.gk_mcore_t, ptr %28, i32 0, i32 11
  %29 = load i64, ptr %cur_hallocs5, align 8, !tbaa !25
  %cmp6 = icmp ne i64 %29, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %30 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop8 = getelementptr inbounds %struct.gk_mcore_t, ptr %30, i32 0, i32 4
  %31 = load i64, ptr %cmop8, align 8, !tbaa !16
  %cmp9 = icmp ne i64 %31, 0
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end2
  %32 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_callocs11 = getelementptr inbounds %struct.gk_mcore_t, ptr %32, i32 0, i32 10
  %33 = load i64, ptr %cur_callocs11, align 8, !tbaa !24
  %34 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_hallocs12 = getelementptr inbounds %struct.gk_mcore_t, ptr %34, i32 0, i32 11
  %35 = load i64, ptr %cur_hallocs12, align 8, !tbaa !25
  %36 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop13 = getelementptr inbounds %struct.gk_mcore_t, ptr %36, i32 0, i32 4
  %37 = load i64, ptr %cmop13, align 8, !tbaa !16
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %33, i64 noundef %35, i64 noundef %37)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %lor.lhs.false7
  %38 = load ptr, ptr %mcore, align 8, !tbaa !9
  %core = getelementptr inbounds %struct.gk_mcore_t, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %mcore, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %39, i32 0, i32 5
  call void (ptr, ...) @gk_free(ptr noundef %core, ptr noundef %mops, ptr noundef %mcore, ptr noundef null)
  %40 = load ptr, ptr %r_mcore.addr, align 8, !tbaa !9
  store ptr null, ptr %40, align 8, !tbaa !9
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcore) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @printf(ptr noundef, ...) #2

declare void @gk_free(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local void @gk_gkmcoreDestroy(ptr noundef %r_mcore, i32 noundef %showstats) #0 {
entry:
  %r_mcore.addr = alloca ptr, align 8
  %showstats.addr = alloca i32, align 4
  %mcore = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r_mcore, ptr %r_mcore.addr, align 8, !tbaa !9
  store i32 %showstats, ptr %showstats.addr, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcore) #8
  %0 = load ptr, ptr %r_mcore.addr, align 8, !tbaa !9
  %1 = load ptr, ptr %0, align 8, !tbaa !9
  store ptr %1, ptr %mcore, align 8, !tbaa !9
  %2 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %showstats.addr, align 4, !tbaa !18
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %mcore, align 8, !tbaa !9
  %nmops = getelementptr inbounds %struct.gk_mcore_t, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %nmops, align 8, !tbaa !15
  %6 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %cmop, align 8, !tbaa !16
  %8 = load ptr, ptr %mcore, align 8, !tbaa !9
  %num_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 7
  %9 = load i64, ptr %num_hallocs, align 8, !tbaa !21
  %10 = load ptr, ptr %mcore, align 8, !tbaa !9
  %size_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %10, i32 0, i32 9
  %11 = load i64, ptr %size_hallocs, align 8, !tbaa !23
  %12 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %12, i32 0, i32 11
  %13 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %14 = load ptr, ptr %mcore, align 8, !tbaa !9
  %max_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %14, i32 0, i32 13
  %15 = load i64, ptr %max_hallocs, align 8, !tbaa !27
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %16 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_hallocs3 = getelementptr inbounds %struct.gk_mcore_t, ptr %16, i32 0, i32 11
  %17 = load i64, ptr %cur_hallocs3, align 8, !tbaa !25
  %cmp4 = icmp ne i64 %17, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %18 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop5 = getelementptr inbounds %struct.gk_mcore_t, ptr %18, i32 0, i32 4
  %19 = load i64, ptr %cmop5, align 8, !tbaa !16
  %cmp6 = icmp ne i64 %19, 0
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %lor.lhs.false, %if.end2
  %20 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cur_hallocs8 = getelementptr inbounds %struct.gk_mcore_t, ptr %20, i32 0, i32 11
  %21 = load i64, ptr %cur_hallocs8, align 8, !tbaa !25
  %22 = load ptr, ptr %mcore, align 8, !tbaa !9
  %cmop9 = getelementptr inbounds %struct.gk_mcore_t, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %cmop9, align 8, !tbaa !16
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %21, i64 noundef %23)
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %lor.lhs.false
  %24 = load ptr, ptr %mcore, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %mops, align 8, !tbaa !17
  call void @free(ptr noundef %25) #8
  %26 = load ptr, ptr %mcore, align 8, !tbaa !9
  call void @free(ptr noundef %26) #8
  %27 = load ptr, ptr %r_mcore.addr, align 8, !tbaa !9
  store ptr null, ptr %27, align 8, !tbaa !9
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcore) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_mcoreMalloc(ptr noundef %mcore, i64 noundef %nbytes) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  store i64 %nbytes, ptr %nbytes.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8
  %0 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %rem = urem i64 %0, 8
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %rem1 = urem i64 %1, 8
  %sub = sub i64 8, %rem1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  %2 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %add = add i64 %2, %cond
  store i64 %add, ptr %nbytes.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %corecpos = getelementptr inbounds %struct.gk_mcore_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %corecpos, align 8, !tbaa !13
  %5 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %add2 = add i64 %4, %5
  %6 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %coresize = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %coresize, align 8, !tbaa !11
  %cmp3 = icmp ult i64 %add2, %7
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %8 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %core = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %core, align 8, !tbaa !14
  %10 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %corecpos4 = getelementptr inbounds %struct.gk_mcore_t, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %corecpos4, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %11
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !9
  %12 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %corecpos5 = getelementptr inbounds %struct.gk_mcore_t, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %corecpos5, align 8, !tbaa !13
  %add6 = add i64 %14, %12
  store i64 %add6, ptr %corecpos5, align 8, !tbaa !13
  %15 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %16 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %ptr, align 8, !tbaa !9
  call void @gk_mcoreAdd(ptr noundef %15, i32 noundef 2, i64 noundef %16, ptr noundef %17)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %18 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %call = call ptr @gk_malloc(i64 noundef %18, ptr noundef @.str.7)
  store ptr %call, ptr %ptr, align 8, !tbaa !9
  %19 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %20 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %21 = load ptr, ptr %ptr, align 8, !tbaa !9
  call void @gk_mcoreAdd(ptr noundef %19, i32 noundef 3, i64 noundef %20, ptr noundef %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load ptr, ptr %ptr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define dso_local void @gk_mcoreAdd(ptr noundef %mcore, i32 noundef %type, i64 noundef %nbytes, ptr noundef %ptr) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %nbytes.addr = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  store i32 %type, ptr %type.addr, align 4, !tbaa !18
  store i64 %nbytes, ptr %nbytes.addr, align 8, !tbaa !5
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %cmop, align 8, !tbaa !16
  %2 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %nmops = getelementptr inbounds %struct.gk_mcore_t, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %nmops, align 8, !tbaa !15
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %nmops1 = getelementptr inbounds %struct.gk_mcore_t, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %nmops1, align 8, !tbaa !15
  %mul = mul i64 %5, 2
  store i64 %mul, ptr %nmops1, align 8, !tbaa !15
  %6 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %mops, align 8, !tbaa !17
  %8 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %nmops2 = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %nmops2, align 8, !tbaa !15
  %mul3 = mul i64 %9, 24
  %call = call ptr @realloc(ptr noundef %7, i64 noundef %mul3) #10
  %10 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %10, i32 0, i32 5
  store ptr %call, ptr %mops4, align 8, !tbaa !17
  %11 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops5 = getelementptr inbounds %struct.gk_mcore_t, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %mops5, align 8, !tbaa !17
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %13 = load i32, ptr %type.addr, align 4, !tbaa !18
  %14 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops9 = getelementptr inbounds %struct.gk_mcore_t, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %mops9, align 8, !tbaa !17
  %16 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop10 = getelementptr inbounds %struct.gk_mcore_t, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %cmop10, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds %struct.gk_mop_t, ptr %15, i64 %17
  %type11 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx, i32 0, i32 0
  store i32 %13, ptr %type11, align 8, !tbaa !28
  %18 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops12 = getelementptr inbounds %struct.gk_mcore_t, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %mops12, align 8, !tbaa !17
  %21 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop13 = getelementptr inbounds %struct.gk_mcore_t, ptr %21, i32 0, i32 4
  %22 = load i64, ptr %cmop13, align 8, !tbaa !16
  %arrayidx14 = getelementptr inbounds %struct.gk_mop_t, ptr %20, i64 %22
  %nbytes15 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx14, i32 0, i32 1
  store i64 %18, ptr %nbytes15, align 8, !tbaa !30
  %23 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %24 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops16 = getelementptr inbounds %struct.gk_mcore_t, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %mops16, align 8, !tbaa !17
  %26 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop17 = getelementptr inbounds %struct.gk_mcore_t, ptr %26, i32 0, i32 4
  %27 = load i64, ptr %cmop17, align 8, !tbaa !16
  %arrayidx18 = getelementptr inbounds %struct.gk_mop_t, ptr %25, i64 %27
  %ptr19 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx18, i32 0, i32 2
  store ptr %23, ptr %ptr19, align 8, !tbaa !31
  %28 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop20 = getelementptr inbounds %struct.gk_mcore_t, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %cmop20, align 8, !tbaa !16
  %inc = add i64 %29, 1
  store i64 %inc, ptr %cmop20, align 8, !tbaa !16
  %30 = load i32, ptr %type.addr, align 4, !tbaa !18
  switch i32 %30, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb
    i32 3, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end8
  %31 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %num_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %31, i32 0, i32 6
  %32 = load i64, ptr %num_callocs, align 8, !tbaa !20
  %inc21 = add i64 %32, 1
  store i64 %inc21, ptr %num_callocs, align 8, !tbaa !20
  %33 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %size_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %34, i32 0, i32 8
  %35 = load i64, ptr %size_callocs, align 8, !tbaa !22
  %add = add i64 %35, %33
  store i64 %add, ptr %size_callocs, align 8, !tbaa !22
  %36 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %37, i32 0, i32 10
  %38 = load i64, ptr %cur_callocs, align 8, !tbaa !24
  %add22 = add i64 %38, %36
  store i64 %add22, ptr %cur_callocs, align 8, !tbaa !24
  %39 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %max_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %39, i32 0, i32 12
  %40 = load i64, ptr %max_callocs, align 8, !tbaa !26
  %41 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_callocs23 = getelementptr inbounds %struct.gk_mcore_t, ptr %41, i32 0, i32 10
  %42 = load i64, ptr %cur_callocs23, align 8, !tbaa !24
  %cmp24 = icmp ult i64 %40, %42
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %sw.bb
  %43 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_callocs26 = getelementptr inbounds %struct.gk_mcore_t, ptr %43, i32 0, i32 10
  %44 = load i64, ptr %cur_callocs26, align 8, !tbaa !24
  %45 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %max_callocs27 = getelementptr inbounds %struct.gk_mcore_t, ptr %45, i32 0, i32 12
  store i64 %44, ptr %max_callocs27, align 8, !tbaa !26
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %sw.bb
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end8
  %46 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %num_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %46, i32 0, i32 7
  %47 = load i64, ptr %num_hallocs, align 8, !tbaa !21
  %inc30 = add i64 %47, 1
  store i64 %inc30, ptr %num_hallocs, align 8, !tbaa !21
  %48 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %49 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %size_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %49, i32 0, i32 9
  %50 = load i64, ptr %size_hallocs, align 8, !tbaa !23
  %add31 = add i64 %50, %48
  store i64 %add31, ptr %size_hallocs, align 8, !tbaa !23
  %51 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %52, i32 0, i32 11
  %53 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %add32 = add i64 %53, %51
  store i64 %add32, ptr %cur_hallocs, align 8, !tbaa !25
  %54 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %max_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %54, i32 0, i32 13
  %55 = load i64, ptr %max_hallocs, align 8, !tbaa !27
  %56 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs33 = getelementptr inbounds %struct.gk_mcore_t, ptr %56, i32 0, i32 11
  %57 = load i64, ptr %cur_hallocs33, align 8, !tbaa !25
  %cmp34 = icmp ult i64 %55, %57
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %sw.bb29
  %58 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs36 = getelementptr inbounds %struct.gk_mcore_t, ptr %58, i32 0, i32 11
  %59 = load i64, ptr %cur_hallocs36, align 8, !tbaa !25
  %60 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %max_hallocs37 = getelementptr inbounds %struct.gk_mcore_t, ptr %60, i32 0, i32 13
  store i64 %59, ptr %max_hallocs37, align 8, !tbaa !27
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %sw.bb29
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end38, %if.end28, %if.end8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gk_mcorePush(ptr noundef %mcore) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  call void @gk_mcoreAdd(ptr noundef %0, i32 noundef 1, i64 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gk_gkmcorePush(ptr noundef %mcore) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  call void @gk_gkmcoreAdd(ptr noundef %0, i32 noundef 1, i64 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gk_gkmcoreAdd(ptr noundef %mcore, i32 noundef %type, i64 noundef %nbytes, ptr noundef %ptr) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %nbytes.addr = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  store i32 %type, ptr %type.addr, align 4, !tbaa !18
  store i64 %nbytes, ptr %nbytes.addr, align 8, !tbaa !5
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %cmop, align 8, !tbaa !16
  %2 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %nmops = getelementptr inbounds %struct.gk_mcore_t, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %nmops, align 8, !tbaa !15
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %nmops1 = getelementptr inbounds %struct.gk_mcore_t, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %nmops1, align 8, !tbaa !15
  %mul = mul i64 %5, 2
  store i64 %mul, ptr %nmops1, align 8, !tbaa !15
  %6 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %mops, align 8, !tbaa !17
  %8 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %nmops2 = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %nmops2, align 8, !tbaa !15
  %mul3 = mul i64 %9, 24
  %call = call ptr @realloc(ptr noundef %7, i64 noundef %mul3) #10
  %10 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %10, i32 0, i32 5
  store ptr %call, ptr %mops4, align 8, !tbaa !17
  %11 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops5 = getelementptr inbounds %struct.gk_mcore_t, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %mops5, align 8, !tbaa !17
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.10)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %13 = load i32, ptr %type.addr, align 4, !tbaa !18
  %14 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops9 = getelementptr inbounds %struct.gk_mcore_t, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %mops9, align 8, !tbaa !17
  %16 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop10 = getelementptr inbounds %struct.gk_mcore_t, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %cmop10, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds %struct.gk_mop_t, ptr %15, i64 %17
  %type11 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx, i32 0, i32 0
  store i32 %13, ptr %type11, align 8, !tbaa !28
  %18 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops12 = getelementptr inbounds %struct.gk_mcore_t, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %mops12, align 8, !tbaa !17
  %21 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop13 = getelementptr inbounds %struct.gk_mcore_t, ptr %21, i32 0, i32 4
  %22 = load i64, ptr %cmop13, align 8, !tbaa !16
  %arrayidx14 = getelementptr inbounds %struct.gk_mop_t, ptr %20, i64 %22
  %nbytes15 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx14, i32 0, i32 1
  store i64 %18, ptr %nbytes15, align 8, !tbaa !30
  %23 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %24 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops16 = getelementptr inbounds %struct.gk_mcore_t, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %mops16, align 8, !tbaa !17
  %26 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop17 = getelementptr inbounds %struct.gk_mcore_t, ptr %26, i32 0, i32 4
  %27 = load i64, ptr %cmop17, align 8, !tbaa !16
  %arrayidx18 = getelementptr inbounds %struct.gk_mop_t, ptr %25, i64 %27
  %ptr19 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx18, i32 0, i32 2
  store ptr %23, ptr %ptr19, align 8, !tbaa !31
  %28 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop20 = getelementptr inbounds %struct.gk_mcore_t, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %cmop20, align 8, !tbaa !16
  %inc = add i64 %29, 1
  store i64 %inc, ptr %cmop20, align 8, !tbaa !16
  %30 = load i32, ptr %type.addr, align 4, !tbaa !18
  switch i32 %30, label %sw.default [
    i32 1, label %sw.epilog
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end8
  %31 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %num_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %31, i32 0, i32 7
  %32 = load i64, ptr %num_hallocs, align 8, !tbaa !21
  %inc21 = add i64 %32, 1
  store i64 %inc21, ptr %num_hallocs, align 8, !tbaa !21
  %33 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %size_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %34, i32 0, i32 9
  %35 = load i64, ptr %size_hallocs, align 8, !tbaa !23
  %add = add i64 %35, %33
  store i64 %add, ptr %size_hallocs, align 8, !tbaa !23
  %36 = load i64, ptr %nbytes.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %37, i32 0, i32 11
  %38 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %add22 = add i64 %38, %36
  store i64 %add22, ptr %cur_hallocs, align 8, !tbaa !25
  %39 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %max_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %39, i32 0, i32 13
  %40 = load i64, ptr %max_hallocs, align 8, !tbaa !27
  %41 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs23 = getelementptr inbounds %struct.gk_mcore_t, ptr %41, i32 0, i32 11
  %42 = load i64, ptr %cur_hallocs23, align 8, !tbaa !25
  %cmp24 = icmp ult i64 %40, %42
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %sw.bb
  %43 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs26 = getelementptr inbounds %struct.gk_mcore_t, ptr %43, i32 0, i32 11
  %44 = load i64, ptr %cur_hallocs26, align 8, !tbaa !25
  %45 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %max_hallocs27 = getelementptr inbounds %struct.gk_mcore_t, ptr %45, i32 0, i32 13
  store i64 %44, ptr %max_hallocs27, align 8, !tbaa !27
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end28, %if.end8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gk_mcorePop(ptr noundef %mcore) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %cmop, align 8, !tbaa !16
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop1 = getelementptr inbounds %struct.gk_mcore_t, ptr %2, i32 0, i32 4
  %3 = load i64, ptr %cmop1, align 8, !tbaa !16
  %dec = add i64 %3, -1
  store i64 %dec, ptr %cmop1, align 8, !tbaa !16
  %4 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %mops, align 8, !tbaa !17
  %6 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop2 = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %cmop2, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds %struct.gk_mop_t, ptr %5, i64 %7
  %type = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx, i32 0, i32 0
  %8 = load i32, ptr %type, align 8, !tbaa !28
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb23
  ]

sw.bb:                                            ; preds = %while.body
  br label %DONE

sw.bb3:                                           ; preds = %while.body
  %9 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %corecpos = getelementptr inbounds %struct.gk_mcore_t, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %corecpos, align 8, !tbaa !13
  %11 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %mops4, align 8, !tbaa !17
  %13 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop5 = getelementptr inbounds %struct.gk_mcore_t, ptr %13, i32 0, i32 4
  %14 = load i64, ptr %cmop5, align 8, !tbaa !16
  %arrayidx6 = getelementptr inbounds %struct.gk_mop_t, ptr %12, i64 %14
  %nbytes = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx6, i32 0, i32 1
  %15 = load i64, ptr %nbytes, align 8, !tbaa !30
  %cmp7 = icmp ult i64 %10, %15
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  %16 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %coresize = getelementptr inbounds %struct.gk_mcore_t, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %coresize, align 8, !tbaa !11
  %18 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %corecpos8 = getelementptr inbounds %struct.gk_mcore_t, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %corecpos8, align 8, !tbaa !13
  %20 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops9 = getelementptr inbounds %struct.gk_mcore_t, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %mops9, align 8, !tbaa !17
  %22 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop10 = getelementptr inbounds %struct.gk_mcore_t, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %cmop10, align 8, !tbaa !16
  %arrayidx11 = getelementptr inbounds %struct.gk_mop_t, ptr %21, i64 %23
  %nbytes12 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx11, i32 0, i32 1
  %24 = load i64, ptr %nbytes12, align 8, !tbaa !30
  call void (ptr, ...) @errexit(ptr noundef @.str.8, i64 noundef %17, i64 noundef %19, i64 noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3
  %25 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops13 = getelementptr inbounds %struct.gk_mcore_t, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %mops13, align 8, !tbaa !17
  %27 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop14 = getelementptr inbounds %struct.gk_mcore_t, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %cmop14, align 8, !tbaa !16
  %arrayidx15 = getelementptr inbounds %struct.gk_mop_t, ptr %26, i64 %28
  %nbytes16 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx15, i32 0, i32 1
  %29 = load i64, ptr %nbytes16, align 8, !tbaa !30
  %30 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %corecpos17 = getelementptr inbounds %struct.gk_mcore_t, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %corecpos17, align 8, !tbaa !13
  %sub = sub i64 %31, %29
  store i64 %sub, ptr %corecpos17, align 8, !tbaa !13
  %32 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops18 = getelementptr inbounds %struct.gk_mcore_t, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %mops18, align 8, !tbaa !17
  %34 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop19 = getelementptr inbounds %struct.gk_mcore_t, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %cmop19, align 8, !tbaa !16
  %arrayidx20 = getelementptr inbounds %struct.gk_mop_t, ptr %33, i64 %35
  %nbytes21 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx20, i32 0, i32 1
  %36 = load i64, ptr %nbytes21, align 8, !tbaa !30
  %37 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_callocs = getelementptr inbounds %struct.gk_mcore_t, ptr %37, i32 0, i32 10
  %38 = load i64, ptr %cur_callocs, align 8, !tbaa !24
  %sub22 = sub i64 %38, %36
  store i64 %sub22, ptr %cur_callocs, align 8, !tbaa !24
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  %39 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops24 = getelementptr inbounds %struct.gk_mcore_t, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %mops24, align 8, !tbaa !17
  %41 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop25 = getelementptr inbounds %struct.gk_mcore_t, ptr %41, i32 0, i32 4
  %42 = load i64, ptr %cmop25, align 8, !tbaa !16
  %arrayidx26 = getelementptr inbounds %struct.gk_mop_t, ptr %40, i64 %42
  %ptr = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx26, i32 0, i32 2
  call void (ptr, ...) @gk_free(ptr noundef %ptr, ptr noundef null)
  %43 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops27 = getelementptr inbounds %struct.gk_mcore_t, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %mops27, align 8, !tbaa !17
  %45 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop28 = getelementptr inbounds %struct.gk_mcore_t, ptr %45, i32 0, i32 4
  %46 = load i64, ptr %cmop28, align 8, !tbaa !16
  %arrayidx29 = getelementptr inbounds %struct.gk_mop_t, ptr %44, i64 %46
  %nbytes30 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx29, i32 0, i32 1
  %47 = load i64, ptr %nbytes30, align 8, !tbaa !30
  %48 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %48, i32 0, i32 11
  %49 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %sub31 = sub i64 %49, %47
  store i64 %sub31, ptr %cur_hallocs, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %50 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops32 = getelementptr inbounds %struct.gk_mcore_t, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %mops32, align 8, !tbaa !17
  %52 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop33 = getelementptr inbounds %struct.gk_mcore_t, ptr %52, i32 0, i32 4
  %53 = load i64, ptr %cmop33, align 8, !tbaa !16
  %arrayidx34 = getelementptr inbounds %struct.gk_mop_t, ptr %51, i64 %53
  %type35 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx34, i32 0, i32 0
  %54 = load i32, ptr %type35, align 8, !tbaa !28
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.9, i32 noundef %54)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %if.end
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  br label %DONE

DONE:                                             ; preds = %while.end, %sw.bb
  ret void
}

declare void @errexit(ptr noundef, ...) #2

declare void @gk_errexit(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local void @gk_gkmcorePop(ptr noundef %mcore) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %cmop, align 8, !tbaa !16
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop1 = getelementptr inbounds %struct.gk_mcore_t, ptr %2, i32 0, i32 4
  %3 = load i64, ptr %cmop1, align 8, !tbaa !16
  %dec = add i64 %3, -1
  store i64 %dec, ptr %cmop1, align 8, !tbaa !16
  %4 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %mops, align 8, !tbaa !17
  %6 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop2 = getelementptr inbounds %struct.gk_mcore_t, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %cmop2, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds %struct.gk_mop_t, ptr %5, i64 %7
  %type = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx, i32 0, i32 0
  %8 = load i32, ptr %type, align 8, !tbaa !28
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %while.body
  br label %DONE

sw.bb3:                                           ; preds = %while.body
  %9 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %mops4, align 8, !tbaa !17
  %11 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop5 = getelementptr inbounds %struct.gk_mcore_t, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %cmop5, align 8, !tbaa !16
  %arrayidx6 = getelementptr inbounds %struct.gk_mop_t, ptr %10, i64 %12
  %ptr = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx6, i32 0, i32 2
  %13 = load ptr, ptr %ptr, align 8, !tbaa !31
  call void @free(ptr noundef %13) #8
  %14 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops7 = getelementptr inbounds %struct.gk_mcore_t, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %mops7, align 8, !tbaa !17
  %16 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop8 = getelementptr inbounds %struct.gk_mcore_t, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %cmop8, align 8, !tbaa !16
  %arrayidx9 = getelementptr inbounds %struct.gk_mop_t, ptr %15, i64 %17
  %nbytes = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx9, i32 0, i32 1
  %18 = load i64, ptr %nbytes, align 8, !tbaa !30
  %19 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %19, i32 0, i32 11
  %20 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %sub = sub i64 %20, %18
  store i64 %sub, ptr %cur_hallocs, align 8, !tbaa !25
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %21 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops10 = getelementptr inbounds %struct.gk_mcore_t, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %mops10, align 8, !tbaa !17
  %23 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop11 = getelementptr inbounds %struct.gk_mcore_t, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %cmop11, align 8, !tbaa !16
  %arrayidx12 = getelementptr inbounds %struct.gk_mop_t, ptr %22, i64 %24
  %type13 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx12, i32 0, i32 0
  %25 = load i32, ptr %type13, align 8, !tbaa !28
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.9, i32 noundef %25)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  br label %DONE

DONE:                                             ; preds = %while.end, %sw.bb
  ret void
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @gk_mcoreDel(ptr noundef %mcore, ptr noundef %ptr) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %cmop, align 8, !tbaa !16
  %sub = sub i64 %1, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !18
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %mops, align 8, !tbaa !17
  %5 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.gk_mop_t, ptr %4, i64 %idxprom
  %type = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx, i32 0, i32 0
  %6 = load i32, ptr %type, align 8, !tbaa !28
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.12, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %mops4, align 8, !tbaa !17
  %10 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.gk_mop_t, ptr %9, i64 %idxprom5
  %ptr7 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx6, i32 0, i32 2
  %11 = load ptr, ptr %ptr7, align 8, !tbaa !31
  %12 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %cmp8 = icmp eq ptr %11, %12
  br i1 %cmp8, label %if.then10, label %if.end29

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops11 = getelementptr inbounds %struct.gk_mcore_t, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %mops11, align 8, !tbaa !17
  %15 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds %struct.gk_mop_t, ptr %14, i64 %idxprom12
  %type14 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx13, i32 0, i32 0
  %16 = load i32, ptr %type14, align 8, !tbaa !28
  %cmp15 = icmp ne i32 %16, 3
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then10
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.13)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then10
  %17 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops19 = getelementptr inbounds %struct.gk_mcore_t, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %mops19, align 8, !tbaa !17
  %19 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds %struct.gk_mop_t, ptr %18, i64 %idxprom20
  %nbytes = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx21, i32 0, i32 1
  %20 = load i64, ptr %nbytes, align 8, !tbaa !30
  %21 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %21, i32 0, i32 11
  %22 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %sub22 = sub i64 %22, %20
  store i64 %sub22, ptr %cur_hallocs, align 8, !tbaa !25
  %23 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops23 = getelementptr inbounds %struct.gk_mcore_t, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %mops23, align 8, !tbaa !17
  %25 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds %struct.gk_mop_t, ptr %24, i64 %idxprom24
  %26 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops26 = getelementptr inbounds %struct.gk_mcore_t, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %mops26, align 8, !tbaa !17
  %28 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop27 = getelementptr inbounds %struct.gk_mcore_t, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %cmop27, align 8, !tbaa !16
  %dec = add i64 %29, -1
  store i64 %dec, ptr %cmop27, align 8, !tbaa !16
  %arrayidx28 = getelementptr inbounds %struct.gk_mop_t, ptr %27, i64 %dec
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx25, ptr align 8 %arrayidx28, i64 24, i1 false), !tbaa.struct !35
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %30 = load i32, ptr %i, align 4, !tbaa !18
  %dec30 = add nsw i32 %30, -1
  store i32 %dec30, ptr %i, align 4, !tbaa !18
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.14)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @gk_gkmcoreDel(ptr noundef %mcore, ptr noundef %ptr) #0 {
entry:
  %mcore.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mcore, ptr %mcore.addr, align 8, !tbaa !9
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop = getelementptr inbounds %struct.gk_mcore_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %cmop, align 8, !tbaa !16
  %sub = sub i64 %1, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %i, align 4, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !18
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops = getelementptr inbounds %struct.gk_mcore_t, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %mops, align 8, !tbaa !17
  %5 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.gk_mop_t, ptr %4, i64 %idxprom
  %type = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx, i32 0, i32 0
  %6 = load i32, ptr %type, align 8, !tbaa !28
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.12, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops4 = getelementptr inbounds %struct.gk_mcore_t, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %mops4, align 8, !tbaa !17
  %10 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.gk_mop_t, ptr %9, i64 %idxprom5
  %ptr7 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx6, i32 0, i32 2
  %11 = load ptr, ptr %ptr7, align 8, !tbaa !31
  %12 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %cmp8 = icmp eq ptr %11, %12
  br i1 %cmp8, label %if.then10, label %if.end29

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops11 = getelementptr inbounds %struct.gk_mcore_t, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %mops11, align 8, !tbaa !17
  %15 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds %struct.gk_mop_t, ptr %14, i64 %idxprom12
  %type14 = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx13, i32 0, i32 0
  %16 = load i32, ptr %type14, align 8, !tbaa !28
  %cmp15 = icmp ne i32 %16, 3
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then10
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.13)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then10
  %17 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops19 = getelementptr inbounds %struct.gk_mcore_t, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %mops19, align 8, !tbaa !17
  %19 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds %struct.gk_mop_t, ptr %18, i64 %idxprom20
  %nbytes = getelementptr inbounds %struct.gk_mop_t, ptr %arrayidx21, i32 0, i32 1
  %20 = load i64, ptr %nbytes, align 8, !tbaa !30
  %21 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cur_hallocs = getelementptr inbounds %struct.gk_mcore_t, ptr %21, i32 0, i32 11
  %22 = load i64, ptr %cur_hallocs, align 8, !tbaa !25
  %sub22 = sub i64 %22, %20
  store i64 %sub22, ptr %cur_hallocs, align 8, !tbaa !25
  %23 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops23 = getelementptr inbounds %struct.gk_mcore_t, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %mops23, align 8, !tbaa !17
  %25 = load i32, ptr %i, align 4, !tbaa !18
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds %struct.gk_mop_t, ptr %24, i64 %idxprom24
  %26 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %mops26 = getelementptr inbounds %struct.gk_mcore_t, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %mops26, align 8, !tbaa !17
  %28 = load ptr, ptr %mcore.addr, align 8, !tbaa !9
  %cmop27 = getelementptr inbounds %struct.gk_mcore_t, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %cmop27, align 8, !tbaa !16
  %dec = add i64 %29, -1
  store i64 %dec, ptr %cmop27, align 8, !tbaa !16
  %arrayidx28 = getelementptr inbounds %struct.gk_mop_t, ptr %27, i64 %dec
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx25, ptr align 8 %arrayidx28, i64 24, i1 false), !tbaa.struct !35
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %30 = load i32, ptr %i, align 4, !tbaa !18
  %dec30 = add nsw i32 %30, -1
  store i32 %dec30, ptr %i, align 4, !tbaa !18
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 6, ptr noundef @.str.15)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end18
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"gk_mcore_t", !6, i64 0, !6, i64 8, !10, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104}
!13 = !{!12, !6, i64 8}
!14 = !{!12, !10, i64 16}
!15 = !{!12, !6, i64 24}
!16 = !{!12, !6, i64 32}
!17 = !{!12, !10, i64 40}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !7, i64 0}
!20 = !{!12, !6, i64 48}
!21 = !{!12, !6, i64 56}
!22 = !{!12, !6, i64 64}
!23 = !{!12, !6, i64 72}
!24 = !{!12, !6, i64 80}
!25 = !{!12, !6, i64 88}
!26 = !{!12, !6, i64 96}
!27 = !{!12, !6, i64 104}
!28 = !{!29, !19, i64 0}
!29 = !{!"gk_mop_t", !19, i64 0, !6, i64 8, !10, i64 16}
!30 = !{!29, !6, i64 8}
!31 = !{!29, !10, i64 16}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{i64 0, i64 4, !18, i64 8, i64 8, !5, i64 16, i64 8, !9}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
