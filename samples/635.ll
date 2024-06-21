; ModuleID = 'samples/635.bc'
source_filename = "tool_cb_prg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.ProgressData = type { i32, i64, %struct.timeval, i32, ptr, i64, i32, i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.OperationConfig = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i64, i8, i8, i8, i8, i8, i64, i8, i64, i8, ptr, i64, ptr, i64, ptr, double, double, i64, i64, ptr, ptr, ptr, i64, i64, i16, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i8, i8, i8, i8, i32, ptr, i32, i64, ptr, ptr, i8, i8, i64, i8, i64, i64, ptr, ptr, i32, i64, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i32, i8, i64, i8, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i8, i8, i8, double, i8, i32, i8, i64, i8, i8, ptr, ptr, ptr, %struct.State }
%struct.State = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64 }
%struct.GlobalConfig = type { i32, i8, i8, i8, ptr, i8, ptr, ptr, i8, i32, i8, i32, ptr, i8, i8, i8, i64, ptr, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"\0D%%-%ds %%5.1f%%%%\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%*s\0D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-=O=-\00", align 1
@sinus = internal constant [200 x i32] [i32 5157, i32 5313, i32 5470, i32 5626, i32 5782, i32 5936, i32 6090, i32 6243, i32 6394, i32 6545, i32 6693, i32 6840, i32 6985, i32 7128, i32 7269, i32 7408, i32 7545, i32 7679, i32 7810, i32 7938, i32 8064, i32 8187, i32 8306, i32 8422, i32 8535, i32 8644, i32 8750, i32 8852, i32 8950, i32 9045, i32 9135, i32 9221, i32 9303, i32 9381, i32 9454, i32 9524, i32 9588, i32 9648, i32 9704, i32 9755, i32 9801, i32 9842, i32 9879, i32 9911, i32 9938, i32 9960, i32 9977, i32 9990, i32 9997, i32 9999, i32 9997, i32 9990, i32 9977, i32 9960, i32 9938, i32 9911, i32 9879, i32 9842, i32 9801, i32 9755, i32 9704, i32 9648, i32 9588, i32 9524, i32 9455, i32 9381, i32 9303, i32 9221, i32 9135, i32 9045, i32 8950, i32 8852, i32 8750, i32 8645, i32 8535, i32 8422, i32 8306, i32 8187, i32 8064, i32 7939, i32 7810, i32 7679, i32 7545, i32 7409, i32 7270, i32 7129, i32 6986, i32 6841, i32 6694, i32 6545, i32 6395, i32 6243, i32 6091, i32 5937, i32 5782, i32 5627, i32 5470, i32 5314, i32 5157, i32 5000, i32 4843, i32 4686, i32 4529, i32 4373, i32 4218, i32 4063, i32 3909, i32 3757, i32 3605, i32 3455, i32 3306, i32 3159, i32 3014, i32 2871, i32 2730, i32 2591, i32 2455, i32 2321, i32 2190, i32 2061, i32 1935, i32 1813, i32 1693, i32 1577, i32 1464, i32 1355, i32 1249, i32 1147, i32 1049, i32 955, i32 864, i32 778, i32 696, i32 618, i32 545, i32 476, i32 411, i32 351, i32 295, i32 244, i32 198, i32 157, i32 120, i32 88, i32 61, i32 39, i32 22, i32 9, i32 2, i32 0, i32 2, i32 9, i32 22, i32 39, i32 61, i32 88, i32 120, i32 156, i32 198, i32 244, i32 295, i32 350, i32 410, i32 475, i32 544, i32 618, i32 695, i32 777, i32 864, i32 954, i32 1048, i32 1146, i32 1248, i32 1354, i32 1463, i32 1576, i32 1692, i32 1812, i32 1934, i32 2060, i32 2188, i32 2320, i32 2454, i32 2590, i32 2729, i32 2870, i32 3013, i32 3158, i32 3305, i32 3454, i32 3604, i32 3755, i32 3908, i32 4062, i32 4216, i32 4372, i32 4528, i32 4685, i32 4842, i32 4999], align 16

; Function Attrs: nounwind optsize uwtable
define i32 @tool_progress_cb(ptr noundef %clientp, i64 noundef %dltotal, i64 noundef %dlnow, i64 noundef %ultotal, i64 noundef %ulnow) #0 {
entry:
  %retval = alloca i32, align 4
  %clientp.addr = alloca ptr, align 8
  %dltotal.addr = alloca i64, align 8
  %dlnow.addr = alloca i64, align 8
  %ultotal.addr = alloca i64, align 8
  %ulnow.addr = alloca i64, align 8
  %now = alloca %struct.timeval, align 8
  %bar = alloca ptr, align 8
  %total = alloca i64, align 8
  %point = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %line = alloca [257 x i8], align 16
  %format = alloca [40 x i8], align 16
  %frac = alloca double, align 8
  %percent = alloca double, align 8
  %barwidth = alloca i32, align 4
  %num = alloca i32, align 4
  store ptr %clientp, ptr %clientp.addr, align 8, !tbaa !4
  store i64 %dltotal, ptr %dltotal.addr, align 8, !tbaa !8
  store i64 %dlnow, ptr %dlnow.addr, align 8, !tbaa !8
  store i64 %ultotal, ptr %ultotal.addr, align 8, !tbaa !8
  store i64 %ulnow, ptr %ulnow.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %now) #7
  %call = call { i64, i64 } @tvnow() #8
  %0 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %1 = extractvalue { i64, i64 } %call, 0
  store i64 %1, ptr %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %3 = extractvalue { i64, i64 } %call, 1
  store i64 %3, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bar) #7
  %4 = load ptr, ptr %clientp.addr, align 8, !tbaa !4
  store ptr %4, ptr %bar, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %point) #7
  %5 = load ptr, ptr %bar, align 8, !tbaa !4
  %initial_size = getelementptr inbounds %struct.ProgressData, ptr %5, i32 0, i32 5
  %6 = load i64, ptr %initial_size, align 8, !tbaa !10
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %bar, align 8, !tbaa !4
  %initial_size1 = getelementptr inbounds %struct.ProgressData, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %initial_size1, align 8, !tbaa !10
  %sub = sub nsw i64 9223372036854775807, %8
  %9 = load i64, ptr %dltotal.addr, align 8, !tbaa !8
  %10 = load i64, ptr %ultotal.addr, align 8, !tbaa !8
  %add = add nsw i64 %9, %10
  %cmp2 = icmp slt i64 %sub, %add
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 9223372036854775807, ptr %total, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i64, ptr %dltotal.addr, align 8, !tbaa !8
  %12 = load i64, ptr %ultotal.addr, align 8, !tbaa !8
  %add3 = add nsw i64 %11, %12
  %13 = load ptr, ptr %bar, align 8, !tbaa !4
  %initial_size4 = getelementptr inbounds %struct.ProgressData, ptr %13, i32 0, i32 5
  %14 = load i64, ptr %initial_size4, align 8, !tbaa !10
  %add5 = add nsw i64 %add3, %14
  store i64 %add5, ptr %total, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %bar, align 8, !tbaa !4
  %initial_size6 = getelementptr inbounds %struct.ProgressData, ptr %15, i32 0, i32 5
  %16 = load i64, ptr %initial_size6, align 8, !tbaa !10
  %cmp7 = icmp slt i64 %16, 0
  br i1 %cmp7, label %if.then13, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %17 = load ptr, ptr %bar, align 8, !tbaa !4
  %initial_size9 = getelementptr inbounds %struct.ProgressData, ptr %17, i32 0, i32 5
  %18 = load i64, ptr %initial_size9, align 8, !tbaa !10
  %sub10 = sub nsw i64 9223372036854775807, %18
  %19 = load i64, ptr %dlnow.addr, align 8, !tbaa !8
  %20 = load i64, ptr %ulnow.addr, align 8, !tbaa !8
  %add11 = add nsw i64 %19, %20
  %cmp12 = icmp slt i64 %sub10, %add11
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %lor.lhs.false8, %if.end
  store i64 9223372036854775807, ptr %point, align 8, !tbaa !8
  br label %if.end18

