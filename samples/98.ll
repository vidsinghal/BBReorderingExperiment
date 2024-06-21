; ModuleID = 'samples/98.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_oarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_oarray = type { ptr, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [46 x i8] c"grib_oarray_new unable to allocate %ld bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"grib_oarray_resize unable to allocate %ld bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @grib_oarray_new(ptr noundef %c, i64 noundef %size, i64 noundef %incsize) #0 {
entry:
  %retval = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %incsize.addr = alloca i64, align 8
  %v = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !8
  store i64 %incsize, ptr %incsize.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #3
  store ptr null, ptr %v, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @grib_context_get_default()
  store ptr %call, ptr %c.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call1 = call ptr @grib_context_malloc_clear(ptr noundef %1, i64 noundef 40)
  store ptr %call1, ptr %v, align 8, !tbaa !4
  %2 = load ptr, ptr %v, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %3, i32 noundef 2, ptr noundef @.str, i64 noundef 40)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %v, align 8, !tbaa !4
  %size5 = getelementptr inbounds %struct.grib_oarray, ptr %5, i32 0, i32 1
  store i64 %4, ptr %size5, align 8, !tbaa !10
  %6 = load ptr, ptr %v, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.grib_oarray, ptr %6, i32 0, i32 2
  store i64 0, ptr %n, align 8, !tbaa !12
  %7 = load i64, ptr %incsize.addr, align 8, !tbaa !8
  %8 = load ptr, ptr %v, align 8, !tbaa !4
  %incsize6 = getelementptr inbounds %struct.grib_oarray, ptr %8, i32 0, i32 3
  store i64 %7, ptr %incsize6, align 8, !tbaa !13
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %10 = load i64, ptr %size.addr, align 8, !tbaa !8
  %mul = mul i64 8, %10
  %call7 = call ptr @grib_context_malloc_clear(ptr noundef %9, i64 noundef %mul)
  %11 = load ptr, ptr %v, align 8, !tbaa !4
  %v8 = getelementptr inbounds %struct.grib_oarray, ptr %11, i32 0, i32 0
  store ptr %call7, ptr %v8, align 8, !tbaa !14
  %12 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %v, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_oarray, ptr %13, i32 0, i32 4
  store ptr %12, ptr %context, align 8, !tbaa !15
  %14 = load ptr, ptr %v, align 8, !tbaa !4
  %v9 = getelementptr inbounds %struct.grib_oarray, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %v9, align 8, !tbaa !14
  %tobool10 = icmp ne ptr %15, null
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end4
  %16 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %17 = load i64, ptr %size.addr, align 8, !tbaa !8
  %mul12 = mul i64 8, %17
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %16, i32 noundef 2, ptr noundef @.str, i64 noundef %mul12)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %18 = load ptr, ptr %v, align 8, !tbaa !4
  store ptr %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #3
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_context_get_default() #2

