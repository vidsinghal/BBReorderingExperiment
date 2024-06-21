; ModuleID = 'samples/710.bc'
source_filename = "asm/strfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string_transform.str_transforms = internal constant [6 x ptr] [ptr @utf8_to_16le, ptr @utf8_to_16le, ptr @utf8_to_16be, ptr @utf8_to_32le, ptr @utf8_to_32le, ptr @utf8_to_32be], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define hidden i64 @string_transform(ptr noundef %str, i64 noundef %len, ptr noundef %out, i32 noundef %func) #0 !dbg !2 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %func.addr = alloca i32, align 4
  %transform = alloca ptr, align 8
  %outlen = alloca i64, align 8
  %s = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !41, metadata !DIExpression()), !dbg !68
  store i64 %len, ptr %len.addr, align 8, !tbaa !69
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !42, metadata !DIExpression()), !dbg !71
  store ptr %out, ptr %out.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !43, metadata !DIExpression()), !dbg !72
  store i32 %func, ptr %func.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !44, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %transform) #4, !dbg !75
  tail call void @llvm.dbg.declare(metadata ptr %transform, metadata !45, metadata !DIExpression()), !dbg !76
  store ptr null, ptr %transform, align 8, !dbg !76, !annotation !77
  %0 = load i32, ptr %func.addr, align 4, !dbg !78, !tbaa !73
  %idxprom = zext i32 %0 to i64, !dbg !79
  %arrayidx = getelementptr [6 x ptr], ptr @string_transform.str_transforms, i64 0, i64 %idxprom, !dbg !79
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !79, !tbaa !64
  store ptr %1, ptr %transform, align 8, !dbg !76, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %outlen) #4, !dbg !80
  tail call void @llvm.dbg.declare(metadata ptr %outlen, metadata !50, metadata !DIExpression()), !dbg !81
  store i64 0, ptr %outlen, align 8, !dbg !81, !annotation !77
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4, !dbg !82
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !51, metadata !DIExpression()), !dbg !83
  store ptr null, ptr %s, align 8, !dbg !83, !annotation !77
  %2 = load ptr, ptr %str.addr, align 8, !dbg !84, !tbaa !64
  store ptr %2, ptr %s, align 8, !dbg !83, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #4, !dbg !85
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !52, metadata !DIExpression()), !dbg !86
  store ptr null, ptr %buf, align 8, !dbg !86, !annotation !77
  %3 = load ptr, ptr %transform, align 8, !dbg !87, !tbaa !64
  %4 = load ptr, ptr %s, align 8, !dbg !88, !tbaa !64
  %5 = load i64, ptr %len.addr, align 8, !dbg !89, !tbaa !69
  %call = call i64 %3(ptr noundef %4, i64 noundef %5, ptr noundef null), !dbg !87
  store i64 %call, ptr %outlen, align 8, !dbg !90, !tbaa !69
  %6 = load i64, ptr %outlen, align 8, !dbg !91, !tbaa !69
  %cmp = icmp eq i64 %6, -1, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !95

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %outlen, align 8, !dbg !96, !tbaa !69
  %add = add i64 %7, 1, !dbg !97
  %call1 = call noalias nonnull ptr @nasm_malloc(i64 noundef %add) #5, !dbg !98
  store ptr %call1, ptr %buf, align 8, !dbg !99, !tbaa !64
  %8 = load ptr, ptr %out.addr, align 8, !dbg !100, !tbaa !64
  store ptr %call1, ptr %8, align 8, !dbg !101, !tbaa !64
  %9 = load ptr, ptr %buf, align 8, !dbg !102, !tbaa !64
  %10 = load i64, ptr %outlen, align 8, !dbg !103, !tbaa !69
  %arrayidx2 = getelementptr i8, ptr %9, i64 %10, !dbg !102
  store i8 0, ptr %arrayidx2, align 1, !dbg !104, !tbaa !73
  %11 = load ptr, ptr %transform, align 8, !dbg !105, !tbaa !64
  %12 = load ptr, ptr %s, align 8, !dbg !106, !tbaa !64
  %13 = load i64, ptr %len.addr, align 8, !dbg !107, !tbaa !69
  %14 = load ptr, ptr %buf, align 8, !dbg !108, !tbaa !64
  %call3 = call i64 %11(ptr noundef %12, i64 noundef %13, ptr noundef %14), !dbg !105
  store i64 %call3, ptr %retval, align 8, !dbg !109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !109

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 8, ptr %outlen) #4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 8, ptr %transform) #4, !dbg !110
  %15 = load i64, ptr %retval, align 8, !dbg !110
  ret i64 %15, !dbg !110
}

; Function Attrs: nounwind uwtable
define internal i64 @utf8_to_16le(ptr noundef %str, i64 noundef %len, ptr noundef %op) #0 !dbg !111 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %outlen = alloca i64, align 8
  %expect = alloca i32, align 4
  %c = alloca i8, align 1
  %v = alloca i32, align 4
  %vmin = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_ws_p = alloca ptr, align 8
  %_ws_p35 = alloca ptr, align 8
  %_ws_p51 = alloca ptr, align 8
  %_ws_p72 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !113, metadata !DIExpression()), !dbg !155
  store i64 %len, ptr %len.addr, align 8, !tbaa !69
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !114, metadata !DIExpression()), !dbg !156
  store ptr %op, ptr %op.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !115, metadata !DIExpression()), !dbg !157
  call void @llvm.lifetime.start.p0(i64 8, ptr %outlen) #4, !dbg !158
  tail call void @llvm.dbg.declare(metadata ptr %outlen, metadata !116, metadata !DIExpression()), !dbg !159
  store i64 0, ptr %outlen, align 8, !dbg !159, !annotation !77
  store i64 0, ptr %outlen, align 8, !dbg !159, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %expect) #4, !dbg !160
  tail call void @llvm.dbg.declare(metadata ptr %expect, metadata !117, metadata !DIExpression()), !dbg !161
  store i32 0, ptr %expect, align 4, !dbg !161, !annotation !77
  store i32 0, ptr %expect, align 4, !dbg !161, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !164
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !119, metadata !DIExpression()), !dbg !165
  store i8 0, ptr %c, align 1, !dbg !165, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #4, !dbg !166
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !120, metadata !DIExpression()), !dbg !167
  store i32 0, ptr %v, align 4, !dbg !167, !annotation !77
  store i32 0, ptr %v, align 4, !dbg !167, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmin) #4, !dbg !166
  tail call void @llvm.dbg.declare(metadata ptr %vmin, metadata !121, metadata !DIExpression()), !dbg !168
  store i32 0, ptr %vmin, align 4, !dbg !168, !annotation !77
  store i32 0, ptr %vmin, align 4, !dbg !168, !tbaa !162
  br label %while.cond, !dbg !169

while.cond:                                       ; preds = %if.end126, %if.end62, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !170, !tbaa !69
  %dec = add i64 %0, -1, !dbg !170
  store i64 %dec, ptr %len.addr, align 8, !dbg !170, !tbaa !69
  %tobool = icmp ne i64 %0, 0, !dbg !169
  br i1 %tobool, label %while.body, label %while.end, !dbg !169

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str.addr, align 8, !dbg !171, !tbaa !64
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !171
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !171, !tbaa !64
  %2 = load i8, ptr %1, align 1, !dbg !172, !tbaa !73
  store i8 %2, ptr %c, align 1, !dbg !173, !tbaa !73
  %3 = load i32, ptr %expect, align 4, !dbg !174, !tbaa !162
  %tobool1 = icmp ne i32 %3, 0, !dbg !174
  br i1 %tobool1, label %if.then, label %if.end63, !dbg !175

if.then:                                          ; preds = %while.body
  %4 = load i8, ptr %c, align 1, !dbg !176, !tbaa !73
  %conv = zext i8 %4 to i32, !dbg !176
  %and = and i32 %conv, 192, !dbg !177
  %cmp = icmp ne i32 %and, 128, !dbg !178
  br i1 %cmp, label %if.then3, label %if.else, !dbg !179

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %expect, align 4, !dbg !180, !tbaa !162
  store i64 -1, ptr %retval, align 8, !dbg !182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !182

if.else:                                          ; preds = %if.then
  %5 = load i32, ptr %v, align 4, !dbg !183, !tbaa !162
  %shl = shl i32 %5, 6, !dbg !184
  %6 = load i8, ptr %c, align 1, !dbg !185, !tbaa !73
  %conv4 = zext i8 %6 to i32, !dbg !185
  %and5 = and i32 %conv4, 63, !dbg !186
  %or = or i32 %shl, %and5, !dbg !187
  store i32 %or, ptr %v, align 4, !dbg !188, !tbaa !162
  %7 = load i32, ptr %expect, align 4, !dbg !189, !tbaa !162
  %dec6 = add i32 %7, -1, !dbg !189
  store i32 %dec6, ptr %expect, align 4, !dbg !189, !tbaa !162
  %tobool7 = icmp ne i32 %dec6, 0, !dbg !189
  br i1 %tobool7, label %if.end62, label %if.then8, !dbg !190

if.then8:                                         ; preds = %if.else
  %8 = load i32, ptr %v, align 4, !dbg !191, !tbaa !162
  %9 = load i32, ptr %vmin, align 4, !dbg !192, !tbaa !162
  %cmp9 = icmp ult i32 %8, %9, !dbg !193
  br i1 %cmp9, label %if.then18, label %lor.lhs.false, !dbg !194

lor.lhs.false:                                    ; preds = %if.then8
  %10 = load i32, ptr %v, align 4, !dbg !195, !tbaa !162
  %cmp11 = icmp ugt i32 %10, 1114111, !dbg !196
  br i1 %cmp11, label %if.then18, label %lor.lhs.false13, !dbg !197

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr %v, align 4, !dbg !198, !tbaa !162
  %cmp14 = icmp uge i32 %11, 55296, !dbg !199
  br i1 %cmp14, label %land.lhs.true, label %if.else19, !dbg !200

land.lhs.true:                                    ; preds = %lor.lhs.false13
  %12 = load i32, ptr %v, align 4, !dbg !201, !tbaa !162
  %cmp16 = icmp ule i32 %12, 57343, !dbg !202
  br i1 %cmp16, label %if.then18, label %if.else19, !dbg !203

if.then18:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.then8
  store i64 -1, ptr %retval, align 8, !dbg !204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !204

if.else19:                                        ; preds = %land.lhs.true, %lor.lhs.false13
  %13 = load i32, ptr %v, align 4, !dbg !206, !tbaa !162
  %cmp20 = icmp ugt i32 %13, 65535, !dbg !207
  br i1 %cmp20, label %if.then22, label %if.else46, !dbg !208

if.then22:                                        ; preds = %if.else19
  %14 = load i32, ptr %v, align 4, !dbg !209, !tbaa !162
  %sub = sub i32 %14, 65536, !dbg !209
  store i32 %sub, ptr %v, align 4, !dbg !209, !tbaa !162
  br label %do.body, !dbg !210

do.body:                                          ; preds = %if.then22
  %15 = load ptr, ptr %op.addr, align 8, !dbg !211, !tbaa !64
  %tobool23 = icmp ne ptr %15, null, !dbg !211
  br i1 %tobool23, label %if.then24, label %if.end, !dbg !212

if.then24:                                        ; preds = %do.body
  br label %do.body25, !dbg !213

do.body25:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ws_p) #4, !dbg !214
  tail call void @llvm.dbg.declare(metadata ptr %_ws_p, metadata !122, metadata !DIExpression()), !dbg !214
  store ptr null, ptr %_ws_p, align 8, !dbg !214, !annotation !77
  %16 = load ptr, ptr %op.addr, align 8, !dbg !214, !tbaa !64
  store ptr %16, ptr %_ws_p, align 8, !dbg !214, !tbaa !64
  %17 = load i32, ptr %v, align 4, !dbg !214, !tbaa !162
  %shr = lshr i32 %17, 10, !dbg !214
  %or26 = or i32 55296, %shr, !dbg !214
  %conv27 = trunc i32 %or26 to i16, !dbg !214
  %18 = load ptr, ptr %_ws_p, align 8, !dbg !214, !tbaa !64
  %incdec.ptr28 = getelementptr i16, ptr %18, i32 1, !dbg !214
  store ptr %incdec.ptr28, ptr %_ws_p, align 8, !dbg !214, !tbaa !64
  store i16 %conv27, ptr %18, align 2, !dbg !214, !tbaa !215
  %19 = load ptr, ptr %_ws_p, align 8, !dbg !214, !tbaa !64
  store ptr %19, ptr %op.addr, align 8, !dbg !214, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ws_p) #4, !dbg !213
  br label %do.cond, !dbg !214

do.cond:                                          ; preds = %do.body25
  br label %do.end, !dbg !214

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !213

if.end:                                           ; preds = %do.end, %do.body
  %20 = load i64, ptr %outlen, align 8, !dbg !212, !tbaa !69
  %inc = add i64 %20, 1, !dbg !212
  store i64 %inc, ptr %outlen, align 8, !dbg !212, !tbaa !69
  br label %do.cond29, !dbg !212

do.cond29:                                        ; preds = %if.end
  br label %do.end30, !dbg !212

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !217

do.body31:                                        ; preds = %do.end30
  %21 = load ptr, ptr %op.addr, align 8, !dbg !218, !tbaa !64
  %tobool32 = icmp ne ptr %21, null, !dbg !218
  br i1 %tobool32, label %if.then33, label %if.end42, !dbg !219

if.then33:                                        ; preds = %do.body31
  br label %do.body34, !dbg !220

do.body34:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ws_p35) #4, !dbg !221
  tail call void @llvm.dbg.declare(metadata ptr %_ws_p35, metadata !137, metadata !DIExpression()), !dbg !221
  store ptr null, ptr %_ws_p35, align 8, !dbg !221, !annotation !77
  %22 = load ptr, ptr %op.addr, align 8, !dbg !221, !tbaa !64
  store ptr %22, ptr %_ws_p35, align 8, !dbg !221, !tbaa !64
  %23 = load i32, ptr %v, align 4, !dbg !221, !tbaa !162
  %and36 = and i32 %23, 1023, !dbg !221
  %or37 = or i32 56320, %and36, !dbg !221
  %conv38 = trunc i32 %or37 to i16, !dbg !221
  %24 = load ptr, ptr %_ws_p35, align 8, !dbg !221, !tbaa !64
  %incdec.ptr39 = getelementptr i16, ptr %24, i32 1, !dbg !221
  store ptr %incdec.ptr39, ptr %_ws_p35, align 8, !dbg !221, !tbaa !64
  store i16 %conv38, ptr %24, align 2, !dbg !221, !tbaa !215
  %25 = load ptr, ptr %_ws_p35, align 8, !dbg !221, !tbaa !64
  store ptr %25, ptr %op.addr, align 8, !dbg !221, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ws_p35) #4, !dbg !220
  br label %do.cond40, !dbg !221

do.cond40:                                        ; preds = %do.body34
  br label %do.end41, !dbg !221

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !220

if.end42:                                         ; preds = %do.end41, %do.body31
  %26 = load i64, ptr %outlen, align 8, !dbg !219, !tbaa !69
  %inc43 = add i64 %26, 1, !dbg !219
  store i64 %inc43, ptr %outlen, align 8, !dbg !219, !tbaa !69
  br label %do.cond44, !dbg !219

do.cond44:                                        ; preds = %if.end42
  br label %do.end45, !dbg !219

do.end45:                                         ; preds = %do.cond44
  br label %if.end60, !dbg !222

if.else46:                                        ; preds = %if.else19
  br label %do.body47, !dbg !223

do.body47:                                        ; preds = %if.else46
  %27 = load ptr, ptr %op.addr, align 8, !dbg !224, !tbaa !64
  %tobool48 = icmp ne ptr %27, null, !dbg !224
  br i1 %tobool48, label %if.then49, label %if.end56, !dbg !225

if.then49:                                        ; preds = %do.body47
  br label %do.body50, !dbg !226

do.body50:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ws_p51) #4, !dbg !227
  tail call void @llvm.dbg.declare(metadata ptr %_ws_p51, metadata !142, metadata !DIExpression()), !dbg !227
  store ptr null, ptr %_ws_p51, align 8, !dbg !227, !annotation !77
  %28 = load ptr, ptr %op.addr, align 8, !dbg !227, !tbaa !64
  store ptr %28, ptr %_ws_p51, align 8, !dbg !227, !tbaa !64
  %29 = load i32, ptr %v, align 4, !dbg !227, !tbaa !162
  %conv52 = trunc i32 %29 to i16, !dbg !227
  %30 = load ptr, ptr %_ws_p51, align 8, !dbg !227, !tbaa !64
  %incdec.ptr53 = getelementptr i16, ptr %30, i32 1, !dbg !227
  store ptr %incdec.ptr53, ptr %_ws_p51, align 8, !dbg !227, !tbaa !64
  store i16 %conv52, ptr %30, align 2, !dbg !227, !tbaa !215
  %31 = load ptr, ptr %_ws_p51, align 8, !dbg !227, !tbaa !64
  store ptr %31, ptr %op.addr, align 8, !dbg !227, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ws_p51) #4, !dbg !226
  br label %do.cond54, !dbg !227

do.cond54:                                        ; preds = %do.body50
  br label %do.end55, !dbg !227

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !226

if.end56:                                         ; preds = %do.end55, %do.body47
  %32 = load i64, ptr %outlen, align 8, !dbg !225, !tbaa !69
  %inc57 = add i64 %32, 1, !dbg !225
  store i64 %inc57, ptr %outlen, align 8, !dbg !225, !tbaa !69
  br label %do.cond58, !dbg !225

do.cond58:                                        ; preds = %if.end56
  br label %do.end59, !dbg !225

do.end59:                                         ; preds = %do.cond58
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %do.end45
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  br label %if.end62, !dbg !228

if.end62:                                         ; preds = %if.end61, %if.else
  br label %while.cond, !dbg !229, !llvm.loop !230

if.end63:                                         ; preds = %while.body
  %33 = load i8, ptr %c, align 1, !dbg !233, !tbaa !73
  %conv64 = zext i8 %33 to i32, !dbg !233
  %cmp65 = icmp slt i32 %conv64, 128, !dbg !234
  br i1 %cmp65, label %if.then67, label %if.else81, !dbg !235

if.then67:                                        ; preds = %if.end63
  br label %do.body68, !dbg !236

do.body68:                                        ; preds = %if.then67
  %34 = load ptr, ptr %op.addr, align 8, !dbg !237, !tbaa !64
  %tobool69 = icmp ne ptr %34, null, !dbg !237
  br i1 %tobool69, label %if.then70, label %if.end77, !dbg !238

if.then70:                                        ; preds = %do.body68
  br label %do.body71, !dbg !239

