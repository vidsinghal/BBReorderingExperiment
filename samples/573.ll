; ModuleID = 'samples/573.bc'
source_filename = "../Core/cholmod_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cholmod_common_struct = type { double, double, double, i64, i64, double, i32, i32, i32, i32, i32, i32, i32, [3 x double], [3 x i64], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, [10 x %struct.cholmod_method_struct], i32, i32, double, double, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, i64, i64, i64, double, double, double, double, double, i32, i32, double, double, i32, i32, double, double, double, double, double, double, double, [10 x i64], i32, i64, double, i64, double, i64, i32, ptr, [8 x ptr], [3 x ptr], ptr, [8 x ptr], ptr, i64, ptr, i64, i64, i32, double, double, double, double, double, double, double, double, double, double, double, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cholmod_method_struct = type { double, double, double, double, double, [4 x double], i64, [4 x i64], i32, i32, i32, i32, i32, i32, [4 x i64] }

@.str = private unnamed_addr constant [25 x i8] c"../Core/cholmod_memory.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sizeof(item) must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"problem too large\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"invalid xtype\00", align 1

; Function Attrs: nounwind uwtable
define i64 @cholmod_l_add_size_t(i64 noundef %a, i64 noundef %b, ptr noundef %ok) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %ok.addr = alloca ptr, align 8
  %s = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ok, ptr %ok.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %add = add i64 %0, %1
  store i64 %add, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i64, ptr %s, align 8, !tbaa !4
  %5 = load i64, ptr %a.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  store i32 %land.ext, ptr %7, align 4, !tbaa !10
  %8 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %9 = load i32, ptr %8, align 4, !tbaa !10
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %10 = load i64, ptr %s, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 0, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  ret i64 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @cholmod_l_mult_size_t(i64 noundef %a, i64 noundef %k, ptr noundef %ok) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %k.addr = alloca i64, align 8
  %ok.addr = alloca ptr, align 8
  %p = alloca i64, align 8
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %ok, ptr %ok.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  store i64 0, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  br label %while.cond

while.cond:                                       ; preds = %land.end10, %entry
  %0 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %1 = load i32, ptr %0, align 4, !tbaa !10
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %k.addr, align 8, !tbaa !4
  %rem = urem i64 %2, 2
  %tobool1 = icmp ne i64 %rem, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i64, ptr %p, align 8, !tbaa !4
  %4 = load i64, ptr %a.addr, align 8, !tbaa !4
  %add = add i64 %3, %4
  store i64 %add, ptr %p, align 8, !tbaa !4
  %5 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %7 = load i64, ptr %p, align 8, !tbaa !4
  %8 = load i64, ptr %a.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %9 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %10 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  store i32 %land.ext, ptr %10, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %land.end, %while.body
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %div = udiv i64 %11, 2
  store i64 %div, ptr %k.addr, align 8, !tbaa !4
  %12 = load i64, ptr %k.addr, align 8, !tbaa !4
  %tobool3 = icmp ne i64 %12, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %13 = load i64, ptr %p, align 8, !tbaa !4
  store i64 %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %14 = load i64, ptr %a.addr, align 8, !tbaa !4
  %15 = load i64, ptr %a.addr, align 8, !tbaa !4
  %add6 = add i64 %14, %15
  store i64 %add6, ptr %s, align 8, !tbaa !4
  %16 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %17 = load i32, ptr %16, align 4, !tbaa !10
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %land.rhs8, label %land.end10

land.rhs8:                                        ; preds = %if.end5
  %18 = load i64, ptr %s, align 8, !tbaa !4
  %19 = load i64, ptr %a.addr, align 8, !tbaa !4
  %cmp9 = icmp uge i64 %18, %19
  br label %land.end10

land.end10:                                       ; preds = %land.rhs8, %if.end5
  %20 = phi i1 [ false, %if.end5 ], [ %cmp9, %land.rhs8 ]
  %land.ext11 = zext i1 %20 to i32
  %21 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  store i32 %land.ext11, ptr %21, align 4, !tbaa !10
  %22 = load i64, ptr %s, align 8, !tbaa !4
  store i64 %22, ptr %a.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  %23 = load i64, ptr %retval, align 8
  ret i64 %23
}

; Function Attrs: uwtable
define ptr @cholmod_l_malloc(i64 noundef %n, i64 noundef %size, ptr noundef %Common) #2 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %Common.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %itype = getelementptr inbounds %struct.cholmod_common_struct, ptr %1, i32 0, i32 40
  %2 = load i32, ptr %itype, align 8, !tbaa !14
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %dtype = getelementptr inbounds %struct.cholmod_common_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %dtype, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.cholmod_common_struct, ptr %5, i32 0, i32 43
  store i32 -4, ptr %status, align 4, !tbaa !18
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load i64, ptr %size.addr, align 8, !tbaa !4
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call = call i32 @cholmod_l_error(i32 noundef -4, ptr noundef @.str, i32 noundef 129, ptr noundef @.str.1, ptr noundef %7)
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end25