declare ptr @grib_context_malloc_clear(ptr noundef, i64 noundef) #2

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @grib_oarray_push(ptr noundef %c, ptr noundef %v, ptr noundef %val) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %start_size = alloca i64, align 8
  %start_incsize = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_size) #3
  store i64 100, ptr %start_size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_incsize) #3
  store i64 100, ptr %start_incsize, align 8, !tbaa !8
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %2 = load i64, ptr %start_size, align 8, !tbaa !8
  %3 = load i64, ptr %start_incsize, align 8, !tbaa !8
  %call = call ptr @grib_oarray_new(ptr noundef %1, i64 noundef %2, i64 noundef %3)
  store ptr %call, ptr %v.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.grib_oarray, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %n, align 8, !tbaa !12
  %6 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.grib_oarray, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %size, align 8, !tbaa !10
  %cmp = icmp uge i64 %5, %7
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %call2 = call ptr @grib_oarray_resize(ptr noundef %8)
  store ptr %call2, ptr %v.addr, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v4 = getelementptr inbounds %struct.grib_oarray, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %v4, align 8, !tbaa !14
  %12 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n5 = getelementptr inbounds %struct.grib_oarray, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %n5, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %13
  store ptr %9, ptr %arrayidx, align 8, !tbaa !4
  %14 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n6 = getelementptr inbounds %struct.grib_oarray, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %n6, align 8, !tbaa !12
  %inc = add i64 %15, 1
  store i64 %inc, ptr %n6, align 8, !tbaa !12
  %16 = load ptr, ptr %v.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_incsize) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_size) #3
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal ptr @grib_oarray_resize(ptr noundef %v) #0 {
entry:
  %retval = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %newsize = alloca i64, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %newsize) #3
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %incsize = getelementptr inbounds %struct.grib_oarray, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %incsize, align 8, !tbaa !13
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.grib_oarray, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %size, align 8, !tbaa !10
  %add = add i64 %1, %3
  store i64 %add, ptr %newsize, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #3
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_oarray, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %context, align 8, !tbaa !15
  store ptr %5, ptr %c, align 8, !tbaa !4
  %6 = load ptr, ptr %c, align 8, !tbaa !4
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @grib_context_get_default()
  store ptr %call, ptr %c, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %c, align 8, !tbaa !4
  %8 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.grib_oarray, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %v1, align 8, !tbaa !14
  %10 = load i64, ptr %newsize, align 8, !tbaa !8
  %mul = mul i64 %10, 8
  %call2 = call ptr @grib_context_realloc(ptr noundef %7, ptr noundef %9, i64 noundef %mul)
  %11 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v3 = getelementptr inbounds %struct.grib_oarray, ptr %11, i32 0, i32 0
  store ptr %call2, ptr %v3, align 8, !tbaa !14
  %12 = load i64, ptr %newsize, align 8, !tbaa !8
  %13 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %size4 = getelementptr inbounds %struct.grib_oarray, ptr %13, i32 0, i32 1
  store i64 %12, ptr %size4, align 8, !tbaa !10
  %14 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v5 = getelementptr inbounds %struct.grib_oarray, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %v5, align 8, !tbaa !14
  %tobool6 = icmp ne ptr %15, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %16 = load ptr, ptr %c, align 8, !tbaa !4
  %17 = load i64, ptr %newsize, align 8, !tbaa !8
  %mul8 = mul i64 8, %17
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %16, i32 noundef 2, ptr noundef @.str.1, i64 noundef %mul8)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %18 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store ptr %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %newsize) #3
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define void @grib_oarray_delete(ptr noundef %c, ptr noundef %v) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call ptr @grib_context_get_default()
  store ptr %call, ptr %c.addr, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v4 = getelementptr inbounds %struct.grib_oarray, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %v4, align 8, !tbaa !14
  %tobool5 = icmp ne ptr %3, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v7 = getelementptr inbounds %struct.grib_oarray, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %v7, align 8, !tbaa !14
  call void @grib_context_free(ptr noundef %4, ptr noundef %6)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %v.addr, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %7, ptr noundef %8)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare void @grib_context_free(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @grib_oarray_delete_content(ptr noundef %c, ptr noundef %v) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v1 = getelementptr inbounds %struct.grib_oarray, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %v1, align 8, !tbaa !14
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %call = call ptr @grib_context_get_default()
  store ptr %call, ptr %c.addr, align 8, !tbaa !4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  store i32 0, ptr %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load i32, ptr %i, align 4, !tbaa !16
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.grib_oarray, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %n, align 8, !tbaa !12
  %cmp = icmp ult i64 %conv, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v7 = getelementptr inbounds %struct.grib_oarray, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %v7, align 8, !tbaa !14
  %9 = load i32, ptr %i, align 4, !tbaa !16
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v10 = getelementptr inbounds %struct.grib_oarray, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %v10, align 8, !tbaa !14
  %14 = load i32, ptr %i, align 4, !tbaa !16
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %11, ptr noundef %15)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %for.body
  %16 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v14 = getelementptr inbounds %struct.grib_oarray, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %v14, align 8, !tbaa !14
  %18 = load i32, ptr %i, align 4, !tbaa !16
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %17, i64 %idxprom15
  store ptr null, ptr %arrayidx16, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %19 = load i32, ptr %i, align 4, !tbaa !16
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !16
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n17 = getelementptr inbounds %struct.grib_oarray, ptr %20, i32 0, i32 2
  store i64 0, ptr %n17, align 8, !tbaa !12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
define ptr @grib_oarray_get_array(ptr noundef %c, ptr noundef %v) #0 {
entry:
  %retval = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.grib_oarray, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 8, %3
  %call = call ptr @grib_context_malloc_clear(ptr noundef %1, i64 noundef %mul)
  store ptr %call, ptr %ret, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !16
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n1 = getelementptr inbounds %struct.grib_oarray, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %n1, align 8, !tbaa !12
  %cmp = icmp ult i64 %conv, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v3 = getelementptr inbounds %struct.grib_oarray, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %v3, align 8, !tbaa !14
  %9 = load i32, ptr %i, align 4, !tbaa !16
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %11 = load ptr, ptr %ret, align 8, !tbaa !4
  %12 = load i32, ptr %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  store ptr %10, ptr %arrayidx5, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !16
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !16
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %ret, align 8, !tbaa !4
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #3
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define ptr @grib_oarray_get(ptr noundef %v, i32 noundef %i) #0 {
entry:
  %retval = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !16
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4, !tbaa !16
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.grib_oarray, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %n, align 8, !tbaa !12
  %sub = sub i64 %3, 1
  %cmp1 = icmp ugt i64 %conv, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %v3 = getelementptr inbounds %struct.grib_oarray, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %v3, align 8, !tbaa !14
  %6 = load i32, ptr %i.addr, align 4, !tbaa !16
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define i64 @grib_oarray_used_size(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %n = getelementptr inbounds %struct.grib_oarray, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %n, align 8, !tbaa !12
  ret i64 %1
}

declare ptr @grib_context_realloc(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"grib_oarray", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32}
!12 = !{!11, !9, i64 16}
!13 = !{!11, !9, i64 24}
!14 = !{!11, !5, i64 0}
!15 = !{!11, !5, i64 32}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
