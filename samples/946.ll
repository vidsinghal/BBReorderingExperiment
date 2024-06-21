; ModuleID = 'samples/946.bc'
source_filename = "util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"\0A%s : Error : freq [%d] == %g is out of range. Should be < 0.5.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"util.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [46 x i8] c"Dumping input and output data to file : %s.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [25 x i8] c"# Not created by Octave\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [15 x i8] c"# name: input\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [16 x i8] c"# type: matrix\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [12 x i8] c"# rows: %d\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [14 x i8] c"# columns: 1\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [5 x i8] c"% g\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [16 x i8] c"# name: output\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1, !dbg !54
@get_cpu_name.buffer = internal global [512 x i8] zeroinitializer, align 16, !dbg !59
@.str.12 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1, !dbg !89
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !91
@.str.14 = private unnamed_addr constant [11 x i8] c"model name\00", align 1, !dbg !93
@.str.15 = private unnamed_addr constant [40 x i8] c"Error : search is NULL in function %s.\0A\00", align 1, !dbg !98
@__func__.get_cpu_name = private unnamed_addr constant [13 x i8] c"get_cpu_name\00", align 1, !dbg !103

; Function Attrs: nounwind uwtable
define dso_local void @gen_windowed_sines(i32 noundef %freq_count, ptr noundef %freqs, double noundef %max, ptr noundef %output, i32 noundef %output_len) #0 !dbg !186 {
entry:
  %freq_count.addr = alloca i32, align 4
  %freqs.addr = alloca ptr, align 8
  %max.addr = alloca double, align 8
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %freq = alloca i32, align 4
  %amplitude = alloca double, align 8
  %phase = alloca double, align 8
  store i32 %freq_count, ptr %freq_count.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %freq_count.addr, metadata !195, metadata !DIExpression()), !dbg !208
  store ptr %freqs, ptr %freqs.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %freqs.addr, metadata !196, metadata !DIExpression()), !dbg !211
  store double %max, ptr %max.addr, align 8, !tbaa !212
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !197, metadata !DIExpression()), !dbg !214
  store ptr %output, ptr %output.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !198, metadata !DIExpression()), !dbg !215
  store i32 %output_len, ptr %output_len.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %output_len.addr, metadata !199, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8, !dbg !217
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !200, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #8, !dbg !217
  tail call void @llvm.dbg.declare(metadata ptr %freq, metadata !201, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %amplitude) #8, !dbg !220
  tail call void @llvm.dbg.declare(metadata ptr %amplitude, metadata !202, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %phase) #8, !dbg !220
  tail call void @llvm.dbg.declare(metadata ptr %phase, metadata !203, metadata !DIExpression()), !dbg !222
  %0 = load double, ptr %max.addr, align 8, !dbg !223, !tbaa !212
  %1 = load i32, ptr %freq_count.addr, align 4, !dbg !224, !tbaa !204
  %conv = sitofp i32 %1 to double, !dbg !224
  %div = fdiv double %0, %conv, !dbg !225
  store double %div, ptr %amplitude, align 8, !dbg !226, !tbaa !212
  store i32 0, ptr %k, align 4, !dbg !227, !tbaa !204
  br label %for.cond, !dbg !229

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %k, align 4, !dbg !230, !tbaa !204
  %3 = load i32, ptr %output_len.addr, align 4, !dbg !232, !tbaa !204
  %cmp = icmp slt i32 %2, %3, !dbg !233
  br i1 %cmp, label %for.body, label %for.end, !dbg !234

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %output.addr, align 8, !dbg !235, !tbaa !209
  %5 = load i32, ptr %k, align 4, !dbg !236, !tbaa !204
  %idxprom = sext i32 %5 to i64, !dbg !235
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %idxprom, !dbg !235
  store float 0.000000e+00, ptr %arrayidx, align 4, !dbg !237, !tbaa !238
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %k, align 4, !dbg !240, !tbaa !204
  %inc = add nsw i32 %6, 1, !dbg !240
  store i32 %inc, ptr %k, align 4, !dbg !240, !tbaa !204
  br label %for.cond, !dbg !241, !llvm.loop !242

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %freq, align 4, !dbg !244, !tbaa !204
  br label %for.cond2, !dbg !246

for.cond2:                                        ; preds = %for.inc36, %for.end
  %7 = load i32, ptr %freq, align 4, !dbg !247, !tbaa !204
  %8 = load i32, ptr %freq_count.addr, align 4, !dbg !249, !tbaa !204
  %cmp3 = icmp slt i32 %7, %8, !dbg !250
  br i1 %cmp3, label %for.body5, label %for.end38, !dbg !251

for.body5:                                        ; preds = %for.cond2
  %9 = load i32, ptr %freq_count.addr, align 4, !dbg !252, !tbaa !204
  %conv6 = sitofp i32 %9 to double, !dbg !252
  %div7 = fdiv double 0x40069E9565708EFC, %conv6, !dbg !254
  store double %div7, ptr %phase, align 8, !dbg !255, !tbaa !212
  %10 = load ptr, ptr %freqs.addr, align 8, !dbg !256, !tbaa !209
  %11 = load i32, ptr %freq, align 4, !dbg !258, !tbaa !204
  %idxprom8 = sext i32 %11 to i64, !dbg !256
  %arrayidx9 = getelementptr inbounds double, ptr %10, i64 %idxprom8, !dbg !256
  %12 = load double, ptr %arrayidx9, align 8, !dbg !256, !tbaa !212
  %cmp10 = fcmp ole double %12, 0.000000e+00, !dbg !259
  br i1 %cmp10, label %if.then, label %lor.lhs.false, !dbg !260

lor.lhs.false:                                    ; preds = %for.body5
  %13 = load ptr, ptr %freqs.addr, align 8, !dbg !261, !tbaa !209
  %14 = load i32, ptr %freq, align 4, !dbg !262, !tbaa !204
  %idxprom12 = sext i32 %14 to i64, !dbg !261
  %arrayidx13 = getelementptr inbounds double, ptr %13, i64 %idxprom12, !dbg !261
  %15 = load double, ptr %arrayidx13, align 8, !dbg !261, !tbaa !212
  %cmp14 = fcmp oge double %15, 5.000000e-01, !dbg !263
  br i1 %cmp14, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %lor.lhs.false, %for.body5
  %16 = load i32, ptr %freq, align 4, !dbg !265, !tbaa !204
  %17 = load ptr, ptr %freqs.addr, align 8, !dbg !267, !tbaa !209
  %18 = load i32, ptr %freq, align 4, !dbg !268, !tbaa !204
  %idxprom16 = sext i32 %18 to i64, !dbg !267
  %arrayidx17 = getelementptr inbounds double, ptr %17, i64 %idxprom16, !dbg !267
  %19 = load double, ptr %arrayidx17, align 8, !dbg !267, !tbaa !212
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, i32 noundef %16, double noundef %19), !dbg !269
  call void @exit(i32 noundef 1) #9, !dbg !270
  unreachable, !dbg !270

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %k, align 4, !dbg !271, !tbaa !204
  br label %for.cond18, !dbg !273

for.cond18:                                       ; preds = %for.inc33, %if.end
  %20 = load i32, ptr %k, align 4, !dbg !274, !tbaa !204
  %21 = load i32, ptr %output_len.addr, align 4, !dbg !276, !tbaa !204
  %cmp19 = icmp slt i32 %20, %21, !dbg !277
  br i1 %cmp19, label %for.body21, label %for.end35, !dbg !278

for.body21:                                       ; preds = %for.cond18
  %22 = load double, ptr %amplitude, align 8, !dbg !279, !tbaa !212
  %23 = load ptr, ptr %freqs.addr, align 8, !dbg !280, !tbaa !209
  %24 = load i32, ptr %freq, align 4, !dbg !281, !tbaa !204
  %idxprom22 = sext i32 %24 to i64, !dbg !280
  %arrayidx23 = getelementptr inbounds double, ptr %23, i64 %idxprom22, !dbg !280
  %25 = load double, ptr %arrayidx23, align 8, !dbg !280, !tbaa !212
  %26 = load i32, ptr %k, align 4, !dbg !282, !tbaa !204
  %mul = mul nsw i32 2, %26, !dbg !283
  %conv24 = sitofp i32 %mul to double, !dbg !284
  %mul25 = fmul double %25, %conv24, !dbg !285
  %27 = load double, ptr %phase, align 8, !dbg !286, !tbaa !212
  %28 = call double @llvm.fmuladd.f64(double %mul25, double 0x400921FB54442D18, double %27), !dbg !287
  %call27 = call double @sin(double noundef %28) #8, !dbg !288
  %29 = load ptr, ptr %output.addr, align 8, !dbg !289, !tbaa !209
  %30 = load i32, ptr %k, align 4, !dbg !290, !tbaa !204
  %idxprom29 = sext i32 %30 to i64, !dbg !289
  %arrayidx30 = getelementptr inbounds float, ptr %29, i64 %idxprom29, !dbg !289
  %31 = load float, ptr %arrayidx30, align 4, !dbg !291, !tbaa !238
  %conv31 = fpext float %31 to double, !dbg !291
  %32 = call double @llvm.fmuladd.f64(double %22, double %call27, double %conv31), !dbg !291
  %conv32 = fptrunc double %32 to float, !dbg !291
  store float %conv32, ptr %arrayidx30, align 4, !dbg !291, !tbaa !238
  br label %for.inc33, !dbg !289

for.inc33:                                        ; preds = %for.body21
  %33 = load i32, ptr %k, align 4, !dbg !292, !tbaa !204
  %inc34 = add nsw i32 %33, 1, !dbg !292
  store i32 %inc34, ptr %k, align 4, !dbg !292, !tbaa !204
  br label %for.cond18, !dbg !293, !llvm.loop !294

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36, !dbg !296

for.inc36:                                        ; preds = %for.end35
  %34 = load i32, ptr %freq, align 4, !dbg !297, !tbaa !204
  %inc37 = add nsw i32 %34, 1, !dbg !297
  store i32 %inc37, ptr %freq, align 4, !dbg !297, !tbaa !204
  br label %for.cond2, !dbg !298, !llvm.loop !299

for.end38:                                        ; preds = %for.cond2
  store i32 0, ptr %k, align 4, !dbg !301, !tbaa !204
  br label %for.cond39, !dbg !303

for.cond39:                                       ; preds = %for.inc55, %for.end38
  %35 = load i32, ptr %k, align 4, !dbg !304, !tbaa !204
  %36 = load i32, ptr %output_len.addr, align 4, !dbg !306, !tbaa !204
  %cmp40 = icmp slt i32 %35, %36, !dbg !307
  br i1 %cmp40, label %for.body42, label %for.end57, !dbg !308

