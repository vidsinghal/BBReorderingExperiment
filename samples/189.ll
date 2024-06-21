; ModuleID = 'samples/189.bc'
source_filename = "tool_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.speedcount = type { i64, i64, %struct.timeval }
%struct.per_transfer = type { ptr, ptr, ptr, ptr, i64, i64, i64, %struct.timeval, i8, i8, ptr, ptr, ptr, ptr, i8, i32, %struct.ProgressData, %struct.OutStruct, %struct.OutStruct, %struct.InStruct, %struct.HdrCbData, [256 x i8], i8, i64, i64, i64, i64, i8, i8, ptr, ptr, ptr }
%struct.ProgressData = type { i32, i64, %struct.timeval, i32, ptr, i64, i32, i32, i32 }
%struct.OutStruct = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, i64 }
%struct.InStruct = type { i32, ptr }
%struct.HdrCbData = type { ptr, ptr, ptr, ptr, i8 }
%struct.GlobalConfig = type { i32, i8, i8, i8, ptr, i8, ptr, ptr, i8, i32, i8, i32, ptr, i8, i8, i8, i64, ptr, ptr, ptr }

@all_xfers = global i64 0, align 8
@progress_meter.stamp = internal global %struct.timeval zeroinitializer, align 8
@progress_meter.header = internal global i8 0, align 1
@.str = private unnamed_addr constant [72 x i8] c"DL% UL%  Dled  Uled  Xfers  Live   Qd Total     Current  Left    Speed\0A\00", align 1
@__const.progress_meter.dlpercen = private unnamed_addr constant [4 x i8] c"--\00\00", align 1
@__const.progress_meter.ulpercen = private unnamed_addr constant [4 x i8] c"--\00\00", align 1
@all_dlalready = internal global i64 0, align 8
@all_ulalready = internal global i64 0, align 8
@transfers = external global ptr, align 8
@all_dltotal = internal global i64 0, align 8
@all_ultotal = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@speedindex = internal global i32 0, align 4
@speedstore = internal global [10 x %struct.speedcount] zeroinitializer, align 16
@indexwrapped = internal global i8 0, align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\0D%-3s %-3s %s %s %5ld %5ld %5ld %s %s %s %s %5s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--:--:--\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%2ld:%02ld:%02ld\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%3ldd %02ldh\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%7ldd\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%5ld\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%4ldk\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%2ld.%0ldM\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%4ldM\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%2ld.%0ldG\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%4ldG\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%4ldT\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%4ldP\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @xferinfo_cb(ptr noundef %clientp, i64 noundef %dltotal, i64 noundef %dlnow, i64 noundef %ultotal, i64 noundef %ulnow) #0 {
entry:
  %clientp.addr = alloca ptr, align 8
  %dltotal.addr = alloca i64, align 8
  %dlnow.addr = alloca i64, align 8
  %ultotal.addr = alloca i64, align 8
  %ulnow.addr = alloca i64, align 8
  %per = alloca ptr, align 8
  store ptr %clientp, ptr %clientp.addr, align 8, !tbaa !4
  store i64 %dltotal, ptr %dltotal.addr, align 8, !tbaa !8
  store i64 %dlnow, ptr %dlnow.addr, align 8, !tbaa !8
  store i64 %ultotal, ptr %ultotal.addr, align 8, !tbaa !8
  store i64 %ulnow, ptr %ulnow.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %per) #5
  %0 = load ptr, ptr %clientp.addr, align 8, !tbaa !4
  store ptr %0, ptr %per, align 8, !tbaa !4
  %1 = load i64, ptr %dltotal.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %per, align 8, !tbaa !4
  %dltotal1 = getelementptr inbounds %struct.per_transfer, ptr %2, i32 0, i32 23
  store i64 %1, ptr %dltotal1, align 8, !tbaa !10
  %3 = load i64, ptr %dlnow.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %per, align 8, !tbaa !4
  %dlnow2 = getelementptr inbounds %struct.per_transfer, ptr %4, i32 0, i32 24
  store i64 %3, ptr %dlnow2, align 8, !tbaa !19
  %5 = load i64, ptr %ultotal.addr, align 8, !tbaa !8
  %6 = load ptr, ptr %per, align 8, !tbaa !4
  %ultotal3 = getelementptr inbounds %struct.per_transfer, ptr %6, i32 0, i32 25
  store i64 %5, ptr %ultotal3, align 8, !tbaa !20
  %7 = load i64, ptr %ulnow.addr, align 8, !tbaa !8
  %8 = load ptr, ptr %per, align 8, !tbaa !4
  %ulnow4 = getelementptr inbounds %struct.per_transfer, ptr %8, i32 0, i32 26
  store i64 %7, ptr %ulnow4, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %per) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define zeroext i1 @progress_meter(ptr noundef %global, ptr noundef %start, i1 noundef zeroext %final) #0 {