do.body71:                                        ; preds = %if.then70
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ws_p72) #4, !dbg !240
  tail call void @llvm.dbg.declare(metadata ptr %_ws_p72, metadata !148, metadata !DIExpression()), !dbg !240
  store ptr null, ptr %_ws_p72, align 8, !dbg !240, !annotation !77
  %35 = load ptr, ptr %op.addr, align 8, !dbg !240, !tbaa !64
  store ptr %35, ptr %_ws_p72, align 8, !dbg !240, !tbaa !64
  %36 = load i8, ptr %c, align 1, !dbg !240, !tbaa !73
  %conv73 = zext i8 %36 to i16, !dbg !240
  %37 = load ptr, ptr %_ws_p72, align 8, !dbg !240, !tbaa !64
  %incdec.ptr74 = getelementptr i16, ptr %37, i32 1, !dbg !240
  store ptr %incdec.ptr74, ptr %_ws_p72, align 8, !dbg !240, !tbaa !64
  store i16 %conv73, ptr %37, align 2, !dbg !240, !tbaa !215
  %38 = load ptr, ptr %_ws_p72, align 8, !dbg !240, !tbaa !64
  store ptr %38, ptr %op.addr, align 8, !dbg !240, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ws_p72) #4, !dbg !239
  br label %do.cond75, !dbg !240

do.cond75:                                        ; preds = %do.body71
  br label %do.end76, !dbg !240

do.end76:                                         ; preds = %do.cond75
  br label %if.end77, !dbg !239

if.end77:                                         ; preds = %do.end76, %do.body68
  %39 = load i64, ptr %outlen, align 8, !dbg !238, !tbaa !69
  %inc78 = add i64 %39, 1, !dbg !238
  store i64 %inc78, ptr %outlen, align 8, !dbg !238, !tbaa !69
  br label %do.cond79, !dbg !238

do.cond79:                                        ; preds = %if.end77
  br label %do.end80, !dbg !238

do.end80:                                         ; preds = %do.cond79
  br label %if.end126, !dbg !241

if.else81:                                        ; preds = %if.end63
  %40 = load i8, ptr %c, align 1, !dbg !242, !tbaa !73
  %conv82 = zext i8 %40 to i32, !dbg !242
  %cmp83 = icmp slt i32 %conv82, 192, !dbg !244
  br i1 %cmp83, label %if.then89, label %lor.lhs.false85, !dbg !245

lor.lhs.false85:                                  ; preds = %if.else81
  %41 = load i8, ptr %c, align 1, !dbg !246, !tbaa !73
  %conv86 = zext i8 %41 to i32, !dbg !246
  %cmp87 = icmp sge i32 %conv86, 254, !dbg !247
  br i1 %cmp87, label %if.then89, label %if.else90, !dbg !248

if.then89:                                        ; preds = %lor.lhs.false85, %if.else81
  store i64 -1, ptr %retval, align 8, !dbg !249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !249

if.else90:                                        ; preds = %lor.lhs.false85
  %42 = load i8, ptr %c, align 1, !dbg !251, !tbaa !73
  %conv91 = zext i8 %42 to i32, !dbg !251
  %cmp92 = icmp slt i32 %conv91, 224, !dbg !253
  br i1 %cmp92, label %if.then94, label %if.else97, !dbg !254

if.then94:                                        ; preds = %if.else90
  %43 = load i8, ptr %c, align 1, !dbg !255, !tbaa !73
  %conv95 = zext i8 %43 to i32, !dbg !255
  %and96 = and i32 %conv95, 31, !dbg !257
  store i32 %and96, ptr %v, align 4, !dbg !258, !tbaa !162
  store i32 1, ptr %expect, align 4, !dbg !259, !tbaa !162
  store i32 128, ptr %vmin, align 4, !dbg !260, !tbaa !162
  br label %if.end124, !dbg !261

if.else97:                                        ; preds = %if.else90
  %44 = load i8, ptr %c, align 1, !dbg !262, !tbaa !73
  %conv98 = zext i8 %44 to i32, !dbg !262
  %cmp99 = icmp slt i32 %conv98, 240, !dbg !264
  br i1 %cmp99, label %if.then101, label %if.else104, !dbg !265

if.then101:                                       ; preds = %if.else97
  %45 = load i8, ptr %c, align 1, !dbg !266, !tbaa !73
  %conv102 = zext i8 %45 to i32, !dbg !266
  %and103 = and i32 %conv102, 15, !dbg !268
  store i32 %and103, ptr %v, align 4, !dbg !269, !tbaa !162
  store i32 2, ptr %expect, align 4, !dbg !270, !tbaa !162
  store i32 2048, ptr %vmin, align 4, !dbg !271, !tbaa !162
  br label %if.end123, !dbg !272

if.else104:                                       ; preds = %if.else97
  %46 = load i8, ptr %c, align 1, !dbg !273, !tbaa !73
  %conv105 = zext i8 %46 to i32, !dbg !273
  %cmp106 = icmp slt i32 %conv105, 248, !dbg !275
  br i1 %cmp106, label %if.then108, label %if.else111, !dbg !276

if.then108:                                       ; preds = %if.else104
  %47 = load i8, ptr %c, align 1, !dbg !277, !tbaa !73
  %conv109 = zext i8 %47 to i32, !dbg !277
  %and110 = and i32 %conv109, 7, !dbg !279
  store i32 %and110, ptr %v, align 4, !dbg !280, !tbaa !162
  store i32 3, ptr %expect, align 4, !dbg !281, !tbaa !162
  store i32 65536, ptr %vmin, align 4, !dbg !282, !tbaa !162
  br label %if.end122, !dbg !283

if.else111:                                       ; preds = %if.else104
  %48 = load i8, ptr %c, align 1, !dbg !284, !tbaa !73
  %conv112 = zext i8 %48 to i32, !dbg !284
  %cmp113 = icmp slt i32 %conv112, 252, !dbg !286
  br i1 %cmp113, label %if.then115, label %if.else118, !dbg !287

if.then115:                                       ; preds = %if.else111
  %49 = load i8, ptr %c, align 1, !dbg !288, !tbaa !73
  %conv116 = zext i8 %49 to i32, !dbg !288
  %and117 = and i32 %conv116, 3, !dbg !290
  store i32 %and117, ptr %v, align 4, !dbg !291, !tbaa !162
  store i32 4, ptr %expect, align 4, !dbg !292, !tbaa !162
  store i32 2097152, ptr %vmin, align 4, !dbg !293, !tbaa !162
  br label %if.end121, !dbg !294

if.else118:                                       ; preds = %if.else111
  %50 = load i8, ptr %c, align 1, !dbg !295, !tbaa !73
  %conv119 = zext i8 %50 to i32, !dbg !295
  %and120 = and i32 %conv119, 1, !dbg !297
  store i32 %and120, ptr %v, align 4, !dbg !298, !tbaa !162
  store i32 5, ptr %expect, align 4, !dbg !299, !tbaa !162
  store i32 67108864, ptr %vmin, align 4, !dbg !300, !tbaa !162
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then115
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then108
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then101
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then94
  br label %if.end125

if.end125:                                        ; preds = %if.end124
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %do.end80
  br label %while.cond, !dbg !169, !llvm.loop !230

while.end:                                        ; preds = %while.cond
  %51 = load i32, ptr %expect, align 4, !dbg !301, !tbaa !162
  %tobool127 = icmp ne i32 %51, 0, !dbg !301
  br i1 %tobool127, label %cond.true, label %cond.false, !dbg !301

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !301

cond.false:                                       ; preds = %while.end
  %52 = load i64, ptr %outlen, align 8, !dbg !302, !tbaa !69
  %shl128 = shl i64 %52, 1, !dbg !303
  br label %cond.end, !dbg !301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %shl128, %cond.false ], !dbg !301
  store i64 %cond, ptr %retval, align 8, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

cleanup:                                          ; preds = %cond.end, %if.then89, %if.then18, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmin) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr %expect) #4, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %outlen) #4, !dbg !305
  %53 = load i64, ptr %retval, align 8, !dbg !305
  ret i64 %53, !dbg !305
}

; Function Attrs: nounwind uwtable
define internal i64 @utf8_to_16be(ptr noundef %str, i64 noundef %len, ptr noundef %op) #0 !dbg !306 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %outlen = alloca i64, align 8
  %expect = alloca i32, align 4
  %c = alloca i8, align 1
  %v = alloca i32, align 4
  %vmin = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_y = alloca i16, align 2
  %_wc_p = alloca ptr, align 8
  %_wc_p33 = alloca ptr, align 8
  %_y41 = alloca i16, align 2
  %_wc_p48 = alloca ptr, align 8
  %_wc_p56 = alloca ptr, align 8
  %_y67 = alloca i16, align 2
  %_wc_p72 = alloca ptr, align 8
  %_wc_p80 = alloca ptr, align 8
  %_y98 = alloca i16, align 2
  %_wc_p103 = alloca ptr, align 8
  %_wc_p111 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !308, metadata !DIExpression()), !dbg !361
  store i64 %len, ptr %len.addr, align 8, !tbaa !69
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !309, metadata !DIExpression()), !dbg !362
  store ptr %op, ptr %op.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !310, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr %outlen) #4, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %outlen, metadata !311, metadata !DIExpression()), !dbg !365
  store i64 0, ptr %outlen, align 8, !dbg !365, !annotation !77
  store i64 0, ptr %outlen, align 8, !dbg !365, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %expect) #4, !dbg !366
  tail call void @llvm.dbg.declare(metadata ptr %expect, metadata !312, metadata !DIExpression()), !dbg !367
  store i32 0, ptr %expect, align 4, !dbg !367, !annotation !77
  store i32 0, ptr %expect, align 4, !dbg !367, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !368
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !313, metadata !DIExpression()), !dbg !369
  store i8 0, ptr %c, align 1, !dbg !369, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #4, !dbg !370
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !314, metadata !DIExpression()), !dbg !371
  store i32 0, ptr %v, align 4, !dbg !371, !annotation !77
  store i32 0, ptr %v, align 4, !dbg !371, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmin) #4, !dbg !370
  tail call void @llvm.dbg.declare(metadata ptr %vmin, metadata !315, metadata !DIExpression()), !dbg !372
  store i32 0, ptr %vmin, align 4, !dbg !372, !annotation !77
  store i32 0, ptr %vmin, align 4, !dbg !372, !tbaa !162
  br label %while.cond, !dbg !373

while.cond:                                       ; preds = %if.end165, %if.end91, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !374, !tbaa !69
  %dec = add i64 %0, -1, !dbg !374
  store i64 %dec, ptr %len.addr, align 8, !dbg !374, !tbaa !69
  %tobool = icmp ne i64 %0, 0, !dbg !373
  br i1 %tobool, label %while.body, label %while.end, !dbg !373

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str.addr, align 8, !dbg !375, !tbaa !64
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !375
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !375, !tbaa !64
  %2 = load i8, ptr %1, align 1, !dbg !376, !tbaa !73
  store i8 %2, ptr %c, align 1, !dbg !377, !tbaa !73
  %3 = load i32, ptr %expect, align 4, !dbg !378, !tbaa !162
  %tobool1 = icmp ne i32 %3, 0, !dbg !378
  br i1 %tobool1, label %if.then, label %if.end92, !dbg !379

if.then:                                          ; preds = %while.body
  %4 = load i8, ptr %c, align 1, !dbg !380, !tbaa !73
  %conv = zext i8 %4 to i32, !dbg !380
  %and = and i32 %conv, 192, !dbg !381
  %cmp = icmp ne i32 %and, 128, !dbg !382
  br i1 %cmp, label %if.then3, label %if.else, !dbg !383

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %expect, align 4, !dbg !384, !tbaa !162
  store i64 -1, ptr %retval, align 8, !dbg !386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !386

if.else:                                          ; preds = %if.then
  %5 = load i32, ptr %v, align 4, !dbg !387, !tbaa !162
  %shl = shl i32 %5, 6, !dbg !388
  %6 = load i8, ptr %c, align 1, !dbg !389, !tbaa !73
  %conv4 = zext i8 %6 to i32, !dbg !389
  %and5 = and i32 %conv4, 63, !dbg !390
  %or = or i32 %shl, %and5, !dbg !391
  store i32 %or, ptr %v, align 4, !dbg !392, !tbaa !162
  %7 = load i32, ptr %expect, align 4, !dbg !393, !tbaa !162
  %dec6 = add i32 %7, -1, !dbg !393
  store i32 %dec6, ptr %expect, align 4, !dbg !393, !tbaa !162
  %tobool7 = icmp ne i32 %dec6, 0, !dbg !393
  br i1 %tobool7, label %if.end91, label %if.then8, !dbg !394

if.then8:                                         ; preds = %if.else
  %8 = load i32, ptr %v, align 4, !dbg !395, !tbaa !162
  %9 = load i32, ptr %vmin, align 4, !dbg !396, !tbaa !162
  %cmp9 = icmp ult i32 %8, %9, !dbg !397
  br i1 %cmp9, label %if.then18, label %lor.lhs.false, !dbg !398

lor.lhs.false:                                    ; preds = %if.then8
  %10 = load i32, ptr %v, align 4, !dbg !399, !tbaa !162
  %cmp11 = icmp ugt i32 %10, 1114111, !dbg !400
  br i1 %cmp11, label %if.then18, label %lor.lhs.false13, !dbg !401

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr %v, align 4, !dbg !402, !tbaa !162
  %cmp14 = icmp uge i32 %11, 55296, !dbg !403
  br i1 %cmp14, label %land.lhs.true, label %if.else19, !dbg !404

land.lhs.true:                                    ; preds = %lor.lhs.false13
  %12 = load i32, ptr %v, align 4, !dbg !405, !tbaa !162
  %cmp16 = icmp ule i32 %12, 57343, !dbg !406
  br i1 %cmp16, label %if.then18, label %if.else19, !dbg !407

if.then18:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.then8
  store i64 -1, ptr %retval, align 8, !dbg !408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !408

if.else19:                                        ; preds = %land.lhs.true, %lor.lhs.false13
  %13 = load i32, ptr %v, align 4, !dbg !410, !tbaa !162
  %cmp20 = icmp ugt i32 %13, 65535, !dbg !411
  br i1 %cmp20, label %if.then22, label %if.else65, !dbg !412

if.then22:                                        ; preds = %if.else19
  %14 = load i32, ptr %v, align 4, !dbg !413, !tbaa !162
  %sub = sub i32 %14, 65536, !dbg !413
  store i32 %sub, ptr %v, align 4, !dbg !413, !tbaa !162
  br label %do.body, !dbg !414

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 2, ptr %_y) #4, !dbg !415
  tail call void @llvm.dbg.declare(metadata ptr %_y, metadata !316, metadata !DIExpression()), !dbg !415
  store i16 0, ptr %_y, align 2, !dbg !415, !annotation !77
  %15 = load i32, ptr %v, align 4, !dbg !415, !tbaa !162
  %and23 = and i32 %15, 1023, !dbg !415
  %or24 = or i32 56320, %and23, !dbg !415
  %conv25 = trunc i32 %or24 to i16, !dbg !415
  store i16 %conv25, ptr %_y, align 2, !dbg !415, !tbaa !215
  %16 = load ptr, ptr %op.addr, align 8, !dbg !416, !tbaa !64
  %tobool26 = icmp ne ptr %16, null, !dbg !416
  br i1 %tobool26, label %if.then27, label %if.end, !dbg !415

if.then27:                                        ; preds = %do.body
  br label %do.body28, !dbg !417

do.body28:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p) #4, !dbg !418
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p, metadata !328, metadata !DIExpression()), !dbg !418
  store ptr null, ptr %_wc_p, align 8, !dbg !418, !annotation !77
  %17 = load ptr, ptr %op.addr, align 8, !dbg !418, !tbaa !64
  store ptr %17, ptr %_wc_p, align 8, !dbg !418, !tbaa !64
  %18 = load i16, ptr %_y, align 2, !dbg !418, !tbaa !215
  %conv29 = zext i16 %18 to i32, !dbg !418
  %shr = ashr i32 %conv29, 8, !dbg !418
  %conv30 = trunc i32 %shr to i8, !dbg !418
  %19 = load ptr, ptr %_wc_p, align 8, !dbg !418, !tbaa !64
  %incdec.ptr31 = getelementptr i8, ptr %19, i32 1, !dbg !418
  store ptr %incdec.ptr31, ptr %_wc_p, align 8, !dbg !418, !tbaa !64
  store i8 %conv30, ptr %19, align 1, !dbg !418, !tbaa !73
  %20 = load ptr, ptr %_wc_p, align 8, !dbg !418, !tbaa !64
  store ptr %20, ptr %op.addr, align 8, !dbg !418, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p) #4, !dbg !417
  br label %do.cond, !dbg !418

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !418

do.end:                                           ; preds = %do.cond
  br label %do.body32, !dbg !417

do.body32:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p33) #4, !dbg !419
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p33, metadata !332, metadata !DIExpression()), !dbg !419
  store ptr null, ptr %_wc_p33, align 8, !dbg !419, !annotation !77
  %21 = load ptr, ptr %op.addr, align 8, !dbg !419, !tbaa !64
  store ptr %21, ptr %_wc_p33, align 8, !dbg !419, !tbaa !64
  %22 = load i16, ptr %_y, align 2, !dbg !419, !tbaa !215
  %conv34 = trunc i16 %22 to i8, !dbg !419
  %23 = load ptr, ptr %_wc_p33, align 8, !dbg !419, !tbaa !64
  %incdec.ptr35 = getelementptr i8, ptr %23, i32 1, !dbg !419
  store ptr %incdec.ptr35, ptr %_wc_p33, align 8, !dbg !419, !tbaa !64
  store i8 %conv34, ptr %23, align 1, !dbg !419, !tbaa !73
  %24 = load ptr, ptr %_wc_p33, align 8, !dbg !419, !tbaa !64
  store ptr %24, ptr %op.addr, align 8, !dbg !419, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p33) #4, !dbg !417
  br label %do.cond36, !dbg !419

do.cond36:                                        ; preds = %do.body32
  br label %do.end37, !dbg !419

do.end37:                                         ; preds = %do.cond36
  br label %if.end, !dbg !417

if.end:                                           ; preds = %do.end37, %do.body
  %25 = load i64, ptr %outlen, align 8, !dbg !415, !tbaa !69
  %inc = add i64 %25, 1, !dbg !415
  store i64 %inc, ptr %outlen, align 8, !dbg !415, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 2, ptr %_y) #4, !dbg !414
  br label %do.cond38, !dbg !415

do.cond38:                                        ; preds = %if.end
  br label %do.end39, !dbg !415

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !420

do.body40:                                        ; preds = %do.end39
  call void @llvm.lifetime.start.p0(i64 2, ptr %_y41) #4, !dbg !421
  tail call void @llvm.dbg.declare(metadata ptr %_y41, metadata !334, metadata !DIExpression()), !dbg !421
  store i16 0, ptr %_y41, align 2, !dbg !421, !annotation !77
  %26 = load i32, ptr %v, align 4, !dbg !421, !tbaa !162
  %shr42 = lshr i32 %26, 10, !dbg !421
  %or43 = or i32 55296, %shr42, !dbg !421
  %conv44 = trunc i32 %or43 to i16, !dbg !421
  store i16 %conv44, ptr %_y41, align 2, !dbg !421, !tbaa !215
  %27 = load ptr, ptr %op.addr, align 8, !dbg !422, !tbaa !64
  %tobool45 = icmp ne ptr %27, null, !dbg !422
  br i1 %tobool45, label %if.then46, label %if.end61, !dbg !421