if.else14:                                        ; preds = %lor.lhs.false8
  %21 = load i64, ptr %dlnow.addr, align 8, !tbaa !8
  %22 = load i64, ptr %ulnow.addr, align 8, !tbaa !8
  %add15 = add nsw i64 %21, %22
  %23 = load ptr, ptr %bar, align 8, !tbaa !4
  %initial_size16 = getelementptr inbounds %struct.ProgressData, ptr %23, i32 0, i32 5
  %24 = load i64, ptr %initial_size16, align 8, !tbaa !10
  %add17 = add nsw i64 %add15, %24
  store i64 %add17, ptr %point, align 8, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then13
  %25 = load ptr, ptr %bar, align 8, !tbaa !4
  %calls = getelementptr inbounds %struct.ProgressData, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %calls, align 8, !tbaa !14
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then19, label %if.end40

if.then19:                                        ; preds = %if.end18
  %27 = load i64, ptr %total, align 8, !tbaa !8
  %tobool20 = icmp ne i64 %27, 0
  br i1 %tobool20, label %if.then21, label %if.else31

if.then21:                                        ; preds = %if.then19
  %28 = load ptr, ptr %bar, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.ProgressData, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %prev, align 8, !tbaa !15
  %30 = load i64, ptr %point, align 8, !tbaa !8
  %cmp22 = icmp eq i64 %29, %30
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.then21
  %31 = load ptr, ptr %bar, align 8, !tbaa !4
  %prevtime = getelementptr inbounds %struct.ProgressData, ptr %31, i32 0, i32 2
  %32 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds { i64, i64 }, ptr %prevtime, i32 0, i32 0
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, ptr %prevtime, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %call25 = call i64 @tvdiff(i64 %33, i64 %35, i64 %37, i64 %39) #8
  %cmp26 = icmp slt i64 %call25, 100
  br i1 %cmp26, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.else24
  %40 = load i64, ptr %point, align 8, !tbaa !8
  %41 = load i64, ptr %total, align 8, !tbaa !8
  %cmp27 = icmp slt i64 %40, %41
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true, %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  br label %if.end39