entry:
  %retval = alloca i1, align 1
  %global.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %final.addr = alloca i8, align 1
  %now = alloca %struct.timeval, align 8
  %diff = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.timeval, align 8
  %time_left = alloca [10 x i8], align 1
  %time_total = alloca [10 x i8], align 1
  %time_spent = alloca [10 x i8], align 1
  %buffer = alloca [3 x [6 x i8]], align 16
  %spent = alloca i64, align 8
  %dlpercen = alloca [4 x i8], align 1
  %ulpercen = alloca [4 x i8], align 1
  %per = alloca ptr, align 8
  %all_dlnow = alloca i64, align 8
  %all_ulnow = alloca i64, align 8
  %dlknown = alloca i8, align 1
  %ulknown = alloca i8, align 1
  %all_running = alloca i64, align 8
  %all_queued = alloca i64, align 8
  %speed = alloca i64, align 8
  %i = alloca i32, align 4
  %deltams = alloca i64, align 8
  %dl60 = alloca i64, align 8
  %ul61 = alloca i64, align 8
  %dls = alloca i64, align 8
  %uls = alloca i64, align 8
  %est = alloca i64, align 8
  %left = alloca i64, align 8
  store ptr %global, ptr %global.addr, align 8, !tbaa !4
  store ptr %start, ptr %start.addr, align 8, !tbaa !4
  %frombool = zext i1 %final to i8
  store i8 %frombool, ptr %final.addr, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 16, ptr %now) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #5
  %0 = load ptr, ptr %global.addr, align 8, !tbaa !4
  %noprogress = getelementptr inbounds %struct.GlobalConfig, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %noprogress, align 1, !tbaa !23, !range !25, !noundef !26
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5
  %call = call { i64, i64 } @tvnow() #6
  %2 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0
  %3 = extractvalue { i64, i64 } %call, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1
  %5 = extractvalue { i64, i64 } %call, 1
  store i64 %5, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %now, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5
  %6 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr @progress_meter.stamp, align 8
  %11 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @progress_meter.stamp, i32 0, i32 1), align 8
  %call1 = call i64 @tvdiff(i64 %7, i64 %9, i64 %10, i64 %11) #6
  store i64 %call1, ptr %diff, align 8, !tbaa !8
  %12 = load i8, ptr @progress_meter.header, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool2 = trunc i8 %12 to i1
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  store i8 1, ptr @progress_meter.header, align 1, !tbaa !22
  %13 = load ptr, ptr %global.addr, align 8, !tbaa !4
  %errors = getelementptr inbounds %struct.GlobalConfig, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %errors, align 8, !tbaa !28
  %call4 = call i32 @fputs(ptr noundef @.str, ptr noundef %14) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %15 = load i8, ptr %final.addr, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool6 = trunc i8 %15 to i1
  br i1 %tobool6, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %16 = load i64, ptr %diff, align 8, !tbaa !8
  %cmp = icmp sgt i64 %16, 500
  br i1 %cmp, label %if.then7, label %if.end123

if.then7:                                         ; preds = %lor.lhs.false, %if.end5
  call void @llvm.lifetime.start.p0(i64 10, ptr %time_left) #5
  call void @llvm.lifetime.start.p0(i64 10, ptr %time_total) #5
  call void @llvm.lifetime.start.p0(i64 10, ptr %time_spent) #5
  call void @llvm.lifetime.start.p0(i64 18, ptr %buffer) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %spent) #5
  %17 = load ptr, ptr %start.addr, align 8, !tbaa !4
  %18 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, ptr %17, i32 0, i32 0
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %17, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %call8 = call i64 @tvdiff(i64 %19, i64 %21, i64 %23, i64 %25) #6
  %div = sdiv i64 %call8, 1000
  store i64 %div, ptr %spent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dlpercen) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dlpercen, ptr align 1 @__const.progress_meter.dlpercen, i64 4, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %ulpercen) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ulpercen, ptr align 1 @__const.progress_meter.ulpercen, i64 4, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %per) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_dlnow) #5
  store i64 0, ptr %all_dlnow, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_ulnow) #5
  store i64 0, ptr %all_ulnow, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %dlknown) #5
  store i8 1, ptr %dlknown, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 1, ptr %ulknown) #5
  store i8 1, ptr %ulknown, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_running) #5
  store i64 0, ptr %all_running, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_queued) #5
  store i64 0, ptr %all_queued, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %speed) #5
  store i64 0, ptr %speed, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @progress_meter.stamp, ptr align 8 %now, i64 16, i1 false), !tbaa.struct !27
  %26 = load i64, ptr @all_dlalready, align 8, !tbaa !8
  %27 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %add = add nsw i64 %27, %26
  store i64 %add, ptr %all_dlnow, align 8, !tbaa !8
  %28 = load i64, ptr @all_ulalready, align 8, !tbaa !8
  %29 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  %add9 = add nsw i64 %29, %28
  store i64 %add9, ptr %all_ulnow, align 8, !tbaa !8
  %30 = load ptr, ptr @transfers, align 8, !tbaa !4
  store ptr %30, ptr %per, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %31 = load ptr, ptr %per, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %31, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %per, align 8, !tbaa !4
  %dlnow = getelementptr inbounds %struct.per_transfer, ptr %32, i32 0, i32 24
  %33 = load i64, ptr %dlnow, align 8, !tbaa !19
  %34 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %add11 = add nsw i64 %34, %33
  store i64 %add11, ptr %all_dlnow, align 8, !tbaa !8
  %35 = load ptr, ptr %per, align 8, !tbaa !4
  %ulnow = getelementptr inbounds %struct.per_transfer, ptr %35, i32 0, i32 26
  %36 = load i64, ptr %ulnow, align 8, !tbaa !21
  %37 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  %add12 = add nsw i64 %37, %36
  store i64 %add12, ptr %all_ulnow, align 8, !tbaa !8
  %38 = load ptr, ptr %per, align 8, !tbaa !4
  %dltotal = getelementptr inbounds %struct.per_transfer, ptr %38, i32 0, i32 23
  %39 = load i64, ptr %dltotal, align 8, !tbaa !10
  %tobool13 = icmp ne i64 %39, 0
  br i1 %tobool13, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body
  store i8 0, ptr %dlknown, align 1, !tbaa !22
  br label %if.end21