if.then46:                                        ; preds = %do.body40
  br label %do.body47, !dbg !423

do.body47:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p48) #4, !dbg !424
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p48, metadata !336, metadata !DIExpression()), !dbg !424
  store ptr null, ptr %_wc_p48, align 8, !dbg !424, !annotation !77
  %28 = load ptr, ptr %op.addr, align 8, !dbg !424, !tbaa !64
  store ptr %28, ptr %_wc_p48, align 8, !dbg !424, !tbaa !64
  %29 = load i16, ptr %_y41, align 2, !dbg !424, !tbaa !215
  %conv49 = zext i16 %29 to i32, !dbg !424
  %shr50 = ashr i32 %conv49, 8, !dbg !424
  %conv51 = trunc i32 %shr50 to i8, !dbg !424
  %30 = load ptr, ptr %_wc_p48, align 8, !dbg !424, !tbaa !64
  %incdec.ptr52 = getelementptr i8, ptr %30, i32 1, !dbg !424
  store ptr %incdec.ptr52, ptr %_wc_p48, align 8, !dbg !424, !tbaa !64
  store i8 %conv51, ptr %30, align 1, !dbg !424, !tbaa !73
  %31 = load ptr, ptr %_wc_p48, align 8, !dbg !424, !tbaa !64
  store ptr %31, ptr %op.addr, align 8, !dbg !424, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p48) #4, !dbg !423
  br label %do.cond53, !dbg !424

do.cond53:                                        ; preds = %do.body47
  br label %do.end54, !dbg !424

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !423

do.body55:                                        ; preds = %do.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p56) #4, !dbg !425
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p56, metadata !340, metadata !DIExpression()), !dbg !425
  store ptr null, ptr %_wc_p56, align 8, !dbg !425, !annotation !77
  %32 = load ptr, ptr %op.addr, align 8, !dbg !425, !tbaa !64
  store ptr %32, ptr %_wc_p56, align 8, !dbg !425, !tbaa !64
  %33 = load i16, ptr %_y41, align 2, !dbg !425, !tbaa !215
  %conv57 = trunc i16 %33 to i8, !dbg !425
  %34 = load ptr, ptr %_wc_p56, align 8, !dbg !425, !tbaa !64
  %incdec.ptr58 = getelementptr i8, ptr %34, i32 1, !dbg !425
  store ptr %incdec.ptr58, ptr %_wc_p56, align 8, !dbg !425, !tbaa !64
  store i8 %conv57, ptr %34, align 1, !dbg !425, !tbaa !73
  %35 = load ptr, ptr %_wc_p56, align 8, !dbg !425, !tbaa !64
  store ptr %35, ptr %op.addr, align 8, !dbg !425, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p56) #4, !dbg !423
  br label %do.cond59, !dbg !425

do.cond59:                                        ; preds = %do.body55
  br label %do.end60, !dbg !425

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !423

if.end61:                                         ; preds = %do.end60, %do.body40
  %36 = load i64, ptr %outlen, align 8, !dbg !421, !tbaa !69
  %inc62 = add i64 %36, 1, !dbg !421
  store i64 %inc62, ptr %outlen, align 8, !dbg !421, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 2, ptr %_y41) #4, !dbg !420
  br label %do.cond63, !dbg !421

do.cond63:                                        ; preds = %if.end61
  br label %do.end64, !dbg !421

do.end64:                                         ; preds = %do.cond63
  br label %if.end89, !dbg !426

if.else65:                                        ; preds = %if.else19
  br label %do.body66, !dbg !427

do.body66:                                        ; preds = %if.else65
  call void @llvm.lifetime.start.p0(i64 2, ptr %_y67) #4, !dbg !428
  tail call void @llvm.dbg.declare(metadata ptr %_y67, metadata !342, metadata !DIExpression()), !dbg !428
  store i16 0, ptr %_y67, align 2, !dbg !428, !annotation !77
  %37 = load i32, ptr %v, align 4, !dbg !428, !tbaa !162
  %conv68 = trunc i32 %37 to i16, !dbg !428
  store i16 %conv68, ptr %_y67, align 2, !dbg !428, !tbaa !215
  %38 = load ptr, ptr %op.addr, align 8, !dbg !429, !tbaa !64
  %tobool69 = icmp ne ptr %38, null, !dbg !429
  br i1 %tobool69, label %if.then70, label %if.end85, !dbg !428

if.then70:                                        ; preds = %do.body66
  br label %do.body71, !dbg !430

do.body71:                                        ; preds = %if.then70
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p72) #4, !dbg !431
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p72, metadata !345, metadata !DIExpression()), !dbg !431
  store ptr null, ptr %_wc_p72, align 8, !dbg !431, !annotation !77
  %39 = load ptr, ptr %op.addr, align 8, !dbg !431, !tbaa !64
  store ptr %39, ptr %_wc_p72, align 8, !dbg !431, !tbaa !64
  %40 = load i16, ptr %_y67, align 2, !dbg !431, !tbaa !215
  %conv73 = zext i16 %40 to i32, !dbg !431
  %shr74 = ashr i32 %conv73, 8, !dbg !431
  %conv75 = trunc i32 %shr74 to i8, !dbg !431
  %41 = load ptr, ptr %_wc_p72, align 8, !dbg !431, !tbaa !64
  %incdec.ptr76 = getelementptr i8, ptr %41, i32 1, !dbg !431
  store ptr %incdec.ptr76, ptr %_wc_p72, align 8, !dbg !431, !tbaa !64
  store i8 %conv75, ptr %41, align 1, !dbg !431, !tbaa !73
  %42 = load ptr, ptr %_wc_p72, align 8, !dbg !431, !tbaa !64
  store ptr %42, ptr %op.addr, align 8, !dbg !431, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p72) #4, !dbg !430
  br label %do.cond77, !dbg !431

do.cond77:                                        ; preds = %do.body71
  br label %do.end78, !dbg !431

do.end78:                                         ; preds = %do.cond77
  br label %do.body79, !dbg !430

do.body79:                                        ; preds = %do.end78
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p80) #4, !dbg !432
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p80, metadata !349, metadata !DIExpression()), !dbg !432
  store ptr null, ptr %_wc_p80, align 8, !dbg !432, !annotation !77
  %43 = load ptr, ptr %op.addr, align 8, !dbg !432, !tbaa !64
  store ptr %43, ptr %_wc_p80, align 8, !dbg !432, !tbaa !64
  %44 = load i16, ptr %_y67, align 2, !dbg !432, !tbaa !215
  %conv81 = trunc i16 %44 to i8, !dbg !432
  %45 = load ptr, ptr %_wc_p80, align 8, !dbg !432, !tbaa !64
  %incdec.ptr82 = getelementptr i8, ptr %45, i32 1, !dbg !432
  store ptr %incdec.ptr82, ptr %_wc_p80, align 8, !dbg !432, !tbaa !64
  store i8 %conv81, ptr %45, align 1, !dbg !432, !tbaa !73
  %46 = load ptr, ptr %_wc_p80, align 8, !dbg !432, !tbaa !64
  store ptr %46, ptr %op.addr, align 8, !dbg !432, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p80) #4, !dbg !430
  br label %do.cond83, !dbg !432

do.cond83:                                        ; preds = %do.body79
  br label %do.end84, !dbg !432

do.end84:                                         ; preds = %do.cond83
  br label %if.end85, !dbg !430

if.end85:                                         ; preds = %do.end84, %do.body66
  %47 = load i64, ptr %outlen, align 8, !dbg !428, !tbaa !69
  %inc86 = add i64 %47, 1, !dbg !428
  store i64 %inc86, ptr %outlen, align 8, !dbg !428, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 2, ptr %_y67) #4, !dbg !427
  br label %do.cond87, !dbg !428

do.cond87:                                        ; preds = %if.end85
  br label %do.end88, !dbg !428

do.end88:                                         ; preds = %do.cond87
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %do.end64
  br label %if.end90

if.end90:                                         ; preds = %if.end89
  br label %if.end91, !dbg !433

if.end91:                                         ; preds = %if.end90, %if.else
  br label %while.cond, !dbg !434, !llvm.loop !435

if.end92:                                         ; preds = %while.body
  %48 = load i8, ptr %c, align 1, !dbg !437, !tbaa !73
  %conv93 = zext i8 %48 to i32, !dbg !437
  %cmp94 = icmp slt i32 %conv93, 128, !dbg !438
  br i1 %cmp94, label %if.then96, label %if.else120, !dbg !439

if.then96:                                        ; preds = %if.end92
  br label %do.body97, !dbg !440

do.body97:                                        ; preds = %if.then96
  call void @llvm.lifetime.start.p0(i64 2, ptr %_y98) #4, !dbg !441
  tail call void @llvm.dbg.declare(metadata ptr %_y98, metadata !351, metadata !DIExpression()), !dbg !441
  store i16 0, ptr %_y98, align 2, !dbg !441, !annotation !77
  %49 = load i8, ptr %c, align 1, !dbg !441, !tbaa !73
  %conv99 = zext i8 %49 to i16, !dbg !441
  store i16 %conv99, ptr %_y98, align 2, !dbg !441, !tbaa !215
  %50 = load ptr, ptr %op.addr, align 8, !dbg !442, !tbaa !64
  %tobool100 = icmp ne ptr %50, null, !dbg !442
  br i1 %tobool100, label %if.then101, label %if.end116, !dbg !441

if.then101:                                       ; preds = %do.body97
  br label %do.body102, !dbg !443

do.body102:                                       ; preds = %if.then101
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p103) #4, !dbg !444
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p103, metadata !355, metadata !DIExpression()), !dbg !444
  store ptr null, ptr %_wc_p103, align 8, !dbg !444, !annotation !77
  %51 = load ptr, ptr %op.addr, align 8, !dbg !444, !tbaa !64
  store ptr %51, ptr %_wc_p103, align 8, !dbg !444, !tbaa !64
  %52 = load i16, ptr %_y98, align 2, !dbg !444, !tbaa !215
  %conv104 = zext i16 %52 to i32, !dbg !444
  %shr105 = ashr i32 %conv104, 8, !dbg !444
  %conv106 = trunc i32 %shr105 to i8, !dbg !444
  %53 = load ptr, ptr %_wc_p103, align 8, !dbg !444, !tbaa !64
  %incdec.ptr107 = getelementptr i8, ptr %53, i32 1, !dbg !444
  store ptr %incdec.ptr107, ptr %_wc_p103, align 8, !dbg !444, !tbaa !64
  store i8 %conv106, ptr %53, align 1, !dbg !444, !tbaa !73
  %54 = load ptr, ptr %_wc_p103, align 8, !dbg !444, !tbaa !64
  store ptr %54, ptr %op.addr, align 8, !dbg !444, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p103) #4, !dbg !443
  br label %do.cond108, !dbg !444

do.cond108:                                       ; preds = %do.body102
  br label %do.end109, !dbg !444

do.end109:                                        ; preds = %do.cond108
  br label %do.body110, !dbg !443

do.body110:                                       ; preds = %do.end109
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p111) #4, !dbg !445
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p111, metadata !359, metadata !DIExpression()), !dbg !445
  store ptr null, ptr %_wc_p111, align 8, !dbg !445, !annotation !77
  %55 = load ptr, ptr %op.addr, align 8, !dbg !445, !tbaa !64
  store ptr %55, ptr %_wc_p111, align 8, !dbg !445, !tbaa !64
  %56 = load i16, ptr %_y98, align 2, !dbg !445, !tbaa !215
  %conv112 = trunc i16 %56 to i8, !dbg !445
  %57 = load ptr, ptr %_wc_p111, align 8, !dbg !445, !tbaa !64
  %incdec.ptr113 = getelementptr i8, ptr %57, i32 1, !dbg !445
  store ptr %incdec.ptr113, ptr %_wc_p111, align 8, !dbg !445, !tbaa !64
  store i8 %conv112, ptr %57, align 1, !dbg !445, !tbaa !73
  %58 = load ptr, ptr %_wc_p111, align 8, !dbg !445, !tbaa !64
  store ptr %58, ptr %op.addr, align 8, !dbg !445, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p111) #4, !dbg !443
  br label %do.cond114, !dbg !445

do.cond114:                                       ; preds = %do.body110
  br label %do.end115, !dbg !445

do.end115:                                        ; preds = %do.cond114
  br label %if.end116, !dbg !443

if.end116:                                        ; preds = %do.end115, %do.body97
  %59 = load i64, ptr %outlen, align 8, !dbg !441, !tbaa !69
  %inc117 = add i64 %59, 1, !dbg !441
  store i64 %inc117, ptr %outlen, align 8, !dbg !441, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 2, ptr %_y98) #4, !dbg !440
  br label %do.cond118, !dbg !441

do.cond118:                                       ; preds = %if.end116
  br label %do.end119, !dbg !441

do.end119:                                        ; preds = %do.cond118
  br label %if.end165, !dbg !446

if.else120:                                       ; preds = %if.end92
  %60 = load i8, ptr %c, align 1, !dbg !447, !tbaa !73
  %conv121 = zext i8 %60 to i32, !dbg !447
  %cmp122 = icmp slt i32 %conv121, 192, !dbg !449
  br i1 %cmp122, label %if.then128, label %lor.lhs.false124, !dbg !450

lor.lhs.false124:                                 ; preds = %if.else120
  %61 = load i8, ptr %c, align 1, !dbg !451, !tbaa !73
  %conv125 = zext i8 %61 to i32, !dbg !451
  %cmp126 = icmp sge i32 %conv125, 254, !dbg !452
  br i1 %cmp126, label %if.then128, label %if.else129, !dbg !453

if.then128:                                       ; preds = %lor.lhs.false124, %if.else120
  store i64 -1, ptr %retval, align 8, !dbg !454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !454

if.else129:                                       ; preds = %lor.lhs.false124
  %62 = load i8, ptr %c, align 1, !dbg !456, !tbaa !73
  %conv130 = zext i8 %62 to i32, !dbg !456
  %cmp131 = icmp slt i32 %conv130, 224, !dbg !458
  br i1 %cmp131, label %if.then133, label %if.else136, !dbg !459

if.then133:                                       ; preds = %if.else129
  %63 = load i8, ptr %c, align 1, !dbg !460, !tbaa !73
  %conv134 = zext i8 %63 to i32, !dbg !460
  %and135 = and i32 %conv134, 31, !dbg !462
  store i32 %and135, ptr %v, align 4, !dbg !463, !tbaa !162
  store i32 1, ptr %expect, align 4, !dbg !464, !tbaa !162
  store i32 128, ptr %vmin, align 4, !dbg !465, !tbaa !162
  br label %if.end163, !dbg !466

if.else136:                                       ; preds = %if.else129
  %64 = load i8, ptr %c, align 1, !dbg !467, !tbaa !73
  %conv137 = zext i8 %64 to i32, !dbg !467
  %cmp138 = icmp slt i32 %conv137, 240, !dbg !469
  br i1 %cmp138, label %if.then140, label %if.else143, !dbg !470

if.then140:                                       ; preds = %if.else136
  %65 = load i8, ptr %c, align 1, !dbg !471, !tbaa !73
  %conv141 = zext i8 %65 to i32, !dbg !471
  %and142 = and i32 %conv141, 15, !dbg !473
  store i32 %and142, ptr %v, align 4, !dbg !474, !tbaa !162
  store i32 2, ptr %expect, align 4, !dbg !475, !tbaa !162
  store i32 2048, ptr %vmin, align 4, !dbg !476, !tbaa !162
  br label %if.end162, !dbg !477

if.else143:                                       ; preds = %if.else136
  %66 = load i8, ptr %c, align 1, !dbg !478, !tbaa !73
  %conv144 = zext i8 %66 to i32, !dbg !478
  %cmp145 = icmp slt i32 %conv144, 248, !dbg !480
  br i1 %cmp145, label %if.then147, label %if.else150, !dbg !481

if.then147:                                       ; preds = %if.else143
  %67 = load i8, ptr %c, align 1, !dbg !482, !tbaa !73
  %conv148 = zext i8 %67 to i32, !dbg !482
  %and149 = and i32 %conv148, 7, !dbg !484
  store i32 %and149, ptr %v, align 4, !dbg !485, !tbaa !162
  store i32 3, ptr %expect, align 4, !dbg !486, !tbaa !162
  store i32 65536, ptr %vmin, align 4, !dbg !487, !tbaa !162
  br label %if.end161, !dbg !488

if.else150:                                       ; preds = %if.else143
  %68 = load i8, ptr %c, align 1, !dbg !489, !tbaa !73
  %conv151 = zext i8 %68 to i32, !dbg !489
  %cmp152 = icmp slt i32 %conv151, 252, !dbg !491
  br i1 %cmp152, label %if.then154, label %if.else157, !dbg !492

if.then154:                                       ; preds = %if.else150
  %69 = load i8, ptr %c, align 1, !dbg !493, !tbaa !73
  %conv155 = zext i8 %69 to i32, !dbg !493
  %and156 = and i32 %conv155, 3, !dbg !495
  store i32 %and156, ptr %v, align 4, !dbg !496, !tbaa !162
  store i32 4, ptr %expect, align 4, !dbg !497, !tbaa !162
  store i32 2097152, ptr %vmin, align 4, !dbg !498, !tbaa !162
  br label %if.end160, !dbg !499

if.else157:                                       ; preds = %if.else150
  %70 = load i8, ptr %c, align 1, !dbg !500, !tbaa !73
  %conv158 = zext i8 %70 to i32, !dbg !500
  %and159 = and i32 %conv158, 1, !dbg !502
  store i32 %and159, ptr %v, align 4, !dbg !503, !tbaa !162
  store i32 5, ptr %expect, align 4, !dbg !504, !tbaa !162
  store i32 67108864, ptr %vmin, align 4, !dbg !505, !tbaa !162
  br label %if.end160

if.end160:                                        ; preds = %if.else157, %if.then154
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.then147
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then140
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then133
  br label %if.end164

if.end164:                                        ; preds = %if.end163
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %do.end119
  br label %while.cond, !dbg !373, !llvm.loop !435

while.end:                                        ; preds = %while.cond
  %71 = load i32, ptr %expect, align 4, !dbg !506, !tbaa !162
  %tobool166 = icmp ne i32 %71, 0, !dbg !506
  br i1 %tobool166, label %cond.true, label %cond.false, !dbg !506

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !506

cond.false:                                       ; preds = %while.end
  %72 = load i64, ptr %outlen, align 8, !dbg !507, !tbaa !69
  %shl167 = shl i64 %72, 1, !dbg !508
  br label %cond.end, !dbg !506

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %shl167, %cond.false ], !dbg !506
  store i64 %cond, ptr %retval, align 8, !dbg !509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !509

cleanup:                                          ; preds = %cond.end, %if.then128, %if.then18, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmin) #4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 4, ptr %expect) #4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 8, ptr %outlen) #4, !dbg !510
  %73 = load i64, ptr %retval, align 8, !dbg !510
  ret i64 %73, !dbg !510
}