if.else31:                                        ; preds = %if.then19
  %42 = load ptr, ptr %bar, align 8, !tbaa !4
  %prevtime32 = getelementptr inbounds %struct.ProgressData, ptr %42, i32 0, i32 2
  %43 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 0
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, ptr %now, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, ptr %prevtime32, i32 0, i32 0
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds { i64, i64 }, ptr %prevtime32, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %call33 = call i64 @tvdiff(i64 %44, i64 %46, i64 %48, i64 %50) #8
  %cmp34 = icmp slt i64 %call33, 100
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else31
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.else31
  %51 = load ptr, ptr %bar, align 8, !tbaa !4
  %52 = load i64, ptr %point, align 8, !tbaa !8
  %53 = load ptr, ptr %bar, align 8, !tbaa !4
  %prev37 = getelementptr inbounds %struct.ProgressData, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %prev37, align 8, !tbaa !15
  %cmp38 = icmp ne i64 %52, %54
  call void @fly(ptr noundef %51, i1 noundef zeroext %cmp38) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %if.end30
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end18
  %55 = load ptr, ptr %bar, align 8, !tbaa !4
  %calls41 = getelementptr inbounds %struct.ProgressData, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %calls41, align 8, !tbaa !14
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %calls41, align 8, !tbaa !14
  %57 = load i64, ptr %total, align 8, !tbaa !8
  %cmp42 = icmp sgt i64 %57, 0
  br i1 %cmp42, label %land.lhs.true43, label %if.end65

land.lhs.true43:                                  ; preds = %if.end40
  %58 = load i64, ptr %point, align 8, !tbaa !8
  %59 = load ptr, ptr %bar, align 8, !tbaa !4
  %prev44 = getelementptr inbounds %struct.ProgressData, ptr %59, i32 0, i32 1
  %60 = load i64, ptr %prev44, align 8, !tbaa !15
  %cmp45 = icmp ne i64 %58, %60
  br i1 %cmp45, label %if.then46, label %if.end65

