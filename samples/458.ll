; ModuleID = 'samples/458.bc'
source_filename = "src/core/xbzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [41 x i8] c"BZ2_bzopen(): cannot open file '%s': %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot put character to compressed file\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"cannot put string to compressed file\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot read from compressed file\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [4 x i8] c"buf\00", align 1, !dbg !24
@__func__.gt_xbzwrite = private unnamed_addr constant [12 x i8] c"gt_xbzwrite\00", align 1, !dbg !29
@.str.6 = private unnamed_addr constant [18 x i8] c"src/core/xbzlib.c\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [33 x i8] c"cannot write it compressed file\0A\00", align 1, !dbg !40

; Function Attrs: nounwind uwtable
define ptr @gt_xbzopen(ptr noundef %path, ptr noundef %mode) #0 !dbg !55 {
entry:
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !63, metadata !DIExpression()), !dbg !70
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !64, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8, !dbg !72
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !65, metadata !DIExpression()), !dbg !73
  %0 = load ptr, ptr %path.addr, align 8, !dbg !74, !tbaa !66
  %1 = load ptr, ptr %mode.addr, align 8, !dbg !76, !tbaa !66
  %call = call ptr @BZ2_bzopen(ptr noundef %0, ptr noundef %1), !dbg !77
  store ptr %call, ptr %file, align 8, !dbg !78, !tbaa !66
  %tobool = icmp ne ptr %call, null, !dbg !78
  br i1 %tobool, label %if.end, label %if.then, !dbg !79

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !80, !tbaa !66
  %3 = load ptr, ptr %path.addr, align 8, !dbg !82, !tbaa !66
  %call1 = call ptr @__errno_location() #9, !dbg !83
  %4 = load i32, ptr %call1, align 4, !dbg !83, !tbaa !84
  %call2 = call ptr @strerror(i32 noundef %4) #8, !dbg !86
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef %3, ptr noundef %call2), !dbg !87
  call void @exit(i32 noundef 1) #10, !dbg !88
  unreachable, !dbg !88

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %file, align 8, !dbg !89, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8, !dbg !90
  ret ptr %5, !dbg !91
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !92 ptr @BZ2_bzopen(ptr noundef, ptr noundef) #2

declare !dbg !93 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare !dbg !160 ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !164 ptr @__errno_location() #4

; Function Attrs: noreturn nounwind
declare !dbg !169 void @exit(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gt_xbzfgetc(ptr noundef %bzfile) #0 !dbg !173 {
entry:
  %bzfile.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %bzfile, ptr %bzfile.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %bzfile.addr, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #8, !dbg !180
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !178, metadata !DIExpression()), !dbg !181
  %0 = load ptr, ptr %bzfile.addr, align 8, !dbg !182, !tbaa !66
  %call = call i32 @gt_xbzread(ptr noundef %0, ptr noundef %c, i32 noundef 1), !dbg !183
  %tobool = icmp ne i32 %call, 0, !dbg !183
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !183

cond.true:                                        ; preds = %entry
  %1 = load i8, ptr %c, align 1, !dbg !184, !tbaa !185
  %conv = sext i8 %1 to i32, !dbg !184
  br label %cond.end, !dbg !183

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ], !dbg !183
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #8, !dbg !186
  ret i32 %cond, !dbg !187
}

; Function Attrs: nounwind uwtable
define i32 @gt_xbzread(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 !dbg !188 {
entry:
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %rval = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !193, metadata !DIExpression()), !dbg !197
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !194, metadata !DIExpression()), !dbg !198
  store i32 %len, ptr %len.addr, align 4, !tbaa !84
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !195, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 4, ptr %rval) #8, !dbg !200
  tail call void @llvm.dbg.declare(metadata ptr %rval, metadata !196, metadata !DIExpression()), !dbg !201
  %0 = load ptr, ptr %file.addr, align 8, !dbg !202, !tbaa !66
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !204, !tbaa !66
  %2 = load i32, ptr %len.addr, align 4, !dbg !205, !tbaa !84
  %call = call i32 @BZ2_bzread(ptr noundef %0, ptr noundef %1, i32 noundef %2), !dbg !206
  store i32 %call, ptr %rval, align 4, !dbg !207, !tbaa !84
  %cmp = icmp eq i32 %call, -1, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !dbg !210, !tbaa !66
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.3), !dbg !212
  call void @exit(i32 noundef 1) #10, !dbg !213
  unreachable, !dbg !213

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %rval, align 4, !dbg !214, !tbaa !84
  call void @llvm.lifetime.end.p0(i64 4, ptr %rval) #8, !dbg !215
  ret i32 %4, !dbg !216
}