; Function Attrs: nounwind uwtable
define internal i64 @utf8_to_32le(ptr noundef %str, i64 noundef %len, ptr noundef %op) #0 !dbg !511 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %outlen = alloca i64, align 8
  %expect = alloca i32, align 4
  %c = alloca i8, align 1
  %v = alloca i32, align 4
  %vmin = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_wl_p = alloca ptr, align 8
  %_wl_p34 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !513, metadata !DIExpression()), !dbg !542
  store i64 %len, ptr %len.addr, align 8, !tbaa !69
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !514, metadata !DIExpression()), !dbg !543
  store ptr %op, ptr %op.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !515, metadata !DIExpression()), !dbg !544
  call void @llvm.lifetime.start.p0(i64 8, ptr %outlen) #4, !dbg !545
  tail call void @llvm.dbg.declare(metadata ptr %outlen, metadata !516, metadata !DIExpression()), !dbg !546
  store i64 0, ptr %outlen, align 8, !dbg !546, !annotation !77
  store i64 0, ptr %outlen, align 8, !dbg !546, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %expect) #4, !dbg !547
  tail call void @llvm.dbg.declare(metadata ptr %expect, metadata !517, metadata !DIExpression()), !dbg !548
  store i32 0, ptr %expect, align 4, !dbg !548, !annotation !77
  store i32 0, ptr %expect, align 4, !dbg !548, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !549
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !518, metadata !DIExpression()), !dbg !550
  store i8 0, ptr %c, align 1, !dbg !550, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #4, !dbg !551
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !519, metadata !DIExpression()), !dbg !552
  store i32 0, ptr %v, align 4, !dbg !552, !annotation !77
  store i32 0, ptr %v, align 4, !dbg !552, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmin) #4, !dbg !551
  tail call void @llvm.dbg.declare(metadata ptr %vmin, metadata !520, metadata !DIExpression()), !dbg !553
  store i32 0, ptr %vmin, align 4, !dbg !553, !annotation !77
  store i32 0, ptr %vmin, align 4, !dbg !553, !tbaa !162
  br label %while.cond, !dbg !554

while.cond:                                       ; preds = %if.end88, %if.end24, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !555, !tbaa !69
  %dec = add i64 %0, -1, !dbg !555
  store i64 %dec, ptr %len.addr, align 8, !dbg !555, !tbaa !69
  %tobool = icmp ne i64 %0, 0, !dbg !554
  br i1 %tobool, label %while.body, label %while.end, !dbg !554

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str.addr, align 8, !dbg !556, !tbaa !64
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !556
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !556, !tbaa !64
  %2 = load i8, ptr %1, align 1, !dbg !557, !tbaa !73
  store i8 %2, ptr %c, align 1, !dbg !558, !tbaa !73
  %3 = load i32, ptr %expect, align 4, !dbg !559, !tbaa !162
  %tobool1 = icmp ne i32 %3, 0, !dbg !559
  br i1 %tobool1, label %if.then, label %if.end25, !dbg !560

if.then:                                          ; preds = %while.body
  %4 = load i8, ptr %c, align 1, !dbg !561, !tbaa !73
  %conv = zext i8 %4 to i32, !dbg !561
  %and = and i32 %conv, 192, !dbg !562
  %cmp = icmp ne i32 %and, 128, !dbg !563
  br i1 %cmp, label %if.then3, label %if.else, !dbg !564

if.then3:                                         ; preds = %if.then
  store i64 -1, ptr %retval, align 8, !dbg !565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !565

if.else:                                          ; preds = %if.then
  %5 = load i32, ptr %v, align 4, !dbg !567, !tbaa !162
  %shl = shl i32 %5, 6, !dbg !568
  %6 = load i8, ptr %c, align 1, !dbg !569, !tbaa !73
  %conv4 = zext i8 %6 to i32, !dbg !569
  %and5 = and i32 %conv4, 63, !dbg !570
  %or = or i32 %shl, %and5, !dbg !571
  store i32 %or, ptr %v, align 4, !dbg !572, !tbaa !162
  %7 = load i32, ptr %expect, align 4, !dbg !573, !tbaa !162
  %dec6 = add i32 %7, -1, !dbg !573
  store i32 %dec6, ptr %expect, align 4, !dbg !573, !tbaa !162
  %tobool7 = icmp ne i32 %dec6, 0, !dbg !573
  br i1 %tobool7, label %if.end24, label %if.then8, !dbg !574

if.then8:                                         ; preds = %if.else
  %8 = load i32, ptr %v, align 4, !dbg !575, !tbaa !162
  %9 = load i32, ptr %vmin, align 4, !dbg !576, !tbaa !162
  %cmp9 = icmp ult i32 %8, %9, !dbg !577
  br i1 %cmp9, label %if.then15, label %lor.lhs.false, !dbg !578

lor.lhs.false:                                    ; preds = %if.then8
  %10 = load i32, ptr %v, align 4, !dbg !579, !tbaa !162
  %cmp11 = icmp uge i32 %10, 55296, !dbg !580
  br i1 %cmp11, label %land.lhs.true, label %if.else16, !dbg !581

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32, ptr %v, align 4, !dbg !582, !tbaa !162
  %cmp13 = icmp ule i32 %11, 57343, !dbg !583
  br i1 %cmp13, label %if.then15, label %if.else16, !dbg !584

if.then15:                                        ; preds = %land.lhs.true, %if.then8
  store i64 -1, ptr %retval, align 8, !dbg !585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !585

if.else16:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %do.body, !dbg !587

do.body:                                          ; preds = %if.else16
  %12 = load ptr, ptr %op.addr, align 8, !dbg !588, !tbaa !64
  %tobool17 = icmp ne ptr %12, null, !dbg !588
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !589

if.then18:                                        ; preds = %do.body
  br label %do.body19, !dbg !590

do.body19:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wl_p) #4, !dbg !591
  tail call void @llvm.dbg.declare(metadata ptr %_wl_p, metadata !521, metadata !DIExpression()), !dbg !591
  store ptr null, ptr %_wl_p, align 8, !dbg !591, !annotation !77
  %13 = load ptr, ptr %op.addr, align 8, !dbg !591, !tbaa !64
  store ptr %13, ptr %_wl_p, align 8, !dbg !591, !tbaa !64
  %14 = load i32, ptr %v, align 4, !dbg !591, !tbaa !162
  %15 = load ptr, ptr %_wl_p, align 8, !dbg !591, !tbaa !64
  %incdec.ptr20 = getelementptr i32, ptr %15, i32 1, !dbg !591
  store ptr %incdec.ptr20, ptr %_wl_p, align 8, !dbg !591, !tbaa !64
  store i32 %14, ptr %15, align 4, !dbg !591, !tbaa !162
  %16 = load ptr, ptr %_wl_p, align 8, !dbg !591, !tbaa !64
  store ptr %16, ptr %op.addr, align 8, !dbg !591, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wl_p) #4, !dbg !590
  br label %do.cond, !dbg !591

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !591

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !590

if.end:                                           ; preds = %do.end, %do.body
  %17 = load i64, ptr %outlen, align 8, !dbg !589, !tbaa !69
  %inc = add i64 %17, 1, !dbg !589
  store i64 %inc, ptr %outlen, align 8, !dbg !589, !tbaa !69
  br label %do.cond21, !dbg !589

do.cond21:                                        ; preds = %if.end
  br label %do.end22, !dbg !589

do.end22:                                         ; preds = %do.cond21
  br label %if.end23

if.end23:                                         ; preds = %do.end22
  br label %if.end24, !dbg !592

if.end24:                                         ; preds = %if.end23, %if.else
  br label %while.cond, !dbg !593, !llvm.loop !594

if.end25:                                         ; preds = %while.body
  %18 = load i8, ptr %c, align 1, !dbg !596, !tbaa !73
  %conv26 = zext i8 %18 to i32, !dbg !596
  %cmp27 = icmp slt i32 %conv26, 128, !dbg !597
  br i1 %cmp27, label %if.then29, label %if.else43, !dbg !598

if.then29:                                        ; preds = %if.end25
  br label %do.body30, !dbg !599

do.body30:                                        ; preds = %if.then29
  %19 = load ptr, ptr %op.addr, align 8, !dbg !600, !tbaa !64
  %tobool31 = icmp ne ptr %19, null, !dbg !600
  br i1 %tobool31, label %if.then32, label %if.end39, !dbg !601

if.then32:                                        ; preds = %do.body30
  br label %do.body33, !dbg !602

do.body33:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wl_p34) #4, !dbg !603
  tail call void @llvm.dbg.declare(metadata ptr %_wl_p34, metadata !535, metadata !DIExpression()), !dbg !603
  store ptr null, ptr %_wl_p34, align 8, !dbg !603, !annotation !77
  %20 = load ptr, ptr %op.addr, align 8, !dbg !603, !tbaa !64
  store ptr %20, ptr %_wl_p34, align 8, !dbg !603, !tbaa !64
  %21 = load i8, ptr %c, align 1, !dbg !603, !tbaa !73
  %conv35 = zext i8 %21 to i32, !dbg !603
  %22 = load ptr, ptr %_wl_p34, align 8, !dbg !603, !tbaa !64
  %incdec.ptr36 = getelementptr i32, ptr %22, i32 1, !dbg !603
  store ptr %incdec.ptr36, ptr %_wl_p34, align 8, !dbg !603, !tbaa !64
  store i32 %conv35, ptr %22, align 4, !dbg !603, !tbaa !162
  %23 = load ptr, ptr %_wl_p34, align 8, !dbg !603, !tbaa !64
  store ptr %23, ptr %op.addr, align 8, !dbg !603, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wl_p34) #4, !dbg !602
  br label %do.cond37, !dbg !603

do.cond37:                                        ; preds = %do.body33
  br label %do.end38, !dbg !603

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !602

if.end39:                                         ; preds = %do.end38, %do.body30
  %24 = load i64, ptr %outlen, align 8, !dbg !601, !tbaa !69
  %inc40 = add i64 %24, 1, !dbg !601
  store i64 %inc40, ptr %outlen, align 8, !dbg !601, !tbaa !69
  br label %do.cond41, !dbg !601

do.cond41:                                        ; preds = %if.end39
  br label %do.end42, !dbg !601

do.end42:                                         ; preds = %do.cond41
  br label %if.end88, !dbg !604

if.else43:                                        ; preds = %if.end25
  %25 = load i8, ptr %c, align 1, !dbg !605, !tbaa !73
  %conv44 = zext i8 %25 to i32, !dbg !605
  %cmp45 = icmp slt i32 %conv44, 192, !dbg !607
  br i1 %cmp45, label %if.then51, label %lor.lhs.false47, !dbg !608

lor.lhs.false47:                                  ; preds = %if.else43
  %26 = load i8, ptr %c, align 1, !dbg !609, !tbaa !73
  %conv48 = zext i8 %26 to i32, !dbg !609
  %cmp49 = icmp sge i32 %conv48, 254, !dbg !610
  br i1 %cmp49, label %if.then51, label %if.else52, !dbg !611

if.then51:                                        ; preds = %lor.lhs.false47, %if.else43
  store i64 -1, ptr %retval, align 8, !dbg !612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !612

if.else52:                                        ; preds = %lor.lhs.false47
  %27 = load i8, ptr %c, align 1, !dbg !614, !tbaa !73
  %conv53 = zext i8 %27 to i32, !dbg !614
  %cmp54 = icmp slt i32 %conv53, 224, !dbg !616
  br i1 %cmp54, label %if.then56, label %if.else59, !dbg !617

if.then56:                                        ; preds = %if.else52
  %28 = load i8, ptr %c, align 1, !dbg !618, !tbaa !73
  %conv57 = zext i8 %28 to i32, !dbg !618
  %and58 = and i32 %conv57, 31, !dbg !620
  store i32 %and58, ptr %v, align 4, !dbg !621, !tbaa !162
  store i32 1, ptr %expect, align 4, !dbg !622, !tbaa !162
  store i32 128, ptr %vmin, align 4, !dbg !623, !tbaa !162
  br label %if.end86, !dbg !624

if.else59:                                        ; preds = %if.else52
  %29 = load i8, ptr %c, align 1, !dbg !625, !tbaa !73
  %conv60 = zext i8 %29 to i32, !dbg !625
  %cmp61 = icmp slt i32 %conv60, 240, !dbg !627
  br i1 %cmp61, label %if.then63, label %if.else66, !dbg !628

if.then63:                                        ; preds = %if.else59
  %30 = load i8, ptr %c, align 1, !dbg !629, !tbaa !73
  %conv64 = zext i8 %30 to i32, !dbg !629
  %and65 = and i32 %conv64, 15, !dbg !631
  store i32 %and65, ptr %v, align 4, !dbg !632, !tbaa !162
  store i32 2, ptr %expect, align 4, !dbg !633, !tbaa !162
  store i32 2048, ptr %vmin, align 4, !dbg !634, !tbaa !162
  br label %if.end85, !dbg !635

if.else66:                                        ; preds = %if.else59
  %31 = load i8, ptr %c, align 1, !dbg !636, !tbaa !73
  %conv67 = zext i8 %31 to i32, !dbg !636
  %cmp68 = icmp slt i32 %conv67, 248, !dbg !638
  br i1 %cmp68, label %if.then70, label %if.else73, !dbg !639

if.then70:                                        ; preds = %if.else66
  %32 = load i8, ptr %c, align 1, !dbg !640, !tbaa !73
  %conv71 = zext i8 %32 to i32, !dbg !640
  %and72 = and i32 %conv71, 7, !dbg !642
  store i32 %and72, ptr %v, align 4, !dbg !643, !tbaa !162
  store i32 3, ptr %expect, align 4, !dbg !644, !tbaa !162
  store i32 65536, ptr %vmin, align 4, !dbg !645, !tbaa !162
  br label %if.end84, !dbg !646

if.else73:                                        ; preds = %if.else66
  %33 = load i8, ptr %c, align 1, !dbg !647, !tbaa !73
  %conv74 = zext i8 %33 to i32, !dbg !647
  %cmp75 = icmp slt i32 %conv74, 252, !dbg !649
  br i1 %cmp75, label %if.then77, label %if.else80, !dbg !650

if.then77:                                        ; preds = %if.else73
  %34 = load i8, ptr %c, align 1, !dbg !651, !tbaa !73
  %conv78 = zext i8 %34 to i32, !dbg !651
  %and79 = and i32 %conv78, 3, !dbg !653
  store i32 %and79, ptr %v, align 4, !dbg !654, !tbaa !162
  store i32 4, ptr %expect, align 4, !dbg !655, !tbaa !162
  store i32 2097152, ptr %vmin, align 4, !dbg !656, !tbaa !162
  br label %if.end83, !dbg !657

if.else80:                                        ; preds = %if.else73
  %35 = load i8, ptr %c, align 1, !dbg !658, !tbaa !73
  %conv81 = zext i8 %35 to i32, !dbg !658
  %and82 = and i32 %conv81, 1, !dbg !660
  store i32 %and82, ptr %v, align 4, !dbg !661, !tbaa !162
  store i32 5, ptr %expect, align 4, !dbg !662, !tbaa !162
  store i32 67108864, ptr %vmin, align 4, !dbg !663, !tbaa !162
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.then77
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then70
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then63
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then56
  br label %if.end87

if.end87:                                         ; preds = %if.end86
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %do.end42
  br label %while.cond, !dbg !554, !llvm.loop !594

while.end:                                        ; preds = %while.cond
  %36 = load i32, ptr %expect, align 4, !dbg !664, !tbaa !162
  %tobool89 = icmp ne i32 %36, 0, !dbg !664
  br i1 %tobool89, label %cond.true, label %cond.false, !dbg !664

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !664

cond.false:                                       ; preds = %while.end
  %37 = load i64, ptr %outlen, align 8, !dbg !665, !tbaa !69
  %shl90 = shl i64 %37, 2, !dbg !666
  br label %cond.end, !dbg !664

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %shl90, %cond.false ], !dbg !664
  store i64 %cond, ptr %retval, align 8, !dbg !667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !667

cleanup:                                          ; preds = %cond.end, %if.then51, %if.then15, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmin) #4, !dbg !668
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #4, !dbg !668
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !668
  call void @llvm.lifetime.end.p0(i64 4, ptr %expect) #4, !dbg !668
  call void @llvm.lifetime.end.p0(i64 8, ptr %outlen) #4, !dbg !668
  %38 = load i64, ptr %retval, align 8, !dbg !668
  ret i64 %38, !dbg !668
}

; Function Attrs: nounwind uwtable
define internal i64 @utf8_to_32be(ptr noundef %str, i64 noundef %len, ptr noundef %op) #0 !dbg !669 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %outlen = alloca i64, align 8
  %expect = alloca i32, align 4
  %c = alloca i8, align 1
  %v = alloca i32, align 4
  %vmin = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_y = alloca i32, align 4
  %_wc_p = alloca ptr, align 8
  %_wc_p23 = alloca ptr, align 8
  %_wc_p30 = alloca ptr, align 8
  %_wc_p37 = alloca ptr, align 8
  %_y52 = alloca i32, align 4
  %_wc_p57 = alloca ptr, align 8
  %_wc_p64 = alloca ptr, align 8
  %_wc_p71 = alloca ptr, align 8
  %_wc_p78 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !671, metadata !DIExpression()), !dbg !714
  store i64 %len, ptr %len.addr, align 8, !tbaa !69
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !672, metadata !DIExpression()), !dbg !715
  store ptr %op, ptr %op.addr, align 8, !tbaa !64
  tail call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !673, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %outlen) #4, !dbg !717
  tail call void @llvm.dbg.declare(metadata ptr %outlen, metadata !674, metadata !DIExpression()), !dbg !718
  store i64 0, ptr %outlen, align 8, !dbg !718, !annotation !77
  store i64 0, ptr %outlen, align 8, !dbg !718, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %expect) #4, !dbg !719
  tail call void @llvm.dbg.declare(metadata ptr %expect, metadata !675, metadata !DIExpression()), !dbg !720
  store i32 0, ptr %expect, align 4, !dbg !720, !annotation !77
  store i32 0, ptr %expect, align 4, !dbg !720, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !721
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !676, metadata !DIExpression()), !dbg !722
  store i8 0, ptr %c, align 1, !dbg !722, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #4, !dbg !723
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !677, metadata !DIExpression()), !dbg !724
  store i32 0, ptr %v, align 4, !dbg !724, !annotation !77
  store i32 0, ptr %v, align 4, !dbg !724, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmin) #4, !dbg !723
  tail call void @llvm.dbg.declare(metadata ptr %vmin, metadata !678, metadata !DIExpression()), !dbg !725
  store i32 0, ptr %vmin, align 4, !dbg !725, !annotation !77
  store i32 0, ptr %vmin, align 4, !dbg !725, !tbaa !162
  br label %while.cond, !dbg !726