if.then46:                                        ; preds = %land.lhs.true43
  call void @llvm.lifetime.start.p0(i64 257, ptr %line) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %format) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %frac) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %percent) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %barwidth) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #7
  %61 = load i64, ptr %point, align 8, !tbaa !8
  %62 = load i64, ptr %total, align 8, !tbaa !8
  %cmp47 = icmp sgt i64 %61, %62
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then46
  %63 = load i64, ptr %point, align 8, !tbaa !8
  store i64 %63, ptr %total, align 8, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then46
  %64 = load i64, ptr %point, align 8, !tbaa !8
  %conv = sitofp i64 %64 to double
  %65 = load i64, ptr %total, align 8, !tbaa !8
  %conv50 = sitofp i64 %65 to double
  %div = fdiv double %conv, %conv50
  store double %div, ptr %frac, align 8, !tbaa !16
  %66 = load double, ptr %frac, align 8, !tbaa !16
  %mul = fmul double %66, 1.000000e+02
  store double %mul, ptr %percent, align 8, !tbaa !16
  %67 = load ptr, ptr %bar, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.ProgressData, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %width, align 8, !tbaa !18
  %sub51 = sub nsw i32 %68, 7
  store i32 %sub51, ptr %barwidth, align 4, !tbaa !19
  %69 = load i32, ptr %barwidth, align 4, !tbaa !19
  %conv52 = sitofp i32 %69 to double
  %70 = load double, ptr %frac, align 8, !tbaa !16
  %mul53 = fmul double %conv52, %70
  %conv54 = fptosi double %mul53 to i32
  store i32 %conv54, ptr %num, align 4, !tbaa !19
  %71 = load i32, ptr %num, align 4, !tbaa !19
  %cmp55 = icmp sgt i32 %71, 256
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end49
  store i32 256, ptr %num, align 4, !tbaa !19
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end49
  %arraydecay = getelementptr inbounds [257 x i8], ptr %line, i64 0, i64 0
  %72 = load i32, ptr %num, align 4, !tbaa !19
  %conv59 = sext i32 %72 to i64
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 35, i64 %conv59, i1 false)
  %73 = load i32, ptr %num, align 4, !tbaa !19
  %idxprom = sext i32 %73 to i64
  %arrayidx = getelementptr inbounds [257 x i8], ptr %line, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !20
  %arraydecay60 = getelementptr inbounds [40 x i8], ptr %format, i64 0, i64 0
  %74 = load i32, ptr %barwidth, align 4, !tbaa !19
  %call61 = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %arraydecay60, i64 noundef 40, ptr noundef @.str, i32 noundef %74) #8
  %75 = load ptr, ptr %bar, align 8, !tbaa !4
  %out = getelementptr inbounds %struct.ProgressData, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %out, align 8, !tbaa !21
  %arraydecay62 = getelementptr inbounds [40 x i8], ptr %format, i64 0, i64 0
  %arraydecay63 = getelementptr inbounds [257 x i8], ptr %line, i64 0, i64 0
  %77 = load double, ptr %percent, align 8, !tbaa !16
  %call64 = call i32 (ptr, ptr, ...) @curl_mfprintf(ptr noundef %76, ptr noundef %arraydecay62, ptr noundef %arraydecay63, double noundef %77) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %barwidth) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %percent) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %frac) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %format) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr %line) #7
  br label %if.end65

if.end65:                                         ; preds = %if.end58, %land.lhs.true43, %if.end40
  %78 = load ptr, ptr %bar, align 8, !tbaa !4
  %out66 = getelementptr inbounds %struct.ProgressData, ptr %78, i32 0, i32 4
  %79 = load ptr, ptr %out66, align 8, !tbaa !21
  %call67 = call i32 @fflush(ptr noundef %79) #8
  %80 = load i64, ptr %point, align 8, !tbaa !8
  %81 = load ptr, ptr %bar, align 8, !tbaa !4
  %prev68 = getelementptr inbounds %struct.ProgressData, ptr %81, i32 0, i32 1
  store i64 %80, ptr %prev68, align 8, !tbaa !15
  %82 = load ptr, ptr %bar, align 8, !tbaa !4
  %prevtime69 = getelementptr inbounds %struct.ProgressData, ptr %82, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prevtime69, ptr align 8 %now, i64 16, i1 false), !tbaa.struct !22
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then35, %if.then28, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %point) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bar) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %now) #7
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare { i64, i64 } @tvnow() #2