if.else:                                          ; preds = %for.body
  %40 = load ptr, ptr %per, align 8, !tbaa !4
  %dltotal_added = getelementptr inbounds %struct.per_transfer, ptr %40, i32 0, i32 27
  %41 = load i8, ptr %dltotal_added, align 8, !tbaa !29, !range !25, !noundef !26
  %tobool15 = trunc i8 %41 to i1
  br i1 %tobool15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.else
  %42 = load ptr, ptr %per, align 8, !tbaa !4
  %dltotal17 = getelementptr inbounds %struct.per_transfer, ptr %42, i32 0, i32 23
  %43 = load i64, ptr %dltotal17, align 8, !tbaa !10
  %44 = load i64, ptr @all_dltotal, align 8, !tbaa !8
  %add18 = add nsw i64 %44, %43
  store i64 %add18, ptr @all_dltotal, align 8, !tbaa !8
  %45 = load ptr, ptr %per, align 8, !tbaa !4
  %dltotal_added19 = getelementptr inbounds %struct.per_transfer, ptr %45, i32 0, i32 27
  store i8 1, ptr %dltotal_added19, align 8, !tbaa !29
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  %46 = load ptr, ptr %per, align 8, !tbaa !4
  %ultotal = getelementptr inbounds %struct.per_transfer, ptr %46, i32 0, i32 25
  %47 = load i64, ptr %ultotal, align 8, !tbaa !20
  %tobool22 = icmp ne i64 %47, 0
  br i1 %tobool22, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.end21
  store i8 0, ptr %ulknown, align 1, !tbaa !22
  br label %if.end31

if.else24:                                        ; preds = %if.end21
  %48 = load ptr, ptr %per, align 8, !tbaa !4
  %ultotal_added = getelementptr inbounds %struct.per_transfer, ptr %48, i32 0, i32 28
  %49 = load i8, ptr %ultotal_added, align 1, !tbaa !30, !range !25, !noundef !26
  %tobool25 = trunc i8 %49 to i1
  br i1 %tobool25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.else24
  %50 = load ptr, ptr %per, align 8, !tbaa !4
  %ultotal27 = getelementptr inbounds %struct.per_transfer, ptr %50, i32 0, i32 25
  %51 = load i64, ptr %ultotal27, align 8, !tbaa !20
  %52 = load i64, ptr @all_ultotal, align 8, !tbaa !8
  %add28 = add nsw i64 %52, %51
  store i64 %add28, ptr @all_ultotal, align 8, !tbaa !8
  %53 = load ptr, ptr %per, align 8, !tbaa !4
  %ultotal_added29 = getelementptr inbounds %struct.per_transfer, ptr %53, i32 0, i32 28
  store i8 1, ptr %ultotal_added29, align 1, !tbaa !30
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then23
  %54 = load ptr, ptr %per, align 8, !tbaa !4
  %added = getelementptr inbounds %struct.per_transfer, ptr %54, i32 0, i32 22
  %55 = load i8, ptr %added, align 8, !tbaa !31, !range !25, !noundef !26
  %tobool32 = trunc i8 %55 to i1
  br i1 %tobool32, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.end31
  %56 = load i64, ptr %all_queued, align 8, !tbaa !8
  %inc = add nsw i64 %56, 1
  store i64 %inc, ptr %all_queued, align 8, !tbaa !8
  br label %if.end36