if.else:                                          ; preds = %if.end4
  %8 = load i64, ptr %n.addr, align 8, !tbaa !4
  %9 = load i64, ptr %size.addr, align 8, !tbaa !4
  %div = udiv i64 -1, %9
  %cmp7 = icmp uge i64 %8, %div
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.else
  %10 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp9 = icmp uge i64 %10, 9223372036854775807
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %lor.lhs.false8, %if.else
  %11 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call11 = call i32 @cholmod_l_error(i32 noundef -3, ptr noundef @.str, i32 noundef 135, ptr noundef @.str.2, ptr noundef %11)
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end24

if.else12:                                        ; preds = %lor.lhs.false8
  %12 = load i64, ptr %n.addr, align 8, !tbaa !4
  %13 = load i64, ptr %size.addr, align 8, !tbaa !4
  %call13 = call ptr @SuiteSparse_malloc(i64 noundef %12, i64 noundef %13)
  store ptr %call13, ptr %p, align 8, !tbaa !8
  %14 = load ptr, ptr %p, align 8, !tbaa !8
  %cmp14 = icmp eq ptr %14, null
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else12
  %15 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call16 = call i32 @cholmod_l_error(i32 noundef -2, ptr noundef @.str, i32 noundef 146, ptr noundef @.str.3, ptr noundef %15)
  br label %if.end23

if.else17:                                        ; preds = %if.else12
  %16 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %malloc_count = getelementptr inbounds %struct.cholmod_common_struct, ptr %16, i32 0, i32 48
  %17 = load i64, ptr %malloc_count, align 8, !tbaa !19
  %inc = add i64 %17, 1
  store i64 %inc, ptr %malloc_count, align 8, !tbaa !19
  %18 = load i64, ptr %n.addr, align 8, !tbaa !4
  %19 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %18, %19
  %20 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse = getelementptr inbounds %struct.cholmod_common_struct, ptr %20, i32 0, i32 50
  %21 = load i64, ptr %memory_inuse, align 8, !tbaa !20
  %add = add i64 %21, %mul
  store i64 %add, ptr %memory_inuse, align 8, !tbaa !20
  %22 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage = getelementptr inbounds %struct.cholmod_common_struct, ptr %22, i32 0, i32 49
  %23 = load i64, ptr %memory_usage, align 8, !tbaa !21
  %24 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse18 = getelementptr inbounds %struct.cholmod_common_struct, ptr %24, i32 0, i32 50
  %25 = load i64, ptr %memory_inuse18, align 8, !tbaa !20
  %cmp19 = icmp ugt i64 %23, %25
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else17
  %26 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage20 = getelementptr inbounds %struct.cholmod_common_struct, ptr %26, i32 0, i32 49
  %27 = load i64, ptr %memory_usage20, align 8, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.else17
  %28 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse21 = getelementptr inbounds %struct.cholmod_common_struct, ptr %28, i32 0, i32 50
  %29 = load i64, ptr %memory_inuse21, align 8, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %27, %cond.true ], [ %29, %cond.false ]
  %30 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage22 = getelementptr inbounds %struct.cholmod_common_struct, ptr %30, i32 0, i32 49
  store i64 %cond, ptr %memory_usage22, align 8, !tbaa !21
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.then15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then6
  %31 = load ptr, ptr %p, align 8, !tbaa !8
  store ptr %31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