; Function Attrs: optsize
declare i64 @tvdiff(i64, i64, i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define internal void @fly(ptr noundef %bar, i1 noundef zeroext %moved) #0 {
entry:
  %bar.addr = alloca ptr, align 8
  %moved.addr = alloca i8, align 1
  %buf = alloca [256 x i8], align 16
  %pos = alloca i32, align 4
  %check = alloca i32, align 4
  store ptr %bar, ptr %bar.addr, align 8, !tbaa !4
  %frombool = zext i1 %moved to i8
  store i8 %frombool, ptr %moved.addr, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %check) #7
  %0 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.ProgressData, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %width, align 8, !tbaa !18
  %sub = sub nsw i32 %1, 2
  store i32 %sub, ptr %check, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width1 = getelementptr inbounds %struct.ProgressData, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %width1, align 8, !tbaa !18
  %sub2 = sub nsw i32 %3, 1
  %call = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.2, i32 noundef %sub2, ptr noundef @.str.3) #8
  %4 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %bar3 = getelementptr inbounds %struct.ProgressData, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %bar3, align 4, !tbaa !25
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 @.str.4, i64 5, i1 false)
  %6 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick = getelementptr inbounds %struct.ProgressData, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %tick, align 8, !tbaa !26
  %rem = urem i32 %7, 200
  %idxprom4 = zext i32 %rem to i64
  %arrayidx5 = getelementptr inbounds [200 x i32], ptr @sinus, i64 0, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4, !tbaa !19
  %9 = load i32, ptr %check, align 4, !tbaa !19
  %div = sdiv i32 10000, %9
  %div6 = udiv i32 %8, %div
  store i32 %div6, ptr %pos, align 4, !tbaa !19
  %10 = load i32, ptr %pos, align 4, !tbaa !19
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 %idxprom7
  store i8 35, ptr %arrayidx8, align 1, !tbaa !20
  %11 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick9 = getelementptr inbounds %struct.ProgressData, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %tick9, align 8, !tbaa !26
  %add = add i32 %12, 5
  %rem10 = urem i32 %add, 200
  %idxprom11 = zext i32 %rem10 to i64
  %arrayidx12 = getelementptr inbounds [200 x i32], ptr @sinus, i64 0, i64 %idxprom11
  %13 = load i32, ptr %arrayidx12, align 4, !tbaa !19
  %14 = load i32, ptr %check, align 4, !tbaa !19
  %div13 = sdiv i32 10000, %14
  %div14 = udiv i32 %13, %div13
  store i32 %div14, ptr %pos, align 4, !tbaa !19
  %15 = load i32, ptr %pos, align 4, !tbaa !19
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 %idxprom15
  store i8 35, ptr %arrayidx16, align 1, !tbaa !20
  %16 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick17 = getelementptr inbounds %struct.ProgressData, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %tick17, align 8, !tbaa !26
  %add18 = add i32 %17, 10
  %rem19 = urem i32 %add18, 200
  %idxprom20 = zext i32 %rem19 to i64
  %arrayidx21 = getelementptr inbounds [200 x i32], ptr @sinus, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4, !tbaa !19
  %19 = load i32, ptr %check, align 4, !tbaa !19
  %div22 = sdiv i32 10000, %19
  %div23 = udiv i32 %18, %div22
  store i32 %div23, ptr %pos, align 4, !tbaa !19
  %20 = load i32, ptr %pos, align 4, !tbaa !19
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 %idxprom24
  store i8 35, ptr %arrayidx25, align 1, !tbaa !20
  %21 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick26 = getelementptr inbounds %struct.ProgressData, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %tick26, align 8, !tbaa !26
  %add27 = add i32 %22, 15
  %rem28 = urem i32 %add27, 200
  %idxprom29 = zext i32 %rem28 to i64
  %arrayidx30 = getelementptr inbounds [200 x i32], ptr @sinus, i64 0, i64 %idxprom29
  %23 = load i32, ptr %arrayidx30, align 4, !tbaa !19
  %24 = load i32, ptr %check, align 4, !tbaa !19
  %div31 = sdiv i32 10000, %24
  %div32 = udiv i32 %23, %div31
  store i32 %div32, ptr %pos, align 4, !tbaa !19
  %25 = load i32, ptr %pos, align 4, !tbaa !19
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 %idxprom33
  store i8 35, ptr %arrayidx34, align 1, !tbaa !20
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %26 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %out = getelementptr inbounds %struct.ProgressData, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %out, align 8, !tbaa !21
  %call36 = call i32 @fputs(ptr noundef %arraydecay35, ptr noundef %27) #8
  %28 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick37 = getelementptr inbounds %struct.ProgressData, ptr %28, i32 0, i32 6
  %29 = load i32, ptr %tick37, align 8, !tbaa !26
  %add38 = add i32 %29, 2
  store i32 %add38, ptr %tick37, align 8, !tbaa !26
  %30 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick39 = getelementptr inbounds %struct.ProgressData, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %tick39, align 8, !tbaa !26
  %cmp = icmp uge i32 %31, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %32 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick40 = getelementptr inbounds %struct.ProgressData, ptr %32, i32 0, i32 6
  %33 = load i32, ptr %tick40, align 8, !tbaa !26
  %sub41 = sub i32 %33, 200
  store i32 %sub41, ptr %tick40, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load i8, ptr %moved.addr, align 1, !tbaa !23, !range !27, !noundef !28
  %tobool = trunc i8 %34 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %35 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %barmove = getelementptr inbounds %struct.ProgressData, ptr %35, i32 0, i32 8
  %36 = load i32, ptr %barmove, align 8, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ 0, %cond.false ]
  %37 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %bar42 = getelementptr inbounds %struct.ProgressData, ptr %37, i32 0, i32 7
  %38 = load i32, ptr %bar42, align 4, !tbaa !25
  %add43 = add nsw i32 %38, %cond
  store i32 %add43, ptr %bar42, align 4, !tbaa !25
  %39 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %bar44 = getelementptr inbounds %struct.ProgressData, ptr %39, i32 0, i32 7
  %40 = load i32, ptr %bar44, align 4, !tbaa !25
  %41 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width45 = getelementptr inbounds %struct.ProgressData, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %width45, align 8, !tbaa !18
  %sub46 = sub nsw i32 %42, 6
  %cmp47 = icmp sge i32 %40, %sub46
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %cond.end
  %43 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %barmove49 = getelementptr inbounds %struct.ProgressData, ptr %43, i32 0, i32 8
  store i32 -1, ptr %barmove49, align 8, !tbaa !29
  %44 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width50 = getelementptr inbounds %struct.ProgressData, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %width50, align 8, !tbaa !18
  %sub51 = sub nsw i32 %45, 6
  %46 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %bar52 = getelementptr inbounds %struct.ProgressData, ptr %46, i32 0, i32 7
  store i32 %sub51, ptr %bar52, align 4, !tbaa !25
  br label %if.end59