if.else34:                                        ; preds = %if.end31
  %57 = load i64, ptr %all_running, align 8, !tbaa !8
  %inc35 = add nsw i64 %57, 1
  store i64 %inc35, ptr %all_running, align 8, !tbaa !8
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then33
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %58 = load ptr, ptr %per, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.per_transfer, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %next, align 8, !tbaa !32
  store ptr %59, ptr %per, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %60 = load i8, ptr %dlknown, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool37 = trunc i8 %60 to i1
  br i1 %tobool37, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %for.end
  %61 = load i64, ptr @all_dltotal, align 8, !tbaa !8
  %tobool38 = icmp ne i64 %61, 0
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [4 x i8], ptr %dlpercen, i64 0, i64 0
  %62 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %mul = mul nsw i64 %62, 100
  %63 = load i64, ptr @all_dltotal, align 8, !tbaa !8
  %div40 = sdiv i64 %mul, %63
  %call41 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %arraydecay, i64 noundef 4, ptr noundef @.str.1, i64 noundef %div40) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %land.lhs.true, %for.end
  %64 = load i8, ptr %ulknown, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool43 = trunc i8 %64 to i1
  br i1 %tobool43, label %land.lhs.true44, label %if.end51

land.lhs.true44:                                  ; preds = %if.end42
  %65 = load i64, ptr @all_ultotal, align 8, !tbaa !8
  %tobool45 = icmp ne i64 %65, 0
  br i1 %tobool45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %land.lhs.true44
  %arraydecay47 = getelementptr inbounds [4 x i8], ptr %ulpercen, i64 0, i64 0
  %66 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  %mul48 = mul nsw i64 %66, 100
  %67 = load i64, ptr @all_ultotal, align 8, !tbaa !8
  %div49 = sdiv i64 %mul48, %67
  %call50 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %arraydecay47, i64 noundef 4, ptr noundef @.str.1, i64 noundef %div49) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %land.lhs.true44, %if.end42
  %68 = load i32, ptr @speedindex, align 4, !tbaa !35
  store i32 %68, ptr %i, align 4, !tbaa !35
  %69 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %70 = load i32, ptr %i, align 4, !tbaa !35
  %idxprom = zext i32 %70 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.speedcount], ptr @speedstore, i64 0, i64 %idxprom
  %dl = getelementptr inbounds %struct.speedcount, ptr %arrayidx, i32 0, i32 0
  store i64 %69, ptr %dl, align 16, !tbaa !36
  %71 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  %72 = load i32, ptr %i, align 4, !tbaa !35
  %idxprom52 = zext i32 %72 to i64
  %arrayidx53 = getelementptr inbounds [10 x %struct.speedcount], ptr @speedstore, i64 0, i64 %idxprom52
  %ul = getelementptr inbounds %struct.speedcount, ptr %arrayidx53, i32 0, i32 1
  store i64 %71, ptr %ul, align 8, !tbaa !38
  %73 = load i32, ptr %i, align 4, !tbaa !35
  %idxprom54 = zext i32 %73 to i64
  %arrayidx55 = getelementptr inbounds [10 x %struct.speedcount], ptr @speedstore, i64 0, i64 %idxprom54
  %stamp = getelementptr inbounds %struct.speedcount, ptr %arrayidx55, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %stamp, ptr align 8 %now, i64 16, i1 false), !tbaa.struct !27
  %74 = load i32, ptr @speedindex, align 4, !tbaa !35
  %inc56 = add i32 %74, 1
  store i32 %inc56, ptr @speedindex, align 4, !tbaa !35
  %cmp57 = icmp uge i32 %inc56, 10
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end51
  store i8 1, ptr @indexwrapped, align 1, !tbaa !22
  store i32 0, ptr @speedindex, align 4, !tbaa !35
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr %deltams) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dl60) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul61) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dls) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %uls) #5
  %75 = load i8, ptr @indexwrapped, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool62 = trunc i8 %75 to i1
  br i1 %tobool62, label %if.then63, label %if.else75