for.body42:                                       ; preds = %for.cond39
  %37 = load i32, ptr %k, align 4, !dbg !309, !tbaa !204
  %mul43 = mul nsw i32 2, %37, !dbg !310
  %conv44 = sitofp i32 %mul43 to double, !dbg !311
  %mul45 = fmul double %conv44, 0x400921FB54442D18, !dbg !312
  %38 = load i32, ptr %output_len.addr, align 4, !dbg !313, !tbaa !204
  %sub = sub nsw i32 %38, 1, !dbg !314
  %conv46 = sitofp i32 %sub to double, !dbg !315
  %div47 = fdiv double %mul45, %conv46, !dbg !316
  %call48 = call double @cos(double noundef %div47) #8, !dbg !317
  %39 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %call48, double 5.000000e-01), !dbg !318
  %40 = load ptr, ptr %output.addr, align 8, !dbg !319, !tbaa !209
  %41 = load i32, ptr %k, align 4, !dbg !320, !tbaa !204
  %idxprom50 = sext i32 %41 to i64, !dbg !319
  %arrayidx51 = getelementptr inbounds float, ptr %40, i64 %idxprom50, !dbg !319
  %42 = load float, ptr %arrayidx51, align 4, !dbg !321, !tbaa !238
  %conv52 = fpext float %42 to double, !dbg !321
  %mul53 = fmul double %conv52, %39, !dbg !321
  %conv54 = fptrunc double %mul53 to float, !dbg !321
  store float %conv54, ptr %arrayidx51, align 4, !dbg !321, !tbaa !238
  br label %for.inc55, !dbg !319

for.inc55:                                        ; preds = %for.body42
  %43 = load i32, ptr %k, align 4, !dbg !322, !tbaa !204
  %inc56 = add nsw i32 %43, 1, !dbg !322
  store i32 %inc56, ptr %k, align 4, !dbg !322, !tbaa !204
  br label %for.cond39, !dbg !323, !llvm.loop !324

for.end57:                                        ; preds = %for.cond39
  call void @llvm.lifetime.end.p0(i64 8, ptr %phase) #8, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %amplitude) #8, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #8, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8, !dbg !326
  ret void, !dbg !326
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !327 i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !332 void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare !dbg !336 double @sin(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare !dbg !340 double @cos(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @save_oct_float(ptr noundef %filename, ptr noundef %input, i32 noundef %in_len, ptr noundef %output, i32 noundef %out_len) #0 !dbg !341 {
entry:
  %filename.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %in_len.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %out_len.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !345, metadata !DIExpression()), !dbg !352
  store ptr %input, ptr %input.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !346, metadata !DIExpression()), !dbg !353
  store i32 %in_len, ptr %in_len.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !347, metadata !DIExpression()), !dbg !354
  store ptr %output, ptr %output.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !348, metadata !DIExpression()), !dbg !355
  store i32 %out_len, ptr %out_len.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !349, metadata !DIExpression()), !dbg !356
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8, !dbg !357
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !350, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8, !dbg !359
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !351, metadata !DIExpression()), !dbg !360
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !361, !tbaa !209
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %0), !dbg !362
  %1 = load ptr, ptr %filename.addr, align 8, !dbg !363, !tbaa !209
  %call1 = call noalias ptr @fopen(ptr noundef %1, ptr noundef @.str.3), !dbg !365
  store ptr %call1, ptr %file, align 8, !dbg !366, !tbaa !209
  %tobool = icmp ne ptr %call1, null, !dbg !366
  br i1 %tobool, label %if.end, label %if.then, !dbg !367

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !368

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file, align 8, !dbg !369, !tbaa !209
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.4), !dbg !370
  %3 = load ptr, ptr %file, align 8, !dbg !371, !tbaa !209
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.5), !dbg !372
  %4 = load ptr, ptr %file, align 8, !dbg !373, !tbaa !209
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.6), !dbg !374
  %5 = load ptr, ptr %file, align 8, !dbg !375, !tbaa !209
  %6 = load i32, ptr %in_len.addr, align 4, !dbg !376, !tbaa !204
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.7, i32 noundef %6), !dbg !377
  %7 = load ptr, ptr %file, align 8, !dbg !378, !tbaa !209
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.8), !dbg !379
  store i32 0, ptr %k, align 4, !dbg !380, !tbaa !204
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %k, align 4, !dbg !383, !tbaa !204
  %9 = load i32, ptr %in_len.addr, align 4, !dbg !385, !tbaa !204
  %cmp = icmp slt i32 %8, %9, !dbg !386
  br i1 %cmp, label %for.body, label %for.end, !dbg !387

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %file, align 8, !dbg !388, !tbaa !209
  %11 = load ptr, ptr %input.addr, align 8, !dbg !389, !tbaa !209
  %12 = load i32, ptr %k, align 4, !dbg !390, !tbaa !204
  %idxprom = sext i32 %12 to i64, !dbg !389
  %arrayidx = getelementptr inbounds float, ptr %11, i64 %idxprom, !dbg !389
  %13 = load float, ptr %arrayidx, align 4, !dbg !389, !tbaa !238
  %conv = fpext float %13 to double, !dbg !389
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.9, double noundef %conv), !dbg !391
  br label %for.inc, !dbg !391

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %k, align 4, !dbg !392, !tbaa !204
  %inc = add nsw i32 %14, 1, !dbg !392
  store i32 %inc, ptr %k, align 4, !dbg !392, !tbaa !204
  br label %for.cond, !dbg !393, !llvm.loop !394

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %file, align 8, !dbg !396, !tbaa !209
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.10), !dbg !397
  %16 = load ptr, ptr %file, align 8, !dbg !398, !tbaa !209
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.6), !dbg !399
  %17 = load ptr, ptr %file, align 8, !dbg !400, !tbaa !209
  %18 = load i32, ptr %out_len.addr, align 4, !dbg !401, !tbaa !204
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.7, i32 noundef %18), !dbg !402
  %19 = load ptr, ptr %file, align 8, !dbg !403, !tbaa !209
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.8), !dbg !404
  store i32 0, ptr %k, align 4, !dbg !405, !tbaa !204
  br label %for.cond12, !dbg !407

for.cond12:                                       ; preds = %for.inc20, %for.end
  %20 = load i32, ptr %k, align 4, !dbg !408, !tbaa !204
  %21 = load i32, ptr %out_len.addr, align 4, !dbg !410, !tbaa !204
  %cmp13 = icmp slt i32 %20, %21, !dbg !411
  br i1 %cmp13, label %for.body15, label %for.end22, !dbg !412

for.body15:                                       ; preds = %for.cond12
  %22 = load ptr, ptr %file, align 8, !dbg !413, !tbaa !209
  %23 = load ptr, ptr %output.addr, align 8, !dbg !414, !tbaa !209
  %24 = load i32, ptr %k, align 4, !dbg !415, !tbaa !204
  %idxprom16 = sext i32 %24 to i64, !dbg !414
  %arrayidx17 = getelementptr inbounds float, ptr %23, i64 %idxprom16, !dbg !414
  %25 = load float, ptr %arrayidx17, align 4, !dbg !414, !tbaa !238
  %conv18 = fpext float %25 to double, !dbg !414
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.9, double noundef %conv18), !dbg !416
  br label %for.inc20, !dbg !416

for.inc20:                                        ; preds = %for.body15
  %26 = load i32, ptr %k, align 4, !dbg !417, !tbaa !204
  %inc21 = add nsw i32 %26, 1, !dbg !417
  store i32 %inc21, ptr %k, align 4, !dbg !417, !tbaa !204
  br label %for.cond12, !dbg !418, !llvm.loop !419

for.end22:                                        ; preds = %for.cond12
  %27 = load ptr, ptr %file, align 8, !dbg !421, !tbaa !209
  %call23 = call i32 @fclose(ptr noundef %27), !dbg !422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

cleanup:                                          ; preds = %for.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8, !dbg !424
  ret void, !dbg !424
}

declare !dbg !425 noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare !dbg !428 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !432 i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @save_oct_double(ptr noundef %filename, ptr noundef %input, i32 noundef %in_len, ptr noundef %output, i32 noundef %out_len) #0 !dbg !435 {
entry:
  %filename.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %in_len.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %out_len.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !440, metadata !DIExpression()), !dbg !447
  store ptr %input, ptr %input.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !441, metadata !DIExpression()), !dbg !448
  store i32 %in_len, ptr %in_len.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %in_len.addr, metadata !442, metadata !DIExpression()), !dbg !449
  store ptr %output, ptr %output.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !443, metadata !DIExpression()), !dbg !450
  store i32 %out_len, ptr %out_len.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !444, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8, !dbg !452
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !445, metadata !DIExpression()), !dbg !453
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8, !dbg !454
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !446, metadata !DIExpression()), !dbg !455
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !456, !tbaa !209
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %0), !dbg !457
  %1 = load ptr, ptr %filename.addr, align 8, !dbg !458, !tbaa !209
  %call1 = call noalias ptr @fopen(ptr noundef %1, ptr noundef @.str.3), !dbg !460
  store ptr %call1, ptr %file, align 8, !dbg !461, !tbaa !209
  %tobool = icmp ne ptr %call1, null, !dbg !461
  br i1 %tobool, label %if.end, label %if.then, !dbg !462

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !463

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file, align 8, !dbg !464, !tbaa !209
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.4), !dbg !465
  %3 = load ptr, ptr %file, align 8, !dbg !466, !tbaa !209
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.5), !dbg !467
  %4 = load ptr, ptr %file, align 8, !dbg !468, !tbaa !209
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.6), !dbg !469
  %5 = load ptr, ptr %file, align 8, !dbg !470, !tbaa !209
  %6 = load i32, ptr %in_len.addr, align 4, !dbg !471, !tbaa !204
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.7, i32 noundef %6), !dbg !472
  %7 = load ptr, ptr %file, align 8, !dbg !473, !tbaa !209
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.8), !dbg !474
  store i32 0, ptr %k, align 4, !dbg !475, !tbaa !204
  br label %for.cond, !dbg !477

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %k, align 4, !dbg !478, !tbaa !204
  %9 = load i32, ptr %in_len.addr, align 4, !dbg !480, !tbaa !204
  %cmp = icmp slt i32 %8, %9, !dbg !481
  br i1 %cmp, label %for.body, label %for.end, !dbg !482

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %file, align 8, !dbg !483, !tbaa !209
  %11 = load ptr, ptr %input.addr, align 8, !dbg !484, !tbaa !209
  %12 = load i32, ptr %k, align 4, !dbg !485, !tbaa !204
  %idxprom = sext i32 %12 to i64, !dbg !484
  %arrayidx = getelementptr inbounds double, ptr %11, i64 %idxprom, !dbg !484
  %13 = load double, ptr %arrayidx, align 8, !dbg !484, !tbaa !212
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.9, double noundef %13), !dbg !486
  br label %for.inc, !dbg !486

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %k, align 4, !dbg !487, !tbaa !204
  %inc = add nsw i32 %14, 1, !dbg !487
  store i32 %inc, ptr %k, align 4, !dbg !487, !tbaa !204
  br label %for.cond, !dbg !488, !llvm.loop !489

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %file, align 8, !dbg !491, !tbaa !209
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.10), !dbg !492
  %16 = load ptr, ptr %file, align 8, !dbg !493, !tbaa !209
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.6), !dbg !494
  %17 = load ptr, ptr %file, align 8, !dbg !495, !tbaa !209
  %18 = load i32, ptr %out_len.addr, align 4, !dbg !496, !tbaa !204
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.7, i32 noundef %18), !dbg !497
  %19 = load ptr, ptr %file, align 8, !dbg !498, !tbaa !209
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.8), !dbg !499
  store i32 0, ptr %k, align 4, !dbg !500, !tbaa !204
  br label %for.cond12, !dbg !502