if.else:                                          ; preds = %cond.end
  %47 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %bar53 = getelementptr inbounds %struct.ProgressData, ptr %47, i32 0, i32 7
  %48 = load i32, ptr %bar53, align 4, !tbaa !25
  %cmp54 = icmp slt i32 %48, 0
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.else
  %49 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %barmove56 = getelementptr inbounds %struct.ProgressData, ptr %49, i32 0, i32 8
  store i32 1, ptr %barmove56, align 8, !tbaa !29
  %50 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %bar57 = getelementptr inbounds %struct.ProgressData, ptr %50, i32 0, i32 7
  store i32 0, ptr %bar57, align 4, !tbaa !25
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.else
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then48
  call void @llvm.lifetime.end.p0(i64 4, ptr %check) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: optsize
declare i32 @curl_mfprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @fflush(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind optsize uwtable
define void @progressbarinit(ptr noundef %bar, ptr noundef %config) #0 {
entry:
  %bar.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %colp = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %num = alloca i64, align 8
  %cols = alloca i32, align 4
  %ts = alloca %struct.winsize, align 2
  store ptr %bar, ptr %bar.addr, align 8, !tbaa !4
  store ptr %config, ptr %config.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colp) #7
  %0 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 72, i1 false)
  %1 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %use_resume = getelementptr inbounds %struct.OperationConfig, ptr %1, i32 0, i32 12
  %2 = load i8, ptr %use_resume, align 8, !tbaa !30, !range !27, !noundef !28
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %resume_from = getelementptr inbounds %struct.OperationConfig, ptr %3, i32 0, i32 22
  %4 = load i64, ptr %resume_from, align 8, !tbaa !34
  %5 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %initial_size = getelementptr inbounds %struct.ProgressData, ptr %5, i32 0, i32 5
  store i64 %4, ptr %initial_size, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call ptr @curl_getenv(ptr noundef @.str.1) #8
  store ptr %call, ptr %colp, align 8, !tbaa !4
  %6 = load ptr, ptr %colp, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %6, null
  br i1 %tobool1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #7
  %7 = load ptr, ptr %colp, align 8, !tbaa !4
  %call3 = call i64 @strtol(ptr noundef %7, ptr noundef %endptr, i32 noundef 10) #9
  store i64 %call3, ptr %num, align 8, !tbaa !8
  %8 = load ptr, ptr %endptr, align 8, !tbaa !4
  %9 = load ptr, ptr %colp, align 8, !tbaa !4
  %cmp = icmp ne ptr %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then2
  %10 = load ptr, ptr %endptr, align 8, !tbaa !4
  %11 = load ptr, ptr %colp, align 8, !tbaa !4
  %12 = load ptr, ptr %colp, align 8, !tbaa !4
  %call4 = call i64 @strlen(ptr noundef %12) #10
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %call4
  %cmp5 = icmp eq ptr %10, %add.ptr
  br i1 %cmp5, label %land.lhs.true6, label %if.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load i64, ptr %num, align 8, !tbaa !8
  %cmp7 = icmp sgt i64 %13, 20
  br i1 %cmp7, label %land.lhs.true8, label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %14 = load i64, ptr %num, align 8, !tbaa !8
  %cmp9 = icmp slt i64 %14, 10000
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  %15 = load i64, ptr %num, align 8, !tbaa !8
  %conv = trunc i64 %15 to i32
  %16 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width = getelementptr inbounds %struct.ProgressData, ptr %16, i32 0, i32 3
  store i32 %conv, ptr %width, align 8, !tbaa !18
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %if.then2
  %17 = load ptr, ptr %colp, align 8, !tbaa !4
  call void @curl_free(ptr noundef %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %18 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width13 = getelementptr inbounds %struct.ProgressData, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %width13, align 8, !tbaa !18
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end22, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cols) #7
  store i32 0, ptr %cols, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #7
  %call16 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, ptr noundef %ts) #9
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then15
  %ws_col = getelementptr inbounds %struct.winsize, ptr %ts, i32 0, i32 1
  %20 = load i16, ptr %ws_col, align 2, !tbaa !35
  %conv19 = zext i16 %20 to i32
  store i32 %conv19, ptr %cols, align 4, !tbaa !19
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  %21 = load i32, ptr %cols, align 4, !tbaa !19
  %22 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width21 = getelementptr inbounds %struct.ProgressData, ptr %22, i32 0, i32 3
  store i32 %21, ptr %width21, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cols) #7
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end12
  %23 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width23 = getelementptr inbounds %struct.ProgressData, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %width23, align 8, !tbaa !18
  %tobool24 = icmp ne i32 %24, 0
  br i1 %tobool24, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  %25 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width26 = getelementptr inbounds %struct.ProgressData, ptr %25, i32 0, i32 3
  store i32 79, ptr %width26, align 8, !tbaa !18
  br label %if.end33

