; ModuleID = 'samples/990.bc'
source_filename = "xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_xor_gen(ptr noundef %dest, ptr noundef %sources, i32 noundef %n, i32 noundef %len) #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %sources.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !31, metadata !DIExpression()), !dbg !35
  store ptr %sources, ptr %sources.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sources.addr, metadata !32, metadata !DIExpression()), !dbg !36
  store i32 %n, ptr %n.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !33, metadata !DIExpression()), !dbg !37
  store i32 %len, ptr %len.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !34, metadata !DIExpression()), !dbg !38
  %0 = load i32, ptr %n.addr, align 4, !dbg !39
  %cmp = icmp ult i32 %0, 2, !dbg !41
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !42

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !43
  %cmp1 = icmp ugt i32 %1, 256, !dbg !44
  br i1 %cmp1, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !46
  br label %return, !dbg !46

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !48
  %3 = load ptr, ptr %sources.addr, align 8, !dbg !49
  %4 = load i32, ptr %n.addr, align 4, !dbg !50
  %5 = load i32, ptr %len.addr, align 4, !dbg !51
  %call = call i32 @do_xor_gen(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5), !dbg !52
  store i32 %call, ptr %retval, align 4, !dbg !53
  br label %return, !dbg !53

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !54
  ret i32 %6, !dbg !54
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @do_xor_gen(ptr noundef %dest, ptr noundef %sources, i32 noundef %n, i32 noundef %len) #0 !dbg !55 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %sources.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %buffers = alloca [257 x ptr], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !57, metadata !DIExpression()), !dbg !67
  store ptr %sources, ptr %sources.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sources.addr, metadata !58, metadata !DIExpression()), !dbg !68
  store i32 %n, ptr %n.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !59, metadata !DIExpression()), !dbg !69
  store i32 %len, ptr %len.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !60, metadata !DIExpression()), !dbg !70
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !71
  %1 = load ptr, ptr %sources.addr, align 8, !dbg !72
  %2 = load i32, ptr %n.addr, align 4, !dbg !73
  %call = call zeroext i1 @buffers_aligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef 32), !dbg !74
  br i1 %call, label %if.then, label %if.else, !dbg !75

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2056, ptr %buffers) #8, !dbg !76
  tail call void @llvm.dbg.declare(metadata ptr %buffers, metadata !61, metadata !DIExpression()), !dbg !77
  %3 = load i32, ptr %n.addr, align 4, !dbg !78
  %cmp = icmp uge i32 %3, 2147483647, !dbg !80
  br i1 %cmp, label %if.then1, label %if.end, !dbg !81

if.then1:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !82
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !82

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [257 x ptr], ptr %buffers, i64 0, i64 0, !dbg !84
  %4 = load ptr, ptr %sources.addr, align 8, !dbg !85
  %5 = load i32, ptr %n.addr, align 4, !dbg !86
  %conv = zext i32 %5 to i64, !dbg !86
  %mul = mul i64 %conv, 8, !dbg !87
  %call2 = call ptr @memcpy.inline(ptr noundef %arraydecay, ptr noundef %4, i64 noundef %mul) #8, !dbg !88
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !89
  %7 = load i32, ptr %n.addr, align 4, !dbg !90
  %idxprom = zext i32 %7 to i64, !dbg !91
  %arrayidx = getelementptr inbounds [257 x ptr], ptr %buffers, i64 0, i64 %idxprom, !dbg !91
  store ptr %6, ptr %arrayidx, align 8, !dbg !92
  %8 = load i32, ptr %n.addr, align 4, !dbg !93
  %add = add i32 %8, 1, !dbg !95
  %9 = load i32, ptr %len.addr, align 4, !dbg !96
  %arraydecay3 = getelementptr inbounds [257 x ptr], ptr %buffers, i64 0, i64 0, !dbg !97
  %call4 = call i32 @xor_gen(i32 noundef %add, i32 noundef %9, ptr noundef %arraydecay3), !dbg !98
  %tobool = icmp ne i32 %call4, 0, !dbg !98
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !99

if.then5:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !100

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !102
  br label %cleanup, !dbg !102

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then1
  call void @llvm.lifetime.end.p0(i64 2056, ptr %buffers) #8, !dbg !102
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !103

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %dest.addr, align 8, !dbg !104
  %11 = load ptr, ptr %sources.addr, align 8, !dbg !106
  %12 = load i32, ptr %n.addr, align 4, !dbg !107
  %13 = load i32, ptr %len.addr, align 4, !dbg !108
  call void @xor_gen_basic(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13), !dbg !109
  br label %if.end7

if.end7:                                          ; preds = %if.else, %cleanup.cont
  store i32 0, ptr %retval, align 4, !dbg !110
  br label %return, !dbg !110