if.then63:                                        ; preds = %if.end59
  %76 = load i32, ptr @speedindex, align 4, !tbaa !35
  %idxprom64 = zext i32 %76 to i64
  %arrayidx65 = getelementptr inbounds [10 x %struct.speedcount], ptr @speedstore, i64 0, i64 %idxprom64
  %stamp66 = getelementptr inbounds %struct.speedcount, ptr %arrayidx65, i32 0, i32 2
  %77 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds { i64, i64 }, ptr %stamp66, i32 0, i32 0
  %82 = load i64, ptr %81, align 16
  %83 = getelementptr inbounds { i64, i64 }, ptr %stamp66, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  %call67 = call i64 @tvdiff(i64 %78, i64 %80, i64 %82, i64 %84) #6
  store i64 %call67, ptr %deltams, align 8, !tbaa !8
  %85 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %86 = load i32, ptr @speedindex, align 4, !tbaa !35
  %idxprom68 = zext i32 %86 to i64
  %arrayidx69 = getelementptr inbounds [10 x %struct.speedcount], ptr @speedstore, i64 0, i64 %idxprom68
  %dl70 = getelementptr inbounds %struct.speedcount, ptr %arrayidx69, i32 0, i32 0
  %87 = load i64, ptr %dl70, align 16, !tbaa !36
  %sub = sub nsw i64 %85, %87
  store i64 %sub, ptr %dl60, align 8, !tbaa !8
  %88 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  %89 = load i32, ptr @speedindex, align 4, !tbaa !35
  %idxprom71 = zext i32 %89 to i64
  %arrayidx72 = getelementptr inbounds [10 x %struct.speedcount], ptr @speedstore, i64 0, i64 %idxprom71
  %ul73 = getelementptr inbounds %struct.speedcount, ptr %arrayidx72, i32 0, i32 1
  %90 = load i64, ptr %ul73, align 8, !tbaa !38
  %sub74 = sub nsw i64 %88, %90
  store i64 %sub74, ptr %ul61, align 8, !tbaa !8
  br label %if.end77

if.else75:                                        ; preds = %if.end59
  %91 = load ptr, ptr %start.addr, align 8, !tbaa !4
  %92 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr inbounds { i64, i64 }, ptr %91, i32 0, i32 0
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr inbounds { i64, i64 }, ptr %91, i32 0, i32 1
  %99 = load i64, ptr %98, align 8
  %call76 = call i64 @tvdiff(i64 %93, i64 %95, i64 %97, i64 %99) #6
  store i64 %call76, ptr %deltams, align 8, !tbaa !8
  %100 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  store i64 %100, ptr %dl60, align 8, !tbaa !8
  %101 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  store i64 %101, ptr %ul61, align 8, !tbaa !8
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then63
  %102 = load i64, ptr %dl60, align 8, !tbaa !8
  %conv = sitofp i64 %102 to double
  %103 = load i64, ptr %deltams, align 8, !tbaa !8
  %conv78 = sitofp i64 %103 to double
  %div79 = fdiv double %conv78, 1.000000e+03
  %div80 = fdiv double %conv, %div79
  %conv81 = fptosi double %div80 to i64
  store i64 %conv81, ptr %dls, align 8, !tbaa !8
  %104 = load i64, ptr %ul61, align 8, !tbaa !8
  %conv82 = sitofp i64 %104 to double
  %105 = load i64, ptr %deltams, align 8, !tbaa !8
  %conv83 = sitofp i64 %105 to double
  %div84 = fdiv double %conv83, 1.000000e+03
  %div85 = fdiv double %conv82, %div84
  %conv86 = fptosi double %div85 to i64
  store i64 %conv86, ptr %uls, align 8, !tbaa !8
  %106 = load i64, ptr %dls, align 8, !tbaa !8
  %107 = load i64, ptr %uls, align 8, !tbaa !8
  %cmp87 = icmp sgt i64 %106, %107
  br i1 %cmp87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end77
  %108 = load i64, ptr %dls, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end77
  %109 = load i64, ptr %uls, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %108, %cond.true ], [ %109, %cond.false ]
  store i64 %cond, ptr %speed, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %uls) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dls) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul61) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dl60) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %deltams) #5
  %110 = load i8, ptr %dlknown, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool89 = trunc i8 %110 to i1
  br i1 %tobool89, label %land.lhs.true91, label %if.else99

land.lhs.true91:                                  ; preds = %cond.end
  %111 = load i64, ptr %speed, align 8, !tbaa !8
  %tobool92 = icmp ne i64 %111, 0
  br i1 %tobool92, label %if.then93, label %if.else99

if.then93:                                        ; preds = %land.lhs.true91
  call void @llvm.lifetime.start.p0(i64 8, ptr %est) #5
  %112 = load i64, ptr @all_dltotal, align 8, !tbaa !8
  %113 = load i64, ptr %speed, align 8, !tbaa !8
  %div94 = sdiv i64 %112, %113
  store i64 %div94, ptr %est, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #5
  %114 = load i64, ptr @all_dltotal, align 8, !tbaa !8
  %115 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %sub95 = sub nsw i64 %114, %115
  %116 = load i64, ptr %speed, align 8, !tbaa !8
  %div96 = sdiv i64 %sub95, %116
  store i64 %div96, ptr %left, align 8, !tbaa !8
  %arraydecay97 = getelementptr inbounds [10 x i8], ptr %time_left, i64 0, i64 0
  %117 = load i64, ptr %left, align 8, !tbaa !8
  call void @time2str(ptr noundef %arraydecay97, i64 noundef %117) #6
  %arraydecay98 = getelementptr inbounds [10 x i8], ptr %time_total, i64 0, i64 0
  %118 = load i64, ptr %est, align 8, !tbaa !8
  call void @time2str(ptr noundef %arraydecay98, i64 noundef %118) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %est) #5
  br label %if.end102