while.cond:                                       ; preds = %if.end132, %if.end45, %entry
  %0 = load i64, ptr %len.addr, align 8, !dbg !727, !tbaa !69
  %dec = add i64 %0, -1, !dbg !727
  store i64 %dec, ptr %len.addr, align 8, !dbg !727, !tbaa !69
  %tobool = icmp ne i64 %0, 0, !dbg !726
  br i1 %tobool, label %while.body, label %while.end, !dbg !726

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str.addr, align 8, !dbg !728, !tbaa !64
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !728
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !728, !tbaa !64
  %2 = load i8, ptr %1, align 1, !dbg !729, !tbaa !73
  store i8 %2, ptr %c, align 1, !dbg !730, !tbaa !73
  %3 = load i32, ptr %expect, align 4, !dbg !731, !tbaa !162
  %tobool1 = icmp ne i32 %3, 0, !dbg !731
  br i1 %tobool1, label %if.then, label %if.end46, !dbg !732

if.then:                                          ; preds = %while.body
  %4 = load i8, ptr %c, align 1, !dbg !733, !tbaa !73
  %conv = zext i8 %4 to i32, !dbg !733
  %and = and i32 %conv, 192, !dbg !734
  %cmp = icmp ne i32 %and, 128, !dbg !735
  br i1 %cmp, label %if.then3, label %if.else, !dbg !736

if.then3:                                         ; preds = %if.then
  store i64 -1, ptr %retval, align 8, !dbg !737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !737

if.else:                                          ; preds = %if.then
  %5 = load i32, ptr %v, align 4, !dbg !739, !tbaa !162
  %shl = shl i32 %5, 6, !dbg !740
  %6 = load i8, ptr %c, align 1, !dbg !741, !tbaa !73
  %conv4 = zext i8 %6 to i32, !dbg !741
  %and5 = and i32 %conv4, 63, !dbg !742
  %or = or i32 %shl, %and5, !dbg !743
  store i32 %or, ptr %v, align 4, !dbg !744, !tbaa !162
  %7 = load i32, ptr %expect, align 4, !dbg !745, !tbaa !162
  %dec6 = add i32 %7, -1, !dbg !745
  store i32 %dec6, ptr %expect, align 4, !dbg !745, !tbaa !162
  %tobool7 = icmp ne i32 %dec6, 0, !dbg !745
  br i1 %tobool7, label %if.end45, label %if.then8, !dbg !746

if.then8:                                         ; preds = %if.else
  %8 = load i32, ptr %v, align 4, !dbg !747, !tbaa !162
  %9 = load i32, ptr %vmin, align 4, !dbg !748, !tbaa !162
  %cmp9 = icmp ult i32 %8, %9, !dbg !749
  br i1 %cmp9, label %if.then15, label %lor.lhs.false, !dbg !750

lor.lhs.false:                                    ; preds = %if.then8
  %10 = load i32, ptr %v, align 4, !dbg !751, !tbaa !162
  %cmp11 = icmp uge i32 %10, 55296, !dbg !752
  br i1 %cmp11, label %land.lhs.true, label %if.else16, !dbg !753

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32, ptr %v, align 4, !dbg !754, !tbaa !162
  %cmp13 = icmp ule i32 %11, 57343, !dbg !755
  br i1 %cmp13, label %if.then15, label %if.else16, !dbg !756

if.then15:                                        ; preds = %land.lhs.true, %if.then8
  store i64 -1, ptr %retval, align 8, !dbg !757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !757

if.else16:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %do.body, !dbg !759

do.body:                                          ; preds = %if.else16
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4, !dbg !760
  tail call void @llvm.dbg.declare(metadata ptr %_y, metadata !679, metadata !DIExpression()), !dbg !760
  store i32 0, ptr %_y, align 4, !dbg !760, !annotation !77
  %12 = load i32, ptr %v, align 4, !dbg !760, !tbaa !162
  store i32 %12, ptr %_y, align 4, !dbg !760, !tbaa !162
  %13 = load ptr, ptr %op.addr, align 8, !dbg !761, !tbaa !64
  %tobool17 = icmp ne ptr %13, null, !dbg !761
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !760

if.then18:                                        ; preds = %do.body
  br label %do.body19, !dbg !762

do.body19:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p) #4, !dbg !763
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p, metadata !690, metadata !DIExpression()), !dbg !763
  store ptr null, ptr %_wc_p, align 8, !dbg !763, !annotation !77
  %14 = load ptr, ptr %op.addr, align 8, !dbg !763, !tbaa !64
  store ptr %14, ptr %_wc_p, align 8, !dbg !763, !tbaa !64
  %15 = load i32, ptr %_y, align 4, !dbg !763, !tbaa !162
  %shr = lshr i32 %15, 24, !dbg !763
  %conv20 = trunc i32 %shr to i8, !dbg !763
  %16 = load ptr, ptr %_wc_p, align 8, !dbg !763, !tbaa !64
  %incdec.ptr21 = getelementptr i8, ptr %16, i32 1, !dbg !763
  store ptr %incdec.ptr21, ptr %_wc_p, align 8, !dbg !763, !tbaa !64
  store i8 %conv20, ptr %16, align 1, !dbg !763, !tbaa !73
  %17 = load ptr, ptr %_wc_p, align 8, !dbg !763, !tbaa !64
  store ptr %17, ptr %op.addr, align 8, !dbg !763, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p) #4, !dbg !762
  br label %do.cond, !dbg !763

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !763

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !762

do.body22:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p23) #4, !dbg !764
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p23, metadata !694, metadata !DIExpression()), !dbg !764
  store ptr null, ptr %_wc_p23, align 8, !dbg !764, !annotation !77
  %18 = load ptr, ptr %op.addr, align 8, !dbg !764, !tbaa !64
  store ptr %18, ptr %_wc_p23, align 8, !dbg !764, !tbaa !64
  %19 = load i32, ptr %_y, align 4, !dbg !764, !tbaa !162
  %shr24 = lshr i32 %19, 16, !dbg !764
  %conv25 = trunc i32 %shr24 to i8, !dbg !764
  %20 = load ptr, ptr %_wc_p23, align 8, !dbg !764, !tbaa !64
  %incdec.ptr26 = getelementptr i8, ptr %20, i32 1, !dbg !764
  store ptr %incdec.ptr26, ptr %_wc_p23, align 8, !dbg !764, !tbaa !64
  store i8 %conv25, ptr %20, align 1, !dbg !764, !tbaa !73
  %21 = load ptr, ptr %_wc_p23, align 8, !dbg !764, !tbaa !64
  store ptr %21, ptr %op.addr, align 8, !dbg !764, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p23) #4, !dbg !762
  br label %do.cond27, !dbg !764

do.cond27:                                        ; preds = %do.body22
  br label %do.end28, !dbg !764

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !762

do.body29:                                        ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p30) #4, !dbg !765
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p30, metadata !696, metadata !DIExpression()), !dbg !765
  store ptr null, ptr %_wc_p30, align 8, !dbg !765, !annotation !77
  %22 = load ptr, ptr %op.addr, align 8, !dbg !765, !tbaa !64
  store ptr %22, ptr %_wc_p30, align 8, !dbg !765, !tbaa !64
  %23 = load i32, ptr %_y, align 4, !dbg !765, !tbaa !162
  %shr31 = lshr i32 %23, 8, !dbg !765
  %conv32 = trunc i32 %shr31 to i8, !dbg !765
  %24 = load ptr, ptr %_wc_p30, align 8, !dbg !765, !tbaa !64
  %incdec.ptr33 = getelementptr i8, ptr %24, i32 1, !dbg !765
  store ptr %incdec.ptr33, ptr %_wc_p30, align 8, !dbg !765, !tbaa !64
  store i8 %conv32, ptr %24, align 1, !dbg !765, !tbaa !73
  %25 = load ptr, ptr %_wc_p30, align 8, !dbg !765, !tbaa !64
  store ptr %25, ptr %op.addr, align 8, !dbg !765, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p30) #4, !dbg !762
  br label %do.cond34, !dbg !765

do.cond34:                                        ; preds = %do.body29
  br label %do.end35, !dbg !765

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !762

do.body36:                                        ; preds = %do.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p37) #4, !dbg !766
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p37, metadata !698, metadata !DIExpression()), !dbg !766
  store ptr null, ptr %_wc_p37, align 8, !dbg !766, !annotation !77
  %26 = load ptr, ptr %op.addr, align 8, !dbg !766, !tbaa !64
  store ptr %26, ptr %_wc_p37, align 8, !dbg !766, !tbaa !64
  %27 = load i32, ptr %_y, align 4, !dbg !766, !tbaa !162
  %conv38 = trunc i32 %27 to i8, !dbg !766
  %28 = load ptr, ptr %_wc_p37, align 8, !dbg !766, !tbaa !64
  %incdec.ptr39 = getelementptr i8, ptr %28, i32 1, !dbg !766
  store ptr %incdec.ptr39, ptr %_wc_p37, align 8, !dbg !766, !tbaa !64
  store i8 %conv38, ptr %28, align 1, !dbg !766, !tbaa !73
  %29 = load ptr, ptr %_wc_p37, align 8, !dbg !766, !tbaa !64
  store ptr %29, ptr %op.addr, align 8, !dbg !766, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p37) #4, !dbg !762
  br label %do.cond40, !dbg !766

do.cond40:                                        ; preds = %do.body36
  br label %do.end41, !dbg !766

do.end41:                                         ; preds = %do.cond40
  br label %if.end, !dbg !762

if.end:                                           ; preds = %do.end41, %do.body
  %30 = load i64, ptr %outlen, align 8, !dbg !760, !tbaa !69
  %inc = add i64 %30, 1, !dbg !760
  store i64 %inc, ptr %outlen, align 8, !dbg !760, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4, !dbg !759
  br label %do.cond42, !dbg !760

do.cond42:                                        ; preds = %if.end
  br label %do.end43, !dbg !760

do.end43:                                         ; preds = %do.cond42
  br label %if.end44

if.end44:                                         ; preds = %do.end43
  br label %if.end45, !dbg !767

if.end45:                                         ; preds = %if.end44, %if.else
  br label %while.cond, !dbg !768, !llvm.loop !769

if.end46:                                         ; preds = %while.body
  %31 = load i8, ptr %c, align 1, !dbg !771, !tbaa !73
  %conv47 = zext i8 %31 to i32, !dbg !771
  %cmp48 = icmp slt i32 %conv47, 128, !dbg !772
  br i1 %cmp48, label %if.then50, label %if.else87, !dbg !773

if.then50:                                        ; preds = %if.end46
  br label %do.body51, !dbg !774

do.body51:                                        ; preds = %if.then50
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y52) #4, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %_y52, metadata !700, metadata !DIExpression()), !dbg !775
  store i32 0, ptr %_y52, align 4, !dbg !775, !annotation !77
  %32 = load i8, ptr %c, align 1, !dbg !775, !tbaa !73
  %conv53 = zext i8 %32 to i32, !dbg !775
  store i32 %conv53, ptr %_y52, align 4, !dbg !775, !tbaa !162
  %33 = load ptr, ptr %op.addr, align 8, !dbg !776, !tbaa !64
  %tobool54 = icmp ne ptr %33, null, !dbg !776
  br i1 %tobool54, label %if.then55, label %if.end83, !dbg !775

if.then55:                                        ; preds = %do.body51
  br label %do.body56, !dbg !777

do.body56:                                        ; preds = %if.then55
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p57) #4, !dbg !778
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p57, metadata !704, metadata !DIExpression()), !dbg !778
  store ptr null, ptr %_wc_p57, align 8, !dbg !778, !annotation !77
  %34 = load ptr, ptr %op.addr, align 8, !dbg !778, !tbaa !64
  store ptr %34, ptr %_wc_p57, align 8, !dbg !778, !tbaa !64
  %35 = load i32, ptr %_y52, align 4, !dbg !778, !tbaa !162
  %shr58 = lshr i32 %35, 24, !dbg !778
  %conv59 = trunc i32 %shr58 to i8, !dbg !778
  %36 = load ptr, ptr %_wc_p57, align 8, !dbg !778, !tbaa !64
  %incdec.ptr60 = getelementptr i8, ptr %36, i32 1, !dbg !778
  store ptr %incdec.ptr60, ptr %_wc_p57, align 8, !dbg !778, !tbaa !64
  store i8 %conv59, ptr %36, align 1, !dbg !778, !tbaa !73
  %37 = load ptr, ptr %_wc_p57, align 8, !dbg !778, !tbaa !64
  store ptr %37, ptr %op.addr, align 8, !dbg !778, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p57) #4, !dbg !777
  br label %do.cond61, !dbg !778

do.cond61:                                        ; preds = %do.body56
  br label %do.end62, !dbg !778

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !777

do.body63:                                        ; preds = %do.end62
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p64) #4, !dbg !779
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p64, metadata !708, metadata !DIExpression()), !dbg !779
  store ptr null, ptr %_wc_p64, align 8, !dbg !779, !annotation !77
  %38 = load ptr, ptr %op.addr, align 8, !dbg !779, !tbaa !64
  store ptr %38, ptr %_wc_p64, align 8, !dbg !779, !tbaa !64
  %39 = load i32, ptr %_y52, align 4, !dbg !779, !tbaa !162
  %shr65 = lshr i32 %39, 16, !dbg !779
  %conv66 = trunc i32 %shr65 to i8, !dbg !779
  %40 = load ptr, ptr %_wc_p64, align 8, !dbg !779, !tbaa !64
  %incdec.ptr67 = getelementptr i8, ptr %40, i32 1, !dbg !779
  store ptr %incdec.ptr67, ptr %_wc_p64, align 8, !dbg !779, !tbaa !64
  store i8 %conv66, ptr %40, align 1, !dbg !779, !tbaa !73
  %41 = load ptr, ptr %_wc_p64, align 8, !dbg !779, !tbaa !64
  store ptr %41, ptr %op.addr, align 8, !dbg !779, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p64) #4, !dbg !777
  br label %do.cond68, !dbg !779

do.cond68:                                        ; preds = %do.body63
  br label %do.end69, !dbg !779

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !777

do.body70:                                        ; preds = %do.end69
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p71) #4, !dbg !780
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p71, metadata !710, metadata !DIExpression()), !dbg !780
  store ptr null, ptr %_wc_p71, align 8, !dbg !780, !annotation !77
  %42 = load ptr, ptr %op.addr, align 8, !dbg !780, !tbaa !64
  store ptr %42, ptr %_wc_p71, align 8, !dbg !780, !tbaa !64
  %43 = load i32, ptr %_y52, align 4, !dbg !780, !tbaa !162
  %shr72 = lshr i32 %43, 8, !dbg !780
  %conv73 = trunc i32 %shr72 to i8, !dbg !780
  %44 = load ptr, ptr %_wc_p71, align 8, !dbg !780, !tbaa !64
  %incdec.ptr74 = getelementptr i8, ptr %44, i32 1, !dbg !780
  store ptr %incdec.ptr74, ptr %_wc_p71, align 8, !dbg !780, !tbaa !64
  store i8 %conv73, ptr %44, align 1, !dbg !780, !tbaa !73
  %45 = load ptr, ptr %_wc_p71, align 8, !dbg !780, !tbaa !64
  store ptr %45, ptr %op.addr, align 8, !dbg !780, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p71) #4, !dbg !777
  br label %do.cond75, !dbg !780

do.cond75:                                        ; preds = %do.body70
  br label %do.end76, !dbg !780

do.end76:                                         ; preds = %do.cond75
  br label %do.body77, !dbg !777

do.body77:                                        ; preds = %do.end76
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wc_p78) #4, !dbg !781
  tail call void @llvm.dbg.declare(metadata ptr %_wc_p78, metadata !712, metadata !DIExpression()), !dbg !781
  store ptr null, ptr %_wc_p78, align 8, !dbg !781, !annotation !77
  %46 = load ptr, ptr %op.addr, align 8, !dbg !781, !tbaa !64
  store ptr %46, ptr %_wc_p78, align 8, !dbg !781, !tbaa !64
  %47 = load i32, ptr %_y52, align 4, !dbg !781, !tbaa !162
  %conv79 = trunc i32 %47 to i8, !dbg !781
  %48 = load ptr, ptr %_wc_p78, align 8, !dbg !781, !tbaa !64
  %incdec.ptr80 = getelementptr i8, ptr %48, i32 1, !dbg !781
  store ptr %incdec.ptr80, ptr %_wc_p78, align 8, !dbg !781, !tbaa !64
  store i8 %conv79, ptr %48, align 1, !dbg !781, !tbaa !73
  %49 = load ptr, ptr %_wc_p78, align 8, !dbg !781, !tbaa !64
  store ptr %49, ptr %op.addr, align 8, !dbg !781, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wc_p78) #4, !dbg !777
  br label %do.cond81, !dbg !781

do.cond81:                                        ; preds = %do.body77
  br label %do.end82, !dbg !781

do.end82:                                         ; preds = %do.cond81
  br label %if.end83, !dbg !777

if.end83:                                         ; preds = %do.end82, %do.body51
  %50 = load i64, ptr %outlen, align 8, !dbg !775, !tbaa !69
  %inc84 = add i64 %50, 1, !dbg !775
  store i64 %inc84, ptr %outlen, align 8, !dbg !775, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y52) #4, !dbg !774
  br label %do.cond85, !dbg !775

do.cond85:                                        ; preds = %if.end83
  br label %do.end86, !dbg !775

do.end86:                                         ; preds = %do.cond85
  br label %if.end132, !dbg !782

if.else87:                                        ; preds = %if.end46
  %51 = load i8, ptr %c, align 1, !dbg !783, !tbaa !73
  %conv88 = zext i8 %51 to i32, !dbg !783
  %cmp89 = icmp slt i32 %conv88, 192, !dbg !785
  br i1 %cmp89, label %if.then95, label %lor.lhs.false91, !dbg !786

lor.lhs.false91:                                  ; preds = %if.else87
  %52 = load i8, ptr %c, align 1, !dbg !787, !tbaa !73
  %conv92 = zext i8 %52 to i32, !dbg !787
  %cmp93 = icmp sge i32 %conv92, 254, !dbg !788
  br i1 %cmp93, label %if.then95, label %if.else96, !dbg !789

if.then95:                                        ; preds = %lor.lhs.false91, %if.else87
  store i64 -1, ptr %retval, align 8, !dbg !790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !790

if.else96:                                        ; preds = %lor.lhs.false91
  %53 = load i8, ptr %c, align 1, !dbg !792, !tbaa !73
  %conv97 = zext i8 %53 to i32, !dbg !792
  %cmp98 = icmp slt i32 %conv97, 224, !dbg !794
  br i1 %cmp98, label %if.then100, label %if.else103, !dbg !795

if.then100:                                       ; preds = %if.else96
  %54 = load i8, ptr %c, align 1, !dbg !796, !tbaa !73
  %conv101 = zext i8 %54 to i32, !dbg !796
  %and102 = and i32 %conv101, 31, !dbg !798
  store i32 %and102, ptr %v, align 4, !dbg !799, !tbaa !162
  store i32 1, ptr %expect, align 4, !dbg !800, !tbaa !162
  store i32 128, ptr %vmin, align 4, !dbg !801, !tbaa !162
  br label %if.end130, !dbg !802