; Function Attrs: nounwind uwtable
define void @gt_xbzfputc(i32 noundef %c, ptr noundef %bzfile) #0 !dbg !217 {
entry:
  %c.addr = alloca i32, align 4
  %bzfile.addr = alloca ptr, align 8
  store i32 %c, ptr %c.addr, align 4, !tbaa !84
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !221, metadata !DIExpression()), !dbg !223
  store ptr %bzfile, ptr %bzfile.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %bzfile.addr, metadata !222, metadata !DIExpression()), !dbg !224
  %0 = load i32, ptr %c.addr, align 4, !dbg !225, !tbaa !84
  %1 = load ptr, ptr %bzfile.addr, align 8, !dbg !227, !tbaa !66
  %call = call i32 @bzputc(i32 noundef %0, ptr noundef %1), !dbg !228
  %cmp = icmp eq i32 %call, -1, !dbg !229
  br i1 %cmp, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !231, !tbaa !66
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1), !dbg !233
  call void @exit(i32 noundef 1) #10, !dbg !234
  unreachable, !dbg !234

if.end:                                           ; preds = %entry
  ret void, !dbg !235
}

; Function Attrs: nounwind uwtable
define internal i32 @bzputc(i32 noundef %c, ptr noundef %bzfile) #0 !dbg !236 {
entry:
  %c.addr = alloca i32, align 4
  %bzfile.addr = alloca ptr, align 8
  %cc = alloca i8, align 1
  store i32 %c, ptr %c.addr, align 4, !tbaa !84
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !240, metadata !DIExpression()), !dbg !243
  store ptr %bzfile, ptr %bzfile.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %bzfile.addr, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 1, ptr %cc) #8, !dbg !245
  tail call void @llvm.dbg.declare(metadata ptr %cc, metadata !242, metadata !DIExpression()), !dbg !246
  %0 = load i32, ptr %c.addr, align 4, !dbg !247, !tbaa !84
  %conv = trunc i32 %0 to i8, !dbg !248
  store i8 %conv, ptr %cc, align 1, !dbg !246, !tbaa !185
  %1 = load ptr, ptr %bzfile.addr, align 8, !dbg !249, !tbaa !66
  %call = call i32 @BZ2_bzwrite(ptr noundef %1, ptr noundef %cc, i32 noundef 1), !dbg !250
  %cmp = icmp eq i32 %call, 1, !dbg !251
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !250

cond.true:                                        ; preds = %entry
  %2 = load i8, ptr %cc, align 1, !dbg !252, !tbaa !185
  %conv2 = sext i8 %2 to i32, !dbg !252
  br label %cond.end, !dbg !250

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ -1, %cond.false ], !dbg !250
  call void @llvm.lifetime.end.p0(i64 1, ptr %cc) #8, !dbg !253
  ret i32 %cond, !dbg !254
}

; Function Attrs: nounwind uwtable
define void @gt_xbzfputs(ptr noundef %str, ptr noundef %bzfile) #0 !dbg !255 {
entry:
  %str.addr = alloca ptr, align 8
  %bzfile.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !259, metadata !DIExpression()), !dbg !261
  store ptr %bzfile, ptr %bzfile.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %bzfile.addr, metadata !260, metadata !DIExpression()), !dbg !262
  %0 = load ptr, ptr %str.addr, align 8, !dbg !263, !tbaa !66
  %1 = load ptr, ptr %bzfile.addr, align 8, !dbg !265, !tbaa !66
  %call = call i32 @bzputs(ptr noundef %0, ptr noundef %1), !dbg !266
  %cmp = icmp eq i32 %call, -1, !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !269, !tbaa !66
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2), !dbg !271
  call void @exit(i32 noundef 1) #10, !dbg !272
  unreachable, !dbg !272

if.end:                                           ; preds = %entry
  ret void, !dbg !273
}

