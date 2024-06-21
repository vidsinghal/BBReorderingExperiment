; ModuleID = 'samples/207.bc'
source_filename = "json_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdk_json_write_ctx = type { ptr, ptr, i32, i32, i8, i8, i8, i64, [4096 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.spdk_json_val = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [9 x i8] c"%010lu%s\00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [6 x i8] c"%lu%s\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [6 x i8] c"%.20e\00", align 1, !dbg !37
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !39
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !44
@.str.13 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !46
@.str.14 = private unnamed_addr constant [2 x i8] c"{\00", align 1, !dbg !48
@.str.15 = private unnamed_addr constant [2 x i8] c"}\00", align 1, !dbg !50
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1, !dbg !52
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !54
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !56
@.str.19 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !58
@write_codepoint.escapes = internal constant [93 x i8] c"\00\00\00\00\00\00\00\00btn\00fr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\\", align 16, !dbg !60
@__const.write_hex_2.hex = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.20 = private unnamed_addr constant [3 x i8] c"  \00", align 1, !dbg !125

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_json_write_begin(ptr noundef %write_cb, ptr noundef %cb_ctx, i32 noundef %flags) #0 !dbg !146 {
entry:
  %retval = alloca ptr, align 8
  %write_cb.addr = alloca ptr, align 8
  %cb_ctx.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %w = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %write_cb, ptr %write_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %write_cb.addr, metadata !150, metadata !DIExpression()), !dbg !154
  store ptr %cb_ctx, ptr %cb_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_ctx.addr, metadata !151, metadata !DIExpression()), !dbg !155
  store i32 %flags, ptr %flags.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !152, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #15, !dbg !157
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !153, metadata !DIExpression()), !dbg !158
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 4136) #16, !dbg !159
  store ptr %call, ptr %w, align 8, !dbg !160
  %0 = load ptr, ptr %w, align 8, !dbg !161
  %cmp = icmp eq ptr %0, null, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w, align 8, !dbg !165
  store ptr %1, ptr %retval, align 8, !dbg !167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !167

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %write_cb.addr, align 8, !dbg !168
  %3 = load ptr, ptr %w, align 8, !dbg !169
  %write_cb1 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %3, i32 0, i32 0, !dbg !170
  store ptr %2, ptr %write_cb1, align 8, !dbg !171
  %4 = load ptr, ptr %cb_ctx.addr, align 8, !dbg !172
  %5 = load ptr, ptr %w, align 8, !dbg !173
  %cb_ctx2 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %5, i32 0, i32 1, !dbg !174
  store ptr %4, ptr %cb_ctx2, align 8, !dbg !175
  %6 = load i32, ptr %flags.addr, align 4, !dbg !176
  %7 = load ptr, ptr %w, align 8, !dbg !177
  %flags3 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %7, i32 0, i32 2, !dbg !178
  store i32 %6, ptr %flags3, align 8, !dbg !179
  %8 = load ptr, ptr %w, align 8, !dbg !180
  %indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %8, i32 0, i32 3, !dbg !181
  store i32 0, ptr %indent, align 4, !dbg !182
  %9 = load ptr, ptr %w, align 8, !dbg !183
  %new_indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %9, i32 0, i32 4, !dbg !184
  store i8 0, ptr %new_indent, align 8, !dbg !185
  %10 = load ptr, ptr %w, align 8, !dbg !186
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %10, i32 0, i32 5, !dbg !187
  store i8 1, ptr %first_value, align 1, !dbg !188
  %11 = load ptr, ptr %w, align 8, !dbg !189
  %failed = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %11, i32 0, i32 6, !dbg !190
  store i8 0, ptr %failed, align 2, !dbg !191
  %12 = load ptr, ptr %w, align 8, !dbg !192
  %buf_filled = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %12, i32 0, i32 7, !dbg !193
  store i64 0, ptr %buf_filled, align 8, !dbg !194
  %13 = load ptr, ptr %w, align 8, !dbg !195
  store ptr %13, ptr %retval, align 8, !dbg !196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #15, !dbg !197
  %14 = load ptr, ptr %retval, align 8, !dbg !197
  ret ptr %14, !dbg !197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !198 noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_end(ptr noundef %w) #0 !dbg !204 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %failed = alloca i8, align 1
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 1, ptr %failed) #15, !dbg !212
  tail call void @llvm.dbg.declare(metadata ptr %failed, metadata !209, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !214
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !210, metadata !DIExpression()), !dbg !215
  %0 = load ptr, ptr %w.addr, align 8, !dbg !216
  %cmp = icmp eq ptr %0, null, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !222
  %failed1 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %1, i32 0, i32 6, !dbg !223
  %2 = load i8, ptr %failed1, align 2, !dbg !223, !range !224, !noundef !225
  %tobool = trunc i8 %2 to i1, !dbg !223
  %frombool = zext i1 %tobool to i8, !dbg !226
  store i8 %frombool, ptr %failed, align 1, !dbg !226
  %3 = load ptr, ptr %w.addr, align 8, !dbg !227
  %call = call i32 @flush_buf(ptr noundef %3), !dbg !228
  store i32 %call, ptr %rc, align 4, !dbg !229
  %4 = load i32, ptr %rc, align 4, !dbg !230
  %cmp2 = icmp ne i32 %4, 0, !dbg !232
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !233

if.then3:                                         ; preds = %if.end
  store i8 1, ptr %failed, align 1, !dbg !234
  br label %if.end4, !dbg !236

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !237
  call void @free(ptr noundef %5) #15, !dbg !238
  %6 = load i8, ptr %failed, align 1, !dbg !239, !range !224, !noundef !225
  %tobool5 = trunc i8 %6 to i1, !dbg !239
  %7 = zext i1 %tobool5 to i64, !dbg !239
  %cond = select i1 %tobool5, i32 -1, i32 0, !dbg !239
  store i32 %cond, ptr %retval, align 4, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !241
  call void @llvm.lifetime.end.p0(i64 1, ptr %failed) #15, !dbg !241
  %8 = load i32, ptr %retval, align 4, !dbg !241
  ret i32 %8, !dbg !241
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @flush_buf(ptr noundef %w) #0 !dbg !242 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !247
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !245, metadata !DIExpression()), !dbg !248
  %0 = load ptr, ptr %w.addr, align 8, !dbg !249
  %write_cb = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 0, !dbg !250
  %1 = load ptr, ptr %write_cb, align 8, !dbg !250
  %2 = load ptr, ptr %w.addr, align 8, !dbg !251
  %cb_ctx = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %2, i32 0, i32 1, !dbg !252
  %3 = load ptr, ptr %cb_ctx, align 8, !dbg !252
  %4 = load ptr, ptr %w.addr, align 8, !dbg !253
  %buf = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %4, i32 0, i32 8, !dbg !254
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !253
  %5 = load ptr, ptr %w.addr, align 8, !dbg !255
  %buf_filled = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %5, i32 0, i32 7, !dbg !256
  %6 = load i64, ptr %buf_filled, align 8, !dbg !256
  %call = call i32 %1(ptr noundef %3, ptr noundef %arraydecay, i64 noundef %6), !dbg !249
  store i32 %call, ptr %rc, align 4, !dbg !257
  %7 = load i32, ptr %rc, align 4, !dbg !258
  %cmp = icmp ne i32 %7, 0, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %w.addr, align 8, !dbg !262
  %call1 = call i32 @fail(ptr noundef %8), !dbg !264
  store i32 %call1, ptr %retval, align 4, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %w.addr, align 8, !dbg !266
  %buf_filled2 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %9, i32 0, i32 7, !dbg !267
  store i64 0, ptr %buf_filled2, align 8, !dbg !268
  store i32 0, ptr %retval, align 4, !dbg !269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !269

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !270
  %10 = load i32, ptr %retval, align 4, !dbg !270
  ret i32 %10, !dbg !270
}

; Function Attrs: nounwind
declare !dbg !271 void @free(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_val_raw(ptr noundef %w, ptr noundef %data, i64 noundef %len) #0 !dbg !274 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !278, metadata !DIExpression()), !dbg !281
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !279, metadata !DIExpression()), !dbg !282
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !280, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %w.addr, align 8, !dbg !284
  %call = call i32 @begin_value(ptr noundef %0), !dbg !286
  %tobool = icmp ne i32 %call, 0, !dbg !286
  br i1 %tobool, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !288
  %call1 = call i32 @fail(ptr noundef %1), !dbg !290
  store i32 %call1, ptr %retval, align 4, !dbg !291
  br label %return, !dbg !291

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !292
  %3 = load ptr, ptr %data.addr, align 8, !dbg !293
  %4 = load i64, ptr %len.addr, align 8, !dbg !294
  %call2 = call i32 @emit(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !295
  store i32 %call2, ptr %retval, align 4, !dbg !296
  br label %return, !dbg !296

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !297
  ret i32 %5, !dbg !297
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @begin_value(ptr noundef %w) #0 !dbg !298 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load ptr, ptr %w.addr, align 8, !dbg !302
  %new_indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 4, !dbg !304
  %1 = load i8, ptr %new_indent, align 8, !dbg !304, !range !224, !noundef !225
  %tobool = trunc i8 %1 to i1, !dbg !304
  br i1 %tobool, label %if.then, label %if.end9, !dbg !305

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !306
  %call = call i32 @emit_fmt(ptr noundef %2, ptr noundef @.str.12, i64 noundef 1), !dbg !309
  %tobool1 = icmp ne i32 %call, 0, !dbg !309
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !310

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %w.addr, align 8, !dbg !311
  %call3 = call i32 @fail(ptr noundef %3), !dbg !313
  store i32 %call3, ptr %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %w.addr, align 8, !dbg !315
  %call4 = call i32 @emit_indent(ptr noundef %4), !dbg !317
  %tobool5 = icmp ne i32 %call4, 0, !dbg !317
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !318

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !319
  %call7 = call i32 @fail(ptr noundef %5), !dbg !321
  store i32 %call7, ptr %retval, align 4, !dbg !322
  br label %return, !dbg !322

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !323

if.end9:                                          ; preds = %if.end8, %entry
  %6 = load ptr, ptr %w.addr, align 8, !dbg !324
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %6, i32 0, i32 5, !dbg !326
  %7 = load i8, ptr %first_value, align 1, !dbg !326, !range !224, !noundef !225
  %tobool10 = trunc i8 %7 to i1, !dbg !326
  br i1 %tobool10, label %if.end27, label %if.then11, !dbg !327

if.then11:                                        ; preds = %if.end9
  %8 = load ptr, ptr %w.addr, align 8, !dbg !328
  %call12 = call i32 @emit(ptr noundef %8, ptr noundef @.str.18, i64 noundef 1), !dbg !331
  %tobool13 = icmp ne i32 %call12, 0, !dbg !331
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !332

if.then14:                                        ; preds = %if.then11
  %9 = load ptr, ptr %w.addr, align 8, !dbg !333
  %call15 = call i32 @fail(ptr noundef %9), !dbg !335
  store i32 %call15, ptr %retval, align 4, !dbg !336
  br label %return, !dbg !336

if.end16:                                         ; preds = %if.then11
  %10 = load ptr, ptr %w.addr, align 8, !dbg !337
  %call17 = call i32 @emit_fmt(ptr noundef %10, ptr noundef @.str.12, i64 noundef 1), !dbg !339
  %tobool18 = icmp ne i32 %call17, 0, !dbg !339
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !340

if.then19:                                        ; preds = %if.end16
  %11 = load ptr, ptr %w.addr, align 8, !dbg !341
  %call20 = call i32 @fail(ptr noundef %11), !dbg !343
  store i32 %call20, ptr %retval, align 4, !dbg !344
  br label %return, !dbg !344

if.end21:                                         ; preds = %if.end16
  %12 = load ptr, ptr %w.addr, align 8, !dbg !345
  %call22 = call i32 @emit_indent(ptr noundef %12), !dbg !347
  %tobool23 = icmp ne i32 %call22, 0, !dbg !347
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !348

if.then24:                                        ; preds = %if.end21
  %13 = load ptr, ptr %w.addr, align 8, !dbg !349
  %call25 = call i32 @fail(ptr noundef %13), !dbg !351
  store i32 %call25, ptr %retval, align 4, !dbg !352
  br label %return, !dbg !352

if.end26:                                         ; preds = %if.end21
  br label %if.end27, !dbg !353

if.end27:                                         ; preds = %if.end26, %if.end9
  %14 = load ptr, ptr %w.addr, align 8, !dbg !354
  %first_value28 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %14, i32 0, i32 5, !dbg !355
  store i8 0, ptr %first_value28, align 1, !dbg !356
  %15 = load ptr, ptr %w.addr, align 8, !dbg !357
  %new_indent29 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %15, i32 0, i32 4, !dbg !358
  store i8 0, ptr %new_indent29, align 8, !dbg !359
  store i32 0, ptr %retval, align 4, !dbg !360
  br label %return, !dbg !360

return:                                           ; preds = %if.end27, %if.then24, %if.then19, %if.then14, %if.then6, %if.then2
  %16 = load i32, ptr %retval, align 4, !dbg !361
  ret i32 %16, !dbg !361
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @fail(ptr noundef %w) #0 !dbg !362 {
entry:
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %w.addr, align 8, !dbg !366
  %failed = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 6, !dbg !367
  store i8 1, ptr %failed, align 2, !dbg !368
  ret i32 -1, !dbg !369
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @emit(ptr noundef %w, ptr noundef %data, i64 noundef %size) #4 !dbg !370 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %buf_remain = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !372, metadata !DIExpression()), !dbg !376
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !373, metadata !DIExpression()), !dbg !377
  store i64 %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !374, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_remain) #15, !dbg !379
  tail call void @llvm.dbg.declare(metadata ptr %buf_remain, metadata !375, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %w.addr, align 8, !dbg !381
  %buf_filled = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 7, !dbg !382
  %1 = load i64, ptr %buf_filled, align 8, !dbg !382
  %sub = sub i64 4096, %1, !dbg !383
  store i64 %sub, ptr %buf_remain, align 8, !dbg !380
  %2 = load i64, ptr %size.addr, align 8, !dbg !384
  %3 = load i64, ptr %buf_remain, align 8, !dbg !384
  %cmp = icmp ugt i64 %2, %3, !dbg !384
  %conv = zext i1 %cmp to i32, !dbg !384
  %conv1 = sext i32 %conv to i64, !dbg !384
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !384
  %tobool = icmp ne i64 %expval, 0, !dbg !384
  br i1 %tobool, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !387
  %5 = load ptr, ptr %data.addr, align 8, !dbg !389
  %6 = load i64, ptr %size.addr, align 8, !dbg !390
  %call = call i32 @emit_buf_full(ptr noundef %4, ptr noundef %5, i64 noundef %6), !dbg !391
  store i32 %call, ptr %retval, align 4, !dbg !392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !392

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %w.addr, align 8, !dbg !393
  %buf = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %7, i32 0, i32 8, !dbg !394
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !393
  %8 = load ptr, ptr %w.addr, align 8, !dbg !395
  %buf_filled2 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %8, i32 0, i32 7, !dbg !396
  %9 = load i64, ptr %buf_filled2, align 8, !dbg !396
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %9, !dbg !397
  %10 = load ptr, ptr %data.addr, align 8, !dbg !398
  %11 = load i64, ptr %size.addr, align 8, !dbg !399
  %call3 = call ptr @memcpy.inline(ptr noundef %add.ptr, ptr noundef %10, i64 noundef %11) #15, !dbg !400
  %12 = load i64, ptr %size.addr, align 8, !dbg !401
  %13 = load ptr, ptr %w.addr, align 8, !dbg !402
  %buf_filled4 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %13, i32 0, i32 7, !dbg !403
  %14 = load i64, ptr %buf_filled4, align 8, !dbg !404
  %add = add i64 %14, %12, !dbg !404
  store i64 %add, ptr %buf_filled4, align 8, !dbg !404
  store i32 0, ptr %retval, align 4, !dbg !405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_remain) #15, !dbg !406
  %15 = load i32, ptr %retval, align 4, !dbg !406
  ret i32 %15, !dbg !406
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_null(ptr noundef %w) #0 !dbg !407 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load ptr, ptr %w.addr, align 8, !dbg !411
  %call = call i32 @begin_value(ptr noundef %0), !dbg !413
  %tobool = icmp ne i32 %call, 0, !dbg !413
  br i1 %tobool, label %if.then, label %if.end, !dbg !414

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !415
  %call1 = call i32 @fail(ptr noundef %1), !dbg !417
  store i32 %call1, ptr %retval, align 4, !dbg !418
  br label %return, !dbg !418

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !419
  %call2 = call i32 @emit(ptr noundef %2, ptr noundef @.str, i64 noundef 4), !dbg !420
  store i32 %call2, ptr %retval, align 4, !dbg !421
  br label %return, !dbg !421

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !422
  ret i32 %3, !dbg !422
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_bool(ptr noundef %w, i1 noundef zeroext %val) #0 !dbg !423 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !427, metadata !DIExpression()), !dbg !429
  %frombool = zext i1 %val to i8
  store i8 %frombool, ptr %val.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !428, metadata !DIExpression()), !dbg !430
  %0 = load ptr, ptr %w.addr, align 8, !dbg !431
  %call = call i32 @begin_value(ptr noundef %0), !dbg !433
  %tobool = icmp ne i32 %call, 0, !dbg !433
  br i1 %tobool, label %if.then, label %if.end, !dbg !434

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !435
  %call1 = call i32 @fail(ptr noundef %1), !dbg !437
  store i32 %call1, ptr %retval, align 4, !dbg !438
  br label %return, !dbg !438

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %val.addr, align 1, !dbg !439, !range !224, !noundef !225
  %tobool2 = trunc i8 %2 to i1, !dbg !439
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !441

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %w.addr, align 8, !dbg !442
  %call4 = call i32 @emit(ptr noundef %3, ptr noundef @.str.1, i64 noundef 4), !dbg !444
  store i32 %call4, ptr %retval, align 4, !dbg !445
  br label %return, !dbg !445

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %w.addr, align 8, !dbg !446
  %call5 = call i32 @emit(ptr noundef %4, ptr noundef @.str.2, i64 noundef 5), !dbg !448
  store i32 %call5, ptr %retval, align 4, !dbg !449
  br label %return, !dbg !449

return:                                           ; preds = %if.else, %if.then3, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !450
  ret i32 %5, !dbg !450
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_uint8(ptr noundef %w, i8 noundef zeroext %val) #0 !dbg !451 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !455, metadata !DIExpression()), !dbg !462
  store i8 %val, ptr %val.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !456, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !464
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !457, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !466
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !461, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %w.addr, align 8, !dbg !468
  %call = call i32 @begin_value(ptr noundef %0), !dbg !470
  %tobool = icmp ne i32 %call, 0, !dbg !470
  br i1 %tobool, label %if.then, label %if.end, !dbg !471

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !472
  %call1 = call i32 @fail(ptr noundef %1), !dbg !474
  store i32 %call1, ptr %retval, align 4, !dbg !475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !475

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !476
  %2 = load i8, ptr %val.addr, align 1, !dbg !476
  %conv = zext i8 %2 to i32, !dbg !476
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.3, i32 noundef %conv), !dbg !476
  store i32 %call2, ptr %count, align 4, !dbg !477
  %3 = load i32, ptr %count, align 4, !dbg !478
  %cmp = icmp sle i32 %3, 0, !dbg !480
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !481

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !482
  %conv4 = sext i32 %4 to i64, !dbg !483
  %cmp5 = icmp uge i64 %conv4, 32, !dbg !484
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !485

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !486
  %call8 = call i32 @fail(ptr noundef %5), !dbg !488
  store i32 %call8, ptr %retval, align 4, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !489

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !490
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !491
  %7 = load i32, ptr %count, align 4, !dbg !492
  %conv11 = sext i32 %7 to i64, !dbg !492
  %call12 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay10, i64 noundef %conv11), !dbg !493
  store i32 %call12, ptr %retval, align 4, !dbg !494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !494

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !495
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !495
  %8 = load i32, ptr %retval, align 4, !dbg !495
  ret i32 %8, !dbg !495
}

declare !dbg !496 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_uint16(ptr noundef %w, i16 noundef zeroext %val) #0 !dbg !503 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !507, metadata !DIExpression()), !dbg !511
  store i16 %val, ptr %val.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !508, metadata !DIExpression()), !dbg !512
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !513
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !509, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !515
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !510, metadata !DIExpression()), !dbg !516
  %0 = load ptr, ptr %w.addr, align 8, !dbg !517
  %call = call i32 @begin_value(ptr noundef %0), !dbg !519
  %tobool = icmp ne i32 %call, 0, !dbg !519
  br i1 %tobool, label %if.then, label %if.end, !dbg !520

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !521
  %call1 = call i32 @fail(ptr noundef %1), !dbg !523
  store i32 %call1, ptr %retval, align 4, !dbg !524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !524

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !525
  %2 = load i16, ptr %val.addr, align 2, !dbg !525
  %conv = zext i16 %2 to i32, !dbg !525
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.3, i32 noundef %conv), !dbg !525
  store i32 %call2, ptr %count, align 4, !dbg !526
  %3 = load i32, ptr %count, align 4, !dbg !527
  %cmp = icmp sle i32 %3, 0, !dbg !529
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !530

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !531
  %conv4 = sext i32 %4 to i64, !dbg !532
  %cmp5 = icmp uge i64 %conv4, 32, !dbg !533
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !534

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !535
  %call8 = call i32 @fail(ptr noundef %5), !dbg !537
  store i32 %call8, ptr %retval, align 4, !dbg !538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !538

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !539
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !540
  %7 = load i32, ptr %count, align 4, !dbg !541
  %conv11 = sext i32 %7 to i64, !dbg !541
  %call12 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay10, i64 noundef %conv11), !dbg !542
  store i32 %call12, ptr %retval, align 4, !dbg !543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !543

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !544
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !544
  %8 = load i32, ptr %retval, align 4, !dbg !544
  ret i32 %8, !dbg !544
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_int32(ptr noundef %w, i32 noundef %val) #0 !dbg !545 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !552, metadata !DIExpression()), !dbg !556
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !553, metadata !DIExpression()), !dbg !557
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !558
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !554, metadata !DIExpression()), !dbg !559
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !560
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !555, metadata !DIExpression()), !dbg !561
  %0 = load ptr, ptr %w.addr, align 8, !dbg !562
  %call = call i32 @begin_value(ptr noundef %0), !dbg !564
  %tobool = icmp ne i32 %call, 0, !dbg !564
  br i1 %tobool, label %if.then, label %if.end, !dbg !565

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !566
  %call1 = call i32 @fail(ptr noundef %1), !dbg !568
  store i32 %call1, ptr %retval, align 4, !dbg !569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !569

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !570
  %2 = load i32, ptr %val.addr, align 4, !dbg !570
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.4, i32 noundef %2), !dbg !570
  store i32 %call2, ptr %count, align 4, !dbg !571
  %3 = load i32, ptr %count, align 4, !dbg !572
  %cmp = icmp sle i32 %3, 0, !dbg !574
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !575

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !576
  %conv = sext i32 %4 to i64, !dbg !577
  %cmp3 = icmp uge i64 %conv, 32, !dbg !578
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !579

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !580
  %call6 = call i32 @fail(ptr noundef %5), !dbg !582
  store i32 %call6, ptr %retval, align 4, !dbg !583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !583

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !584
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !585
  %7 = load i32, ptr %count, align 4, !dbg !586
  %conv9 = sext i32 %7 to i64, !dbg !586
  %call10 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay8, i64 noundef %conv9), !dbg !587
  store i32 %call10, ptr %retval, align 4, !dbg !588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !588

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !589
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !589
  %8 = load i32, ptr %retval, align 4, !dbg !589
  ret i32 %8, !dbg !589
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_uint32(ptr noundef %w, i32 noundef %val) #0 !dbg !590 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !592, metadata !DIExpression()), !dbg !596
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !593, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !598
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !594, metadata !DIExpression()), !dbg !599
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !600
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !595, metadata !DIExpression()), !dbg !601
  %0 = load ptr, ptr %w.addr, align 8, !dbg !602
  %call = call i32 @begin_value(ptr noundef %0), !dbg !604
  %tobool = icmp ne i32 %call, 0, !dbg !604
  br i1 %tobool, label %if.then, label %if.end, !dbg !605

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !606
  %call1 = call i32 @fail(ptr noundef %1), !dbg !608
  store i32 %call1, ptr %retval, align 4, !dbg !609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !609

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !610
  %2 = load i32, ptr %val.addr, align 4, !dbg !610
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.3, i32 noundef %2), !dbg !610
  store i32 %call2, ptr %count, align 4, !dbg !611
  %3 = load i32, ptr %count, align 4, !dbg !612
  %cmp = icmp sle i32 %3, 0, !dbg !614
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !615

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !616
  %conv = sext i32 %4 to i64, !dbg !617
  %cmp3 = icmp uge i64 %conv, 32, !dbg !618
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !619

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !620
  %call6 = call i32 @fail(ptr noundef %5), !dbg !622
  store i32 %call6, ptr %retval, align 4, !dbg !623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !623

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !624
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !625
  %7 = load i32, ptr %count, align 4, !dbg !626
  %conv9 = sext i32 %7 to i64, !dbg !626
  %call10 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay8, i64 noundef %conv9), !dbg !627
  store i32 %call10, ptr %retval, align 4, !dbg !628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !628

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !629
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !629
  %8 = load i32, ptr %retval, align 4, !dbg !629
  ret i32 %8, !dbg !629
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_int64(ptr noundef %w, i64 noundef %val) #0 !dbg !630 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !637, metadata !DIExpression()), !dbg !641
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !638, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !643
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !639, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !645
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !640, metadata !DIExpression()), !dbg !646
  %0 = load ptr, ptr %w.addr, align 8, !dbg !647
  %call = call i32 @begin_value(ptr noundef %0), !dbg !649
  %tobool = icmp ne i32 %call, 0, !dbg !649
  br i1 %tobool, label %if.then, label %if.end, !dbg !650

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !651
  %call1 = call i32 @fail(ptr noundef %1), !dbg !653
  store i32 %call1, ptr %retval, align 4, !dbg !654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !654

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !655
  %2 = load i64, ptr %val.addr, align 8, !dbg !655
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.5, i64 noundef %2), !dbg !655
  store i32 %call2, ptr %count, align 4, !dbg !656
  %3 = load i32, ptr %count, align 4, !dbg !657
  %cmp = icmp sle i32 %3, 0, !dbg !659
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !660

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !661
  %conv = sext i32 %4 to i64, !dbg !662
  %cmp3 = icmp uge i64 %conv, 32, !dbg !663
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !664

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !665
  %call6 = call i32 @fail(ptr noundef %5), !dbg !667
  store i32 %call6, ptr %retval, align 4, !dbg !668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !668

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !669
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !670
  %7 = load i32, ptr %count, align 4, !dbg !671
  %conv9 = sext i32 %7 to i64, !dbg !671
  %call10 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay8, i64 noundef %conv9), !dbg !672
  store i32 %call10, ptr %retval, align 4, !dbg !673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !673

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !674
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !674
  %8 = load i32, ptr %retval, align 4, !dbg !674
  ret i32 %8, !dbg !674
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_uint64(ptr noundef %w, i64 noundef %val) #0 !dbg !675 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !681, metadata !DIExpression()), !dbg !685
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !682, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !687
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !683, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !689
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !684, metadata !DIExpression()), !dbg !690
  %0 = load ptr, ptr %w.addr, align 8, !dbg !691
  %call = call i32 @begin_value(ptr noundef %0), !dbg !693
  %tobool = icmp ne i32 %call, 0, !dbg !693
  br i1 %tobool, label %if.then, label %if.end, !dbg !694

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !695
  %call1 = call i32 @fail(ptr noundef %1), !dbg !697
  store i32 %call1, ptr %retval, align 4, !dbg !698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !698

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !699
  %2 = load i64, ptr %val.addr, align 8, !dbg !699
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.6, i64 noundef %2), !dbg !699
  store i32 %call2, ptr %count, align 4, !dbg !700
  %3 = load i32, ptr %count, align 4, !dbg !701
  %cmp = icmp sle i32 %3, 0, !dbg !703
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !704

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !705
  %conv = sext i32 %4 to i64, !dbg !706
  %cmp3 = icmp uge i64 %conv, 32, !dbg !707
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !708

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !709
  %call6 = call i32 @fail(ptr noundef %5), !dbg !711
  store i32 %call6, ptr %retval, align 4, !dbg !712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !712

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !713
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !714
  %7 = load i32, ptr %count, align 4, !dbg !715
  %conv9 = sext i32 %7 to i64, !dbg !715
  %call10 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay8, i64 noundef %conv9), !dbg !716
  store i32 %call10, ptr %retval, align 4, !dbg !717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !717

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !718
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !718
  %8 = load i32, ptr %retval, align 4, !dbg !718
  ret i32 %8, !dbg !718
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_uint128(ptr noundef %w, i64 noundef %low_val, i64 noundef %high_val) #0 !dbg !719 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %low_val.addr = alloca i64, align 8
  %high_val.addr = alloca i64, align 8
  %buf = alloca [128 x i8], align 16
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %temp_buf = alloca [128 x i8], align 16
  %seg = alloca i64, align 8
  %total = alloca i128, align 16
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !723, metadata !DIExpression()), !dbg !738
  store i64 %low_val, ptr %low_val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %low_val.addr, metadata !724, metadata !DIExpression()), !dbg !739
  store i64 %high_val, ptr %high_val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %high_val.addr, metadata !725, metadata !DIExpression()), !dbg !740
  call void @llvm.lifetime.start.p0(i64 128, ptr %buf) #15, !dbg !741
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !726, metadata !DIExpression()), !dbg !742
  call void @llvm.memset.p0.i64(ptr align 16 %buf, i8 0, i64 128, i1 false), !dbg !742
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #15, !dbg !743
  tail call void @llvm.dbg.declare(metadata ptr %low, metadata !730, metadata !DIExpression()), !dbg !744
  %0 = load i64, ptr %low_val.addr, align 8, !dbg !745
  store i64 %0, ptr %low, align 8, !dbg !744
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #15, !dbg !743
  tail call void @llvm.dbg.declare(metadata ptr %high, metadata !731, metadata !DIExpression()), !dbg !746
  %1 = load i64, ptr %high_val.addr, align 8, !dbg !747
  store i64 %1, ptr %high, align 8, !dbg !746
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !748
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !732, metadata !DIExpression()), !dbg !749
  store i32 0, ptr %count, align 4, !dbg !749
  %2 = load ptr, ptr %w.addr, align 8, !dbg !750
  %call = call i32 @begin_value(ptr noundef %2), !dbg !752
  %tobool = icmp ne i32 %call, 0, !dbg !752
  br i1 %tobool, label %if.then, label %if.end, !dbg !753

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %w.addr, align 8, !dbg !754
  %call1 = call i32 @fail(ptr noundef %3), !dbg !756
  store i32 %call1, ptr %retval, align 4, !dbg !757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !757

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %high, align 8, !dbg !758
  %cmp = icmp ne i64 %4, 0, !dbg !759
  br i1 %cmp, label %if.then2, label %if.else27, !dbg !760

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 128, ptr %temp_buf) #15, !dbg !761
  tail call void @llvm.dbg.declare(metadata ptr %temp_buf, metadata !733, metadata !DIExpression()), !dbg !762
  call void @llvm.memset.p0.i64(ptr align 16 %temp_buf, i8 0, i64 128, i1 false), !dbg !762
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #15, !dbg !763
  tail call void @llvm.dbg.declare(metadata ptr %seg, metadata !736, metadata !DIExpression()), !dbg !764
  call void @llvm.lifetime.start.p0(i64 16, ptr %total) #15, !dbg !765
  tail call void @llvm.dbg.declare(metadata ptr %total, metadata !737, metadata !DIExpression()), !dbg !766
  %5 = load i64, ptr %low, align 8, !dbg !767
  %conv = zext i64 %5 to i128, !dbg !768
  %6 = load i64, ptr %high, align 8, !dbg !769
  %conv3 = zext i64 %6 to i128, !dbg !770
  %shl = shl i128 %conv3, 64, !dbg !771
  %add = add i128 %conv, %shl, !dbg !772
  store i128 %add, ptr %total, align 16, !dbg !766
  br label %while.cond, !dbg !773

while.cond:                                       ; preds = %if.end21, %if.then2
  %7 = load i128, ptr %total, align 16, !dbg !774
  %tobool4 = icmp ne i128 %7, 0, !dbg !773
  br i1 %tobool4, label %while.body, label %while.end, !dbg !773

while.body:                                       ; preds = %while.cond
  %8 = load i128, ptr %total, align 16, !dbg !775
  %rem = urem i128 %8, 10000000000, !dbg !777
  %conv5 = trunc i128 %rem to i64, !dbg !775
  store i64 %conv5, ptr %seg, align 8, !dbg !778
  %9 = load i128, ptr %total, align 16, !dbg !779
  %div = udiv i128 %9, 10000000000, !dbg !780
  store i128 %div, ptr %total, align 16, !dbg !781
  %10 = load i128, ptr %total, align 16, !dbg !782
  %tobool6 = icmp ne i128 %10, 0, !dbg !782
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !784

if.then7:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds [128 x i8], ptr %temp_buf, i64 0, i64 0, !dbg !785
  %11 = load i64, ptr %seg, align 8, !dbg !785
  %arraydecay8 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !785
  %call9 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 128, i32 noundef 1, i64 noundef 128, ptr noundef @.str.7, i64 noundef %11, ptr noundef %arraydecay8), !dbg !785
  store i32 %call9, ptr %count, align 4, !dbg !787
  br label %if.end13, !dbg !788

if.else:                                          ; preds = %while.body
  %arraydecay10 = getelementptr inbounds [128 x i8], ptr %temp_buf, i64 0, i64 0, !dbg !789
  %12 = load i64, ptr %seg, align 8, !dbg !789
  %arraydecay11 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !789
  %call12 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay10, i64 noundef 128, i32 noundef 1, i64 noundef 128, ptr noundef @.str.8, i64 noundef %12, ptr noundef %arraydecay11), !dbg !789
  store i32 %call12, ptr %count, align 4, !dbg !791
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %13 = load i32, ptr %count, align 4, !dbg !792
  %cmp14 = icmp sle i32 %13, 0, !dbg !794
  br i1 %cmp14, label %if.then19, label %lor.lhs.false, !dbg !795

lor.lhs.false:                                    ; preds = %if.end13
  %14 = load i32, ptr %count, align 4, !dbg !796
  %conv16 = sext i32 %14 to i64, !dbg !797
  %cmp17 = icmp uge i64 %conv16, 128, !dbg !798
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !799

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  %15 = load ptr, ptr %w.addr, align 8, !dbg !800
  %call20 = call i32 @fail(ptr noundef %15), !dbg !802
  store i32 %call20, ptr %retval, align 4, !dbg !803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !803

if.end21:                                         ; preds = %lor.lhs.false
  %arraydecay22 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !804
  %arraydecay23 = getelementptr inbounds [128 x i8], ptr %temp_buf, i64 0, i64 0, !dbg !804
  %call24 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay22, i64 noundef 128, i32 noundef 1, i64 noundef 128, ptr noundef @.str.9, ptr noundef %arraydecay23), !dbg !804
  br label %while.cond, !dbg !773, !llvm.loop !805

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !807
  br label %cleanup, !dbg !807

cleanup:                                          ; preds = %while.end, %if.then19
  call void @llvm.lifetime.end.p0(i64 16, ptr %total) #15, !dbg !807
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #15, !dbg !807
  call void @llvm.lifetime.end.p0(i64 128, ptr %temp_buf) #15, !dbg !807
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39, !dbg !808

if.else27:                                        ; preds = %if.end
  %arraydecay28 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !809
  %16 = load i64, ptr %low, align 8, !dbg !809
  %call29 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay28, i64 noundef 128, i32 noundef 1, i64 noundef 128, ptr noundef @.str.6, i64 noundef %16), !dbg !809
  store i32 %call29, ptr %count, align 4, !dbg !811
  %17 = load i32, ptr %count, align 4, !dbg !812
  %cmp30 = icmp sle i32 %17, 0, !dbg !814
  br i1 %cmp30, label %if.then36, label %lor.lhs.false32, !dbg !815

lor.lhs.false32:                                  ; preds = %if.else27
  %18 = load i32, ptr %count, align 4, !dbg !816
  %conv33 = sext i32 %18 to i64, !dbg !817
  %cmp34 = icmp uge i64 %conv33, 128, !dbg !818
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !819

if.then36:                                        ; preds = %lor.lhs.false32, %if.else27
  %19 = load ptr, ptr %w.addr, align 8, !dbg !820
  %call37 = call i32 @fail(ptr noundef %19), !dbg !822
  store i32 %call37, ptr %retval, align 4, !dbg !823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !823

if.end38:                                         ; preds = %lor.lhs.false32
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %cleanup.cont
  %20 = load ptr, ptr %w.addr, align 8, !dbg !824
  %arraydecay40 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !825
  %21 = load i32, ptr %count, align 4, !dbg !826
  %conv41 = sext i32 %21 to i64, !dbg !826
  %call42 = call i32 @emit(ptr noundef %20, ptr noundef %arraydecay40, i64 noundef %conv41), !dbg !827
  store i32 %call42, ptr %retval, align 4, !dbg !828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !828

cleanup43:                                        ; preds = %if.end39, %if.then36, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !829
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #15, !dbg !829
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #15, !dbg !829
  call void @llvm.lifetime.end.p0(i64 128, ptr %buf) #15, !dbg !829
  %22 = load i32, ptr %retval, align 4, !dbg !829
  ret i32 %22, !dbg !829
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_uint128(ptr noundef %w, ptr noundef %name, i64 noundef %low_val, i64 noundef %high_val) #0 !dbg !830 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %low_val.addr = alloca i64, align 8
  %high_val.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !834, metadata !DIExpression()), !dbg !839
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !835, metadata !DIExpression()), !dbg !840
  store i64 %low_val, ptr %low_val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %low_val.addr, metadata !836, metadata !DIExpression()), !dbg !841
  store i64 %high_val, ptr %high_val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %high_val.addr, metadata !837, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !843
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !838, metadata !DIExpression()), !dbg !844
  %0 = load ptr, ptr %w.addr, align 8, !dbg !845
  %1 = load ptr, ptr %name.addr, align 8, !dbg !846
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !847
  store i32 %call, ptr %rc, align 4, !dbg !844
  %2 = load i32, ptr %rc, align 4, !dbg !848
  %tobool = icmp ne i32 %2, 0, !dbg !848
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !848

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !849
  br label %cond.end, !dbg !848

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !850
  %5 = load i64, ptr %low_val.addr, align 8, !dbg !851
  %6 = load i64, ptr %high_val.addr, align 8, !dbg !852
  %call1 = call i32 @spdk_json_write_uint128(ptr noundef %4, i64 noundef %5, i64 noundef %6), !dbg !853
  br label %cond.end, !dbg !848

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !848
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !854
  ret i32 %cond, !dbg !855
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_name(ptr noundef %w, ptr noundef %name) #0 !dbg !856 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !860, metadata !DIExpression()), !dbg !862
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !861, metadata !DIExpression()), !dbg !863
  %0 = load ptr, ptr %w.addr, align 8, !dbg !864
  %1 = load ptr, ptr %name.addr, align 8, !dbg !865
  %2 = load ptr, ptr %name.addr, align 8, !dbg !866
  %call = call i64 @strlen(ptr noundef %2) #17, !dbg !867
  %call1 = call i32 @spdk_json_write_name_raw(ptr noundef %0, ptr noundef %1, i64 noundef %call), !dbg !868
  ret i32 %call1, !dbg !869
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_double(ptr noundef %w, double noundef %val) #0 !dbg !870 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca double, align 8
  %buf = alloca [32 x i8], align 16
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !875, metadata !DIExpression()), !dbg !879
  store double %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !876, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #15, !dbg !881
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15, !dbg !883
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !878, metadata !DIExpression()), !dbg !884
  %0 = load ptr, ptr %w.addr, align 8, !dbg !885
  %call = call i32 @begin_value(ptr noundef %0), !dbg !887
  %tobool = icmp ne i32 %call, 0, !dbg !887
  br i1 %tobool, label %if.then, label %if.end, !dbg !888

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !889
  %call1 = call i32 @fail(ptr noundef %1), !dbg !891
  store i32 %call1, ptr %retval, align 4, !dbg !892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !892

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !893
  %2 = load double, ptr %val.addr, align 8, !dbg !893
  %call2 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef @.str.10, double noundef %2), !dbg !893
  store i32 %call2, ptr %count, align 4, !dbg !894
  %3 = load i32, ptr %count, align 4, !dbg !895
  %cmp = icmp sle i32 %3, 0, !dbg !897
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !898

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %count, align 4, !dbg !899
  %conv = sext i32 %4 to i64, !dbg !900
  %cmp3 = icmp uge i64 %conv, 32, !dbg !901
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !902

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !903
  %call6 = call i32 @fail(ptr noundef %5), !dbg !905
  store i32 %call6, ptr %retval, align 4, !dbg !906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !906

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %w.addr, align 8, !dbg !907
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !908
  %7 = load i32, ptr %count, align 4, !dbg !909
  %conv9 = sext i32 %7 to i64, !dbg !909
  %call10 = call i32 @emit(ptr noundef %6, ptr noundef %arraydecay8, i64 noundef %conv9), !dbg !910
  store i32 %call10, ptr %retval, align 4, !dbg !911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !911

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15, !dbg !912
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #15, !dbg !912
  %8 = load i32, ptr %retval, align 4, !dbg !912
  ret i32 %8, !dbg !912
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_string_raw(ptr noundef %w, ptr noundef %val, i64 noundef %len) #0 !dbg !913 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !917, metadata !DIExpression()), !dbg !920
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !918, metadata !DIExpression()), !dbg !921
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !919, metadata !DIExpression()), !dbg !922
  %0 = load ptr, ptr %w.addr, align 8, !dbg !923
  %call = call i32 @begin_value(ptr noundef %0), !dbg !925
  %tobool = icmp ne i32 %call, 0, !dbg !925
  br i1 %tobool, label %if.then, label %if.end, !dbg !926

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !927
  %call1 = call i32 @fail(ptr noundef %1), !dbg !929
  store i32 %call1, ptr %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !931
  %3 = load ptr, ptr %val.addr, align 8, !dbg !932
  %4 = load i64, ptr %len.addr, align 8, !dbg !933
  %call2 = call i32 @write_string_or_name(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !934
  store i32 %call2, ptr %retval, align 4, !dbg !935
  br label %return, !dbg !935

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !936
  ret i32 %5, !dbg !936
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @write_string_or_name(ptr noundef %w, ptr noundef %val, i64 noundef %len) #0 !dbg !937 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %codepoint_len = alloca i32, align 4
  %codepoint = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !939, metadata !DIExpression()), !dbg !947
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !940, metadata !DIExpression()), !dbg !948
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !950
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !942, metadata !DIExpression()), !dbg !951
  %0 = load ptr, ptr %val.addr, align 8, !dbg !952
  store ptr %0, ptr %p, align 8, !dbg !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !953
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !943, metadata !DIExpression()), !dbg !954
  %1 = load ptr, ptr %val.addr, align 8, !dbg !955
  %2 = load i64, ptr %len.addr, align 8, !dbg !956
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2, !dbg !957
  store ptr %add.ptr, ptr %end, align 8, !dbg !954
  %3 = load ptr, ptr %w.addr, align 8, !dbg !958
  %call = call i32 @emit(ptr noundef %3, ptr noundef @.str.19, i64 noundef 1), !dbg !960
  %tobool = icmp ne i32 %call, 0, !dbg !960
  br i1 %tobool, label %if.then, label %if.end, !dbg !961

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !962
  %call1 = call i32 @fail(ptr noundef %4), !dbg !964
  store i32 %call1, ptr %retval, align 4, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !965

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !966

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %5 = load ptr, ptr %p, align 8, !dbg !967
  %6 = load ptr, ptr %end, align 8, !dbg !968
  %cmp = icmp ne ptr %5, %6, !dbg !969
  br i1 %cmp, label %while.body, label %while.end, !dbg !966

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint_len) #15, !dbg !970
  tail call void @llvm.dbg.declare(metadata ptr %codepoint_len, metadata !944, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint) #15, !dbg !972
  tail call void @llvm.dbg.declare(metadata ptr %codepoint, metadata !946, metadata !DIExpression()), !dbg !973
  %7 = load ptr, ptr %p, align 8, !dbg !974
  %8 = load ptr, ptr %end, align 8, !dbg !975
  %call2 = call i32 @utf8_valid(ptr noundef %7, ptr noundef %8), !dbg !976
  store i32 %call2, ptr %codepoint_len, align 4, !dbg !977
  %9 = load i32, ptr %codepoint_len, align 4, !dbg !978
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
  ], !dbg !979

sw.bb:                                            ; preds = %while.body
  %10 = load ptr, ptr %p, align 8, !dbg !980
  %call3 = call i32 @utf8_decode_unsafe_1(ptr noundef %10), !dbg !982
  store i32 %call3, ptr %codepoint, align 4, !dbg !983
  br label %sw.epilog, !dbg !984

sw.bb4:                                           ; preds = %while.body
  %11 = load ptr, ptr %p, align 8, !dbg !985
  %call5 = call i32 @utf8_decode_unsafe_2(ptr noundef %11), !dbg !986
  store i32 %call5, ptr %codepoint, align 4, !dbg !987
  br label %sw.epilog, !dbg !988

sw.bb6:                                           ; preds = %while.body
  %12 = load ptr, ptr %p, align 8, !dbg !989
  %call7 = call i32 @utf8_decode_unsafe_3(ptr noundef %12), !dbg !990
  store i32 %call7, ptr %codepoint, align 4, !dbg !991
  br label %sw.epilog, !dbg !992

sw.bb8:                                           ; preds = %while.body
  %13 = load ptr, ptr %p, align 8, !dbg !993
  %call9 = call i32 @utf8_decode_unsafe_4(ptr noundef %13), !dbg !994
  store i32 %call9, ptr %codepoint, align 4, !dbg !995
  br label %sw.epilog, !dbg !996

sw.default:                                       ; preds = %while.body
  %14 = load ptr, ptr %w.addr, align 8, !dbg !997
  %call10 = call i32 @fail(ptr noundef %14), !dbg !998
  store i32 %call10, ptr %retval, align 4, !dbg !999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !999

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %15 = load ptr, ptr %w.addr, align 8, !dbg !1000
  %16 = load i32, ptr %codepoint, align 4, !dbg !1002
  %call11 = call i32 @write_codepoint(ptr noundef %15, i32 noundef %16), !dbg !1003
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1003
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !1004

if.then13:                                        ; preds = %sw.epilog
  %17 = load ptr, ptr %w.addr, align 8, !dbg !1005
  %call14 = call i32 @fail(ptr noundef %17), !dbg !1007
  store i32 %call14, ptr %retval, align 4, !dbg !1008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1008

if.end15:                                         ; preds = %sw.epilog
  %18 = load i32, ptr %codepoint_len, align 4, !dbg !1009
  %19 = load ptr, ptr %p, align 8, !dbg !1010
  %idx.ext = sext i32 %18 to i64, !dbg !1010
  %add.ptr16 = getelementptr inbounds i8, ptr %19, i64 %idx.ext, !dbg !1010
  store ptr %add.ptr16, ptr %p, align 8, !dbg !1010
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1011
  br label %cleanup, !dbg !1011

cleanup:                                          ; preds = %if.end15, %if.then13, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint) #15, !dbg !1011
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint_len) #15, !dbg !1011
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !966, !llvm.loop !1012

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %w.addr, align 8, !dbg !1013
  %call18 = call i32 @emit(ptr noundef %20, ptr noundef @.str.19, i64 noundef 1), !dbg !1014
  store i32 %call18, ptr %retval, align 4, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !1015

cleanup19:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1016
  %21 = load i32, ptr %retval, align 4, !dbg !1016
  ret i32 %21, !dbg !1016
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_string(ptr noundef %w, ptr noundef %val) #0 !dbg !1017 {
entry:
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1019, metadata !DIExpression()), !dbg !1021
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1020, metadata !DIExpression()), !dbg !1022
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1023
  %1 = load ptr, ptr %val.addr, align 8, !dbg !1024
  %2 = load ptr, ptr %val.addr, align 8, !dbg !1025
  %call = call i64 @strlen(ptr noundef %2) #17, !dbg !1026
  %call1 = call i32 @spdk_json_write_string_raw(ptr noundef %0, ptr noundef %1, i64 noundef %call), !dbg !1027
  ret i32 %call1, !dbg !1028
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1029 i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_string_utf16le_raw(ptr noundef %w, ptr noundef %val, i64 noundef %len) #0 !dbg !1033 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1039, metadata !DIExpression()), !dbg !1042
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1040, metadata !DIExpression()), !dbg !1043
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1041, metadata !DIExpression()), !dbg !1044
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1045
  %call = call i32 @begin_value(ptr noundef %0), !dbg !1047
  %tobool = icmp ne i32 %call, 0, !dbg !1047
  br i1 %tobool, label %if.then, label %if.end, !dbg !1048

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !1049
  %call1 = call i32 @fail(ptr noundef %1), !dbg !1051
  store i32 %call1, ptr %retval, align 4, !dbg !1052
  br label %return, !dbg !1052

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !1053
  %3 = load ptr, ptr %val.addr, align 8, !dbg !1054
  %4 = load i64, ptr %len.addr, align 8, !dbg !1055
  %call2 = call i32 @write_string_or_name_utf16le(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1056
  store i32 %call2, ptr %retval, align 4, !dbg !1057
  br label %return, !dbg !1057

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !1058
  ret i32 %5, !dbg !1058
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @write_string_or_name_utf16le(ptr noundef %w, ptr noundef %val, i64 noundef %len) #0 !dbg !1059 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %codepoint_len = alloca i32, align 4
  %codepoint = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1061, metadata !DIExpression()), !dbg !1069
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1062, metadata !DIExpression()), !dbg !1070
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1063, metadata !DIExpression()), !dbg !1071
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !1072
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1064, metadata !DIExpression()), !dbg !1073
  %0 = load ptr, ptr %val.addr, align 8, !dbg !1074
  store ptr %0, ptr %p, align 8, !dbg !1073
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !1075
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !1065, metadata !DIExpression()), !dbg !1076
  %1 = load ptr, ptr %val.addr, align 8, !dbg !1077
  %2 = load i64, ptr %len.addr, align 8, !dbg !1078
  %add.ptr = getelementptr inbounds i16, ptr %1, i64 %2, !dbg !1079
  store ptr %add.ptr, ptr %end, align 8, !dbg !1076
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1080
  %call = call i32 @emit(ptr noundef %3, ptr noundef @.str.19, i64 noundef 1), !dbg !1082
  %tobool = icmp ne i32 %call, 0, !dbg !1082
  br i1 %tobool, label %if.then, label %if.end, !dbg !1083

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1084
  %call1 = call i32 @fail(ptr noundef %4), !dbg !1086
  store i32 %call1, ptr %retval, align 4, !dbg !1087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !1087

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1088

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %5 = load ptr, ptr %p, align 8, !dbg !1089
  %6 = load ptr, ptr %end, align 8, !dbg !1090
  %cmp = icmp ne ptr %5, %6, !dbg !1091
  br i1 %cmp, label %while.body, label %while.end, !dbg !1088

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint_len) #15, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %codepoint_len, metadata !1066, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint) #15, !dbg !1094
  tail call void @llvm.dbg.declare(metadata ptr %codepoint, metadata !1068, metadata !DIExpression()), !dbg !1095
  %7 = load ptr, ptr %p, align 8, !dbg !1096
  %8 = load ptr, ptr %end, align 8, !dbg !1097
  %call2 = call i32 @utf16le_valid(ptr noundef %7, ptr noundef %8), !dbg !1098
  store i32 %call2, ptr %codepoint_len, align 4, !dbg !1099
  %9 = load i32, ptr %codepoint_len, align 4, !dbg !1100
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ], !dbg !1101

sw.bb:                                            ; preds = %while.body
  %10 = load ptr, ptr %p, align 8, !dbg !1102
  %arrayidx = getelementptr inbounds i16, ptr %10, i64 0, !dbg !1102
  %call3 = call zeroext i16 @from_le16(ptr noundef %arrayidx), !dbg !1104
  %conv = zext i16 %call3 to i32, !dbg !1104
  store i32 %conv, ptr %codepoint, align 4, !dbg !1105
  br label %sw.epilog, !dbg !1106

sw.bb4:                                           ; preds = %while.body
  %11 = load ptr, ptr %p, align 8, !dbg !1107
  %arrayidx5 = getelementptr inbounds i16, ptr %11, i64 0, !dbg !1107
  %call6 = call zeroext i16 @from_le16(ptr noundef %arrayidx5), !dbg !1108
  %conv7 = zext i16 %call6 to i32, !dbg !1108
  %12 = load ptr, ptr %p, align 8, !dbg !1109
  %arrayidx8 = getelementptr inbounds i16, ptr %12, i64 1, !dbg !1109
  %call9 = call zeroext i16 @from_le16(ptr noundef %arrayidx8), !dbg !1110
  %conv10 = zext i16 %call9 to i32, !dbg !1110
  %call11 = call i32 @utf16_decode_surrogate_pair(i32 noundef %conv7, i32 noundef %conv10), !dbg !1111
  store i32 %call11, ptr %codepoint, align 4, !dbg !1112
  br label %sw.epilog, !dbg !1113

sw.default:                                       ; preds = %while.body
  %13 = load ptr, ptr %w.addr, align 8, !dbg !1114
  %call12 = call i32 @fail(ptr noundef %13), !dbg !1115
  store i32 %call12, ptr %retval, align 4, !dbg !1116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1116

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %14 = load ptr, ptr %w.addr, align 8, !dbg !1117
  %15 = load i32, ptr %codepoint, align 4, !dbg !1119
  %call13 = call i32 @write_codepoint(ptr noundef %14, i32 noundef %15), !dbg !1120
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1120
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1121

if.then15:                                        ; preds = %sw.epilog
  %16 = load ptr, ptr %w.addr, align 8, !dbg !1122
  %call16 = call i32 @fail(ptr noundef %16), !dbg !1124
  store i32 %call16, ptr %retval, align 4, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1125

if.end17:                                         ; preds = %sw.epilog
  %17 = load i32, ptr %codepoint_len, align 4, !dbg !1126
  %18 = load ptr, ptr %p, align 8, !dbg !1127
  %idx.ext = sext i32 %17 to i64, !dbg !1127
  %add.ptr18 = getelementptr inbounds i16, ptr %18, i64 %idx.ext, !dbg !1127
  store ptr %add.ptr18, ptr %p, align 8, !dbg !1127
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1128
  br label %cleanup, !dbg !1128

cleanup:                                          ; preds = %if.end17, %if.then15, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint) #15, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint_len) #15, !dbg !1128
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1088, !llvm.loop !1129

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %w.addr, align 8, !dbg !1130
  %call20 = call i32 @emit(ptr noundef %19, ptr noundef @.str.19, i64 noundef 1), !dbg !1131
  store i32 %call20, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !1132

cleanup21:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !1133
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1133
  %20 = load i32, ptr %retval, align 4, !dbg !1133
  ret i32 %20, !dbg !1133
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_string_utf16le(ptr noundef %w, ptr noundef %val) #0 !dbg !1134 {
entry:
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1138, metadata !DIExpression()), !dbg !1142
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1139, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !1144
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1140, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !1146
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1141, metadata !DIExpression()), !dbg !1147
  store i64 0, ptr %len, align 8, !dbg !1148
  %0 = load ptr, ptr %val.addr, align 8, !dbg !1150
  store ptr %0, ptr %p, align 8, !dbg !1151
  br label %for.cond, !dbg !1152

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !1153
  %2 = load i16, ptr %1, align 2, !dbg !1155
  %tobool = icmp ne i16 %2, 0, !dbg !1156
  br i1 %tobool, label %for.body, label %for.end, !dbg !1156

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %len, align 8, !dbg !1157
  %inc = add i64 %3, 1, !dbg !1157
  store i64 %inc, ptr %len, align 8, !dbg !1157
  br label %for.inc, !dbg !1159

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %p, align 8, !dbg !1160
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i32 1, !dbg !1160
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1160
  br label %for.cond, !dbg !1161, !llvm.loop !1162

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %w.addr, align 8, !dbg !1164
  %6 = load ptr, ptr %val.addr, align 8, !dbg !1165
  %7 = load i64, ptr %len, align 8, !dbg !1166
  %call = call i32 @spdk_json_write_string_utf16le_raw(ptr noundef %5, ptr noundef %6, i64 noundef %7), !dbg !1167
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1168
  ret i32 %call, !dbg !1169
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_string_fmt(ptr noundef %w, ptr noundef %fmt, ...) #0 !dbg !1170 {
entry:
  %w.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1174, metadata !DIExpression()), !dbg !1192
  store ptr %fmt, ptr %fmt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1175, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !1194
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !1176, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1196
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1191, metadata !DIExpression()), !dbg !1197
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1198
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !1198
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1199
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !1200
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1201
  %call = call i32 @spdk_json_write_string_fmt_v(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1), !dbg !1202
  store i32 %call, ptr %rc, align 4, !dbg !1203
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1204
  call void @llvm.va_end.p0(ptr %arraydecay2), !dbg !1204
  %2 = load i32, ptr %rc, align 4, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !1206
  ret i32 %2, !dbg !1207
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_string_fmt_v(ptr noundef %w, ptr noundef %fmt, ptr noundef %args) #0 !dbg !1208 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1213, metadata !DIExpression()), !dbg !1218
  store ptr %fmt, ptr %fmt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1214, metadata !DIExpression()), !dbg !1219
  store ptr %args, ptr %args.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1215, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !1221
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1216, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1223
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1217, metadata !DIExpression()), !dbg !1224
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !1225
  %1 = load ptr, ptr %args.addr, align 8, !dbg !1226
  %call = call ptr @spdk_vsprintf_alloc(ptr noundef %0, ptr noundef %1), !dbg !1227
  store ptr %call, ptr %s, align 8, !dbg !1228
  %2 = load ptr, ptr %s, align 8, !dbg !1229
  %cmp = icmp eq ptr %2, null, !dbg !1231
  br i1 %cmp, label %if.then, label %if.end, !dbg !1232

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1233

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1235
  %4 = load ptr, ptr %s, align 8, !dbg !1236
  %call1 = call i32 @spdk_json_write_string(ptr noundef %3, ptr noundef %4), !dbg !1237
  store i32 %call1, ptr %rc, align 4, !dbg !1238
  %5 = load ptr, ptr %s, align 8, !dbg !1239
  call void @free(ptr noundef %5) #15, !dbg !1240
  %6 = load i32, ptr %rc, align 4, !dbg !1241
  store i32 %6, ptr %retval, align 4, !dbg !1242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1242

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1243
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !1243
  %7 = load i32, ptr %retval, align 4, !dbg !1243
  ret i32 %7, !dbg !1243
}

declare !dbg !1244 ptr @spdk_vsprintf_alloc(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_bytearray(ptr noundef %w, ptr noundef %val, i64 noundef %len) #0 !dbg !1248 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %v = alloca ptr, align 8
  %i = alloca i64, align 8
  %s = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1250, metadata !DIExpression()), !dbg !1257
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1251, metadata !DIExpression()), !dbg !1258
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1252, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #15, !dbg !1260
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1253, metadata !DIExpression()), !dbg !1261
  %0 = load ptr, ptr %val.addr, align 8, !dbg !1262
  store ptr %0, ptr %v, align 8, !dbg !1261
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !1263
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1254, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !1265
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1255, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1267
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1256, metadata !DIExpression()), !dbg !1268
  %1 = load i64, ptr %len.addr, align 8, !dbg !1269
  %mul = mul i64 2, %1, !dbg !1270
  %add = add i64 %mul, 1, !dbg !1271
  %call = call noalias ptr @malloc(i64 noundef %add) #18, !dbg !1272
  store ptr %call, ptr %s, align 8, !dbg !1273
  %2 = load ptr, ptr %s, align 8, !dbg !1274
  %cmp = icmp eq ptr %2, null, !dbg !1276
  br i1 %cmp, label %if.then, label %if.end, !dbg !1277

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1278

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !1280
  br label %for.cond, !dbg !1282

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %i, align 8, !dbg !1283
  %4 = load i64, ptr %len.addr, align 8, !dbg !1285
  %cmp1 = icmp ult i64 %3, %4, !dbg !1286
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1287

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s, align 8, !dbg !1288
  %6 = load i64, ptr %i, align 8, !dbg !1290
  %mul2 = mul i64 2, %6, !dbg !1291
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %mul2, !dbg !1288
  %7 = load ptr, ptr %v, align 8, !dbg !1292
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !1292
  store ptr %incdec.ptr, ptr %v, align 8, !dbg !1292
  %8 = load i8, ptr %7, align 1, !dbg !1293
  call void @write_hex_2(ptr noundef %arrayidx, i8 noundef zeroext %8), !dbg !1294
  br label %for.inc, !dbg !1295

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !1296
  %inc = add i64 %9, 1, !dbg !1296
  store i64 %inc, ptr %i, align 8, !dbg !1296
  br label %for.cond, !dbg !1297, !llvm.loop !1298

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %s, align 8, !dbg !1300
  %11 = load i64, ptr %len.addr, align 8, !dbg !1301
  %mul3 = mul i64 2, %11, !dbg !1302
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 %mul3, !dbg !1300
  store i8 0, ptr %arrayidx4, align 1, !dbg !1303
  %12 = load ptr, ptr %w.addr, align 8, !dbg !1304
  %13 = load ptr, ptr %s, align 8, !dbg !1305
  %call5 = call i32 @spdk_json_write_string(ptr noundef %12, ptr noundef %13), !dbg !1306
  store i32 %call5, ptr %rc, align 4, !dbg !1307
  %14 = load ptr, ptr %s, align 8, !dbg !1308
  call void @free(ptr noundef %14) #15, !dbg !1309
  %15 = load i32, ptr %rc, align 4, !dbg !1310
  store i32 %15, ptr %retval, align 4, !dbg !1311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1311

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #15, !dbg !1312
  %16 = load i32, ptr %retval, align 4, !dbg !1312
  ret i32 %16, !dbg !1312
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !1313 noalias ptr @malloc(i64 noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal void @write_hex_2(ptr noundef %dest, i8 noundef zeroext %val) #0 !dbg !1316 {
entry:
  %dest.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  %hex = alloca [17 x i8], align 16
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1320, metadata !DIExpression()), !dbg !1327
  store i8 %val, ptr %val.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1321, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !1329
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1322, metadata !DIExpression()), !dbg !1330
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !1331
  store ptr %0, ptr %p, align 8, !dbg !1330
  call void @llvm.lifetime.start.p0(i64 17, ptr %hex) #15, !dbg !1332
  tail call void @llvm.dbg.declare(metadata ptr %hex, metadata !1323, metadata !DIExpression()), !dbg !1333
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %hex, ptr align 16 @__const.write_hex_2.hex, i64 17, i1 false), !dbg !1333
  %1 = load i8, ptr %val.addr, align 1, !dbg !1334
  %conv = zext i8 %1 to i32, !dbg !1334
  %shr = ashr i32 %conv, 4, !dbg !1335
  %idxprom = sext i32 %shr to i64, !dbg !1336
  %arrayidx = getelementptr inbounds [17 x i8], ptr %hex, i64 0, i64 %idxprom, !dbg !1336
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1336
  %3 = load ptr, ptr %p, align 8, !dbg !1337
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1337
  store i8 %2, ptr %arrayidx1, align 1, !dbg !1338
  %4 = load i8, ptr %val.addr, align 1, !dbg !1339
  %conv2 = zext i8 %4 to i32, !dbg !1339
  %and = and i32 %conv2, 15, !dbg !1340
  %idxprom3 = sext i32 %and to i64, !dbg !1341
  %arrayidx4 = getelementptr inbounds [17 x i8], ptr %hex, i64 0, i64 %idxprom3, !dbg !1341
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !1341
  %6 = load ptr, ptr %p, align 8, !dbg !1342
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1342
  store i8 %5, ptr %arrayidx5, align 1, !dbg !1343
  call void @llvm.lifetime.end.p0(i64 17, ptr %hex) #15, !dbg !1344
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1344
  ret void, !dbg !1344
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_array_begin(ptr noundef %w) #0 !dbg !1345 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1347, metadata !DIExpression()), !dbg !1348
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1349
  %call = call i32 @begin_value(ptr noundef %0), !dbg !1351
  %tobool = icmp ne i32 %call, 0, !dbg !1351
  br i1 %tobool, label %if.then, label %if.end, !dbg !1352

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !1353
  %call1 = call i32 @fail(ptr noundef %1), !dbg !1355
  store i32 %call1, ptr %retval, align 4, !dbg !1356
  br label %return, !dbg !1356

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !1357
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %2, i32 0, i32 5, !dbg !1358
  store i8 1, ptr %first_value, align 1, !dbg !1359
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1360
  %new_indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %3, i32 0, i32 4, !dbg !1361
  store i8 1, ptr %new_indent, align 8, !dbg !1362
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1363
  %indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %4, i32 0, i32 3, !dbg !1364
  %5 = load i32, ptr %indent, align 4, !dbg !1365
  %inc = add i32 %5, 1, !dbg !1365
  store i32 %inc, ptr %indent, align 4, !dbg !1365
  %6 = load ptr, ptr %w.addr, align 8, !dbg !1366
  %call2 = call i32 @emit(ptr noundef %6, ptr noundef @.str.11, i64 noundef 1), !dbg !1368
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1368
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1369

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %w.addr, align 8, !dbg !1370
  %call5 = call i32 @fail(ptr noundef %7), !dbg !1372
  store i32 %call5, ptr %retval, align 4, !dbg !1373
  br label %return, !dbg !1373

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1374
  br label %return, !dbg !1374

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !1375
  ret i32 %8, !dbg !1375
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_array_end(ptr noundef %w) #0 !dbg !1376 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1378, metadata !DIExpression()), !dbg !1379
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1380
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 5, !dbg !1381
  store i8 0, ptr %first_value, align 1, !dbg !1382
  %1 = load ptr, ptr %w.addr, align 8, !dbg !1383
  %indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %1, i32 0, i32 3, !dbg !1385
  %2 = load i32, ptr %indent, align 4, !dbg !1385
  %cmp = icmp eq i32 %2, 0, !dbg !1386
  br i1 %cmp, label %if.then, label %if.end, !dbg !1387

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1388
  %call = call i32 @fail(ptr noundef %3), !dbg !1390
  store i32 %call, ptr %retval, align 4, !dbg !1391
  br label %return, !dbg !1391

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1392
  %indent1 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %4, i32 0, i32 3, !dbg !1393
  %5 = load i32, ptr %indent1, align 4, !dbg !1394
  %dec = add i32 %5, -1, !dbg !1394
  store i32 %dec, ptr %indent1, align 4, !dbg !1394
  %6 = load ptr, ptr %w.addr, align 8, !dbg !1395
  %new_indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %6, i32 0, i32 4, !dbg !1397
  %7 = load i8, ptr %new_indent, align 8, !dbg !1397, !range !224, !noundef !225
  %tobool = trunc i8 %7 to i1, !dbg !1397
  br i1 %tobool, label %if.end13, label %if.then2, !dbg !1398

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %w.addr, align 8, !dbg !1399
  %call3 = call i32 @emit_fmt(ptr noundef %8, ptr noundef @.str.12, i64 noundef 1), !dbg !1402
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1402
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1403

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %w.addr, align 8, !dbg !1404
  %call6 = call i32 @fail(ptr noundef %9), !dbg !1406
  store i32 %call6, ptr %retval, align 4, !dbg !1407
  br label %return, !dbg !1407

if.end7:                                          ; preds = %if.then2
  %10 = load ptr, ptr %w.addr, align 8, !dbg !1408
  %call8 = call i32 @emit_indent(ptr noundef %10), !dbg !1410
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1410
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1411

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %w.addr, align 8, !dbg !1412
  %call11 = call i32 @fail(ptr noundef %11), !dbg !1414
  store i32 %call11, ptr %retval, align 4, !dbg !1415
  br label %return, !dbg !1415

if.end12:                                         ; preds = %if.end7
  br label %if.end13, !dbg !1416

if.end13:                                         ; preds = %if.end12, %if.end
  %12 = load ptr, ptr %w.addr, align 8, !dbg !1417
  %new_indent14 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %12, i32 0, i32 4, !dbg !1418
  store i8 0, ptr %new_indent14, align 8, !dbg !1419
  %13 = load ptr, ptr %w.addr, align 8, !dbg !1420
  %call15 = call i32 @emit(ptr noundef %13, ptr noundef @.str.13, i64 noundef 1), !dbg !1421
  store i32 %call15, ptr %retval, align 4, !dbg !1422
  br label %return, !dbg !1422

return:                                           ; preds = %if.end13, %if.then10, %if.then5, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !1423
  ret i32 %14, !dbg !1423
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_fmt(ptr noundef %w, ptr noundef %data, i64 noundef %size) #0 !dbg !1424 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1426, metadata !DIExpression()), !dbg !1429
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1427, metadata !DIExpression()), !dbg !1430
  store i64 %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1428, metadata !DIExpression()), !dbg !1431
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1432
  %flags = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 2, !dbg !1434
  %1 = load i32, ptr %flags, align 8, !dbg !1434
  %and = and i32 %1, 1, !dbg !1435
  %tobool = icmp ne i32 %and, 0, !dbg !1435
  br i1 %tobool, label %if.then, label %if.end, !dbg !1436

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !1437
  %3 = load ptr, ptr %data.addr, align 8, !dbg !1439
  %4 = load i64, ptr %size.addr, align 8, !dbg !1440
  %call = call i32 @emit(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1441
  store i32 %call, ptr %retval, align 4, !dbg !1442
  br label %return, !dbg !1442

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1443
  br label %return, !dbg !1443

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !1444
  ret i32 %5, !dbg !1444
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_indent(ptr noundef %w) #0 !dbg !1445 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1447, metadata !DIExpression()), !dbg !1449
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1450
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1448, metadata !DIExpression()), !dbg !1451
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1452
  %flags = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 2, !dbg !1454
  %1 = load i32, ptr %flags, align 8, !dbg !1454
  %and = and i32 %1, 1, !dbg !1455
  %tobool = icmp ne i32 %and, 0, !dbg !1455
  br i1 %tobool, label %if.then, label %if.end4, !dbg !1456

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1457
  br label %for.cond, !dbg !1460

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !dbg !1461
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1463
  %indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %3, i32 0, i32 3, !dbg !1464
  %4 = load i32, ptr %indent, align 4, !dbg !1464
  %cmp = icmp ult i32 %2, %4, !dbg !1465
  br i1 %cmp, label %for.body, label %for.end, !dbg !1466

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %w.addr, align 8, !dbg !1467
  %call = call i32 @emit(ptr noundef %5, ptr noundef @.str.20, i64 noundef 2), !dbg !1470
  %tobool1 = icmp ne i32 %call, 0, !dbg !1470
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1471

if.then2:                                         ; preds = %for.body
  %6 = load ptr, ptr %w.addr, align 8, !dbg !1472
  %call3 = call i32 @fail(ptr noundef %6), !dbg !1474
  store i32 %call3, ptr %retval, align 4, !dbg !1475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1475

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1476

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !1477
  %inc = add i32 %7, 1, !dbg !1477
  store i32 %inc, ptr %i, align 4, !dbg !1477
  br label %for.cond, !dbg !1478, !llvm.loop !1479

for.end:                                          ; preds = %for.cond
  br label %if.end4, !dbg !1481

if.end4:                                          ; preds = %for.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !1482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1482

cleanup:                                          ; preds = %if.end4, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1483
  %8 = load i32, ptr %retval, align 4, !dbg !1483
  ret i32 %8, !dbg !1483
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_object_begin(ptr noundef %w) #0 !dbg !1484 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1486, metadata !DIExpression()), !dbg !1487
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1488
  %call = call i32 @begin_value(ptr noundef %0), !dbg !1490
  %tobool = icmp ne i32 %call, 0, !dbg !1490
  br i1 %tobool, label %if.then, label %if.end, !dbg !1491

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !1492
  %call1 = call i32 @fail(ptr noundef %1), !dbg !1494
  store i32 %call1, ptr %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !1496
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %2, i32 0, i32 5, !dbg !1497
  store i8 1, ptr %first_value, align 1, !dbg !1498
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1499
  %new_indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %3, i32 0, i32 4, !dbg !1500
  store i8 1, ptr %new_indent, align 8, !dbg !1501
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1502
  %indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %4, i32 0, i32 3, !dbg !1503
  %5 = load i32, ptr %indent, align 4, !dbg !1504
  %inc = add i32 %5, 1, !dbg !1504
  store i32 %inc, ptr %indent, align 4, !dbg !1504
  %6 = load ptr, ptr %w.addr, align 8, !dbg !1505
  %call2 = call i32 @emit(ptr noundef %6, ptr noundef @.str.14, i64 noundef 1), !dbg !1507
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1507
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1508

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %w.addr, align 8, !dbg !1509
  %call5 = call i32 @fail(ptr noundef %7), !dbg !1511
  store i32 %call5, ptr %retval, align 4, !dbg !1512
  br label %return, !dbg !1512

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1513
  br label %return, !dbg !1513

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !1514
  ret i32 %8, !dbg !1514
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_object_end(ptr noundef %w) #0 !dbg !1515 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1517, metadata !DIExpression()), !dbg !1518
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1519
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 5, !dbg !1520
  store i8 0, ptr %first_value, align 1, !dbg !1521
  %1 = load ptr, ptr %w.addr, align 8, !dbg !1522
  %indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %1, i32 0, i32 3, !dbg !1523
  %2 = load i32, ptr %indent, align 4, !dbg !1524
  %dec = add i32 %2, -1, !dbg !1524
  store i32 %dec, ptr %indent, align 4, !dbg !1524
  %3 = load ptr, ptr %w.addr, align 8, !dbg !1525
  %new_indent = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %3, i32 0, i32 4, !dbg !1527
  %4 = load i8, ptr %new_indent, align 8, !dbg !1527, !range !224, !noundef !225
  %tobool = trunc i8 %4 to i1, !dbg !1527
  br i1 %tobool, label %if.end9, label %if.then, !dbg !1528

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %w.addr, align 8, !dbg !1529
  %call = call i32 @emit_fmt(ptr noundef %5, ptr noundef @.str.12, i64 noundef 1), !dbg !1532
  %tobool1 = icmp ne i32 %call, 0, !dbg !1532
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1533

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %w.addr, align 8, !dbg !1534
  %call3 = call i32 @fail(ptr noundef %6), !dbg !1536
  store i32 %call3, ptr %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %w.addr, align 8, !dbg !1538
  %call4 = call i32 @emit_indent(ptr noundef %7), !dbg !1540
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1540
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !1541

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %w.addr, align 8, !dbg !1542
  %call7 = call i32 @fail(ptr noundef %8), !dbg !1544
  store i32 %call7, ptr %retval, align 4, !dbg !1545
  br label %return, !dbg !1545

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !1546

if.end9:                                          ; preds = %if.end8, %entry
  %9 = load ptr, ptr %w.addr, align 8, !dbg !1547
  %new_indent10 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %9, i32 0, i32 4, !dbg !1548
  store i8 0, ptr %new_indent10, align 8, !dbg !1549
  %10 = load ptr, ptr %w.addr, align 8, !dbg !1550
  %call11 = call i32 @emit(ptr noundef %10, ptr noundef @.str.15, i64 noundef 1), !dbg !1551
  store i32 %call11, ptr %retval, align 4, !dbg !1552
  br label %return, !dbg !1552

return:                                           ; preds = %if.end9, %if.then6, %if.then2
  %11 = load i32, ptr %retval, align 4, !dbg !1553
  ret i32 %11, !dbg !1553
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_name_raw(ptr noundef %w, ptr noundef %name, i64 noundef %len) #0 !dbg !1554 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1556, metadata !DIExpression()), !dbg !1559
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1557, metadata !DIExpression()), !dbg !1560
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1558, metadata !DIExpression()), !dbg !1561
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1562
  %call = call i32 @begin_value(ptr noundef %0), !dbg !1564
  %tobool = icmp ne i32 %call, 0, !dbg !1564
  br i1 %tobool, label %if.then, label %if.end, !dbg !1565

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !dbg !1566
  %call1 = call i32 @fail(ptr noundef %1), !dbg !1568
  store i32 %call1, ptr %retval, align 4, !dbg !1569
  br label %return, !dbg !1569

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !1570
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1572
  %4 = load i64, ptr %len.addr, align 8, !dbg !1573
  %call2 = call i32 @write_string_or_name(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1574
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1574
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1575

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %w.addr, align 8, !dbg !1576
  %call5 = call i32 @fail(ptr noundef %5), !dbg !1578
  store i32 %call5, ptr %retval, align 4, !dbg !1579
  br label %return, !dbg !1579

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %w.addr, align 8, !dbg !1580
  %first_value = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %6, i32 0, i32 5, !dbg !1581
  store i8 1, ptr %first_value, align 1, !dbg !1582
  %7 = load ptr, ptr %w.addr, align 8, !dbg !1583
  %call7 = call i32 @emit(ptr noundef %7, ptr noundef @.str.16, i64 noundef 1), !dbg !1585
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1585
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1586

if.then9:                                         ; preds = %if.end6
  %8 = load ptr, ptr %w.addr, align 8, !dbg !1587
  %call10 = call i32 @fail(ptr noundef %8), !dbg !1589
  store i32 %call10, ptr %retval, align 4, !dbg !1590
  br label %return, !dbg !1590

if.end11:                                         ; preds = %if.end6
  %9 = load ptr, ptr %w.addr, align 8, !dbg !1591
  %call12 = call i32 @emit_fmt(ptr noundef %9, ptr noundef @.str.17, i64 noundef 1), !dbg !1592
  store i32 %call12, ptr %retval, align 4, !dbg !1593
  br label %return, !dbg !1593

return:                                           ; preds = %if.end11, %if.then9, %if.then4, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !1594
  ret i32 %10, !dbg !1594
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_val(ptr noundef %w, ptr noundef %val) #0 !dbg !1595 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %num_values = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1606, metadata !DIExpression()), !dbg !1610
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1607, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_values) #15, !dbg !1612
  tail call void @llvm.dbg.declare(metadata ptr %num_values, metadata !1608, metadata !DIExpression()), !dbg !1613
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !1612
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1609, metadata !DIExpression()), !dbg !1614
  %0 = load ptr, ptr %val.addr, align 8, !dbg !1615
  %type = getelementptr inbounds %struct.spdk_json_val, ptr %0, i32 0, i32 2, !dbg !1616
  %1 = load i32, ptr %type, align 4, !dbg !1616
  switch i32 %1, label %sw.epilog [
    i32 16, label %sw.bb
    i32 32, label %sw.bb1
    i32 1024, label %sw.bb6
    i32 4, label %sw.bb11
    i32 8, label %sw.bb13
    i32 2, label %sw.bb15
    i32 64, label %sw.bb17
    i32 256, label %sw.bb17
    i32 128, label %sw.bb60
    i32 512, label %sw.bb62
    i32 0, label %sw.bb64
  ], !dbg !1617

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %w.addr, align 8, !dbg !1618
  %3 = load ptr, ptr %val.addr, align 8, !dbg !1620
  %start = getelementptr inbounds %struct.spdk_json_val, ptr %3, i32 0, i32 0, !dbg !1621
  %4 = load ptr, ptr %start, align 8, !dbg !1621
  %5 = load ptr, ptr %val.addr, align 8, !dbg !1622
  %len = getelementptr inbounds %struct.spdk_json_val, ptr %5, i32 0, i32 1, !dbg !1623
  %6 = load i32, ptr %len, align 8, !dbg !1623
  %conv = zext i32 %6 to i64, !dbg !1622
  %call = call i32 @spdk_json_write_val_raw(ptr noundef %2, ptr noundef %4, i64 noundef %conv), !dbg !1624
  store i32 %call, ptr %retval, align 4, !dbg !1625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1625

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %w.addr, align 8, !dbg !1626
  %8 = load ptr, ptr %val.addr, align 8, !dbg !1627
  %start2 = getelementptr inbounds %struct.spdk_json_val, ptr %8, i32 0, i32 0, !dbg !1628
  %9 = load ptr, ptr %start2, align 8, !dbg !1628
  %10 = load ptr, ptr %val.addr, align 8, !dbg !1629
  %len3 = getelementptr inbounds %struct.spdk_json_val, ptr %10, i32 0, i32 1, !dbg !1630
  %11 = load i32, ptr %len3, align 8, !dbg !1630
  %conv4 = zext i32 %11 to i64, !dbg !1629
  %call5 = call i32 @spdk_json_write_string_raw(ptr noundef %7, ptr noundef %9, i64 noundef %conv4), !dbg !1631
  store i32 %call5, ptr %retval, align 4, !dbg !1632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1632

sw.bb6:                                           ; preds = %entry
  %12 = load ptr, ptr %w.addr, align 8, !dbg !1633
  %13 = load ptr, ptr %val.addr, align 8, !dbg !1634
  %start7 = getelementptr inbounds %struct.spdk_json_val, ptr %13, i32 0, i32 0, !dbg !1635
  %14 = load ptr, ptr %start7, align 8, !dbg !1635
  %15 = load ptr, ptr %val.addr, align 8, !dbg !1636
  %len8 = getelementptr inbounds %struct.spdk_json_val, ptr %15, i32 0, i32 1, !dbg !1637
  %16 = load i32, ptr %len8, align 8, !dbg !1637
  %conv9 = zext i32 %16 to i64, !dbg !1636
  %call10 = call i32 @spdk_json_write_name_raw(ptr noundef %12, ptr noundef %14, i64 noundef %conv9), !dbg !1638
  store i32 %call10, ptr %retval, align 4, !dbg !1639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1639

sw.bb11:                                          ; preds = %entry
  %17 = load ptr, ptr %w.addr, align 8, !dbg !1640
  %call12 = call i32 @spdk_json_write_bool(ptr noundef %17, i1 noundef zeroext true), !dbg !1641
  store i32 %call12, ptr %retval, align 4, !dbg !1642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1642

sw.bb13:                                          ; preds = %entry
  %18 = load ptr, ptr %w.addr, align 8, !dbg !1643
  %call14 = call i32 @spdk_json_write_bool(ptr noundef %18, i1 noundef zeroext false), !dbg !1644
  store i32 %call14, ptr %retval, align 4, !dbg !1645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1645

sw.bb15:                                          ; preds = %entry
  %19 = load ptr, ptr %w.addr, align 8, !dbg !1646
  %call16 = call i32 @spdk_json_write_null(ptr noundef %19), !dbg !1647
  store i32 %call16, ptr %retval, align 4, !dbg !1648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1648

sw.bb17:                                          ; preds = %entry, %entry
  %20 = load ptr, ptr %val.addr, align 8, !dbg !1649
  %arrayidx = getelementptr inbounds %struct.spdk_json_val, ptr %20, i64 0, !dbg !1649
  %len18 = getelementptr inbounds %struct.spdk_json_val, ptr %arrayidx, i32 0, i32 1, !dbg !1650
  %21 = load i32, ptr %len18, align 8, !dbg !1650
  %conv19 = zext i32 %21 to i64, !dbg !1649
  store i64 %conv19, ptr %num_values, align 8, !dbg !1651
  %22 = load ptr, ptr %val.addr, align 8, !dbg !1652
  %arrayidx20 = getelementptr inbounds %struct.spdk_json_val, ptr %22, i64 0, !dbg !1652
  %type21 = getelementptr inbounds %struct.spdk_json_val, ptr %arrayidx20, i32 0, i32 2, !dbg !1654
  %23 = load i32, ptr %type21, align 4, !dbg !1654
  %cmp = icmp eq i32 %23, 256, !dbg !1655
  br i1 %cmp, label %if.then, label %if.else, !dbg !1656

if.then:                                          ; preds = %sw.bb17
  %24 = load ptr, ptr %w.addr, align 8, !dbg !1657
  %call23 = call i32 @spdk_json_write_object_begin(ptr noundef %24), !dbg !1660
  %tobool = icmp ne i32 %call23, 0, !dbg !1660
  br i1 %tobool, label %if.then24, label %if.end, !dbg !1661

if.then24:                                        ; preds = %if.then
  %25 = load ptr, ptr %w.addr, align 8, !dbg !1662
  %call25 = call i32 @fail(ptr noundef %25), !dbg !1664
  store i32 %call25, ptr %retval, align 4, !dbg !1665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1665

if.end:                                           ; preds = %if.then
  br label %if.end31, !dbg !1666

if.else:                                          ; preds = %sw.bb17
  %26 = load ptr, ptr %w.addr, align 8, !dbg !1667
  %call26 = call i32 @spdk_json_write_array_begin(ptr noundef %26), !dbg !1670
  %tobool27 = icmp ne i32 %call26, 0, !dbg !1670
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !1671

if.then28:                                        ; preds = %if.else
  %27 = load ptr, ptr %w.addr, align 8, !dbg !1672
  %call29 = call i32 @fail(ptr noundef %27), !dbg !1674
  store i32 %call29, ptr %retval, align 4, !dbg !1675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1675

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  store i64 0, ptr %i, align 8, !dbg !1676
  br label %for.cond, !dbg !1678

for.cond:                                         ; preds = %if.end59, %if.end31
  %28 = load i64, ptr %i, align 8, !dbg !1679
  %29 = load i64, ptr %num_values, align 8, !dbg !1681
  %add = add i64 %29, 1, !dbg !1682
  %cmp32 = icmp ult i64 %28, %add, !dbg !1683
  br i1 %cmp32, label %for.body, label %for.end, !dbg !1684

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %w.addr, align 8, !dbg !1685
  %31 = load ptr, ptr %val.addr, align 8, !dbg !1688
  %32 = load i64, ptr %i, align 8, !dbg !1689
  %add34 = add i64 %32, 1, !dbg !1690
  %arrayidx35 = getelementptr inbounds %struct.spdk_json_val, ptr %31, i64 %add34, !dbg !1688
  %call36 = call i32 @spdk_json_write_val(ptr noundef %30, ptr noundef %arrayidx35), !dbg !1691
  %tobool37 = icmp ne i32 %call36, 0, !dbg !1691
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !1692

if.then38:                                        ; preds = %for.body
  %33 = load ptr, ptr %w.addr, align 8, !dbg !1693
  %call39 = call i32 @fail(ptr noundef %33), !dbg !1695
  store i32 %call39, ptr %retval, align 4, !dbg !1696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1696

if.end40:                                         ; preds = %for.body
  %34 = load ptr, ptr %val.addr, align 8, !dbg !1697
  %35 = load i64, ptr %i, align 8, !dbg !1699
  %add41 = add i64 %35, 1, !dbg !1700
  %arrayidx42 = getelementptr inbounds %struct.spdk_json_val, ptr %34, i64 %add41, !dbg !1697
  %type43 = getelementptr inbounds %struct.spdk_json_val, ptr %arrayidx42, i32 0, i32 2, !dbg !1701
  %36 = load i32, ptr %type43, align 4, !dbg !1701
  %cmp44 = icmp eq i32 %36, 64, !dbg !1702
  br i1 %cmp44, label %if.then51, label %lor.lhs.false, !dbg !1703

lor.lhs.false:                                    ; preds = %if.end40
  %37 = load ptr, ptr %val.addr, align 8, !dbg !1704
  %38 = load i64, ptr %i, align 8, !dbg !1705
  %add46 = add i64 %38, 1, !dbg !1706
  %arrayidx47 = getelementptr inbounds %struct.spdk_json_val, ptr %37, i64 %add46, !dbg !1704
  %type48 = getelementptr inbounds %struct.spdk_json_val, ptr %arrayidx47, i32 0, i32 2, !dbg !1707
  %39 = load i32, ptr %type48, align 4, !dbg !1707
  %cmp49 = icmp eq i32 %39, 256, !dbg !1708
  br i1 %cmp49, label %if.then51, label %if.else58, !dbg !1709

if.then51:                                        ; preds = %lor.lhs.false, %if.end40
  %40 = load ptr, ptr %val.addr, align 8, !dbg !1710
  %41 = load i64, ptr %i, align 8, !dbg !1712
  %add52 = add i64 %41, 1, !dbg !1713
  %arrayidx53 = getelementptr inbounds %struct.spdk_json_val, ptr %40, i64 %add52, !dbg !1710
  %len54 = getelementptr inbounds %struct.spdk_json_val, ptr %arrayidx53, i32 0, i32 1, !dbg !1714
  %42 = load i32, ptr %len54, align 8, !dbg !1714
  %add55 = add i32 %42, 2, !dbg !1715
  %conv56 = zext i32 %add55 to i64, !dbg !1710
  %43 = load i64, ptr %i, align 8, !dbg !1716
  %add57 = add i64 %43, %conv56, !dbg !1716
  store i64 %add57, ptr %i, align 8, !dbg !1716
  br label %if.end59, !dbg !1717

if.else58:                                        ; preds = %lor.lhs.false
  %44 = load i64, ptr %i, align 8, !dbg !1718
  %inc = add i64 %44, 1, !dbg !1718
  store i64 %inc, ptr %i, align 8, !dbg !1718
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then51
  br label %for.cond, !dbg !1720, !llvm.loop !1721

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1723

sw.bb60:                                          ; preds = %entry
  %45 = load ptr, ptr %w.addr, align 8, !dbg !1724
  %call61 = call i32 @spdk_json_write_array_end(ptr noundef %45), !dbg !1725
  store i32 %call61, ptr %retval, align 4, !dbg !1726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1726

sw.bb62:                                          ; preds = %entry
  %46 = load ptr, ptr %w.addr, align 8, !dbg !1727
  %call63 = call i32 @spdk_json_write_object_end(ptr noundef %46), !dbg !1728
  store i32 %call63, ptr %retval, align 4, !dbg !1729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1729

sw.bb64:                                          ; preds = %entry
  %47 = load ptr, ptr %w.addr, align 8, !dbg !1730
  %call65 = call i32 @fail(ptr noundef %47), !dbg !1731
  store i32 %call65, ptr %retval, align 4, !dbg !1732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1732

sw.epilog:                                        ; preds = %entry
  %48 = load ptr, ptr %w.addr, align 8, !dbg !1733
  %call66 = call i32 @fail(ptr noundef %48), !dbg !1734
  store i32 %call66, ptr %retval, align 4, !dbg !1735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1735

cleanup:                                          ; preds = %sw.epilog, %sw.bb64, %sw.bb62, %sw.bb60, %for.end, %if.then38, %if.then28, %if.then24, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb6, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !1736
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_values) #15, !dbg !1736
  %49 = load i32, ptr %retval, align 4, !dbg !1736
  ret i32 %49, !dbg !1736
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_null(ptr noundef %w, ptr noundef %name) #0 !dbg !1737 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1739, metadata !DIExpression()), !dbg !1742
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1740, metadata !DIExpression()), !dbg !1743
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1744
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1741, metadata !DIExpression()), !dbg !1745
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1746
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1747
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1748
  store i32 %call, ptr %rc, align 4, !dbg !1745
  %2 = load i32, ptr %rc, align 4, !dbg !1749
  %tobool = icmp ne i32 %2, 0, !dbg !1749
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1749

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1750
  br label %cond.end, !dbg !1749

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1751
  %call1 = call i32 @spdk_json_write_null(ptr noundef %4), !dbg !1752
  br label %cond.end, !dbg !1749

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1749
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1753
  ret i32 %cond, !dbg !1754
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_bool(ptr noundef %w, ptr noundef %name, i1 noundef zeroext %val) #0 !dbg !1755 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1759, metadata !DIExpression()), !dbg !1763
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1760, metadata !DIExpression()), !dbg !1764
  %frombool = zext i1 %val to i8
  store i8 %frombool, ptr %val.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1761, metadata !DIExpression()), !dbg !1765
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1766
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1762, metadata !DIExpression()), !dbg !1767
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1768
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1769
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1770
  store i32 %call, ptr %rc, align 4, !dbg !1767
  %2 = load i32, ptr %rc, align 4, !dbg !1771
  %tobool = icmp ne i32 %2, 0, !dbg !1771
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1771

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1772
  br label %cond.end, !dbg !1771

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1773
  %5 = load i8, ptr %val.addr, align 1, !dbg !1774, !range !224, !noundef !225
  %tobool1 = trunc i8 %5 to i1, !dbg !1774
  %call2 = call i32 @spdk_json_write_bool(ptr noundef %4, i1 noundef zeroext %tobool1), !dbg !1775
  br label %cond.end, !dbg !1771

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call2, %cond.false ], !dbg !1771
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1776
  ret i32 %cond, !dbg !1777
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_uint8(ptr noundef %w, ptr noundef %name, i8 noundef zeroext %val) #0 !dbg !1778 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1782, metadata !DIExpression()), !dbg !1786
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1783, metadata !DIExpression()), !dbg !1787
  store i8 %val, ptr %val.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1784, metadata !DIExpression()), !dbg !1788
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1789
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1785, metadata !DIExpression()), !dbg !1790
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1791
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1792
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1793
  store i32 %call, ptr %rc, align 4, !dbg !1790
  %2 = load i32, ptr %rc, align 4, !dbg !1794
  %tobool = icmp ne i32 %2, 0, !dbg !1794
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1794

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1795
  br label %cond.end, !dbg !1794

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1796
  %5 = load i8, ptr %val.addr, align 1, !dbg !1797
  %call1 = call i32 @spdk_json_write_uint8(ptr noundef %4, i8 noundef zeroext %5), !dbg !1798
  br label %cond.end, !dbg !1794

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1794
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1799
  ret i32 %cond, !dbg !1800
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_uint16(ptr noundef %w, ptr noundef %name, i16 noundef zeroext %val) #0 !dbg !1801 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1805, metadata !DIExpression()), !dbg !1809
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1806, metadata !DIExpression()), !dbg !1810
  store i16 %val, ptr %val.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1807, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1812
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1808, metadata !DIExpression()), !dbg !1813
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1814
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1815
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1816
  store i32 %call, ptr %rc, align 4, !dbg !1813
  %2 = load i32, ptr %rc, align 4, !dbg !1817
  %tobool = icmp ne i32 %2, 0, !dbg !1817
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1817

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1818
  br label %cond.end, !dbg !1817

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1819
  %5 = load i16, ptr %val.addr, align 2, !dbg !1820
  %call1 = call i32 @spdk_json_write_uint16(ptr noundef %4, i16 noundef zeroext %5), !dbg !1821
  br label %cond.end, !dbg !1817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1817
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1822
  ret i32 %cond, !dbg !1823
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_int32(ptr noundef %w, ptr noundef %name, i32 noundef %val) #0 !dbg !1824 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1828, metadata !DIExpression()), !dbg !1832
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1829, metadata !DIExpression()), !dbg !1833
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1830, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1835
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1831, metadata !DIExpression()), !dbg !1836
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1837
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1838
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1839
  store i32 %call, ptr %rc, align 4, !dbg !1836
  %2 = load i32, ptr %rc, align 4, !dbg !1840
  %tobool = icmp ne i32 %2, 0, !dbg !1840
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1840

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1841
  br label %cond.end, !dbg !1840

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1842
  %5 = load i32, ptr %val.addr, align 4, !dbg !1843
  %call1 = call i32 @spdk_json_write_int32(ptr noundef %4, i32 noundef %5), !dbg !1844
  br label %cond.end, !dbg !1840

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1840
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1845
  ret i32 %cond, !dbg !1846
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_uint32(ptr noundef %w, ptr noundef %name, i32 noundef %val) #0 !dbg !1847 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1851, metadata !DIExpression()), !dbg !1855
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1852, metadata !DIExpression()), !dbg !1856
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1853, metadata !DIExpression()), !dbg !1857
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1858
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1854, metadata !DIExpression()), !dbg !1859
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1860
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1861
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1862
  store i32 %call, ptr %rc, align 4, !dbg !1859
  %2 = load i32, ptr %rc, align 4, !dbg !1863
  %tobool = icmp ne i32 %2, 0, !dbg !1863
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1863

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1864
  br label %cond.end, !dbg !1863

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1865
  %5 = load i32, ptr %val.addr, align 4, !dbg !1866
  %call1 = call i32 @spdk_json_write_uint32(ptr noundef %4, i32 noundef %5), !dbg !1867
  br label %cond.end, !dbg !1863

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1863
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1868
  ret i32 %cond, !dbg !1869
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_int64(ptr noundef %w, ptr noundef %name, i64 noundef %val) #0 !dbg !1870 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1874, metadata !DIExpression()), !dbg !1878
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1875, metadata !DIExpression()), !dbg !1879
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1876, metadata !DIExpression()), !dbg !1880
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1881
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1877, metadata !DIExpression()), !dbg !1882
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1883
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1884
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1885
  store i32 %call, ptr %rc, align 4, !dbg !1882
  %2 = load i32, ptr %rc, align 4, !dbg !1886
  %tobool = icmp ne i32 %2, 0, !dbg !1886
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1886

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1887
  br label %cond.end, !dbg !1886

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1888
  %5 = load i64, ptr %val.addr, align 8, !dbg !1889
  %call1 = call i32 @spdk_json_write_int64(ptr noundef %4, i64 noundef %5), !dbg !1890
  br label %cond.end, !dbg !1886

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1886
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1891
  ret i32 %cond, !dbg !1892
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_uint64(ptr noundef %w, ptr noundef %name, i64 noundef %val) #0 !dbg !1893 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1897, metadata !DIExpression()), !dbg !1901
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1898, metadata !DIExpression()), !dbg !1902
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1904
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1900, metadata !DIExpression()), !dbg !1905
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1906
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1907
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1908
  store i32 %call, ptr %rc, align 4, !dbg !1905
  %2 = load i32, ptr %rc, align 4, !dbg !1909
  %tobool = icmp ne i32 %2, 0, !dbg !1909
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1909

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1910
  br label %cond.end, !dbg !1909

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1911
  %5 = load i64, ptr %val.addr, align 8, !dbg !1912
  %call1 = call i32 @spdk_json_write_uint64(ptr noundef %4, i64 noundef %5), !dbg !1913
  br label %cond.end, !dbg !1909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1909
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1914
  ret i32 %cond, !dbg !1915
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_double(ptr noundef %w, ptr noundef %name, double noundef %val) #0 !dbg !1916 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca double, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1920, metadata !DIExpression()), !dbg !1924
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1921, metadata !DIExpression()), !dbg !1925
  store double %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1922, metadata !DIExpression()), !dbg !1926
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1927
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1923, metadata !DIExpression()), !dbg !1928
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1929
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1930
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1931
  store i32 %call, ptr %rc, align 4, !dbg !1928
  %2 = load i32, ptr %rc, align 4, !dbg !1932
  %tobool = icmp ne i32 %2, 0, !dbg !1932
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1932

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1933
  br label %cond.end, !dbg !1932

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1934
  %5 = load double, ptr %val.addr, align 8, !dbg !1935
  %call1 = call i32 @spdk_json_write_double(ptr noundef %4, double noundef %5), !dbg !1936
  br label %cond.end, !dbg !1932

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1932
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1937
  ret i32 %cond, !dbg !1938
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_string(ptr noundef %w, ptr noundef %name, ptr noundef %val) #0 !dbg !1939 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1943, metadata !DIExpression()), !dbg !1947
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1944, metadata !DIExpression()), !dbg !1948
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1945, metadata !DIExpression()), !dbg !1949
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1950
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1946, metadata !DIExpression()), !dbg !1951
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1952
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1953
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !1954
  store i32 %call, ptr %rc, align 4, !dbg !1951
  %2 = load i32, ptr %rc, align 4, !dbg !1955
  %tobool = icmp ne i32 %2, 0, !dbg !1955
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1955

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1956
  br label %cond.end, !dbg !1955

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !1957
  %5 = load ptr, ptr %val.addr, align 8, !dbg !1958
  %call1 = call i32 @spdk_json_write_string(ptr noundef %4, ptr noundef %5), !dbg !1959
  br label %cond.end, !dbg !1955

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !1955
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1960
  ret i32 %cond, !dbg !1961
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_string_fmt(ptr noundef %w, ptr noundef %name, ptr noundef %fmt, ...) #0 !dbg !1962 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1966, metadata !DIExpression()), !dbg !1971
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1967, metadata !DIExpression()), !dbg !1972
  store ptr %fmt, ptr %fmt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1968, metadata !DIExpression()), !dbg !1973
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !1974
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !1969, metadata !DIExpression()), !dbg !1975
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !1976
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1970, metadata !DIExpression()), !dbg !1977
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1978
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !1978
  %0 = load ptr, ptr %w.addr, align 8, !dbg !1979
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1980
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !1981
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1982
  %call = call i32 @spdk_json_write_named_string_fmt_v(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %arraydecay1), !dbg !1983
  store i32 %call, ptr %rc, align 4, !dbg !1984
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1985
  call void @llvm.va_end.p0(ptr %arraydecay2), !dbg !1985
  %3 = load i32, ptr %rc, align 4, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !1987
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !1987
  ret i32 %3, !dbg !1988
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_string_fmt_v(ptr noundef %w, ptr noundef %name, ptr noundef %fmt, ptr noundef %args) #0 !dbg !1989 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !1993, metadata !DIExpression()), !dbg !1999
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1994, metadata !DIExpression()), !dbg !2000
  store ptr %fmt, ptr %fmt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1995, metadata !DIExpression()), !dbg !2001
  store ptr %args, ptr %args.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1996, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !2003
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1997, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !2005
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1998, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2007
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2008
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !2009
  store i32 %call, ptr %rc, align 4, !dbg !2010
  %2 = load i32, ptr %rc, align 4, !dbg !2011
  %tobool = icmp ne i32 %2, 0, !dbg !2011
  br i1 %tobool, label %if.then, label %if.end, !dbg !2013

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !2014
  store i32 %3, ptr %retval, align 4, !dbg !2016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2016

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fmt.addr, align 8, !dbg !2017
  %5 = load ptr, ptr %args.addr, align 8, !dbg !2018
  %call1 = call ptr @spdk_vsprintf_alloc(ptr noundef %4, ptr noundef %5), !dbg !2019
  store ptr %call1, ptr %s, align 8, !dbg !2020
  %6 = load ptr, ptr %s, align 8, !dbg !2021
  %cmp = icmp eq ptr %6, null, !dbg !2023
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2024

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !2025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2025

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %w.addr, align 8, !dbg !2027
  %8 = load ptr, ptr %s, align 8, !dbg !2028
  %call4 = call i32 @spdk_json_write_string(ptr noundef %7, ptr noundef %8), !dbg !2029
  store i32 %call4, ptr %rc, align 4, !dbg !2030
  %9 = load ptr, ptr %s, align 8, !dbg !2031
  call void @free(ptr noundef %9) #15, !dbg !2032
  %10 = load i32, ptr %rc, align 4, !dbg !2033
  store i32 %10, ptr %retval, align 4, !dbg !2034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2034

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !2035
  %11 = load i32, ptr %retval, align 4, !dbg !2035
  ret i32 %11, !dbg !2035
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_bytearray(ptr noundef %w, ptr noundef %name, ptr noundef %val, i64 noundef %len) #0 !dbg !2036 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2040, metadata !DIExpression()), !dbg !2045
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2041, metadata !DIExpression()), !dbg !2046
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2042, metadata !DIExpression()), !dbg !2047
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2043, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !2049
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2044, metadata !DIExpression()), !dbg !2050
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2051
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2052
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !2053
  store i32 %call, ptr %rc, align 4, !dbg !2050
  %2 = load i32, ptr %rc, align 4, !dbg !2054
  %tobool = icmp ne i32 %2, 0, !dbg !2054
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2054

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !2055
  br label %cond.end, !dbg !2054

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !2056
  %5 = load ptr, ptr %val.addr, align 8, !dbg !2057
  %6 = load i64, ptr %len.addr, align 8, !dbg !2058
  %call1 = call i32 @spdk_json_write_bytearray(ptr noundef %4, ptr noundef %5, i64 noundef %6), !dbg !2059
  br label %cond.end, !dbg !2054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !2054
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !2060
  ret i32 %cond, !dbg !2061
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_array_begin(ptr noundef %w, ptr noundef %name) #0 !dbg !2062 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2064, metadata !DIExpression()), !dbg !2067
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !2069
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2066, metadata !DIExpression()), !dbg !2070
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2071
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2072
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !2073
  store i32 %call, ptr %rc, align 4, !dbg !2070
  %2 = load i32, ptr %rc, align 4, !dbg !2074
  %tobool = icmp ne i32 %2, 0, !dbg !2074
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2074

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !2075
  br label %cond.end, !dbg !2074

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !2076
  %call1 = call i32 @spdk_json_write_array_begin(ptr noundef %4), !dbg !2077
  br label %cond.end, !dbg !2074

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !2074
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !2078
  ret i32 %cond, !dbg !2079
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_json_write_named_object_begin(ptr noundef %w, ptr noundef %name) #0 !dbg !2080 {
entry:
  %w.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2082, metadata !DIExpression()), !dbg !2085
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !2087
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2084, metadata !DIExpression()), !dbg !2088
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2089
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2090
  %call = call i32 @spdk_json_write_name(ptr noundef %0, ptr noundef %1), !dbg !2091
  store i32 %call, ptr %rc, align 4, !dbg !2088
  %2 = load i32, ptr %rc, align 4, !dbg !2092
  %tobool = icmp ne i32 %2, 0, !dbg !2092
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2092

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !2093
  br label %cond.end, !dbg !2092

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %w.addr, align 8, !dbg !2094
  %call1 = call i32 @spdk_json_write_object_begin(ptr noundef %4), !dbg !2095
  br label %cond.end, !dbg !2092

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %call1, %cond.false ], !dbg !2092
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !2096
  ret i32 %cond, !dbg !2097
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_buf_full(ptr noundef %w, ptr noundef %data, i64 noundef %size) #0 !dbg !2098 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %buf_remain = alloca i64, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2100, metadata !DIExpression()), !dbg !2105
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2101, metadata !DIExpression()), !dbg !2106
  store i64 %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2102, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_remain) #15, !dbg !2108
  tail call void @llvm.dbg.declare(metadata ptr %buf_remain, metadata !2103, metadata !DIExpression()), !dbg !2109
  %0 = load ptr, ptr %w.addr, align 8, !dbg !2110
  %buf_filled = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %0, i32 0, i32 7, !dbg !2111
  %1 = load i64, ptr %buf_filled, align 8, !dbg !2111
  %sub = sub i64 4096, %1, !dbg !2112
  store i64 %sub, ptr %buf_remain, align 8, !dbg !2109
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !2113
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2104, metadata !DIExpression()), !dbg !2114
  %2 = load ptr, ptr %w.addr, align 8, !dbg !2115
  %buf = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %2, i32 0, i32 8, !dbg !2116
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !2115
  %3 = load ptr, ptr %w.addr, align 8, !dbg !2117
  %buf_filled1 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %3, i32 0, i32 7, !dbg !2118
  %4 = load i64, ptr %buf_filled1, align 8, !dbg !2118
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %4, !dbg !2119
  %5 = load ptr, ptr %data.addr, align 8, !dbg !2120
  %6 = load i64, ptr %buf_remain, align 8, !dbg !2121
  %call = call ptr @memcpy.inline(ptr noundef %add.ptr, ptr noundef %5, i64 noundef %6) #15, !dbg !2122
  %7 = load i64, ptr %buf_remain, align 8, !dbg !2123
  %8 = load ptr, ptr %w.addr, align 8, !dbg !2124
  %buf_filled2 = getelementptr inbounds %struct.spdk_json_write_ctx, ptr %8, i32 0, i32 7, !dbg !2125
  %9 = load i64, ptr %buf_filled2, align 8, !dbg !2126
  %add = add i64 %9, %7, !dbg !2126
  store i64 %add, ptr %buf_filled2, align 8, !dbg !2126
  %10 = load ptr, ptr %w.addr, align 8, !dbg !2127
  %call3 = call i32 @flush_buf(ptr noundef %10), !dbg !2128
  store i32 %call3, ptr %rc, align 4, !dbg !2129
  %11 = load i32, ptr %rc, align 4, !dbg !2130
  %cmp = icmp ne i32 %11, 0, !dbg !2132
  br i1 %cmp, label %if.then, label %if.end, !dbg !2133

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %w.addr, align 8, !dbg !2134
  %call4 = call i32 @fail(ptr noundef %12), !dbg !2136
  store i32 %call4, ptr %retval, align 4, !dbg !2137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2137

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %w.addr, align 8, !dbg !2138
  %14 = load ptr, ptr %data.addr, align 8, !dbg !2139
  %15 = load i64, ptr %buf_remain, align 8, !dbg !2140
  %add.ptr5 = getelementptr i8, ptr %14, i64 %15, !dbg !2141
  %16 = load i64, ptr %size.addr, align 8, !dbg !2142
  %17 = load i64, ptr %buf_remain, align 8, !dbg !2143
  %sub6 = sub i64 %16, %17, !dbg !2144
  %call7 = call i32 @emit(ptr noundef %13, ptr noundef %add.ptr5, i64 noundef %sub6), !dbg !2145
  store i32 %call7, ptr %retval, align 4, !dbg !2146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2146

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !2147
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_remain) #15, !dbg !2147
  %18 = load i32, ptr %retval, align 4, !dbg !2147
  ret i32 %18, !dbg !2147
}

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: alwaysinline nounwind
define internal ptr @memcpy.inline(ptr noalias nonnull %__dest, ptr noalias nonnull %__src, i64 %__len) #11 !dbg !2148 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__src.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__dest.addr, metadata !2155, metadata !DIExpression()), !dbg !2158
  store ptr %__src, ptr %__src.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__src.addr, metadata !2156, metadata !DIExpression()), !dbg !2158
  store i64 %__len, ptr %__len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__len.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  %0 = load ptr, ptr %__dest.addr, align 8, !dbg !2159
  %1 = load ptr, ptr %__src.addr, align 8, !dbg !2160
  %2 = load i64, ptr %__len.addr, align 8, !dbg !2161
  %3 = load ptr, ptr %__dest.addr, align 8, !dbg !2162
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false), !dbg !2162
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4) #15, !dbg !2163
  ret ptr %call, !dbg !2164
}

; Function Attrs: nounwind
declare !dbg !2165 ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #12

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf8_valid(ptr noundef %start, ptr noundef %end) #4 !dbg !2168 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %b0 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b3 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2173, metadata !DIExpression()), !dbg !2180
  store ptr %end, ptr %end.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2182
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2175, metadata !DIExpression()), !dbg !2183
  %0 = load ptr, ptr %start.addr, align 8, !dbg !2184
  store ptr %0, ptr %p, align 8, !dbg !2183
  call void @llvm.lifetime.start.p0(i64 1, ptr %b0) #15, !dbg !2185
  tail call void @llvm.dbg.declare(metadata ptr %b0, metadata !2176, metadata !DIExpression()), !dbg !2186
  call void @llvm.lifetime.start.p0(i64 1, ptr %b1) #15, !dbg !2185
  tail call void @llvm.dbg.declare(metadata ptr %b1, metadata !2177, metadata !DIExpression()), !dbg !2187
  call void @llvm.lifetime.start.p0(i64 1, ptr %b2) #15, !dbg !2185
  tail call void @llvm.dbg.declare(metadata ptr %b2, metadata !2178, metadata !DIExpression()), !dbg !2188
  call void @llvm.lifetime.start.p0(i64 1, ptr %b3) #15, !dbg !2185
  tail call void @llvm.dbg.declare(metadata ptr %b3, metadata !2179, metadata !DIExpression()), !dbg !2189
  %1 = load ptr, ptr %p, align 8, !dbg !2190
  %2 = load ptr, ptr %end.addr, align 8, !dbg !2192
  %cmp = icmp eq ptr %1, %2, !dbg !2193
  br i1 %cmp, label %if.then, label %if.end, !dbg !2194

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2195

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !dbg !2197
  %4 = load i8, ptr %3, align 1, !dbg !2198
  store i8 %4, ptr %b0, align 1, !dbg !2199
  %5 = load i8, ptr %b0, align 1, !dbg !2200
  %conv = zext i8 %5 to i32, !dbg !2200
  %cmp1 = icmp sle i32 %conv, 127, !dbg !2202
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !2203

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2204

if.end4:                                          ; preds = %if.end
  %6 = load i8, ptr %b0, align 1, !dbg !2206
  %conv5 = zext i8 %6 to i32, !dbg !2206
  %cmp6 = icmp sle i32 %conv5, 193, !dbg !2208
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2209

if.then8:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4, !dbg !2210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2210

if.end9:                                          ; preds = %if.end4
  %7 = load ptr, ptr %p, align 8, !dbg !2212
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !2212
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !2212
  %8 = load ptr, ptr %end.addr, align 8, !dbg !2214
  %cmp10 = icmp eq ptr %incdec.ptr, %8, !dbg !2215
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2216

if.then12:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4, !dbg !2217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2217

if.end13:                                         ; preds = %if.end9
  %9 = load ptr, ptr %p, align 8, !dbg !2219
  %10 = load i8, ptr %9, align 1, !dbg !2220
  store i8 %10, ptr %b1, align 1, !dbg !2221
  %11 = load i8, ptr %b0, align 1, !dbg !2222
  %conv14 = zext i8 %11 to i32, !dbg !2222
  %cmp15 = icmp sle i32 %conv14, 223, !dbg !2224
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !2225

if.then17:                                        ; preds = %if.end13
  %12 = load i8, ptr %b1, align 1, !dbg !2226
  %call = call zeroext i1 @utf8_tail(i8 noundef zeroext %12), !dbg !2229
  br i1 %call, label %if.end19, label %if.then18, !dbg !2230

if.then18:                                        ; preds = %if.then17
  store i32 -1, ptr %retval, align 4, !dbg !2231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2231

if.end19:                                         ; preds = %if.then17
  store i32 2, ptr %retval, align 4, !dbg !2233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2233

if.end20:                                         ; preds = %if.end13
  %13 = load ptr, ptr %p, align 8, !dbg !2234
  %incdec.ptr21 = getelementptr inbounds i8, ptr %13, i32 1, !dbg !2234
  store ptr %incdec.ptr21, ptr %p, align 8, !dbg !2234
  %14 = load ptr, ptr %end.addr, align 8, !dbg !2236
  %cmp22 = icmp eq ptr %incdec.ptr21, %14, !dbg !2237
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !2238

if.then24:                                        ; preds = %if.end20
  store i32 -1, ptr %retval, align 4, !dbg !2239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2239

if.end25:                                         ; preds = %if.end20
  %15 = load ptr, ptr %p, align 8, !dbg !2241
  %16 = load i8, ptr %15, align 1, !dbg !2242
  store i8 %16, ptr %b2, align 1, !dbg !2243
  %17 = load i8, ptr %b0, align 1, !dbg !2244
  %conv26 = zext i8 %17 to i32, !dbg !2244
  %cmp27 = icmp eq i32 %conv26, 224, !dbg !2246
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !2247

if.then29:                                        ; preds = %if.end25
  %18 = load i8, ptr %b1, align 1, !dbg !2248
  %conv30 = zext i8 %18 to i32, !dbg !2248
  %cmp31 = icmp slt i32 %conv30, 160, !dbg !2251
  br i1 %cmp31, label %if.then38, label %lor.lhs.false, !dbg !2252

lor.lhs.false:                                    ; preds = %if.then29
  %19 = load i8, ptr %b1, align 1, !dbg !2253
  %conv33 = zext i8 %19 to i32, !dbg !2253
  %cmp34 = icmp sgt i32 %conv33, 191, !dbg !2254
  br i1 %cmp34, label %if.then38, label %lor.lhs.false36, !dbg !2255

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %20 = load i8, ptr %b2, align 1, !dbg !2256
  %call37 = call zeroext i1 @utf8_tail(i8 noundef zeroext %20), !dbg !2257
  br i1 %call37, label %if.end39, label %if.then38, !dbg !2258

if.then38:                                        ; preds = %lor.lhs.false36, %lor.lhs.false, %if.then29
  store i32 -1, ptr %retval, align 4, !dbg !2259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2259

if.end39:                                         ; preds = %lor.lhs.false36
  store i32 3, ptr %retval, align 4, !dbg !2261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2261

if.else:                                          ; preds = %if.end25
  %21 = load i8, ptr %b0, align 1, !dbg !2262
  %conv40 = zext i8 %21 to i32, !dbg !2262
  %cmp41 = icmp eq i32 %conv40, 237, !dbg !2264
  br i1 %cmp41, label %land.lhs.true, label %if.else47, !dbg !2265

land.lhs.true:                                    ; preds = %if.else
  %22 = load i8, ptr %b1, align 1, !dbg !2266
  %conv43 = zext i8 %22 to i32, !dbg !2266
  %cmp44 = icmp sge i32 %conv43, 160, !dbg !2267
  br i1 %cmp44, label %if.then46, label %if.else47, !dbg !2268

if.then46:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !2269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2269

if.else47:                                        ; preds = %land.lhs.true, %if.else
  %23 = load i8, ptr %b0, align 1, !dbg !2271
  %conv48 = zext i8 %23 to i32, !dbg !2271
  %cmp49 = icmp sle i32 %conv48, 239, !dbg !2273
  br i1 %cmp49, label %if.then51, label %if.end57, !dbg !2274

if.then51:                                        ; preds = %if.else47
  %24 = load i8, ptr %b1, align 1, !dbg !2275
  %call52 = call zeroext i1 @utf8_tail(i8 noundef zeroext %24), !dbg !2278
  br i1 %call52, label %lor.lhs.false53, label %if.then55, !dbg !2279

lor.lhs.false53:                                  ; preds = %if.then51
  %25 = load i8, ptr %b2, align 1, !dbg !2280
  %call54 = call zeroext i1 @utf8_tail(i8 noundef zeroext %25), !dbg !2281
  br i1 %call54, label %if.end56, label %if.then55, !dbg !2282

if.then55:                                        ; preds = %lor.lhs.false53, %if.then51
  store i32 -1, ptr %retval, align 4, !dbg !2283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2283

if.end56:                                         ; preds = %lor.lhs.false53
  store i32 3, ptr %retval, align 4, !dbg !2285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2285

if.end57:                                         ; preds = %if.else47
  br label %if.end58

if.end58:                                         ; preds = %if.end57
  br label %if.end59

if.end59:                                         ; preds = %if.end58
  %26 = load ptr, ptr %p, align 8, !dbg !2286
  %incdec.ptr60 = getelementptr inbounds i8, ptr %26, i32 1, !dbg !2286
  store ptr %incdec.ptr60, ptr %p, align 8, !dbg !2286
  %27 = load ptr, ptr %end.addr, align 8, !dbg !2288
  %cmp61 = icmp eq ptr %incdec.ptr60, %27, !dbg !2289
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !2290

if.then63:                                        ; preds = %if.end59
  store i32 -1, ptr %retval, align 4, !dbg !2291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2291

if.end64:                                         ; preds = %if.end59
  %28 = load ptr, ptr %p, align 8, !dbg !2293
  %29 = load i8, ptr %28, align 1, !dbg !2294
  store i8 %29, ptr %b3, align 1, !dbg !2295
  %30 = load i8, ptr %b0, align 1, !dbg !2296
  %conv65 = zext i8 %30 to i32, !dbg !2296
  %cmp66 = icmp eq i32 %conv65, 240, !dbg !2298
  br i1 %cmp66, label %if.then68, label %if.else82, !dbg !2299

if.then68:                                        ; preds = %if.end64
  %31 = load i8, ptr %b1, align 1, !dbg !2300
  %conv69 = zext i8 %31 to i32, !dbg !2300
  %cmp70 = icmp slt i32 %conv69, 144, !dbg !2303
  br i1 %cmp70, label %if.then80, label %lor.lhs.false72, !dbg !2304

lor.lhs.false72:                                  ; preds = %if.then68
  %32 = load i8, ptr %b1, align 1, !dbg !2305
  %conv73 = zext i8 %32 to i32, !dbg !2305
  %cmp74 = icmp sgt i32 %conv73, 191, !dbg !2306
  br i1 %cmp74, label %if.then80, label %lor.lhs.false76, !dbg !2307

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %33 = load i8, ptr %b2, align 1, !dbg !2308
  %call77 = call zeroext i1 @utf8_tail(i8 noundef zeroext %33), !dbg !2309
  br i1 %call77, label %lor.lhs.false78, label %if.then80, !dbg !2310

lor.lhs.false78:                                  ; preds = %lor.lhs.false76
  %34 = load i8, ptr %b3, align 1, !dbg !2311
  %call79 = call zeroext i1 @utf8_tail(i8 noundef zeroext %34), !dbg !2312
  br i1 %call79, label %if.end81, label %if.then80, !dbg !2313

if.then80:                                        ; preds = %lor.lhs.false78, %lor.lhs.false76, %lor.lhs.false72, %if.then68
  store i32 -1, ptr %retval, align 4, !dbg !2314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2314

if.end81:                                         ; preds = %lor.lhs.false78
  store i32 4, ptr %retval, align 4, !dbg !2316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2316

if.else82:                                        ; preds = %if.end64
  %35 = load i8, ptr %b0, align 1, !dbg !2317
  %conv83 = zext i8 %35 to i32, !dbg !2317
  %cmp84 = icmp sle i32 %conv83, 243, !dbg !2319
  br i1 %cmp84, label %if.then86, label %if.else94, !dbg !2320

if.then86:                                        ; preds = %if.else82
  %36 = load i8, ptr %b1, align 1, !dbg !2321
  %call87 = call zeroext i1 @utf8_tail(i8 noundef zeroext %36), !dbg !2324
  br i1 %call87, label %lor.lhs.false88, label %if.then92, !dbg !2325

lor.lhs.false88:                                  ; preds = %if.then86
  %37 = load i8, ptr %b2, align 1, !dbg !2326
  %call89 = call zeroext i1 @utf8_tail(i8 noundef zeroext %37), !dbg !2327
  br i1 %call89, label %lor.lhs.false90, label %if.then92, !dbg !2328

lor.lhs.false90:                                  ; preds = %lor.lhs.false88
  %38 = load i8, ptr %b3, align 1, !dbg !2329
  %call91 = call zeroext i1 @utf8_tail(i8 noundef zeroext %38), !dbg !2330
  br i1 %call91, label %if.end93, label %if.then92, !dbg !2331

if.then92:                                        ; preds = %lor.lhs.false90, %lor.lhs.false88, %if.then86
  store i32 -1, ptr %retval, align 4, !dbg !2332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2332

if.end93:                                         ; preds = %lor.lhs.false90
  store i32 4, ptr %retval, align 4, !dbg !2334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2334

if.else94:                                        ; preds = %if.else82
  %39 = load i8, ptr %b0, align 1, !dbg !2335
  %conv95 = zext i8 %39 to i32, !dbg !2335
  %cmp96 = icmp eq i32 %conv95, 244, !dbg !2337
  br i1 %cmp96, label %if.then98, label %if.end112, !dbg !2338

if.then98:                                        ; preds = %if.else94
  %40 = load i8, ptr %b1, align 1, !dbg !2339
  %conv99 = zext i8 %40 to i32, !dbg !2339
  %cmp100 = icmp slt i32 %conv99, 128, !dbg !2342
  br i1 %cmp100, label %if.then110, label %lor.lhs.false102, !dbg !2343

lor.lhs.false102:                                 ; preds = %if.then98
  %41 = load i8, ptr %b1, align 1, !dbg !2344
  %conv103 = zext i8 %41 to i32, !dbg !2344
  %cmp104 = icmp sgt i32 %conv103, 143, !dbg !2345
  br i1 %cmp104, label %if.then110, label %lor.lhs.false106, !dbg !2346

lor.lhs.false106:                                 ; preds = %lor.lhs.false102
  %42 = load i8, ptr %b2, align 1, !dbg !2347
  %call107 = call zeroext i1 @utf8_tail(i8 noundef zeroext %42), !dbg !2348
  br i1 %call107, label %lor.lhs.false108, label %if.then110, !dbg !2349

lor.lhs.false108:                                 ; preds = %lor.lhs.false106
  %43 = load i8, ptr %b3, align 1, !dbg !2350
  %call109 = call zeroext i1 @utf8_tail(i8 noundef zeroext %43), !dbg !2351
  br i1 %call109, label %if.end111, label %if.then110, !dbg !2352

if.then110:                                       ; preds = %lor.lhs.false108, %lor.lhs.false106, %lor.lhs.false102, %if.then98
  store i32 -1, ptr %retval, align 4, !dbg !2353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2353

if.end111:                                        ; preds = %lor.lhs.false108
  store i32 4, ptr %retval, align 4, !dbg !2355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2355

if.end112:                                        ; preds = %if.else94
  br label %if.end113

if.end113:                                        ; preds = %if.end112
  br label %if.end114

if.end114:                                        ; preds = %if.end113
  store i32 -1, ptr %retval, align 4, !dbg !2356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2356

cleanup:                                          ; preds = %if.end114, %if.end111, %if.then110, %if.end93, %if.then92, %if.end81, %if.then80, %if.then63, %if.end56, %if.then55, %if.then46, %if.end39, %if.then38, %if.then24, %if.end19, %if.then18, %if.then12, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %b3) #15, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 1, ptr %b2) #15, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 1, ptr %b1) #15, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 1, ptr %b0) #15, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2357
  %44 = load i32, ptr %retval, align 4, !dbg !2357
  ret i32 %44, !dbg !2357
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf8_decode_unsafe_1(ptr noundef %data) #4 !dbg !2358 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2362, metadata !DIExpression()), !dbg !2363
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2364
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !2364
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2364
  %conv = zext i8 %1 to i32, !dbg !2364
  ret i32 %conv, !dbg !2365
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf8_decode_unsafe_2(ptr noundef %data) #4 !dbg !2366 {
entry:
  %data.addr = alloca ptr, align 8
  %codepoint = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint) #15, !dbg !2371
  tail call void @llvm.dbg.declare(metadata ptr %codepoint, metadata !2369, metadata !DIExpression()), !dbg !2372
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2373
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !2373
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2373
  %conv = zext i8 %1 to i32, !dbg !2373
  %and = and i32 %conv, 31, !dbg !2374
  %shl = shl i32 %and, 6, !dbg !2375
  store i32 %shl, ptr %codepoint, align 4, !dbg !2376
  %2 = load ptr, ptr %data.addr, align 8, !dbg !2377
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2377
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !2377
  %conv2 = zext i8 %3 to i32, !dbg !2377
  %and3 = and i32 %conv2, 63, !dbg !2378
  %4 = load i32, ptr %codepoint, align 4, !dbg !2379
  %or = or i32 %4, %and3, !dbg !2379
  store i32 %or, ptr %codepoint, align 4, !dbg !2379
  %5 = load i32, ptr %codepoint, align 4, !dbg !2380
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint) #15, !dbg !2381
  ret i32 %5, !dbg !2382
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf8_decode_unsafe_3(ptr noundef %data) #4 !dbg !2383 {
entry:
  %data.addr = alloca ptr, align 8
  %codepoint = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint) #15, !dbg !2388
  tail call void @llvm.dbg.declare(metadata ptr %codepoint, metadata !2386, metadata !DIExpression()), !dbg !2389
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2390
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !2390
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2390
  %conv = zext i8 %1 to i32, !dbg !2390
  %and = and i32 %conv, 15, !dbg !2391
  %shl = shl i32 %and, 12, !dbg !2392
  store i32 %shl, ptr %codepoint, align 4, !dbg !2393
  %2 = load ptr, ptr %data.addr, align 8, !dbg !2394
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2394
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !2394
  %conv2 = zext i8 %3 to i32, !dbg !2394
  %and3 = and i32 %conv2, 63, !dbg !2395
  %shl4 = shl i32 %and3, 6, !dbg !2396
  %4 = load i32, ptr %codepoint, align 4, !dbg !2397
  %or = or i32 %4, %shl4, !dbg !2397
  store i32 %or, ptr %codepoint, align 4, !dbg !2397
  %5 = load ptr, ptr %data.addr, align 8, !dbg !2398
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 2, !dbg !2398
  %6 = load i8, ptr %arrayidx5, align 1, !dbg !2398
  %conv6 = zext i8 %6 to i32, !dbg !2398
  %and7 = and i32 %conv6, 63, !dbg !2399
  %7 = load i32, ptr %codepoint, align 4, !dbg !2400
  %or8 = or i32 %7, %and7, !dbg !2400
  store i32 %or8, ptr %codepoint, align 4, !dbg !2400
  %8 = load i32, ptr %codepoint, align 4, !dbg !2401
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint) #15, !dbg !2402
  ret i32 %8, !dbg !2403
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf8_decode_unsafe_4(ptr noundef %data) #4 !dbg !2404 {
entry:
  %data.addr = alloca ptr, align 8
  %codepoint = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint) #15, !dbg !2409
  tail call void @llvm.dbg.declare(metadata ptr %codepoint, metadata !2407, metadata !DIExpression()), !dbg !2410
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2411
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !2411
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2411
  %conv = zext i8 %1 to i32, !dbg !2411
  %and = and i32 %conv, 7, !dbg !2412
  %shl = shl i32 %and, 18, !dbg !2413
  store i32 %shl, ptr %codepoint, align 4, !dbg !2414
  %2 = load ptr, ptr %data.addr, align 8, !dbg !2415
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2415
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !2415
  %conv2 = zext i8 %3 to i32, !dbg !2415
  %and3 = and i32 %conv2, 63, !dbg !2416
  %shl4 = shl i32 %and3, 12, !dbg !2417
  %4 = load i32, ptr %codepoint, align 4, !dbg !2418
  %or = or i32 %4, %shl4, !dbg !2418
  store i32 %or, ptr %codepoint, align 4, !dbg !2418
  %5 = load ptr, ptr %data.addr, align 8, !dbg !2419
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 2, !dbg !2419
  %6 = load i8, ptr %arrayidx5, align 1, !dbg !2419
  %conv6 = zext i8 %6 to i32, !dbg !2419
  %and7 = and i32 %conv6, 63, !dbg !2420
  %shl8 = shl i32 %and7, 6, !dbg !2421
  %7 = load i32, ptr %codepoint, align 4, !dbg !2422
  %or9 = or i32 %7, %shl8, !dbg !2422
  store i32 %or9, ptr %codepoint, align 4, !dbg !2422
  %8 = load ptr, ptr %data.addr, align 8, !dbg !2423
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 3, !dbg !2423
  %9 = load i8, ptr %arrayidx10, align 1, !dbg !2423
  %conv11 = zext i8 %9 to i32, !dbg !2423
  %and12 = and i32 %conv11, 63, !dbg !2424
  %10 = load i32, ptr %codepoint, align 4, !dbg !2425
  %or13 = or i32 %10, %and12, !dbg !2425
  store i32 %or13, ptr %codepoint, align 4, !dbg !2425
  %11 = load i32, ptr %codepoint, align 4, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint) #15, !dbg !2427
  ret i32 %11, !dbg !2428
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @write_codepoint(ptr noundef %w, i32 noundef %codepoint) #4 !dbg !62 {
entry:
  %w.addr = alloca ptr, align 8
  %codepoint.addr = alloca i32, align 4
  %high = alloca i16, align 2
  %low = alloca i16, align 2
  %out = alloca [13 x i8], align 1
  %out_len = alloca i64, align 8
  store ptr %w, ptr %w.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !128, metadata !DIExpression()), !dbg !2429
  store i32 %codepoint, ptr %codepoint.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %codepoint.addr, metadata !129, metadata !DIExpression()), !dbg !2430
  call void @llvm.lifetime.start.p0(i64 2, ptr %high) #15, !dbg !2431
  tail call void @llvm.dbg.declare(metadata ptr %high, metadata !130, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 2, ptr %low) #15, !dbg !2431
  tail call void @llvm.dbg.declare(metadata ptr %low, metadata !131, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 13, ptr %out) #15, !dbg !2434
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !132, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_len) #15, !dbg !2436
  tail call void @llvm.dbg.declare(metadata ptr %out_len, metadata !136, metadata !DIExpression()), !dbg !2437
  %0 = load i32, ptr %codepoint.addr, align 4, !dbg !2438
  %conv = zext i32 %0 to i64, !dbg !2438
  %cmp = icmp ult i64 %conv, 93, !dbg !2440
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2441

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %codepoint.addr, align 4, !dbg !2442
  %idxprom = zext i32 %1 to i64, !dbg !2443
  %arrayidx = getelementptr inbounds [93 x i8], ptr @write_codepoint.escapes, i64 0, i64 %idxprom, !dbg !2443
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2443
  %conv2 = zext i8 %2 to i32, !dbg !2443
  %tobool = icmp ne i32 %conv2, 0, !dbg !2443
  br i1 %tobool, label %if.then, label %if.else, !dbg !2444

if.then:                                          ; preds = %land.lhs.true
  %arrayidx3 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 0, !dbg !2445
  store i8 92, ptr %arrayidx3, align 1, !dbg !2447
  %3 = load i32, ptr %codepoint.addr, align 4, !dbg !2448
  %idxprom4 = zext i32 %3 to i64, !dbg !2449
  %arrayidx5 = getelementptr inbounds [93 x i8], ptr @write_codepoint.escapes, i64 0, i64 %idxprom4, !dbg !2449
  %4 = load i8, ptr %arrayidx5, align 1, !dbg !2449
  %arrayidx6 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 1, !dbg !2450
  store i8 %4, ptr %arrayidx6, align 1, !dbg !2451
  store i64 2, ptr %out_len, align 8, !dbg !2452
  br label %if.end31, !dbg !2453

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %codepoint.addr, align 4, !dbg !2454
  %cmp7 = icmp uge i32 %5, 32, !dbg !2456
  br i1 %cmp7, label %land.lhs.true9, label %if.else15, !dbg !2457

land.lhs.true9:                                   ; preds = %if.else
  %6 = load i32, ptr %codepoint.addr, align 4, !dbg !2458
  %cmp10 = icmp ult i32 %6, 127, !dbg !2459
  br i1 %cmp10, label %if.then12, label %if.else15, !dbg !2460

if.then12:                                        ; preds = %land.lhs.true9
  %7 = load i32, ptr %codepoint.addr, align 4, !dbg !2461
  %conv13 = trunc i32 %7 to i8, !dbg !2463
  %arrayidx14 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 0, !dbg !2464
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !2465
  store i64 1, ptr %out_len, align 8, !dbg !2466
  br label %if.end30, !dbg !2467

if.else15:                                        ; preds = %land.lhs.true9, %if.else
  %8 = load i32, ptr %codepoint.addr, align 4, !dbg !2468
  %cmp16 = icmp ult i32 %8, 65536, !dbg !2470
  br i1 %cmp16, label %if.then18, label %if.else23, !dbg !2471

if.then18:                                        ; preds = %if.else15
  %arrayidx19 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 0, !dbg !2472
  store i8 92, ptr %arrayidx19, align 1, !dbg !2474
  %arrayidx20 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 1, !dbg !2475
  store i8 117, ptr %arrayidx20, align 1, !dbg !2476
  %arrayidx21 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 2, !dbg !2477
  %9 = load i32, ptr %codepoint.addr, align 4, !dbg !2478
  %conv22 = trunc i32 %9 to i16, !dbg !2479
  call void @write_hex_4(ptr noundef %arrayidx21, i16 noundef zeroext %conv22), !dbg !2480
  store i64 6, ptr %out_len, align 8, !dbg !2481
  br label %if.end, !dbg !2482

if.else23:                                        ; preds = %if.else15
  %10 = load i32, ptr %codepoint.addr, align 4, !dbg !2483
  call void @utf16_encode_surrogate_pair(i32 noundef %10, ptr noundef %high, ptr noundef %low), !dbg !2485
  %arrayidx24 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 0, !dbg !2486
  store i8 92, ptr %arrayidx24, align 1, !dbg !2487
  %arrayidx25 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 1, !dbg !2488
  store i8 117, ptr %arrayidx25, align 1, !dbg !2489
  %arrayidx26 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 2, !dbg !2490
  %11 = load i16, ptr %high, align 2, !dbg !2491
  call void @write_hex_4(ptr noundef %arrayidx26, i16 noundef zeroext %11), !dbg !2492
  %arrayidx27 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 6, !dbg !2493
  store i8 92, ptr %arrayidx27, align 1, !dbg !2494
  %arrayidx28 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 7, !dbg !2495
  store i8 117, ptr %arrayidx28, align 1, !dbg !2496
  %arrayidx29 = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 8, !dbg !2497
  %12 = load i16, ptr %low, align 2, !dbg !2498
  call void @write_hex_4(ptr noundef %arrayidx29, i16 noundef zeroext %12), !dbg !2499
  store i64 12, ptr %out_len, align 8, !dbg !2500
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then18
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then12
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %13 = load ptr, ptr %w.addr, align 8, !dbg !2501
  %arraydecay = getelementptr inbounds [13 x i8], ptr %out, i64 0, i64 0, !dbg !2502
  %14 = load i64, ptr %out_len, align 8, !dbg !2503
  %call = call i32 @emit(ptr noundef %13, ptr noundef %arraydecay, i64 noundef %14), !dbg !2504
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_len) #15, !dbg !2505
  call void @llvm.lifetime.end.p0(i64 13, ptr %out) #15, !dbg !2505
  call void @llvm.lifetime.end.p0(i64 2, ptr %low) #15, !dbg !2505
  call void @llvm.lifetime.end.p0(i64 2, ptr %high) #15, !dbg !2505
  ret i32 %call, !dbg !2506
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @utf8_tail(i8 noundef zeroext %c) #4 !dbg !2507 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2511, metadata !DIExpression()), !dbg !2512
  %0 = load i8, ptr %c.addr, align 1, !dbg !2513
  %conv = zext i8 %0 to i32, !dbg !2513
  %and = and i32 %conv, 192, !dbg !2514
  %cmp = icmp eq i32 %and, 128, !dbg !2515
  ret i1 %cmp, !dbg !2516
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_hex_4(ptr noundef %dest, i16 noundef zeroext %val) #0 !dbg !2517 {
entry:
  %dest.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  store ptr %dest, ptr %dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !2521, metadata !DIExpression()), !dbg !2523
  store i16 %val, ptr %val.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2522, metadata !DIExpression()), !dbg !2524
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !2525
  %1 = load i16, ptr %val.addr, align 2, !dbg !2526
  %conv = zext i16 %1 to i32, !dbg !2526
  %shr = ashr i32 %conv, 8, !dbg !2527
  %conv1 = trunc i32 %shr to i8, !dbg !2528
  call void @write_hex_2(ptr noundef %0, i8 noundef zeroext %conv1), !dbg !2529
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !2530
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 2, !dbg !2531
  %3 = load i16, ptr %val.addr, align 2, !dbg !2532
  %conv2 = zext i16 %3 to i32, !dbg !2532
  %and = and i32 %conv2, 255, !dbg !2533
  %conv3 = trunc i32 %and to i8, !dbg !2534
  call void @write_hex_2(ptr noundef %add.ptr, i8 noundef zeroext %conv3), !dbg !2535
  ret void, !dbg !2536
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @utf16_encode_surrogate_pair(i32 noundef %codepoint, ptr noundef %high, ptr noundef %low) #4 !dbg !2537 {
entry:
  %codepoint.addr = alloca i32, align 4
  %high.addr = alloca ptr, align 8
  %low.addr = alloca ptr, align 8
  store i32 %codepoint, ptr %codepoint.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %codepoint.addr, metadata !2542, metadata !DIExpression()), !dbg !2545
  store ptr %high, ptr %high.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2543, metadata !DIExpression()), !dbg !2546
  store ptr %low, ptr %low.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2544, metadata !DIExpression()), !dbg !2547
  %0 = load i32, ptr %codepoint.addr, align 4, !dbg !2548
  %sub = sub i32 %0, 65536, !dbg !2548
  store i32 %sub, ptr %codepoint.addr, align 4, !dbg !2548
  %1 = load i32, ptr %codepoint.addr, align 4, !dbg !2549
  %shr = lshr i32 %1, 10, !dbg !2550
  %or = or i32 55296, %shr, !dbg !2551
  %conv = trunc i32 %or to i16, !dbg !2552
  %2 = load ptr, ptr %high.addr, align 8, !dbg !2553
  store i16 %conv, ptr %2, align 2, !dbg !2554
  %3 = load i32, ptr %codepoint.addr, align 4, !dbg !2555
  %and = and i32 %3, 1023, !dbg !2556
  %or1 = or i32 56320, %and, !dbg !2557
  %conv2 = trunc i32 %or1 to i16, !dbg !2558
  %4 = load ptr, ptr %low.addr, align 8, !dbg !2559
  store i16 %conv2, ptr %4, align 2, !dbg !2560
  ret void, !dbg !2561
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf16le_valid(ptr noundef %start, ptr noundef %end) #4 !dbg !2562 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %high = alloca i16, align 2
  %low = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2566, metadata !DIExpression()), !dbg !2571
  store ptr %end, ptr %end.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2573
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2568, metadata !DIExpression()), !dbg !2574
  %0 = load ptr, ptr %start.addr, align 8, !dbg !2575
  store ptr %0, ptr %p, align 8, !dbg !2574
  call void @llvm.lifetime.start.p0(i64 2, ptr %high) #15, !dbg !2576
  tail call void @llvm.dbg.declare(metadata ptr %high, metadata !2569, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 2, ptr %low) #15, !dbg !2576
  tail call void @llvm.dbg.declare(metadata ptr %low, metadata !2570, metadata !DIExpression()), !dbg !2578
  %1 = load ptr, ptr %p, align 8, !dbg !2579
  %2 = load ptr, ptr %end.addr, align 8, !dbg !2581
  %cmp = icmp eq ptr %1, %2, !dbg !2582
  br i1 %cmp, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2584

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !dbg !2586
  %call = call zeroext i16 @from_le16(ptr noundef %3), !dbg !2587
  store i16 %call, ptr %high, align 2, !dbg !2588
  %4 = load i16, ptr %high, align 2, !dbg !2589
  %conv = zext i16 %4 to i32, !dbg !2589
  %cmp1 = icmp sle i32 %conv, 55295, !dbg !2591
  br i1 %cmp1, label %if.then6, label %lor.lhs.false, !dbg !2592

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i16, ptr %high, align 2, !dbg !2593
  %conv3 = zext i16 %5 to i32, !dbg !2593
  %cmp4 = icmp sge i32 %conv3, 57344, !dbg !2594
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !2595

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %retval, align 4, !dbg !2596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2596

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load i16, ptr %high, align 2, !dbg !2598
  %conv8 = zext i16 %6 to i32, !dbg !2598
  %cmp9 = icmp sge i32 %conv8, 56320, !dbg !2600
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2601

if.then11:                                        ; preds = %if.end7
  store i32 -1, ptr %retval, align 4, !dbg !2602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2602

if.end12:                                         ; preds = %if.end7
  %7 = load ptr, ptr %p, align 8, !dbg !2604
  %incdec.ptr = getelementptr inbounds i16, ptr %7, i32 1, !dbg !2604
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !2604
  %8 = load ptr, ptr %end.addr, align 8, !dbg !2606
  %cmp13 = icmp eq ptr %incdec.ptr, %8, !dbg !2607
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2608

if.then15:                                        ; preds = %if.end12
  store i32 -1, ptr %retval, align 4, !dbg !2609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2609

if.end16:                                         ; preds = %if.end12
  %9 = load ptr, ptr %p, align 8, !dbg !2611
  %call17 = call zeroext i16 @from_le16(ptr noundef %9), !dbg !2612
  store i16 %call17, ptr %low, align 2, !dbg !2613
  %10 = load i16, ptr %low, align 2, !dbg !2614
  %conv18 = zext i16 %10 to i32, !dbg !2614
  %call19 = call zeroext i1 @utf16_valid_surrogate_low(i32 noundef %conv18), !dbg !2616
  br i1 %call19, label %if.end21, label %if.then20, !dbg !2617

if.then20:                                        ; preds = %if.end16
  store i32 -1, ptr %retval, align 4, !dbg !2618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2618

if.end21:                                         ; preds = %if.end16
  store i32 2, ptr %retval, align 4, !dbg !2620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2620

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then15, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %low) #15, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 2, ptr %high) #15, !dbg !2621
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2621
  %11 = load i32, ptr %retval, align 4, !dbg !2621
  ret i32 %11, !dbg !2621
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i16 @from_le16(ptr noundef %ptr) #4 !dbg !2622 {
entry:
  %ptr.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !2630
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2628, metadata !DIExpression()), !dbg !2631
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2632
  store ptr %0, ptr %tmp, align 8, !dbg !2631
  %1 = load ptr, ptr %tmp, align 8, !dbg !2633
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 1, !dbg !2633
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2633
  %conv = zext i8 %2 to i16, !dbg !2634
  %conv1 = zext i16 %conv to i32, !dbg !2634
  %shl = shl i32 %conv1, 8, !dbg !2635
  %3 = load ptr, ptr %tmp, align 8, !dbg !2636
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0, !dbg !2636
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !2636
  %conv3 = zext i8 %4 to i32, !dbg !2636
  %or = or i32 %shl, %conv3, !dbg !2637
  %conv4 = trunc i32 %or to i16, !dbg !2638
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !2639
  ret i16 %conv4, !dbg !2640
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @utf16_decode_surrogate_pair(i32 noundef %high, i32 noundef %low) #4 !dbg !2641 {
entry:
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %codepoint = alloca i32, align 4
  store i32 %high, ptr %high.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !2645, metadata !DIExpression()), !dbg !2648
  store i32 %low, ptr %low.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 4, ptr %codepoint) #15, !dbg !2650
  tail call void @llvm.dbg.declare(metadata ptr %codepoint, metadata !2647, metadata !DIExpression()), !dbg !2651
  %0 = load i32, ptr %low.addr, align 4, !dbg !2652
  store i32 %0, ptr %codepoint, align 4, !dbg !2653
  %1 = load i32, ptr %codepoint, align 4, !dbg !2654
  %and = and i32 %1, 1023, !dbg !2654
  store i32 %and, ptr %codepoint, align 4, !dbg !2654
  %2 = load i32, ptr %high.addr, align 4, !dbg !2655
  %and1 = and i32 %2, 1023, !dbg !2656
  %shl = shl i32 %and1, 10, !dbg !2657
  %3 = load i32, ptr %codepoint, align 4, !dbg !2658
  %or = or i32 %3, %shl, !dbg !2658
  store i32 %or, ptr %codepoint, align 4, !dbg !2658
  %4 = load i32, ptr %codepoint, align 4, !dbg !2659
  %add = add i32 %4, 65536, !dbg !2659
  store i32 %add, ptr %codepoint, align 4, !dbg !2659
  %5 = load i32, ptr %codepoint, align 4, !dbg !2660
  call void @llvm.lifetime.end.p0(i64 4, ptr %codepoint) #15, !dbg !2661
  ret i32 %5, !dbg !2662
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @utf16_valid_surrogate_low(i32 noundef %val) #4 !dbg !2663 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2667, metadata !DIExpression()), !dbg !2668
  %0 = load i32, ptr %val.addr, align 4, !dbg !2669
  %cmp = icmp uge i32 %0, 56320, !dbg !2670
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2671

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %val.addr, align 4, !dbg !2672
  %cmp1 = icmp ule i32 %1, 57343, !dbg !2673
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2674
  ret i1 %2, !dbg !2675
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #12

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { inlinehint nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #8 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline nobuiltin nounwind ssp uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #11 = { alwaysinline nounwind "min-legal-vector-width"="0" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!101}
!llvm.module.flags = !{!140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "json_write.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/json", checksumkind: CSK_MD5, checksum: "77b1833acce03f7f221ed2665bc477d0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !16, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 4)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !23, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 9)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !11, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !16, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !11, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 2)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 562, type: !41, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !41, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 576, type: !41, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 590, type: !41, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !41, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 601, type: !41, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !41, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !41, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "escapes", scope: !62, file: !2, line: 344, type: !137, isLocal: true, isDefinition: true)
!62 = distinct !DISubprogram(name: "write_codepoint", scope: !2, file: !2, line: 342, type: !63, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !127)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !66, !83}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_json_write_ctx", file: !2, line: 10, size: 33088, elements: !68)
!68 = !{!69, !81, !82, !88, !89, !91, !92, !93, !94}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "write_cb", scope: !67, file: !2, line: 11, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_json_write_cb", file: !71, line: 177, baseType: !72)
!71 = !DIFile(filename: "include/spdk/json.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "2503f979e3d49afab298cb349bb94ec6")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!65, !75, !76, !78}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 29, baseType: !80)
!79 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!80 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !67, file: !2, line: 12, baseType: !75, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !2, line: 13, baseType: !83, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 26, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 42, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !67, file: !2, line: 14, baseType: !83, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "new_indent", scope: !67, file: !2, line: 15, baseType: !90, size: 8, offset: 192)
!90 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "first_value", scope: !67, file: !2, line: 16, baseType: !90, size: 8, offset: 200)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !67, file: !2, line: 17, baseType: !90, size: 8, offset: 208)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buf_filled", scope: !67, file: !2, line: 18, baseType: !78, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !67, file: !2, line: 19, baseType: !95, size: 32768, offset: 320)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32768, elements: !99)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !84, line: 24, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !86, line: 38, baseType: !98)
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: 4096)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !116, globals: !124, splitDebugInlining: false, nameTableKind: None)
!102 = !{!103}
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_json_val_type", file: !71, line: 20, baseType: !87, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!105 = !DIEnumerator(name: "SPDK_JSON_VAL_INVALID", value: 0)
!106 = !DIEnumerator(name: "SPDK_JSON_VAL_NULL", value: 2)
!107 = !DIEnumerator(name: "SPDK_JSON_VAL_TRUE", value: 4)
!108 = !DIEnumerator(name: "SPDK_JSON_VAL_FALSE", value: 8)
!109 = !DIEnumerator(name: "SPDK_JSON_VAL_NUMBER", value: 16)
!110 = !DIEnumerator(name: "SPDK_JSON_VAL_STRING", value: 32)
!111 = !DIEnumerator(name: "SPDK_JSON_VAL_ARRAY_BEGIN", value: 64)
!112 = !DIEnumerator(name: "SPDK_JSON_VAL_ARRAY_END", value: 128)
!113 = !DIEnumerator(name: "SPDK_JSON_VAL_OBJECT_BEGIN", value: 256)
!114 = !DIEnumerator(name: "SPDK_JSON_VAL_OBJECT_END", value: 512)
!115 = !DIEnumerator(name: "SPDK_JSON_VAL_NAME", value: 1024)
!116 = !{!75, !78, !117, !96, !118, !121, !122}
!117 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !84, line: 25, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !86, line: 40, baseType: !120)
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!124 = !{!0, !7, !9, !14, !19, !21, !26, !28, !33, !35, !37, !39, !44, !46, !48, !50, !52, !54, !56, !58, !60, !125}
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !16, isLocal: true, isDefinition: true)
!127 = !{!128, !129, !130, !131, !132, !136}
!128 = !DILocalVariable(name: "w", arg: 1, scope: !62, file: !2, line: 342, type: !66)
!129 = !DILocalVariable(name: "codepoint", arg: 2, scope: !62, file: !2, line: 342, type: !83)
!130 = !DILocalVariable(name: "high", scope: !62, file: !2, line: 357, type: !118)
!131 = !DILocalVariable(name: "low", scope: !62, file: !2, line: 357, type: !118)
!132 = !DILocalVariable(name: "out", scope: !62, file: !2, line: 358, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 13)
!136 = !DILocalVariable(name: "out_len", scope: !62, file: !2, line: 359, type: !78)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 744, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 93)
!140 = !{i32 7, !"Dwarf Version", i32 5}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 8, !"PIC Level", i32 2}
!144 = !{i32 7, !"uwtable", i32 2}
!145 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!146 = distinct !DISubprogram(name: "spdk_json_write_begin", scope: !2, file: !2, line: 47, type: !147, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{!66, !70, !75, !83}
!149 = !{!150, !151, !152, !153}
!150 = !DILocalVariable(name: "write_cb", arg: 1, scope: !146, file: !2, line: 47, type: !70)
!151 = !DILocalVariable(name: "cb_ctx", arg: 2, scope: !146, file: !2, line: 47, type: !75)
!152 = !DILocalVariable(name: "flags", arg: 3, scope: !146, file: !2, line: 47, type: !83)
!153 = !DILocalVariable(name: "w", scope: !146, file: !2, line: 49, type: !66)
!154 = !DILocation(line: 47, column: 42, scope: !146)
!155 = !DILocation(line: 47, column: 58, scope: !146)
!156 = !DILocation(line: 47, column: 75, scope: !146)
!157 = !DILocation(line: 49, column: 2, scope: !146)
!158 = !DILocation(line: 49, column: 30, scope: !146)
!159 = !DILocation(line: 51, column: 6, scope: !146)
!160 = !DILocation(line: 51, column: 4, scope: !146)
!161 = !DILocation(line: 52, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !146, file: !2, line: 52, column: 6)
!163 = !DILocation(line: 52, column: 8, scope: !162)
!164 = !DILocation(line: 52, column: 6, scope: !146)
!165 = !DILocation(line: 53, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !2, line: 52, column: 17)
!167 = !DILocation(line: 53, column: 3, scope: !166)
!168 = !DILocation(line: 56, column: 16, scope: !146)
!169 = !DILocation(line: 56, column: 2, scope: !146)
!170 = !DILocation(line: 56, column: 5, scope: !146)
!171 = !DILocation(line: 56, column: 14, scope: !146)
!172 = !DILocation(line: 57, column: 14, scope: !146)
!173 = !DILocation(line: 57, column: 2, scope: !146)
!174 = !DILocation(line: 57, column: 5, scope: !146)
!175 = !DILocation(line: 57, column: 12, scope: !146)
!176 = !DILocation(line: 58, column: 13, scope: !146)
!177 = !DILocation(line: 58, column: 2, scope: !146)
!178 = !DILocation(line: 58, column: 5, scope: !146)
!179 = !DILocation(line: 58, column: 11, scope: !146)
!180 = !DILocation(line: 59, column: 2, scope: !146)
!181 = !DILocation(line: 59, column: 5, scope: !146)
!182 = !DILocation(line: 59, column: 12, scope: !146)
!183 = !DILocation(line: 60, column: 2, scope: !146)
!184 = !DILocation(line: 60, column: 5, scope: !146)
!185 = !DILocation(line: 60, column: 16, scope: !146)
!186 = !DILocation(line: 61, column: 2, scope: !146)
!187 = !DILocation(line: 61, column: 5, scope: !146)
!188 = !DILocation(line: 61, column: 17, scope: !146)
!189 = !DILocation(line: 62, column: 2, scope: !146)
!190 = !DILocation(line: 62, column: 5, scope: !146)
!191 = !DILocation(line: 62, column: 12, scope: !146)
!192 = !DILocation(line: 63, column: 2, scope: !146)
!193 = !DILocation(line: 63, column: 5, scope: !146)
!194 = !DILocation(line: 63, column: 16, scope: !146)
!195 = !DILocation(line: 65, column: 9, scope: !146)
!196 = !DILocation(line: 65, column: 2, scope: !146)
!197 = !DILocation(line: 66, column: 1, scope: !146)
!198 = !DISubprogram(name: "calloc", scope: !199, file: !199, line: 543, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!200 = !DISubroutineType(types: !201)
!201 = !{!75, !202, !202}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !203, line: 70, baseType: !80)
!203 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!204 = distinct !DISubprogram(name: "spdk_json_write_end", scope: !2, file: !2, line: 69, type: !205, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!65, !66}
!207 = !{!208, !209, !210}
!208 = !DILocalVariable(name: "w", arg: 1, scope: !204, file: !2, line: 69, type: !66)
!209 = !DILocalVariable(name: "failed", scope: !204, file: !2, line: 71, type: !90)
!210 = !DILocalVariable(name: "rc", scope: !204, file: !2, line: 72, type: !65)
!211 = !DILocation(line: 69, column: 49, scope: !204)
!212 = !DILocation(line: 71, column: 2, scope: !204)
!213 = !DILocation(line: 71, column: 7, scope: !204)
!214 = !DILocation(line: 72, column: 2, scope: !204)
!215 = !DILocation(line: 72, column: 6, scope: !204)
!216 = !DILocation(line: 74, column: 6, scope: !217)
!217 = distinct !DILexicalBlock(scope: !204, file: !2, line: 74, column: 6)
!218 = !DILocation(line: 74, column: 8, scope: !217)
!219 = !DILocation(line: 74, column: 6, scope: !204)
!220 = !DILocation(line: 75, column: 3, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !2, line: 74, column: 17)
!222 = !DILocation(line: 78, column: 11, scope: !204)
!223 = !DILocation(line: 78, column: 14, scope: !204)
!224 = !{i8 0, i8 2}
!225 = !{}
!226 = !DILocation(line: 78, column: 9, scope: !204)
!227 = !DILocation(line: 80, column: 17, scope: !204)
!228 = !DILocation(line: 80, column: 7, scope: !204)
!229 = !DILocation(line: 80, column: 5, scope: !204)
!230 = !DILocation(line: 81, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !204, file: !2, line: 81, column: 6)
!232 = !DILocation(line: 81, column: 9, scope: !231)
!233 = !DILocation(line: 81, column: 6, scope: !204)
!234 = !DILocation(line: 82, column: 10, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !2, line: 81, column: 15)
!236 = !DILocation(line: 83, column: 2, scope: !235)
!237 = !DILocation(line: 85, column: 7, scope: !204)
!238 = !DILocation(line: 85, column: 2, scope: !204)
!239 = !DILocation(line: 87, column: 9, scope: !204)
!240 = !DILocation(line: 87, column: 2, scope: !204)
!241 = !DILocation(line: 88, column: 1, scope: !204)
!242 = distinct !DISubprogram(name: "flush_buf", scope: !2, file: !2, line: 32, type: !205, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !243)
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "w", arg: 1, scope: !242, file: !2, line: 32, type: !66)
!245 = !DILocalVariable(name: "rc", scope: !242, file: !2, line: 34, type: !65)
!246 = !DILocation(line: 32, column: 39, scope: !242)
!247 = !DILocation(line: 34, column: 2, scope: !242)
!248 = !DILocation(line: 34, column: 6, scope: !242)
!249 = !DILocation(line: 36, column: 7, scope: !242)
!250 = !DILocation(line: 36, column: 10, scope: !242)
!251 = !DILocation(line: 36, column: 19, scope: !242)
!252 = !DILocation(line: 36, column: 22, scope: !242)
!253 = !DILocation(line: 36, column: 30, scope: !242)
!254 = !DILocation(line: 36, column: 33, scope: !242)
!255 = !DILocation(line: 36, column: 38, scope: !242)
!256 = !DILocation(line: 36, column: 41, scope: !242)
!257 = !DILocation(line: 36, column: 5, scope: !242)
!258 = !DILocation(line: 37, column: 6, scope: !259)
!259 = distinct !DILexicalBlock(scope: !242, file: !2, line: 37, column: 6)
!260 = !DILocation(line: 37, column: 9, scope: !259)
!261 = !DILocation(line: 37, column: 6, scope: !242)
!262 = !DILocation(line: 38, column: 15, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !2, line: 37, column: 15)
!264 = !DILocation(line: 38, column: 10, scope: !263)
!265 = !DILocation(line: 38, column: 3, scope: !263)
!266 = !DILocation(line: 41, column: 2, scope: !242)
!267 = !DILocation(line: 41, column: 5, scope: !242)
!268 = !DILocation(line: 41, column: 16, scope: !242)
!269 = !DILocation(line: 43, column: 2, scope: !242)
!270 = !DILocation(line: 44, column: 1, scope: !242)
!271 = !DISubprogram(name: "free", scope: !199, file: !199, line: 555, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !75}
!274 = distinct !DISubprogram(name: "spdk_json_write_val_raw", scope: !2, file: !2, line: 168, type: !275, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!65, !66, !76, !78}
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "w", arg: 1, scope: !274, file: !2, line: 168, type: !66)
!279 = !DILocalVariable(name: "data", arg: 2, scope: !274, file: !2, line: 168, type: !76)
!280 = !DILocalVariable(name: "len", arg: 3, scope: !274, file: !2, line: 168, type: !78)
!281 = !DILocation(line: 168, column: 53, scope: !274)
!282 = !DILocation(line: 168, column: 68, scope: !274)
!283 = !DILocation(line: 168, column: 81, scope: !274)
!284 = !DILocation(line: 170, column: 18, scope: !285)
!285 = distinct !DILexicalBlock(scope: !274, file: !2, line: 170, column: 6)
!286 = !DILocation(line: 170, column: 6, scope: !285)
!287 = !DILocation(line: 170, column: 6, scope: !274)
!288 = !DILocation(line: 170, column: 36, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !2, line: 170, column: 22)
!290 = !DILocation(line: 170, column: 31, scope: !289)
!291 = !DILocation(line: 170, column: 24, scope: !289)
!292 = !DILocation(line: 171, column: 14, scope: !274)
!293 = !DILocation(line: 171, column: 17, scope: !274)
!294 = !DILocation(line: 171, column: 23, scope: !274)
!295 = !DILocation(line: 171, column: 9, scope: !274)
!296 = !DILocation(line: 171, column: 2, scope: !274)
!297 = !DILocation(line: 172, column: 1, scope: !274)
!298 = distinct !DISubprogram(name: "begin_value", scope: !2, file: !2, line: 150, type: !205, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !299)
!299 = !{!300}
!300 = !DILocalVariable(name: "w", arg: 1, scope: !298, file: !2, line: 150, type: !66)
!301 = !DILocation(line: 150, column: 41, scope: !298)
!302 = !DILocation(line: 153, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !2, line: 153, column: 6)
!304 = !DILocation(line: 153, column: 9, scope: !303)
!305 = !DILocation(line: 153, column: 6, scope: !298)
!306 = !DILocation(line: 154, column: 16, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 154, column: 7)
!308 = distinct !DILexicalBlock(scope: !303, file: !2, line: 153, column: 21)
!309 = !DILocation(line: 154, column: 7, scope: !307)
!310 = !DILocation(line: 154, column: 7, scope: !308)
!311 = !DILocation(line: 154, column: 43, scope: !312)
!312 = distinct !DILexicalBlock(scope: !307, file: !2, line: 154, column: 29)
!313 = !DILocation(line: 154, column: 38, scope: !312)
!314 = !DILocation(line: 154, column: 31, scope: !312)
!315 = !DILocation(line: 155, column: 19, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !2, line: 155, column: 7)
!317 = !DILocation(line: 155, column: 7, scope: !316)
!318 = !DILocation(line: 155, column: 7, scope: !308)
!319 = !DILocation(line: 155, column: 37, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !2, line: 155, column: 23)
!321 = !DILocation(line: 155, column: 32, scope: !320)
!322 = !DILocation(line: 155, column: 25, scope: !320)
!323 = !DILocation(line: 156, column: 2, scope: !308)
!324 = !DILocation(line: 157, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !298, file: !2, line: 157, column: 6)
!326 = !DILocation(line: 157, column: 10, scope: !325)
!327 = !DILocation(line: 157, column: 6, scope: !298)
!328 = !DILocation(line: 158, column: 12, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 158, column: 7)
!330 = distinct !DILexicalBlock(scope: !325, file: !2, line: 157, column: 23)
!331 = !DILocation(line: 158, column: 7, scope: !329)
!332 = !DILocation(line: 158, column: 7, scope: !330)
!333 = !DILocation(line: 158, column: 38, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !2, line: 158, column: 24)
!335 = !DILocation(line: 158, column: 33, scope: !334)
!336 = !DILocation(line: 158, column: 26, scope: !334)
!337 = !DILocation(line: 159, column: 16, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !2, line: 159, column: 7)
!339 = !DILocation(line: 159, column: 7, scope: !338)
!340 = !DILocation(line: 159, column: 7, scope: !330)
!341 = !DILocation(line: 159, column: 43, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !2, line: 159, column: 29)
!343 = !DILocation(line: 159, column: 38, scope: !342)
!344 = !DILocation(line: 159, column: 31, scope: !342)
!345 = !DILocation(line: 160, column: 19, scope: !346)
!346 = distinct !DILexicalBlock(scope: !330, file: !2, line: 160, column: 7)
!347 = !DILocation(line: 160, column: 7, scope: !346)
!348 = !DILocation(line: 160, column: 7, scope: !330)
!349 = !DILocation(line: 160, column: 37, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !2, line: 160, column: 23)
!351 = !DILocation(line: 160, column: 32, scope: !350)
!352 = !DILocation(line: 160, column: 25, scope: !350)
!353 = !DILocation(line: 161, column: 2, scope: !330)
!354 = !DILocation(line: 162, column: 2, scope: !298)
!355 = !DILocation(line: 162, column: 5, scope: !298)
!356 = !DILocation(line: 162, column: 17, scope: !298)
!357 = !DILocation(line: 163, column: 2, scope: !298)
!358 = !DILocation(line: 163, column: 5, scope: !298)
!359 = !DILocation(line: 163, column: 16, scope: !298)
!360 = !DILocation(line: 164, column: 2, scope: !298)
!361 = !DILocation(line: 165, column: 1, scope: !298)
!362 = distinct !DISubprogram(name: "fail", scope: !2, file: !2, line: 25, type: !205, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !363)
!363 = !{!364}
!364 = !DILocalVariable(name: "w", arg: 1, scope: !362, file: !2, line: 25, type: !66)
!365 = !DILocation(line: 25, column: 34, scope: !362)
!366 = !DILocation(line: 27, column: 2, scope: !362)
!367 = !DILocation(line: 27, column: 5, scope: !362)
!368 = !DILocation(line: 27, column: 12, scope: !362)
!369 = !DILocation(line: 28, column: 2, scope: !362)
!370 = distinct !DISubprogram(name: "emit", scope: !2, file: !2, line: 91, type: !275, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !371)
!371 = !{!372, !373, !374, !375}
!372 = !DILocalVariable(name: "w", arg: 1, scope: !370, file: !2, line: 91, type: !66)
!373 = !DILocalVariable(name: "data", arg: 2, scope: !370, file: !2, line: 91, type: !76)
!374 = !DILocalVariable(name: "size", arg: 3, scope: !370, file: !2, line: 91, type: !78)
!375 = !DILocalVariable(name: "buf_remain", scope: !370, file: !2, line: 93, type: !78)
!376 = !DILocation(line: 91, column: 34, scope: !370)
!377 = !DILocation(line: 91, column: 49, scope: !370)
!378 = !DILocation(line: 91, column: 62, scope: !370)
!379 = !DILocation(line: 93, column: 2, scope: !370)
!380 = !DILocation(line: 93, column: 9, scope: !370)
!381 = !DILocation(line: 93, column: 39, scope: !370)
!382 = !DILocation(line: 93, column: 42, scope: !370)
!383 = !DILocation(line: 93, column: 37, scope: !370)
!384 = !DILocation(line: 95, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !370, file: !2, line: 95, column: 6)
!386 = !DILocation(line: 95, column: 6, scope: !370)
!387 = !DILocation(line: 97, column: 24, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !2, line: 95, column: 40)
!389 = !DILocation(line: 97, column: 27, scope: !388)
!390 = !DILocation(line: 97, column: 33, scope: !388)
!391 = !DILocation(line: 97, column: 10, scope: !388)
!392 = !DILocation(line: 97, column: 3, scope: !388)
!393 = !DILocation(line: 101, column: 9, scope: !370)
!394 = !DILocation(line: 101, column: 12, scope: !370)
!395 = !DILocation(line: 101, column: 18, scope: !370)
!396 = !DILocation(line: 101, column: 21, scope: !370)
!397 = !DILocation(line: 101, column: 16, scope: !370)
!398 = !DILocation(line: 101, column: 33, scope: !370)
!399 = !DILocation(line: 101, column: 39, scope: !370)
!400 = !DILocation(line: 101, column: 2, scope: !370)
!401 = !DILocation(line: 102, column: 19, scope: !370)
!402 = !DILocation(line: 102, column: 2, scope: !370)
!403 = !DILocation(line: 102, column: 5, scope: !370)
!404 = !DILocation(line: 102, column: 16, scope: !370)
!405 = !DILocation(line: 103, column: 2, scope: !370)
!406 = !DILocation(line: 104, column: 1, scope: !370)
!407 = distinct !DISubprogram(name: "spdk_json_write_null", scope: !2, file: !2, line: 175, type: !205, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !408)
!408 = !{!409}
!409 = !DILocalVariable(name: "w", arg: 1, scope: !407, file: !2, line: 175, type: !66)
!410 = !DILocation(line: 175, column: 50, scope: !407)
!411 = !DILocation(line: 177, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !2, line: 177, column: 6)
!413 = !DILocation(line: 177, column: 6, scope: !412)
!414 = !DILocation(line: 177, column: 6, scope: !407)
!415 = !DILocation(line: 177, column: 36, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !2, line: 177, column: 22)
!417 = !DILocation(line: 177, column: 31, scope: !416)
!418 = !DILocation(line: 177, column: 24, scope: !416)
!419 = !DILocation(line: 178, column: 14, scope: !407)
!420 = !DILocation(line: 178, column: 9, scope: !407)
!421 = !DILocation(line: 178, column: 2, scope: !407)
!422 = !DILocation(line: 179, column: 1, scope: !407)
!423 = distinct !DISubprogram(name: "spdk_json_write_bool", scope: !2, file: !2, line: 182, type: !424, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!65, !66, !90}
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "w", arg: 1, scope: !423, file: !2, line: 182, type: !66)
!428 = !DILocalVariable(name: "val", arg: 2, scope: !423, file: !2, line: 182, type: !90)
!429 = !DILocation(line: 182, column: 50, scope: !423)
!430 = !DILocation(line: 182, column: 58, scope: !423)
!431 = !DILocation(line: 184, column: 18, scope: !432)
!432 = distinct !DILexicalBlock(scope: !423, file: !2, line: 184, column: 6)
!433 = !DILocation(line: 184, column: 6, scope: !432)
!434 = !DILocation(line: 184, column: 6, scope: !423)
!435 = !DILocation(line: 184, column: 36, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !2, line: 184, column: 22)
!437 = !DILocation(line: 184, column: 31, scope: !436)
!438 = !DILocation(line: 184, column: 24, scope: !436)
!439 = !DILocation(line: 185, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !423, file: !2, line: 185, column: 6)
!441 = !DILocation(line: 185, column: 6, scope: !423)
!442 = !DILocation(line: 186, column: 15, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !2, line: 185, column: 11)
!444 = !DILocation(line: 186, column: 10, scope: !443)
!445 = !DILocation(line: 186, column: 3, scope: !443)
!446 = !DILocation(line: 188, column: 15, scope: !447)
!447 = distinct !DILexicalBlock(scope: !440, file: !2, line: 187, column: 9)
!448 = !DILocation(line: 188, column: 10, scope: !447)
!449 = !DILocation(line: 188, column: 3, scope: !447)
!450 = !DILocation(line: 190, column: 1, scope: !423)
!451 = distinct !DISubprogram(name: "spdk_json_write_uint8", scope: !2, file: !2, line: 193, type: !452, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!65, !66, !96}
!454 = !{!455, !456, !457, !461}
!455 = !DILocalVariable(name: "w", arg: 1, scope: !451, file: !2, line: 193, type: !66)
!456 = !DILocalVariable(name: "val", arg: 2, scope: !451, file: !2, line: 193, type: !96)
!457 = !DILocalVariable(name: "buf", scope: !451, file: !2, line: 195, type: !458)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 32)
!461 = !DILocalVariable(name: "count", scope: !451, file: !2, line: 196, type: !65)
!462 = !DILocation(line: 193, column: 51, scope: !451)
!463 = !DILocation(line: 193, column: 62, scope: !451)
!464 = !DILocation(line: 195, column: 2, scope: !451)
!465 = !DILocation(line: 195, column: 7, scope: !451)
!466 = !DILocation(line: 196, column: 2, scope: !451)
!467 = !DILocation(line: 196, column: 6, scope: !451)
!468 = !DILocation(line: 198, column: 18, scope: !469)
!469 = distinct !DILexicalBlock(scope: !451, file: !2, line: 198, column: 6)
!470 = !DILocation(line: 198, column: 6, scope: !469)
!471 = !DILocation(line: 198, column: 6, scope: !451)
!472 = !DILocation(line: 198, column: 36, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !2, line: 198, column: 22)
!474 = !DILocation(line: 198, column: 31, scope: !473)
!475 = !DILocation(line: 198, column: 24, scope: !473)
!476 = !DILocation(line: 199, column: 10, scope: !451)
!477 = !DILocation(line: 199, column: 8, scope: !451)
!478 = !DILocation(line: 200, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !451, file: !2, line: 200, column: 6)
!480 = !DILocation(line: 200, column: 12, scope: !479)
!481 = !DILocation(line: 200, column: 17, scope: !479)
!482 = !DILocation(line: 200, column: 28, scope: !479)
!483 = !DILocation(line: 200, column: 20, scope: !479)
!484 = !DILocation(line: 200, column: 34, scope: !479)
!485 = !DILocation(line: 200, column: 6, scope: !451)
!486 = !DILocation(line: 200, column: 64, scope: !487)
!487 = distinct !DILexicalBlock(scope: !479, file: !2, line: 200, column: 50)
!488 = !DILocation(line: 200, column: 59, scope: !487)
!489 = !DILocation(line: 200, column: 52, scope: !487)
!490 = !DILocation(line: 201, column: 14, scope: !451)
!491 = !DILocation(line: 201, column: 17, scope: !451)
!492 = !DILocation(line: 201, column: 22, scope: !451)
!493 = !DILocation(line: 201, column: 9, scope: !451)
!494 = !DILocation(line: 201, column: 2, scope: !451)
!495 = !DILocation(line: 202, column: 1, scope: !451)
!496 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !2, file: !2, line: 199, type: !497, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DISubroutineType(types: !498)
!498 = !{!65, !499, !80, !65, !80, !500, null}
!499 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!503 = distinct !DISubprogram(name: "spdk_json_write_uint16", scope: !2, file: !2, line: 205, type: !504, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!65, !66, !118}
!506 = !{!507, !508, !509, !510}
!507 = !DILocalVariable(name: "w", arg: 1, scope: !503, file: !2, line: 205, type: !66)
!508 = !DILocalVariable(name: "val", arg: 2, scope: !503, file: !2, line: 205, type: !118)
!509 = !DILocalVariable(name: "buf", scope: !503, file: !2, line: 207, type: !458)
!510 = !DILocalVariable(name: "count", scope: !503, file: !2, line: 208, type: !65)
!511 = !DILocation(line: 205, column: 52, scope: !503)
!512 = !DILocation(line: 205, column: 64, scope: !503)
!513 = !DILocation(line: 207, column: 2, scope: !503)
!514 = !DILocation(line: 207, column: 7, scope: !503)
!515 = !DILocation(line: 208, column: 2, scope: !503)
!516 = !DILocation(line: 208, column: 6, scope: !503)
!517 = !DILocation(line: 210, column: 18, scope: !518)
!518 = distinct !DILexicalBlock(scope: !503, file: !2, line: 210, column: 6)
!519 = !DILocation(line: 210, column: 6, scope: !518)
!520 = !DILocation(line: 210, column: 6, scope: !503)
!521 = !DILocation(line: 210, column: 36, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !2, line: 210, column: 22)
!523 = !DILocation(line: 210, column: 31, scope: !522)
!524 = !DILocation(line: 210, column: 24, scope: !522)
!525 = !DILocation(line: 211, column: 10, scope: !503)
!526 = !DILocation(line: 211, column: 8, scope: !503)
!527 = !DILocation(line: 212, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !503, file: !2, line: 212, column: 6)
!529 = !DILocation(line: 212, column: 12, scope: !528)
!530 = !DILocation(line: 212, column: 17, scope: !528)
!531 = !DILocation(line: 212, column: 28, scope: !528)
!532 = !DILocation(line: 212, column: 20, scope: !528)
!533 = !DILocation(line: 212, column: 34, scope: !528)
!534 = !DILocation(line: 212, column: 6, scope: !503)
!535 = !DILocation(line: 212, column: 64, scope: !536)
!536 = distinct !DILexicalBlock(scope: !528, file: !2, line: 212, column: 50)
!537 = !DILocation(line: 212, column: 59, scope: !536)
!538 = !DILocation(line: 212, column: 52, scope: !536)
!539 = !DILocation(line: 213, column: 14, scope: !503)
!540 = !DILocation(line: 213, column: 17, scope: !503)
!541 = !DILocation(line: 213, column: 22, scope: !503)
!542 = !DILocation(line: 213, column: 9, scope: !503)
!543 = !DILocation(line: 213, column: 2, scope: !503)
!544 = !DILocation(line: 214, column: 1, scope: !503)
!545 = distinct !DISubprogram(name: "spdk_json_write_int32", scope: !2, file: !2, line: 217, type: !546, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !551)
!546 = !DISubroutineType(types: !547)
!547 = !{!65, !66, !548}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !549, line: 26, baseType: !550)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !86, line: 41, baseType: !65)
!551 = !{!552, !553, !554, !555}
!552 = !DILocalVariable(name: "w", arg: 1, scope: !545, file: !2, line: 217, type: !66)
!553 = !DILocalVariable(name: "val", arg: 2, scope: !545, file: !2, line: 217, type: !548)
!554 = !DILocalVariable(name: "buf", scope: !545, file: !2, line: 219, type: !458)
!555 = !DILocalVariable(name: "count", scope: !545, file: !2, line: 220, type: !65)
!556 = !DILocation(line: 217, column: 51, scope: !545)
!557 = !DILocation(line: 217, column: 62, scope: !545)
!558 = !DILocation(line: 219, column: 2, scope: !545)
!559 = !DILocation(line: 219, column: 7, scope: !545)
!560 = !DILocation(line: 220, column: 2, scope: !545)
!561 = !DILocation(line: 220, column: 6, scope: !545)
!562 = !DILocation(line: 222, column: 18, scope: !563)
!563 = distinct !DILexicalBlock(scope: !545, file: !2, line: 222, column: 6)
!564 = !DILocation(line: 222, column: 6, scope: !563)
!565 = !DILocation(line: 222, column: 6, scope: !545)
!566 = !DILocation(line: 222, column: 36, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !2, line: 222, column: 22)
!568 = !DILocation(line: 222, column: 31, scope: !567)
!569 = !DILocation(line: 222, column: 24, scope: !567)
!570 = !DILocation(line: 223, column: 10, scope: !545)
!571 = !DILocation(line: 223, column: 8, scope: !545)
!572 = !DILocation(line: 224, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !545, file: !2, line: 224, column: 6)
!574 = !DILocation(line: 224, column: 12, scope: !573)
!575 = !DILocation(line: 224, column: 17, scope: !573)
!576 = !DILocation(line: 224, column: 28, scope: !573)
!577 = !DILocation(line: 224, column: 20, scope: !573)
!578 = !DILocation(line: 224, column: 34, scope: !573)
!579 = !DILocation(line: 224, column: 6, scope: !545)
!580 = !DILocation(line: 224, column: 64, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !2, line: 224, column: 50)
!582 = !DILocation(line: 224, column: 59, scope: !581)
!583 = !DILocation(line: 224, column: 52, scope: !581)
!584 = !DILocation(line: 225, column: 14, scope: !545)
!585 = !DILocation(line: 225, column: 17, scope: !545)
!586 = !DILocation(line: 225, column: 22, scope: !545)
!587 = !DILocation(line: 225, column: 9, scope: !545)
!588 = !DILocation(line: 225, column: 2, scope: !545)
!589 = !DILocation(line: 226, column: 1, scope: !545)
!590 = distinct !DISubprogram(name: "spdk_json_write_uint32", scope: !2, file: !2, line: 229, type: !63, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !591)
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(name: "w", arg: 1, scope: !590, file: !2, line: 229, type: !66)
!593 = !DILocalVariable(name: "val", arg: 2, scope: !590, file: !2, line: 229, type: !83)
!594 = !DILocalVariable(name: "buf", scope: !590, file: !2, line: 231, type: !458)
!595 = !DILocalVariable(name: "count", scope: !590, file: !2, line: 232, type: !65)
!596 = !DILocation(line: 229, column: 52, scope: !590)
!597 = !DILocation(line: 229, column: 64, scope: !590)
!598 = !DILocation(line: 231, column: 2, scope: !590)
!599 = !DILocation(line: 231, column: 7, scope: !590)
!600 = !DILocation(line: 232, column: 2, scope: !590)
!601 = !DILocation(line: 232, column: 6, scope: !590)
!602 = !DILocation(line: 234, column: 18, scope: !603)
!603 = distinct !DILexicalBlock(scope: !590, file: !2, line: 234, column: 6)
!604 = !DILocation(line: 234, column: 6, scope: !603)
!605 = !DILocation(line: 234, column: 6, scope: !590)
!606 = !DILocation(line: 234, column: 36, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !2, line: 234, column: 22)
!608 = !DILocation(line: 234, column: 31, scope: !607)
!609 = !DILocation(line: 234, column: 24, scope: !607)
!610 = !DILocation(line: 235, column: 10, scope: !590)
!611 = !DILocation(line: 235, column: 8, scope: !590)
!612 = !DILocation(line: 236, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !590, file: !2, line: 236, column: 6)
!614 = !DILocation(line: 236, column: 12, scope: !613)
!615 = !DILocation(line: 236, column: 17, scope: !613)
!616 = !DILocation(line: 236, column: 28, scope: !613)
!617 = !DILocation(line: 236, column: 20, scope: !613)
!618 = !DILocation(line: 236, column: 34, scope: !613)
!619 = !DILocation(line: 236, column: 6, scope: !590)
!620 = !DILocation(line: 236, column: 64, scope: !621)
!621 = distinct !DILexicalBlock(scope: !613, file: !2, line: 236, column: 50)
!622 = !DILocation(line: 236, column: 59, scope: !621)
!623 = !DILocation(line: 236, column: 52, scope: !621)
!624 = !DILocation(line: 237, column: 14, scope: !590)
!625 = !DILocation(line: 237, column: 17, scope: !590)
!626 = !DILocation(line: 237, column: 22, scope: !590)
!627 = !DILocation(line: 237, column: 9, scope: !590)
!628 = !DILocation(line: 237, column: 2, scope: !590)
!629 = !DILocation(line: 238, column: 1, scope: !590)
!630 = distinct !DISubprogram(name: "spdk_json_write_int64", scope: !2, file: !2, line: 241, type: !631, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !636)
!631 = !DISubroutineType(types: !632)
!632 = !{!65, !66, !633}
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !549, line: 27, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !86, line: 44, baseType: !635)
!635 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!636 = !{!637, !638, !639, !640}
!637 = !DILocalVariable(name: "w", arg: 1, scope: !630, file: !2, line: 241, type: !66)
!638 = !DILocalVariable(name: "val", arg: 2, scope: !630, file: !2, line: 241, type: !633)
!639 = !DILocalVariable(name: "buf", scope: !630, file: !2, line: 243, type: !458)
!640 = !DILocalVariable(name: "count", scope: !630, file: !2, line: 244, type: !65)
!641 = !DILocation(line: 241, column: 51, scope: !630)
!642 = !DILocation(line: 241, column: 62, scope: !630)
!643 = !DILocation(line: 243, column: 2, scope: !630)
!644 = !DILocation(line: 243, column: 7, scope: !630)
!645 = !DILocation(line: 244, column: 2, scope: !630)
!646 = !DILocation(line: 244, column: 6, scope: !630)
!647 = !DILocation(line: 246, column: 18, scope: !648)
!648 = distinct !DILexicalBlock(scope: !630, file: !2, line: 246, column: 6)
!649 = !DILocation(line: 246, column: 6, scope: !648)
!650 = !DILocation(line: 246, column: 6, scope: !630)
!651 = !DILocation(line: 246, column: 36, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !2, line: 246, column: 22)
!653 = !DILocation(line: 246, column: 31, scope: !652)
!654 = !DILocation(line: 246, column: 24, scope: !652)
!655 = !DILocation(line: 247, column: 10, scope: !630)
!656 = !DILocation(line: 247, column: 8, scope: !630)
!657 = !DILocation(line: 248, column: 6, scope: !658)
!658 = distinct !DILexicalBlock(scope: !630, file: !2, line: 248, column: 6)
!659 = !DILocation(line: 248, column: 12, scope: !658)
!660 = !DILocation(line: 248, column: 17, scope: !658)
!661 = !DILocation(line: 248, column: 28, scope: !658)
!662 = !DILocation(line: 248, column: 20, scope: !658)
!663 = !DILocation(line: 248, column: 34, scope: !658)
!664 = !DILocation(line: 248, column: 6, scope: !630)
!665 = !DILocation(line: 248, column: 64, scope: !666)
!666 = distinct !DILexicalBlock(scope: !658, file: !2, line: 248, column: 50)
!667 = !DILocation(line: 248, column: 59, scope: !666)
!668 = !DILocation(line: 248, column: 52, scope: !666)
!669 = !DILocation(line: 249, column: 14, scope: !630)
!670 = !DILocation(line: 249, column: 17, scope: !630)
!671 = !DILocation(line: 249, column: 22, scope: !630)
!672 = !DILocation(line: 249, column: 9, scope: !630)
!673 = !DILocation(line: 249, column: 2, scope: !630)
!674 = !DILocation(line: 250, column: 1, scope: !630)
!675 = distinct !DISubprogram(name: "spdk_json_write_uint64", scope: !2, file: !2, line: 253, type: !676, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !680)
!676 = !DISubroutineType(types: !677)
!677 = !{!65, !66, !678}
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !84, line: 27, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !86, line: 45, baseType: !80)
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "w", arg: 1, scope: !675, file: !2, line: 253, type: !66)
!682 = !DILocalVariable(name: "val", arg: 2, scope: !675, file: !2, line: 253, type: !678)
!683 = !DILocalVariable(name: "buf", scope: !675, file: !2, line: 255, type: !458)
!684 = !DILocalVariable(name: "count", scope: !675, file: !2, line: 256, type: !65)
!685 = !DILocation(line: 253, column: 52, scope: !675)
!686 = !DILocation(line: 253, column: 64, scope: !675)
!687 = !DILocation(line: 255, column: 2, scope: !675)
!688 = !DILocation(line: 255, column: 7, scope: !675)
!689 = !DILocation(line: 256, column: 2, scope: !675)
!690 = !DILocation(line: 256, column: 6, scope: !675)
!691 = !DILocation(line: 258, column: 18, scope: !692)
!692 = distinct !DILexicalBlock(scope: !675, file: !2, line: 258, column: 6)
!693 = !DILocation(line: 258, column: 6, scope: !692)
!694 = !DILocation(line: 258, column: 6, scope: !675)
!695 = !DILocation(line: 258, column: 36, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !2, line: 258, column: 22)
!697 = !DILocation(line: 258, column: 31, scope: !696)
!698 = !DILocation(line: 258, column: 24, scope: !696)
!699 = !DILocation(line: 259, column: 10, scope: !675)
!700 = !DILocation(line: 259, column: 8, scope: !675)
!701 = !DILocation(line: 260, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !675, file: !2, line: 260, column: 6)
!703 = !DILocation(line: 260, column: 12, scope: !702)
!704 = !DILocation(line: 260, column: 17, scope: !702)
!705 = !DILocation(line: 260, column: 28, scope: !702)
!706 = !DILocation(line: 260, column: 20, scope: !702)
!707 = !DILocation(line: 260, column: 34, scope: !702)
!708 = !DILocation(line: 260, column: 6, scope: !675)
!709 = !DILocation(line: 260, column: 64, scope: !710)
!710 = distinct !DILexicalBlock(scope: !702, file: !2, line: 260, column: 50)
!711 = !DILocation(line: 260, column: 59, scope: !710)
!712 = !DILocation(line: 260, column: 52, scope: !710)
!713 = !DILocation(line: 261, column: 14, scope: !675)
!714 = !DILocation(line: 261, column: 17, scope: !675)
!715 = !DILocation(line: 261, column: 22, scope: !675)
!716 = !DILocation(line: 261, column: 9, scope: !675)
!717 = !DILocation(line: 261, column: 2, scope: !675)
!718 = !DILocation(line: 262, column: 1, scope: !675)
!719 = distinct !DISubprogram(name: "spdk_json_write_uint128", scope: !2, file: !2, line: 265, type: !720, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!65, !66, !678, !678}
!722 = !{!723, !724, !725, !726, !730, !731, !732, !733, !736, !737}
!723 = !DILocalVariable(name: "w", arg: 1, scope: !719, file: !2, line: 265, type: !66)
!724 = !DILocalVariable(name: "low_val", arg: 2, scope: !719, file: !2, line: 265, type: !678)
!725 = !DILocalVariable(name: "high_val", arg: 3, scope: !719, file: !2, line: 265, type: !678)
!726 = !DILocalVariable(name: "buf", scope: !719, file: !2, line: 267, type: !727)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 128)
!730 = !DILocalVariable(name: "low", scope: !719, file: !2, line: 268, type: !678)
!731 = !DILocalVariable(name: "high", scope: !719, file: !2, line: 268, type: !678)
!732 = !DILocalVariable(name: "count", scope: !719, file: !2, line: 269, type: !65)
!733 = !DILocalVariable(name: "temp_buf", scope: !734, file: !2, line: 274, type: !727)
!734 = distinct !DILexicalBlock(scope: !735, file: !2, line: 273, column: 17)
!735 = distinct !DILexicalBlock(scope: !719, file: !2, line: 273, column: 6)
!736 = !DILocalVariable(name: "seg", scope: !734, file: !2, line: 275, type: !678)
!737 = !DILocalVariable(name: "total", scope: !734, file: !2, line: 276, type: !117)
!738 = !DILocation(line: 265, column: 53, scope: !719)
!739 = !DILocation(line: 265, column: 65, scope: !719)
!740 = !DILocation(line: 265, column: 83, scope: !719)
!741 = !DILocation(line: 267, column: 2, scope: !719)
!742 = !DILocation(line: 267, column: 7, scope: !719)
!743 = !DILocation(line: 268, column: 2, scope: !719)
!744 = !DILocation(line: 268, column: 11, scope: !719)
!745 = !DILocation(line: 268, column: 17, scope: !719)
!746 = !DILocation(line: 268, column: 26, scope: !719)
!747 = !DILocation(line: 268, column: 33, scope: !719)
!748 = !DILocation(line: 269, column: 2, scope: !719)
!749 = !DILocation(line: 269, column: 6, scope: !719)
!750 = !DILocation(line: 271, column: 18, scope: !751)
!751 = distinct !DILexicalBlock(scope: !719, file: !2, line: 271, column: 6)
!752 = !DILocation(line: 271, column: 6, scope: !751)
!753 = !DILocation(line: 271, column: 6, scope: !719)
!754 = !DILocation(line: 271, column: 36, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !2, line: 271, column: 22)
!756 = !DILocation(line: 271, column: 31, scope: !755)
!757 = !DILocation(line: 271, column: 24, scope: !755)
!758 = !DILocation(line: 273, column: 6, scope: !735)
!759 = !DILocation(line: 273, column: 11, scope: !735)
!760 = !DILocation(line: 273, column: 6, scope: !719)
!761 = !DILocation(line: 274, column: 3, scope: !734)
!762 = !DILocation(line: 274, column: 8, scope: !734)
!763 = !DILocation(line: 275, column: 3, scope: !734)
!764 = !DILocation(line: 275, column: 12, scope: !734)
!765 = !DILocation(line: 276, column: 3, scope: !734)
!766 = !DILocation(line: 276, column: 21, scope: !734)
!767 = !DILocation(line: 276, column: 48, scope: !734)
!768 = !DILocation(line: 276, column: 29, scope: !734)
!769 = !DILocation(line: 277, column: 28, scope: !734)
!770 = !DILocation(line: 277, column: 9, scope: !734)
!771 = !DILocation(line: 277, column: 33, scope: !734)
!772 = !DILocation(line: 276, column: 52, scope: !734)
!773 = !DILocation(line: 279, column: 3, scope: !734)
!774 = !DILocation(line: 279, column: 10, scope: !734)
!775 = !DILocation(line: 280, column: 10, scope: !776)
!776 = distinct !DILexicalBlock(scope: !734, file: !2, line: 279, column: 17)
!777 = !DILocation(line: 280, column: 16, scope: !776)
!778 = !DILocation(line: 280, column: 8, scope: !776)
!779 = !DILocation(line: 281, column: 12, scope: !776)
!780 = !DILocation(line: 281, column: 18, scope: !776)
!781 = !DILocation(line: 281, column: 10, scope: !776)
!782 = !DILocation(line: 282, column: 8, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !2, line: 282, column: 8)
!784 = !DILocation(line: 282, column: 8, scope: !776)
!785 = !DILocation(line: 283, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !2, line: 282, column: 15)
!787 = !DILocation(line: 283, column: 11, scope: !786)
!788 = !DILocation(line: 284, column: 4, scope: !786)
!789 = !DILocation(line: 285, column: 13, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !2, line: 284, column: 11)
!791 = !DILocation(line: 285, column: 11, scope: !790)
!792 = !DILocation(line: 288, column: 8, scope: !793)
!793 = distinct !DILexicalBlock(scope: !776, file: !2, line: 288, column: 8)
!794 = !DILocation(line: 288, column: 14, scope: !793)
!795 = !DILocation(line: 288, column: 19, scope: !793)
!796 = !DILocation(line: 288, column: 30, scope: !793)
!797 = !DILocation(line: 288, column: 22, scope: !793)
!798 = !DILocation(line: 288, column: 36, scope: !793)
!799 = !DILocation(line: 288, column: 8, scope: !776)
!800 = !DILocation(line: 289, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !793, file: !2, line: 288, column: 57)
!802 = !DILocation(line: 289, column: 12, scope: !801)
!803 = !DILocation(line: 289, column: 5, scope: !801)
!804 = !DILocation(line: 292, column: 4, scope: !776)
!805 = distinct !{!805, !773, !806}
!806 = !DILocation(line: 293, column: 3, scope: !734)
!807 = !DILocation(line: 294, column: 2, scope: !735)
!808 = !DILocation(line: 294, column: 2, scope: !734)
!809 = !DILocation(line: 295, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !735, file: !2, line: 294, column: 9)
!811 = !DILocation(line: 295, column: 9, scope: !810)
!812 = !DILocation(line: 297, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !2, line: 297, column: 7)
!814 = !DILocation(line: 297, column: 13, scope: !813)
!815 = !DILocation(line: 297, column: 18, scope: !813)
!816 = !DILocation(line: 297, column: 29, scope: !813)
!817 = !DILocation(line: 297, column: 21, scope: !813)
!818 = !DILocation(line: 297, column: 35, scope: !813)
!819 = !DILocation(line: 297, column: 7, scope: !810)
!820 = !DILocation(line: 297, column: 65, scope: !821)
!821 = distinct !DILexicalBlock(scope: !813, file: !2, line: 297, column: 51)
!822 = !DILocation(line: 297, column: 60, scope: !821)
!823 = !DILocation(line: 297, column: 53, scope: !821)
!824 = !DILocation(line: 300, column: 14, scope: !719)
!825 = !DILocation(line: 300, column: 17, scope: !719)
!826 = !DILocation(line: 300, column: 22, scope: !719)
!827 = !DILocation(line: 300, column: 9, scope: !719)
!828 = !DILocation(line: 300, column: 2, scope: !719)
!829 = !DILocation(line: 301, column: 1, scope: !719)
!830 = distinct !DISubprogram(name: "spdk_json_write_named_uint128", scope: !2, file: !2, line: 304, type: !831, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!65, !66, !501, !678, !678}
!833 = !{!834, !835, !836, !837, !838}
!834 = !DILocalVariable(name: "w", arg: 1, scope: !830, file: !2, line: 304, type: !66)
!835 = !DILocalVariable(name: "name", arg: 2, scope: !830, file: !2, line: 304, type: !501)
!836 = !DILocalVariable(name: "low_val", arg: 3, scope: !830, file: !2, line: 305, type: !678)
!837 = !DILocalVariable(name: "high_val", arg: 4, scope: !830, file: !2, line: 305, type: !678)
!838 = !DILocalVariable(name: "rc", scope: !830, file: !2, line: 307, type: !65)
!839 = !DILocation(line: 304, column: 59, scope: !830)
!840 = !DILocation(line: 304, column: 74, scope: !830)
!841 = !DILocation(line: 305, column: 19, scope: !830)
!842 = !DILocation(line: 305, column: 37, scope: !830)
!843 = !DILocation(line: 307, column: 2, scope: !830)
!844 = !DILocation(line: 307, column: 6, scope: !830)
!845 = !DILocation(line: 307, column: 32, scope: !830)
!846 = !DILocation(line: 307, column: 35, scope: !830)
!847 = !DILocation(line: 307, column: 11, scope: !830)
!848 = !DILocation(line: 309, column: 9, scope: !830)
!849 = !DILocation(line: 309, column: 14, scope: !830)
!850 = !DILocation(line: 309, column: 43, scope: !830)
!851 = !DILocation(line: 309, column: 46, scope: !830)
!852 = !DILocation(line: 309, column: 55, scope: !830)
!853 = !DILocation(line: 309, column: 19, scope: !830)
!854 = !DILocation(line: 310, column: 1, scope: !830)
!855 = !DILocation(line: 309, column: 2, scope: !830)
!856 = distinct !DISubprogram(name: "spdk_json_write_name", scope: !2, file: !2, line: 605, type: !857, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!65, !66, !501}
!859 = !{!860, !861}
!860 = !DILocalVariable(name: "w", arg: 1, scope: !856, file: !2, line: 605, type: !66)
!861 = !DILocalVariable(name: "name", arg: 2, scope: !856, file: !2, line: 605, type: !501)
!862 = !DILocation(line: 605, column: 50, scope: !856)
!863 = !DILocation(line: 605, column: 65, scope: !856)
!864 = !DILocation(line: 607, column: 34, scope: !856)
!865 = !DILocation(line: 607, column: 37, scope: !856)
!866 = !DILocation(line: 607, column: 50, scope: !856)
!867 = !DILocation(line: 607, column: 43, scope: !856)
!868 = !DILocation(line: 607, column: 9, scope: !856)
!869 = !DILocation(line: 607, column: 2, scope: !856)
!870 = distinct !DISubprogram(name: "spdk_json_write_double", scope: !2, file: !2, line: 313, type: !871, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !874)
!871 = !DISubroutineType(types: !872)
!872 = !{!65, !66, !873}
!873 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!874 = !{!875, !876, !877, !878}
!875 = !DILocalVariable(name: "w", arg: 1, scope: !870, file: !2, line: 313, type: !66)
!876 = !DILocalVariable(name: "val", arg: 2, scope: !870, file: !2, line: 313, type: !873)
!877 = !DILocalVariable(name: "buf", scope: !870, file: !2, line: 315, type: !458)
!878 = !DILocalVariable(name: "count", scope: !870, file: !2, line: 316, type: !65)
!879 = !DILocation(line: 313, column: 52, scope: !870)
!880 = !DILocation(line: 313, column: 62, scope: !870)
!881 = !DILocation(line: 315, column: 2, scope: !870)
!882 = !DILocation(line: 315, column: 7, scope: !870)
!883 = !DILocation(line: 316, column: 2, scope: !870)
!884 = !DILocation(line: 316, column: 6, scope: !870)
!885 = !DILocation(line: 318, column: 18, scope: !886)
!886 = distinct !DILexicalBlock(scope: !870, file: !2, line: 318, column: 6)
!887 = !DILocation(line: 318, column: 6, scope: !886)
!888 = !DILocation(line: 318, column: 6, scope: !870)
!889 = !DILocation(line: 318, column: 36, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !2, line: 318, column: 22)
!891 = !DILocation(line: 318, column: 31, scope: !890)
!892 = !DILocation(line: 318, column: 24, scope: !890)
!893 = !DILocation(line: 319, column: 10, scope: !870)
!894 = !DILocation(line: 319, column: 8, scope: !870)
!895 = !DILocation(line: 320, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !870, file: !2, line: 320, column: 6)
!897 = !DILocation(line: 320, column: 12, scope: !896)
!898 = !DILocation(line: 320, column: 17, scope: !896)
!899 = !DILocation(line: 320, column: 28, scope: !896)
!900 = !DILocation(line: 320, column: 20, scope: !896)
!901 = !DILocation(line: 320, column: 34, scope: !896)
!902 = !DILocation(line: 320, column: 6, scope: !870)
!903 = !DILocation(line: 320, column: 64, scope: !904)
!904 = distinct !DILexicalBlock(scope: !896, file: !2, line: 320, column: 50)
!905 = !DILocation(line: 320, column: 59, scope: !904)
!906 = !DILocation(line: 320, column: 52, scope: !904)
!907 = !DILocation(line: 321, column: 14, scope: !870)
!908 = !DILocation(line: 321, column: 17, scope: !870)
!909 = !DILocation(line: 321, column: 22, scope: !870)
!910 = !DILocation(line: 321, column: 9, scope: !870)
!911 = !DILocation(line: 321, column: 2, scope: !870)
!912 = !DILocation(line: 322, column: 1, scope: !870)
!913 = distinct !DISubprogram(name: "spdk_json_write_string_raw", scope: !2, file: !2, line: 460, type: !914, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!65, !66, !501, !78}
!916 = !{!917, !918, !919}
!917 = !DILocalVariable(name: "w", arg: 1, scope: !913, file: !2, line: 460, type: !66)
!918 = !DILocalVariable(name: "val", arg: 2, scope: !913, file: !2, line: 460, type: !501)
!919 = !DILocalVariable(name: "len", arg: 3, scope: !913, file: !2, line: 460, type: !78)
!920 = !DILocation(line: 460, column: 56, scope: !913)
!921 = !DILocation(line: 460, column: 71, scope: !913)
!922 = !DILocation(line: 460, column: 83, scope: !913)
!923 = !DILocation(line: 462, column: 18, scope: !924)
!924 = distinct !DILexicalBlock(scope: !913, file: !2, line: 462, column: 6)
!925 = !DILocation(line: 462, column: 6, scope: !924)
!926 = !DILocation(line: 462, column: 6, scope: !913)
!927 = !DILocation(line: 462, column: 36, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !2, line: 462, column: 22)
!929 = !DILocation(line: 462, column: 31, scope: !928)
!930 = !DILocation(line: 462, column: 24, scope: !928)
!931 = !DILocation(line: 463, column: 30, scope: !913)
!932 = !DILocation(line: 463, column: 33, scope: !913)
!933 = !DILocation(line: 463, column: 38, scope: !913)
!934 = !DILocation(line: 463, column: 9, scope: !913)
!935 = !DILocation(line: 463, column: 2, scope: !913)
!936 = !DILocation(line: 464, column: 1, scope: !913)
!937 = distinct !DISubprogram(name: "write_string_or_name", scope: !2, file: !2, line: 392, type: !914, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !938)
!938 = !{!939, !940, !941, !942, !943, !944, !946}
!939 = !DILocalVariable(name: "w", arg: 1, scope: !937, file: !2, line: 392, type: !66)
!940 = !DILocalVariable(name: "val", arg: 2, scope: !937, file: !2, line: 392, type: !501)
!941 = !DILocalVariable(name: "len", arg: 3, scope: !937, file: !2, line: 392, type: !78)
!942 = !DILocalVariable(name: "p", scope: !937, file: !2, line: 394, type: !122)
!943 = !DILocalVariable(name: "end", scope: !937, file: !2, line: 395, type: !122)
!944 = !DILocalVariable(name: "codepoint_len", scope: !945, file: !2, line: 400, type: !65)
!945 = distinct !DILexicalBlock(scope: !937, file: !2, line: 399, column: 19)
!946 = !DILocalVariable(name: "codepoint", scope: !945, file: !2, line: 401, type: !83)
!947 = !DILocation(line: 392, column: 50, scope: !937)
!948 = !DILocation(line: 392, column: 65, scope: !937)
!949 = !DILocation(line: 392, column: 77, scope: !937)
!950 = !DILocation(line: 394, column: 2, scope: !937)
!951 = !DILocation(line: 394, column: 17, scope: !937)
!952 = !DILocation(line: 394, column: 21, scope: !937)
!953 = !DILocation(line: 395, column: 2, scope: !937)
!954 = !DILocation(line: 395, column: 17, scope: !937)
!955 = !DILocation(line: 395, column: 23, scope: !937)
!956 = !DILocation(line: 395, column: 29, scope: !937)
!957 = !DILocation(line: 395, column: 27, scope: !937)
!958 = !DILocation(line: 397, column: 11, scope: !959)
!959 = distinct !DILexicalBlock(scope: !937, file: !2, line: 397, column: 6)
!960 = !DILocation(line: 397, column: 6, scope: !959)
!961 = !DILocation(line: 397, column: 6, scope: !937)
!962 = !DILocation(line: 397, column: 38, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !2, line: 397, column: 24)
!964 = !DILocation(line: 397, column: 33, scope: !963)
!965 = !DILocation(line: 397, column: 26, scope: !963)
!966 = !DILocation(line: 399, column: 2, scope: !937)
!967 = !DILocation(line: 399, column: 9, scope: !937)
!968 = !DILocation(line: 399, column: 14, scope: !937)
!969 = !DILocation(line: 399, column: 11, scope: !937)
!970 = !DILocation(line: 400, column: 3, scope: !945)
!971 = !DILocation(line: 400, column: 7, scope: !945)
!972 = !DILocation(line: 401, column: 3, scope: !945)
!973 = !DILocation(line: 401, column: 12, scope: !945)
!974 = !DILocation(line: 403, column: 30, scope: !945)
!975 = !DILocation(line: 403, column: 33, scope: !945)
!976 = !DILocation(line: 403, column: 19, scope: !945)
!977 = !DILocation(line: 403, column: 17, scope: !945)
!978 = !DILocation(line: 404, column: 11, scope: !945)
!979 = !DILocation(line: 404, column: 3, scope: !945)
!980 = !DILocation(line: 406, column: 37, scope: !981)
!981 = distinct !DILexicalBlock(scope: !945, file: !2, line: 404, column: 26)
!982 = !DILocation(line: 406, column: 16, scope: !981)
!983 = !DILocation(line: 406, column: 14, scope: !981)
!984 = !DILocation(line: 407, column: 4, scope: !981)
!985 = !DILocation(line: 409, column: 37, scope: !981)
!986 = !DILocation(line: 409, column: 16, scope: !981)
!987 = !DILocation(line: 409, column: 14, scope: !981)
!988 = !DILocation(line: 410, column: 4, scope: !981)
!989 = !DILocation(line: 412, column: 37, scope: !981)
!990 = !DILocation(line: 412, column: 16, scope: !981)
!991 = !DILocation(line: 412, column: 14, scope: !981)
!992 = !DILocation(line: 413, column: 4, scope: !981)
!993 = !DILocation(line: 415, column: 37, scope: !981)
!994 = !DILocation(line: 415, column: 16, scope: !981)
!995 = !DILocation(line: 415, column: 14, scope: !981)
!996 = !DILocation(line: 416, column: 4, scope: !981)
!997 = !DILocation(line: 418, column: 16, scope: !981)
!998 = !DILocation(line: 418, column: 11, scope: !981)
!999 = !DILocation(line: 418, column: 4, scope: !981)
!1000 = !DILocation(line: 421, column: 23, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !945, file: !2, line: 421, column: 7)
!1002 = !DILocation(line: 421, column: 26, scope: !1001)
!1003 = !DILocation(line: 421, column: 7, scope: !1001)
!1004 = !DILocation(line: 421, column: 7, scope: !945)
!1005 = !DILocation(line: 421, column: 52, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 421, column: 38)
!1007 = !DILocation(line: 421, column: 47, scope: !1006)
!1008 = !DILocation(line: 421, column: 40, scope: !1006)
!1009 = !DILocation(line: 422, column: 8, scope: !945)
!1010 = !DILocation(line: 422, column: 5, scope: !945)
!1011 = !DILocation(line: 423, column: 2, scope: !937)
!1012 = distinct !{!1012, !966, !1011}
!1013 = !DILocation(line: 425, column: 14, scope: !937)
!1014 = !DILocation(line: 425, column: 9, scope: !937)
!1015 = !DILocation(line: 425, column: 2, scope: !937)
!1016 = !DILocation(line: 426, column: 1, scope: !937)
!1017 = distinct !DISubprogram(name: "spdk_json_write_string", scope: !2, file: !2, line: 467, type: !857, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1018)
!1018 = !{!1019, !1020}
!1019 = !DILocalVariable(name: "w", arg: 1, scope: !1017, file: !2, line: 467, type: !66)
!1020 = !DILocalVariable(name: "val", arg: 2, scope: !1017, file: !2, line: 467, type: !501)
!1021 = !DILocation(line: 467, column: 52, scope: !1017)
!1022 = !DILocation(line: 467, column: 67, scope: !1017)
!1023 = !DILocation(line: 469, column: 36, scope: !1017)
!1024 = !DILocation(line: 469, column: 39, scope: !1017)
!1025 = !DILocation(line: 469, column: 51, scope: !1017)
!1026 = !DILocation(line: 469, column: 44, scope: !1017)
!1027 = !DILocation(line: 469, column: 9, scope: !1017)
!1028 = !DILocation(line: 469, column: 2, scope: !1017)
!1029 = !DISubprogram(name: "strlen", scope: !1030, file: !1030, line: 407, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!80, !501}
!1033 = distinct !DISubprogram(name: "spdk_json_write_string_utf16le_raw", scope: !2, file: !2, line: 473, type: !1034, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1038)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!65, !66, !1036, !78}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1038 = !{!1039, !1040, !1041}
!1039 = !DILocalVariable(name: "w", arg: 1, scope: !1033, file: !2, line: 473, type: !66)
!1040 = !DILocalVariable(name: "val", arg: 2, scope: !1033, file: !2, line: 473, type: !1036)
!1041 = !DILocalVariable(name: "len", arg: 3, scope: !1033, file: !2, line: 473, type: !78)
!1042 = !DILocation(line: 473, column: 64, scope: !1033)
!1043 = !DILocation(line: 473, column: 83, scope: !1033)
!1044 = !DILocation(line: 473, column: 95, scope: !1033)
!1045 = !DILocation(line: 475, column: 18, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 475, column: 6)
!1047 = !DILocation(line: 475, column: 6, scope: !1046)
!1048 = !DILocation(line: 475, column: 6, scope: !1033)
!1049 = !DILocation(line: 475, column: 36, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 475, column: 22)
!1051 = !DILocation(line: 475, column: 31, scope: !1050)
!1052 = !DILocation(line: 475, column: 24, scope: !1050)
!1053 = !DILocation(line: 476, column: 38, scope: !1033)
!1054 = !DILocation(line: 476, column: 41, scope: !1033)
!1055 = !DILocation(line: 476, column: 46, scope: !1033)
!1056 = !DILocation(line: 476, column: 9, scope: !1033)
!1057 = !DILocation(line: 476, column: 2, scope: !1033)
!1058 = !DILocation(line: 477, column: 1, scope: !1033)
!1059 = distinct !DISubprogram(name: "write_string_or_name_utf16le", scope: !2, file: !2, line: 429, type: !1034, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1068}
!1061 = !DILocalVariable(name: "w", arg: 1, scope: !1059, file: !2, line: 429, type: !66)
!1062 = !DILocalVariable(name: "val", arg: 2, scope: !1059, file: !2, line: 429, type: !1036)
!1063 = !DILocalVariable(name: "len", arg: 3, scope: !1059, file: !2, line: 429, type: !78)
!1064 = !DILocalVariable(name: "p", scope: !1059, file: !2, line: 431, type: !1036)
!1065 = !DILocalVariable(name: "end", scope: !1059, file: !2, line: 432, type: !1036)
!1066 = !DILocalVariable(name: "codepoint_len", scope: !1067, file: !2, line: 437, type: !65)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 436, column: 19)
!1068 = !DILocalVariable(name: "codepoint", scope: !1067, file: !2, line: 438, type: !83)
!1069 = !DILocation(line: 429, column: 58, scope: !1059)
!1070 = !DILocation(line: 429, column: 77, scope: !1059)
!1071 = !DILocation(line: 429, column: 89, scope: !1059)
!1072 = !DILocation(line: 431, column: 2, scope: !1059)
!1073 = !DILocation(line: 431, column: 18, scope: !1059)
!1074 = !DILocation(line: 431, column: 22, scope: !1059)
!1075 = !DILocation(line: 432, column: 2, scope: !1059)
!1076 = !DILocation(line: 432, column: 18, scope: !1059)
!1077 = !DILocation(line: 432, column: 24, scope: !1059)
!1078 = !DILocation(line: 432, column: 30, scope: !1059)
!1079 = !DILocation(line: 432, column: 28, scope: !1059)
!1080 = !DILocation(line: 434, column: 11, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 434, column: 6)
!1082 = !DILocation(line: 434, column: 6, scope: !1081)
!1083 = !DILocation(line: 434, column: 6, scope: !1059)
!1084 = !DILocation(line: 434, column: 38, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 434, column: 24)
!1086 = !DILocation(line: 434, column: 33, scope: !1085)
!1087 = !DILocation(line: 434, column: 26, scope: !1085)
!1088 = !DILocation(line: 436, column: 2, scope: !1059)
!1089 = !DILocation(line: 436, column: 9, scope: !1059)
!1090 = !DILocation(line: 436, column: 14, scope: !1059)
!1091 = !DILocation(line: 436, column: 11, scope: !1059)
!1092 = !DILocation(line: 437, column: 3, scope: !1067)
!1093 = !DILocation(line: 437, column: 7, scope: !1067)
!1094 = !DILocation(line: 438, column: 3, scope: !1067)
!1095 = !DILocation(line: 438, column: 12, scope: !1067)
!1096 = !DILocation(line: 440, column: 33, scope: !1067)
!1097 = !DILocation(line: 440, column: 36, scope: !1067)
!1098 = !DILocation(line: 440, column: 19, scope: !1067)
!1099 = !DILocation(line: 440, column: 17, scope: !1067)
!1100 = !DILocation(line: 441, column: 11, scope: !1067)
!1101 = !DILocation(line: 441, column: 3, scope: !1067)
!1102 = !DILocation(line: 443, column: 27, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 441, column: 26)
!1104 = !DILocation(line: 443, column: 16, scope: !1103)
!1105 = !DILocation(line: 443, column: 14, scope: !1103)
!1106 = !DILocation(line: 444, column: 4, scope: !1103)
!1107 = !DILocation(line: 446, column: 55, scope: !1103)
!1108 = !DILocation(line: 446, column: 44, scope: !1103)
!1109 = !DILocation(line: 446, column: 73, scope: !1103)
!1110 = !DILocation(line: 446, column: 62, scope: !1103)
!1111 = !DILocation(line: 446, column: 16, scope: !1103)
!1112 = !DILocation(line: 446, column: 14, scope: !1103)
!1113 = !DILocation(line: 447, column: 4, scope: !1103)
!1114 = !DILocation(line: 449, column: 16, scope: !1103)
!1115 = !DILocation(line: 449, column: 11, scope: !1103)
!1116 = !DILocation(line: 449, column: 4, scope: !1103)
!1117 = !DILocation(line: 452, column: 23, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 452, column: 7)
!1119 = !DILocation(line: 452, column: 26, scope: !1118)
!1120 = !DILocation(line: 452, column: 7, scope: !1118)
!1121 = !DILocation(line: 452, column: 7, scope: !1067)
!1122 = !DILocation(line: 452, column: 52, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 452, column: 38)
!1124 = !DILocation(line: 452, column: 47, scope: !1123)
!1125 = !DILocation(line: 452, column: 40, scope: !1123)
!1126 = !DILocation(line: 453, column: 8, scope: !1067)
!1127 = !DILocation(line: 453, column: 5, scope: !1067)
!1128 = !DILocation(line: 454, column: 2, scope: !1059)
!1129 = distinct !{!1129, !1088, !1128}
!1130 = !DILocation(line: 456, column: 14, scope: !1059)
!1131 = !DILocation(line: 456, column: 9, scope: !1059)
!1132 = !DILocation(line: 456, column: 2, scope: !1059)
!1133 = !DILocation(line: 457, column: 1, scope: !1059)
!1134 = distinct !DISubprogram(name: "spdk_json_write_string_utf16le", scope: !2, file: !2, line: 480, type: !1135, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!65, !66, !1036}
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DILocalVariable(name: "w", arg: 1, scope: !1134, file: !2, line: 480, type: !66)
!1139 = !DILocalVariable(name: "val", arg: 2, scope: !1134, file: !2, line: 480, type: !1036)
!1140 = !DILocalVariable(name: "p", scope: !1134, file: !2, line: 482, type: !1036)
!1141 = !DILocalVariable(name: "len", scope: !1134, file: !2, line: 483, type: !78)
!1142 = !DILocation(line: 480, column: 60, scope: !1134)
!1143 = !DILocation(line: 480, column: 79, scope: !1134)
!1144 = !DILocation(line: 482, column: 2, scope: !1134)
!1145 = !DILocation(line: 482, column: 18, scope: !1134)
!1146 = !DILocation(line: 483, column: 2, scope: !1134)
!1147 = !DILocation(line: 483, column: 9, scope: !1134)
!1148 = !DILocation(line: 485, column: 11, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 485, column: 2)
!1150 = !DILocation(line: 485, column: 20, scope: !1149)
!1151 = !DILocation(line: 485, column: 18, scope: !1149)
!1152 = !DILocation(line: 485, column: 7, scope: !1149)
!1153 = !DILocation(line: 485, column: 26, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 485, column: 2)
!1155 = !DILocation(line: 485, column: 25, scope: !1154)
!1156 = !DILocation(line: 485, column: 2, scope: !1149)
!1157 = !DILocation(line: 486, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 485, column: 34)
!1159 = !DILocation(line: 487, column: 2, scope: !1158)
!1160 = !DILocation(line: 485, column: 30, scope: !1154)
!1161 = !DILocation(line: 485, column: 2, scope: !1154)
!1162 = distinct !{!1162, !1156, !1163}
!1163 = !DILocation(line: 487, column: 2, scope: !1149)
!1164 = !DILocation(line: 489, column: 44, scope: !1134)
!1165 = !DILocation(line: 489, column: 47, scope: !1134)
!1166 = !DILocation(line: 489, column: 52, scope: !1134)
!1167 = !DILocation(line: 489, column: 9, scope: !1134)
!1168 = !DILocation(line: 490, column: 1, scope: !1134)
!1169 = !DILocation(line: 489, column: 2, scope: !1134)
!1170 = distinct !DISubprogram(name: "spdk_json_write_string_fmt", scope: !2, file: !2, line: 493, type: !1171, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!65, !66, !501, null}
!1173 = !{!1174, !1175, !1176, !1191}
!1174 = !DILocalVariable(name: "w", arg: 1, scope: !1170, file: !2, line: 493, type: !66)
!1175 = !DILocalVariable(name: "fmt", arg: 2, scope: !1170, file: !2, line: 493, type: !501)
!1176 = !DILocalVariable(name: "args", scope: !1170, file: !2, line: 495, type: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1178, line: 52, baseType: !1179)
!1178 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1180, line: 35, baseType: !1181)
!1180 = !DIFile(filename: "/usr/lib/clang/18/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "95ff2da58c2c75d7c246cff7935ff18b")
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !1182)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 192, elements: !1189)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1183, file: !2, line: 495, baseType: !87, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1183, file: !2, line: 495, baseType: !87, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1183, file: !2, line: 495, baseType: !75, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1183, file: !2, line: 495, baseType: !75, size: 64, offset: 128)
!1189 = !{!1190}
!1190 = !DISubrange(count: 1)
!1191 = !DILocalVariable(name: "rc", scope: !1170, file: !2, line: 496, type: !65)
!1192 = !DILocation(line: 493, column: 56, scope: !1170)
!1193 = !DILocation(line: 493, column: 71, scope: !1170)
!1194 = !DILocation(line: 495, column: 2, scope: !1170)
!1195 = !DILocation(line: 495, column: 10, scope: !1170)
!1196 = !DILocation(line: 496, column: 2, scope: !1170)
!1197 = !DILocation(line: 496, column: 6, scope: !1170)
!1198 = !DILocation(line: 498, column: 2, scope: !1170)
!1199 = !DILocation(line: 499, column: 36, scope: !1170)
!1200 = !DILocation(line: 499, column: 39, scope: !1170)
!1201 = !DILocation(line: 499, column: 44, scope: !1170)
!1202 = !DILocation(line: 499, column: 7, scope: !1170)
!1203 = !DILocation(line: 499, column: 5, scope: !1170)
!1204 = !DILocation(line: 500, column: 2, scope: !1170)
!1205 = !DILocation(line: 502, column: 9, scope: !1170)
!1206 = !DILocation(line: 503, column: 1, scope: !1170)
!1207 = !DILocation(line: 502, column: 2, scope: !1170)
!1208 = distinct !DISubprogram(name: "spdk_json_write_string_fmt_v", scope: !2, file: !2, line: 506, type: !1209, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1212)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!65, !66, !501, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1212 = !{!1213, !1214, !1215, !1216, !1217}
!1213 = !DILocalVariable(name: "w", arg: 1, scope: !1208, file: !2, line: 506, type: !66)
!1214 = !DILocalVariable(name: "fmt", arg: 2, scope: !1208, file: !2, line: 506, type: !501)
!1215 = !DILocalVariable(name: "args", arg: 3, scope: !1208, file: !2, line: 506, type: !1211)
!1216 = !DILocalVariable(name: "s", scope: !1208, file: !2, line: 508, type: !121)
!1217 = !DILocalVariable(name: "rc", scope: !1208, file: !2, line: 509, type: !65)
!1218 = !DILocation(line: 506, column: 58, scope: !1208)
!1219 = !DILocation(line: 506, column: 73, scope: !1208)
!1220 = !DILocation(line: 506, column: 86, scope: !1208)
!1221 = !DILocation(line: 508, column: 2, scope: !1208)
!1222 = !DILocation(line: 508, column: 8, scope: !1208)
!1223 = !DILocation(line: 509, column: 2, scope: !1208)
!1224 = !DILocation(line: 509, column: 6, scope: !1208)
!1225 = !DILocation(line: 511, column: 26, scope: !1208)
!1226 = !DILocation(line: 511, column: 31, scope: !1208)
!1227 = !DILocation(line: 511, column: 6, scope: !1208)
!1228 = !DILocation(line: 511, column: 4, scope: !1208)
!1229 = !DILocation(line: 512, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 512, column: 6)
!1231 = !DILocation(line: 512, column: 8, scope: !1230)
!1232 = !DILocation(line: 512, column: 6, scope: !1208)
!1233 = !DILocation(line: 513, column: 3, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 512, column: 17)
!1235 = !DILocation(line: 516, column: 30, scope: !1208)
!1236 = !DILocation(line: 516, column: 33, scope: !1208)
!1237 = !DILocation(line: 516, column: 7, scope: !1208)
!1238 = !DILocation(line: 516, column: 5, scope: !1208)
!1239 = !DILocation(line: 517, column: 7, scope: !1208)
!1240 = !DILocation(line: 517, column: 2, scope: !1208)
!1241 = !DILocation(line: 518, column: 9, scope: !1208)
!1242 = !DILocation(line: 518, column: 2, scope: !1208)
!1243 = !DILocation(line: 519, column: 1, scope: !1208)
!1244 = !DISubprogram(name: "spdk_vsprintf_alloc", scope: !1245, file: !1245, line: 43, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DIFile(filename: "include/spdk/string.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "e1a3492a11ba1b14663c319ffba0eb5d")
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!121, !501, !1211}
!1248 = distinct !DISubprogram(name: "spdk_json_write_bytearray", scope: !2, file: !2, line: 522, type: !275, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DILocalVariable(name: "w", arg: 1, scope: !1248, file: !2, line: 522, type: !66)
!1251 = !DILocalVariable(name: "val", arg: 2, scope: !1248, file: !2, line: 522, type: !76)
!1252 = !DILocalVariable(name: "len", arg: 3, scope: !1248, file: !2, line: 522, type: !78)
!1253 = !DILocalVariable(name: "v", scope: !1248, file: !2, line: 524, type: !122)
!1254 = !DILocalVariable(name: "i", scope: !1248, file: !2, line: 525, type: !78)
!1255 = !DILocalVariable(name: "s", scope: !1248, file: !2, line: 526, type: !121)
!1256 = !DILocalVariable(name: "rc", scope: !1248, file: !2, line: 527, type: !65)
!1257 = !DILocation(line: 522, column: 55, scope: !1248)
!1258 = !DILocation(line: 522, column: 70, scope: !1248)
!1259 = !DILocation(line: 522, column: 82, scope: !1248)
!1260 = !DILocation(line: 524, column: 2, scope: !1248)
!1261 = !DILocation(line: 524, column: 17, scope: !1248)
!1262 = !DILocation(line: 524, column: 21, scope: !1248)
!1263 = !DILocation(line: 525, column: 2, scope: !1248)
!1264 = !DILocation(line: 525, column: 9, scope: !1248)
!1265 = !DILocation(line: 526, column: 2, scope: !1248)
!1266 = !DILocation(line: 526, column: 8, scope: !1248)
!1267 = !DILocation(line: 527, column: 2, scope: !1248)
!1268 = !DILocation(line: 527, column: 6, scope: !1248)
!1269 = !DILocation(line: 529, column: 17, scope: !1248)
!1270 = !DILocation(line: 529, column: 15, scope: !1248)
!1271 = !DILocation(line: 529, column: 21, scope: !1248)
!1272 = !DILocation(line: 529, column: 6, scope: !1248)
!1273 = !DILocation(line: 529, column: 4, scope: !1248)
!1274 = !DILocation(line: 530, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 530, column: 6)
!1276 = !DILocation(line: 530, column: 8, scope: !1275)
!1277 = !DILocation(line: 530, column: 6, scope: !1248)
!1278 = !DILocation(line: 531, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 530, column: 17)
!1280 = !DILocation(line: 534, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 534, column: 2)
!1282 = !DILocation(line: 534, column: 7, scope: !1281)
!1283 = !DILocation(line: 534, column: 14, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 534, column: 2)
!1285 = !DILocation(line: 534, column: 18, scope: !1284)
!1286 = !DILocation(line: 534, column: 16, scope: !1284)
!1287 = !DILocation(line: 534, column: 2, scope: !1281)
!1288 = !DILocation(line: 535, column: 16, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 534, column: 28)
!1290 = !DILocation(line: 535, column: 22, scope: !1289)
!1291 = !DILocation(line: 535, column: 20, scope: !1289)
!1292 = !DILocation(line: 535, column: 28, scope: !1289)
!1293 = !DILocation(line: 535, column: 26, scope: !1289)
!1294 = !DILocation(line: 535, column: 3, scope: !1289)
!1295 = !DILocation(line: 536, column: 2, scope: !1289)
!1296 = !DILocation(line: 534, column: 23, scope: !1284)
!1297 = !DILocation(line: 534, column: 2, scope: !1284)
!1298 = distinct !{!1298, !1287, !1299}
!1299 = !DILocation(line: 536, column: 2, scope: !1281)
!1300 = !DILocation(line: 537, column: 2, scope: !1248)
!1301 = !DILocation(line: 537, column: 8, scope: !1248)
!1302 = !DILocation(line: 537, column: 6, scope: !1248)
!1303 = !DILocation(line: 537, column: 13, scope: !1248)
!1304 = !DILocation(line: 539, column: 30, scope: !1248)
!1305 = !DILocation(line: 539, column: 33, scope: !1248)
!1306 = !DILocation(line: 539, column: 7, scope: !1248)
!1307 = !DILocation(line: 539, column: 5, scope: !1248)
!1308 = !DILocation(line: 540, column: 7, scope: !1248)
!1309 = !DILocation(line: 540, column: 2, scope: !1248)
!1310 = !DILocation(line: 541, column: 9, scope: !1248)
!1311 = !DILocation(line: 541, column: 2, scope: !1248)
!1312 = !DILocation(line: 542, column: 1, scope: !1248)
!1313 = !DISubprogram(name: "malloc", scope: !199, file: !199, line: 540, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!75, !202}
!1316 = distinct !DISubprogram(name: "write_hex_2", scope: !2, file: !2, line: 325, type: !1317, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !75, !96}
!1319 = !{!1320, !1321, !1322, !1323}
!1320 = !DILocalVariable(name: "dest", arg: 1, scope: !1316, file: !2, line: 325, type: !75)
!1321 = !DILocalVariable(name: "val", arg: 2, scope: !1316, file: !2, line: 325, type: !96)
!1322 = !DILocalVariable(name: "p", scope: !1316, file: !2, line: 327, type: !121)
!1323 = !DILocalVariable(name: "hex", scope: !1316, file: !2, line: 328, type: !1324)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 17)
!1327 = !DILocation(line: 325, column: 19, scope: !1316)
!1328 = !DILocation(line: 325, column: 33, scope: !1316)
!1329 = !DILocation(line: 327, column: 2, scope: !1316)
!1330 = !DILocation(line: 327, column: 8, scope: !1316)
!1331 = !DILocation(line: 327, column: 12, scope: !1316)
!1332 = !DILocation(line: 328, column: 2, scope: !1316)
!1333 = !DILocation(line: 328, column: 7, scope: !1316)
!1334 = !DILocation(line: 330, column: 13, scope: !1316)
!1335 = !DILocation(line: 330, column: 17, scope: !1316)
!1336 = !DILocation(line: 330, column: 9, scope: !1316)
!1337 = !DILocation(line: 330, column: 2, scope: !1316)
!1338 = !DILocation(line: 330, column: 7, scope: !1316)
!1339 = !DILocation(line: 331, column: 13, scope: !1316)
!1340 = !DILocation(line: 331, column: 17, scope: !1316)
!1341 = !DILocation(line: 331, column: 9, scope: !1316)
!1342 = !DILocation(line: 331, column: 2, scope: !1316)
!1343 = !DILocation(line: 331, column: 7, scope: !1316)
!1344 = !DILocation(line: 332, column: 1, scope: !1316)
!1345 = distinct !DISubprogram(name: "spdk_json_write_array_begin", scope: !2, file: !2, line: 545, type: !205, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1346)
!1346 = !{!1347}
!1347 = !DILocalVariable(name: "w", arg: 1, scope: !1345, file: !2, line: 545, type: !66)
!1348 = !DILocation(line: 545, column: 57, scope: !1345)
!1349 = !DILocation(line: 547, column: 18, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 547, column: 6)
!1351 = !DILocation(line: 547, column: 6, scope: !1350)
!1352 = !DILocation(line: 547, column: 6, scope: !1345)
!1353 = !DILocation(line: 547, column: 36, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 547, column: 22)
!1355 = !DILocation(line: 547, column: 31, scope: !1354)
!1356 = !DILocation(line: 547, column: 24, scope: !1354)
!1357 = !DILocation(line: 548, column: 2, scope: !1345)
!1358 = !DILocation(line: 548, column: 5, scope: !1345)
!1359 = !DILocation(line: 548, column: 17, scope: !1345)
!1360 = !DILocation(line: 549, column: 2, scope: !1345)
!1361 = !DILocation(line: 549, column: 5, scope: !1345)
!1362 = !DILocation(line: 549, column: 16, scope: !1345)
!1363 = !DILocation(line: 550, column: 2, scope: !1345)
!1364 = !DILocation(line: 550, column: 5, scope: !1345)
!1365 = !DILocation(line: 550, column: 11, scope: !1345)
!1366 = !DILocation(line: 551, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 551, column: 6)
!1368 = !DILocation(line: 551, column: 6, scope: !1367)
!1369 = !DILocation(line: 551, column: 6, scope: !1345)
!1370 = !DILocation(line: 551, column: 37, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 551, column: 23)
!1372 = !DILocation(line: 551, column: 32, scope: !1371)
!1373 = !DILocation(line: 551, column: 25, scope: !1371)
!1374 = !DILocation(line: 552, column: 2, scope: !1345)
!1375 = !DILocation(line: 553, column: 1, scope: !1345)
!1376 = distinct !DISubprogram(name: "spdk_json_write_array_end", scope: !2, file: !2, line: 556, type: !205, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1377)
!1377 = !{!1378}
!1378 = !DILocalVariable(name: "w", arg: 1, scope: !1376, file: !2, line: 556, type: !66)
!1379 = !DILocation(line: 556, column: 55, scope: !1376)
!1380 = !DILocation(line: 558, column: 2, scope: !1376)
!1381 = !DILocation(line: 558, column: 5, scope: !1376)
!1382 = !DILocation(line: 558, column: 17, scope: !1376)
!1383 = !DILocation(line: 559, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 559, column: 6)
!1385 = !DILocation(line: 559, column: 9, scope: !1384)
!1386 = !DILocation(line: 559, column: 16, scope: !1384)
!1387 = !DILocation(line: 559, column: 6, scope: !1376)
!1388 = !DILocation(line: 559, column: 36, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 559, column: 22)
!1390 = !DILocation(line: 559, column: 31, scope: !1389)
!1391 = !DILocation(line: 559, column: 24, scope: !1389)
!1392 = !DILocation(line: 560, column: 2, scope: !1376)
!1393 = !DILocation(line: 560, column: 5, scope: !1376)
!1394 = !DILocation(line: 560, column: 11, scope: !1376)
!1395 = !DILocation(line: 561, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 561, column: 6)
!1397 = !DILocation(line: 561, column: 10, scope: !1396)
!1398 = !DILocation(line: 561, column: 6, scope: !1376)
!1399 = !DILocation(line: 562, column: 16, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 562, column: 7)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 561, column: 22)
!1402 = !DILocation(line: 562, column: 7, scope: !1400)
!1403 = !DILocation(line: 562, column: 7, scope: !1401)
!1404 = !DILocation(line: 562, column: 43, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 562, column: 29)
!1406 = !DILocation(line: 562, column: 38, scope: !1405)
!1407 = !DILocation(line: 562, column: 31, scope: !1405)
!1408 = !DILocation(line: 563, column: 19, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 563, column: 7)
!1410 = !DILocation(line: 563, column: 7, scope: !1409)
!1411 = !DILocation(line: 563, column: 7, scope: !1401)
!1412 = !DILocation(line: 563, column: 37, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 563, column: 23)
!1414 = !DILocation(line: 563, column: 32, scope: !1413)
!1415 = !DILocation(line: 563, column: 25, scope: !1413)
!1416 = !DILocation(line: 564, column: 2, scope: !1401)
!1417 = !DILocation(line: 565, column: 2, scope: !1376)
!1418 = !DILocation(line: 565, column: 5, scope: !1376)
!1419 = !DILocation(line: 565, column: 16, scope: !1376)
!1420 = !DILocation(line: 566, column: 14, scope: !1376)
!1421 = !DILocation(line: 566, column: 9, scope: !1376)
!1422 = !DILocation(line: 566, column: 2, scope: !1376)
!1423 = !DILocation(line: 567, column: 1, scope: !1376)
!1424 = distinct !DISubprogram(name: "emit_fmt", scope: !2, file: !2, line: 128, type: !275, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DILocalVariable(name: "w", arg: 1, scope: !1424, file: !2, line: 128, type: !66)
!1427 = !DILocalVariable(name: "data", arg: 2, scope: !1424, file: !2, line: 128, type: !76)
!1428 = !DILocalVariable(name: "size", arg: 3, scope: !1424, file: !2, line: 128, type: !78)
!1429 = !DILocation(line: 128, column: 38, scope: !1424)
!1430 = !DILocation(line: 128, column: 53, scope: !1424)
!1431 = !DILocation(line: 128, column: 66, scope: !1424)
!1432 = !DILocation(line: 130, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 130, column: 6)
!1434 = !DILocation(line: 130, column: 9, scope: !1433)
!1435 = !DILocation(line: 130, column: 15, scope: !1433)
!1436 = !DILocation(line: 130, column: 6, scope: !1424)
!1437 = !DILocation(line: 131, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 130, column: 49)
!1439 = !DILocation(line: 131, column: 18, scope: !1438)
!1440 = !DILocation(line: 131, column: 24, scope: !1438)
!1441 = !DILocation(line: 131, column: 10, scope: !1438)
!1442 = !DILocation(line: 131, column: 3, scope: !1438)
!1443 = !DILocation(line: 133, column: 2, scope: !1424)
!1444 = !DILocation(line: 134, column: 1, scope: !1424)
!1445 = distinct !DISubprogram(name: "emit_indent", scope: !2, file: !2, line: 137, type: !205, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1446)
!1446 = !{!1447, !1448}
!1447 = !DILocalVariable(name: "w", arg: 1, scope: !1445, file: !2, line: 137, type: !66)
!1448 = !DILocalVariable(name: "i", scope: !1445, file: !2, line: 139, type: !83)
!1449 = !DILocation(line: 137, column: 41, scope: !1445)
!1450 = !DILocation(line: 139, column: 2, scope: !1445)
!1451 = !DILocation(line: 139, column: 11, scope: !1445)
!1452 = !DILocation(line: 141, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 141, column: 6)
!1454 = !DILocation(line: 141, column: 9, scope: !1453)
!1455 = !DILocation(line: 141, column: 15, scope: !1453)
!1456 = !DILocation(line: 141, column: 6, scope: !1445)
!1457 = !DILocation(line: 142, column: 10, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 142, column: 3)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 141, column: 49)
!1460 = !DILocation(line: 142, column: 8, scope: !1458)
!1461 = !DILocation(line: 142, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 142, column: 3)
!1463 = !DILocation(line: 142, column: 19, scope: !1462)
!1464 = !DILocation(line: 142, column: 22, scope: !1462)
!1465 = !DILocation(line: 142, column: 17, scope: !1462)
!1466 = !DILocation(line: 142, column: 3, scope: !1458)
!1467 = !DILocation(line: 143, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 143, column: 8)
!1469 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 142, column: 35)
!1470 = !DILocation(line: 143, column: 8, scope: !1468)
!1471 = !DILocation(line: 143, column: 8, scope: !1469)
!1472 = !DILocation(line: 143, column: 40, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 143, column: 26)
!1474 = !DILocation(line: 143, column: 35, scope: !1473)
!1475 = !DILocation(line: 143, column: 28, scope: !1473)
!1476 = !DILocation(line: 144, column: 3, scope: !1469)
!1477 = !DILocation(line: 142, column: 31, scope: !1462)
!1478 = !DILocation(line: 142, column: 3, scope: !1462)
!1479 = distinct !{!1479, !1466, !1480}
!1480 = !DILocation(line: 144, column: 3, scope: !1458)
!1481 = !DILocation(line: 145, column: 2, scope: !1459)
!1482 = !DILocation(line: 146, column: 2, scope: !1445)
!1483 = !DILocation(line: 147, column: 1, scope: !1445)
!1484 = distinct !DISubprogram(name: "spdk_json_write_object_begin", scope: !2, file: !2, line: 570, type: !205, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1485)
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "w", arg: 1, scope: !1484, file: !2, line: 570, type: !66)
!1487 = !DILocation(line: 570, column: 58, scope: !1484)
!1488 = !DILocation(line: 572, column: 18, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 572, column: 6)
!1490 = !DILocation(line: 572, column: 6, scope: !1489)
!1491 = !DILocation(line: 572, column: 6, scope: !1484)
!1492 = !DILocation(line: 572, column: 36, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 572, column: 22)
!1494 = !DILocation(line: 572, column: 31, scope: !1493)
!1495 = !DILocation(line: 572, column: 24, scope: !1493)
!1496 = !DILocation(line: 573, column: 2, scope: !1484)
!1497 = !DILocation(line: 573, column: 5, scope: !1484)
!1498 = !DILocation(line: 573, column: 17, scope: !1484)
!1499 = !DILocation(line: 574, column: 2, scope: !1484)
!1500 = !DILocation(line: 574, column: 5, scope: !1484)
!1501 = !DILocation(line: 574, column: 16, scope: !1484)
!1502 = !DILocation(line: 575, column: 2, scope: !1484)
!1503 = !DILocation(line: 575, column: 5, scope: !1484)
!1504 = !DILocation(line: 575, column: 11, scope: !1484)
!1505 = !DILocation(line: 576, column: 11, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 576, column: 6)
!1507 = !DILocation(line: 576, column: 6, scope: !1506)
!1508 = !DILocation(line: 576, column: 6, scope: !1484)
!1509 = !DILocation(line: 576, column: 37, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 576, column: 23)
!1511 = !DILocation(line: 576, column: 32, scope: !1510)
!1512 = !DILocation(line: 576, column: 25, scope: !1510)
!1513 = !DILocation(line: 577, column: 2, scope: !1484)
!1514 = !DILocation(line: 578, column: 1, scope: !1484)
!1515 = distinct !DISubprogram(name: "spdk_json_write_object_end", scope: !2, file: !2, line: 581, type: !205, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1516)
!1516 = !{!1517}
!1517 = !DILocalVariable(name: "w", arg: 1, scope: !1515, file: !2, line: 581, type: !66)
!1518 = !DILocation(line: 581, column: 56, scope: !1515)
!1519 = !DILocation(line: 583, column: 2, scope: !1515)
!1520 = !DILocation(line: 583, column: 5, scope: !1515)
!1521 = !DILocation(line: 583, column: 17, scope: !1515)
!1522 = !DILocation(line: 584, column: 2, scope: !1515)
!1523 = !DILocation(line: 584, column: 5, scope: !1515)
!1524 = !DILocation(line: 584, column: 11, scope: !1515)
!1525 = !DILocation(line: 585, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 585, column: 6)
!1527 = !DILocation(line: 585, column: 10, scope: !1526)
!1528 = !DILocation(line: 585, column: 6, scope: !1515)
!1529 = !DILocation(line: 586, column: 16, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 586, column: 7)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 585, column: 22)
!1532 = !DILocation(line: 586, column: 7, scope: !1530)
!1533 = !DILocation(line: 586, column: 7, scope: !1531)
!1534 = !DILocation(line: 586, column: 43, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 586, column: 29)
!1536 = !DILocation(line: 586, column: 38, scope: !1535)
!1537 = !DILocation(line: 586, column: 31, scope: !1535)
!1538 = !DILocation(line: 587, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 587, column: 7)
!1540 = !DILocation(line: 587, column: 7, scope: !1539)
!1541 = !DILocation(line: 587, column: 7, scope: !1531)
!1542 = !DILocation(line: 587, column: 37, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 587, column: 23)
!1544 = !DILocation(line: 587, column: 32, scope: !1543)
!1545 = !DILocation(line: 587, column: 25, scope: !1543)
!1546 = !DILocation(line: 588, column: 2, scope: !1531)
!1547 = !DILocation(line: 589, column: 2, scope: !1515)
!1548 = !DILocation(line: 589, column: 5, scope: !1515)
!1549 = !DILocation(line: 589, column: 16, scope: !1515)
!1550 = !DILocation(line: 590, column: 14, scope: !1515)
!1551 = !DILocation(line: 590, column: 9, scope: !1515)
!1552 = !DILocation(line: 590, column: 2, scope: !1515)
!1553 = !DILocation(line: 591, column: 1, scope: !1515)
!1554 = distinct !DISubprogram(name: "spdk_json_write_name_raw", scope: !2, file: !2, line: 594, type: !914, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DILocalVariable(name: "w", arg: 1, scope: !1554, file: !2, line: 594, type: !66)
!1557 = !DILocalVariable(name: "name", arg: 2, scope: !1554, file: !2, line: 594, type: !501)
!1558 = !DILocalVariable(name: "len", arg: 3, scope: !1554, file: !2, line: 594, type: !78)
!1559 = !DILocation(line: 594, column: 54, scope: !1554)
!1560 = !DILocation(line: 594, column: 69, scope: !1554)
!1561 = !DILocation(line: 594, column: 82, scope: !1554)
!1562 = !DILocation(line: 597, column: 18, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 597, column: 6)
!1564 = !DILocation(line: 597, column: 6, scope: !1563)
!1565 = !DILocation(line: 597, column: 6, scope: !1554)
!1566 = !DILocation(line: 597, column: 36, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 597, column: 22)
!1568 = !DILocation(line: 597, column: 31, scope: !1567)
!1569 = !DILocation(line: 597, column: 24, scope: !1567)
!1570 = !DILocation(line: 598, column: 27, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 598, column: 6)
!1572 = !DILocation(line: 598, column: 30, scope: !1571)
!1573 = !DILocation(line: 598, column: 36, scope: !1571)
!1574 = !DILocation(line: 598, column: 6, scope: !1571)
!1575 = !DILocation(line: 598, column: 6, scope: !1554)
!1576 = !DILocation(line: 598, column: 56, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 598, column: 42)
!1578 = !DILocation(line: 598, column: 51, scope: !1577)
!1579 = !DILocation(line: 598, column: 44, scope: !1577)
!1580 = !DILocation(line: 599, column: 2, scope: !1554)
!1581 = !DILocation(line: 599, column: 5, scope: !1554)
!1582 = !DILocation(line: 599, column: 17, scope: !1554)
!1583 = !DILocation(line: 600, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 600, column: 6)
!1585 = !DILocation(line: 600, column: 6, scope: !1584)
!1586 = !DILocation(line: 600, column: 6, scope: !1554)
!1587 = !DILocation(line: 600, column: 37, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 600, column: 23)
!1589 = !DILocation(line: 600, column: 32, scope: !1588)
!1590 = !DILocation(line: 600, column: 25, scope: !1588)
!1591 = !DILocation(line: 601, column: 18, scope: !1554)
!1592 = !DILocation(line: 601, column: 9, scope: !1554)
!1593 = !DILocation(line: 601, column: 2, scope: !1554)
!1594 = !DILocation(line: 602, column: 1, scope: !1554)
!1595 = distinct !DISubprogram(name: "spdk_json_write_val", scope: !2, file: !2, line: 611, type: !1596, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1605)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!65, !66, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_json_val", file: !71, line: 35, size: 128, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1600, file: !71, line: 48, baseType: !75, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1600, file: !71, line: 61, baseType: !83, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1600, file: !71, line: 66, baseType: !103, size: 32, offset: 96)
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DILocalVariable(name: "w", arg: 1, scope: !1595, file: !2, line: 611, type: !66)
!1607 = !DILocalVariable(name: "val", arg: 2, scope: !1595, file: !2, line: 611, type: !1598)
!1608 = !DILocalVariable(name: "num_values", scope: !1595, file: !2, line: 613, type: !78)
!1609 = !DILocalVariable(name: "i", scope: !1595, file: !2, line: 613, type: !78)
!1610 = !DILocation(line: 611, column: 49, scope: !1595)
!1611 = !DILocation(line: 611, column: 80, scope: !1595)
!1612 = !DILocation(line: 613, column: 2, scope: !1595)
!1613 = !DILocation(line: 613, column: 9, scope: !1595)
!1614 = !DILocation(line: 613, column: 21, scope: !1595)
!1615 = !DILocation(line: 615, column: 10, scope: !1595)
!1616 = !DILocation(line: 615, column: 15, scope: !1595)
!1617 = !DILocation(line: 615, column: 2, scope: !1595)
!1618 = !DILocation(line: 617, column: 34, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 615, column: 21)
!1620 = !DILocation(line: 617, column: 37, scope: !1619)
!1621 = !DILocation(line: 617, column: 42, scope: !1619)
!1622 = !DILocation(line: 617, column: 49, scope: !1619)
!1623 = !DILocation(line: 617, column: 54, scope: !1619)
!1624 = !DILocation(line: 617, column: 10, scope: !1619)
!1625 = !DILocation(line: 617, column: 3, scope: !1619)
!1626 = !DILocation(line: 620, column: 37, scope: !1619)
!1627 = !DILocation(line: 620, column: 40, scope: !1619)
!1628 = !DILocation(line: 620, column: 45, scope: !1619)
!1629 = !DILocation(line: 620, column: 52, scope: !1619)
!1630 = !DILocation(line: 620, column: 57, scope: !1619)
!1631 = !DILocation(line: 620, column: 10, scope: !1619)
!1632 = !DILocation(line: 620, column: 3, scope: !1619)
!1633 = !DILocation(line: 623, column: 35, scope: !1619)
!1634 = !DILocation(line: 623, column: 38, scope: !1619)
!1635 = !DILocation(line: 623, column: 43, scope: !1619)
!1636 = !DILocation(line: 623, column: 50, scope: !1619)
!1637 = !DILocation(line: 623, column: 55, scope: !1619)
!1638 = !DILocation(line: 623, column: 10, scope: !1619)
!1639 = !DILocation(line: 623, column: 3, scope: !1619)
!1640 = !DILocation(line: 626, column: 31, scope: !1619)
!1641 = !DILocation(line: 626, column: 10, scope: !1619)
!1642 = !DILocation(line: 626, column: 3, scope: !1619)
!1643 = !DILocation(line: 629, column: 31, scope: !1619)
!1644 = !DILocation(line: 629, column: 10, scope: !1619)
!1645 = !DILocation(line: 629, column: 3, scope: !1619)
!1646 = !DILocation(line: 632, column: 31, scope: !1619)
!1647 = !DILocation(line: 632, column: 10, scope: !1619)
!1648 = !DILocation(line: 632, column: 3, scope: !1619)
!1649 = !DILocation(line: 636, column: 16, scope: !1619)
!1650 = !DILocation(line: 636, column: 23, scope: !1619)
!1651 = !DILocation(line: 636, column: 14, scope: !1619)
!1652 = !DILocation(line: 638, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 638, column: 7)
!1654 = !DILocation(line: 638, column: 14, scope: !1653)
!1655 = !DILocation(line: 638, column: 19, scope: !1653)
!1656 = !DILocation(line: 638, column: 7, scope: !1619)
!1657 = !DILocation(line: 639, column: 37, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 639, column: 8)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 638, column: 50)
!1660 = !DILocation(line: 639, column: 8, scope: !1658)
!1661 = !DILocation(line: 639, column: 8, scope: !1659)
!1662 = !DILocation(line: 640, column: 17, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 639, column: 41)
!1664 = !DILocation(line: 640, column: 12, scope: !1663)
!1665 = !DILocation(line: 640, column: 5, scope: !1663)
!1666 = !DILocation(line: 642, column: 3, scope: !1659)
!1667 = !DILocation(line: 643, column: 36, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 643, column: 8)
!1669 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 642, column: 10)
!1670 = !DILocation(line: 643, column: 8, scope: !1668)
!1671 = !DILocation(line: 643, column: 8, scope: !1669)
!1672 = !DILocation(line: 644, column: 17, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 643, column: 40)
!1674 = !DILocation(line: 644, column: 12, scope: !1673)
!1675 = !DILocation(line: 644, column: 5, scope: !1673)
!1676 = !DILocation(line: 649, column: 10, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 649, column: 3)
!1678 = !DILocation(line: 649, column: 8, scope: !1677)
!1679 = !DILocation(line: 649, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 649, column: 3)
!1681 = !DILocation(line: 649, column: 19, scope: !1680)
!1682 = !DILocation(line: 649, column: 30, scope: !1680)
!1683 = !DILocation(line: 649, column: 17, scope: !1680)
!1684 = !DILocation(line: 649, column: 3, scope: !1677)
!1685 = !DILocation(line: 650, column: 28, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 650, column: 8)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 649, column: 36)
!1688 = !DILocation(line: 650, column: 32, scope: !1686)
!1689 = !DILocation(line: 650, column: 36, scope: !1686)
!1690 = !DILocation(line: 650, column: 38, scope: !1686)
!1691 = !DILocation(line: 650, column: 8, scope: !1686)
!1692 = !DILocation(line: 650, column: 8, scope: !1687)
!1693 = !DILocation(line: 651, column: 17, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 650, column: 45)
!1695 = !DILocation(line: 651, column: 12, scope: !1694)
!1696 = !DILocation(line: 651, column: 5, scope: !1694)
!1697 = !DILocation(line: 653, column: 8, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 653, column: 8)
!1699 = !DILocation(line: 653, column: 12, scope: !1698)
!1700 = !DILocation(line: 653, column: 14, scope: !1698)
!1701 = !DILocation(line: 653, column: 19, scope: !1698)
!1702 = !DILocation(line: 653, column: 24, scope: !1698)
!1703 = !DILocation(line: 653, column: 53, scope: !1698)
!1704 = !DILocation(line: 654, column: 8, scope: !1698)
!1705 = !DILocation(line: 654, column: 12, scope: !1698)
!1706 = !DILocation(line: 654, column: 14, scope: !1698)
!1707 = !DILocation(line: 654, column: 19, scope: !1698)
!1708 = !DILocation(line: 654, column: 24, scope: !1698)
!1709 = !DILocation(line: 653, column: 8, scope: !1687)
!1710 = !DILocation(line: 655, column: 10, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 654, column: 55)
!1712 = !DILocation(line: 655, column: 14, scope: !1711)
!1713 = !DILocation(line: 655, column: 16, scope: !1711)
!1714 = !DILocation(line: 655, column: 21, scope: !1711)
!1715 = !DILocation(line: 655, column: 25, scope: !1711)
!1716 = !DILocation(line: 655, column: 7, scope: !1711)
!1717 = !DILocation(line: 656, column: 4, scope: !1711)
!1718 = !DILocation(line: 657, column: 6, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 656, column: 11)
!1720 = !DILocation(line: 649, column: 3, scope: !1680)
!1721 = distinct !{!1721, !1684, !1722}
!1722 = !DILocation(line: 659, column: 3, scope: !1677)
!1723 = !DILocation(line: 660, column: 3, scope: !1619)
!1724 = !DILocation(line: 663, column: 36, scope: !1619)
!1725 = !DILocation(line: 663, column: 10, scope: !1619)
!1726 = !DILocation(line: 663, column: 3, scope: !1619)
!1727 = !DILocation(line: 666, column: 37, scope: !1619)
!1728 = !DILocation(line: 666, column: 10, scope: !1619)
!1729 = !DILocation(line: 666, column: 3, scope: !1619)
!1730 = !DILocation(line: 670, column: 15, scope: !1619)
!1731 = !DILocation(line: 670, column: 10, scope: !1619)
!1732 = !DILocation(line: 670, column: 3, scope: !1619)
!1733 = !DILocation(line: 673, column: 14, scope: !1595)
!1734 = !DILocation(line: 673, column: 9, scope: !1595)
!1735 = !DILocation(line: 673, column: 2, scope: !1595)
!1736 = !DILocation(line: 674, column: 1, scope: !1595)
!1737 = distinct !DISubprogram(name: "spdk_json_write_named_null", scope: !2, file: !2, line: 677, type: !857, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1738)
!1738 = !{!1739, !1740, !1741}
!1739 = !DILocalVariable(name: "w", arg: 1, scope: !1737, file: !2, line: 677, type: !66)
!1740 = !DILocalVariable(name: "name", arg: 2, scope: !1737, file: !2, line: 677, type: !501)
!1741 = !DILocalVariable(name: "rc", scope: !1737, file: !2, line: 679, type: !65)
!1742 = !DILocation(line: 677, column: 56, scope: !1737)
!1743 = !DILocation(line: 677, column: 71, scope: !1737)
!1744 = !DILocation(line: 679, column: 2, scope: !1737)
!1745 = !DILocation(line: 679, column: 6, scope: !1737)
!1746 = !DILocation(line: 679, column: 32, scope: !1737)
!1747 = !DILocation(line: 679, column: 35, scope: !1737)
!1748 = !DILocation(line: 679, column: 11, scope: !1737)
!1749 = !DILocation(line: 680, column: 9, scope: !1737)
!1750 = !DILocation(line: 680, column: 14, scope: !1737)
!1751 = !DILocation(line: 680, column: 40, scope: !1737)
!1752 = !DILocation(line: 680, column: 19, scope: !1737)
!1753 = !DILocation(line: 681, column: 1, scope: !1737)
!1754 = !DILocation(line: 680, column: 2, scope: !1737)
!1755 = distinct !DISubprogram(name: "spdk_json_write_named_bool", scope: !2, file: !2, line: 684, type: !1756, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!65, !66, !501, !90}
!1758 = !{!1759, !1760, !1761, !1762}
!1759 = !DILocalVariable(name: "w", arg: 1, scope: !1755, file: !2, line: 684, type: !66)
!1760 = !DILocalVariable(name: "name", arg: 2, scope: !1755, file: !2, line: 684, type: !501)
!1761 = !DILocalVariable(name: "val", arg: 3, scope: !1755, file: !2, line: 684, type: !90)
!1762 = !DILocalVariable(name: "rc", scope: !1755, file: !2, line: 686, type: !65)
!1763 = !DILocation(line: 684, column: 56, scope: !1755)
!1764 = !DILocation(line: 684, column: 71, scope: !1755)
!1765 = !DILocation(line: 684, column: 82, scope: !1755)
!1766 = !DILocation(line: 686, column: 2, scope: !1755)
!1767 = !DILocation(line: 686, column: 6, scope: !1755)
!1768 = !DILocation(line: 686, column: 32, scope: !1755)
!1769 = !DILocation(line: 686, column: 35, scope: !1755)
!1770 = !DILocation(line: 686, column: 11, scope: !1755)
!1771 = !DILocation(line: 688, column: 9, scope: !1755)
!1772 = !DILocation(line: 688, column: 14, scope: !1755)
!1773 = !DILocation(line: 688, column: 40, scope: !1755)
!1774 = !DILocation(line: 688, column: 43, scope: !1755)
!1775 = !DILocation(line: 688, column: 19, scope: !1755)
!1776 = !DILocation(line: 689, column: 1, scope: !1755)
!1777 = !DILocation(line: 688, column: 2, scope: !1755)
!1778 = distinct !DISubprogram(name: "spdk_json_write_named_uint8", scope: !2, file: !2, line: 692, type: !1779, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!65, !66, !501, !96}
!1781 = !{!1782, !1783, !1784, !1785}
!1782 = !DILocalVariable(name: "w", arg: 1, scope: !1778, file: !2, line: 692, type: !66)
!1783 = !DILocalVariable(name: "name", arg: 2, scope: !1778, file: !2, line: 692, type: !501)
!1784 = !DILocalVariable(name: "val", arg: 3, scope: !1778, file: !2, line: 692, type: !96)
!1785 = !DILocalVariable(name: "rc", scope: !1778, file: !2, line: 694, type: !65)
!1786 = !DILocation(line: 692, column: 57, scope: !1778)
!1787 = !DILocation(line: 692, column: 72, scope: !1778)
!1788 = !DILocation(line: 692, column: 86, scope: !1778)
!1789 = !DILocation(line: 694, column: 2, scope: !1778)
!1790 = !DILocation(line: 694, column: 6, scope: !1778)
!1791 = !DILocation(line: 694, column: 32, scope: !1778)
!1792 = !DILocation(line: 694, column: 35, scope: !1778)
!1793 = !DILocation(line: 694, column: 11, scope: !1778)
!1794 = !DILocation(line: 696, column: 9, scope: !1778)
!1795 = !DILocation(line: 696, column: 14, scope: !1778)
!1796 = !DILocation(line: 696, column: 41, scope: !1778)
!1797 = !DILocation(line: 696, column: 44, scope: !1778)
!1798 = !DILocation(line: 696, column: 19, scope: !1778)
!1799 = !DILocation(line: 697, column: 1, scope: !1778)
!1800 = !DILocation(line: 696, column: 2, scope: !1778)
!1801 = distinct !DISubprogram(name: "spdk_json_write_named_uint16", scope: !2, file: !2, line: 700, type: !1802, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!65, !66, !501, !118}
!1804 = !{!1805, !1806, !1807, !1808}
!1805 = !DILocalVariable(name: "w", arg: 1, scope: !1801, file: !2, line: 700, type: !66)
!1806 = !DILocalVariable(name: "name", arg: 2, scope: !1801, file: !2, line: 700, type: !501)
!1807 = !DILocalVariable(name: "val", arg: 3, scope: !1801, file: !2, line: 700, type: !118)
!1808 = !DILocalVariable(name: "rc", scope: !1801, file: !2, line: 702, type: !65)
!1809 = !DILocation(line: 700, column: 58, scope: !1801)
!1810 = !DILocation(line: 700, column: 73, scope: !1801)
!1811 = !DILocation(line: 700, column: 88, scope: !1801)
!1812 = !DILocation(line: 702, column: 2, scope: !1801)
!1813 = !DILocation(line: 702, column: 6, scope: !1801)
!1814 = !DILocation(line: 702, column: 32, scope: !1801)
!1815 = !DILocation(line: 702, column: 35, scope: !1801)
!1816 = !DILocation(line: 702, column: 11, scope: !1801)
!1817 = !DILocation(line: 704, column: 9, scope: !1801)
!1818 = !DILocation(line: 704, column: 14, scope: !1801)
!1819 = !DILocation(line: 704, column: 42, scope: !1801)
!1820 = !DILocation(line: 704, column: 45, scope: !1801)
!1821 = !DILocation(line: 704, column: 19, scope: !1801)
!1822 = !DILocation(line: 705, column: 1, scope: !1801)
!1823 = !DILocation(line: 704, column: 2, scope: !1801)
!1824 = distinct !DISubprogram(name: "spdk_json_write_named_int32", scope: !2, file: !2, line: 708, type: !1825, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!65, !66, !501, !548}
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DILocalVariable(name: "w", arg: 1, scope: !1824, file: !2, line: 708, type: !66)
!1829 = !DILocalVariable(name: "name", arg: 2, scope: !1824, file: !2, line: 708, type: !501)
!1830 = !DILocalVariable(name: "val", arg: 3, scope: !1824, file: !2, line: 708, type: !548)
!1831 = !DILocalVariable(name: "rc", scope: !1824, file: !2, line: 710, type: !65)
!1832 = !DILocation(line: 708, column: 57, scope: !1824)
!1833 = !DILocation(line: 708, column: 72, scope: !1824)
!1834 = !DILocation(line: 708, column: 86, scope: !1824)
!1835 = !DILocation(line: 710, column: 2, scope: !1824)
!1836 = !DILocation(line: 710, column: 6, scope: !1824)
!1837 = !DILocation(line: 710, column: 32, scope: !1824)
!1838 = !DILocation(line: 710, column: 35, scope: !1824)
!1839 = !DILocation(line: 710, column: 11, scope: !1824)
!1840 = !DILocation(line: 712, column: 9, scope: !1824)
!1841 = !DILocation(line: 712, column: 14, scope: !1824)
!1842 = !DILocation(line: 712, column: 41, scope: !1824)
!1843 = !DILocation(line: 712, column: 44, scope: !1824)
!1844 = !DILocation(line: 712, column: 19, scope: !1824)
!1845 = !DILocation(line: 713, column: 1, scope: !1824)
!1846 = !DILocation(line: 712, column: 2, scope: !1824)
!1847 = distinct !DISubprogram(name: "spdk_json_write_named_uint32", scope: !2, file: !2, line: 716, type: !1848, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!65, !66, !501, !83}
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DILocalVariable(name: "w", arg: 1, scope: !1847, file: !2, line: 716, type: !66)
!1852 = !DILocalVariable(name: "name", arg: 2, scope: !1847, file: !2, line: 716, type: !501)
!1853 = !DILocalVariable(name: "val", arg: 3, scope: !1847, file: !2, line: 716, type: !83)
!1854 = !DILocalVariable(name: "rc", scope: !1847, file: !2, line: 718, type: !65)
!1855 = !DILocation(line: 716, column: 58, scope: !1847)
!1856 = !DILocation(line: 716, column: 73, scope: !1847)
!1857 = !DILocation(line: 716, column: 88, scope: !1847)
!1858 = !DILocation(line: 718, column: 2, scope: !1847)
!1859 = !DILocation(line: 718, column: 6, scope: !1847)
!1860 = !DILocation(line: 718, column: 32, scope: !1847)
!1861 = !DILocation(line: 718, column: 35, scope: !1847)
!1862 = !DILocation(line: 718, column: 11, scope: !1847)
!1863 = !DILocation(line: 720, column: 9, scope: !1847)
!1864 = !DILocation(line: 720, column: 14, scope: !1847)
!1865 = !DILocation(line: 720, column: 42, scope: !1847)
!1866 = !DILocation(line: 720, column: 45, scope: !1847)
!1867 = !DILocation(line: 720, column: 19, scope: !1847)
!1868 = !DILocation(line: 721, column: 1, scope: !1847)
!1869 = !DILocation(line: 720, column: 2, scope: !1847)
!1870 = distinct !DISubprogram(name: "spdk_json_write_named_int64", scope: !2, file: !2, line: 724, type: !1871, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!65, !66, !501, !633}
!1873 = !{!1874, !1875, !1876, !1877}
!1874 = !DILocalVariable(name: "w", arg: 1, scope: !1870, file: !2, line: 724, type: !66)
!1875 = !DILocalVariable(name: "name", arg: 2, scope: !1870, file: !2, line: 724, type: !501)
!1876 = !DILocalVariable(name: "val", arg: 3, scope: !1870, file: !2, line: 724, type: !633)
!1877 = !DILocalVariable(name: "rc", scope: !1870, file: !2, line: 726, type: !65)
!1878 = !DILocation(line: 724, column: 57, scope: !1870)
!1879 = !DILocation(line: 724, column: 72, scope: !1870)
!1880 = !DILocation(line: 724, column: 86, scope: !1870)
!1881 = !DILocation(line: 726, column: 2, scope: !1870)
!1882 = !DILocation(line: 726, column: 6, scope: !1870)
!1883 = !DILocation(line: 726, column: 32, scope: !1870)
!1884 = !DILocation(line: 726, column: 35, scope: !1870)
!1885 = !DILocation(line: 726, column: 11, scope: !1870)
!1886 = !DILocation(line: 728, column: 9, scope: !1870)
!1887 = !DILocation(line: 728, column: 14, scope: !1870)
!1888 = !DILocation(line: 728, column: 41, scope: !1870)
!1889 = !DILocation(line: 728, column: 44, scope: !1870)
!1890 = !DILocation(line: 728, column: 19, scope: !1870)
!1891 = !DILocation(line: 729, column: 1, scope: !1870)
!1892 = !DILocation(line: 728, column: 2, scope: !1870)
!1893 = distinct !DISubprogram(name: "spdk_json_write_named_uint64", scope: !2, file: !2, line: 732, type: !1894, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!65, !66, !501, !678}
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DILocalVariable(name: "w", arg: 1, scope: !1893, file: !2, line: 732, type: !66)
!1898 = !DILocalVariable(name: "name", arg: 2, scope: !1893, file: !2, line: 732, type: !501)
!1899 = !DILocalVariable(name: "val", arg: 3, scope: !1893, file: !2, line: 732, type: !678)
!1900 = !DILocalVariable(name: "rc", scope: !1893, file: !2, line: 734, type: !65)
!1901 = !DILocation(line: 732, column: 58, scope: !1893)
!1902 = !DILocation(line: 732, column: 73, scope: !1893)
!1903 = !DILocation(line: 732, column: 88, scope: !1893)
!1904 = !DILocation(line: 734, column: 2, scope: !1893)
!1905 = !DILocation(line: 734, column: 6, scope: !1893)
!1906 = !DILocation(line: 734, column: 32, scope: !1893)
!1907 = !DILocation(line: 734, column: 35, scope: !1893)
!1908 = !DILocation(line: 734, column: 11, scope: !1893)
!1909 = !DILocation(line: 736, column: 9, scope: !1893)
!1910 = !DILocation(line: 736, column: 14, scope: !1893)
!1911 = !DILocation(line: 736, column: 42, scope: !1893)
!1912 = !DILocation(line: 736, column: 45, scope: !1893)
!1913 = !DILocation(line: 736, column: 19, scope: !1893)
!1914 = !DILocation(line: 737, column: 1, scope: !1893)
!1915 = !DILocation(line: 736, column: 2, scope: !1893)
!1916 = distinct !DISubprogram(name: "spdk_json_write_named_double", scope: !2, file: !2, line: 740, type: !1917, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!65, !66, !501, !873}
!1919 = !{!1920, !1921, !1922, !1923}
!1920 = !DILocalVariable(name: "w", arg: 1, scope: !1916, file: !2, line: 740, type: !66)
!1921 = !DILocalVariable(name: "name", arg: 2, scope: !1916, file: !2, line: 740, type: !501)
!1922 = !DILocalVariable(name: "val", arg: 3, scope: !1916, file: !2, line: 740, type: !873)
!1923 = !DILocalVariable(name: "rc", scope: !1916, file: !2, line: 742, type: !65)
!1924 = !DILocation(line: 740, column: 58, scope: !1916)
!1925 = !DILocation(line: 740, column: 73, scope: !1916)
!1926 = !DILocation(line: 740, column: 86, scope: !1916)
!1927 = !DILocation(line: 742, column: 2, scope: !1916)
!1928 = !DILocation(line: 742, column: 6, scope: !1916)
!1929 = !DILocation(line: 742, column: 32, scope: !1916)
!1930 = !DILocation(line: 742, column: 35, scope: !1916)
!1931 = !DILocation(line: 742, column: 11, scope: !1916)
!1932 = !DILocation(line: 744, column: 9, scope: !1916)
!1933 = !DILocation(line: 744, column: 14, scope: !1916)
!1934 = !DILocation(line: 744, column: 42, scope: !1916)
!1935 = !DILocation(line: 744, column: 45, scope: !1916)
!1936 = !DILocation(line: 744, column: 19, scope: !1916)
!1937 = !DILocation(line: 745, column: 1, scope: !1916)
!1938 = !DILocation(line: 744, column: 2, scope: !1916)
!1939 = distinct !DISubprogram(name: "spdk_json_write_named_string", scope: !2, file: !2, line: 748, type: !1940, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!65, !66, !501, !501}
!1942 = !{!1943, !1944, !1945, !1946}
!1943 = !DILocalVariable(name: "w", arg: 1, scope: !1939, file: !2, line: 748, type: !66)
!1944 = !DILocalVariable(name: "name", arg: 2, scope: !1939, file: !2, line: 748, type: !501)
!1945 = !DILocalVariable(name: "val", arg: 3, scope: !1939, file: !2, line: 748, type: !501)
!1946 = !DILocalVariable(name: "rc", scope: !1939, file: !2, line: 750, type: !65)
!1947 = !DILocation(line: 748, column: 58, scope: !1939)
!1948 = !DILocation(line: 748, column: 73, scope: !1939)
!1949 = !DILocation(line: 748, column: 91, scope: !1939)
!1950 = !DILocation(line: 750, column: 2, scope: !1939)
!1951 = !DILocation(line: 750, column: 6, scope: !1939)
!1952 = !DILocation(line: 750, column: 32, scope: !1939)
!1953 = !DILocation(line: 750, column: 35, scope: !1939)
!1954 = !DILocation(line: 750, column: 11, scope: !1939)
!1955 = !DILocation(line: 752, column: 9, scope: !1939)
!1956 = !DILocation(line: 752, column: 14, scope: !1939)
!1957 = !DILocation(line: 752, column: 42, scope: !1939)
!1958 = !DILocation(line: 752, column: 45, scope: !1939)
!1959 = !DILocation(line: 752, column: 19, scope: !1939)
!1960 = !DILocation(line: 753, column: 1, scope: !1939)
!1961 = !DILocation(line: 752, column: 2, scope: !1939)
!1962 = distinct !DISubprogram(name: "spdk_json_write_named_string_fmt", scope: !2, file: !2, line: 756, type: !1963, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!65, !66, !501, !501, null}
!1965 = !{!1966, !1967, !1968, !1969, !1970}
!1966 = !DILocalVariable(name: "w", arg: 1, scope: !1962, file: !2, line: 756, type: !66)
!1967 = !DILocalVariable(name: "name", arg: 2, scope: !1962, file: !2, line: 756, type: !501)
!1968 = !DILocalVariable(name: "fmt", arg: 3, scope: !1962, file: !2, line: 757, type: !501)
!1969 = !DILocalVariable(name: "args", scope: !1962, file: !2, line: 759, type: !1177)
!1970 = !DILocalVariable(name: "rc", scope: !1962, file: !2, line: 760, type: !65)
!1971 = !DILocation(line: 756, column: 62, scope: !1962)
!1972 = !DILocation(line: 756, column: 77, scope: !1962)
!1973 = !DILocation(line: 757, column: 18, scope: !1962)
!1974 = !DILocation(line: 759, column: 2, scope: !1962)
!1975 = !DILocation(line: 759, column: 10, scope: !1962)
!1976 = !DILocation(line: 760, column: 2, scope: !1962)
!1977 = !DILocation(line: 760, column: 6, scope: !1962)
!1978 = !DILocation(line: 762, column: 2, scope: !1962)
!1979 = !DILocation(line: 763, column: 42, scope: !1962)
!1980 = !DILocation(line: 763, column: 45, scope: !1962)
!1981 = !DILocation(line: 763, column: 51, scope: !1962)
!1982 = !DILocation(line: 763, column: 56, scope: !1962)
!1983 = !DILocation(line: 763, column: 7, scope: !1962)
!1984 = !DILocation(line: 763, column: 5, scope: !1962)
!1985 = !DILocation(line: 764, column: 2, scope: !1962)
!1986 = !DILocation(line: 766, column: 9, scope: !1962)
!1987 = !DILocation(line: 767, column: 1, scope: !1962)
!1988 = !DILocation(line: 766, column: 2, scope: !1962)
!1989 = distinct !DISubprogram(name: "spdk_json_write_named_string_fmt_v", scope: !2, file: !2, line: 770, type: !1990, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!65, !66, !501, !501, !1211}
!1992 = !{!1993, !1994, !1995, !1996, !1997, !1998}
!1993 = !DILocalVariable(name: "w", arg: 1, scope: !1989, file: !2, line: 770, type: !66)
!1994 = !DILocalVariable(name: "name", arg: 2, scope: !1989, file: !2, line: 770, type: !501)
!1995 = !DILocalVariable(name: "fmt", arg: 3, scope: !1989, file: !2, line: 771, type: !501)
!1996 = !DILocalVariable(name: "args", arg: 4, scope: !1989, file: !2, line: 771, type: !1211)
!1997 = !DILocalVariable(name: "s", scope: !1989, file: !2, line: 773, type: !121)
!1998 = !DILocalVariable(name: "rc", scope: !1989, file: !2, line: 774, type: !65)
!1999 = !DILocation(line: 770, column: 64, scope: !1989)
!2000 = !DILocation(line: 770, column: 79, scope: !1989)
!2001 = !DILocation(line: 771, column: 20, scope: !1989)
!2002 = !DILocation(line: 771, column: 33, scope: !1989)
!2003 = !DILocation(line: 773, column: 2, scope: !1989)
!2004 = !DILocation(line: 773, column: 8, scope: !1989)
!2005 = !DILocation(line: 774, column: 2, scope: !1989)
!2006 = !DILocation(line: 774, column: 6, scope: !1989)
!2007 = !DILocation(line: 776, column: 28, scope: !1989)
!2008 = !DILocation(line: 776, column: 31, scope: !1989)
!2009 = !DILocation(line: 776, column: 7, scope: !1989)
!2010 = !DILocation(line: 776, column: 5, scope: !1989)
!2011 = !DILocation(line: 777, column: 6, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 777, column: 6)
!2013 = !DILocation(line: 777, column: 6, scope: !1989)
!2014 = !DILocation(line: 778, column: 10, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 777, column: 10)
!2016 = !DILocation(line: 778, column: 3, scope: !2015)
!2017 = !DILocation(line: 781, column: 26, scope: !1989)
!2018 = !DILocation(line: 781, column: 31, scope: !1989)
!2019 = !DILocation(line: 781, column: 6, scope: !1989)
!2020 = !DILocation(line: 781, column: 4, scope: !1989)
!2021 = !DILocation(line: 783, column: 6, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 783, column: 6)
!2023 = !DILocation(line: 783, column: 8, scope: !2022)
!2024 = !DILocation(line: 783, column: 6, scope: !1989)
!2025 = !DILocation(line: 784, column: 3, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 783, column: 17)
!2027 = !DILocation(line: 787, column: 30, scope: !1989)
!2028 = !DILocation(line: 787, column: 33, scope: !1989)
!2029 = !DILocation(line: 787, column: 7, scope: !1989)
!2030 = !DILocation(line: 787, column: 5, scope: !1989)
!2031 = !DILocation(line: 788, column: 7, scope: !1989)
!2032 = !DILocation(line: 788, column: 2, scope: !1989)
!2033 = !DILocation(line: 789, column: 9, scope: !1989)
!2034 = !DILocation(line: 789, column: 2, scope: !1989)
!2035 = !DILocation(line: 790, column: 1, scope: !1989)
!2036 = distinct !DISubprogram(name: "spdk_json_write_named_bytearray", scope: !2, file: !2, line: 793, type: !2037, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!65, !66, !501, !76, !78}
!2039 = !{!2040, !2041, !2042, !2043, !2044}
!2040 = !DILocalVariable(name: "w", arg: 1, scope: !2036, file: !2, line: 793, type: !66)
!2041 = !DILocalVariable(name: "name", arg: 2, scope: !2036, file: !2, line: 793, type: !501)
!2042 = !DILocalVariable(name: "val", arg: 3, scope: !2036, file: !2, line: 793, type: !76)
!2043 = !DILocalVariable(name: "len", arg: 4, scope: !2036, file: !2, line: 794, type: !78)
!2044 = !DILocalVariable(name: "rc", scope: !2036, file: !2, line: 796, type: !65)
!2045 = !DILocation(line: 793, column: 61, scope: !2036)
!2046 = !DILocation(line: 793, column: 76, scope: !2036)
!2047 = !DILocation(line: 793, column: 94, scope: !2036)
!2048 = !DILocation(line: 794, column: 12, scope: !2036)
!2049 = !DILocation(line: 796, column: 2, scope: !2036)
!2050 = !DILocation(line: 796, column: 6, scope: !2036)
!2051 = !DILocation(line: 796, column: 32, scope: !2036)
!2052 = !DILocation(line: 796, column: 35, scope: !2036)
!2053 = !DILocation(line: 796, column: 11, scope: !2036)
!2054 = !DILocation(line: 798, column: 9, scope: !2036)
!2055 = !DILocation(line: 798, column: 14, scope: !2036)
!2056 = !DILocation(line: 798, column: 45, scope: !2036)
!2057 = !DILocation(line: 798, column: 48, scope: !2036)
!2058 = !DILocation(line: 798, column: 53, scope: !2036)
!2059 = !DILocation(line: 798, column: 19, scope: !2036)
!2060 = !DILocation(line: 799, column: 1, scope: !2036)
!2061 = !DILocation(line: 798, column: 2, scope: !2036)
!2062 = distinct !DISubprogram(name: "spdk_json_write_named_array_begin", scope: !2, file: !2, line: 802, type: !857, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2063)
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "w", arg: 1, scope: !2062, file: !2, line: 802, type: !66)
!2065 = !DILocalVariable(name: "name", arg: 2, scope: !2062, file: !2, line: 802, type: !501)
!2066 = !DILocalVariable(name: "rc", scope: !2062, file: !2, line: 804, type: !65)
!2067 = !DILocation(line: 802, column: 63, scope: !2062)
!2068 = !DILocation(line: 802, column: 78, scope: !2062)
!2069 = !DILocation(line: 804, column: 2, scope: !2062)
!2070 = !DILocation(line: 804, column: 6, scope: !2062)
!2071 = !DILocation(line: 804, column: 32, scope: !2062)
!2072 = !DILocation(line: 804, column: 35, scope: !2062)
!2073 = !DILocation(line: 804, column: 11, scope: !2062)
!2074 = !DILocation(line: 806, column: 9, scope: !2062)
!2075 = !DILocation(line: 806, column: 14, scope: !2062)
!2076 = !DILocation(line: 806, column: 47, scope: !2062)
!2077 = !DILocation(line: 806, column: 19, scope: !2062)
!2078 = !DILocation(line: 807, column: 1, scope: !2062)
!2079 = !DILocation(line: 806, column: 2, scope: !2062)
!2080 = distinct !DISubprogram(name: "spdk_json_write_named_object_begin", scope: !2, file: !2, line: 810, type: !857, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2081)
!2081 = !{!2082, !2083, !2084}
!2082 = !DILocalVariable(name: "w", arg: 1, scope: !2080, file: !2, line: 810, type: !66)
!2083 = !DILocalVariable(name: "name", arg: 2, scope: !2080, file: !2, line: 810, type: !501)
!2084 = !DILocalVariable(name: "rc", scope: !2080, file: !2, line: 812, type: !65)
!2085 = !DILocation(line: 810, column: 64, scope: !2080)
!2086 = !DILocation(line: 810, column: 79, scope: !2080)
!2087 = !DILocation(line: 812, column: 2, scope: !2080)
!2088 = !DILocation(line: 812, column: 6, scope: !2080)
!2089 = !DILocation(line: 812, column: 32, scope: !2080)
!2090 = !DILocation(line: 812, column: 35, scope: !2080)
!2091 = !DILocation(line: 812, column: 11, scope: !2080)
!2092 = !DILocation(line: 814, column: 9, scope: !2080)
!2093 = !DILocation(line: 814, column: 14, scope: !2080)
!2094 = !DILocation(line: 814, column: 48, scope: !2080)
!2095 = !DILocation(line: 814, column: 19, scope: !2080)
!2096 = !DILocation(line: 815, column: 1, scope: !2080)
!2097 = !DILocation(line: 814, column: 2, scope: !2080)
!2098 = distinct !DISubprogram(name: "emit_buf_full", scope: !2, file: !2, line: 107, type: !275, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2104}
!2100 = !DILocalVariable(name: "w", arg: 1, scope: !2098, file: !2, line: 107, type: !66)
!2101 = !DILocalVariable(name: "data", arg: 2, scope: !2098, file: !2, line: 107, type: !76)
!2102 = !DILocalVariable(name: "size", arg: 3, scope: !2098, file: !2, line: 107, type: !78)
!2103 = !DILocalVariable(name: "buf_remain", scope: !2098, file: !2, line: 109, type: !78)
!2104 = !DILocalVariable(name: "rc", scope: !2098, file: !2, line: 110, type: !65)
!2105 = !DILocation(line: 107, column: 43, scope: !2098)
!2106 = !DILocation(line: 107, column: 58, scope: !2098)
!2107 = !DILocation(line: 107, column: 71, scope: !2098)
!2108 = !DILocation(line: 109, column: 2, scope: !2098)
!2109 = !DILocation(line: 109, column: 9, scope: !2098)
!2110 = !DILocation(line: 109, column: 39, scope: !2098)
!2111 = !DILocation(line: 109, column: 42, scope: !2098)
!2112 = !DILocation(line: 109, column: 37, scope: !2098)
!2113 = !DILocation(line: 110, column: 2, scope: !2098)
!2114 = !DILocation(line: 110, column: 6, scope: !2098)
!2115 = !DILocation(line: 115, column: 9, scope: !2098)
!2116 = !DILocation(line: 115, column: 12, scope: !2098)
!2117 = !DILocation(line: 115, column: 18, scope: !2098)
!2118 = !DILocation(line: 115, column: 21, scope: !2098)
!2119 = !DILocation(line: 115, column: 16, scope: !2098)
!2120 = !DILocation(line: 115, column: 33, scope: !2098)
!2121 = !DILocation(line: 115, column: 39, scope: !2098)
!2122 = !DILocation(line: 115, column: 2, scope: !2098)
!2123 = !DILocation(line: 116, column: 19, scope: !2098)
!2124 = !DILocation(line: 116, column: 2, scope: !2098)
!2125 = !DILocation(line: 116, column: 5, scope: !2098)
!2126 = !DILocation(line: 116, column: 16, scope: !2098)
!2127 = !DILocation(line: 118, column: 17, scope: !2098)
!2128 = !DILocation(line: 118, column: 7, scope: !2098)
!2129 = !DILocation(line: 118, column: 5, scope: !2098)
!2130 = !DILocation(line: 119, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 119, column: 6)
!2132 = !DILocation(line: 119, column: 9, scope: !2131)
!2133 = !DILocation(line: 119, column: 6, scope: !2098)
!2134 = !DILocation(line: 120, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 119, column: 15)
!2136 = !DILocation(line: 120, column: 10, scope: !2135)
!2137 = !DILocation(line: 120, column: 3, scope: !2135)
!2138 = !DILocation(line: 124, column: 14, scope: !2098)
!2139 = !DILocation(line: 124, column: 17, scope: !2098)
!2140 = !DILocation(line: 124, column: 24, scope: !2098)
!2141 = !DILocation(line: 124, column: 22, scope: !2098)
!2142 = !DILocation(line: 124, column: 36, scope: !2098)
!2143 = !DILocation(line: 124, column: 43, scope: !2098)
!2144 = !DILocation(line: 124, column: 41, scope: !2098)
!2145 = !DILocation(line: 124, column: 9, scope: !2098)
!2146 = !DILocation(line: 124, column: 2, scope: !2098)
!2147 = !DILocation(line: 125, column: 1, scope: !2098)
!2148 = distinct !DISubprogram(name: "memcpy", scope: !2149, file: !2149, line: 26, type: !2150, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2154)
!2149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!75, !2152, !2153, !202}
!2152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!2153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!2154 = !{!2155, !2156, !2157}
!2155 = !DILocalVariable(name: "__dest", arg: 1, scope: !2148, file: !2149, line: 26, type: !2152)
!2156 = !DILocalVariable(name: "__src", arg: 2, scope: !2148, file: !2149, line: 26, type: !2153)
!2157 = !DILocalVariable(name: "__len", arg: 3, scope: !2148, file: !2149, line: 26, type: !202)
!2158 = !DILocation(line: 26, column: 1, scope: !2148)
!2159 = !DILocation(line: 29, column: 34, scope: !2148)
!2160 = !DILocation(line: 29, column: 42, scope: !2148)
!2161 = !DILocation(line: 29, column: 49, scope: !2148)
!2162 = !DILocation(line: 30, column: 6, scope: !2148)
!2163 = !DILocation(line: 29, column: 10, scope: !2148)
!2164 = !DILocation(line: 29, column: 3, scope: !2148)
!2165 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !2149, file: !2149, line: 29, type: !2166, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!75, !75, !76, !80, !80}
!2168 = distinct !DISubprogram(name: "utf8_valid", scope: !2169, file: !2169, line: 28, type: !2170, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2172)
!2169 = !DIFile(filename: "include/spdk_internal/utf.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "3d74dcd3687452b7e83e6c4ffc5ac074")
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!65, !122, !122}
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DILocalVariable(name: "start", arg: 1, scope: !2168, file: !2169, line: 28, type: !122)
!2174 = !DILocalVariable(name: "end", arg: 2, scope: !2168, file: !2169, line: 28, type: !122)
!2175 = !DILocalVariable(name: "p", scope: !2168, file: !2169, line: 30, type: !122)
!2176 = !DILocalVariable(name: "b0", scope: !2168, file: !2169, line: 31, type: !96)
!2177 = !DILocalVariable(name: "b1", scope: !2168, file: !2169, line: 31, type: !96)
!2178 = !DILocalVariable(name: "b2", scope: !2168, file: !2169, line: 31, type: !96)
!2179 = !DILocalVariable(name: "b3", scope: !2168, file: !2169, line: 31, type: !96)
!2180 = !DILocation(line: 28, column: 27, scope: !2168)
!2181 = !DILocation(line: 28, column: 49, scope: !2168)
!2182 = !DILocation(line: 30, column: 2, scope: !2168)
!2183 = !DILocation(line: 30, column: 17, scope: !2168)
!2184 = !DILocation(line: 30, column: 21, scope: !2168)
!2185 = !DILocation(line: 31, column: 2, scope: !2168)
!2186 = !DILocation(line: 31, column: 10, scope: !2168)
!2187 = !DILocation(line: 31, column: 14, scope: !2168)
!2188 = !DILocation(line: 31, column: 18, scope: !2168)
!2189 = !DILocation(line: 31, column: 22, scope: !2168)
!2190 = !DILocation(line: 33, column: 6, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 33, column: 6)
!2192 = !DILocation(line: 33, column: 11, scope: !2191)
!2193 = !DILocation(line: 33, column: 8, scope: !2191)
!2194 = !DILocation(line: 33, column: 6, scope: !2168)
!2195 = !DILocation(line: 34, column: 3, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !2169, line: 33, column: 16)
!2197 = !DILocation(line: 37, column: 8, scope: !2168)
!2198 = !DILocation(line: 37, column: 7, scope: !2168)
!2199 = !DILocation(line: 37, column: 5, scope: !2168)
!2200 = !DILocation(line: 39, column: 6, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 39, column: 6)
!2202 = !DILocation(line: 39, column: 9, scope: !2201)
!2203 = !DILocation(line: 39, column: 6, scope: !2168)
!2204 = !DILocation(line: 40, column: 3, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !2169, line: 39, column: 18)
!2206 = !DILocation(line: 43, column: 6, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 43, column: 6)
!2208 = !DILocation(line: 43, column: 9, scope: !2207)
!2209 = !DILocation(line: 43, column: 6, scope: !2168)
!2210 = !DILocation(line: 45, column: 3, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !2169, line: 43, column: 18)
!2212 = !DILocation(line: 48, column: 6, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 48, column: 6)
!2214 = !DILocation(line: 48, column: 13, scope: !2213)
!2215 = !DILocation(line: 48, column: 10, scope: !2213)
!2216 = !DILocation(line: 48, column: 6, scope: !2168)
!2217 = !DILocation(line: 50, column: 3, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !2169, line: 48, column: 18)
!2219 = !DILocation(line: 52, column: 8, scope: !2168)
!2220 = !DILocation(line: 52, column: 7, scope: !2168)
!2221 = !DILocation(line: 52, column: 5, scope: !2168)
!2222 = !DILocation(line: 54, column: 6, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 54, column: 6)
!2224 = !DILocation(line: 54, column: 9, scope: !2223)
!2225 = !DILocation(line: 54, column: 6, scope: !2168)
!2226 = !DILocation(line: 56, column: 18, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2169, line: 56, column: 7)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !2169, line: 54, column: 18)
!2229 = !DILocation(line: 56, column: 8, scope: !2227)
!2230 = !DILocation(line: 56, column: 7, scope: !2228)
!2231 = !DILocation(line: 57, column: 4, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !2169, line: 56, column: 23)
!2233 = !DILocation(line: 59, column: 3, scope: !2228)
!2234 = !DILocation(line: 62, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 62, column: 6)
!2236 = !DILocation(line: 62, column: 13, scope: !2235)
!2237 = !DILocation(line: 62, column: 10, scope: !2235)
!2238 = !DILocation(line: 62, column: 6, scope: !2168)
!2239 = !DILocation(line: 64, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !2169, line: 62, column: 18)
!2241 = !DILocation(line: 66, column: 8, scope: !2168)
!2242 = !DILocation(line: 66, column: 7, scope: !2168)
!2243 = !DILocation(line: 66, column: 5, scope: !2168)
!2244 = !DILocation(line: 68, column: 6, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 68, column: 6)
!2246 = !DILocation(line: 68, column: 9, scope: !2245)
!2247 = !DILocation(line: 68, column: 6, scope: !2168)
!2248 = !DILocation(line: 70, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !2169, line: 70, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !2169, line: 68, column: 18)
!2251 = !DILocation(line: 70, column: 10, scope: !2249)
!2252 = !DILocation(line: 70, column: 17, scope: !2249)
!2253 = !DILocation(line: 70, column: 20, scope: !2249)
!2254 = !DILocation(line: 70, column: 23, scope: !2249)
!2255 = !DILocation(line: 70, column: 30, scope: !2249)
!2256 = !DILocation(line: 70, column: 44, scope: !2249)
!2257 = !DILocation(line: 70, column: 34, scope: !2249)
!2258 = !DILocation(line: 70, column: 7, scope: !2250)
!2259 = !DILocation(line: 71, column: 4, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !2169, line: 70, column: 49)
!2261 = !DILocation(line: 73, column: 3, scope: !2250)
!2262 = !DILocation(line: 74, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2245, file: !2169, line: 74, column: 13)
!2264 = !DILocation(line: 74, column: 16, scope: !2263)
!2265 = !DILocation(line: 74, column: 24, scope: !2263)
!2266 = !DILocation(line: 74, column: 27, scope: !2263)
!2267 = !DILocation(line: 74, column: 30, scope: !2263)
!2268 = !DILocation(line: 74, column: 13, scope: !2245)
!2269 = !DILocation(line: 79, column: 3, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2263, file: !2169, line: 74, column: 39)
!2271 = !DILocation(line: 80, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2263, file: !2169, line: 80, column: 13)
!2273 = !DILocation(line: 80, column: 16, scope: !2272)
!2274 = !DILocation(line: 80, column: 13, scope: !2263)
!2275 = !DILocation(line: 82, column: 18, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !2169, line: 82, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !2169, line: 80, column: 25)
!2278 = !DILocation(line: 82, column: 8, scope: !2276)
!2279 = !DILocation(line: 82, column: 22, scope: !2276)
!2280 = !DILocation(line: 82, column: 36, scope: !2276)
!2281 = !DILocation(line: 82, column: 26, scope: !2276)
!2282 = !DILocation(line: 82, column: 7, scope: !2277)
!2283 = !DILocation(line: 83, column: 4, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !2169, line: 82, column: 41)
!2285 = !DILocation(line: 85, column: 3, scope: !2277)
!2286 = !DILocation(line: 88, column: 6, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 88, column: 6)
!2288 = !DILocation(line: 88, column: 13, scope: !2287)
!2289 = !DILocation(line: 88, column: 10, scope: !2287)
!2290 = !DILocation(line: 88, column: 6, scope: !2168)
!2291 = !DILocation(line: 90, column: 3, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !2169, line: 88, column: 18)
!2293 = !DILocation(line: 92, column: 8, scope: !2168)
!2294 = !DILocation(line: 92, column: 7, scope: !2168)
!2295 = !DILocation(line: 92, column: 5, scope: !2168)
!2296 = !DILocation(line: 94, column: 6, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2168, file: !2169, line: 94, column: 6)
!2298 = !DILocation(line: 94, column: 9, scope: !2297)
!2299 = !DILocation(line: 94, column: 6, scope: !2168)
!2300 = !DILocation(line: 96, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !2169, line: 96, column: 7)
!2302 = distinct !DILexicalBlock(scope: !2297, file: !2169, line: 94, column: 18)
!2303 = !DILocation(line: 96, column: 10, scope: !2301)
!2304 = !DILocation(line: 96, column: 17, scope: !2301)
!2305 = !DILocation(line: 96, column: 20, scope: !2301)
!2306 = !DILocation(line: 96, column: 23, scope: !2301)
!2307 = !DILocation(line: 96, column: 30, scope: !2301)
!2308 = !DILocation(line: 96, column: 44, scope: !2301)
!2309 = !DILocation(line: 96, column: 34, scope: !2301)
!2310 = !DILocation(line: 96, column: 48, scope: !2301)
!2311 = !DILocation(line: 96, column: 62, scope: !2301)
!2312 = !DILocation(line: 96, column: 52, scope: !2301)
!2313 = !DILocation(line: 96, column: 7, scope: !2302)
!2314 = !DILocation(line: 97, column: 4, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2301, file: !2169, line: 96, column: 67)
!2316 = !DILocation(line: 99, column: 3, scope: !2302)
!2317 = !DILocation(line: 100, column: 13, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2297, file: !2169, line: 100, column: 13)
!2319 = !DILocation(line: 100, column: 16, scope: !2318)
!2320 = !DILocation(line: 100, column: 13, scope: !2297)
!2321 = !DILocation(line: 102, column: 18, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2169, line: 102, column: 7)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !2169, line: 100, column: 25)
!2324 = !DILocation(line: 102, column: 8, scope: !2322)
!2325 = !DILocation(line: 102, column: 22, scope: !2322)
!2326 = !DILocation(line: 102, column: 36, scope: !2322)
!2327 = !DILocation(line: 102, column: 26, scope: !2322)
!2328 = !DILocation(line: 102, column: 40, scope: !2322)
!2329 = !DILocation(line: 102, column: 54, scope: !2322)
!2330 = !DILocation(line: 102, column: 44, scope: !2322)
!2331 = !DILocation(line: 102, column: 7, scope: !2323)
!2332 = !DILocation(line: 103, column: 4, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2322, file: !2169, line: 102, column: 59)
!2334 = !DILocation(line: 105, column: 3, scope: !2323)
!2335 = !DILocation(line: 106, column: 13, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2318, file: !2169, line: 106, column: 13)
!2337 = !DILocation(line: 106, column: 16, scope: !2336)
!2338 = !DILocation(line: 106, column: 13, scope: !2318)
!2339 = !DILocation(line: 108, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !2169, line: 108, column: 7)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !2169, line: 106, column: 25)
!2342 = !DILocation(line: 108, column: 10, scope: !2340)
!2343 = !DILocation(line: 108, column: 17, scope: !2340)
!2344 = !DILocation(line: 108, column: 20, scope: !2340)
!2345 = !DILocation(line: 108, column: 23, scope: !2340)
!2346 = !DILocation(line: 108, column: 30, scope: !2340)
!2347 = !DILocation(line: 108, column: 44, scope: !2340)
!2348 = !DILocation(line: 108, column: 34, scope: !2340)
!2349 = !DILocation(line: 108, column: 48, scope: !2340)
!2350 = !DILocation(line: 108, column: 62, scope: !2340)
!2351 = !DILocation(line: 108, column: 52, scope: !2340)
!2352 = !DILocation(line: 108, column: 7, scope: !2341)
!2353 = !DILocation(line: 109, column: 4, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2340, file: !2169, line: 108, column: 67)
!2355 = !DILocation(line: 111, column: 3, scope: !2341)
!2356 = !DILocation(line: 114, column: 2, scope: !2168)
!2357 = !DILocation(line: 115, column: 1, scope: !2168)
!2358 = distinct !DISubprogram(name: "utf8_decode_unsafe_1", scope: !2169, file: !2169, line: 118, type: !2359, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!83, !122}
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "data", arg: 1, scope: !2358, file: !2169, line: 118, type: !122)
!2363 = !DILocation(line: 118, column: 37, scope: !2358)
!2364 = !DILocation(line: 120, column: 9, scope: !2358)
!2365 = !DILocation(line: 120, column: 2, scope: !2358)
!2366 = distinct !DISubprogram(name: "utf8_decode_unsafe_2", scope: !2169, file: !2169, line: 124, type: !2359, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "data", arg: 1, scope: !2366, file: !2169, line: 124, type: !122)
!2369 = !DILocalVariable(name: "codepoint", scope: !2366, file: !2169, line: 126, type: !83)
!2370 = !DILocation(line: 124, column: 37, scope: !2366)
!2371 = !DILocation(line: 126, column: 2, scope: !2366)
!2372 = !DILocation(line: 126, column: 11, scope: !2366)
!2373 = !DILocation(line: 128, column: 16, scope: !2366)
!2374 = !DILocation(line: 128, column: 24, scope: !2366)
!2375 = !DILocation(line: 128, column: 32, scope: !2366)
!2376 = !DILocation(line: 128, column: 12, scope: !2366)
!2377 = !DILocation(line: 129, column: 16, scope: !2366)
!2378 = !DILocation(line: 129, column: 24, scope: !2366)
!2379 = !DILocation(line: 129, column: 12, scope: !2366)
!2380 = !DILocation(line: 131, column: 9, scope: !2366)
!2381 = !DILocation(line: 132, column: 1, scope: !2366)
!2382 = !DILocation(line: 131, column: 2, scope: !2366)
!2383 = distinct !DISubprogram(name: "utf8_decode_unsafe_3", scope: !2169, file: !2169, line: 135, type: !2359, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2384)
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "data", arg: 1, scope: !2383, file: !2169, line: 135, type: !122)
!2386 = !DILocalVariable(name: "codepoint", scope: !2383, file: !2169, line: 137, type: !83)
!2387 = !DILocation(line: 135, column: 37, scope: !2383)
!2388 = !DILocation(line: 137, column: 2, scope: !2383)
!2389 = !DILocation(line: 137, column: 11, scope: !2383)
!2390 = !DILocation(line: 139, column: 16, scope: !2383)
!2391 = !DILocation(line: 139, column: 24, scope: !2383)
!2392 = !DILocation(line: 139, column: 32, scope: !2383)
!2393 = !DILocation(line: 139, column: 12, scope: !2383)
!2394 = !DILocation(line: 140, column: 16, scope: !2383)
!2395 = !DILocation(line: 140, column: 24, scope: !2383)
!2396 = !DILocation(line: 140, column: 32, scope: !2383)
!2397 = !DILocation(line: 140, column: 12, scope: !2383)
!2398 = !DILocation(line: 141, column: 16, scope: !2383)
!2399 = !DILocation(line: 141, column: 24, scope: !2383)
!2400 = !DILocation(line: 141, column: 12, scope: !2383)
!2401 = !DILocation(line: 143, column: 9, scope: !2383)
!2402 = !DILocation(line: 144, column: 1, scope: !2383)
!2403 = !DILocation(line: 143, column: 2, scope: !2383)
!2404 = distinct !DISubprogram(name: "utf8_decode_unsafe_4", scope: !2169, file: !2169, line: 147, type: !2359, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2405)
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "data", arg: 1, scope: !2404, file: !2169, line: 147, type: !122)
!2407 = !DILocalVariable(name: "codepoint", scope: !2404, file: !2169, line: 149, type: !83)
!2408 = !DILocation(line: 147, column: 37, scope: !2404)
!2409 = !DILocation(line: 149, column: 2, scope: !2404)
!2410 = !DILocation(line: 149, column: 11, scope: !2404)
!2411 = !DILocation(line: 151, column: 16, scope: !2404)
!2412 = !DILocation(line: 151, column: 24, scope: !2404)
!2413 = !DILocation(line: 151, column: 32, scope: !2404)
!2414 = !DILocation(line: 151, column: 12, scope: !2404)
!2415 = !DILocation(line: 152, column: 16, scope: !2404)
!2416 = !DILocation(line: 152, column: 24, scope: !2404)
!2417 = !DILocation(line: 152, column: 32, scope: !2404)
!2418 = !DILocation(line: 152, column: 12, scope: !2404)
!2419 = !DILocation(line: 153, column: 16, scope: !2404)
!2420 = !DILocation(line: 153, column: 24, scope: !2404)
!2421 = !DILocation(line: 153, column: 32, scope: !2404)
!2422 = !DILocation(line: 153, column: 12, scope: !2404)
!2423 = !DILocation(line: 154, column: 16, scope: !2404)
!2424 = !DILocation(line: 154, column: 24, scope: !2404)
!2425 = !DILocation(line: 154, column: 12, scope: !2404)
!2426 = !DILocation(line: 156, column: 9, scope: !2404)
!2427 = !DILocation(line: 157, column: 1, scope: !2404)
!2428 = !DILocation(line: 156, column: 2, scope: !2404)
!2429 = !DILocation(line: 342, column: 45, scope: !62)
!2430 = !DILocation(line: 342, column: 57, scope: !62)
!2431 = !DILocation(line: 357, column: 2, scope: !62)
!2432 = !DILocation(line: 357, column: 11, scope: !62)
!2433 = !DILocation(line: 357, column: 17, scope: !62)
!2434 = !DILocation(line: 358, column: 2, scope: !62)
!2435 = !DILocation(line: 358, column: 7, scope: !62)
!2436 = !DILocation(line: 359, column: 2, scope: !62)
!2437 = !DILocation(line: 359, column: 9, scope: !62)
!2438 = !DILocation(line: 361, column: 6, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !62, file: !2, line: 361, column: 6)
!2440 = !DILocation(line: 361, column: 16, scope: !2439)
!2441 = !DILocation(line: 361, column: 34, scope: !2439)
!2442 = !DILocation(line: 361, column: 45, scope: !2439)
!2443 = !DILocation(line: 361, column: 37, scope: !2439)
!2444 = !DILocation(line: 361, column: 6, scope: !62)
!2445 = !DILocation(line: 362, column: 3, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 361, column: 57)
!2447 = !DILocation(line: 362, column: 10, scope: !2446)
!2448 = !DILocation(line: 363, column: 20, scope: !2446)
!2449 = !DILocation(line: 363, column: 12, scope: !2446)
!2450 = !DILocation(line: 363, column: 3, scope: !2446)
!2451 = !DILocation(line: 363, column: 10, scope: !2446)
!2452 = !DILocation(line: 364, column: 11, scope: !2446)
!2453 = !DILocation(line: 365, column: 2, scope: !2446)
!2454 = !DILocation(line: 365, column: 13, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 365, column: 13)
!2456 = !DILocation(line: 365, column: 23, scope: !2455)
!2457 = !DILocation(line: 365, column: 31, scope: !2455)
!2458 = !DILocation(line: 365, column: 34, scope: !2455)
!2459 = !DILocation(line: 365, column: 44, scope: !2455)
!2460 = !DILocation(line: 365, column: 13, scope: !2439)
!2461 = !DILocation(line: 370, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2455, file: !2, line: 365, column: 52)
!2463 = !DILocation(line: 370, column: 12, scope: !2462)
!2464 = !DILocation(line: 370, column: 3, scope: !2462)
!2465 = !DILocation(line: 370, column: 10, scope: !2462)
!2466 = !DILocation(line: 371, column: 11, scope: !2462)
!2467 = !DILocation(line: 372, column: 2, scope: !2462)
!2468 = !DILocation(line: 372, column: 13, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2455, file: !2, line: 372, column: 13)
!2470 = !DILocation(line: 372, column: 23, scope: !2469)
!2471 = !DILocation(line: 372, column: 13, scope: !2455)
!2472 = !DILocation(line: 373, column: 3, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !2, line: 372, column: 34)
!2474 = !DILocation(line: 373, column: 10, scope: !2473)
!2475 = !DILocation(line: 374, column: 3, scope: !2473)
!2476 = !DILocation(line: 374, column: 10, scope: !2473)
!2477 = !DILocation(line: 375, column: 16, scope: !2473)
!2478 = !DILocation(line: 375, column: 34, scope: !2473)
!2479 = !DILocation(line: 375, column: 24, scope: !2473)
!2480 = !DILocation(line: 375, column: 3, scope: !2473)
!2481 = !DILocation(line: 376, column: 11, scope: !2473)
!2482 = !DILocation(line: 377, column: 2, scope: !2473)
!2483 = !DILocation(line: 378, column: 31, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2469, file: !2, line: 377, column: 9)
!2485 = !DILocation(line: 378, column: 3, scope: !2484)
!2486 = !DILocation(line: 379, column: 3, scope: !2484)
!2487 = !DILocation(line: 379, column: 10, scope: !2484)
!2488 = !DILocation(line: 380, column: 3, scope: !2484)
!2489 = !DILocation(line: 380, column: 10, scope: !2484)
!2490 = !DILocation(line: 381, column: 16, scope: !2484)
!2491 = !DILocation(line: 381, column: 24, scope: !2484)
!2492 = !DILocation(line: 381, column: 3, scope: !2484)
!2493 = !DILocation(line: 382, column: 3, scope: !2484)
!2494 = !DILocation(line: 382, column: 10, scope: !2484)
!2495 = !DILocation(line: 383, column: 3, scope: !2484)
!2496 = !DILocation(line: 383, column: 10, scope: !2484)
!2497 = !DILocation(line: 384, column: 16, scope: !2484)
!2498 = !DILocation(line: 384, column: 24, scope: !2484)
!2499 = !DILocation(line: 384, column: 3, scope: !2484)
!2500 = !DILocation(line: 385, column: 11, scope: !2484)
!2501 = !DILocation(line: 388, column: 14, scope: !62)
!2502 = !DILocation(line: 388, column: 17, scope: !62)
!2503 = !DILocation(line: 388, column: 22, scope: !62)
!2504 = !DILocation(line: 388, column: 9, scope: !62)
!2505 = !DILocation(line: 389, column: 1, scope: !62)
!2506 = !DILocation(line: 388, column: 2, scope: !62)
!2507 = distinct !DISubprogram(name: "utf8_tail", scope: !2169, file: !2169, line: 16, type: !2508, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!90, !96}
!2510 = !{!2511}
!2511 = !DILocalVariable(name: "c", arg: 1, scope: !2507, file: !2169, line: 16, type: !96)
!2512 = !DILocation(line: 16, column: 19, scope: !2507)
!2513 = !DILocation(line: 19, column: 10, scope: !2507)
!2514 = !DILocation(line: 19, column: 12, scope: !2507)
!2515 = !DILocation(line: 19, column: 20, scope: !2507)
!2516 = !DILocation(line: 19, column: 2, scope: !2507)
!2517 = distinct !DISubprogram(name: "write_hex_4", scope: !2, file: !2, line: 335, type: !2518, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !75, !118}
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "dest", arg: 1, scope: !2517, file: !2, line: 335, type: !75)
!2522 = !DILocalVariable(name: "val", arg: 2, scope: !2517, file: !2, line: 335, type: !118)
!2523 = !DILocation(line: 335, column: 19, scope: !2517)
!2524 = !DILocation(line: 335, column: 34, scope: !2517)
!2525 = !DILocation(line: 337, column: 14, scope: !2517)
!2526 = !DILocation(line: 337, column: 30, scope: !2517)
!2527 = !DILocation(line: 337, column: 34, scope: !2517)
!2528 = !DILocation(line: 337, column: 20, scope: !2517)
!2529 = !DILocation(line: 337, column: 2, scope: !2517)
!2530 = !DILocation(line: 338, column: 22, scope: !2517)
!2531 = !DILocation(line: 338, column: 27, scope: !2517)
!2532 = !DILocation(line: 338, column: 42, scope: !2517)
!2533 = !DILocation(line: 338, column: 46, scope: !2517)
!2534 = !DILocation(line: 338, column: 32, scope: !2517)
!2535 = !DILocation(line: 338, column: 2, scope: !2517)
!2536 = !DILocation(line: 339, column: 1, scope: !2517)
!2537 = distinct !DISubprogram(name: "utf16_encode_surrogate_pair", scope: !2169, file: !2169, line: 284, type: !2538, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2541)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !83, !2540, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!2541 = !{!2542, !2543, !2544}
!2542 = !DILocalVariable(name: "codepoint", arg: 1, scope: !2537, file: !2169, line: 284, type: !83)
!2543 = !DILocalVariable(name: "high", arg: 2, scope: !2537, file: !2169, line: 284, type: !2540)
!2544 = !DILocalVariable(name: "low", arg: 3, scope: !2537, file: !2169, line: 284, type: !2540)
!2545 = !DILocation(line: 284, column: 38, scope: !2537)
!2546 = !DILocation(line: 284, column: 59, scope: !2537)
!2547 = !DILocation(line: 284, column: 75, scope: !2537)
!2548 = !DILocation(line: 289, column: 12, scope: !2537)
!2549 = !DILocation(line: 290, column: 20, scope: !2537)
!2550 = !DILocation(line: 290, column: 30, scope: !2537)
!2551 = !DILocation(line: 290, column: 17, scope: !2537)
!2552 = !DILocation(line: 290, column: 10, scope: !2537)
!2553 = !DILocation(line: 290, column: 3, scope: !2537)
!2554 = !DILocation(line: 290, column: 8, scope: !2537)
!2555 = !DILocation(line: 291, column: 19, scope: !2537)
!2556 = !DILocation(line: 291, column: 29, scope: !2537)
!2557 = !DILocation(line: 291, column: 16, scope: !2537)
!2558 = !DILocation(line: 291, column: 9, scope: !2537)
!2559 = !DILocation(line: 291, column: 3, scope: !2537)
!2560 = !DILocation(line: 291, column: 7, scope: !2537)
!2561 = !DILocation(line: 295, column: 1, scope: !2537)
!2562 = distinct !DISubprogram(name: "utf16le_valid", scope: !2169, file: !2169, line: 230, type: !2563, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!65, !1036, !1036}
!2565 = !{!2566, !2567, !2568, !2569, !2570}
!2566 = !DILocalVariable(name: "start", arg: 1, scope: !2562, file: !2169, line: 230, type: !1036)
!2567 = !DILocalVariable(name: "end", arg: 2, scope: !2562, file: !2169, line: 230, type: !1036)
!2568 = !DILocalVariable(name: "p", scope: !2562, file: !2169, line: 232, type: !1036)
!2569 = !DILocalVariable(name: "high", scope: !2562, file: !2169, line: 233, type: !118)
!2570 = !DILocalVariable(name: "low", scope: !2562, file: !2169, line: 233, type: !118)
!2571 = !DILocation(line: 230, column: 31, scope: !2562)
!2572 = !DILocation(line: 230, column: 54, scope: !2562)
!2573 = !DILocation(line: 232, column: 2, scope: !2562)
!2574 = !DILocation(line: 232, column: 18, scope: !2562)
!2575 = !DILocation(line: 232, column: 22, scope: !2562)
!2576 = !DILocation(line: 233, column: 2, scope: !2562)
!2577 = !DILocation(line: 233, column: 11, scope: !2562)
!2578 = !DILocation(line: 233, column: 17, scope: !2562)
!2579 = !DILocation(line: 235, column: 6, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2562, file: !2169, line: 235, column: 6)
!2581 = !DILocation(line: 235, column: 11, scope: !2580)
!2582 = !DILocation(line: 235, column: 8, scope: !2580)
!2583 = !DILocation(line: 235, column: 6, scope: !2562)
!2584 = !DILocation(line: 236, column: 3, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !2169, line: 235, column: 16)
!2586 = !DILocation(line: 239, column: 19, scope: !2562)
!2587 = !DILocation(line: 239, column: 9, scope: !2562)
!2588 = !DILocation(line: 239, column: 7, scope: !2562)
!2589 = !DILocation(line: 241, column: 6, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2562, file: !2169, line: 241, column: 6)
!2591 = !DILocation(line: 241, column: 11, scope: !2590)
!2592 = !DILocation(line: 241, column: 21, scope: !2590)
!2593 = !DILocation(line: 241, column: 24, scope: !2590)
!2594 = !DILocation(line: 241, column: 29, scope: !2590)
!2595 = !DILocation(line: 241, column: 6, scope: !2562)
!2596 = !DILocation(line: 243, column: 3, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2590, file: !2169, line: 241, column: 40)
!2598 = !DILocation(line: 246, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2562, file: !2169, line: 246, column: 6)
!2600 = !DILocation(line: 246, column: 11, scope: !2599)
!2601 = !DILocation(line: 246, column: 6, scope: !2562)
!2602 = !DILocation(line: 248, column: 3, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !2169, line: 246, column: 22)
!2604 = !DILocation(line: 253, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2562, file: !2169, line: 253, column: 6)
!2606 = !DILocation(line: 253, column: 13, scope: !2605)
!2607 = !DILocation(line: 253, column: 10, scope: !2605)
!2608 = !DILocation(line: 253, column: 6, scope: !2562)
!2609 = !DILocation(line: 255, column: 3, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !2169, line: 253, column: 18)
!2611 = !DILocation(line: 257, column: 18, scope: !2562)
!2612 = !DILocation(line: 257, column: 8, scope: !2562)
!2613 = !DILocation(line: 257, column: 6, scope: !2562)
!2614 = !DILocation(line: 259, column: 33, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2562, file: !2169, line: 259, column: 6)
!2616 = !DILocation(line: 259, column: 7, scope: !2615)
!2617 = !DILocation(line: 259, column: 6, scope: !2562)
!2618 = !DILocation(line: 260, column: 3, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !2169, line: 259, column: 39)
!2620 = !DILocation(line: 264, column: 2, scope: !2562)
!2621 = !DILocation(line: 265, column: 1, scope: !2562)
!2622 = distinct !DISubprogram(name: "from_le16", scope: !2623, file: !2623, line: 84, type: !2624, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2626)
!2623 = !DIFile(filename: "include/spdk/endian.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "968a0598556b8bcd896dc6ccc0f00c8f")
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!118, !76}
!2626 = !{!2627, !2628}
!2627 = !DILocalVariable(name: "ptr", arg: 1, scope: !2622, file: !2623, line: 84, type: !76)
!2628 = !DILocalVariable(name: "tmp", scope: !2622, file: !2623, line: 86, type: !122)
!2629 = !DILocation(line: 84, column: 23, scope: !2622)
!2630 = !DILocation(line: 86, column: 2, scope: !2622)
!2631 = !DILocation(line: 86, column: 17, scope: !2622)
!2632 = !DILocation(line: 86, column: 40, scope: !2622)
!2633 = !DILocation(line: 87, column: 21, scope: !2622)
!2634 = !DILocation(line: 87, column: 11, scope: !2622)
!2635 = !DILocation(line: 87, column: 28, scope: !2622)
!2636 = !DILocation(line: 87, column: 36, scope: !2622)
!2637 = !DILocation(line: 87, column: 34, scope: !2622)
!2638 = !DILocation(line: 87, column: 9, scope: !2622)
!2639 = !DILocation(line: 88, column: 1, scope: !2622)
!2640 = !DILocation(line: 87, column: 2, scope: !2622)
!2641 = distinct !DISubprogram(name: "utf16_decode_surrogate_pair", scope: !2169, file: !2169, line: 268, type: !2642, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!83, !83, !83}
!2644 = !{!2645, !2646, !2647}
!2645 = !DILocalVariable(name: "high", arg: 1, scope: !2641, file: !2169, line: 268, type: !83)
!2646 = !DILocalVariable(name: "low", arg: 2, scope: !2641, file: !2169, line: 268, type: !83)
!2647 = !DILocalVariable(name: "codepoint", scope: !2641, file: !2169, line: 270, type: !83)
!2648 = !DILocation(line: 268, column: 38, scope: !2641)
!2649 = !DILocation(line: 268, column: 53, scope: !2641)
!2650 = !DILocation(line: 270, column: 2, scope: !2641)
!2651 = !DILocation(line: 270, column: 11, scope: !2641)
!2652 = !DILocation(line: 275, column: 14, scope: !2641)
!2653 = !DILocation(line: 275, column: 12, scope: !2641)
!2654 = !DILocation(line: 276, column: 12, scope: !2641)
!2655 = !DILocation(line: 277, column: 17, scope: !2641)
!2656 = !DILocation(line: 277, column: 22, scope: !2641)
!2657 = !DILocation(line: 277, column: 31, scope: !2641)
!2658 = !DILocation(line: 277, column: 12, scope: !2641)
!2659 = !DILocation(line: 278, column: 12, scope: !2641)
!2660 = !DILocation(line: 280, column: 9, scope: !2641)
!2661 = !DILocation(line: 281, column: 1, scope: !2641)
!2662 = !DILocation(line: 280, column: 2, scope: !2641)
!2663 = distinct !DISubprogram(name: "utf16_valid_surrogate_low", scope: !2169, file: !2169, line: 219, type: !2664, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!90, !83}
!2666 = !{!2667}
!2667 = !DILocalVariable(name: "val", arg: 1, scope: !2663, file: !2169, line: 219, type: !83)
!2668 = !DILocation(line: 219, column: 36, scope: !2663)
!2669 = !DILocation(line: 221, column: 9, scope: !2663)
!2670 = !DILocation(line: 221, column: 13, scope: !2663)
!2671 = !DILocation(line: 221, column: 23, scope: !2663)
!2672 = !DILocation(line: 221, column: 26, scope: !2663)
!2673 = !DILocation(line: 221, column: 30, scope: !2663)
!2674 = !DILocation(line: 0, scope: !2663)
!2675 = !DILocation(line: 221, column: 2, scope: !2663)