declare i32 @cholmod_l_error(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare ptr @SuiteSparse_malloc(i64 noundef, i64 noundef) #3

; Function Attrs: uwtable
define ptr @cholmod_l_free(i64 noundef %n, i64 noundef %size, ptr noundef %p, ptr noundef %Common) #2 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %itype = getelementptr inbounds %struct.cholmod_common_struct, ptr %1, i32 0, i32 40
  %2 = load i32, ptr %itype, align 8, !tbaa !14
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %dtype = getelementptr inbounds %struct.cholmod_common_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %dtype, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.cholmod_common_struct, ptr %5, i32 0, i32 43
  store i32 -4, ptr %status, align 4, !tbaa !18
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %call = call ptr @SuiteSparse_free(ptr noundef %7)
  %8 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %malloc_count = getelementptr inbounds %struct.cholmod_common_struct, ptr %8, i32 0, i32 48
  %9 = load i64, ptr %malloc_count, align 8, !tbaa !19
  %dec = add i64 %9, -1
  store i64 %dec, ptr %malloc_count, align 8, !tbaa !19
  %10 = load i64, ptr %n.addr, align 8, !tbaa !4
  %11 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %10, %11
  %12 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse = getelementptr inbounds %struct.cholmod_common_struct, ptr %12, i32 0, i32 50
  %13 = load i64, ptr %memory_inuse, align 8, !tbaa !20
  %sub = sub i64 %13, %mul
  store i64 %sub, ptr %memory_inuse, align 8, !tbaa !20
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then3, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

declare ptr @SuiteSparse_free(ptr noundef) #3

; Function Attrs: uwtable
define ptr @cholmod_l_calloc(i64 noundef %n, i64 noundef %size, ptr noundef %Common) #2 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %Common.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %itype = getelementptr inbounds %struct.cholmod_common_struct, ptr %1, i32 0, i32 40
  %2 = load i32, ptr %itype, align 8, !tbaa !14
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %dtype = getelementptr inbounds %struct.cholmod_common_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %dtype, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.cholmod_common_struct, ptr %5, i32 0, i32 43
  store i32 -4, ptr %status, align 4, !tbaa !18
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load i64, ptr %size.addr, align 8, !tbaa !4
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call = call i32 @cholmod_l_error(i32 noundef -4, ptr noundef @.str, i32 noundef 241, ptr noundef @.str.1, ptr noundef %7)
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end25

if.else:                                          ; preds = %if.end4
  %8 = load i64, ptr %n.addr, align 8, !tbaa !4
  %9 = load i64, ptr %size.addr, align 8, !tbaa !4
  %div = udiv i64 -1, %9
  %cmp7 = icmp uge i64 %8, %div
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.else
  %10 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp9 = icmp uge i64 %10, 9223372036854775807
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %lor.lhs.false8, %if.else
  %11 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call11 = call i32 @cholmod_l_error(i32 noundef -3, ptr noundef @.str, i32 noundef 247, ptr noundef @.str.2, ptr noundef %11)
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end24

if.else12:                                        ; preds = %lor.lhs.false8
  %12 = load i64, ptr %n.addr, align 8, !tbaa !4
  %13 = load i64, ptr %size.addr, align 8, !tbaa !4
  %call13 = call ptr @SuiteSparse_calloc(i64 noundef %12, i64 noundef %13)
  store ptr %call13, ptr %p, align 8, !tbaa !8
  %14 = load ptr, ptr %p, align 8, !tbaa !8
  %cmp14 = icmp eq ptr %14, null
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else12
  %15 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call16 = call i32 @cholmod_l_error(i32 noundef -2, ptr noundef @.str, i32 noundef 258, ptr noundef @.str.3, ptr noundef %15)
  br label %if.end23

if.else17:                                        ; preds = %if.else12
  %16 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %malloc_count = getelementptr inbounds %struct.cholmod_common_struct, ptr %16, i32 0, i32 48
  %17 = load i64, ptr %malloc_count, align 8, !tbaa !19
  %inc = add i64 %17, 1
  store i64 %inc, ptr %malloc_count, align 8, !tbaa !19
  %18 = load i64, ptr %n.addr, align 8, !tbaa !4
  %19 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %18, %19
  %20 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse = getelementptr inbounds %struct.cholmod_common_struct, ptr %20, i32 0, i32 50
  %21 = load i64, ptr %memory_inuse, align 8, !tbaa !20
  %add = add i64 %21, %mul
  store i64 %add, ptr %memory_inuse, align 8, !tbaa !20
  %22 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage = getelementptr inbounds %struct.cholmod_common_struct, ptr %22, i32 0, i32 49
  %23 = load i64, ptr %memory_usage, align 8, !tbaa !21
  %24 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse18 = getelementptr inbounds %struct.cholmod_common_struct, ptr %24, i32 0, i32 50
  %25 = load i64, ptr %memory_inuse18, align 8, !tbaa !20
  %cmp19 = icmp ugt i64 %23, %25
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else17
  %26 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage20 = getelementptr inbounds %struct.cholmod_common_struct, ptr %26, i32 0, i32 49
  %27 = load i64, ptr %memory_usage20, align 8, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.else17
  %28 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse21 = getelementptr inbounds %struct.cholmod_common_struct, ptr %28, i32 0, i32 50
  %29 = load i64, ptr %memory_inuse21, align 8, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %27, %cond.true ], [ %29, %cond.false ]
  %30 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage22 = getelementptr inbounds %struct.cholmod_common_struct, ptr %30, i32 0, i32 49
  store i64 %cond, ptr %memory_usage22, align 8, !tbaa !21
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.then15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then6
  %31 = load ptr, ptr %p, align 8, !tbaa !8
  store ptr %31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

declare ptr @SuiteSparse_calloc(i64 noundef, i64 noundef) #3