if.else103:                                       ; preds = %if.else96
  %55 = load i8, ptr %c, align 1, !dbg !803, !tbaa !73
  %conv104 = zext i8 %55 to i32, !dbg !803
  %cmp105 = icmp slt i32 %conv104, 240, !dbg !805
  br i1 %cmp105, label %if.then107, label %if.else110, !dbg !806

if.then107:                                       ; preds = %if.else103
  %56 = load i8, ptr %c, align 1, !dbg !807, !tbaa !73
  %conv108 = zext i8 %56 to i32, !dbg !807
  %and109 = and i32 %conv108, 15, !dbg !809
  store i32 %and109, ptr %v, align 4, !dbg !810, !tbaa !162
  store i32 2, ptr %expect, align 4, !dbg !811, !tbaa !162
  store i32 2048, ptr %vmin, align 4, !dbg !812, !tbaa !162
  br label %if.end129, !dbg !813

if.else110:                                       ; preds = %if.else103
  %57 = load i8, ptr %c, align 1, !dbg !814, !tbaa !73
  %conv111 = zext i8 %57 to i32, !dbg !814
  %cmp112 = icmp slt i32 %conv111, 248, !dbg !816
  br i1 %cmp112, label %if.then114, label %if.else117, !dbg !817

if.then114:                                       ; preds = %if.else110
  %58 = load i8, ptr %c, align 1, !dbg !818, !tbaa !73
  %conv115 = zext i8 %58 to i32, !dbg !818
  %and116 = and i32 %conv115, 7, !dbg !820
  store i32 %and116, ptr %v, align 4, !dbg !821, !tbaa !162
  store i32 3, ptr %expect, align 4, !dbg !822, !tbaa !162
  store i32 65536, ptr %vmin, align 4, !dbg !823, !tbaa !162
  br label %if.end128, !dbg !824

if.else117:                                       ; preds = %if.else110
  %59 = load i8, ptr %c, align 1, !dbg !825, !tbaa !73
  %conv118 = zext i8 %59 to i32, !dbg !825
  %cmp119 = icmp slt i32 %conv118, 252, !dbg !827
  br i1 %cmp119, label %if.then121, label %if.else124, !dbg !828

if.then121:                                       ; preds = %if.else117
  %60 = load i8, ptr %c, align 1, !dbg !829, !tbaa !73
  %conv122 = zext i8 %60 to i32, !dbg !829
  %and123 = and i32 %conv122, 3, !dbg !831
  store i32 %and123, ptr %v, align 4, !dbg !832, !tbaa !162
  store i32 4, ptr %expect, align 4, !dbg !833, !tbaa !162
  store i32 2097152, ptr %vmin, align 4, !dbg !834, !tbaa !162
  br label %if.end127, !dbg !835

if.else124:                                       ; preds = %if.else117
  %61 = load i8, ptr %c, align 1, !dbg !836, !tbaa !73
  %conv125 = zext i8 %61 to i32, !dbg !836
  %and126 = and i32 %conv125, 1, !dbg !838
  store i32 %and126, ptr %v, align 4, !dbg !839, !tbaa !162
  store i32 5, ptr %expect, align 4, !dbg !840, !tbaa !162
  store i32 67108864, ptr %vmin, align 4, !dbg !841, !tbaa !162
  br label %if.end127

if.end127:                                        ; preds = %if.else124, %if.then121
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then114
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then107
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then100
  br label %if.end131

if.end131:                                        ; preds = %if.end130
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %do.end86
  br label %while.cond, !dbg !726, !llvm.loop !769

while.end:                                        ; preds = %while.cond
  %62 = load i32, ptr %expect, align 4, !dbg !842, !tbaa !162
  %tobool133 = icmp ne i32 %62, 0, !dbg !842
  br i1 %tobool133, label %cond.true, label %cond.false, !dbg !842

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !842

cond.false:                                       ; preds = %while.end
  %63 = load i64, ptr %outlen, align 8, !dbg !843, !tbaa !69
  %shl134 = shl i64 %63, 2, !dbg !844
  br label %cond.end, !dbg !842

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %shl134, %cond.false ], !dbg !842
  store i64 %cond, ptr %retval, align 8, !dbg !845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !845