if.else:                                          ; preds = %if.end22
  %26 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width27 = getelementptr inbounds %struct.ProgressData, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %width27, align 8, !tbaa !18
  %cmp28 = icmp sgt i32 %27, 256
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else
  %28 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %width31 = getelementptr inbounds %struct.ProgressData, ptr %28, i32 0, i32 3
  store i32 256, ptr %width31, align 8, !tbaa !18
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then25
  %29 = load ptr, ptr %config.addr, align 8, !tbaa !4
  %global = getelementptr inbounds %struct.OperationConfig, ptr %29, i32 0, i32 200
  %30 = load ptr, ptr %global, align 8, !tbaa !37
  %errors = getelementptr inbounds %struct.GlobalConfig, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %errors, align 8, !tbaa !38
  %32 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %out = getelementptr inbounds %struct.ProgressData, ptr %32, i32 0, i32 4
  store ptr %31, ptr %out, align 8, !tbaa !21
  %33 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %tick = getelementptr inbounds %struct.ProgressData, ptr %33, i32 0, i32 6
  store i32 150, ptr %tick, align 8, !tbaa !26
  %34 = load ptr, ptr %bar.addr, align 8, !tbaa !4
  %barmove = getelementptr inbounds %struct.ProgressData, ptr %34, i32 0, i32 8
  store i32 1, ptr %barmove, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %colp) #7
  ret void
}

; Function Attrs: optsize
declare ptr @curl_getenv(ptr noundef) #2

; Function Attrs: nounwind optsize
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind optsize willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: optsize
declare void @curl_free(ptr noundef) #2

; Function Attrs: nounwind optsize
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #5