; Function Attrs: uwtable
define ptr @cholmod_l_realloc(i64 noundef %nnew, i64 noundef %size, ptr noundef %p, ptr noundef %n, ptr noundef %Common) #2 {
entry:
  %retval = alloca ptr, align 8
  %nnew.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %nold = alloca i64, align 8
  %pnew = alloca ptr, align 8
  %s = alloca i64, align 8
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nnew, ptr %nnew.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  store ptr %n, ptr %n.addr, align 8, !tbaa !8
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %nold) #4
  %0 = load ptr, ptr %n.addr, align 8, !tbaa !8
  %1 = load i64, ptr %0, align 8, !tbaa !4
  store i64 %1, ptr %nold, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnew) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #4
  store i32 1, ptr %ok, align 4, !tbaa !10
  %2 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %itype = getelementptr inbounds %struct.cholmod_common_struct, ptr %3, i32 0, i32 40
  %4 = load i32, ptr %itype, align 8, !tbaa !14
  %cmp1 = icmp ne i32 %4, 2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %dtype = getelementptr inbounds %struct.cholmod_common_struct, ptr %5, i32 0, i32 41
  %6 = load i32, ptr %dtype, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.cholmod_common_struct, ptr %7, i32 0, i32 43
  store i32 -4, ptr %status, align 4, !tbaa !18
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %8 = load i64, ptr %size.addr, align 8, !tbaa !4
  %cmp5 = icmp eq i64 %8, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call = call i32 @cholmod_l_error(i32 noundef -4, ptr noundef @.str, i32 noundef 317, ptr noundef @.str.1, ptr noundef %9)
  store ptr null, ptr %p.addr, align 8, !tbaa !8
  br label %if.end38

if.else:                                          ; preds = %if.end4
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %11 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %12 = load i64, ptr %size.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call9 = call ptr @cholmod_l_malloc(i64 noundef %11, i64 noundef %12, ptr noundef %13)
  store ptr %call9, ptr %p.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %cmp10 = icmp eq ptr %14, null
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  %15 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %15, %cond.false ]
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !8
  store i64 %cond, ptr %16, align 8, !tbaa !4
  br label %if.end37

if.else11:                                        ; preds = %if.else
  %17 = load i64, ptr %nold, align 8, !tbaa !4
  %18 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %cmp12 = icmp eq i64 %17, %18
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  br label %if.end36

if.else14:                                        ; preds = %if.else11
  %19 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %20 = load i64, ptr %size.addr, align 8, !tbaa !4
  %div = udiv i64 -1, %20
  %cmp15 = icmp uge i64 %19, %div
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.else14
  %21 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %cmp17 = icmp uge i64 %21, 9223372036854775807
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %lor.lhs.false16, %if.else14
  %22 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call19 = call i32 @cholmod_l_error(i32 noundef -3, ptr noundef @.str, i32 noundef 335, ptr noundef @.str.2, ptr noundef %22)
  br label %if.end35

if.else20:                                        ; preds = %lor.lhs.false16
  %23 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %24 = load i64, ptr %nold, align 8, !tbaa !4
  %25 = load i64, ptr %size.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %call21 = call ptr @SuiteSparse_realloc(i64 noundef %23, i64 noundef %24, i64 noundef %25, ptr noundef %26, ptr noundef %ok)
  store ptr %call21, ptr %pnew, align 8, !tbaa !8
  %27 = load i32, ptr %ok, align 4, !tbaa !10
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  %28 = load ptr, ptr %pnew, align 8, !tbaa !8
  store ptr %28, ptr %p.addr, align 8, !tbaa !8
  %29 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !8
  store i64 %29, ptr %30, align 8, !tbaa !4
  %31 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %32 = load i64, ptr %nold, align 8, !tbaa !4
  %sub = sub i64 %31, %32
  %33 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %sub, %33
  %34 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse = getelementptr inbounds %struct.cholmod_common_struct, ptr %34, i32 0, i32 50
  %35 = load i64, ptr %memory_inuse, align 8, !tbaa !20
  %add = add i64 %35, %mul
  store i64 %add, ptr %memory_inuse, align 8, !tbaa !20
  br label %if.end25

if.else23:                                        ; preds = %if.else20
  %36 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call24 = call i32 @cholmod_l_error(i32 noundef -2, ptr noundef @.str, i32 noundef 360, ptr noundef @.str.3, ptr noundef %36)
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  %37 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage = getelementptr inbounds %struct.cholmod_common_struct, ptr %37, i32 0, i32 49
  %38 = load i64, ptr %memory_usage, align 8, !tbaa !21
  %39 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse26 = getelementptr inbounds %struct.cholmod_common_struct, ptr %39, i32 0, i32 50
  %40 = load i64, ptr %memory_inuse26, align 8, !tbaa !20
  %cmp27 = icmp ugt i64 %38, %40
  br i1 %cmp27, label %cond.true28, label %cond.false30