for.cond12:                                       ; preds = %for.inc18, %for.end
  %20 = load i32, ptr %k, align 4, !dbg !503, !tbaa !204
  %21 = load i32, ptr %out_len.addr, align 4, !dbg !505, !tbaa !204
  %cmp13 = icmp slt i32 %20, %21, !dbg !506
  br i1 %cmp13, label %for.body14, label %for.end20, !dbg !507

for.body14:                                       ; preds = %for.cond12
  %22 = load ptr, ptr %file, align 8, !dbg !508, !tbaa !209
  %23 = load ptr, ptr %output.addr, align 8, !dbg !509, !tbaa !209
  %24 = load i32, ptr %k, align 4, !dbg !510, !tbaa !204
  %idxprom15 = sext i32 %24 to i64, !dbg !509
  %arrayidx16 = getelementptr inbounds double, ptr %23, i64 %idxprom15, !dbg !509
  %25 = load double, ptr %arrayidx16, align 8, !dbg !509, !tbaa !212
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.9, double noundef %25), !dbg !511
  br label %for.inc18, !dbg !511

for.inc18:                                        ; preds = %for.body14
  %26 = load i32, ptr %k, align 4, !dbg !512, !tbaa !204
  %inc19 = add nsw i32 %26, 1, !dbg !512
  store i32 %inc19, ptr %k, align 4, !dbg !512, !tbaa !204
  br label %for.cond12, !dbg !513, !llvm.loop !514

for.end20:                                        ; preds = %for.cond12
  %27 = load ptr, ptr %file, align 8, !dbg !516, !tbaa !209
  %call21 = call i32 @fclose(ptr noundef %27), !dbg !517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !518

cleanup:                                          ; preds = %for.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8, !dbg !519
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8, !dbg !519
  ret void, !dbg !519
}

; Function Attrs: nounwind uwtable
define dso_local void @interleave_data(ptr noundef %in, ptr noundef %out, i32 noundef %frames, i32 noundef %channels) #0 !dbg !520 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %frames.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %fr = alloca i32, align 4
  %ch = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !526, metadata !DIExpression()), !dbg !532
  store ptr %out, ptr %out.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !527, metadata !DIExpression()), !dbg !533
  store i32 %frames, ptr %frames.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %frames.addr, metadata !528, metadata !DIExpression()), !dbg !534
  store i32 %channels, ptr %channels.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %channels.addr, metadata !529, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 4, ptr %fr) #8, !dbg !536
  tail call void @llvm.dbg.declare(metadata ptr %fr, metadata !530, metadata !DIExpression()), !dbg !537
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #8, !dbg !536
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !531, metadata !DIExpression()), !dbg !538
  store i32 0, ptr %fr, align 4, !dbg !539, !tbaa !204
  br label %for.cond, !dbg !541

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %fr, align 4, !dbg !542, !tbaa !204
  %1 = load i32, ptr %frames.addr, align 4, !dbg !544, !tbaa !204
  %cmp = icmp slt i32 %0, %1, !dbg !545
  br i1 %cmp, label %for.body, label %for.end10, !dbg !546

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %ch, align 4, !dbg !547, !tbaa !204
  br label %for.cond1, !dbg !549

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %ch, align 4, !dbg !550, !tbaa !204
  %3 = load i32, ptr %channels.addr, align 4, !dbg !552, !tbaa !204
  %cmp2 = icmp slt i32 %2, %3, !dbg !553
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !554

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %in.addr, align 8, !dbg !555, !tbaa !209
  %5 = load i32, ptr %fr, align 4, !dbg !556, !tbaa !204
  %6 = load i32, ptr %frames.addr, align 4, !dbg !557, !tbaa !204
  %7 = load i32, ptr %ch, align 4, !dbg !558, !tbaa !204
  %mul = mul nsw i32 %6, %7, !dbg !559
  %add = add nsw i32 %5, %mul, !dbg !560
  %idxprom = sext i32 %add to i64, !dbg !555
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %idxprom, !dbg !555
  %8 = load float, ptr %arrayidx, align 4, !dbg !555, !tbaa !238
  %9 = load ptr, ptr %out.addr, align 8, !dbg !561, !tbaa !209
  %10 = load i32, ptr %ch, align 4, !dbg !562, !tbaa !204
  %11 = load i32, ptr %channels.addr, align 4, !dbg !563, !tbaa !204
  %12 = load i32, ptr %fr, align 4, !dbg !564, !tbaa !204
  %mul4 = mul nsw i32 %11, %12, !dbg !565
  %add5 = add nsw i32 %10, %mul4, !dbg !566
  %idxprom6 = sext i32 %add5 to i64, !dbg !561
  %arrayidx7 = getelementptr inbounds float, ptr %9, i64 %idxprom6, !dbg !561
  store float %8, ptr %arrayidx7, align 4, !dbg !567, !tbaa !238
  br label %for.inc, !dbg !561

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %ch, align 4, !dbg !568, !tbaa !204
  %inc = add nsw i32 %13, 1, !dbg !568
  store i32 %inc, ptr %ch, align 4, !dbg !568, !tbaa !204
  br label %for.cond1, !dbg !569, !llvm.loop !570

for.end:                                          ; preds = %for.cond1
  br label %for.inc8, !dbg !571

for.inc8:                                         ; preds = %for.end
  %14 = load i32, ptr %fr, align 4, !dbg !572, !tbaa !204
  %inc9 = add nsw i32 %14, 1, !dbg !572
  store i32 %inc9, ptr %fr, align 4, !dbg !572, !tbaa !204
  br label %for.cond, !dbg !573, !llvm.loop !574

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #8, !dbg !576
  call void @llvm.lifetime.end.p0(i64 4, ptr %fr) #8, !dbg !576
  ret void, !dbg !576
}

; Function Attrs: nounwind uwtable
define dso_local void @deinterleave_data(ptr noundef %in, ptr noundef %out, i32 noundef %frames, i32 noundef %channels) #0 !dbg !577 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %frames.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %fr = alloca i32, align 4
  %ch = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !579, metadata !DIExpression()), !dbg !585
  store ptr %out, ptr %out.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !580, metadata !DIExpression()), !dbg !586
  store i32 %frames, ptr %frames.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %frames.addr, metadata !581, metadata !DIExpression()), !dbg !587
  store i32 %channels, ptr %channels.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %channels.addr, metadata !582, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %fr) #8, !dbg !589
  tail call void @llvm.dbg.declare(metadata ptr %fr, metadata !583, metadata !DIExpression()), !dbg !590
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #8, !dbg !589
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !584, metadata !DIExpression()), !dbg !591
  store i32 0, ptr %ch, align 4, !dbg !592, !tbaa !204
  br label %for.cond, !dbg !594

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %ch, align 4, !dbg !595, !tbaa !204
  %1 = load i32, ptr %channels.addr, align 4, !dbg !597, !tbaa !204
  %cmp = icmp slt i32 %0, %1, !dbg !598
  br i1 %cmp, label %for.body, label %for.end10, !dbg !599

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %fr, align 4, !dbg !600, !tbaa !204
  br label %for.cond1, !dbg !602

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %fr, align 4, !dbg !603, !tbaa !204
  %3 = load i32, ptr %frames.addr, align 4, !dbg !605, !tbaa !204
  %cmp2 = icmp slt i32 %2, %3, !dbg !606
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !607

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %in.addr, align 8, !dbg !608, !tbaa !209
  %5 = load i32, ptr %ch, align 4, !dbg !609, !tbaa !204
  %6 = load i32, ptr %channels.addr, align 4, !dbg !610, !tbaa !204
  %7 = load i32, ptr %fr, align 4, !dbg !611, !tbaa !204
  %mul = mul nsw i32 %6, %7, !dbg !612
  %add = add nsw i32 %5, %mul, !dbg !613
  %idxprom = sext i32 %add to i64, !dbg !608
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %idxprom, !dbg !608
  %8 = load float, ptr %arrayidx, align 4, !dbg !608, !tbaa !238
  %9 = load ptr, ptr %out.addr, align 8, !dbg !614, !tbaa !209
  %10 = load i32, ptr %fr, align 4, !dbg !615, !tbaa !204
  %11 = load i32, ptr %frames.addr, align 4, !dbg !616, !tbaa !204
  %12 = load i32, ptr %ch, align 4, !dbg !617, !tbaa !204
  %mul4 = mul nsw i32 %11, %12, !dbg !618
  %add5 = add nsw i32 %10, %mul4, !dbg !619
  %idxprom6 = sext i32 %add5 to i64, !dbg !614
  %arrayidx7 = getelementptr inbounds float, ptr %9, i64 %idxprom6, !dbg !614
  store float %8, ptr %arrayidx7, align 4, !dbg !620, !tbaa !238
  br label %for.inc, !dbg !614

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %fr, align 4, !dbg !621, !tbaa !204
  %inc = add nsw i32 %13, 1, !dbg !621
  store i32 %inc, ptr %fr, align 4, !dbg !621, !tbaa !204
  br label %for.cond1, !dbg !622, !llvm.loop !623

for.end:                                          ; preds = %for.cond1
  br label %for.inc8, !dbg !624

for.inc8:                                         ; preds = %for.end
  %14 = load i32, ptr %ch, align 4, !dbg !625, !tbaa !204
  %inc9 = add nsw i32 %14, 1, !dbg !625
  store i32 %inc9, ptr %ch, align 4, !dbg !625, !tbaa !204
  br label %for.cond, !dbg !626, !llvm.loop !627

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #8, !dbg !629
  call void @llvm.lifetime.end.p0(i64 4, ptr %fr) #8, !dbg !629
  ret void, !dbg !629
}