; Function Attrs: nounwind uwtable
define internal i32 @bzputs(ptr noundef %str, ptr noundef %bzfile) #0 !dbg !274 {
entry:
  %str.addr = alloca ptr, align 8
  %bzfile.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !278, metadata !DIExpression()), !dbg !281
  store ptr %bzfile, ptr %bzfile.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %bzfile.addr, metadata !279, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !280, metadata !DIExpression()), !dbg !284
  %0 = load ptr, ptr %str.addr, align 8, !dbg !285, !tbaa !66
  %call = call i64 @strlen(ptr noundef %0) #11, !dbg !286
  %conv = trunc i64 %call to i32, !dbg !286
  store i32 %conv, ptr %len, align 4, !dbg !284, !tbaa !84
  %1 = load ptr, ptr %bzfile.addr, align 8, !dbg !287, !tbaa !66
  %2 = load ptr, ptr %str.addr, align 8, !dbg !288, !tbaa !66
  %3 = load i32, ptr %len, align 4, !dbg !289, !tbaa !84
  %call1 = call i32 @BZ2_bzwrite(ptr noundef %1, ptr noundef %2, i32 noundef %3), !dbg !290
  %4 = load i32, ptr %len, align 4, !dbg !291, !tbaa !84
  %cmp = icmp eq i32 %call1, %4, !dbg !292
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !290

cond.true:                                        ; preds = %entry
  %5 = load i32, ptr %len, align 4, !dbg !293, !tbaa !84
  br label %cond.end, !dbg !290

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ -1, %cond.false ], !dbg !290
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8, !dbg !294
  ret i32 %cond, !dbg !295
}

declare !dbg !296 i32 @BZ2_bzread(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_xbzwrite(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 !dbg !299 {
entry:
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !303, metadata !DIExpression()), !dbg !306
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !304, metadata !DIExpression()), !dbg !307
  store i32 %len, ptr %len.addr, align 4, !tbaa !84
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !305, metadata !DIExpression()), !dbg !308
  br label %do.body, !dbg !309

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !310, !tbaa !66
  %tobool = icmp ne ptr %0, null, !dbg !310
  br i1 %tobool, label %if.end, label %if.then, !dbg !313

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !314, !tbaa !66
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef @__func__.gt_xbzwrite, ptr noundef @.str.6, i32 noundef 82), !dbg !314
  call void @abort() #10, !dbg !314
  unreachable, !dbg !314

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !313

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %file.addr, align 8, !dbg !316, !tbaa !66
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !318, !tbaa !66
  %4 = load i32, ptr %len.addr, align 4, !dbg !319, !tbaa !84
  %call1 = call i32 @BZ2_bzwrite(ptr noundef %2, ptr noundef %3, i32 noundef %4), !dbg !320
  %5 = load i32, ptr %len.addr, align 4, !dbg !321, !tbaa !84
  %cmp = icmp ne i32 %call1, %5, !dbg !322
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !323

if.then2:                                         ; preds = %do.end
  %6 = load ptr, ptr @stderr, align 8, !dbg !324, !tbaa !66
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.7), !dbg !326
  call void @exit(i32 noundef 1) #10, !dbg !327
  unreachable, !dbg !327

if.end4:                                          ; preds = %do.end
  ret void, !dbg !328
}

; Function Attrs: noreturn nounwind
declare !dbg !329 void @abort() #5

declare !dbg !332 i32 @BZ2_bzwrite(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_xbzrewind(ptr noundef %file, ptr noundef %orig_path, ptr noundef %orig_mode) #0 !dbg !333 {
entry:
  %file.addr = alloca ptr, align 8
  %orig_path.addr = alloca ptr, align 8
  %orig_mode.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !338, metadata !DIExpression()), !dbg !341
  store ptr %orig_path, ptr %orig_path.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %orig_path.addr, metadata !339, metadata !DIExpression()), !dbg !342
  store ptr %orig_mode, ptr %orig_mode.addr, align 8, !tbaa !66
  tail call void @llvm.dbg.declare(metadata ptr %orig_mode.addr, metadata !340, metadata !DIExpression()), !dbg !343
  %0 = load ptr, ptr %file.addr, align 8, !dbg !344, !tbaa !66
  %1 = load ptr, ptr %0, align 8, !dbg !345, !tbaa !66
  call void @BZ2_bzclose(ptr noundef %1), !dbg !346
  %2 = load ptr, ptr %orig_path.addr, align 8, !dbg !347, !tbaa !66
  %3 = load ptr, ptr %orig_mode.addr, align 8, !dbg !348, !tbaa !66
  %call = call ptr @gt_xbzopen(ptr noundef %2, ptr noundef %3), !dbg !349
  %4 = load ptr, ptr %file.addr, align 8, !dbg !350, !tbaa !66
  store ptr %call, ptr %4, align 8, !dbg !351, !tbaa !66
  ret void, !dbg !352
}