if.else99:                                        ; preds = %land.lhs.true91, %cond.end
  %arraydecay100 = getelementptr inbounds [10 x i8], ptr %time_left, i64 0, i64 0
  call void @time2str(ptr noundef %arraydecay100, i64 noundef 0) #6
  %arraydecay101 = getelementptr inbounds [10 x i8], ptr %time_total, i64 0, i64 0
  call void @time2str(ptr noundef %arraydecay101, i64 noundef 0) #6
  br label %if.end102

if.end102:                                        ; preds = %if.else99, %if.then93
  %arraydecay103 = getelementptr inbounds [10 x i8], ptr %time_spent, i64 0, i64 0
  %119 = load i64, ptr %spent, align 8, !tbaa !8
  call void @time2str(ptr noundef %arraydecay103, i64 noundef %119) #6
  %120 = load ptr, ptr %global.addr, align 8, !tbaa !4
  %errors104 = getelementptr inbounds %struct.GlobalConfig, ptr %120, i32 0, i32 4
  %121 = load ptr, ptr %errors104, align 8, !tbaa !28
  %arraydecay105 = getelementptr inbounds [4 x i8], ptr %dlpercen, i64 0, i64 0
  %arraydecay106 = getelementptr inbounds [4 x i8], ptr %ulpercen, i64 0, i64 0
  %122 = load i64, ptr %all_dlnow, align 8, !tbaa !8
  %arrayidx107 = getelementptr inbounds [3 x [6 x i8]], ptr %buffer, i64 0, i64 0
  %arraydecay108 = getelementptr inbounds [6 x i8], ptr %arrayidx107, i64 0, i64 0
  %call109 = call ptr @max5data(i64 noundef %122, ptr noundef %arraydecay108) #6
  %123 = load i64, ptr %all_ulnow, align 8, !tbaa !8
  %arrayidx110 = getelementptr inbounds [3 x [6 x i8]], ptr %buffer, i64 0, i64 1
  %arraydecay111 = getelementptr inbounds [6 x i8], ptr %arrayidx110, i64 0, i64 0
  %call112 = call ptr @max5data(i64 noundef %123, ptr noundef %arraydecay111) #6
  %124 = load i64, ptr @all_xfers, align 8, !tbaa !8
  %125 = load i64, ptr %all_running, align 8, !tbaa !8
  %126 = load i64, ptr %all_queued, align 8, !tbaa !8
  %arraydecay113 = getelementptr inbounds [10 x i8], ptr %time_total, i64 0, i64 0
  %arraydecay114 = getelementptr inbounds [10 x i8], ptr %time_spent, i64 0, i64 0
  %arraydecay115 = getelementptr inbounds [10 x i8], ptr %time_left, i64 0, i64 0
  %127 = load i64, ptr %speed, align 8, !tbaa !8
  %arrayidx116 = getelementptr inbounds [3 x [6 x i8]], ptr %buffer, i64 0, i64 2
  %arraydecay117 = getelementptr inbounds [6 x i8], ptr %arrayidx116, i64 0, i64 0
  %call118 = call ptr @max5data(i64 noundef %127, ptr noundef %arraydecay117) #6
  %128 = load i8, ptr %final.addr, align 1, !tbaa !22, !range !25, !noundef !26
  %tobool119 = trunc i8 %128 to i1
  %129 = zext i1 %tobool119 to i64
  %cond121 = select i1 %tobool119, ptr @.str.3, ptr @.str.4
  %call122 = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %121, ptr noundef @.str.2, ptr noundef %arraydecay105, ptr noundef %arraydecay106, ptr noundef %call109, ptr noundef %call112, i64 noundef %124, i64 noundef %125, i64 noundef %126, ptr noundef %arraydecay113, ptr noundef %arraydecay114, ptr noundef %arraydecay115, ptr noundef %call118, ptr noundef %cond121) #6
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %speed) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_queued) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_running) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %ulknown) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %dlknown) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_ulnow) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_dlnow) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %per) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ulpercen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dlpercen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %spent) #5
  call void @llvm.lifetime.end.p0(i64 18, ptr %buffer) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr %time_spent) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr %time_total) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr %time_left) #5
  br label %cleanup

if.end123:                                        ; preds = %lor.lhs.false
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.end102, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %now) #5
  %130 = load i1, ptr %retval, align 1
  ret i1 %130
}

; Function Attrs: optsize
declare { i64, i64 } @tvnow() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare i64 @tvdiff(i64, i64, i64, i64) #2