; Function Attrs: nounwind uwtable
define dso_local void @reverse_data(ptr noundef %data, i32 noundef %datalen) #0 !dbg !630 {
entry:
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %temp = alloca float, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !634, metadata !DIExpression()), !dbg !639
  store i32 %datalen, ptr %datalen.addr, align 4, !tbaa !204
  tail call void @llvm.dbg.declare(metadata ptr %datalen.addr, metadata !635, metadata !DIExpression()), !dbg !640
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #8, !dbg !641
  tail call void @llvm.dbg.declare(metadata ptr %left, metadata !636, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 4, ptr %right) #8, !dbg !641
  tail call void @llvm.dbg.declare(metadata ptr %right, metadata !637, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #8, !dbg !644
  tail call void @llvm.dbg.declare(metadata ptr %temp, metadata !638, metadata !DIExpression()), !dbg !645
  store i32 0, ptr %left, align 4, !dbg !646, !tbaa !204
  %0 = load i32, ptr %datalen.addr, align 4, !dbg !647, !tbaa !204
  %sub = sub nsw i32 %0, 1, !dbg !648
  store i32 %sub, ptr %right, align 4, !dbg !649, !tbaa !204
  br label %while.cond, !dbg !650

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %left, align 4, !dbg !651, !tbaa !204
  %2 = load i32, ptr %right, align 4, !dbg !652, !tbaa !204
  %cmp = icmp slt i32 %1, %2, !dbg !653
  br i1 %cmp, label %while.body, label %while.end, !dbg !650

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %data.addr, align 8, !dbg !654, !tbaa !209
  %4 = load i32, ptr %left, align 4, !dbg !656, !tbaa !204
  %idxprom = sext i32 %4 to i64, !dbg !654
  %arrayidx = getelementptr inbounds float, ptr %3, i64 %idxprom, !dbg !654
  %5 = load float, ptr %arrayidx, align 4, !dbg !654, !tbaa !238
  store float %5, ptr %temp, align 4, !dbg !657, !tbaa !238
  %6 = load ptr, ptr %data.addr, align 8, !dbg !658, !tbaa !209
  %7 = load i32, ptr %right, align 4, !dbg !659, !tbaa !204
  %idxprom1 = sext i32 %7 to i64, !dbg !658
  %arrayidx2 = getelementptr inbounds float, ptr %6, i64 %idxprom1, !dbg !658
  %8 = load float, ptr %arrayidx2, align 4, !dbg !658, !tbaa !238
  %9 = load ptr, ptr %data.addr, align 8, !dbg !660, !tbaa !209
  %10 = load i32, ptr %left, align 4, !dbg !661, !tbaa !204
  %idxprom3 = sext i32 %10 to i64, !dbg !660
  %arrayidx4 = getelementptr inbounds float, ptr %9, i64 %idxprom3, !dbg !660
  store float %8, ptr %arrayidx4, align 4, !dbg !662, !tbaa !238
  %11 = load float, ptr %temp, align 4, !dbg !663, !tbaa !238
  %12 = load ptr, ptr %data.addr, align 8, !dbg !664, !tbaa !209
  %13 = load i32, ptr %right, align 4, !dbg !665, !tbaa !204
  %idxprom5 = sext i32 %13 to i64, !dbg !664
  %arrayidx6 = getelementptr inbounds float, ptr %12, i64 %idxprom5, !dbg !664
  store float %11, ptr %arrayidx6, align 4, !dbg !666, !tbaa !238
  %14 = load i32, ptr %left, align 4, !dbg !667, !tbaa !204
  %inc = add nsw i32 %14, 1, !dbg !667
  store i32 %inc, ptr %left, align 4, !dbg !667, !tbaa !204
  %15 = load i32, ptr %right, align 4, !dbg !668, !tbaa !204
  %dec = add nsw i32 %15, -1, !dbg !668
  store i32 %dec, ptr %right, align 4, !dbg !668, !tbaa !204
  br label %while.cond, !dbg !650, !llvm.loop !669

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 4, ptr %right) #8, !dbg !671
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #8, !dbg !671
  ret void, !dbg !671
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_cpu_name() #0 !dbg !61 {
entry:
  %retval = alloca ptr, align 8
  %name = alloca ptr, align 8
  %search = alloca ptr, align 8
  %file = alloca ptr, align 8
  %is_pipe = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %src = alloca ptr, align 8
  %dest = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !672
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !109, metadata !DIExpression()), !dbg !673
  store ptr @.str.11, ptr %name, align 8, !dbg !673, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 8, ptr %search) #8, !dbg !672
  tail call void @llvm.dbg.declare(metadata ptr %search, metadata !110, metadata !DIExpression()), !dbg !674
  store ptr null, ptr %search, align 8, !dbg !674, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8, !dbg !675
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !111, metadata !DIExpression()), !dbg !676
  store ptr null, ptr %file, align 8, !dbg !676, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_pipe) #8, !dbg !677
  tail call void @llvm.dbg.declare(metadata ptr %is_pipe, metadata !171, metadata !DIExpression()), !dbg !678
  store i32 0, ptr %is_pipe, align 4, !dbg !678, !tbaa !204
  %call = call noalias ptr @fopen(ptr noundef @.str.12, ptr noundef @.str.13), !dbg !679
  store ptr %call, ptr %file, align 8, !dbg !680, !tbaa !209
  store ptr @.str.14, ptr %search, align 8, !dbg !681, !tbaa !209
  %0 = load ptr, ptr %file, align 8, !dbg !682, !tbaa !209
  %cmp = icmp eq ptr %0, null, !dbg !684
  br i1 %cmp, label %if.then, label %if.end, !dbg !685

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name, align 8, !dbg !686, !tbaa !209
  store ptr %1, ptr %retval, align 8, !dbg !687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !687

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %search, align 8, !dbg !688, !tbaa !209
  %cmp1 = icmp eq ptr %2, null, !dbg !690
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !691

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef @__func__.get_cpu_name), !dbg !692
  %3 = load ptr, ptr %name, align 8, !dbg !694, !tbaa !209
  store ptr %3, ptr %retval, align 8, !dbg !695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !695

if.end4:                                          ; preds = %if.end
  br label %while.cond, !dbg !696

while.cond:                                       ; preds = %if.end47, %if.end4
  %4 = load ptr, ptr %file, align 8, !dbg !697, !tbaa !209
  %call5 = call ptr @fgets(ptr noundef @get_cpu_name.buffer, i32 noundef 512, ptr noundef %4), !dbg !698
  %cmp6 = icmp ne ptr %call5, null, !dbg !699
  br i1 %cmp6, label %while.body, label %while.end48, !dbg !696

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %search, align 8, !dbg !700, !tbaa !209
  %call7 = call ptr @strstr(ptr noundef @get_cpu_name.buffer, ptr noundef %5) #10, !dbg !701
  %tobool = icmp ne ptr %call7, null, !dbg !701
  br i1 %tobool, label %if.then8, label %if.end47, !dbg !702

if.then8:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #8, !dbg !703
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !172, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #8, !dbg !703
  tail call void @llvm.dbg.declare(metadata ptr %dest, metadata !175, metadata !DIExpression()), !dbg !705
  %call9 = call ptr @strchr(ptr noundef @get_cpu_name.buffer, i32 noundef 58) #10, !dbg !706
  store ptr %call9, ptr %src, align 8, !dbg !708, !tbaa !209
  %cmp10 = icmp ne ptr %call9, null, !dbg !709
  br i1 %cmp10, label %if.then11, label %if.end45, !dbg !710

if.then11:                                        ; preds = %if.then8
  %6 = load ptr, ptr %src, align 8, !dbg !711, !tbaa !209
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1, !dbg !711
  store ptr %incdec.ptr, ptr %src, align 8, !dbg !711, !tbaa !209
  br label %while.cond12, !dbg !713

while.cond12:                                     ; preds = %while.body17, %if.then11
  %call13 = call ptr @__ctype_b_loc() #11, !dbg !714
  %7 = load ptr, ptr %call13, align 8, !dbg !714, !tbaa !209
  %8 = load ptr, ptr %src, align 8, !dbg !714, !tbaa !209
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0, !dbg !714
  %9 = load i8, ptr %arrayidx, align 1, !dbg !714, !tbaa !715
  %conv = sext i8 %9 to i32, !dbg !714
  %idxprom = sext i32 %conv to i64, !dbg !714
  %arrayidx14 = getelementptr inbounds i16, ptr %7, i64 %idxprom, !dbg !714
  %10 = load i16, ptr %arrayidx14, align 2, !dbg !714, !tbaa !716
  %conv15 = zext i16 %10 to i32, !dbg !714
  %and = and i32 %conv15, 8192, !dbg !714
  %tobool16 = icmp ne i32 %and, 0, !dbg !713
  br i1 %tobool16, label %while.body17, label %while.end, !dbg !713

while.body17:                                     ; preds = %while.cond12
  %11 = load ptr, ptr %src, align 8, !dbg !718, !tbaa !209
  %incdec.ptr18 = getelementptr inbounds i8, ptr %11, i32 1, !dbg !718
  store ptr %incdec.ptr18, ptr %src, align 8, !dbg !718, !tbaa !209
  br label %while.cond12, !dbg !713, !llvm.loop !719

while.end:                                        ; preds = %while.cond12
  %12 = load ptr, ptr %src, align 8, !dbg !720, !tbaa !209
  store ptr %12, ptr %name, align 8, !dbg !721, !tbaa !209
  %13 = load ptr, ptr %src, align 8, !dbg !722, !tbaa !209
  %incdec.ptr19 = getelementptr inbounds i8, ptr %13, i32 1, !dbg !722
  store ptr %incdec.ptr19, ptr %src, align 8, !dbg !722, !tbaa !209
  %14 = load ptr, ptr %src, align 8, !dbg !723, !tbaa !209
  store ptr %14, ptr %dest, align 8, !dbg !725, !tbaa !209
  br label %for.cond, !dbg !726

for.cond:                                         ; preds = %for.inc, %while.end
  %15 = load ptr, ptr %src, align 8, !dbg !727, !tbaa !209
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !727
  %16 = load i8, ptr %arrayidx20, align 1, !dbg !727, !tbaa !715
  %tobool21 = icmp ne i8 %16, 0, !dbg !729
  br i1 %tobool21, label %for.body, label %for.end, !dbg !729

for.body:                                         ; preds = %for.cond
  %call22 = call ptr @__ctype_b_loc() #11, !dbg !730
  %17 = load ptr, ptr %call22, align 8, !dbg !730, !tbaa !209
  %18 = load ptr, ptr %src, align 8, !dbg !730, !tbaa !209
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !730
  %19 = load i8, ptr %arrayidx23, align 1, !dbg !730, !tbaa !715
  %conv24 = sext i8 %19 to i32, !dbg !730
  %idxprom25 = sext i32 %conv24 to i64, !dbg !730
  %arrayidx26 = getelementptr inbounds i16, ptr %17, i64 %idxprom25, !dbg !730
  %20 = load i16, ptr %arrayidx26, align 2, !dbg !730, !tbaa !716
  %conv27 = zext i16 %20 to i32, !dbg !730
  %and28 = and i32 %conv27, 8192, !dbg !730
  %tobool29 = icmp ne i32 %and28, 0, !dbg !730
  br i1 %tobool29, label %land.lhs.true, label %if.end39, !dbg !733

land.lhs.true:                                    ; preds = %for.body
  %call30 = call ptr @__ctype_b_loc() #11, !dbg !734
  %21 = load ptr, ptr %call30, align 8, !dbg !734, !tbaa !209
  %22 = load ptr, ptr %dest, align 8, !dbg !734, !tbaa !209
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 -1, !dbg !734
  %23 = load i8, ptr %arrayidx31, align 1, !dbg !734, !tbaa !715
  %conv32 = sext i8 %23 to i32, !dbg !734
  %idxprom33 = sext i32 %conv32 to i64, !dbg !734
  %arrayidx34 = getelementptr inbounds i16, ptr %21, i64 %idxprom33, !dbg !734
  %24 = load i16, ptr %arrayidx34, align 2, !dbg !734, !tbaa !716
  %conv35 = zext i16 %24 to i32, !dbg !734
  %and36 = and i32 %conv35, 8192, !dbg !734
  %tobool37 = icmp ne i32 %and36, 0, !dbg !734
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !735

if.then38:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !736