declare !dbg !353 void @BZ2_bzclose(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !356 i64 @strlen(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!45}
!llvm.module.flags = !{!49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/core/xbzlib.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8af4a1059633734a40794e0ecaa669d2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 38)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 34)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 297)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 96, elements: !33)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!33 = !{!34}
!34 = !DISubrange(count: 12)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 18)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 33)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !46, globals: !48, splitDebugInlining: false, nameTableKind: None)
!46 = !{!4, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!48 = !{!0, !7, !9, !14, !19, !24, !29, !35, !40}
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{i32 8, !"PIC Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 2}
!54 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!55 = distinct !DISubprogram(name: "gt_xbzopen", scope: !2, file: !2, line: 25, type: !56, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !62)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !61, !61}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !60, line: 137, baseType: null)
!60 = !DIFile(filename: "src/external/bzip2-1.0.6/bzlib.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "99d0b7adebfb15e0cd62c628cdb8946d")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(name: "path", arg: 1, scope: !55, file: !2, line: 25, type: !61)
!64 = !DILocalVariable(name: "mode", arg: 2, scope: !55, file: !2, line: 25, type: !61)
!65 = !DILocalVariable(name: "file", scope: !55, file: !2, line: 27, type: !58)
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 25, column: 32, scope: !55)
!71 = !DILocation(line: 25, column: 50, scope: !55)
!72 = !DILocation(line: 27, column: 3, scope: !55)
!73 = !DILocation(line: 27, column: 11, scope: !55)
!74 = !DILocation(line: 28, column: 27, scope: !75)
!75 = distinct !DILexicalBlock(scope: !55, file: !2, line: 28, column: 7)
!76 = !DILocation(line: 28, column: 33, scope: !75)
!77 = !DILocation(line: 28, column: 16, scope: !75)
!78 = !DILocation(line: 28, column: 14, scope: !75)
!79 = !DILocation(line: 28, column: 7, scope: !55)
!80 = !DILocation(line: 29, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !2, line: 28, column: 41)
!82 = !DILocation(line: 29, column: 66, scope: !81)
!83 = !DILocation(line: 30, column: 22, scope: !81)
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !68, i64 0}
!86 = !DILocation(line: 30, column: 13, scope: !81)
!87 = !DILocation(line: 29, column: 5, scope: !81)
!88 = !DILocation(line: 31, column: 5, scope: !81)
!89 = !DILocation(line: 33, column: 10, scope: !55)
!90 = !DILocation(line: 34, column: 1, scope: !55)
!91 = !DILocation(line: 33, column: 3, scope: !55)
!92 = !DISubprogram(name: "BZ2_bzopen", scope: !60, file: !60, line: 238, type: !56, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DISubprogram(name: "fprintf", scope: !94, file: !94, line: 350, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !98, !159, null}
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !101, line: 7, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !103, line: 49, size: 1728, elements: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !120, !122, !123, !124, !128, !130, !132, !136, !139, !141, !144, !147, !148, !150, !154, !155}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !102, file: !103, line: 51, baseType: !97, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !102, file: !103, line: 54, baseType: !47, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !102, file: !103, line: 55, baseType: !47, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !102, file: !103, line: 56, baseType: !47, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !102, file: !103, line: 57, baseType: !47, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !102, file: !103, line: 58, baseType: !47, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !102, file: !103, line: 59, baseType: !47, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !102, file: !103, line: 60, baseType: !47, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !102, file: !103, line: 61, baseType: !47, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !102, file: !103, line: 64, baseType: !47, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !102, file: !103, line: 65, baseType: !47, size: 64, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !102, file: !103, line: 66, baseType: !47, size: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !102, file: !103, line: 68, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !103, line: 36, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !102, file: !103, line: 70, baseType: !121, size: 64, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !102, file: !103, line: 72, baseType: !97, size: 32, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !102, file: !103, line: 73, baseType: !97, size: 32, offset: 928)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !102, file: !103, line: 74, baseType: !125, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !126, line: 152, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!127 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !102, file: !103, line: 77, baseType: !129, size: 16, offset: 1024)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !102, file: !103, line: 78, baseType: !131, size: 8, offset: 1040)
!131 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !102, file: !103, line: 79, baseType: !133, size: 8, offset: 1048)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 1)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !102, file: !103, line: 81, baseType: !137, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !103, line: 43, baseType: null)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !102, file: !103, line: 89, baseType: !140, size: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !126, line: 153, baseType: !127)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !102, file: !103, line: 91, baseType: !142, size: 64, offset: 1216)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !103, line: 37, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !102, file: !103, line: 92, baseType: !145, size: 64, offset: 1280)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !103, line: 38, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !102, file: !103, line: 93, baseType: !121, size: 64, offset: 1344)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !102, file: !103, line: 94, baseType: !149, size: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !102, file: !103, line: 95, baseType: !151, size: 64, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 70, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !102, file: !103, line: 96, baseType: !97, size: 32, offset: 1536)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !102, file: !103, line: 98, baseType: !156, size: 160, offset: 1568)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 20)
!159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!160 = !DISubprogram(name: "strerror", scope: !161, file: !161, line: 419, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!162 = !DISubroutineType(types: !163)
!163 = !{!47, !97}
!164 = !DISubprogram(name: "__errno_location", scope: !165, file: !165, line: 37, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!166 = !DISubroutineType(types: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!169 = !DISubprogram(name: "exit", scope: !170, file: !170, line: 624, type: !171, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!170 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!171 = !DISubroutineType(types: !172)
!172 = !{null, !97}
!173 = distinct !DISubprogram(name: "gt_xbzfgetc", scope: !2, file: !2, line: 36, type: !174, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!97, !58}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "bzfile", arg: 1, scope: !173, file: !2, line: 36, type: !58)
!178 = !DILocalVariable(name: "c", scope: !173, file: !2, line: 38, type: !4)
!179 = !DILocation(line: 36, column: 25, scope: !173)
!180 = !DILocation(line: 38, column: 3, scope: !173)
!181 = !DILocation(line: 38, column: 8, scope: !173)
!182 = !DILocation(line: 39, column: 21, scope: !173)
!183 = !DILocation(line: 39, column: 10, scope: !173)
!184 = !DILocation(line: 39, column: 38, scope: !173)
!185 = !{!68, !68, i64 0}
!186 = !DILocation(line: 40, column: 1, scope: !173)
!187 = !DILocation(line: 39, column: 3, scope: !173)
!188 = distinct !DISubprogram(name: "gt_xbzread", scope: !2, file: !2, line: 70, type: !189, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{!97, !58, !149, !191}
!191 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!192 = !{!193, !194, !195, !196}
!193 = !DILocalVariable(name: "file", arg: 1, scope: !188, file: !2, line: 70, type: !58)
!194 = !DILocalVariable(name: "buf", arg: 2, scope: !188, file: !2, line: 70, type: !149)
!195 = !DILocalVariable(name: "len", arg: 3, scope: !188, file: !2, line: 70, type: !191)
!196 = !DILocalVariable(name: "rval", scope: !188, file: !2, line: 72, type: !97)
!197 = !DILocation(line: 70, column: 24, scope: !188)
!198 = !DILocation(line: 70, column: 36, scope: !188)
!199 = !DILocation(line: 70, column: 50, scope: !188)
!200 = !DILocation(line: 72, column: 3, scope: !188)
!201 = !DILocation(line: 72, column: 7, scope: !188)
!202 = !DILocation(line: 73, column: 26, scope: !203)
!203 = distinct !DILexicalBlock(scope: !188, file: !2, line: 73, column: 7)
!204 = !DILocation(line: 73, column: 32, scope: !203)
!205 = !DILocation(line: 73, column: 37, scope: !203)
!206 = !DILocation(line: 73, column: 15, scope: !203)
!207 = !DILocation(line: 73, column: 13, scope: !203)
!208 = !DILocation(line: 73, column: 43, scope: !203)
!209 = !DILocation(line: 73, column: 7, scope: !188)
!210 = !DILocation(line: 74, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !2, line: 73, column: 50)
!212 = !DILocation(line: 74, column: 5, scope: !211)
!213 = !DILocation(line: 75, column: 5, scope: !211)
!214 = !DILocation(line: 77, column: 10, scope: !188)
!215 = !DILocation(line: 78, column: 1, scope: !188)
!216 = !DILocation(line: 77, column: 3, scope: !188)
!217 = distinct !DISubprogram(name: "gt_xbzfputc", scope: !2, file: !2, line: 48, type: !218, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !97, !58}
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "c", arg: 1, scope: !217, file: !2, line: 48, type: !97)
!222 = !DILocalVariable(name: "bzfile", arg: 2, scope: !217, file: !2, line: 48, type: !58)
!223 = !DILocation(line: 48, column: 22, scope: !217)
!224 = !DILocation(line: 48, column: 33, scope: !217)
!225 = !DILocation(line: 50, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !217, file: !2, line: 50, column: 7)
!227 = !DILocation(line: 50, column: 17, scope: !226)
!228 = !DILocation(line: 50, column: 7, scope: !226)
!229 = !DILocation(line: 50, column: 25, scope: !226)
!230 = !DILocation(line: 50, column: 7, scope: !217)
!231 = !DILocation(line: 51, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !2, line: 50, column: 32)
!233 = !DILocation(line: 51, column: 5, scope: !232)
!234 = !DILocation(line: 52, column: 5, scope: !232)
!235 = !DILocation(line: 54, column: 1, scope: !217)
!236 = distinct !DISubprogram(name: "bzputc", scope: !2, file: !2, line: 42, type: !237, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!97, !97, !58}
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "c", arg: 1, scope: !236, file: !2, line: 42, type: !97)
!241 = !DILocalVariable(name: "bzfile", arg: 2, scope: !236, file: !2, line: 42, type: !58)
!242 = !DILocalVariable(name: "cc", scope: !236, file: !2, line: 44, type: !4)
!243 = !DILocation(line: 42, column: 23, scope: !236)
!244 = !DILocation(line: 42, column: 34, scope: !236)
!245 = !DILocation(line: 44, column: 3, scope: !236)
!246 = !DILocation(line: 44, column: 8, scope: !236)
!247 = !DILocation(line: 44, column: 20, scope: !236)
!248 = !DILocation(line: 44, column: 13, scope: !236)
!249 = !DILocation(line: 45, column: 22, scope: !236)
!250 = !DILocation(line: 45, column: 10, scope: !236)
!251 = !DILocation(line: 45, column: 38, scope: !236)
!252 = !DILocation(line: 45, column: 45, scope: !236)
!253 = !DILocation(line: 46, column: 1, scope: !236)
!254 = !DILocation(line: 45, column: 3, scope: !236)
!255 = distinct !DISubprogram(name: "gt_xbzfputs", scope: !2, file: !2, line: 62, type: !256, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !61, !58}
!258 = !{!259, !260}
!259 = !DILocalVariable(name: "str", arg: 1, scope: !255, file: !2, line: 62, type: !61)
!260 = !DILocalVariable(name: "bzfile", arg: 2, scope: !255, file: !2, line: 62, type: !58)
!261 = !DILocation(line: 62, column: 30, scope: !255)
!262 = !DILocation(line: 62, column: 43, scope: !255)
!263 = !DILocation(line: 64, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !255, file: !2, line: 64, column: 7)
!265 = !DILocation(line: 64, column: 19, scope: !264)
!266 = !DILocation(line: 64, column: 7, scope: !264)
!267 = !DILocation(line: 64, column: 27, scope: !264)
!268 = !DILocation(line: 64, column: 7, scope: !255)
!269 = !DILocation(line: 65, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !2, line: 64, column: 34)
!271 = !DILocation(line: 65, column: 5, scope: !270)
!272 = !DILocation(line: 66, column: 5, scope: !270)
!273 = !DILocation(line: 68, column: 1, scope: !255)
!274 = distinct !DISubprogram(name: "bzputs", scope: !2, file: !2, line: 56, type: !275, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!97, !61, !58}
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "str", arg: 1, scope: !274, file: !2, line: 56, type: !61)
!279 = !DILocalVariable(name: "bzfile", arg: 2, scope: !274, file: !2, line: 56, type: !58)
!280 = !DILocalVariable(name: "len", scope: !274, file: !2, line: 58, type: !97)
!281 = !DILocation(line: 56, column: 31, scope: !274)
!282 = !DILocation(line: 56, column: 44, scope: !274)
!283 = !DILocation(line: 58, column: 3, scope: !274)
!284 = !DILocation(line: 58, column: 7, scope: !274)
!285 = !DILocation(line: 58, column: 20, scope: !274)
!286 = !DILocation(line: 58, column: 13, scope: !274)
!287 = !DILocation(line: 59, column: 22, scope: !274)
!288 = !DILocation(line: 59, column: 38, scope: !274)
!289 = !DILocation(line: 59, column: 43, scope: !274)
!290 = !DILocation(line: 59, column: 10, scope: !274)
!291 = !DILocation(line: 59, column: 51, scope: !274)
!292 = !DILocation(line: 59, column: 48, scope: !274)
!293 = !DILocation(line: 59, column: 57, scope: !274)
!294 = !DILocation(line: 60, column: 1, scope: !274)
!295 = !DILocation(line: 59, column: 3, scope: !274)
!296 = !DISubprogram(name: "BZ2_bzread", scope: !60, file: !60, line: 248, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!97, !58, !149, !97}
!299 = distinct !DISubprogram(name: "gt_xbzwrite", scope: !2, file: !2, line: 80, type: !300, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !58, !149, !191}
!302 = !{!303, !304, !305}
!303 = !DILocalVariable(name: "file", arg: 1, scope: !299, file: !2, line: 80, type: !58)
!304 = !DILocalVariable(name: "buf", arg: 2, scope: !299, file: !2, line: 80, type: !149)
!305 = !DILocalVariable(name: "len", arg: 3, scope: !299, file: !2, line: 80, type: !191)
!306 = !DILocation(line: 80, column: 26, scope: !299)
!307 = !DILocation(line: 80, column: 38, scope: !299)
!308 = !DILocation(line: 80, column: 52, scope: !299)
!309 = !DILocation(line: 82, column: 3, scope: !299)
!310 = !DILocation(line: 82, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 82, column: 3)
!312 = distinct !DILexicalBlock(scope: !299, file: !2, line: 82, column: 3)
!313 = !DILocation(line: 82, column: 3, scope: !312)
!314 = !DILocation(line: 82, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 82, column: 3)
!316 = !DILocation(line: 83, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !299, file: !2, line: 83, column: 7)
!318 = !DILocation(line: 83, column: 25, scope: !317)
!319 = !DILocation(line: 83, column: 30, scope: !317)
!320 = !DILocation(line: 83, column: 7, scope: !317)
!321 = !DILocation(line: 83, column: 38, scope: !317)
!322 = !DILocation(line: 83, column: 35, scope: !317)
!323 = !DILocation(line: 83, column: 7, scope: !299)
!324 = !DILocation(line: 84, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !2, line: 83, column: 43)
!326 = !DILocation(line: 84, column: 5, scope: !325)
!327 = !DILocation(line: 85, column: 5, scope: !325)
!328 = !DILocation(line: 87, column: 1, scope: !299)
!329 = !DISubprogram(name: "abort", scope: !170, file: !170, line: 598, type: !330, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{null}
!332 = !DISubprogram(name: "BZ2_bzwrite", scope: !60, file: !60, line: 254, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = distinct !DISubprogram(name: "gt_xbzrewind", scope: !2, file: !2, line: 89, type: !334, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !337)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !336, !61, !61}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "file", arg: 1, scope: !333, file: !2, line: 89, type: !336)
!339 = !DILocalVariable(name: "orig_path", arg: 2, scope: !333, file: !2, line: 89, type: !61)
!340 = !DILocalVariable(name: "orig_mode", arg: 3, scope: !333, file: !2, line: 89, type: !61)
!341 = !DILocation(line: 89, column: 28, scope: !333)
!342 = !DILocation(line: 89, column: 46, scope: !333)
!343 = !DILocation(line: 89, column: 69, scope: !333)
!344 = !DILocation(line: 92, column: 16, scope: !333)
!345 = !DILocation(line: 92, column: 15, scope: !333)
!346 = !DILocation(line: 92, column: 3, scope: !333)
!347 = !DILocation(line: 93, column: 22, scope: !333)
!348 = !DILocation(line: 93, column: 33, scope: !333)
!349 = !DILocation(line: 93, column: 11, scope: !333)
!350 = !DILocation(line: 93, column: 4, scope: !333)
!351 = !DILocation(line: 93, column: 9, scope: !333)
!352 = !DILocation(line: 94, column: 1, scope: !333)
!353 = !DISubprogram(name: "BZ2_bzclose", scope: !60, file: !60, line: 264, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !58}
!356 = !DISubprogram(name: "strlen", scope: !161, file: !161, line: 407, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{!153, !61}