; Function Attrs: optsize
declare i32 @fputs(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal void @time2str(ptr noundef %r, i64 noundef %seconds) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %seconds.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %m = alloca i64, align 8
  %s = alloca i64, align 8
  %d = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  store i64 %seconds, ptr %seconds.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #5
  %0 = load i64, ptr %seconds.addr, align 8, !tbaa !8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call ptr @strcpy(ptr noundef %1, ptr noundef @.str.5) #7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %seconds.addr, align 8, !tbaa !8
  %div = sdiv i64 %2, 3600
  store i64 %div, ptr %h, align 8, !tbaa !8
  %3 = load i64, ptr %h, align 8, !tbaa !8
  %cmp1 = icmp sle i64 %3, 99
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5
  %4 = load i64, ptr %seconds.addr, align 8, !tbaa !8
  %5 = load i64, ptr %h, align 8, !tbaa !8
  %mul = mul nsw i64 %5, 3600
  %sub = sub nsw i64 %4, %mul
  %div3 = sdiv i64 %sub, 60
  store i64 %div3, ptr %m, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %6 = load i64, ptr %seconds.addr, align 8, !tbaa !8
  %7 = load i64, ptr %h, align 8, !tbaa !8
  %mul4 = mul nsw i64 %7, 3600
  %sub5 = sub nsw i64 %6, %mul4
  %8 = load i64, ptr %m, align 8, !tbaa !8
  %mul6 = mul nsw i64 %8, 60
  %sub7 = sub nsw i64 %sub5, %mul6
  store i64 %sub7, ptr %s, align 8, !tbaa !8
  %9 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %10 = load i64, ptr %h, align 8, !tbaa !8
  %11 = load i64, ptr %m, align 8, !tbaa !8
  %12 = load i64, ptr %s, align 8, !tbaa !8
  %call8 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %9, i64 noundef 9, ptr noundef @.str.6, i64 noundef %10, i64 noundef %11, i64 noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #5
  %13 = load i64, ptr %seconds.addr, align 8, !tbaa !8
  %div9 = sdiv i64 %13, 86400
  store i64 %div9, ptr %d, align 8, !tbaa !8
  %14 = load i64, ptr %seconds.addr, align 8, !tbaa !8
  %15 = load i64, ptr %d, align 8, !tbaa !8
  %mul10 = mul nsw i64 %15, 86400
  %sub11 = sub nsw i64 %14, %mul10
  %div12 = sdiv i64 %sub11, 3600
  store i64 %div12, ptr %h, align 8, !tbaa !8
  %16 = load i64, ptr %d, align 8, !tbaa !8
  %cmp13 = icmp sle i64 %16, 999
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %17 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %18 = load i64, ptr %d, align 8, !tbaa !8
  %19 = load i64, ptr %h, align 8, !tbaa !8
  %call15 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %17, i64 noundef 9, ptr noundef @.str.7, i64 noundef %18, i64 noundef %19) #6
  br label %if.end18

if.else16:                                        ; preds = %if.else
  %20 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %21 = load i64, ptr %d, align 8, !tbaa !8
  %call17 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %20, i64 noundef 9, ptr noundef @.str.8, i64 noundef %21) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #5
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

; Function Attrs: optsize
declare i32 @curl_mfprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal ptr @max5data(i64 noundef %bytes, ptr noundef %max5) #0 {
entry:
  %bytes.addr = alloca i64, align 8
  %max5.addr = alloca ptr, align 8
  store i64 %bytes, ptr %bytes.addr, align 8, !tbaa !8
  store ptr %max5, ptr %max5.addr, align 8, !tbaa !4
  %0 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp = icmp slt i64 %0, 100000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %2 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %call = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %1, i64 noundef 6, ptr noundef @.str.9, i64 noundef %2) #6
  br label %if.end40

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp1 = icmp slt i64 %3, 10240000
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %5 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div = sdiv i64 %5, 1024
  %call3 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %4, i64 noundef 6, ptr noundef @.str.10, i64 noundef %div) #6
  br label %if.end39

if.else4:                                         ; preds = %if.else
  %6 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp5 = icmp slt i64 %6, 104857600
  br i1 %cmp5, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else4
  %7 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %8 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div7 = sdiv i64 %8, 1048576
  %9 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %rem = srem i64 %9, 1048576
  %div8 = sdiv i64 %rem, 104857
  %call9 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %7, i64 noundef 6, ptr noundef @.str.11, i64 noundef %div7, i64 noundef %div8) #6
  br label %if.end38

if.else10:                                        ; preds = %if.else4
  %10 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp11 = icmp slt i64 %10, 10485760000
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else10
  %11 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %12 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div13 = sdiv i64 %12, 1048576
  %call14 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %11, i64 noundef 6, ptr noundef @.str.12, i64 noundef %div13) #6
  br label %if.end37