cleanup:                                          ; preds = %cond.end, %if.then95, %if.then15, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmin) #4, !dbg !846
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #4, !dbg !846
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !846
  call void @llvm.lifetime.end.p0(i64 4, ptr %expect) #4, !dbg !846
  call void @llvm.lifetime.end.p0(i64 8, ptr %outlen) #4, !dbg !846
  %64 = load i64, ptr %retval, align 8, !dbg !846
  ret i64 %64, !dbg !846
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare !dbg !847 noalias nonnull ptr @nasm_malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { allocsize(0) }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "str_transforms", scope: !2, file: !3, line: 339, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "string_transform", scope: !3, file: !3, line: 336, type: !4, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !40)
!3 = !DIFile(filename: "asm/strfunc.c", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "fe8aa7090be936cac3a7f639c88ba974")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !6, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 70, baseType: !8)
!7 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strfunc", file: !13, line: 221, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./include/nasm.h", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "f2665e690f5dd0f3fa8bd98658f95cb4")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIEnumerator(name: "STRFUNC_UTF16", value: 0)
!17 = !DIEnumerator(name: "STRFUNC_UTF16LE", value: 1)
!18 = !DIEnumerator(name: "STRFUNC_UTF16BE", value: 2)
!19 = !DIEnumerator(name: "STRFUNC_UTF32", value: 3)
!20 = !DIEnumerator(name: "STRFUNC_UTF32LE", value: 4)
!21 = !DIEnumerator(name: "STRFUNC_UTF32BE", value: 5)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !24, globals: !39, splitDebugInlining: false, nameTableKind: None)
!23 = !{!12}
!24 = !{!25, !6, !31, !35, !36}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 24, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 25, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 26, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !14)
!39 = !{!0}
!40 = !{!41, !42, !43, !44, !45, !50, !51, !52}
!41 = !DILocalVariable(name: "str", arg: 1, scope: !2, file: !3, line: 336, type: !9)
!42 = !DILocalVariable(name: "len", arg: 2, scope: !2, file: !3, line: 336, type: !6)
!43 = !DILocalVariable(name: "out", arg: 3, scope: !2, file: !3, line: 336, type: !11)
!44 = !DILocalVariable(name: "func", arg: 4, scope: !2, file: !3, line: 336, type: !12)
!45 = !DILocalVariable(name: "transform", scope: !2, file: !3, line: 347, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "transform_func", file: !3, line: 329, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!6, !25, !6, !9}
!50 = !DILocalVariable(name: "outlen", scope: !2, file: !3, line: 348, type: !6)
!51 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 349, type: !25)
!52 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 350, type: !9)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 384, elements: !55)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!55 = !{!56}
!56 = !DISubrange(count: 6)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 336, column: 31, scope: !2)
!69 = !{!70, !70, i64 0}
!70 = !{!"long", !66, i64 0}
!71 = !DILocation(line: 336, column: 43, scope: !2)
!72 = !DILocation(line: 336, column: 55, scope: !2)
!73 = !{!66, !66, i64 0}
!74 = !DILocation(line: 336, column: 73, scope: !2)
!75 = !DILocation(line: 347, column: 5, scope: !2)
!76 = !DILocation(line: 347, column: 20, scope: !2)
!77 = !{!"auto-init"}
!78 = !DILocation(line: 347, column: 47, scope: !2)
!79 = !DILocation(line: 347, column: 32, scope: !2)
!80 = !DILocation(line: 348, column: 5, scope: !2)
!81 = !DILocation(line: 348, column: 12, scope: !2)
!82 = !DILocation(line: 349, column: 5, scope: !2)
!83 = !DILocation(line: 349, column: 14, scope: !2)
!84 = !DILocation(line: 349, column: 29, scope: !2)
!85 = !DILocation(line: 350, column: 5, scope: !2)
!86 = !DILocation(line: 350, column: 11, scope: !2)
!87 = !DILocation(line: 352, column: 14, scope: !2)
!88 = !DILocation(line: 352, column: 24, scope: !2)
!89 = !DILocation(line: 352, column: 27, scope: !2)
!90 = !DILocation(line: 352, column: 12, scope: !2)
!91 = !DILocation(line: 353, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !2, file: !3, line: 353, column: 9)
!93 = !DILocation(line: 353, column: 16, scope: !92)
!94 = !DILocation(line: 353, column: 9, scope: !2)
!95 = !DILocation(line: 354, column: 9, scope: !92)
!96 = !DILocation(line: 356, column: 30, scope: !2)
!97 = !DILocation(line: 356, column: 36, scope: !2)
!98 = !DILocation(line: 356, column: 18, scope: !2)
!99 = !DILocation(line: 356, column: 16, scope: !2)
!100 = !DILocation(line: 356, column: 6, scope: !2)
!101 = !DILocation(line: 356, column: 10, scope: !2)
!102 = !DILocation(line: 357, column: 5, scope: !2)
!103 = !DILocation(line: 357, column: 9, scope: !2)
!104 = !DILocation(line: 357, column: 17, scope: !2)
!105 = !DILocation(line: 358, column: 12, scope: !2)
!106 = !DILocation(line: 358, column: 22, scope: !2)
!107 = !DILocation(line: 358, column: 25, scope: !2)
!108 = !DILocation(line: 358, column: 30, scope: !2)
!109 = !DILocation(line: 358, column: 5, scope: !2)
!110 = !DILocation(line: 359, column: 1, scope: !2)
!111 = distinct !DISubprogram(name: "utf8_to_16le", scope: !3, file: !3, line: 46, type: !48, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !112)
!112 = !{!113, !114, !115, !116, !117, !119, !120, !121, !122, !137, !142, !148}
!113 = !DILocalVariable(name: "str", arg: 1, scope: !111, file: !3, line: 46, type: !25)
!114 = !DILocalVariable(name: "len", arg: 2, scope: !111, file: !3, line: 46, type: !6)
!115 = !DILocalVariable(name: "op", arg: 3, scope: !111, file: !3, line: 46, type: !9)
!116 = !DILocalVariable(name: "outlen", scope: !111, file: !3, line: 50, type: !6)
!117 = !DILocalVariable(name: "expect", scope: !111, file: !3, line: 51, type: !118)
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DILocalVariable(name: "c", scope: !111, file: !3, line: 52, type: !26)
!120 = !DILocalVariable(name: "v", scope: !111, file: !3, line: 53, type: !37)
!121 = !DILocalVariable(name: "vmin", scope: !111, file: !3, line: 53, type: !37)
!122 = !DILocalVariable(name: "_ws_p", scope: !123, file: !3, line: 70, type: !31)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 70, column: 25)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 70, column: 25)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 70, column: 25)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 70, column: 25)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 68, column: 44)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 68, column: 32)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 65, column: 25)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 64, column: 32)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 64, column: 21)
!132 = distinct !DILexicalBlock(scope: !133, file: !3, line: 62, column: 20)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 59, column: 17)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 58, column: 21)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 58, column: 13)
!136 = distinct !DILexicalBlock(scope: !111, file: !3, line: 55, column: 19)
!137 = !DILocalVariable(name: "_ws_p", scope: !138, file: !3, line: 71, type: !31)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 71, column: 25)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 71, column: 25)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 71, column: 25)
!141 = distinct !DILexicalBlock(scope: !127, file: !3, line: 71, column: 25)
!142 = !DILocalVariable(name: "_ws_p", scope: !143, file: !3, line: 73, type: !31)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 73, column: 25)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 73, column: 25)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 73, column: 25)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 73, column: 25)
!147 = distinct !DILexicalBlock(scope: !128, file: !3, line: 72, column: 28)
!148 = !DILocalVariable(name: "_ws_p", scope: !149, file: !3, line: 81, type: !31)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 81, column: 13)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 81, column: 13)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 81, column: 13)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 81, column: 13)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 80, column: 23)
!154 = distinct !DILexicalBlock(scope: !136, file: !3, line: 80, column: 13)
!155 = !DILocation(line: 46, column: 37, scope: !111)
!156 = !DILocation(line: 46, column: 49, scope: !111)
!157 = !DILocation(line: 46, column: 60, scope: !111)
!158 = !DILocation(line: 50, column: 5, scope: !111)
!159 = !DILocation(line: 50, column: 12, scope: !111)
!160 = !DILocation(line: 51, column: 5, scope: !111)
!161 = !DILocation(line: 51, column: 9, scope: !111)
!162 = !{!163, !163, i64 0}
!163 = !{!"int", !66, i64 0}
!164 = !DILocation(line: 52, column: 5, scope: !111)
!165 = !DILocation(line: 52, column: 13, scope: !111)
!166 = !DILocation(line: 53, column: 5, scope: !111)
!167 = !DILocation(line: 53, column: 14, scope: !111)
!168 = !DILocation(line: 53, column: 21, scope: !111)
!169 = !DILocation(line: 55, column: 5, scope: !111)
!170 = !DILocation(line: 55, column: 15, scope: !111)
!171 = !DILocation(line: 56, column: 17, scope: !136)
!172 = !DILocation(line: 56, column: 13, scope: !136)
!173 = !DILocation(line: 56, column: 11, scope: !136)
!174 = !DILocation(line: 58, column: 13, scope: !135)
!175 = !DILocation(line: 58, column: 13, scope: !136)
!176 = !DILocation(line: 59, column: 18, scope: !133)
!177 = !DILocation(line: 59, column: 20, scope: !133)
!178 = !DILocation(line: 59, column: 28, scope: !133)
!179 = !DILocation(line: 59, column: 17, scope: !134)
!180 = !DILocation(line: 60, column: 24, scope: !181)
!181 = distinct !DILexicalBlock(scope: !133, file: !3, line: 59, column: 37)
!182 = !DILocation(line: 61, column: 17, scope: !181)
!183 = !DILocation(line: 63, column: 22, scope: !132)
!184 = !DILocation(line: 63, column: 24, scope: !132)
!185 = !DILocation(line: 63, column: 33, scope: !132)
!186 = !DILocation(line: 63, column: 35, scope: !132)
!187 = !DILocation(line: 63, column: 30, scope: !132)
!188 = !DILocation(line: 63, column: 19, scope: !132)
!189 = !DILocation(line: 64, column: 22, scope: !131)
!190 = !DILocation(line: 64, column: 21, scope: !132)
!191 = !DILocation(line: 65, column: 25, scope: !129)
!192 = !DILocation(line: 65, column: 29, scope: !129)
!193 = !DILocation(line: 65, column: 27, scope: !129)
!194 = !DILocation(line: 65, column: 34, scope: !129)
!195 = !DILocation(line: 65, column: 37, scope: !129)
!196 = !DILocation(line: 65, column: 39, scope: !129)
!197 = !DILocation(line: 65, column: 50, scope: !129)
!198 = !DILocation(line: 66, column: 26, scope: !129)
!199 = !DILocation(line: 66, column: 28, scope: !129)
!200 = !DILocation(line: 66, column: 38, scope: !129)
!201 = !DILocation(line: 66, column: 41, scope: !129)
!202 = !DILocation(line: 66, column: 43, scope: !129)
!203 = !DILocation(line: 65, column: 25, scope: !130)
!204 = !DILocation(line: 67, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !129, file: !3, line: 66, column: 55)
!206 = !DILocation(line: 68, column: 32, scope: !128)
!207 = !DILocation(line: 68, column: 34, scope: !128)
!208 = !DILocation(line: 68, column: 32, scope: !129)
!209 = !DILocation(line: 69, column: 27, scope: !127)
!210 = !DILocation(line: 70, column: 25, scope: !127)
!211 = !DILocation(line: 70, column: 25, scope: !125)
!212 = !DILocation(line: 70, column: 25, scope: !126)
!213 = !DILocation(line: 70, column: 25, scope: !124)
!214 = !DILocation(line: 70, column: 25, scope: !123)
!215 = !{!216, !216, i64 0}
!216 = !{!"short", !66, i64 0}
!217 = !DILocation(line: 71, column: 25, scope: !127)
!218 = !DILocation(line: 71, column: 25, scope: !140)
!219 = !DILocation(line: 71, column: 25, scope: !141)
!220 = !DILocation(line: 71, column: 25, scope: !139)
!221 = !DILocation(line: 71, column: 25, scope: !138)
!222 = !DILocation(line: 72, column: 21, scope: !127)
!223 = !DILocation(line: 73, column: 25, scope: !147)
!224 = !DILocation(line: 73, column: 25, scope: !145)
!225 = !DILocation(line: 73, column: 25, scope: !146)
!226 = !DILocation(line: 73, column: 25, scope: !144)
!227 = !DILocation(line: 73, column: 25, scope: !143)
!228 = !DILocation(line: 75, column: 17, scope: !130)
!229 = !DILocation(line: 76, column: 17, scope: !132)
!230 = distinct !{!230, !169, !231, !232}
!231 = !DILocation(line: 106, column: 5, scope: !111)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 80, column: 13, scope: !154)
!234 = !DILocation(line: 80, column: 15, scope: !154)
!235 = !DILocation(line: 80, column: 13, scope: !136)
!236 = !DILocation(line: 81, column: 13, scope: !153)
!237 = !DILocation(line: 81, column: 13, scope: !151)
!238 = !DILocation(line: 81, column: 13, scope: !152)
!239 = !DILocation(line: 81, column: 13, scope: !150)
!240 = !DILocation(line: 81, column: 13, scope: !149)
!241 = !DILocation(line: 82, column: 9, scope: !153)
!242 = !DILocation(line: 82, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !154, file: !3, line: 82, column: 20)
!244 = !DILocation(line: 82, column: 22, scope: !243)
!245 = !DILocation(line: 82, column: 29, scope: !243)
!246 = !DILocation(line: 82, column: 32, scope: !243)
!247 = !DILocation(line: 82, column: 34, scope: !243)
!248 = !DILocation(line: 82, column: 20, scope: !154)
!249 = !DILocation(line: 84, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !3, line: 82, column: 43)
!251 = !DILocation(line: 85, column: 20, scope: !252)
!252 = distinct !DILexicalBlock(scope: !243, file: !3, line: 85, column: 20)
!253 = !DILocation(line: 85, column: 22, scope: !252)
!254 = !DILocation(line: 85, column: 20, scope: !243)
!255 = !DILocation(line: 86, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 85, column: 30)
!257 = !DILocation(line: 86, column: 19, scope: !256)
!258 = !DILocation(line: 86, column: 15, scope: !256)
!259 = !DILocation(line: 87, column: 20, scope: !256)
!260 = !DILocation(line: 88, column: 18, scope: !256)
!261 = !DILocation(line: 89, column: 9, scope: !256)
!262 = !DILocation(line: 89, column: 20, scope: !263)
!263 = distinct !DILexicalBlock(scope: !252, file: !3, line: 89, column: 20)
!264 = !DILocation(line: 89, column: 22, scope: !263)
!265 = !DILocation(line: 89, column: 20, scope: !252)
!266 = !DILocation(line: 90, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 89, column: 30)
!268 = !DILocation(line: 90, column: 19, scope: !267)
!269 = !DILocation(line: 90, column: 15, scope: !267)
!270 = !DILocation(line: 91, column: 20, scope: !267)
!271 = !DILocation(line: 92, column: 18, scope: !267)
!272 = !DILocation(line: 93, column: 9, scope: !267)
!273 = !DILocation(line: 93, column: 20, scope: !274)
!274 = distinct !DILexicalBlock(scope: !263, file: !3, line: 93, column: 20)
!275 = !DILocation(line: 93, column: 22, scope: !274)
!276 = !DILocation(line: 93, column: 20, scope: !263)
!277 = !DILocation(line: 94, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 93, column: 30)
!279 = !DILocation(line: 94, column: 19, scope: !278)
!280 = !DILocation(line: 94, column: 15, scope: !278)
!281 = !DILocation(line: 95, column: 20, scope: !278)
!282 = !DILocation(line: 96, column: 18, scope: !278)
!283 = !DILocation(line: 97, column: 9, scope: !278)
!284 = !DILocation(line: 97, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !274, file: !3, line: 97, column: 20)
!286 = !DILocation(line: 97, column: 22, scope: !285)
!287 = !DILocation(line: 97, column: 20, scope: !274)
!288 = !DILocation(line: 98, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !3, line: 97, column: 30)
!290 = !DILocation(line: 98, column: 19, scope: !289)
!291 = !DILocation(line: 98, column: 15, scope: !289)
!292 = !DILocation(line: 99, column: 20, scope: !289)
!293 = !DILocation(line: 100, column: 18, scope: !289)
!294 = !DILocation(line: 101, column: 9, scope: !289)
!295 = !DILocation(line: 102, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !285, file: !3, line: 101, column: 16)
!297 = !DILocation(line: 102, column: 19, scope: !296)
!298 = !DILocation(line: 102, column: 15, scope: !296)
!299 = !DILocation(line: 103, column: 20, scope: !296)
!300 = !DILocation(line: 104, column: 18, scope: !296)
!301 = !DILocation(line: 108, column: 12, scope: !111)
!302 = !DILocation(line: 108, column: 34, scope: !111)
!303 = !DILocation(line: 108, column: 41, scope: !111)
!304 = !DILocation(line: 108, column: 5, scope: !111)
!305 = !DILocation(line: 111, column: 1, scope: !111)
!306 = distinct !DISubprogram(name: "utf8_to_16be", scope: !3, file: !3, line: 116, type: !48, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !328, !332, !334, !336, !340, !342, !345, !349, !351, !355, !359}
!308 = !DILocalVariable(name: "str", arg: 1, scope: !306, file: !3, line: 116, type: !25)
!309 = !DILocalVariable(name: "len", arg: 2, scope: !306, file: !3, line: 116, type: !6)
!310 = !DILocalVariable(name: "op", arg: 3, scope: !306, file: !3, line: 116, type: !9)
!311 = !DILocalVariable(name: "outlen", scope: !306, file: !3, line: 128, type: !6)
!312 = !DILocalVariable(name: "expect", scope: !306, file: !3, line: 129, type: !118)
!313 = !DILocalVariable(name: "c", scope: !306, file: !3, line: 130, type: !26)
!314 = !DILocalVariable(name: "v", scope: !306, file: !3, line: 131, type: !37)
!315 = !DILocalVariable(name: "vmin", scope: !306, file: !3, line: 131, type: !37)
!316 = !DILocalVariable(name: "_y", scope: !317, file: !3, line: 148, type: !32)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 148, column: 25)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 146, column: 44)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 146, column: 32)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 143, column: 25)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 142, column: 32)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 142, column: 21)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 140, column: 20)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 137, column: 17)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 136, column: 21)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 136, column: 13)
!327 = distinct !DILexicalBlock(scope: !306, file: !3, line: 133, column: 19)
!328 = !DILocalVariable(name: "_wc_p", scope: !329, file: !3, line: 148, type: !25)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 148, column: 25)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 148, column: 25)
!331 = distinct !DILexicalBlock(scope: !317, file: !3, line: 148, column: 25)
!332 = !DILocalVariable(name: "_wc_p", scope: !333, file: !3, line: 148, type: !25)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 148, column: 25)
!334 = !DILocalVariable(name: "_y", scope: !335, file: !3, line: 149, type: !32)
!335 = distinct !DILexicalBlock(scope: !318, file: !3, line: 149, column: 25)
!336 = !DILocalVariable(name: "_wc_p", scope: !337, file: !3, line: 149, type: !25)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 149, column: 25)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 149, column: 25)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 149, column: 25)
!340 = !DILocalVariable(name: "_wc_p", scope: !341, file: !3, line: 149, type: !25)
!341 = distinct !DILexicalBlock(scope: !338, file: !3, line: 149, column: 25)
!342 = !DILocalVariable(name: "_y", scope: !343, file: !3, line: 151, type: !32)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 151, column: 25)
!344 = distinct !DILexicalBlock(scope: !319, file: !3, line: 150, column: 28)
!345 = !DILocalVariable(name: "_wc_p", scope: !346, file: !3, line: 151, type: !25)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 151, column: 25)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 151, column: 25)
!348 = distinct !DILexicalBlock(scope: !343, file: !3, line: 151, column: 25)
!349 = !DILocalVariable(name: "_wc_p", scope: !350, file: !3, line: 151, type: !25)
!350 = distinct !DILexicalBlock(scope: !347, file: !3, line: 151, column: 25)
!351 = !DILocalVariable(name: "_y", scope: !352, file: !3, line: 159, type: !32)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 159, column: 13)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 158, column: 23)
!354 = distinct !DILexicalBlock(scope: !327, file: !3, line: 158, column: 13)
!355 = !DILocalVariable(name: "_wc_p", scope: !356, file: !3, line: 159, type: !25)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 159, column: 13)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 159, column: 13)
!358 = distinct !DILexicalBlock(scope: !352, file: !3, line: 159, column: 13)
!359 = !DILocalVariable(name: "_wc_p", scope: !360, file: !3, line: 159, type: !25)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 159, column: 13)
!361 = !DILocation(line: 116, column: 37, scope: !306)
!362 = !DILocation(line: 116, column: 49, scope: !306)
!363 = !DILocation(line: 116, column: 60, scope: !306)
!364 = !DILocation(line: 128, column: 5, scope: !306)
!365 = !DILocation(line: 128, column: 12, scope: !306)
!366 = !DILocation(line: 129, column: 5, scope: !306)
!367 = !DILocation(line: 129, column: 9, scope: !306)
!368 = !DILocation(line: 130, column: 5, scope: !306)
!369 = !DILocation(line: 130, column: 13, scope: !306)
!370 = !DILocation(line: 131, column: 5, scope: !306)
!371 = !DILocation(line: 131, column: 14, scope: !306)
!372 = !DILocation(line: 131, column: 21, scope: !306)
!373 = !DILocation(line: 133, column: 5, scope: !306)
!374 = !DILocation(line: 133, column: 15, scope: !306)
!375 = !DILocation(line: 134, column: 17, scope: !327)
!376 = !DILocation(line: 134, column: 13, scope: !327)
!377 = !DILocation(line: 134, column: 11, scope: !327)
!378 = !DILocation(line: 136, column: 13, scope: !326)
!379 = !DILocation(line: 136, column: 13, scope: !327)
!380 = !DILocation(line: 137, column: 18, scope: !324)
!381 = !DILocation(line: 137, column: 20, scope: !324)
!382 = !DILocation(line: 137, column: 28, scope: !324)
!383 = !DILocation(line: 137, column: 17, scope: !325)
!384 = !DILocation(line: 138, column: 24, scope: !385)
!385 = distinct !DILexicalBlock(scope: !324, file: !3, line: 137, column: 37)
!386 = !DILocation(line: 139, column: 17, scope: !385)
!387 = !DILocation(line: 141, column: 22, scope: !323)
!388 = !DILocation(line: 141, column: 24, scope: !323)
!389 = !DILocation(line: 141, column: 33, scope: !323)
!390 = !DILocation(line: 141, column: 35, scope: !323)
!391 = !DILocation(line: 141, column: 30, scope: !323)
!392 = !DILocation(line: 141, column: 19, scope: !323)
!393 = !DILocation(line: 142, column: 22, scope: !322)
!394 = !DILocation(line: 142, column: 21, scope: !323)
!395 = !DILocation(line: 143, column: 25, scope: !320)
!396 = !DILocation(line: 143, column: 29, scope: !320)
!397 = !DILocation(line: 143, column: 27, scope: !320)
!398 = !DILocation(line: 143, column: 34, scope: !320)
!399 = !DILocation(line: 143, column: 37, scope: !320)
!400 = !DILocation(line: 143, column: 39, scope: !320)
!401 = !DILocation(line: 143, column: 50, scope: !320)
!402 = !DILocation(line: 144, column: 26, scope: !320)
!403 = !DILocation(line: 144, column: 28, scope: !320)
!404 = !DILocation(line: 144, column: 38, scope: !320)
!405 = !DILocation(line: 144, column: 41, scope: !320)
!406 = !DILocation(line: 144, column: 43, scope: !320)
!407 = !DILocation(line: 143, column: 25, scope: !321)
!408 = !DILocation(line: 145, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !320, file: !3, line: 144, column: 55)
!410 = !DILocation(line: 146, column: 32, scope: !319)
!411 = !DILocation(line: 146, column: 34, scope: !319)
!412 = !DILocation(line: 146, column: 32, scope: !320)
!413 = !DILocation(line: 147, column: 27, scope: !318)
!414 = !DILocation(line: 148, column: 25, scope: !318)
!415 = !DILocation(line: 148, column: 25, scope: !317)
!416 = !DILocation(line: 148, column: 25, scope: !331)
!417 = !DILocation(line: 148, column: 25, scope: !330)
!418 = !DILocation(line: 148, column: 25, scope: !329)
!419 = !DILocation(line: 148, column: 25, scope: !333)
!420 = !DILocation(line: 149, column: 25, scope: !318)
!421 = !DILocation(line: 149, column: 25, scope: !335)
!422 = !DILocation(line: 149, column: 25, scope: !339)
!423 = !DILocation(line: 149, column: 25, scope: !338)
!424 = !DILocation(line: 149, column: 25, scope: !337)
!425 = !DILocation(line: 149, column: 25, scope: !341)
!426 = !DILocation(line: 150, column: 21, scope: !318)
!427 = !DILocation(line: 151, column: 25, scope: !344)
!428 = !DILocation(line: 151, column: 25, scope: !343)
!429 = !DILocation(line: 151, column: 25, scope: !348)
!430 = !DILocation(line: 151, column: 25, scope: !347)
!431 = !DILocation(line: 151, column: 25, scope: !346)
!432 = !DILocation(line: 151, column: 25, scope: !350)
!433 = !DILocation(line: 153, column: 17, scope: !321)
!434 = !DILocation(line: 154, column: 17, scope: !323)
!435 = distinct !{!435, !373, !436, !232}
!436 = !DILocation(line: 184, column: 5, scope: !306)
!437 = !DILocation(line: 158, column: 13, scope: !354)
!438 = !DILocation(line: 158, column: 15, scope: !354)
!439 = !DILocation(line: 158, column: 13, scope: !327)
!440 = !DILocation(line: 159, column: 13, scope: !353)
!441 = !DILocation(line: 159, column: 13, scope: !352)
!442 = !DILocation(line: 159, column: 13, scope: !358)
!443 = !DILocation(line: 159, column: 13, scope: !357)
!444 = !DILocation(line: 159, column: 13, scope: !356)
!445 = !DILocation(line: 159, column: 13, scope: !360)
!446 = !DILocation(line: 160, column: 9, scope: !353)
!447 = !DILocation(line: 160, column: 20, scope: !448)
!448 = distinct !DILexicalBlock(scope: !354, file: !3, line: 160, column: 20)
!449 = !DILocation(line: 160, column: 22, scope: !448)
!450 = !DILocation(line: 160, column: 29, scope: !448)
!451 = !DILocation(line: 160, column: 32, scope: !448)
!452 = !DILocation(line: 160, column: 34, scope: !448)
!453 = !DILocation(line: 160, column: 20, scope: !354)
!454 = !DILocation(line: 162, column: 13, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !3, line: 160, column: 43)
!456 = !DILocation(line: 163, column: 20, scope: !457)
!457 = distinct !DILexicalBlock(scope: !448, file: !3, line: 163, column: 20)
!458 = !DILocation(line: 163, column: 22, scope: !457)
!459 = !DILocation(line: 163, column: 20, scope: !448)
!460 = !DILocation(line: 164, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !3, line: 163, column: 30)
!462 = !DILocation(line: 164, column: 19, scope: !461)
!463 = !DILocation(line: 164, column: 15, scope: !461)
!464 = !DILocation(line: 165, column: 20, scope: !461)
!465 = !DILocation(line: 166, column: 18, scope: !461)
!466 = !DILocation(line: 167, column: 9, scope: !461)
!467 = !DILocation(line: 167, column: 20, scope: !468)
!468 = distinct !DILexicalBlock(scope: !457, file: !3, line: 167, column: 20)
!469 = !DILocation(line: 167, column: 22, scope: !468)
!470 = !DILocation(line: 167, column: 20, scope: !457)
!471 = !DILocation(line: 168, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !3, line: 167, column: 30)
!473 = !DILocation(line: 168, column: 19, scope: !472)
!474 = !DILocation(line: 168, column: 15, scope: !472)
!475 = !DILocation(line: 169, column: 20, scope: !472)
!476 = !DILocation(line: 170, column: 18, scope: !472)
!477 = !DILocation(line: 171, column: 9, scope: !472)
!478 = !DILocation(line: 171, column: 20, scope: !479)
!479 = distinct !DILexicalBlock(scope: !468, file: !3, line: 171, column: 20)
!480 = !DILocation(line: 171, column: 22, scope: !479)
!481 = !DILocation(line: 171, column: 20, scope: !468)
!482 = !DILocation(line: 172, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 171, column: 30)
!484 = !DILocation(line: 172, column: 19, scope: !483)
!485 = !DILocation(line: 172, column: 15, scope: !483)
!486 = !DILocation(line: 173, column: 20, scope: !483)
!487 = !DILocation(line: 174, column: 18, scope: !483)
!488 = !DILocation(line: 175, column: 9, scope: !483)
!489 = !DILocation(line: 175, column: 20, scope: !490)
!490 = distinct !DILexicalBlock(scope: !479, file: !3, line: 175, column: 20)
!491 = !DILocation(line: 175, column: 22, scope: !490)
!492 = !DILocation(line: 175, column: 20, scope: !479)
!493 = !DILocation(line: 176, column: 17, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 175, column: 30)
!495 = !DILocation(line: 176, column: 19, scope: !494)
!496 = !DILocation(line: 176, column: 15, scope: !494)
!497 = !DILocation(line: 177, column: 20, scope: !494)
!498 = !DILocation(line: 178, column: 18, scope: !494)
!499 = !DILocation(line: 179, column: 9, scope: !494)
!500 = !DILocation(line: 180, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !3, line: 179, column: 16)
!502 = !DILocation(line: 180, column: 19, scope: !501)
!503 = !DILocation(line: 180, column: 15, scope: !501)
!504 = !DILocation(line: 181, column: 20, scope: !501)
!505 = !DILocation(line: 182, column: 18, scope: !501)
!506 = !DILocation(line: 186, column: 12, scope: !306)
!507 = !DILocation(line: 186, column: 34, scope: !306)
!508 = !DILocation(line: 186, column: 41, scope: !306)
!509 = !DILocation(line: 186, column: 5, scope: !306)
!510 = !DILocation(line: 189, column: 1, scope: !306)
!511 = distinct !DISubprogram(name: "utf8_to_32le", scope: !3, file: !3, line: 194, type: !48, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !535}
!513 = !DILocalVariable(name: "str", arg: 1, scope: !511, file: !3, line: 194, type: !25)
!514 = !DILocalVariable(name: "len", arg: 2, scope: !511, file: !3, line: 194, type: !6)
!515 = !DILocalVariable(name: "op", arg: 3, scope: !511, file: !3, line: 194, type: !9)
!516 = !DILocalVariable(name: "outlen", scope: !511, file: !3, line: 198, type: !6)
!517 = !DILocalVariable(name: "expect", scope: !511, file: !3, line: 199, type: !118)
!518 = !DILocalVariable(name: "c", scope: !511, file: !3, line: 200, type: !26)
!519 = !DILocalVariable(name: "v", scope: !511, file: !3, line: 201, type: !37)
!520 = !DILocalVariable(name: "vmin", scope: !511, file: !3, line: 201, type: !37)
!521 = !DILocalVariable(name: "_wl_p", scope: !522, file: !3, line: 215, type: !36)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 215, column: 25)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 215, column: 25)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 215, column: 25)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 215, column: 25)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 214, column: 28)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 212, column: 25)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 211, column: 32)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 211, column: 21)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 209, column: 20)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 207, column: 17)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 206, column: 21)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 206, column: 13)
!534 = distinct !DILexicalBlock(scope: !511, file: !3, line: 203, column: 19)
!535 = !DILocalVariable(name: "_wl_p", scope: !536, file: !3, line: 223, type: !36)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 223, column: 13)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 223, column: 13)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 223, column: 13)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 223, column: 13)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 222, column: 23)
!541 = distinct !DILexicalBlock(scope: !534, file: !3, line: 222, column: 13)
!542 = !DILocation(line: 194, column: 37, scope: !511)
!543 = !DILocation(line: 194, column: 49, scope: !511)
!544 = !DILocation(line: 194, column: 60, scope: !511)
!545 = !DILocation(line: 198, column: 5, scope: !511)
!546 = !DILocation(line: 198, column: 12, scope: !511)
!547 = !DILocation(line: 199, column: 5, scope: !511)
!548 = !DILocation(line: 199, column: 9, scope: !511)
!549 = !DILocation(line: 200, column: 5, scope: !511)
!550 = !DILocation(line: 200, column: 13, scope: !511)
!551 = !DILocation(line: 201, column: 5, scope: !511)
!552 = !DILocation(line: 201, column: 14, scope: !511)
!553 = !DILocation(line: 201, column: 21, scope: !511)
!554 = !DILocation(line: 203, column: 5, scope: !511)
!555 = !DILocation(line: 203, column: 15, scope: !511)
!556 = !DILocation(line: 204, column: 17, scope: !534)
!557 = !DILocation(line: 204, column: 13, scope: !534)
!558 = !DILocation(line: 204, column: 11, scope: !534)
!559 = !DILocation(line: 206, column: 13, scope: !533)
!560 = !DILocation(line: 206, column: 13, scope: !534)
!561 = !DILocation(line: 207, column: 18, scope: !531)
!562 = !DILocation(line: 207, column: 20, scope: !531)
!563 = !DILocation(line: 207, column: 28, scope: !531)
!564 = !DILocation(line: 207, column: 17, scope: !532)
!565 = !DILocation(line: 208, column: 17, scope: !566)
!566 = distinct !DILexicalBlock(scope: !531, file: !3, line: 207, column: 37)
!567 = !DILocation(line: 210, column: 22, scope: !530)
!568 = !DILocation(line: 210, column: 24, scope: !530)
!569 = !DILocation(line: 210, column: 33, scope: !530)
!570 = !DILocation(line: 210, column: 35, scope: !530)
!571 = !DILocation(line: 210, column: 30, scope: !530)
!572 = !DILocation(line: 210, column: 19, scope: !530)
!573 = !DILocation(line: 211, column: 22, scope: !529)
!574 = !DILocation(line: 211, column: 21, scope: !530)
!575 = !DILocation(line: 212, column: 25, scope: !527)
!576 = !DILocation(line: 212, column: 29, scope: !527)
!577 = !DILocation(line: 212, column: 27, scope: !527)
!578 = !DILocation(line: 212, column: 34, scope: !527)
!579 = !DILocation(line: 212, column: 38, scope: !527)
!580 = !DILocation(line: 212, column: 40, scope: !527)
!581 = !DILocation(line: 212, column: 50, scope: !527)
!582 = !DILocation(line: 212, column: 53, scope: !527)
!583 = !DILocation(line: 212, column: 55, scope: !527)
!584 = !DILocation(line: 212, column: 25, scope: !528)
!585 = !DILocation(line: 213, column: 25, scope: !586)
!586 = distinct !DILexicalBlock(scope: !527, file: !3, line: 212, column: 67)
!587 = !DILocation(line: 215, column: 25, scope: !526)
!588 = !DILocation(line: 215, column: 25, scope: !524)
!589 = !DILocation(line: 215, column: 25, scope: !525)
!590 = !DILocation(line: 215, column: 25, scope: !523)
!591 = !DILocation(line: 215, column: 25, scope: !522)
!592 = !DILocation(line: 217, column: 17, scope: !528)
!593 = !DILocation(line: 218, column: 17, scope: !530)
!594 = distinct !{!594, !554, !595, !232}
!595 = !DILocation(line: 248, column: 5, scope: !511)
!596 = !DILocation(line: 222, column: 13, scope: !541)
!597 = !DILocation(line: 222, column: 15, scope: !541)
!598 = !DILocation(line: 222, column: 13, scope: !534)
!599 = !DILocation(line: 223, column: 13, scope: !540)
!600 = !DILocation(line: 223, column: 13, scope: !538)
!601 = !DILocation(line: 223, column: 13, scope: !539)
!602 = !DILocation(line: 223, column: 13, scope: !537)
!603 = !DILocation(line: 223, column: 13, scope: !536)
!604 = !DILocation(line: 224, column: 9, scope: !540)
!605 = !DILocation(line: 224, column: 20, scope: !606)
!606 = distinct !DILexicalBlock(scope: !541, file: !3, line: 224, column: 20)
!607 = !DILocation(line: 224, column: 22, scope: !606)
!608 = !DILocation(line: 224, column: 29, scope: !606)
!609 = !DILocation(line: 224, column: 32, scope: !606)
!610 = !DILocation(line: 224, column: 34, scope: !606)
!611 = !DILocation(line: 224, column: 20, scope: !541)
!612 = !DILocation(line: 226, column: 13, scope: !613)
!613 = distinct !DILexicalBlock(scope: !606, file: !3, line: 224, column: 43)
!614 = !DILocation(line: 227, column: 20, scope: !615)
!615 = distinct !DILexicalBlock(scope: !606, file: !3, line: 227, column: 20)
!616 = !DILocation(line: 227, column: 22, scope: !615)
!617 = !DILocation(line: 227, column: 20, scope: !606)
!618 = !DILocation(line: 228, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !3, line: 227, column: 30)
!620 = !DILocation(line: 228, column: 19, scope: !619)
!621 = !DILocation(line: 228, column: 15, scope: !619)
!622 = !DILocation(line: 229, column: 20, scope: !619)
!623 = !DILocation(line: 230, column: 18, scope: !619)
!624 = !DILocation(line: 231, column: 9, scope: !619)
!625 = !DILocation(line: 231, column: 20, scope: !626)
!626 = distinct !DILexicalBlock(scope: !615, file: !3, line: 231, column: 20)
!627 = !DILocation(line: 231, column: 22, scope: !626)
!628 = !DILocation(line: 231, column: 20, scope: !615)
!629 = !DILocation(line: 232, column: 17, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 231, column: 30)
!631 = !DILocation(line: 232, column: 19, scope: !630)
!632 = !DILocation(line: 232, column: 15, scope: !630)
!633 = !DILocation(line: 233, column: 20, scope: !630)
!634 = !DILocation(line: 234, column: 18, scope: !630)
!635 = !DILocation(line: 235, column: 9, scope: !630)
!636 = !DILocation(line: 235, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !626, file: !3, line: 235, column: 20)
!638 = !DILocation(line: 235, column: 22, scope: !637)
!639 = !DILocation(line: 235, column: 20, scope: !626)
!640 = !DILocation(line: 236, column: 17, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 235, column: 30)
!642 = !DILocation(line: 236, column: 19, scope: !641)
!643 = !DILocation(line: 236, column: 15, scope: !641)
!644 = !DILocation(line: 237, column: 20, scope: !641)
!645 = !DILocation(line: 238, column: 18, scope: !641)
!646 = !DILocation(line: 239, column: 9, scope: !641)
!647 = !DILocation(line: 239, column: 20, scope: !648)
!648 = distinct !DILexicalBlock(scope: !637, file: !3, line: 239, column: 20)
!649 = !DILocation(line: 239, column: 22, scope: !648)
!650 = !DILocation(line: 239, column: 20, scope: !637)
!651 = !DILocation(line: 240, column: 17, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !3, line: 239, column: 30)
!653 = !DILocation(line: 240, column: 19, scope: !652)
!654 = !DILocation(line: 240, column: 15, scope: !652)
!655 = !DILocation(line: 241, column: 20, scope: !652)
!656 = !DILocation(line: 242, column: 18, scope: !652)
!657 = !DILocation(line: 243, column: 9, scope: !652)
!658 = !DILocation(line: 244, column: 17, scope: !659)
!659 = distinct !DILexicalBlock(scope: !648, file: !3, line: 243, column: 16)
!660 = !DILocation(line: 244, column: 19, scope: !659)
!661 = !DILocation(line: 244, column: 15, scope: !659)
!662 = !DILocation(line: 245, column: 20, scope: !659)
!663 = !DILocation(line: 246, column: 18, scope: !659)
!664 = !DILocation(line: 250, column: 12, scope: !511)
!665 = !DILocation(line: 250, column: 34, scope: !511)
!666 = !DILocation(line: 250, column: 41, scope: !511)
!667 = !DILocation(line: 250, column: 5, scope: !511)
!668 = !DILocation(line: 253, column: 1, scope: !511)
!669 = distinct !DISubprogram(name: "utf8_to_32be", scope: !3, file: !3, line: 258, type: !48, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !690, !694, !696, !698, !700, !704, !708, !710, !712}
!671 = !DILocalVariable(name: "str", arg: 1, scope: !669, file: !3, line: 258, type: !25)
!672 = !DILocalVariable(name: "len", arg: 2, scope: !669, file: !3, line: 258, type: !6)
!673 = !DILocalVariable(name: "op", arg: 3, scope: !669, file: !3, line: 258, type: !9)
!674 = !DILocalVariable(name: "outlen", scope: !669, file: !3, line: 272, type: !6)
!675 = !DILocalVariable(name: "expect", scope: !669, file: !3, line: 273, type: !118)
!676 = !DILocalVariable(name: "c", scope: !669, file: !3, line: 274, type: !26)
!677 = !DILocalVariable(name: "v", scope: !669, file: !3, line: 275, type: !37)
!678 = !DILocalVariable(name: "vmin", scope: !669, file: !3, line: 275, type: !37)
!679 = !DILocalVariable(name: "_y", scope: !680, file: !3, line: 289, type: !37)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 289, column: 25)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 288, column: 28)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 286, column: 25)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 285, column: 32)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 285, column: 21)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 283, column: 20)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 281, column: 17)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 280, column: 21)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 280, column: 13)
!689 = distinct !DILexicalBlock(scope: !669, file: !3, line: 277, column: 19)
!690 = !DILocalVariable(name: "_wc_p", scope: !691, file: !3, line: 289, type: !25)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 289, column: 25)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 289, column: 25)
!693 = distinct !DILexicalBlock(scope: !680, file: !3, line: 289, column: 25)
!694 = !DILocalVariable(name: "_wc_p", scope: !695, file: !3, line: 289, type: !25)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 289, column: 25)
!696 = !DILocalVariable(name: "_wc_p", scope: !697, file: !3, line: 289, type: !25)
!697 = distinct !DILexicalBlock(scope: !692, file: !3, line: 289, column: 25)
!698 = !DILocalVariable(name: "_wc_p", scope: !699, file: !3, line: 289, type: !25)
!699 = distinct !DILexicalBlock(scope: !692, file: !3, line: 289, column: 25)
!700 = !DILocalVariable(name: "_y", scope: !701, file: !3, line: 297, type: !37)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 297, column: 13)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 296, column: 23)
!703 = distinct !DILexicalBlock(scope: !689, file: !3, line: 296, column: 13)
!704 = !DILocalVariable(name: "_wc_p", scope: !705, file: !3, line: 297, type: !25)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 297, column: 13)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 297, column: 13)
!707 = distinct !DILexicalBlock(scope: !701, file: !3, line: 297, column: 13)
!708 = !DILocalVariable(name: "_wc_p", scope: !709, file: !3, line: 297, type: !25)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 297, column: 13)
!710 = !DILocalVariable(name: "_wc_p", scope: !711, file: !3, line: 297, type: !25)
!711 = distinct !DILexicalBlock(scope: !706, file: !3, line: 297, column: 13)
!712 = !DILocalVariable(name: "_wc_p", scope: !713, file: !3, line: 297, type: !25)
!713 = distinct !DILexicalBlock(scope: !706, file: !3, line: 297, column: 13)
!714 = !DILocation(line: 258, column: 37, scope: !669)
!715 = !DILocation(line: 258, column: 49, scope: !669)
!716 = !DILocation(line: 258, column: 60, scope: !669)
!717 = !DILocation(line: 272, column: 5, scope: !669)
!718 = !DILocation(line: 272, column: 12, scope: !669)
!719 = !DILocation(line: 273, column: 5, scope: !669)
!720 = !DILocation(line: 273, column: 9, scope: !669)
!721 = !DILocation(line: 274, column: 5, scope: !669)
!722 = !DILocation(line: 274, column: 13, scope: !669)
!723 = !DILocation(line: 275, column: 5, scope: !669)
!724 = !DILocation(line: 275, column: 14, scope: !669)
!725 = !DILocation(line: 275, column: 21, scope: !669)
!726 = !DILocation(line: 277, column: 5, scope: !669)
!727 = !DILocation(line: 277, column: 15, scope: !669)
!728 = !DILocation(line: 278, column: 17, scope: !689)
!729 = !DILocation(line: 278, column: 13, scope: !689)
!730 = !DILocation(line: 278, column: 11, scope: !689)
!731 = !DILocation(line: 280, column: 13, scope: !688)
!732 = !DILocation(line: 280, column: 13, scope: !689)
!733 = !DILocation(line: 281, column: 18, scope: !686)
!734 = !DILocation(line: 281, column: 20, scope: !686)
!735 = !DILocation(line: 281, column: 28, scope: !686)
!736 = !DILocation(line: 281, column: 17, scope: !687)
!737 = !DILocation(line: 282, column: 17, scope: !738)
!738 = distinct !DILexicalBlock(scope: !686, file: !3, line: 281, column: 37)
!739 = !DILocation(line: 284, column: 22, scope: !685)
!740 = !DILocation(line: 284, column: 24, scope: !685)
!741 = !DILocation(line: 284, column: 33, scope: !685)
!742 = !DILocation(line: 284, column: 35, scope: !685)
!743 = !DILocation(line: 284, column: 30, scope: !685)
!744 = !DILocation(line: 284, column: 19, scope: !685)
!745 = !DILocation(line: 285, column: 22, scope: !684)
!746 = !DILocation(line: 285, column: 21, scope: !685)
!747 = !DILocation(line: 286, column: 25, scope: !682)
!748 = !DILocation(line: 286, column: 29, scope: !682)
!749 = !DILocation(line: 286, column: 27, scope: !682)
!750 = !DILocation(line: 286, column: 34, scope: !682)
!751 = !DILocation(line: 286, column: 38, scope: !682)
!752 = !DILocation(line: 286, column: 40, scope: !682)
!753 = !DILocation(line: 286, column: 50, scope: !682)
!754 = !DILocation(line: 286, column: 53, scope: !682)
!755 = !DILocation(line: 286, column: 55, scope: !682)
!756 = !DILocation(line: 286, column: 25, scope: !683)
!757 = !DILocation(line: 287, column: 25, scope: !758)
!758 = distinct !DILexicalBlock(scope: !682, file: !3, line: 286, column: 67)
!759 = !DILocation(line: 289, column: 25, scope: !681)
!760 = !DILocation(line: 289, column: 25, scope: !680)
!761 = !DILocation(line: 289, column: 25, scope: !693)
!762 = !DILocation(line: 289, column: 25, scope: !692)
!763 = !DILocation(line: 289, column: 25, scope: !691)
!764 = !DILocation(line: 289, column: 25, scope: !695)
!765 = !DILocation(line: 289, column: 25, scope: !697)
!766 = !DILocation(line: 289, column: 25, scope: !699)
!767 = !DILocation(line: 291, column: 17, scope: !683)
!768 = !DILocation(line: 292, column: 17, scope: !685)
!769 = distinct !{!769, !726, !770, !232}
!770 = !DILocation(line: 322, column: 5, scope: !669)
!771 = !DILocation(line: 296, column: 13, scope: !703)
!772 = !DILocation(line: 296, column: 15, scope: !703)
!773 = !DILocation(line: 296, column: 13, scope: !689)
!774 = !DILocation(line: 297, column: 13, scope: !702)
!775 = !DILocation(line: 297, column: 13, scope: !701)
!776 = !DILocation(line: 297, column: 13, scope: !707)
!777 = !DILocation(line: 297, column: 13, scope: !706)
!778 = !DILocation(line: 297, column: 13, scope: !705)
!779 = !DILocation(line: 297, column: 13, scope: !709)
!780 = !DILocation(line: 297, column: 13, scope: !711)
!781 = !DILocation(line: 297, column: 13, scope: !713)
!782 = !DILocation(line: 298, column: 9, scope: !702)
!783 = !DILocation(line: 298, column: 20, scope: !784)
!784 = distinct !DILexicalBlock(scope: !703, file: !3, line: 298, column: 20)
!785 = !DILocation(line: 298, column: 22, scope: !784)
!786 = !DILocation(line: 298, column: 29, scope: !784)
!787 = !DILocation(line: 298, column: 32, scope: !784)
!788 = !DILocation(line: 298, column: 34, scope: !784)
!789 = !DILocation(line: 298, column: 20, scope: !703)
!790 = !DILocation(line: 300, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !784, file: !3, line: 298, column: 43)
!792 = !DILocation(line: 301, column: 20, scope: !793)
!793 = distinct !DILexicalBlock(scope: !784, file: !3, line: 301, column: 20)
!794 = !DILocation(line: 301, column: 22, scope: !793)
!795 = !DILocation(line: 301, column: 20, scope: !784)
!796 = !DILocation(line: 302, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !3, line: 301, column: 30)
!798 = !DILocation(line: 302, column: 19, scope: !797)
!799 = !DILocation(line: 302, column: 15, scope: !797)
!800 = !DILocation(line: 303, column: 20, scope: !797)
!801 = !DILocation(line: 304, column: 18, scope: !797)
!802 = !DILocation(line: 305, column: 9, scope: !797)
!803 = !DILocation(line: 305, column: 20, scope: !804)
!804 = distinct !DILexicalBlock(scope: !793, file: !3, line: 305, column: 20)
!805 = !DILocation(line: 305, column: 22, scope: !804)
!806 = !DILocation(line: 305, column: 20, scope: !793)
!807 = !DILocation(line: 306, column: 17, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !3, line: 305, column: 30)
!809 = !DILocation(line: 306, column: 19, scope: !808)
!810 = !DILocation(line: 306, column: 15, scope: !808)
!811 = !DILocation(line: 307, column: 20, scope: !808)
!812 = !DILocation(line: 308, column: 18, scope: !808)
!813 = !DILocation(line: 309, column: 9, scope: !808)
!814 = !DILocation(line: 309, column: 20, scope: !815)
!815 = distinct !DILexicalBlock(scope: !804, file: !3, line: 309, column: 20)
!816 = !DILocation(line: 309, column: 22, scope: !815)
!817 = !DILocation(line: 309, column: 20, scope: !804)
!818 = !DILocation(line: 310, column: 17, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 309, column: 30)
!820 = !DILocation(line: 310, column: 19, scope: !819)
!821 = !DILocation(line: 310, column: 15, scope: !819)
!822 = !DILocation(line: 311, column: 20, scope: !819)
!823 = !DILocation(line: 312, column: 18, scope: !819)
!824 = !DILocation(line: 313, column: 9, scope: !819)
!825 = !DILocation(line: 313, column: 20, scope: !826)
!826 = distinct !DILexicalBlock(scope: !815, file: !3, line: 313, column: 20)
!827 = !DILocation(line: 313, column: 22, scope: !826)
!828 = !DILocation(line: 313, column: 20, scope: !815)
!829 = !DILocation(line: 314, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 313, column: 30)
!831 = !DILocation(line: 314, column: 19, scope: !830)
!832 = !DILocation(line: 314, column: 15, scope: !830)
!833 = !DILocation(line: 315, column: 20, scope: !830)
!834 = !DILocation(line: 316, column: 18, scope: !830)
!835 = !DILocation(line: 317, column: 9, scope: !830)
!836 = !DILocation(line: 318, column: 17, scope: !837)
!837 = distinct !DILexicalBlock(scope: !826, file: !3, line: 317, column: 16)
!838 = !DILocation(line: 318, column: 19, scope: !837)
!839 = !DILocation(line: 318, column: 15, scope: !837)
!840 = !DILocation(line: 319, column: 20, scope: !837)
!841 = !DILocation(line: 320, column: 18, scope: !837)
!842 = !DILocation(line: 324, column: 12, scope: !669)
!843 = !DILocation(line: 324, column: 34, scope: !669)
!844 = !DILocation(line: 324, column: 41, scope: !669)
!845 = !DILocation(line: 324, column: 5, scope: !669)
!846 = !DILocation(line: 327, column: 1, scope: !669)
!847 = !DISubprogram(name: "nasm_malloc", scope: !848, file: !848, line: 64, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DIFile(filename: "./include/nasmlib.h", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "cd87db651c56070455313058ded731a5")
!849 = !DISubroutineType(types: !850)
!850 = !{!35, !6}