cond.true28:                                      ; preds = %if.end25
  %41 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage29 = getelementptr inbounds %struct.cholmod_common_struct, ptr %41, i32 0, i32 49
  %42 = load i64, ptr %memory_usage29, align 8, !tbaa !21
  br label %cond.end32

cond.false30:                                     ; preds = %if.end25
  %43 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_inuse31 = getelementptr inbounds %struct.cholmod_common_struct, ptr %43, i32 0, i32 50
  %44 = load i64, ptr %memory_inuse31, align 8, !tbaa !20
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false30, %cond.true28
  %cond33 = phi i64 [ %42, %cond.true28 ], [ %44, %cond.false30 ]
  %45 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memory_usage34 = getelementptr inbounds %struct.cholmod_common_struct, ptr %45, i32 0, i32 49
  store i64 %cond33, ptr %memory_usage34, align 8, !tbaa !21
  br label %if.end35

if.end35:                                         ; preds = %cond.end32, %if.then18
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then13
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %cond.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then6
  %46 = load ptr, ptr %p.addr, align 8, !tbaa !8
  store ptr %46, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnew) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nold) #4
  %47 = load ptr, ptr %retval, align 8
  ret ptr %47
}

declare ptr @SuiteSparse_realloc(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: uwtable
define i32 @cholmod_l_realloc_multiple(i64 noundef %nnew, i32 noundef %nint, i32 noundef %xtype, ptr noundef %Iblock, ptr noundef %Jblock, ptr noundef %Xblock, ptr noundef %Zblock, ptr noundef %nold_p, ptr noundef %Common) #2 {
entry:
  %retval = alloca i32, align 4
  %nnew.addr = alloca i64, align 8
  %nint.addr = alloca i32, align 4
  %xtype.addr = alloca i32, align 4
  %Iblock.addr = alloca ptr, align 8
  %Jblock.addr = alloca ptr, align 8
  %Xblock.addr = alloca ptr, align 8
  %Zblock.addr = alloca ptr, align 8
  %nold_p.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %xx = alloca ptr, align 8
  %zz = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %x = alloca i64, align 8
  %z = alloca i64, align 8
  %nold = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nnew, ptr %nnew.addr, align 8, !tbaa !4
  store i32 %nint, ptr %nint.addr, align 4, !tbaa !10
  store i32 %xtype, ptr %xtype.addr, align 4, !tbaa !10
  store ptr %Iblock, ptr %Iblock.addr, align 8, !tbaa !8
  store ptr %Jblock, ptr %Jblock.addr, align 8, !tbaa !8
  store ptr %Xblock, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %Zblock, ptr %Zblock.addr, align 8, !tbaa !8
  store ptr %nold_p, ptr %nold_p.addr, align 8, !tbaa !8
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xx) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zz) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nold) #4
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %itype = getelementptr inbounds %struct.cholmod_common_struct, ptr %1, i32 0, i32 40
  %2 = load i32, ptr %itype, align 8, !tbaa !14
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %dtype = getelementptr inbounds %struct.cholmod_common_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %dtype, align 4, !tbaa !17
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.cholmod_common_struct, ptr %5, i32 0, i32 43
  store i32 -4, ptr %status, align 4, !tbaa !18
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end4
  %7 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  %cmp7 = icmp sgt i32 %7, 3
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %if.end4
  %8 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call = call i32 @cholmod_l_error(i32 noundef -4, ptr noundef @.str, i32 noundef 404, ptr noundef @.str.4, ptr noundef %8)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %9 = load ptr, ptr %nold_p.addr, align 8, !tbaa !8
  %10 = load i64, ptr %9, align 8, !tbaa !4
  store i64 %10, ptr %nold, align 8, !tbaa !4
  %11 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp10 = icmp slt i32 %11, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end9
  %12 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true, %if.end9
  %13 = load i64, ptr %nold, align 8, !tbaa !4
  store i64 %13, ptr %i, align 8, !tbaa !4
  %14 = load i64, ptr %nold, align 8, !tbaa !4
  store i64 %14, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %nold, align 8, !tbaa !4
  store i64 %15, ptr %x, align 8, !tbaa !4
  %16 = load i64, ptr %nold, align 8, !tbaa !4
  store i64 %16, ptr %z, align 8, !tbaa !4
  %17 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %18 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %Iblock.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  %21 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call16 = call ptr @cholmod_l_realloc(i64 noundef %18, i64 noundef 8, ptr noundef %20, ptr noundef %i, ptr noundef %21)
  %22 = load ptr, ptr %Iblock.addr, align 8, !tbaa !8
  store ptr %call16, ptr %22, align 8, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %23 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp18 = icmp sgt i32 %23, 1
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %24 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %Jblock.addr, align 8, !tbaa !8
  %26 = load ptr, ptr %25, align 8, !tbaa !8
  %27 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call20 = call ptr @cholmod_l_realloc(i64 noundef %24, i64 noundef 8, ptr noundef %26, ptr noundef %j, ptr noundef %27)
  %28 = load ptr, ptr %Jblock.addr, align 8, !tbaa !8
  store ptr %call20, ptr %28, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %29 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  switch i32 %29, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end21
  %30 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !8
  %33 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call22 = call ptr @cholmod_l_realloc(i64 noundef %30, i64 noundef 8, ptr noundef %32, ptr noundef %x, ptr noundef %33)
  %34 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call22, ptr %34, align 8, !tbaa !8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end21
  %35 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %37 = load ptr, ptr %36, align 8, !tbaa !8
  %38 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call24 = call ptr @cholmod_l_realloc(i64 noundef %35, i64 noundef 16, ptr noundef %37, ptr noundef %x, ptr noundef %38)
  %39 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call24, ptr %39, align 8, !tbaa !8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end21
  %40 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !8
  %43 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call26 = call ptr @cholmod_l_realloc(i64 noundef %40, i64 noundef 8, ptr noundef %42, ptr noundef %x, ptr noundef %43)
  %44 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call26, ptr %44, align 8, !tbaa !8
  %45 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !8
  %48 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call27 = call ptr @cholmod_l_realloc(i64 noundef %45, i64 noundef 8, ptr noundef %47, ptr noundef %z, ptr noundef %48)
  %49 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  store ptr %call27, ptr %49, align 8, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end21, %sw.bb25, %sw.bb23, %sw.bb
  %50 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status28 = getelementptr inbounds %struct.cholmod_common_struct, ptr %50, i32 0, i32 43
  %51 = load i32, ptr %status28, align 4, !tbaa !18
  %cmp29 = icmp slt i32 %51, 0
  br i1 %cmp29, label %if.then30, label %if.end66