if.else15:                                        ; preds = %if.else10
  %13 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp16 = icmp slt i64 %13, 107374182400
  br i1 %cmp16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else15
  %14 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %15 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div18 = sdiv i64 %15, 1073741824
  %16 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %rem19 = srem i64 %16, 1073741824
  %div20 = sdiv i64 %rem19, 107374182
  %call21 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %14, i64 noundef 6, ptr noundef @.str.13, i64 noundef %div18, i64 noundef %div20) #6
  br label %if.end36

if.else22:                                        ; preds = %if.else15
  %17 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp23 = icmp slt i64 %17, 10737418240000
  br i1 %cmp23, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.else22
  %18 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %19 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div25 = sdiv i64 %19, 1073741824
  %call26 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %18, i64 noundef 6, ptr noundef @.str.14, i64 noundef %div25) #6
  br label %if.end35

if.else27:                                        ; preds = %if.else22
  %20 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %cmp28 = icmp slt i64 %20, 10995116277760000
  br i1 %cmp28, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.else27
  %21 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %22 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div30 = sdiv i64 %22, 1099511627776
  %call31 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %21, i64 noundef 6, ptr noundef @.str.15, i64 noundef %div30) #6
  br label %if.end

if.else32:                                        ; preds = %if.else27
  %23 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  %24 = load i64, ptr %bytes.addr, align 8, !tbaa !8
  %div33 = sdiv i64 %24, 1125899906842624
  %call34 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %23, i64 noundef 6, ptr noundef @.str.16, i64 noundef %div33) #6
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then29
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then24
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then17
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then12
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then6
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then2
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  %25 = load ptr, ptr %max5.addr, align 8, !tbaa !4
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define void @progress_finalize(ptr noundef %per) #0 {
entry:
  %per.addr = alloca ptr, align 8
  store ptr %per, ptr %per.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %per.addr, align 8, !tbaa !4
  %dlnow = getelementptr inbounds %struct.per_transfer, ptr %0, i32 0, i32 24
  %1 = load i64, ptr %dlnow, align 8, !tbaa !19
  %2 = load i64, ptr @all_dlalready, align 8, !tbaa !8
  %add = add nsw i64 %2, %1
  store i64 %add, ptr @all_dlalready, align 8, !tbaa !8
  %3 = load ptr, ptr %per.addr, align 8, !tbaa !4
  %ulnow = getelementptr inbounds %struct.per_transfer, ptr %3, i32 0, i32 26
  %4 = load i64, ptr %ulnow, align 8, !tbaa !21
  %5 = load i64, ptr @all_ulalready, align 8, !tbaa !8
  %add1 = add nsw i64 %5, %4
  store i64 %add1, ptr @all_ulalready, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @strcpy(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

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
!10 = !{!11, !9, i64 608}
!11 = !{!"per_transfer", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !12, i64 56, !13, i64 72, !13, i64 73, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !13, i64 112, !14, i64 116, !15, i64 120, !16, i64 192, !16, i64 240, !17, i64 288, !18, i64 304, !6, i64 344, !13, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !13, i64 640, !13, i64 641, !5, i64 648, !5, i64 656, !5, i64 664}
!12 = !{!"timeval", !9, i64 0, !9, i64 8}
!13 = !{!"_Bool", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!"ProgressData", !14, i64 0, !9, i64 8, !12, i64 16, !14, i64 32, !5, i64 40, !9, i64 48, !14, i64 56, !14, i64 60, !14, i64 64}
!16 = !{!"OutStruct", !5, i64 0, !13, i64 8, !13, i64 9, !13, i64 10, !13, i64 11, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 40}
!17 = !{!"InStruct", !14, i64 0, !5, i64 8}
!18 = !{!"HdrCbData", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !13, i64 32}
!19 = !{!11, !9, i64 616}
!20 = !{!11, !9, i64 624}
!21 = !{!11, !9, i64 632}
!22 = !{!13, !13, i64 0}
!23 = !{!24, !13, i64 5}
!24 = !{!"GlobalConfig", !14, i64 0, !13, i64 4, !13, i64 5, !13, i64 6, !5, i64 8, !13, i64 16, !5, i64 24, !5, i64 32, !13, i64 40, !6, i64 44, !13, i64 48, !14, i64 52, !5, i64 56, !13, i64 64, !13, i64 65, !13, i64 66, !9, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!28 = !{!24, !5, i64 8}
!29 = !{!11, !13, i64 640}
!30 = !{!11, !13, i64 641}
!31 = !{!11, !13, i64 600}
!32 = !{!11, !5, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!14, !14, i64 0}
!36 = !{!37, !9, i64 0}
!37 = !{!"speedcount", !9, i64 0, !9, i64 8, !12, i64 16}
!38 = !{!37, !9, i64 8}