if.end39:                                         ; preds = %land.lhs.true, %for.body
  %25 = load ptr, ptr %src, align 8, !dbg !737, !tbaa !209
  %arrayidx40 = getelementptr inbounds i8, ptr %25, i64 0, !dbg !737
  %26 = load i8, ptr %arrayidx40, align 1, !dbg !737, !tbaa !715
  %27 = load ptr, ptr %dest, align 8, !dbg !738, !tbaa !209
  %arrayidx41 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !738
  store i8 %26, ptr %arrayidx41, align 1, !dbg !739, !tbaa !715
  %28 = load ptr, ptr %dest, align 8, !dbg !740, !tbaa !209
  %incdec.ptr42 = getelementptr inbounds i8, ptr %28, i32 1, !dbg !740
  store ptr %incdec.ptr42, ptr %dest, align 8, !dbg !740, !tbaa !209
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %if.end39, %if.then38
  %29 = load ptr, ptr %src, align 8, !dbg !742, !tbaa !209
  %incdec.ptr43 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !742
  store ptr %incdec.ptr43, ptr %src, align 8, !dbg !742, !tbaa !209
  br label %for.cond, !dbg !743, !llvm.loop !744

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %dest, align 8, !dbg !746, !tbaa !209
  %arrayidx44 = getelementptr inbounds i8, ptr %30, i64 0, !dbg !746
  store i8 0, ptr %arrayidx44, align 1, !dbg !747, !tbaa !715
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !748

if.end45:                                         ; preds = %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !749
  br label %cleanup, !dbg !749

cleanup:                                          ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #8, !dbg !749
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #8, !dbg !749
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end48
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end47, !dbg !750

if.end47:                                         ; preds = %cleanup.cont, %while.body
  br label %while.cond, !dbg !696, !llvm.loop !751

while.end48:                                      ; preds = %cleanup, %while.cond
  %31 = load i32, ptr %is_pipe, align 4, !dbg !753, !tbaa !204
  %tobool49 = icmp ne i32 %31, 0, !dbg !753
  br i1 %tobool49, label %if.then50, label %if.else, !dbg !755

if.then50:                                        ; preds = %while.end48
  %32 = load ptr, ptr %file, align 8, !dbg !756, !tbaa !209
  %call51 = call i32 @pclose(ptr noundef %32), !dbg !757
  br label %if.end53, !dbg !757

if.else:                                          ; preds = %while.end48
  %33 = load ptr, ptr %file, align 8, !dbg !758, !tbaa !209
  %call52 = call i32 @fclose(ptr noundef %33), !dbg !759
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then50
  %34 = load ptr, ptr %name, align 8, !dbg !760, !tbaa !209
  store ptr %34, ptr %retval, align 8, !dbg !761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !761