if.then30:                                        ; preds = %sw.epilog
  %52 = load i64, ptr %nold, align 8, !tbaa !4
  %cmp31 = icmp eq i64 %52, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then30
  %53 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp33 = icmp sgt i32 %53, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then32
  %54 = load i64, ptr %i, align 8, !tbaa !4
  %55 = load ptr, ptr %Iblock.addr, align 8, !tbaa !8
  %56 = load ptr, ptr %55, align 8, !tbaa !8
  %57 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call35 = call ptr @cholmod_l_free(i64 noundef %54, i64 noundef 8, ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %Iblock.addr, align 8, !tbaa !8
  store ptr %call35, ptr %58, align 8, !tbaa !8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then32
  %59 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp37 = icmp sgt i32 %59, 1
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %60 = load i64, ptr %j, align 8, !tbaa !4
  %61 = load ptr, ptr %Jblock.addr, align 8, !tbaa !8
  %62 = load ptr, ptr %61, align 8, !tbaa !8
  %63 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call39 = call ptr @cholmod_l_free(i64 noundef %60, i64 noundef 8, ptr noundef %62, ptr noundef %63)
  %64 = load ptr, ptr %Jblock.addr, align 8, !tbaa !8
  store ptr %call39, ptr %64, align 8, !tbaa !8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %65 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  switch i32 %65, label %sw.epilog48 [
    i32 1, label %sw.bb41
    i32 2, label %sw.bb43
    i32 3, label %sw.bb45
  ]

sw.bb41:                                          ; preds = %if.end40
  %66 = load i64, ptr %x, align 8, !tbaa !4
  %67 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %68 = load ptr, ptr %67, align 8, !tbaa !8
  %69 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call42 = call ptr @cholmod_l_free(i64 noundef %66, i64 noundef 8, ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call42, ptr %70, align 8, !tbaa !8
  br label %sw.epilog48

sw.bb43:                                          ; preds = %if.end40
  %71 = load i64, ptr %x, align 8, !tbaa !4
  %72 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %73 = load ptr, ptr %72, align 8, !tbaa !8
  %74 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call44 = call ptr @cholmod_l_free(i64 noundef %71, i64 noundef 16, ptr noundef %73, ptr noundef %74)
  %75 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call44, ptr %75, align 8, !tbaa !8
  br label %sw.epilog48

sw.bb45:                                          ; preds = %if.end40
  %76 = load i64, ptr %x, align 8, !tbaa !4
  %77 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %78 = load ptr, ptr %77, align 8, !tbaa !8
  %79 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call46 = call ptr @cholmod_l_free(i64 noundef %76, i64 noundef 8, ptr noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call46, ptr %80, align 8, !tbaa !8
  %81 = load i64, ptr %x, align 8, !tbaa !4
  %82 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  %83 = load ptr, ptr %82, align 8, !tbaa !8
  %84 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call47 = call ptr @cholmod_l_free(i64 noundef %81, i64 noundef 8, ptr noundef %83, ptr noundef %84)
  %85 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  store ptr %call47, ptr %85, align 8, !tbaa !8
  br label %sw.epilog48

sw.epilog48:                                      ; preds = %if.end40, %sw.bb45, %sw.bb43, %sw.bb41
  br label %if.end65

if.else:                                          ; preds = %if.then30
  %86 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp49 = icmp sgt i32 %86, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else
  %87 = load i64, ptr %nold, align 8, !tbaa !4
  %88 = load ptr, ptr %Iblock.addr, align 8, !tbaa !8
  %89 = load ptr, ptr %88, align 8, !tbaa !8
  %90 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call51 = call ptr @cholmod_l_realloc(i64 noundef %87, i64 noundef 8, ptr noundef %89, ptr noundef %i, ptr noundef %90)
  %91 = load ptr, ptr %Iblock.addr, align 8, !tbaa !8
  store ptr %call51, ptr %91, align 8, !tbaa !8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else
  %92 = load i32, ptr %nint.addr, align 4, !tbaa !10
  %cmp53 = icmp sgt i32 %92, 1
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %93 = load i64, ptr %nold, align 8, !tbaa !4
  %94 = load ptr, ptr %Jblock.addr, align 8, !tbaa !8
  %95 = load ptr, ptr %94, align 8, !tbaa !8
  %96 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call55 = call ptr @cholmod_l_realloc(i64 noundef %93, i64 noundef 8, ptr noundef %95, ptr noundef %j, ptr noundef %96)
  %97 = load ptr, ptr %Jblock.addr, align 8, !tbaa !8
  store ptr %call55, ptr %97, align 8, !tbaa !8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %98 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  switch i32 %98, label %sw.epilog64 [
    i32 1, label %sw.bb57
    i32 2, label %sw.bb59
    i32 3, label %sw.bb61
  ]

sw.bb57:                                          ; preds = %if.end56
  %99 = load i64, ptr %nold, align 8, !tbaa !4
  %100 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %101 = load ptr, ptr %100, align 8, !tbaa !8
  %102 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call58 = call ptr @cholmod_l_realloc(i64 noundef %99, i64 noundef 8, ptr noundef %101, ptr noundef %x, ptr noundef %102)
  %103 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call58, ptr %103, align 8, !tbaa !8
  br label %sw.epilog64

sw.bb59:                                          ; preds = %if.end56
  %104 = load i64, ptr %nold, align 8, !tbaa !4
  %105 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %106 = load ptr, ptr %105, align 8, !tbaa !8
  %107 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call60 = call ptr @cholmod_l_realloc(i64 noundef %104, i64 noundef 16, ptr noundef %106, ptr noundef %x, ptr noundef %107)
  %108 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call60, ptr %108, align 8, !tbaa !8
  br label %sw.epilog64

sw.bb61:                                          ; preds = %if.end56
  %109 = load i64, ptr %nold, align 8, !tbaa !4
  %110 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %111 = load ptr, ptr %110, align 8, !tbaa !8
  %112 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call62 = call ptr @cholmod_l_realloc(i64 noundef %109, i64 noundef 8, ptr noundef %111, ptr noundef %x, ptr noundef %112)
  %113 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  store ptr %call62, ptr %113, align 8, !tbaa !8
  %114 = load i64, ptr %nold, align 8, !tbaa !4
  %115 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  %116 = load ptr, ptr %115, align 8, !tbaa !8
  %117 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call63 = call ptr @cholmod_l_realloc(i64 noundef %114, i64 noundef 8, ptr noundef %116, ptr noundef %z, ptr noundef %117)
  %118 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  store ptr %call63, ptr %118, align 8, !tbaa !8
  br label %sw.epilog64

sw.epilog64:                                      ; preds = %if.end56, %sw.bb61, %sw.bb59, %sw.bb57
  br label %if.end65

if.end65:                                         ; preds = %sw.epilog64, %sw.epilog48
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %sw.epilog
  %119 = load i64, ptr %nold, align 8, !tbaa !4
  %cmp67 = icmp eq i64 %119, 0
  br i1 %cmp67, label %if.then68, label %if.end77

if.then68:                                        ; preds = %if.end66
  %120 = load ptr, ptr %Xblock.addr, align 8, !tbaa !8
  %121 = load ptr, ptr %120, align 8, !tbaa !8
  store ptr %121, ptr %xx, align 8, !tbaa !8
  %122 = load ptr, ptr %Zblock.addr, align 8, !tbaa !8
  %123 = load ptr, ptr %122, align 8, !tbaa !8
  store ptr %123, ptr %zz, align 8, !tbaa !8
  %124 = load i32, ptr %xtype.addr, align 4, !tbaa !10
  switch i32 %124, label %sw.epilog76 [
    i32 1, label %sw.bb69
    i32 2, label %sw.bb70
    i32 3, label %sw.bb73
  ]

sw.bb69:                                          ; preds = %if.then68
  %125 = load ptr, ptr %xx, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %125, i64 0
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !22
  br label %sw.epilog76

sw.bb70:                                          ; preds = %if.then68
  %126 = load ptr, ptr %xx, align 8, !tbaa !8
  %arrayidx71 = getelementptr inbounds double, ptr %126, i64 0
  store double 0.000000e+00, ptr %arrayidx71, align 8, !tbaa !22
  %127 = load ptr, ptr %xx, align 8, !tbaa !8
  %arrayidx72 = getelementptr inbounds double, ptr %127, i64 1
  store double 0.000000e+00, ptr %arrayidx72, align 8, !tbaa !22
  br label %sw.epilog76

sw.bb73:                                          ; preds = %if.then68
  %128 = load ptr, ptr %xx, align 8, !tbaa !8
  %arrayidx74 = getelementptr inbounds double, ptr %128, i64 0
  store double 0.000000e+00, ptr %arrayidx74, align 8, !tbaa !22
  %129 = load ptr, ptr %zz, align 8, !tbaa !8
  %arrayidx75 = getelementptr inbounds double, ptr %129, i64 0
  store double 0.000000e+00, ptr %arrayidx75, align 8, !tbaa !22
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %if.then68, %sw.bb73, %sw.bb70, %sw.bb69
  br label %if.end77

if.end77:                                         ; preds = %sw.epilog76, %if.end66
  %130 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %131 = load ptr, ptr %nold_p.addr, align 8, !tbaa !8
  store i64 %130, ptr %131, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end65, %if.then12, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nold) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zz) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xx) #4
  %132 = load i32, ptr %retval, align 4
  ret i32 %132
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !11, i64 1960}
!15 = !{!"cholmod_common_struct", !16, i64 0, !16, i64 8, !16, i64 16, !5, i64 24, !5, i64 32, !16, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !6, i64 80, !6, i64 104, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !9, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !6, i64 184, !11, i64 1864, !11, i64 1868, !16, i64 1872, !16, i64 1880, !5, i64 1888, !5, i64 1896, !5, i64 1904, !5, i64 1912, !5, i64 1920, !9, i64 1928, !9, i64 1936, !9, i64 1944, !9, i64 1952, !11, i64 1960, !11, i64 1964, !11, i64 1968, !11, i64 1972, !16, i64 1976, !16, i64 1984, !16, i64 1992, !16, i64 2000, !5, i64 2008, !5, i64 2016, !5, i64 2024, !16, i64 2032, !16, i64 2040, !16, i64 2048, !16, i64 2056, !16, i64 2064, !11, i64 2072, !11, i64 2076, !16, i64 2080, !16, i64 2088, !11, i64 2096, !11, i64 2100, !16, i64 2104, !16, i64 2112, !16, i64 2120, !16, i64 2128, !16, i64 2136, !16, i64 2144, !16, i64 2152, !6, i64 2160, !11, i64 2240, !5, i64 2248, !16, i64 2256, !5, i64 2264, !16, i64 2272, !5, i64 2280, !11, i64 2288, !9, i64 2296, !6, i64 2304, !6, i64 2368, !9, i64 2392, !6, i64 2400, !9, i64 2464, !5, i64 2472, !9, i64 2480, !5, i64 2488, !5, i64 2496, !11, i64 2504, !16, i64 2512, !16, i64 2520, !16, i64 2528, !16, i64 2536, !16, i64 2544, !16, i64 2552, !16, i64 2560, !16, i64 2568, !16, i64 2576, !16, i64 2584, !16, i64 2592, !5, i64 2600, !5, i64 2608, !5, i64 2616, !5, i64 2624, !5, i64 2632, !5, i64 2640, !5, i64 2648, !5, i64 2656}
!16 = !{!"double", !6, i64 0}
!17 = !{!15, !11, i64 1964}
!18 = !{!15, !11, i64 1972}
!19 = !{!15, !5, i64 2008}
!20 = !{!15, !5, i64 2024}
!21 = !{!15, !5, i64 2016}
!22 = !{!16, !16, i64 0}