; Function Attrs: optsize
declare i32 @fputs(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }

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
!10 = !{!11, !9, i64 48}
!11 = !{!"ProgressData", !12, i64 0, !9, i64 8, !13, i64 16, !12, i64 32, !5, i64 40, !9, i64 48, !12, i64 56, !12, i64 60, !12, i64 64}
!12 = !{!"int", !6, i64 0}
!13 = !{!"timeval", !9, i64 0, !9, i64 8}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !9, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = !{!11, !12, i64 32}
!19 = !{!12, !12, i64 0}
!20 = !{!6, !6, i64 0}
!21 = !{!11, !5, i64 40}
!22 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!23 = !{!24, !24, i64 0}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!11, !12, i64 60}
!26 = !{!11, !12, i64 56}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!11, !12, i64 64}
!30 = !{!31, !24, i64 80}
!31 = !{!"OperationConfig", !24, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !24, i64 64, !24, i64 65, !24, i64 66, !9, i64 72, !24, i64 80, !24, i64 81, !24, i64 82, !24, i64 83, !24, i64 84, !9, i64 88, !24, i64 96, !9, i64 104, !24, i64 112, !5, i64 120, !9, i64 128, !5, i64 136, !9, i64 144, !5, i64 152, !17, i64 160, !17, i64 168, !9, i64 176, !9, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !9, i64 216, !9, i64 224, !32, i64 232, !5, i64 240, !9, i64 248, !9, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !12, i64 376, !5, i64 384, !5, i64 392, !5, i64 400, !5, i64 408, !5, i64 416, !24, i64 424, !24, i64 425, !24, i64 426, !24, i64 427, !24, i64 428, !24, i64 429, !24, i64 430, !24, i64 431, !24, i64 432, !24, i64 433, !24, i64 434, !24, i64 435, !24, i64 436, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !5, i64 536, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608, !5, i64 616, !5, i64 624, !5, i64 632, !5, i64 640, !5, i64 648, !5, i64 656, !5, i64 664, !5, i64 672, !5, i64 680, !5, i64 688, !24, i64 696, !5, i64 704, !5, i64 712, !5, i64 720, !9, i64 728, !24, i64 736, !24, i64 737, !24, i64 738, !24, i64 739, !24, i64 740, !24, i64 741, !24, i64 742, !24, i64 743, !24, i64 744, !24, i64 745, !24, i64 746, !24, i64 747, !24, i64 748, !24, i64 749, !24, i64 750, !24, i64 751, !24, i64 752, !5, i64 760, !5, i64 768, !5, i64 776, !5, i64 784, !9, i64 792, !9, i64 800, !9, i64 808, !9, i64 816, !6, i64 824, !9, i64 832, !5, i64 840, !5, i64 848, !5, i64 856, !5, i64 864, !5, i64 872, !5, i64 880, !5, i64 888, !5, i64 896, !6, i64 904, !9, i64 912, !9, i64 920, !24, i64 928, !24, i64 929, !24, i64 930, !24, i64 931, !12, i64 932, !5, i64 936, !12, i64 944, !9, i64 952, !5, i64 960, !5, i64 968, !24, i64 976, !24, i64 977, !9, i64 984, !24, i64 992, !9, i64 1000, !9, i64 1008, !5, i64 1016, !5, i64 1024, !12, i64 1032, !9, i64 1040, !24, i64 1048, !24, i64 1049, !24, i64 1050, !24, i64 1051, !24, i64 1052, !24, i64 1053, !24, i64 1054, !24, i64 1055, !9, i64 1056, !24, i64 1064, !12, i64 1068, !24, i64 1072, !9, i64 1080, !24, i64 1088, !24, i64 1089, !24, i64 1090, !24, i64 1091, !5, i64 1096, !5, i64 1104, !5, i64 1112, !24, i64 1120, !24, i64 1121, !5, i64 1128, !24, i64 1136, !24, i64 1137, !24, i64 1138, !17, i64 1144, !24, i64 1152, !6, i64 1156, !24, i64 1160, !9, i64 1168, !24, i64 1176, !24, i64 1177, !5, i64 1184, !5, i64 1192, !5, i64 1200, !33, i64 1208}
!32 = !{!"short", !6, i64 0}
!33 = !{!"State", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!34 = !{!31, !9, i64 128}
!35 = !{!36, !32, i64 2}
!36 = !{!"winsize", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6}
!37 = !{!31, !5, i64 1184}
!38 = !{!39, !5, i64 8}
!39 = !{!"GlobalConfig", !12, i64 0, !24, i64 4, !24, i64 5, !24, i64 6, !5, i64 8, !24, i64 16, !5, i64 24, !5, i64 32, !24, i64 40, !6, i64 44, !24, i64 48, !12, i64 52, !5, i64 56, !24, i64 64, !24, i64 65, !24, i64 66, !9, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