return:                                           ; preds = %if.end7, %cleanup
  %14 = load i32, ptr %retval, align 4, !dbg !111
  ret i32 %14, !dbg !111

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define i64 @spdk_xor_get_optimal_alignment() #0 !dbg !112 {
entry:
  ret i64 32, !dbg !117
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @buffers_aligned(ptr noundef %dest, ptr noundef %sources, i32 noundef %n, i64 noundef %alignment) #0 !dbg !118 {
entry:
  %retval = alloca i1, align 1
  %dest.addr = alloca ptr, align 8
  %sources.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %alignment.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !123, metadata !DIExpression()), !dbg !128
  store ptr %sources, ptr %sources.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sources.addr, metadata !124, metadata !DIExpression()), !dbg !129
  store i32 %n, ptr %n.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i64 %alignment, ptr %alignment.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !126, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !132
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !127, metadata !DIExpression()), !dbg !133
  store i32 0, ptr %i, align 4, !dbg !134
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !137
  %1 = load i32, ptr %n.addr, align 4, !dbg !139
  %cmp = icmp ult i32 %0, %1, !dbg !140
  br i1 %cmp, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %sources.addr, align 8, !dbg !142
  %3 = load i32, ptr %i, align 4, !dbg !145
  %idxprom = zext i32 %3 to i64, !dbg !142
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !142
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !142
  %5 = load i64, ptr %alignment.addr, align 8, !dbg !146
  %call = call zeroext i1 @is_aligned(ptr noundef %4, i64 noundef %5), !dbg !147
  br i1 %call, label %if.end, label %if.then, !dbg !148

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1, !dbg !149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !152
  %inc = add i32 %6, 1, !dbg !152
  store i32 %inc, ptr %i, align 4, !dbg !152
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !156
  %8 = load i64, ptr %alignment.addr, align 8, !dbg !157
  %call1 = call zeroext i1 @is_aligned(ptr noundef %7, i64 noundef %8), !dbg !158
  store i1 %call1, ptr %retval, align 1, !dbg !159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !159

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !160
  %9 = load i1, ptr %retval, align 1, !dbg !160
  ret i1 %9, !dbg !160
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: alwaysinline nounwind
define internal ptr @memcpy.inline(ptr noalias nonnull %__dest, ptr noalias nonnull %__src, i64 %__len) #3 !dbg !161 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__src.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__dest.addr, metadata !172, metadata !DIExpression()), !dbg !175
  store ptr %__src, ptr %__src.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__src.addr, metadata !173, metadata !DIExpression()), !dbg !175
  store i64 %__len, ptr %__len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__len.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load ptr, ptr %__dest.addr, align 8, !dbg !176
  %1 = load ptr, ptr %__src.addr, align 8, !dbg !177
  %2 = load i64, ptr %__len.addr, align 8, !dbg !178
  %3 = load ptr, ptr %__dest.addr, align 8, !dbg !179
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false), !dbg !179
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4) #8, !dbg !180
  ret ptr %call, !dbg !181
}

declare !dbg !182 i32 @xor_gen(i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @xor_gen_basic(ptr noundef %dest, ptr noundef %sources, i32 noundef %n, i32 noundef %len) #0 !dbg !186 {
entry:
  %dest.addr = alloca ptr, align 8
  %sources.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %len_div = alloca i32, align 4
  %len_rem = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %w = alloca i64, align 8
  %sources2 = alloca [256 x ptr], align 16
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !190, metadata !DIExpression()), !dbg !209
  store ptr %sources, ptr %sources.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sources.addr, metadata !191, metadata !DIExpression()), !dbg !210
  store i32 %n, ptr %n.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !192, metadata !DIExpression()), !dbg !211
  store i32 %len, ptr %len.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !193, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #8, !dbg !213
  tail call void @llvm.dbg.declare(metadata ptr %shift, metadata !194, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 4, ptr %len_div) #8, !dbg !215
  tail call void @llvm.dbg.declare(metadata ptr %len_div, metadata !195, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %len_rem) #8, !dbg !215
  tail call void @llvm.dbg.declare(metadata ptr %len_rem, metadata !196, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !218
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !197, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !218
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !198, metadata !DIExpression()), !dbg !220
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !221
  %1 = load ptr, ptr %sources.addr, align 8, !dbg !223
  %2 = load i32, ptr %n.addr, align 4, !dbg !224
  %call = call zeroext i1 @buffers_aligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef 8), !dbg !225
  br i1 %call, label %if.end, label %if.then, !dbg !226

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !227
  %4 = load ptr, ptr %sources.addr, align 8, !dbg !229
  %5 = load i32, ptr %n.addr, align 4, !dbg !230
  %6 = load i32, ptr %len.addr, align 4, !dbg !231
  call void @xor_gen_unaligned(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6), !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

if.end:                                           ; preds = %entry
  %call1 = call i32 @spdk_u32log2(i32 noundef 8), !dbg !234
  store i32 %call1, ptr %shift, align 4, !dbg !235
  %7 = load i32, ptr %len.addr, align 4, !dbg !236
  %8 = load i32, ptr %shift, align 4, !dbg !237
  %shr = lshr i32 %7, %8, !dbg !238
  store i32 %shr, ptr %len_div, align 4, !dbg !239
  %9 = load i32, ptr %len_div, align 4, !dbg !240
  %10 = load i32, ptr %shift, align 4, !dbg !241
  %shl = shl i32 %9, %10, !dbg !242
  store i32 %shl, ptr %len_rem, align 4, !dbg !243
  store i32 0, ptr %i, align 4, !dbg !244
  br label %for.cond, !dbg !245

for.cond:                                         ; preds = %for.inc9, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !246
  %12 = load i32, ptr %len_div, align 4, !dbg !247
  %cmp = icmp ult i32 %11, %12, !dbg !248
  br i1 %cmp, label %for.body, label %for.end11, !dbg !249

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #8, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !199, metadata !DIExpression()), !dbg !251
  store i64 0, ptr %w, align 8, !dbg !251
  store i32 0, ptr %j, align 4, !dbg !252
  br label %for.cond2, !dbg !254

for.cond2:                                        ; preds = %for.inc, %for.body
  %13 = load i32, ptr %j, align 4, !dbg !255
  %14 = load i32, ptr %n.addr, align 4, !dbg !257
  %cmp3 = icmp ult i32 %13, %14, !dbg !258
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !259

for.body4:                                        ; preds = %for.cond2
  %15 = load ptr, ptr %sources.addr, align 8, !dbg !260
  %16 = load i32, ptr %j, align 4, !dbg !262
  %idxprom = zext i32 %16 to i64, !dbg !260
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom, !dbg !260
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !260
  %18 = load i32, ptr %i, align 4, !dbg !263
  %idxprom5 = zext i32 %18 to i64, !dbg !264
  %arrayidx6 = getelementptr inbounds i64, ptr %17, i64 %idxprom5, !dbg !264
  %19 = load i64, ptr %arrayidx6, align 8, !dbg !264
  %20 = load i64, ptr %w, align 8, !dbg !265
  %xor = xor i64 %20, %19, !dbg !265
  store i64 %xor, ptr %w, align 8, !dbg !265
  br label %for.inc, !dbg !266