cleanup54:                                        ; preds = %if.end53, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_pipe) #8, !dbg !762
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8, !dbg !762
  call void @llvm.lifetime.end.p0(i64 8, ptr %search) #8, !dbg !762
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !762
  %35 = load ptr, ptr %retval, align 8, !dbg !762
  ret ptr %35, !dbg !762

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !763 ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !767 ptr @strstr(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !771 ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !774 ptr @__ctype_b_loc() #7

declare !dbg !780 i32 @pclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!66}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "util.c", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/tests", checksumkind: CSK_MD5, checksum: "26f208d68dd562d30b40b4a7b39a0118")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 65)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 46)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 25)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 15)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 16)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 12)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 14)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 5)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 8)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "buffer", scope: !61, file: !2, line: 163, type: !176, isLocal: true, isDefinition: true)
!61 = distinct !DISubprogram(name: "get_cpu_name", scope: !2, file: !2, line: 160, type: !62, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !108)
!62 = !DISubroutineType(types: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !84, globals: !88, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 46, baseType: !70, size: 32, elements: !71)
!69 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!72 = !DIEnumerator(name: "_ISupper", value: 256)
!73 = !DIEnumerator(name: "_ISlower", value: 512)
!74 = !DIEnumerator(name: "_ISalpha", value: 1024)
!75 = !DIEnumerator(name: "_ISdigit", value: 2048)
!76 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!77 = !DIEnumerator(name: "_ISspace", value: 8192)
!78 = !DIEnumerator(name: "_ISprint", value: 16384)
!79 = !DIEnumerator(name: "_ISgraph", value: 32768)
!80 = !DIEnumerator(name: "_ISblank", value: 1)
!81 = !DIEnumerator(name: "_IScntrl", value: 2)
!82 = !DIEnumerator(name: "_ISpunct", value: 4)
!83 = !DIEnumerator(name: "_ISalnum", value: 8)
!84 = !{!85, !86, !87}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!88 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !89, !91, !93, !98, !103}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !44, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !19, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 11)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 40)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 104, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 13)
!108 = !{!109, !110, !111, !171, !172, !175}
!109 = !DILocalVariable(name: "name", scope: !61, file: !2, line: 162, type: !64)
!110 = !DILocalVariable(name: "search", scope: !61, file: !2, line: 162, type: !64)
!111 = !DILocalVariable(name: "file", scope: !61, file: !2, line: 164, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !114, line: 7, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !116, line: 49, size: 1728, elements: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!117 = !{!118, !119, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !134, !136, !137, !138, !142, !143, !145, !149, !152, !154, !157, !160, !161, !162, !166, !167}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !115, file: !116, line: 51, baseType: !86, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !115, file: !116, line: 54, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !115, file: !116, line: 55, baseType: !120, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !115, file: !116, line: 56, baseType: !120, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !115, file: !116, line: 57, baseType: !120, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !115, file: !116, line: 58, baseType: !120, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !115, file: !116, line: 59, baseType: !120, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !115, file: !116, line: 60, baseType: !120, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !115, file: !116, line: 61, baseType: !120, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !115, file: !116, line: 64, baseType: !120, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !115, file: !116, line: 65, baseType: !120, size: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !115, file: !116, line: 66, baseType: !120, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !115, file: !116, line: 68, baseType: !132, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !116, line: 36, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !115, file: !116, line: 70, baseType: !135, size: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !115, file: !116, line: 72, baseType: !86, size: 32, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !115, file: !116, line: 73, baseType: !86, size: 32, offset: 928)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !115, file: !116, line: 74, baseType: !139, size: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !140, line: 152, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!141 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !115, file: !116, line: 77, baseType: !87, size: 16, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !115, file: !116, line: 78, baseType: !144, size: 8, offset: 1040)
!144 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !115, file: !116, line: 79, baseType: !146, size: 8, offset: 1048)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 1)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !115, file: !116, line: 81, baseType: !150, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !116, line: 43, baseType: null)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !115, file: !116, line: 89, baseType: !153, size: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !140, line: 153, baseType: !141)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !115, file: !116, line: 91, baseType: !155, size: 64, offset: 1216)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !116, line: 37, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !115, file: !116, line: 92, baseType: !158, size: 64, offset: 1280)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !116, line: 38, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !115, file: !116, line: 93, baseType: !135, size: 64, offset: 1344)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !115, file: !116, line: 94, baseType: !85, size: 64, offset: 1408)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !115, file: !116, line: 95, baseType: !163, size: 64, offset: 1472)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 70, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !115, file: !116, line: 96, baseType: !86, size: 32, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !115, file: !116, line: 98, baseType: !168, size: 160, offset: 1568)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 20)
!171 = !DILocalVariable(name: "is_pipe", scope: !61, file: !2, line: 165, type: !86)
!172 = !DILocalVariable(name: "src", scope: !173, file: !2, line: 192, type: !120)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 192, column: 3)
!174 = distinct !DILexicalBlock(scope: !61, file: !2, line: 191, column: 7)
!175 = !DILocalVariable(name: "dest", scope: !173, file: !2, line: 192, type: !120)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4096, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 512)
!179 = !{i32 7, !"Dwarf Version", i32 5}
!180 = !{i32 2, !"Debug Info Version", i32 3}
!181 = !{i32 1, !"wchar_size", i32 4}
!182 = !{i32 8, !"PIC Level", i32 2}
!183 = !{i32 7, !"PIE Level", i32 2}
!184 = !{i32 7, !"uwtable", i32 2}
!185 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!186 = distinct !DISubprogram(name: "gen_windowed_sines", scope: !2, file: !2, line: 22, type: !187, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !194)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !86, !189, !191, !192, !86}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203}
!195 = !DILocalVariable(name: "freq_count", arg: 1, scope: !186, file: !2, line: 22, type: !86)
!196 = !DILocalVariable(name: "freqs", arg: 2, scope: !186, file: !2, line: 22, type: !189)
!197 = !DILocalVariable(name: "max", arg: 3, scope: !186, file: !2, line: 22, type: !191)
!198 = !DILocalVariable(name: "output", arg: 4, scope: !186, file: !2, line: 22, type: !192)
!199 = !DILocalVariable(name: "output_len", arg: 5, scope: !186, file: !2, line: 22, type: !86)
!200 = !DILocalVariable(name: "k", scope: !186, file: !2, line: 23, type: !86)
!201 = !DILocalVariable(name: "freq", scope: !186, file: !2, line: 23, type: !86)
!202 = !DILocalVariable(name: "amplitude", scope: !186, file: !2, line: 24, type: !191)
!203 = !DILocalVariable(name: "phase", scope: !186, file: !2, line: 24, type: !191)
!204 = !{!205, !205, i64 0}
!205 = !{!"int", !206, i64 0}
!206 = !{!"omnipotent char", !207, i64 0}
!207 = !{!"Simple C/C++ TBAA"}
!208 = !DILocation(line: 22, column: 25, scope: !186)
!209 = !{!210, !210, i64 0}
!210 = !{!"any pointer", !206, i64 0}
!211 = !DILocation(line: 22, column: 51, scope: !186)
!212 = !{!213, !213, i64 0}
!213 = !{!"double", !206, i64 0}
!214 = !DILocation(line: 22, column: 65, scope: !186)
!215 = !DILocation(line: 22, column: 77, scope: !186)
!216 = !DILocation(line: 22, column: 89, scope: !186)
!217 = !DILocation(line: 23, column: 3, scope: !186)
!218 = !DILocation(line: 23, column: 8, scope: !186)
!219 = !DILocation(line: 23, column: 11, scope: !186)
!220 = !DILocation(line: 24, column: 2, scope: !186)
!221 = !DILocation(line: 24, column: 9, scope: !186)
!222 = !DILocation(line: 24, column: 20, scope: !186)
!223 = !DILocation(line: 26, column: 14, scope: !186)
!224 = !DILocation(line: 26, column: 20, scope: !186)
!225 = !DILocation(line: 26, column: 18, scope: !186)
!226 = !DILocation(line: 26, column: 12, scope: !186)
!227 = !DILocation(line: 28, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !186, file: !2, line: 28, column: 2)
!229 = !DILocation(line: 28, column: 7, scope: !228)
!230 = !DILocation(line: 28, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !2, line: 28, column: 2)
!232 = !DILocation(line: 28, column: 19, scope: !231)
!233 = !DILocation(line: 28, column: 17, scope: !231)
!234 = !DILocation(line: 28, column: 2, scope: !228)
!235 = !DILocation(line: 29, column: 3, scope: !231)
!236 = !DILocation(line: 29, column: 11, scope: !231)
!237 = !DILocation(line: 29, column: 14, scope: !231)
!238 = !{!239, !239, i64 0}
!239 = !{!"float", !206, i64 0}
!240 = !DILocation(line: 28, column: 33, scope: !231)
!241 = !DILocation(line: 28, column: 2, scope: !231)
!242 = distinct !{!242, !234, !243}
!243 = !DILocation(line: 29, column: 16, scope: !228)
!244 = !DILocation(line: 31, column: 12, scope: !245)
!245 = distinct !DILexicalBlock(scope: !186, file: !2, line: 31, column: 2)
!246 = !DILocation(line: 31, column: 7, scope: !245)
!247 = !DILocation(line: 31, column: 18, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !2, line: 31, column: 2)
!249 = !DILocation(line: 31, column: 25, scope: !248)
!250 = !DILocation(line: 31, column: 23, scope: !248)
!251 = !DILocation(line: 31, column: 2, scope: !245)
!252 = !DILocation(line: 32, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !2, line: 32, column: 2)
!254 = !DILocation(line: 32, column: 23, scope: !253)
!255 = !DILocation(line: 32, column: 10, scope: !253)
!256 = !DILocation(line: 34, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !2, line: 34, column: 7)
!258 = !DILocation(line: 34, column: 14, scope: !257)
!259 = !DILocation(line: 34, column: 20, scope: !257)
!260 = !DILocation(line: 34, column: 27, scope: !257)
!261 = !DILocation(line: 34, column: 30, scope: !257)
!262 = !DILocation(line: 34, column: 37, scope: !257)
!263 = !DILocation(line: 34, column: 43, scope: !257)
!264 = !DILocation(line: 34, column: 7, scope: !253)
!265 = !DILocation(line: 35, column: 93, scope: !266)
!266 = distinct !DILexicalBlock(scope: !257, file: !2, line: 35, column: 3)
!267 = !DILocation(line: 35, column: 99, scope: !266)
!268 = !DILocation(line: 35, column: 106, scope: !266)
!269 = !DILocation(line: 35, column: 5, scope: !266)
!270 = !DILocation(line: 36, column: 4, scope: !266)
!271 = !DILocation(line: 39, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !253, file: !2, line: 39, column: 3)
!273 = !DILocation(line: 39, column: 8, scope: !272)
!274 = !DILocation(line: 39, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !2, line: 39, column: 3)
!276 = !DILocation(line: 39, column: 20, scope: !275)
!277 = !DILocation(line: 39, column: 18, scope: !275)
!278 = !DILocation(line: 39, column: 3, scope: !272)
!279 = !DILocation(line: 40, column: 18, scope: !275)
!280 = !DILocation(line: 40, column: 35, scope: !275)
!281 = !DILocation(line: 40, column: 42, scope: !275)
!282 = !DILocation(line: 40, column: 55, scope: !275)
!283 = !DILocation(line: 40, column: 53, scope: !275)
!284 = !DILocation(line: 40, column: 50, scope: !275)
!285 = !DILocation(line: 40, column: 48, scope: !275)
!286 = !DILocation(line: 40, column: 67, scope: !275)
!287 = !DILocation(line: 40, column: 65, scope: !275)
!288 = !DILocation(line: 40, column: 30, scope: !275)
!289 = !DILocation(line: 40, column: 4, scope: !275)
!290 = !DILocation(line: 40, column: 12, scope: !275)
!291 = !DILocation(line: 40, column: 15, scope: !275)
!292 = !DILocation(line: 39, column: 34, scope: !275)
!293 = !DILocation(line: 39, column: 3, scope: !275)
!294 = distinct !{!294, !278, !295}
!295 = !DILocation(line: 40, column: 72, scope: !272)
!296 = !DILocation(line: 41, column: 3, scope: !253)
!297 = !DILocation(line: 31, column: 42, scope: !248)
!298 = !DILocation(line: 31, column: 2, scope: !248)
!299 = distinct !{!299, !251, !300}
!300 = !DILocation(line: 41, column: 3, scope: !245)
!301 = !DILocation(line: 44, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !186, file: !2, line: 44, column: 2)
!303 = !DILocation(line: 44, column: 7, scope: !302)
!304 = !DILocation(line: 44, column: 15, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !2, line: 44, column: 2)
!306 = !DILocation(line: 44, column: 19, scope: !305)
!307 = !DILocation(line: 44, column: 17, scope: !305)
!308 = !DILocation(line: 44, column: 2, scope: !302)
!309 = !DILocation(line: 45, column: 39, scope: !305)
!310 = !DILocation(line: 45, column: 37, scope: !305)
!311 = !DILocation(line: 45, column: 34, scope: !305)
!312 = !DILocation(line: 45, column: 42, scope: !305)
!313 = !DILocation(line: 45, column: 52, scope: !305)
!314 = !DILocation(line: 45, column: 63, scope: !305)
!315 = !DILocation(line: 45, column: 51, scope: !305)
!316 = !DILocation(line: 45, column: 49, scope: !305)
!317 = !DILocation(line: 45, column: 29, scope: !305)
!318 = !DILocation(line: 45, column: 21, scope: !305)
!319 = !DILocation(line: 45, column: 3, scope: !305)
!320 = !DILocation(line: 45, column: 11, scope: !305)
!321 = !DILocation(line: 45, column: 14, scope: !305)
!322 = !DILocation(line: 44, column: 33, scope: !305)
!323 = !DILocation(line: 44, column: 2, scope: !305)
!324 = distinct !{!324, !308, !325}
!325 = !DILocation(line: 45, column: 67, scope: !302)
!326 = !DILocation(line: 53, column: 1, scope: !186)
!327 = !DISubprogram(name: "printf", scope: !328, file: !328, line: 356, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!329 = !DISubroutineType(types: !330)
!330 = !{!86, !331, null}
!331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!332 = !DISubprogram(name: "exit", scope: !333, file: !333, line: 624, type: !334, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!333 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!334 = !DISubroutineType(types: !335)
!335 = !{null, !86}
!336 = !DISubprogram(name: "sin", scope: !337, file: !337, line: 64, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!338 = !DISubroutineType(types: !339)
!339 = !{!191, !191}
!340 = !DISubprogram(name: "cos", scope: !337, file: !337, line: 62, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = distinct !DISubprogram(name: "save_oct_float", scope: !2, file: !2, line: 56, type: !342, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !120, !192, !86, !192, !86}
!344 = !{!345, !346, !347, !348, !349, !350, !351}
!345 = !DILocalVariable(name: "filename", arg: 1, scope: !341, file: !2, line: 56, type: !120)
!346 = !DILocalVariable(name: "input", arg: 2, scope: !341, file: !2, line: 56, type: !192)
!347 = !DILocalVariable(name: "in_len", arg: 3, scope: !341, file: !2, line: 56, type: !86)
!348 = !DILocalVariable(name: "output", arg: 4, scope: !341, file: !2, line: 56, type: !192)
!349 = !DILocalVariable(name: "out_len", arg: 5, scope: !341, file: !2, line: 56, type: !86)
!350 = !DILocalVariable(name: "file", scope: !341, file: !2, line: 57, type: !112)
!351 = !DILocalVariable(name: "k", scope: !341, file: !2, line: 58, type: !86)
!352 = !DILocation(line: 56, column: 23, scope: !341)
!353 = !DILocation(line: 56, column: 40, scope: !341)
!354 = !DILocation(line: 56, column: 51, scope: !341)
!355 = !DILocation(line: 56, column: 66, scope: !341)
!356 = !DILocation(line: 56, column: 78, scope: !341)
!357 = !DILocation(line: 57, column: 3, scope: !341)
!358 = !DILocation(line: 57, column: 10, scope: !341)
!359 = !DILocation(line: 58, column: 2, scope: !341)
!360 = !DILocation(line: 58, column: 7, scope: !341)
!361 = !DILocation(line: 60, column: 61, scope: !341)
!362 = !DILocation(line: 60, column: 2, scope: !341)
!363 = !DILocation(line: 62, column: 23, scope: !364)
!364 = distinct !DILexicalBlock(scope: !341, file: !2, line: 62, column: 6)
!365 = !DILocation(line: 62, column: 16, scope: !364)
!366 = !DILocation(line: 62, column: 14, scope: !364)
!367 = !DILocation(line: 62, column: 6, scope: !341)
!368 = !DILocation(line: 63, column: 3, scope: !364)
!369 = !DILocation(line: 65, column: 11, scope: !341)
!370 = !DILocation(line: 65, column: 2, scope: !341)
!371 = !DILocation(line: 67, column: 11, scope: !341)
!372 = !DILocation(line: 67, column: 2, scope: !341)
!373 = !DILocation(line: 68, column: 11, scope: !341)
!374 = !DILocation(line: 68, column: 2, scope: !341)
!375 = !DILocation(line: 69, column: 11, scope: !341)
!376 = !DILocation(line: 69, column: 33, scope: !341)
!377 = !DILocation(line: 69, column: 2, scope: !341)
!378 = !DILocation(line: 70, column: 11, scope: !341)
!379 = !DILocation(line: 70, column: 2, scope: !341)
!380 = !DILocation(line: 72, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !341, file: !2, line: 72, column: 2)
!382 = !DILocation(line: 72, column: 7, scope: !381)
!383 = !DILocation(line: 72, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !2, line: 72, column: 2)
!385 = !DILocation(line: 72, column: 19, scope: !384)
!386 = !DILocation(line: 72, column: 17, scope: !384)
!387 = !DILocation(line: 72, column: 2, scope: !381)
!388 = !DILocation(line: 73, column: 12, scope: !384)
!389 = !DILocation(line: 73, column: 27, scope: !384)
!390 = !DILocation(line: 73, column: 34, scope: !384)
!391 = !DILocation(line: 73, column: 3, scope: !384)
!392 = !DILocation(line: 72, column: 29, scope: !384)
!393 = !DILocation(line: 72, column: 2, scope: !384)
!394 = distinct !{!394, !387, !395}
!395 = !DILocation(line: 73, column: 36, scope: !381)
!396 = !DILocation(line: 75, column: 11, scope: !341)
!397 = !DILocation(line: 75, column: 2, scope: !341)
!398 = !DILocation(line: 76, column: 11, scope: !341)
!399 = !DILocation(line: 76, column: 2, scope: !341)
!400 = !DILocation(line: 77, column: 11, scope: !341)
!401 = !DILocation(line: 77, column: 33, scope: !341)
!402 = !DILocation(line: 77, column: 2, scope: !341)
!403 = !DILocation(line: 78, column: 11, scope: !341)
!404 = !DILocation(line: 78, column: 2, scope: !341)
!405 = !DILocation(line: 80, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !341, file: !2, line: 80, column: 2)
!407 = !DILocation(line: 80, column: 7, scope: !406)
!408 = !DILocation(line: 80, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !2, line: 80, column: 2)
!410 = !DILocation(line: 80, column: 19, scope: !409)
!411 = !DILocation(line: 80, column: 17, scope: !409)
!412 = !DILocation(line: 80, column: 2, scope: !406)
!413 = !DILocation(line: 81, column: 12, scope: !409)
!414 = !DILocation(line: 81, column: 27, scope: !409)
!415 = !DILocation(line: 81, column: 35, scope: !409)
!416 = !DILocation(line: 81, column: 3, scope: !409)
!417 = !DILocation(line: 80, column: 30, scope: !409)
!418 = !DILocation(line: 80, column: 2, scope: !409)
!419 = distinct !{!419, !412, !420}
!420 = !DILocation(line: 81, column: 37, scope: !406)
!421 = !DILocation(line: 83, column: 10, scope: !341)
!422 = !DILocation(line: 83, column: 2, scope: !341)
!423 = !DILocation(line: 84, column: 2, scope: !341)
!424 = !DILocation(line: 85, column: 1, scope: !341)
!425 = !DISubprogram(name: "fopen", scope: !328, file: !328, line: 258, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!112, !331, !331}
!428 = !DISubprogram(name: "fprintf", scope: !328, file: !328, line: 350, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!86, !431, !331, null}
!431 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!432 = !DISubprogram(name: "fclose", scope: !328, file: !328, line: 178, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{!86, !112}
!435 = distinct !DISubprogram(name: "save_oct_double", scope: !2, file: !2, line: 88, type: !436, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !439)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !120, !438, !86, !438, !86}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!439 = !{!440, !441, !442, !443, !444, !445, !446}
!440 = !DILocalVariable(name: "filename", arg: 1, scope: !435, file: !2, line: 88, type: !120)
!441 = !DILocalVariable(name: "input", arg: 2, scope: !435, file: !2, line: 88, type: !438)
!442 = !DILocalVariable(name: "in_len", arg: 3, scope: !435, file: !2, line: 88, type: !86)
!443 = !DILocalVariable(name: "output", arg: 4, scope: !435, file: !2, line: 88, type: !438)
!444 = !DILocalVariable(name: "out_len", arg: 5, scope: !435, file: !2, line: 88, type: !86)
!445 = !DILocalVariable(name: "file", scope: !435, file: !2, line: 89, type: !112)
!446 = !DILocalVariable(name: "k", scope: !435, file: !2, line: 90, type: !86)
!447 = !DILocation(line: 88, column: 24, scope: !435)
!448 = !DILocation(line: 88, column: 42, scope: !435)
!449 = !DILocation(line: 88, column: 53, scope: !435)
!450 = !DILocation(line: 88, column: 69, scope: !435)
!451 = !DILocation(line: 88, column: 81, scope: !435)
!452 = !DILocation(line: 89, column: 3, scope: !435)
!453 = !DILocation(line: 89, column: 10, scope: !435)
!454 = !DILocation(line: 90, column: 2, scope: !435)
!455 = !DILocation(line: 90, column: 7, scope: !435)
!456 = !DILocation(line: 92, column: 61, scope: !435)
!457 = !DILocation(line: 92, column: 2, scope: !435)
!458 = !DILocation(line: 94, column: 23, scope: !459)
!459 = distinct !DILexicalBlock(scope: !435, file: !2, line: 94, column: 6)
!460 = !DILocation(line: 94, column: 16, scope: !459)
!461 = !DILocation(line: 94, column: 14, scope: !459)
!462 = !DILocation(line: 94, column: 6, scope: !435)
!463 = !DILocation(line: 95, column: 3, scope: !459)
!464 = !DILocation(line: 97, column: 11, scope: !435)
!465 = !DILocation(line: 97, column: 2, scope: !435)
!466 = !DILocation(line: 99, column: 11, scope: !435)
!467 = !DILocation(line: 99, column: 2, scope: !435)
!468 = !DILocation(line: 100, column: 11, scope: !435)
!469 = !DILocation(line: 100, column: 2, scope: !435)
!470 = !DILocation(line: 101, column: 11, scope: !435)
!471 = !DILocation(line: 101, column: 33, scope: !435)
!472 = !DILocation(line: 101, column: 2, scope: !435)
!473 = !DILocation(line: 102, column: 11, scope: !435)
!474 = !DILocation(line: 102, column: 2, scope: !435)
!475 = !DILocation(line: 104, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !435, file: !2, line: 104, column: 2)
!477 = !DILocation(line: 104, column: 7, scope: !476)
!478 = !DILocation(line: 104, column: 15, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !2, line: 104, column: 2)
!480 = !DILocation(line: 104, column: 19, scope: !479)
!481 = !DILocation(line: 104, column: 17, scope: !479)
!482 = !DILocation(line: 104, column: 2, scope: !476)
!483 = !DILocation(line: 105, column: 12, scope: !479)
!484 = !DILocation(line: 105, column: 27, scope: !479)
!485 = !DILocation(line: 105, column: 34, scope: !479)
!486 = !DILocation(line: 105, column: 3, scope: !479)
!487 = !DILocation(line: 104, column: 29, scope: !479)
!488 = !DILocation(line: 104, column: 2, scope: !479)
!489 = distinct !{!489, !482, !490}
!490 = !DILocation(line: 105, column: 36, scope: !476)
!491 = !DILocation(line: 107, column: 11, scope: !435)
!492 = !DILocation(line: 107, column: 2, scope: !435)
!493 = !DILocation(line: 108, column: 11, scope: !435)
!494 = !DILocation(line: 108, column: 2, scope: !435)
!495 = !DILocation(line: 109, column: 11, scope: !435)
!496 = !DILocation(line: 109, column: 33, scope: !435)
!497 = !DILocation(line: 109, column: 2, scope: !435)
!498 = !DILocation(line: 110, column: 11, scope: !435)
!499 = !DILocation(line: 110, column: 2, scope: !435)
!500 = !DILocation(line: 112, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !435, file: !2, line: 112, column: 2)
!502 = !DILocation(line: 112, column: 7, scope: !501)
!503 = !DILocation(line: 112, column: 15, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !2, line: 112, column: 2)
!505 = !DILocation(line: 112, column: 19, scope: !504)
!506 = !DILocation(line: 112, column: 17, scope: !504)
!507 = !DILocation(line: 112, column: 2, scope: !501)
!508 = !DILocation(line: 113, column: 12, scope: !504)
!509 = !DILocation(line: 113, column: 27, scope: !504)
!510 = !DILocation(line: 113, column: 35, scope: !504)
!511 = !DILocation(line: 113, column: 3, scope: !504)
!512 = !DILocation(line: 112, column: 30, scope: !504)
!513 = !DILocation(line: 112, column: 2, scope: !504)
!514 = distinct !{!514, !507, !515}
!515 = !DILocation(line: 113, column: 37, scope: !501)
!516 = !DILocation(line: 115, column: 10, scope: !435)
!517 = !DILocation(line: 115, column: 2, scope: !435)
!518 = !DILocation(line: 116, column: 2, scope: !435)
!519 = !DILocation(line: 117, column: 1, scope: !435)
!520 = distinct !DISubprogram(name: "interleave_data", scope: !2, file: !2, line: 120, type: !521, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !525)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !523, !192, !86, !86}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!525 = !{!526, !527, !528, !529, !530, !531}
!526 = !DILocalVariable(name: "in", arg: 1, scope: !520, file: !2, line: 120, type: !523)
!527 = !DILocalVariable(name: "out", arg: 2, scope: !520, file: !2, line: 120, type: !192)
!528 = !DILocalVariable(name: "frames", arg: 3, scope: !520, file: !2, line: 120, type: !86)
!529 = !DILocalVariable(name: "channels", arg: 4, scope: !520, file: !2, line: 120, type: !86)
!530 = !DILocalVariable(name: "fr", scope: !520, file: !2, line: 121, type: !86)
!531 = !DILocalVariable(name: "ch", scope: !520, file: !2, line: 121, type: !86)
!532 = !DILocation(line: 120, column: 31, scope: !520)
!533 = !DILocation(line: 120, column: 42, scope: !520)
!534 = !DILocation(line: 120, column: 51, scope: !520)
!535 = !DILocation(line: 120, column: 63, scope: !520)
!536 = !DILocation(line: 121, column: 3, scope: !520)
!537 = !DILocation(line: 121, column: 7, scope: !520)
!538 = !DILocation(line: 121, column: 11, scope: !520)
!539 = !DILocation(line: 123, column: 10, scope: !540)
!540 = distinct !DILexicalBlock(scope: !520, file: !2, line: 123, column: 2)
!541 = !DILocation(line: 123, column: 7, scope: !540)
!542 = !DILocation(line: 123, column: 16, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !2, line: 123, column: 2)
!544 = !DILocation(line: 123, column: 21, scope: !543)
!545 = !DILocation(line: 123, column: 19, scope: !543)
!546 = !DILocation(line: 123, column: 2, scope: !540)
!547 = !DILocation(line: 124, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !2, line: 124, column: 3)
!549 = !DILocation(line: 124, column: 8, scope: !548)
!550 = !DILocation(line: 124, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !2, line: 124, column: 3)
!552 = !DILocation(line: 124, column: 22, scope: !551)
!553 = !DILocation(line: 124, column: 20, scope: !551)
!554 = !DILocation(line: 124, column: 3, scope: !548)
!555 = !DILocation(line: 125, column: 31, scope: !551)
!556 = !DILocation(line: 125, column: 35, scope: !551)
!557 = !DILocation(line: 125, column: 40, scope: !551)
!558 = !DILocation(line: 125, column: 49, scope: !551)
!559 = !DILocation(line: 125, column: 47, scope: !551)
!560 = !DILocation(line: 125, column: 38, scope: !551)
!561 = !DILocation(line: 125, column: 4, scope: !551)
!562 = !DILocation(line: 125, column: 9, scope: !551)
!563 = !DILocation(line: 125, column: 14, scope: !551)
!564 = !DILocation(line: 125, column: 25, scope: !551)
!565 = !DILocation(line: 125, column: 23, scope: !551)
!566 = !DILocation(line: 125, column: 12, scope: !551)
!567 = !DILocation(line: 125, column: 29, scope: !551)
!568 = !DILocation(line: 124, column: 35, scope: !551)
!569 = !DILocation(line: 124, column: 3, scope: !551)
!570 = distinct !{!570, !554, !571}
!571 = !DILocation(line: 125, column: 51, scope: !548)
!572 = !DILocation(line: 123, column: 32, scope: !543)
!573 = !DILocation(line: 123, column: 2, scope: !543)
!574 = distinct !{!574, !546, !575}
!575 = !DILocation(line: 125, column: 51, scope: !540)
!576 = !DILocation(line: 128, column: 1, scope: !520)
!577 = distinct !DISubprogram(name: "deinterleave_data", scope: !2, file: !2, line: 131, type: !521, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !578)
!578 = !{!579, !580, !581, !582, !583, !584}
!579 = !DILocalVariable(name: "in", arg: 1, scope: !577, file: !2, line: 131, type: !523)
!580 = !DILocalVariable(name: "out", arg: 2, scope: !577, file: !2, line: 131, type: !192)
!581 = !DILocalVariable(name: "frames", arg: 3, scope: !577, file: !2, line: 131, type: !86)
!582 = !DILocalVariable(name: "channels", arg: 4, scope: !577, file: !2, line: 131, type: !86)
!583 = !DILocalVariable(name: "fr", scope: !577, file: !2, line: 132, type: !86)
!584 = !DILocalVariable(name: "ch", scope: !577, file: !2, line: 132, type: !86)
!585 = !DILocation(line: 131, column: 33, scope: !577)
!586 = !DILocation(line: 131, column: 44, scope: !577)
!587 = !DILocation(line: 131, column: 53, scope: !577)
!588 = !DILocation(line: 131, column: 65, scope: !577)
!589 = !DILocation(line: 132, column: 3, scope: !577)
!590 = !DILocation(line: 132, column: 7, scope: !577)
!591 = !DILocation(line: 132, column: 11, scope: !577)
!592 = !DILocation(line: 134, column: 10, scope: !593)
!593 = distinct !DILexicalBlock(scope: !577, file: !2, line: 134, column: 2)
!594 = !DILocation(line: 134, column: 7, scope: !593)
!595 = !DILocation(line: 134, column: 16, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !2, line: 134, column: 2)
!597 = !DILocation(line: 134, column: 21, scope: !596)
!598 = !DILocation(line: 134, column: 19, scope: !596)
!599 = !DILocation(line: 134, column: 2, scope: !593)
!600 = !DILocation(line: 135, column: 11, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !2, line: 135, column: 3)
!602 = !DILocation(line: 135, column: 8, scope: !601)
!603 = !DILocation(line: 135, column: 17, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !2, line: 135, column: 3)
!605 = !DILocation(line: 135, column: 22, scope: !604)
!606 = !DILocation(line: 135, column: 20, scope: !604)
!607 = !DILocation(line: 135, column: 3, scope: !601)
!608 = !DILocation(line: 136, column: 29, scope: !604)
!609 = !DILocation(line: 136, column: 33, scope: !604)
!610 = !DILocation(line: 136, column: 38, scope: !604)
!611 = !DILocation(line: 136, column: 49, scope: !604)
!612 = !DILocation(line: 136, column: 47, scope: !604)
!613 = !DILocation(line: 136, column: 36, scope: !604)
!614 = !DILocation(line: 136, column: 4, scope: !604)
!615 = !DILocation(line: 136, column: 9, scope: !604)
!616 = !DILocation(line: 136, column: 14, scope: !604)
!617 = !DILocation(line: 136, column: 23, scope: !604)
!618 = !DILocation(line: 136, column: 21, scope: !604)
!619 = !DILocation(line: 136, column: 12, scope: !604)
!620 = !DILocation(line: 136, column: 27, scope: !604)
!621 = !DILocation(line: 135, column: 33, scope: !604)
!622 = !DILocation(line: 135, column: 3, scope: !604)
!623 = distinct !{!623, !607, !624}
!624 = !DILocation(line: 136, column: 51, scope: !601)
!625 = !DILocation(line: 134, column: 34, scope: !596)
!626 = !DILocation(line: 134, column: 2, scope: !596)
!627 = distinct !{!627, !599, !628}
!628 = !DILocation(line: 136, column: 51, scope: !593)
!629 = !DILocation(line: 139, column: 1, scope: !577)
!630 = distinct !DISubprogram(name: "reverse_data", scope: !2, file: !2, line: 142, type: !631, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !192, !86}
!633 = !{!634, !635, !636, !637, !638}
!634 = !DILocalVariable(name: "data", arg: 1, scope: !630, file: !2, line: 142, type: !192)
!635 = !DILocalVariable(name: "datalen", arg: 2, scope: !630, file: !2, line: 142, type: !86)
!636 = !DILocalVariable(name: "left", scope: !630, file: !2, line: 143, type: !86)
!637 = !DILocalVariable(name: "right", scope: !630, file: !2, line: 143, type: !86)
!638 = !DILocalVariable(name: "temp", scope: !630, file: !2, line: 144, type: !193)
!639 = !DILocation(line: 142, column: 22, scope: !630)
!640 = !DILocation(line: 142, column: 32, scope: !630)
!641 = !DILocation(line: 143, column: 3, scope: !630)
!642 = !DILocation(line: 143, column: 7, scope: !630)
!643 = !DILocation(line: 143, column: 13, scope: !630)
!644 = !DILocation(line: 144, column: 2, scope: !630)
!645 = !DILocation(line: 144, column: 8, scope: !630)
!646 = !DILocation(line: 146, column: 7, scope: !630)
!647 = !DILocation(line: 147, column: 10, scope: !630)
!648 = !DILocation(line: 147, column: 18, scope: !630)
!649 = !DILocation(line: 147, column: 8, scope: !630)
!650 = !DILocation(line: 149, column: 2, scope: !630)
!651 = !DILocation(line: 149, column: 9, scope: !630)
!652 = !DILocation(line: 149, column: 16, scope: !630)
!653 = !DILocation(line: 149, column: 14, scope: !630)
!654 = !DILocation(line: 150, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !630, file: !2, line: 150, column: 2)
!656 = !DILocation(line: 150, column: 17, scope: !655)
!657 = !DILocation(line: 150, column: 9, scope: !655)
!658 = !DILocation(line: 151, column: 17, scope: !655)
!659 = !DILocation(line: 151, column: 23, scope: !655)
!660 = !DILocation(line: 151, column: 3, scope: !655)
!661 = !DILocation(line: 151, column: 9, scope: !655)
!662 = !DILocation(line: 151, column: 15, scope: !655)
!663 = !DILocation(line: 152, column: 18, scope: !655)
!664 = !DILocation(line: 152, column: 3, scope: !655)
!665 = !DILocation(line: 152, column: 9, scope: !655)
!666 = !DILocation(line: 152, column: 16, scope: !655)
!667 = !DILocation(line: 153, column: 8, scope: !655)
!668 = !DILocation(line: 154, column: 9, scope: !655)
!669 = distinct !{!669, !650, !670}
!670 = !DILocation(line: 155, column: 3, scope: !630)
!671 = !DILocation(line: 157, column: 1, scope: !630)
!672 = !DILocation(line: 162, column: 2, scope: !61)
!673 = !DILocation(line: 162, column: 14, scope: !61)
!674 = !DILocation(line: 162, column: 33, scope: !61)
!675 = !DILocation(line: 164, column: 2, scope: !61)
!676 = !DILocation(line: 164, column: 9, scope: !61)
!677 = !DILocation(line: 165, column: 2, scope: !61)
!678 = !DILocation(line: 165, column: 6, scope: !61)
!679 = !DILocation(line: 168, column: 9, scope: !61)
!680 = !DILocation(line: 168, column: 7, scope: !61)
!681 = !DILocation(line: 169, column: 9, scope: !61)
!682 = !DILocation(line: 182, column: 6, scope: !683)
!683 = distinct !DILexicalBlock(scope: !61, file: !2, line: 182, column: 6)
!684 = !DILocation(line: 182, column: 11, scope: !683)
!685 = !DILocation(line: 182, column: 6, scope: !61)
!686 = !DILocation(line: 183, column: 10, scope: !683)
!687 = !DILocation(line: 183, column: 3, scope: !683)
!688 = !DILocation(line: 185, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !61, file: !2, line: 185, column: 6)
!690 = !DILocation(line: 185, column: 13, scope: !689)
!691 = !DILocation(line: 185, column: 6, scope: !61)
!692 = !DILocation(line: 186, column: 4, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !2, line: 186, column: 2)
!694 = !DILocation(line: 187, column: 10, scope: !693)
!695 = !DILocation(line: 187, column: 3, scope: !693)
!696 = !DILocation(line: 190, column: 2, scope: !61)
!697 = !DILocation(line: 190, column: 41, scope: !61)
!698 = !DILocation(line: 190, column: 9, scope: !61)
!699 = !DILocation(line: 190, column: 47, scope: !61)
!700 = !DILocation(line: 191, column: 23, scope: !174)
!701 = !DILocation(line: 191, column: 7, scope: !174)
!702 = !DILocation(line: 191, column: 7, scope: !61)
!703 = !DILocation(line: 192, column: 5, scope: !173)
!704 = !DILocation(line: 192, column: 11, scope: !173)
!705 = !DILocation(line: 192, column: 17, scope: !173)
!706 = !DILocation(line: 194, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !173, file: !2, line: 194, column: 8)
!708 = !DILocation(line: 194, column: 13, scope: !707)
!709 = !DILocation(line: 194, column: 37, scope: !707)
!710 = !DILocation(line: 194, column: 8, scope: !173)
!711 = !DILocation(line: 195, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !2, line: 195, column: 4)
!713 = !DILocation(line: 196, column: 5, scope: !712)
!714 = !DILocation(line: 196, column: 12, scope: !712)
!715 = !{!206, !206, i64 0}
!716 = !{!717, !717, i64 0}
!717 = !{!"short", !206, i64 0}
!718 = !DILocation(line: 197, column: 10, scope: !712)
!719 = distinct !{!719, !713, !718}
!720 = !DILocation(line: 198, column: 12, scope: !712)
!721 = !DILocation(line: 198, column: 10, scope: !712)
!722 = !DILocation(line: 201, column: 9, scope: !712)
!723 = !DILocation(line: 202, column: 17, scope: !724)
!724 = distinct !DILexicalBlock(scope: !712, file: !2, line: 202, column: 5)
!725 = !DILocation(line: 202, column: 15, scope: !724)
!726 = !DILocation(line: 202, column: 10, scope: !724)
!727 = !DILocation(line: 202, column: 23, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !2, line: 202, column: 5)
!729 = !DILocation(line: 202, column: 5, scope: !724)
!730 = !DILocation(line: 203, column: 11, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 203, column: 11)
!732 = distinct !DILexicalBlock(scope: !728, file: !2, line: 203, column: 5)
!733 = !DILocation(line: 203, column: 29, scope: !731)
!734 = !DILocation(line: 203, column: 32, scope: !731)
!735 = !DILocation(line: 203, column: 11, scope: !732)
!736 = !DILocation(line: 204, column: 7, scope: !731)
!737 = !DILocation(line: 205, column: 17, scope: !732)
!738 = !DILocation(line: 205, column: 6, scope: !732)
!739 = !DILocation(line: 205, column: 15, scope: !732)
!740 = !DILocation(line: 206, column: 11, scope: !732)
!741 = !DILocation(line: 207, column: 6, scope: !732)
!742 = !DILocation(line: 202, column: 37, scope: !728)
!743 = !DILocation(line: 202, column: 5, scope: !728)
!744 = distinct !{!744, !729, !745}
!745 = !DILocation(line: 207, column: 6, scope: !724)
!746 = !DILocation(line: 208, column: 5, scope: !712)
!747 = !DILocation(line: 208, column: 14, scope: !712)
!748 = !DILocation(line: 209, column: 5, scope: !712)
!749 = !DILocation(line: 211, column: 4, scope: !174)
!750 = !DILocation(line: 211, column: 4, scope: !173)
!751 = distinct !{!751, !696, !752}
!752 = !DILocation(line: 211, column: 4, scope: !61)
!753 = !DILocation(line: 213, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !61, file: !2, line: 213, column: 6)
!755 = !DILocation(line: 213, column: 6, scope: !61)
!756 = !DILocation(line: 214, column: 11, scope: !754)
!757 = !DILocation(line: 214, column: 3, scope: !754)
!758 = !DILocation(line: 216, column: 11, scope: !754)
!759 = !DILocation(line: 216, column: 3, scope: !754)
!760 = !DILocation(line: 218, column: 9, scope: !61)
!761 = !DILocation(line: 218, column: 2, scope: !61)
!762 = !DILocation(line: 219, column: 1, scope: !61)
!763 = !DISubprogram(name: "fgets", scope: !328, file: !328, line: 592, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DISubroutineType(types: !765)
!765 = !{!120, !766, !86, !431}
!766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!767 = !DISubprogram(name: "strstr", scope: !768, file: !768, line: 350, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!769 = !DISubroutineType(types: !770)
!770 = !{!120, !64, !64}
!771 = !DISubprogram(name: "strchr", scope: !768, file: !768, line: 246, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubroutineType(types: !773)
!773 = !{!120, !64, !86}
!774 = !DISubprogram(name: "__ctype_b_loc", scope: !69, file: !69, line: 79, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubroutineType(types: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!780 = !DISubprogram(name: "pclose", scope: !328, file: !328, line: 823, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
