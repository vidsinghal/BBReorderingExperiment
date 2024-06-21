; ModuleID = 'samples/743.bc'
source_filename = "lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@lzma_lzma_preset.dict_pow2 = internal constant [10 x i8] c"\12\14\15\16\16\17\17\18\19\1A", align 1
@lzma_lzma_preset.depths = internal constant [4 x i8] c"\04\08\180", align 1

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i8 @lzma_lzma_preset(ptr noundef %options, i32 noundef %preset) #0 {
entry:
  %retval = alloca i8, align 1
  %options.addr = alloca ptr, align 8
  %preset.addr = alloca i32, align 4
  %level = alloca i32, align 4
  %flags = alloca i32, align 4
  %supported_flags = alloca i32, align 4
  store ptr %options, ptr %options.addr, align 8
  store i32 %preset, ptr %preset.addr, align 4
  %0 = load i32, ptr %preset.addr, align 4
  %and = and i32 %0, 31
  store i32 %and, ptr %level, align 4
  %1 = load i32, ptr %preset.addr, align 4
  %and1 = and i32 %1, -32
  store i32 %and1, ptr %flags, align 4
  store i32 -2147483648, ptr %supported_flags, align 4
  %2 = load i32, ptr %level, align 4
  %cmp = icmp ugt i32 %2, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %flags, align 4
  %and2 = and i32 %3, 2147483647
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %options.addr, align 8
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i32 0, i32 1
  store ptr null, ptr %preset_dict, align 8
  %5 = load ptr, ptr %options.addr, align 8
  %preset_dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %5, i32 0, i32 2
  store i32 0, ptr %preset_dict_size, align 8
  %6 = load ptr, ptr %options.addr, align 8
  %lc = getelementptr inbounds %struct.lzma_options_lzma, ptr %6, i32 0, i32 3
  store i32 3, ptr %lc, align 4
  %7 = load ptr, ptr %options.addr, align 8
  %lp = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i32 0, i32 4
  store i32 0, ptr %lp, align 8
  %8 = load ptr, ptr %options.addr, align 8
  %pb = getelementptr inbounds %struct.lzma_options_lzma, ptr %8, i32 0, i32 5
  store i32 2, ptr %pb, align 4
  %9 = load i32, ptr %level, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr @lzma_lzma_preset.dict_pow2, i64 0, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shl = shl i32 1, %conv
  %11 = load ptr, ptr %options.addr, align 8
  %dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %11, i32 0, i32 0
  store i32 %shl, ptr %dict_size, align 8
  %12 = load i32, ptr %level, align 4
  %cmp3 = icmp ule i32 %12, 3
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %options.addr, align 8
  %mode = getelementptr inbounds %struct.lzma_options_lzma, ptr %13, i32 0, i32 6
  store i32 1, ptr %mode, align 8
  %14 = load i32, ptr %level, align 4
  %cmp6 = icmp eq i32 %14, 0
  %15 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 3, i32 4
  %16 = load ptr, ptr %options.addr, align 8
  %mf = getelementptr inbounds %struct.lzma_options_lzma, ptr %16, i32 0, i32 8
  store i32 %cond, ptr %mf, align 8
  %17 = load i32, ptr %level, align 4
  %cmp8 = icmp ule i32 %17, 1
  %18 = zext i1 %cmp8 to i64
  %cond10 = select i1 %cmp8, i32 128, i32 273
  %19 = load ptr, ptr %options.addr, align 8
  %nice_len = getelementptr inbounds %struct.lzma_options_lzma, ptr %19, i32 0, i32 7
  store i32 %cond10, ptr %nice_len, align 4
  %20 = load i32, ptr %level, align 4
  %idxprom11 = zext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [4 x i8], ptr @lzma_lzma_preset.depths, i64 0, i64 %idxprom11
  %21 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %21 to i32
  %22 = load ptr, ptr %options.addr, align 8
  %depth = getelementptr inbounds %struct.lzma_options_lzma, ptr %22, i32 0, i32 9
  store i32 %conv13, ptr %depth, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %options.addr, align 8
  %mode14 = getelementptr inbounds %struct.lzma_options_lzma, ptr %23, i32 0, i32 6
  store i32 2, ptr %mode14, align 8
  %24 = load ptr, ptr %options.addr, align 8
  %mf15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %24, i32 0, i32 8
  store i32 20, ptr %mf15, align 8
  %25 = load i32, ptr %level, align 4
  %cmp16 = icmp eq i32 %25, 4
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %26 = load i32, ptr %level, align 4
  %cmp18 = icmp eq i32 %26, 5
  %27 = zext i1 %cmp18 to i64
  %cond20 = select i1 %cmp18, i32 32, i32 64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i32 [ 16, %cond.true ], [ %cond20, %cond.false ]
  %28 = load ptr, ptr %options.addr, align 8
  %nice_len22 = getelementptr inbounds %struct.lzma_options_lzma, ptr %28, i32 0, i32 7
  store i32 %cond21, ptr %nice_len22, align 4
  %29 = load ptr, ptr %options.addr, align 8
  %depth23 = getelementptr inbounds %struct.lzma_options_lzma, ptr %29, i32 0, i32 9
  store i32 0, ptr %depth23, align 4
  br label %if.end24

if.end24:                                         ; preds = %cond.end, %if.then5
  %30 = load i32, ptr %flags, align 4
  %and25 = and i32 %30, -2147483648
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end42

if.then27:                                        ; preds = %if.end24
  %31 = load ptr, ptr %options.addr, align 8
  %mode28 = getelementptr inbounds %struct.lzma_options_lzma, ptr %31, i32 0, i32 6
  store i32 2, ptr %mode28, align 8
  %32 = load ptr, ptr %options.addr, align 8
  %mf29 = getelementptr inbounds %struct.lzma_options_lzma, ptr %32, i32 0, i32 8
  store i32 20, ptr %mf29, align 8
  %33 = load i32, ptr %level, align 4
  %cmp30 = icmp eq i32 %33, 3
  br i1 %cmp30, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.then27
  %34 = load i32, ptr %level, align 4
  %cmp33 = icmp eq i32 %34, 5
  br i1 %cmp33, label %if.then35, label %if.else38

if.then35:                                        ; preds = %lor.lhs.false32, %if.then27
  %35 = load ptr, ptr %options.addr, align 8
  %nice_len36 = getelementptr inbounds %struct.lzma_options_lzma, ptr %35, i32 0, i32 7
  store i32 192, ptr %nice_len36, align 4
  %36 = load ptr, ptr %options.addr, align 8
  %depth37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %36, i32 0, i32 9
  store i32 0, ptr %depth37, align 4
  br label %if.end41

if.else38:                                        ; preds = %lor.lhs.false32
  %37 = load ptr, ptr %options.addr, align 8
  %nice_len39 = getelementptr inbounds %struct.lzma_options_lzma, ptr %37, i32 0, i32 7
  store i32 273, ptr %nice_len39, align 4
  %38 = load ptr, ptr %options.addr, align 8
  %depth40 = getelementptr inbounds %struct.lzma_options_lzma, ptr %38, i32 0, i32 9
  store i32 512, ptr %depth40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end24
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end42, %if.then
  %39 = load i8, ptr %retval, align 1
  ret i8 %39
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