for.inc:                                          ; preds = %for.body4
  %21 = load i32, ptr %j, align 4, !dbg !267
  %inc = add i32 %21, 1, !dbg !267
  store i32 %inc, ptr %j, align 4, !dbg !267
  br label %for.cond2, !dbg !268, !llvm.loop !269

for.end:                                          ; preds = %for.cond2
  %22 = load i64, ptr %w, align 8, !dbg !271
  %23 = load ptr, ptr %dest.addr, align 8, !dbg !272
  %24 = load i32, ptr %i, align 4, !dbg !273
  %idxprom7 = zext i32 %24 to i64, !dbg !274
  %arrayidx8 = getelementptr inbounds i64, ptr %23, i64 %idxprom7, !dbg !274
  store i64 %22, ptr %arrayidx8, align 8, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #8, !dbg !276
  br label %for.inc9, !dbg !277

for.inc9:                                         ; preds = %for.end
  %25 = load i32, ptr %i, align 4, !dbg !278
  %inc10 = add i32 %25, 1, !dbg !278
  store i32 %inc10, ptr %i, align 4, !dbg !278
  br label %for.cond, !dbg !279, !llvm.loop !280

for.end11:                                        ; preds = %for.cond
  %26 = load i32, ptr %len_rem, align 4, !dbg !282
  %27 = load i32, ptr %len.addr, align 4, !dbg !283
  %cmp12 = icmp ult i32 %26, %27, !dbg !284
  br i1 %cmp12, label %if.then13, label %if.end26, !dbg !285

if.then13:                                        ; preds = %for.end11
  call void @llvm.lifetime.start.p0(i64 2048, ptr %sources2) #8, !dbg !286
  tail call void @llvm.dbg.declare(metadata ptr %sources2, metadata !203, metadata !DIExpression()), !dbg !287
  store i32 0, ptr %j, align 4, !dbg !288
  br label %for.cond14, !dbg !290

for.cond14:                                       ; preds = %for.inc21, %if.then13
  %28 = load i32, ptr %j, align 4, !dbg !291
  %29 = load i32, ptr %n.addr, align 4, !dbg !293
  %cmp15 = icmp ult i32 %28, %29, !dbg !294
  br i1 %cmp15, label %for.body16, label %for.end23, !dbg !295

for.body16:                                       ; preds = %for.cond14
  %30 = load ptr, ptr %sources.addr, align 8, !dbg !296
  %31 = load i32, ptr %j, align 4, !dbg !298
  %idxprom17 = zext i32 %31 to i64, !dbg !296
  %arrayidx18 = getelementptr inbounds ptr, ptr %30, i64 %idxprom17, !dbg !296
  %32 = load ptr, ptr %arrayidx18, align 8, !dbg !296
  %33 = load i32, ptr %len_rem, align 4, !dbg !299
  %idx.ext = zext i32 %33 to i64, !dbg !300
  %add.ptr = getelementptr i8, ptr %32, i64 %idx.ext, !dbg !300
  %34 = load i32, ptr %j, align 4, !dbg !301
  %idxprom19 = zext i32 %34 to i64, !dbg !302
  %arrayidx20 = getelementptr inbounds [256 x ptr], ptr %sources2, i64 0, i64 %idxprom19, !dbg !302
  store ptr %add.ptr, ptr %arrayidx20, align 8, !dbg !303
  br label %for.inc21, !dbg !304

for.inc21:                                        ; preds = %for.body16
  %35 = load i32, ptr %j, align 4, !dbg !305
  %inc22 = add i32 %35, 1, !dbg !305
  store i32 %inc22, ptr %j, align 4, !dbg !305
  br label %for.cond14, !dbg !306, !llvm.loop !307

for.end23:                                        ; preds = %for.cond14
  %36 = load ptr, ptr %dest.addr, align 8, !dbg !309
  %37 = load i32, ptr %len_rem, align 4, !dbg !310
  %idx.ext24 = zext i32 %37 to i64, !dbg !311
  %add.ptr25 = getelementptr i8, ptr %36, i64 %idx.ext24, !dbg !311
  %arraydecay = getelementptr inbounds [256 x ptr], ptr %sources2, i64 0, i64 0, !dbg !312
  %38 = load i32, ptr %n.addr, align 4, !dbg !313
  %39 = load i32, ptr %len.addr, align 4, !dbg !314
  %40 = load i32, ptr %len_rem, align 4, !dbg !315
  %sub = sub i32 %39, %40, !dbg !316
  call void @xor_gen_unaligned(ptr noundef %add.ptr25, ptr noundef %arraydecay, i32 noundef %38, i32 noundef %sub), !dbg !317
  call void @llvm.lifetime.end.p0(i64 2048, ptr %sources2) #8, !dbg !318
  br label %if.end26, !dbg !319

if.end26:                                         ; preds = %for.end23, %for.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !320
  br label %cleanup, !dbg !320

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %len_rem) #8, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %len_div) #8, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #8, !dbg !320
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !320

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @is_aligned(ptr noundef %ptr, i64 noundef %alignment) #5 !dbg !321 {
entry:
  %ptr.addr = alloca ptr, align 8
  %alignment.addr = alloca i64, align 8
  %p = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !325, metadata !DIExpression()), !dbg !328
  store i64 %alignment, ptr %alignment.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !326, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !330
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !327, metadata !DIExpression()), !dbg !331
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !332
  %1 = ptrtoint ptr %0 to i64, !dbg !333
  store i64 %1, ptr %p, align 8, !dbg !331
  %2 = load i64, ptr %p, align 8, !dbg !334
  %3 = load i64, ptr %p, align 8, !dbg !335
  %4 = load i64, ptr %alignment.addr, align 8, !dbg !335
  %sub = sub i64 %4, 1, !dbg !335
  %not = xor i64 %sub, -1, !dbg !335
  %and = and i64 %3, %not, !dbg !335
  %cmp = icmp eq i64 %2, %and, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !337
  ret i1 %cmp, !dbg !338
}

; Function Attrs: nounwind
declare !dbg !339 ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

; Function Attrs: nounwind ssp uwtable
define internal void @xor_gen_unaligned(ptr noundef %dest, ptr noundef %sources, i32 noundef %n, i32 noundef %len) #0 !dbg !342 {
entry:
  %dest.addr = alloca ptr, align 8
  %sources.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i8, align 1
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !344, metadata !DIExpression()), !dbg !354
  store ptr %sources, ptr %sources.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sources.addr, metadata !345, metadata !DIExpression()), !dbg !355
  store i32 %n, ptr %n.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !346, metadata !DIExpression()), !dbg !356
  store i32 %len, ptr %len.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !347, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !348, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !349, metadata !DIExpression()), !dbg !360
  store i32 0, ptr %i, align 4, !dbg !361
  br label %for.cond, !dbg !362

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !dbg !363
  %1 = load i32, ptr %len.addr, align 4, !dbg !364
  %cmp = icmp ult i32 %0, %1, !dbg !365
  br i1 %cmp, label %for.body, label %for.end12, !dbg !366

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #8, !dbg !367
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !350, metadata !DIExpression()), !dbg !368
  store i8 0, ptr %b, align 1, !dbg !368
  store i32 0, ptr %j, align 4, !dbg !369
  br label %for.cond1, !dbg !371

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !372
  %3 = load i32, ptr %n.addr, align 4, !dbg !374
  %cmp2 = icmp ult i32 %2, %3, !dbg !375
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !376

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %sources.addr, align 8, !dbg !377
  %5 = load i32, ptr %j, align 4, !dbg !379
  %idxprom = zext i32 %5 to i64, !dbg !377
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom, !dbg !377
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !377
  %7 = load i32, ptr %i, align 4, !dbg !380
  %idxprom4 = zext i32 %7 to i64, !dbg !381
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 %idxprom4, !dbg !381
  %8 = load i8, ptr %arrayidx5, align 1, !dbg !381
  %conv = zext i8 %8 to i32, !dbg !381
  %9 = load i8, ptr %b, align 1, !dbg !382
  %conv6 = zext i8 %9 to i32, !dbg !382
  %xor = xor i32 %conv6, %conv, !dbg !382
  %conv7 = trunc i32 %xor to i8, !dbg !382
  store i8 %conv7, ptr %b, align 1, !dbg !382
  br label %for.inc, !dbg !383

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !dbg !384
  %inc = add i32 %10, 1, !dbg !384
  store i32 %inc, ptr %j, align 4, !dbg !384
  br label %for.cond1, !dbg !385, !llvm.loop !386

for.end:                                          ; preds = %for.cond1
  %11 = load i8, ptr %b, align 1, !dbg !388
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !389
  %13 = load i32, ptr %i, align 4, !dbg !390
  %idxprom8 = zext i32 %13 to i64, !dbg !391
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 %idxprom8, !dbg !391
  store i8 %11, ptr %arrayidx9, align 1, !dbg !392
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #8, !dbg !393
  br label %for.inc10, !dbg !394

for.inc10:                                        ; preds = %for.end
  %14 = load i32, ptr %i, align 4, !dbg !395
  %inc11 = add i32 %14, 1, !dbg !395
  store i32 %inc11, ptr %i, align 4, !dbg !395
  br label %for.cond, !dbg !396, !llvm.loop !397

for.end12:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !399
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !399
  ret void, !dbg !399
}

declare !dbg !400 i32 @spdk_u32log2(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nobuiltin nounwind ssp uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { alwaysinline nounwind "min-legal-vector-width"="0" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { inlinehint nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "xor.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/util", checksumkind: CSK_MD5, checksum: "5d8293364e90ec2439967d347bc1079a")
!2 = !{!3, !6, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !4, line: 90, baseType: !5)
!4 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 45, baseType: !5)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 38, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!21 = distinct !DISubprogram(name: "spdk_xor_gen", scope: !1, file: !1, line: 129, type: !22, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25, !26, !27, !27}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DILocalVariable(name: "dest", arg: 1, scope: !21, file: !1, line: 129, type: !25)
!32 = !DILocalVariable(name: "sources", arg: 2, scope: !21, file: !1, line: 129, type: !26)
!33 = !DILocalVariable(name: "n", arg: 3, scope: !21, file: !1, line: 129, type: !27)
!34 = !DILocalVariable(name: "len", arg: 4, scope: !21, file: !1, line: 129, type: !27)
!35 = !DILocation(line: 129, column: 20, scope: !21)
!36 = !DILocation(line: 129, column: 33, scope: !21)
!37 = !DILocation(line: 129, column: 51, scope: !21)
!38 = !DILocation(line: 129, column: 63, scope: !21)
!39 = !DILocation(line: 131, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !21, file: !1, line: 131, column: 6)
!41 = !DILocation(line: 131, column: 8, scope: !40)
!42 = !DILocation(line: 131, column: 12, scope: !40)
!43 = !DILocation(line: 131, column: 15, scope: !40)
!44 = !DILocation(line: 131, column: 17, scope: !40)
!45 = !DILocation(line: 131, column: 6, scope: !21)
!46 = !DILocation(line: 132, column: 3, scope: !47)
!47 = distinct !DILexicalBlock(scope: !40, file: !1, line: 131, column: 37)
!48 = !DILocation(line: 135, column: 20, scope: !21)
!49 = !DILocation(line: 135, column: 26, scope: !21)
!50 = !DILocation(line: 135, column: 35, scope: !21)
!51 = !DILocation(line: 135, column: 38, scope: !21)
!52 = !DILocation(line: 135, column: 9, scope: !21)
!53 = !DILocation(line: 135, column: 2, scope: !21)
!54 = !DILocation(line: 136, column: 1, scope: !21)
!55 = distinct !DISubprogram(name: "do_xor_gen", scope: !1, file: !1, line: 93, type: !22, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!56 = !{!57, !58, !59, !60, !61}
!57 = !DILocalVariable(name: "dest", arg: 1, scope: !55, file: !1, line: 93, type: !25)
!58 = !DILocalVariable(name: "sources", arg: 2, scope: !55, file: !1, line: 93, type: !26)
!59 = !DILocalVariable(name: "n", arg: 3, scope: !55, file: !1, line: 93, type: !27)
!60 = !DILocalVariable(name: "len", arg: 4, scope: !55, file: !1, line: 93, type: !27)
!61 = !DILocalVariable(name: "buffers", scope: !62, file: !1, line: 96, type: !64)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 95, column: 61)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 95, column: 6)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16448, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 257)
!67 = !DILocation(line: 93, column: 18, scope: !55)
!68 = !DILocation(line: 93, column: 31, scope: !55)
!69 = !DILocation(line: 93, column: 49, scope: !55)
!70 = !DILocation(line: 93, column: 61, scope: !55)
!71 = !DILocation(line: 95, column: 22, scope: !63)
!72 = !DILocation(line: 95, column: 28, scope: !63)
!73 = !DILocation(line: 95, column: 37, scope: !63)
!74 = !DILocation(line: 95, column: 6, scope: !63)
!75 = !DILocation(line: 95, column: 6, scope: !55)
!76 = !DILocation(line: 96, column: 3, scope: !62)
!77 = !DILocation(line: 96, column: 9, scope: !62)
!78 = !DILocation(line: 98, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !62, file: !1, line: 98, column: 7)
!80 = !DILocation(line: 98, column: 9, scope: !79)
!81 = !DILocation(line: 98, column: 7, scope: !62)
!82 = !DILocation(line: 99, column: 4, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 98, column: 21)
!84 = !DILocation(line: 102, column: 10, scope: !62)
!85 = !DILocation(line: 102, column: 19, scope: !62)
!86 = !DILocation(line: 102, column: 28, scope: !62)
!87 = !DILocation(line: 102, column: 30, scope: !62)
!88 = !DILocation(line: 102, column: 3, scope: !62)
!89 = !DILocation(line: 103, column: 16, scope: !62)
!90 = !DILocation(line: 103, column: 11, scope: !62)
!91 = !DILocation(line: 103, column: 3, scope: !62)
!92 = !DILocation(line: 103, column: 14, scope: !62)
!93 = !DILocation(line: 105, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !62, file: !1, line: 105, column: 7)
!95 = !DILocation(line: 105, column: 17, scope: !94)
!96 = !DILocation(line: 105, column: 22, scope: !94)
!97 = !DILocation(line: 105, column: 27, scope: !94)
!98 = !DILocation(line: 105, column: 7, scope: !94)
!99 = !DILocation(line: 105, column: 7, scope: !62)
!100 = !DILocation(line: 106, column: 4, scope: !101)
!101 = distinct !DILexicalBlock(scope: !94, file: !1, line: 105, column: 37)
!102 = !DILocation(line: 108, column: 2, scope: !63)
!103 = !DILocation(line: 108, column: 2, scope: !62)
!104 = !DILocation(line: 109, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !63, file: !1, line: 108, column: 9)
!106 = !DILocation(line: 109, column: 23, scope: !105)
!107 = !DILocation(line: 109, column: 32, scope: !105)
!108 = !DILocation(line: 109, column: 35, scope: !105)
!109 = !DILocation(line: 109, column: 3, scope: !105)
!110 = !DILocation(line: 112, column: 2, scope: !55)
!111 = !DILocation(line: 113, column: 1, scope: !55)
!112 = distinct !DISubprogram(name: "spdk_xor_get_optimal_alignment", scope: !1, file: !1, line: 139, type: !113, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = !DISubroutineType(types: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 29, baseType: !5)
!116 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!117 = !DILocation(line: 141, column: 2, scope: !112)
!118 = distinct !DISubprogram(name: "buffers_aligned", scope: !1, file: !1, line: 23, type: !119, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !25, !26, !27, !115}
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DILocalVariable(name: "dest", arg: 1, scope: !118, file: !1, line: 23, type: !25)
!124 = !DILocalVariable(name: "sources", arg: 2, scope: !118, file: !1, line: 23, type: !26)
!125 = !DILocalVariable(name: "n", arg: 3, scope: !118, file: !1, line: 23, type: !27)
!126 = !DILocalVariable(name: "alignment", arg: 4, scope: !118, file: !1, line: 23, type: !115)
!127 = !DILocalVariable(name: "i", scope: !118, file: !1, line: 25, type: !27)
!128 = !DILocation(line: 23, column: 23, scope: !118)
!129 = !DILocation(line: 23, column: 36, scope: !118)
!130 = !DILocation(line: 23, column: 54, scope: !118)
!131 = !DILocation(line: 23, column: 64, scope: !118)
!132 = !DILocation(line: 25, column: 2, scope: !118)
!133 = !DILocation(line: 25, column: 11, scope: !118)
!134 = !DILocation(line: 27, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !118, file: !1, line: 27, column: 2)
!136 = !DILocation(line: 27, column: 7, scope: !135)
!137 = !DILocation(line: 27, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 27, column: 2)
!139 = !DILocation(line: 27, column: 18, scope: !138)
!140 = !DILocation(line: 27, column: 16, scope: !138)
!141 = !DILocation(line: 27, column: 2, scope: !135)
!142 = !DILocation(line: 28, column: 19, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 28, column: 7)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 27, column: 26)
!145 = !DILocation(line: 28, column: 27, scope: !143)
!146 = !DILocation(line: 28, column: 31, scope: !143)
!147 = !DILocation(line: 28, column: 8, scope: !143)
!148 = !DILocation(line: 28, column: 7, scope: !144)
!149 = !DILocation(line: 29, column: 4, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 28, column: 43)
!151 = !DILocation(line: 31, column: 2, scope: !144)
!152 = !DILocation(line: 27, column: 22, scope: !138)
!153 = !DILocation(line: 27, column: 2, scope: !138)
!154 = distinct !{!154, !141, !155}
!155 = !DILocation(line: 31, column: 2, scope: !135)
!156 = !DILocation(line: 33, column: 20, scope: !118)
!157 = !DILocation(line: 33, column: 26, scope: !118)
!158 = !DILocation(line: 33, column: 9, scope: !118)
!159 = !DILocation(line: 33, column: 2, scope: !118)
!160 = !DILocation(line: 34, column: 1, scope: !118)
!161 = distinct !DISubprogram(name: "memcpy", scope: !162, file: !162, line: 26, type: !163, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!163 = !DISubroutineType(types: !164)
!164 = !{!25, !165, !166, !169}
!165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 70, baseType: !5)
!170 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!171 = !{!172, !173, !174}
!172 = !DILocalVariable(name: "__dest", arg: 1, scope: !161, file: !162, line: 26, type: !165)
!173 = !DILocalVariable(name: "__src", arg: 2, scope: !161, file: !162, line: 26, type: !166)
!174 = !DILocalVariable(name: "__len", arg: 3, scope: !161, file: !162, line: 26, type: !169)
!175 = !DILocation(line: 26, column: 1, scope: !161)
!176 = !DILocation(line: 29, column: 34, scope: !161)
!177 = !DILocation(line: 29, column: 42, scope: !161)
!178 = !DILocation(line: 29, column: 49, scope: !161)
!179 = !DILocation(line: 30, column: 6, scope: !161)
!180 = !DILocation(line: 29, column: 10, scope: !161)
!181 = !DILocation(line: 29, column: 3, scope: !161)
!182 = !DISubprogram(name: "xor_gen", scope: !183, file: !183, line: 64, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DIFile(filename: "isa-l/../isa-l/include/raid.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "819ea914614e77f748ef7b94a0bff12b")
!184 = !DISubroutineType(types: !185)
!185 = !{!24, !24, !24, !26}
!186 = distinct !DISubprogram(name: "xor_gen_basic", scope: !1, file: !1, line: 52, type: !187, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !25, !26, !27, !27}
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !203}
!190 = !DILocalVariable(name: "dest", arg: 1, scope: !186, file: !1, line: 52, type: !25)
!191 = !DILocalVariable(name: "sources", arg: 2, scope: !186, file: !1, line: 52, type: !26)
!192 = !DILocalVariable(name: "n", arg: 3, scope: !186, file: !1, line: 52, type: !27)
!193 = !DILocalVariable(name: "len", arg: 4, scope: !186, file: !1, line: 52, type: !27)
!194 = !DILocalVariable(name: "shift", scope: !186, file: !1, line: 54, type: !27)
!195 = !DILocalVariable(name: "len_div", scope: !186, file: !1, line: 55, type: !27)
!196 = !DILocalVariable(name: "len_rem", scope: !186, file: !1, line: 55, type: !27)
!197 = !DILocalVariable(name: "i", scope: !186, file: !1, line: 56, type: !27)
!198 = !DILocalVariable(name: "j", scope: !186, file: !1, line: 56, type: !27)
!199 = !DILocalVariable(name: "w", scope: !200, file: !1, line: 68, type: !7)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 67, column: 32)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 67, column: 2)
!202 = distinct !DILexicalBlock(scope: !186, file: !1, line: 67, column: 2)
!203 = !DILocalVariable(name: "sources2", scope: !204, file: !1, line: 77, type: !206)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 76, column: 21)
!205 = distinct !DILexicalBlock(scope: !186, file: !1, line: 76, column: 6)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16384, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 256)
!209 = !DILocation(line: 52, column: 21, scope: !186)
!210 = !DILocation(line: 52, column: 34, scope: !186)
!211 = !DILocation(line: 52, column: 52, scope: !186)
!212 = !DILocation(line: 52, column: 64, scope: !186)
!213 = !DILocation(line: 54, column: 2, scope: !186)
!214 = !DILocation(line: 54, column: 11, scope: !186)
!215 = !DILocation(line: 55, column: 2, scope: !186)
!216 = !DILocation(line: 55, column: 11, scope: !186)
!217 = !DILocation(line: 55, column: 20, scope: !186)
!218 = !DILocation(line: 56, column: 2, scope: !186)
!219 = !DILocation(line: 56, column: 11, scope: !186)
!220 = !DILocation(line: 56, column: 14, scope: !186)
!221 = !DILocation(line: 58, column: 23, scope: !222)
!222 = distinct !DILexicalBlock(scope: !186, file: !1, line: 58, column: 6)
!223 = !DILocation(line: 58, column: 29, scope: !222)
!224 = !DILocation(line: 58, column: 38, scope: !222)
!225 = !DILocation(line: 58, column: 7, scope: !222)
!226 = !DILocation(line: 58, column: 6, scope: !186)
!227 = !DILocation(line: 59, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 58, column: 60)
!229 = !DILocation(line: 59, column: 27, scope: !228)
!230 = !DILocation(line: 59, column: 36, scope: !228)
!231 = !DILocation(line: 59, column: 39, scope: !228)
!232 = !DILocation(line: 59, column: 3, scope: !228)
!233 = !DILocation(line: 60, column: 3, scope: !228)
!234 = !DILocation(line: 63, column: 10, scope: !186)
!235 = !DILocation(line: 63, column: 8, scope: !186)
!236 = !DILocation(line: 64, column: 12, scope: !186)
!237 = !DILocation(line: 64, column: 19, scope: !186)
!238 = !DILocation(line: 64, column: 16, scope: !186)
!239 = !DILocation(line: 64, column: 10, scope: !186)
!240 = !DILocation(line: 65, column: 12, scope: !186)
!241 = !DILocation(line: 65, column: 23, scope: !186)
!242 = !DILocation(line: 65, column: 20, scope: !186)
!243 = !DILocation(line: 65, column: 10, scope: !186)
!244 = !DILocation(line: 67, column: 9, scope: !202)
!245 = !DILocation(line: 67, column: 7, scope: !202)
!246 = !DILocation(line: 67, column: 14, scope: !201)
!247 = !DILocation(line: 67, column: 18, scope: !201)
!248 = !DILocation(line: 67, column: 16, scope: !201)
!249 = !DILocation(line: 67, column: 2, scope: !202)
!250 = !DILocation(line: 68, column: 3, scope: !200)
!251 = !DILocation(line: 68, column: 12, scope: !200)
!252 = !DILocation(line: 70, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !200, file: !1, line: 70, column: 3)
!254 = !DILocation(line: 70, column: 8, scope: !253)
!255 = !DILocation(line: 70, column: 15, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 70, column: 3)
!257 = !DILocation(line: 70, column: 19, scope: !256)
!258 = !DILocation(line: 70, column: 17, scope: !256)
!259 = !DILocation(line: 70, column: 3, scope: !253)
!260 = !DILocation(line: 71, column: 22, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 70, column: 27)
!262 = !DILocation(line: 71, column: 30, scope: !261)
!263 = !DILocation(line: 71, column: 34, scope: !261)
!264 = !DILocation(line: 71, column: 9, scope: !261)
!265 = !DILocation(line: 71, column: 6, scope: !261)
!266 = !DILocation(line: 72, column: 3, scope: !261)
!267 = !DILocation(line: 70, column: 23, scope: !256)
!268 = !DILocation(line: 70, column: 3, scope: !256)
!269 = distinct !{!269, !259, !270}
!270 = !DILocation(line: 72, column: 3, scope: !253)
!271 = !DILocation(line: 73, column: 27, scope: !200)
!272 = !DILocation(line: 73, column: 16, scope: !200)
!273 = !DILocation(line: 73, column: 22, scope: !200)
!274 = !DILocation(line: 73, column: 3, scope: !200)
!275 = !DILocation(line: 73, column: 25, scope: !200)
!276 = !DILocation(line: 74, column: 2, scope: !201)
!277 = !DILocation(line: 74, column: 2, scope: !200)
!278 = !DILocation(line: 67, column: 28, scope: !201)
!279 = !DILocation(line: 67, column: 2, scope: !201)
!280 = distinct !{!280, !249, !281}
!281 = !DILocation(line: 74, column: 2, scope: !202)
!282 = !DILocation(line: 76, column: 6, scope: !205)
!283 = !DILocation(line: 76, column: 16, scope: !205)
!284 = !DILocation(line: 76, column: 14, scope: !205)
!285 = !DILocation(line: 76, column: 6, scope: !186)
!286 = !DILocation(line: 77, column: 3, scope: !204)
!287 = !DILocation(line: 77, column: 9, scope: !204)
!288 = !DILocation(line: 79, column: 10, scope: !289)
!289 = distinct !DILexicalBlock(scope: !204, file: !1, line: 79, column: 3)
!290 = !DILocation(line: 79, column: 8, scope: !289)
!291 = !DILocation(line: 79, column: 15, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 79, column: 3)
!293 = !DILocation(line: 79, column: 19, scope: !292)
!294 = !DILocation(line: 79, column: 17, scope: !292)
!295 = !DILocation(line: 79, column: 3, scope: !289)
!296 = !DILocation(line: 80, column: 18, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 79, column: 27)
!298 = !DILocation(line: 80, column: 26, scope: !297)
!299 = !DILocation(line: 80, column: 31, scope: !297)
!300 = !DILocation(line: 80, column: 29, scope: !297)
!301 = !DILocation(line: 80, column: 13, scope: !297)
!302 = !DILocation(line: 80, column: 4, scope: !297)
!303 = !DILocation(line: 80, column: 16, scope: !297)
!304 = !DILocation(line: 81, column: 3, scope: !297)
!305 = !DILocation(line: 79, column: 23, scope: !292)
!306 = !DILocation(line: 79, column: 3, scope: !292)
!307 = distinct !{!307, !295, !308}
!308 = !DILocation(line: 81, column: 3, scope: !289)
!309 = !DILocation(line: 83, column: 21, scope: !204)
!310 = !DILocation(line: 83, column: 28, scope: !204)
!311 = !DILocation(line: 83, column: 26, scope: !204)
!312 = !DILocation(line: 83, column: 37, scope: !204)
!313 = !DILocation(line: 83, column: 47, scope: !204)
!314 = !DILocation(line: 83, column: 50, scope: !204)
!315 = !DILocation(line: 83, column: 56, scope: !204)
!316 = !DILocation(line: 83, column: 54, scope: !204)
!317 = !DILocation(line: 83, column: 3, scope: !204)
!318 = !DILocation(line: 84, column: 2, scope: !205)
!319 = !DILocation(line: 84, column: 2, scope: !204)
!320 = !DILocation(line: 85, column: 1, scope: !186)
!321 = distinct !DISubprogram(name: "is_aligned", scope: !1, file: !1, line: 15, type: !322, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!121, !25, !115}
!324 = !{!325, !326, !327}
!325 = !DILocalVariable(name: "ptr", arg: 1, scope: !321, file: !1, line: 15, type: !25)
!326 = !DILocalVariable(name: "alignment", arg: 2, scope: !321, file: !1, line: 15, type: !115)
!327 = !DILocalVariable(name: "p", scope: !321, file: !1, line: 17, type: !3)
!328 = !DILocation(line: 15, column: 18, scope: !321)
!329 = !DILocation(line: 15, column: 30, scope: !321)
!330 = !DILocation(line: 17, column: 2, scope: !321)
!331 = !DILocation(line: 17, column: 12, scope: !321)
!332 = !DILocation(line: 17, column: 27, scope: !321)
!333 = !DILocation(line: 17, column: 16, scope: !321)
!334 = !DILocation(line: 19, column: 9, scope: !321)
!335 = !DILocation(line: 19, column: 14, scope: !321)
!336 = !DILocation(line: 19, column: 11, scope: !321)
!337 = !DILocation(line: 20, column: 1, scope: !321)
!338 = !DILocation(line: 19, column: 2, scope: !321)
!339 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !162, file: !162, line: 29, type: !340, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{!25, !25, !167, !5, !5}
!342 = distinct !DISubprogram(name: "xor_gen_unaligned", scope: !1, file: !1, line: 37, type: !187, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350}
!344 = !DILocalVariable(name: "dest", arg: 1, scope: !342, file: !1, line: 37, type: !25)
!345 = !DILocalVariable(name: "sources", arg: 2, scope: !342, file: !1, line: 37, type: !26)
!346 = !DILocalVariable(name: "n", arg: 3, scope: !342, file: !1, line: 37, type: !27)
!347 = !DILocalVariable(name: "len", arg: 4, scope: !342, file: !1, line: 37, type: !27)
!348 = !DILocalVariable(name: "i", scope: !342, file: !1, line: 39, type: !27)
!349 = !DILocalVariable(name: "j", scope: !342, file: !1, line: 39, type: !27)
!350 = !DILocalVariable(name: "b", scope: !351, file: !1, line: 42, type: !12)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 41, column: 28)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 41, column: 2)
!353 = distinct !DILexicalBlock(scope: !342, file: !1, line: 41, column: 2)
!354 = !DILocation(line: 37, column: 25, scope: !342)
!355 = !DILocation(line: 37, column: 38, scope: !342)
!356 = !DILocation(line: 37, column: 56, scope: !342)
!357 = !DILocation(line: 37, column: 68, scope: !342)
!358 = !DILocation(line: 39, column: 2, scope: !342)
!359 = !DILocation(line: 39, column: 11, scope: !342)
!360 = !DILocation(line: 39, column: 14, scope: !342)
!361 = !DILocation(line: 41, column: 9, scope: !353)
!362 = !DILocation(line: 41, column: 7, scope: !353)
!363 = !DILocation(line: 41, column: 14, scope: !352)
!364 = !DILocation(line: 41, column: 18, scope: !352)
!365 = !DILocation(line: 41, column: 16, scope: !352)
!366 = !DILocation(line: 41, column: 2, scope: !353)
!367 = !DILocation(line: 42, column: 3, scope: !351)
!368 = !DILocation(line: 42, column: 11, scope: !351)
!369 = !DILocation(line: 44, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !351, file: !1, line: 44, column: 3)
!371 = !DILocation(line: 44, column: 8, scope: !370)
!372 = !DILocation(line: 44, column: 15, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 44, column: 3)
!374 = !DILocation(line: 44, column: 19, scope: !373)
!375 = !DILocation(line: 44, column: 17, scope: !373)
!376 = !DILocation(line: 44, column: 3, scope: !370)
!377 = !DILocation(line: 45, column: 21, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !1, line: 44, column: 27)
!379 = !DILocation(line: 45, column: 29, scope: !378)
!380 = !DILocation(line: 45, column: 33, scope: !378)
!381 = !DILocation(line: 45, column: 9, scope: !378)
!382 = !DILocation(line: 45, column: 6, scope: !378)
!383 = !DILocation(line: 46, column: 3, scope: !378)
!384 = !DILocation(line: 44, column: 23, scope: !373)
!385 = !DILocation(line: 44, column: 3, scope: !373)
!386 = distinct !{!386, !376, !387}
!387 = !DILocation(line: 46, column: 3, scope: !370)
!388 = !DILocation(line: 47, column: 26, scope: !351)
!389 = !DILocation(line: 47, column: 15, scope: !351)
!390 = !DILocation(line: 47, column: 21, scope: !351)
!391 = !DILocation(line: 47, column: 3, scope: !351)
!392 = !DILocation(line: 47, column: 24, scope: !351)
!393 = !DILocation(line: 48, column: 2, scope: !352)
!394 = !DILocation(line: 48, column: 2, scope: !351)
!395 = !DILocation(line: 41, column: 24, scope: !352)
!396 = !DILocation(line: 41, column: 2, scope: !352)
!397 = distinct !{!397, !366, !398}
!398 = !DILocation(line: 48, column: 2, scope: !353)
!399 = !DILocation(line: 49, column: 1, scope: !342)
!400 = !DISubprogram(name: "spdk_u32log2", scope: !401, file: !401, line: 59, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DIFile(filename: "include/spdk/util.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "590b8cd5a507651f04528313faecc1f8")
!402 = !DISubroutineType(types: !403)
!403 = !{!27, !27}
