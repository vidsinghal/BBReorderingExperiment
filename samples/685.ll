; ModuleID = 'samples/685.bc'
source_filename = "edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@refsfound = external global ptr, align 8
@topline = external global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"%250s%*s%10s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"%250s%*s%10s%*[^\0A]\00", align 1, !dbg !7
@editallprompt = external global i32, align 4
@stdscr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"Type ^D to stop editing all lines, or any other character to continue: \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [10 x i8] c"%s +%s %s\00", align 1, !dbg !17
@editor = external global ptr, align 8
@lineflag = external global ptr, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"more\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [5 x i8] c"page\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !29
@lineflagafterfile = external global i32, align 4
@filepath.path = internal global [251 x i8] zeroinitializer, align 16, !dbg !31
@prependpath = external global ptr, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1, !dbg !48

; Function Attrs: nounwind uwtable
define dso_local void @editref(i32 noundef %i) #0 !dbg !65 {
entry:
  %i.addr = alloca i32, align 4
  %file = alloca [251 x i8], align 16
  %linenum = alloca [11 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4, !tbaa !76
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !70, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 251, ptr %file) #6, !dbg !81
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !71, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 11, ptr %linenum) #6, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %linenum, metadata !72, metadata !DIExpression()), !dbg !84
  %0 = load ptr, ptr @refsfound, align 8, !dbg !85, !tbaa !87
  %cmp = icmp eq ptr %0, null, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !91

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4, !dbg !93, !tbaa !76
  %2 = load i32, ptr @topline, align 4, !dbg !94, !tbaa !76
  %add = add i32 %1, %2, !dbg !95
  call void @seekline(i32 noundef %add), !dbg !96
  %3 = load ptr, ptr @refsfound, align 8, !dbg !97, !tbaa !87
  %arraydecay = getelementptr inbounds [251 x i8], ptr %file, i64 0, i64 0, !dbg !99
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %linenum, i64 0, i64 0, !dbg !100
  %call = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %3, ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay1), !dbg !101
  %cmp2 = icmp eq i32 %call, 2, !dbg !102
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !103

if.then3:                                         ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [251 x i8], ptr %file, i64 0, i64 0, !dbg !104
  %arraydecay5 = getelementptr inbounds [11 x i8], ptr %linenum, i64 0, i64 0, !dbg !106
  call void @edit(ptr noundef %arraydecay4, ptr noundef %arraydecay5), !dbg !107
  br label %if.end6, !dbg !108

if.end6:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr @topline, align 4, !dbg !109, !tbaa !76
  call void @seekline(i32 noundef %4), !dbg !110
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !111
  br label %cleanup, !dbg !111

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 11, ptr %linenum) #6, !dbg !111
  call void @llvm.lifetime.end.p0(i64 251, ptr %file) #6, !dbg !111
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !111

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !112 void @seekline(i32 noundef) #2

declare !dbg !115 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local void @edit(ptr noundef %file, ptr noundef %linenum) #0 !dbg !182 {
entry:
  %file.addr = alloca ptr, align 8
  %linenum.addr = alloca ptr, align 8
  %msg = alloca [331 x i8], align 16
  %plusnum = alloca [30 x i8], align 16
  %s = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !186, metadata !DIExpression()), !dbg !197
  store ptr %linenum, ptr %linenum.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %linenum.addr, metadata !187, metadata !DIExpression()), !dbg !198
  call void @llvm.lifetime.start.p0(i64 331, ptr %msg) #6, !dbg !199
  tail call void @llvm.dbg.declare(metadata ptr %msg, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 30, ptr %plusnum) #6, !dbg !201
  tail call void @llvm.dbg.declare(metadata ptr %plusnum, metadata !192, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !196, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %file.addr, align 8, !dbg !205, !tbaa !87
  %call = call ptr @filepath(ptr noundef %0), !dbg !206
  store ptr %call, ptr %file.addr, align 8, !dbg !207, !tbaa !87
  %arraydecay = getelementptr inbounds [331 x i8], ptr %msg, i64 0, i64 0, !dbg !208
  %1 = load ptr, ptr @editor, align 8, !dbg !209, !tbaa !87
  %call1 = call ptr @mybasename(ptr noundef %1), !dbg !210
  %2 = load ptr, ptr %linenum.addr, align 8, !dbg !211, !tbaa !87
  %3 = load ptr, ptr %file.addr, align 8, !dbg !212, !tbaa !87
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 331, ptr noundef @.str.3, ptr noundef %call1, ptr noundef %2, ptr noundef %3) #6, !dbg !213
  %arraydecay3 = getelementptr inbounds [331 x i8], ptr %msg, i64 0, i64 0, !dbg !214
  call void @postmsg(ptr noundef %arraydecay3), !dbg !215
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %plusnum, i64 0, i64 0, !dbg !216
  %4 = load ptr, ptr @lineflag, align 8, !dbg !217, !tbaa !87
  %5 = load ptr, ptr %linenum.addr, align 8, !dbg !218, !tbaa !87
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay4, i64 noundef 30, ptr noundef %4, ptr noundef %5) #6, !dbg !219
  %6 = load ptr, ptr @editor, align 8, !dbg !220, !tbaa !87
  %call6 = call ptr @mybasename(ptr noundef %6), !dbg !222
  store ptr %call6, ptr %s, align 8, !dbg !223, !tbaa !87
  %call7 = call i32 @strcmp(ptr noundef %call6, ptr noundef @.str.4) #7, !dbg !224
  %cmp = icmp eq i32 %call7, 0, !dbg !225
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !226

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %s, align 8, !dbg !227, !tbaa !87
  %call8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.5) #7, !dbg !228
  %cmp9 = icmp eq i32 %call8, 0, !dbg !229
  br i1 %cmp9, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr @editor, align 8, !dbg !231, !tbaa !87
  %9 = load ptr, ptr @editor, align 8, !dbg !233, !tbaa !87
  %arraydecay10 = getelementptr inbounds [30 x i8], ptr %plusnum, i64 0, i64 0, !dbg !234
  %10 = load ptr, ptr %file.addr, align 8, !dbg !235, !tbaa !87
  %call11 = call i32 (ptr, ...) @execute(ptr noundef %8, ptr noundef %9, ptr noundef %arraydecay10, ptr noundef %10, ptr noundef @.str.6, ptr noundef null), !dbg !236
  br label %if.end18, !dbg !237

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, ptr @lineflagafterfile, align 4, !dbg !238, !tbaa !240
  %tobool = icmp ne i32 %11, 0, !dbg !238
  br i1 %tobool, label %if.then12, label %if.else15, !dbg !241

if.then12:                                        ; preds = %if.else
  %12 = load ptr, ptr @editor, align 8, !dbg !242, !tbaa !87
  %13 = load ptr, ptr @editor, align 8, !dbg !244, !tbaa !87
  %14 = load ptr, ptr %file.addr, align 8, !dbg !245, !tbaa !87
  %arraydecay13 = getelementptr inbounds [30 x i8], ptr %plusnum, i64 0, i64 0, !dbg !246
  %call14 = call i32 (ptr, ...) @execute(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %arraydecay13, ptr noundef null), !dbg !247
  br label %if.end, !dbg !248

if.else15:                                        ; preds = %if.else
  %15 = load ptr, ptr @editor, align 8, !dbg !249, !tbaa !87
  %16 = load ptr, ptr @editor, align 8, !dbg !251, !tbaa !87
  %arraydecay16 = getelementptr inbounds [30 x i8], ptr %plusnum, i64 0, i64 0, !dbg !252
  %17 = load ptr, ptr %file.addr, align 8, !dbg !253, !tbaa !87
  %call17 = call i32 (ptr, ...) @execute(ptr noundef %15, ptr noundef %16, ptr noundef %arraydecay16, ptr noundef %17, ptr noundef null), !dbg !254
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %18 = load ptr, ptr @stdscr, align 8, !dbg !255, !tbaa !87
  %call19 = call i32 @wclear(ptr noundef %18), !dbg !255
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6, !dbg !256
  call void @llvm.lifetime.end.p0(i64 30, ptr %plusnum) #6, !dbg !256
  call void @llvm.lifetime.end.p0(i64 331, ptr %msg) #6, !dbg !256
  ret void, !dbg !256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @editall() #0 !dbg !257 {
entry:
  %file = alloca [251 x i8], align 16
  %linenum = alloca [11 x i8], align 1
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 251, ptr %file) #6, !dbg !264
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 11, ptr %linenum) #6, !dbg !266
  tail call void @llvm.dbg.declare(metadata ptr %linenum, metadata !262, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6, !dbg !268
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !263, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr @refsfound, align 8, !dbg !270, !tbaa !87
  %cmp = icmp eq ptr %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

if.end:                                           ; preds = %entry
  call void @seekline(i32 noundef 1), !dbg !276
  br label %while.cond, !dbg !277

while.cond:                                       ; preds = %if.end15, %if.end
  %1 = load ptr, ptr @refsfound, align 8, !dbg !278, !tbaa !87
  %arraydecay = getelementptr inbounds [251 x i8], ptr %file, i64 0, i64 0, !dbg !279
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %linenum, i64 0, i64 0, !dbg !280
  %call = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %arraydecay, ptr noundef %arraydecay1), !dbg !281
  %cmp2 = icmp eq i32 %call, 2, !dbg !282
  br i1 %cmp2, label %while.body, label %while.end, !dbg !277

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [251 x i8], ptr %file, i64 0, i64 0, !dbg !283
  %arraydecay4 = getelementptr inbounds [11 x i8], ptr %linenum, i64 0, i64 0, !dbg !285
  call void @edit(ptr noundef %arraydecay3, ptr noundef %arraydecay4), !dbg !286
  %2 = load i32, ptr @editallprompt, align 4, !dbg !287, !tbaa !240
  %cmp5 = icmp eq i32 %2, 1, !dbg !289
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !290

if.then6:                                         ; preds = %while.body
  %3 = load ptr, ptr @stdscr, align 8, !dbg !291, !tbaa !87
  %call7 = call i32 @waddnstr(ptr noundef %3, ptr noundef @.str.2, i32 noundef -1), !dbg !291
  %call8 = call i32 @mygetch(), !dbg !293
  store i32 %call8, ptr %c, align 4, !dbg !295, !tbaa !76
  %cmp9 = icmp eq i32 %call8, -1, !dbg !296
  br i1 %cmp9, label %if.then13, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %if.then6
  %4 = load i32, ptr %c, align 4, !dbg !298, !tbaa !76
  %cmp10 = icmp eq i32 %4, 4, !dbg !299
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11, !dbg !300

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %5 = load i32, ptr %c, align 4, !dbg !301, !tbaa !76
  %cmp12 = icmp eq i32 %5, 26, !dbg !302
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !303

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false, %if.then6
  br label %while.end, !dbg !304

if.end14:                                         ; preds = %lor.lhs.false11
  br label %if.end15, !dbg !306

if.end15:                                         ; preds = %if.end14, %while.body
  br label %while.cond, !dbg !277, !llvm.loop !307

while.end:                                        ; preds = %if.then13, %while.cond
  %6 = load i32, ptr @topline, align 4, !dbg !310, !tbaa !76
  call void @seekline(i32 noundef %6), !dbg !311
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !312
  br label %cleanup, !dbg !312

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6, !dbg !312
  call void @llvm.lifetime.end.p0(i64 11, ptr %linenum) #6, !dbg !312
  call void @llvm.lifetime.end.p0(i64 251, ptr %file) #6, !dbg !312
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !312

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !313 i32 @waddnstr(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !372 i32 @mygetch() #2

; Function Attrs: nounwind uwtable
define dso_local ptr @filepath(ptr noundef %file) #0 !dbg !33 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !54, metadata !DIExpression()), !dbg !375
  %0 = load ptr, ptr @prependpath, align 8, !dbg !376, !tbaa !87
  %cmp = icmp ne ptr %0, null, !dbg !378
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !379

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %file.addr, align 8, !dbg !380, !tbaa !87
  %2 = load i8, ptr %1, align 1, !dbg !381, !tbaa !240
  %conv = sext i8 %2 to i32, !dbg !381
  %cmp1 = icmp ne i32 %conv, 47, !dbg !382
  br i1 %cmp1, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @prependpath, align 8, !dbg !384, !tbaa !87
  %4 = load ptr, ptr %file.addr, align 8, !dbg !386, !tbaa !87
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @filepath.path, i64 noundef 251, ptr noundef @.str.7, ptr noundef %3, ptr noundef %4) #6, !dbg !387
  store ptr @filepath.path, ptr %file.addr, align 8, !dbg !388, !tbaa !87
  br label %if.end, !dbg !389

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %file.addr, align 8, !dbg !390, !tbaa !87
  ret ptr %5, !dbg !391
}

; Function Attrs: nounwind
declare !dbg !392 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare !dbg !396 ptr @mybasename(ptr noundef) #2

declare !dbg !398 void @postmsg(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !401 i32 @strcmp(ptr noundef, ptr noundef) #4

declare !dbg !405 i32 @execute(ptr noundef, ...) #2

declare !dbg !408 i32 @wclear(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!37}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "edit.c", directory: "/local-ssd/cscope-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit-build/aidengro/spack-stage-cscope-15.9-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit/spack-src/src", checksumkind: CSK_MD5, checksum: "79f75ec91774125ecf8ef995da7edfe8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 19)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 72)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 5)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !19, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "path", scope: !33, file: !2, line: 130, type: !55, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "filepath", scope: !2, file: !2, line: 128, type: !34, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !53)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !45, globals: !47, splitDebugInlining: false, nameTableKind: None)
!38 = !{!39}
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 184, baseType: !41, size: 32, elements: !42)
!40 = !DIFile(filename: "./global.h", directory: "/local-ssd/cscope-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit-build/aidengro/spack-stage-cscope-15.9-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit/spack-src/src", checksumkind: CSK_MD5, checksum: "4b51da57d63cc7ebd02ba5216506bb3c")
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "NO", value: 0)
!44 = !DIEnumerator(name: "YES", value: 1)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !{!0, !7, !12, !17, !22, !27, !29, !31, !48}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 6)
!53 = !{!54}
!54 = !DILocalVariable(name: "file", arg: 1, scope: !33, file: !2, line: 128, type: !36)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2008, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 251)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{i32 7, !"uwtable", i32 2}
!64 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!65 = distinct !DISubprogram(name: "editref", scope: !2, file: !2, line: 48, type: !66, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !69)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(name: "i", arg: 1, scope: !65, file: !2, line: 48, type: !68)
!71 = !DILocalVariable(name: "file", scope: !65, file: !2, line: 50, type: !55)
!72 = !DILocalVariable(name: "linenum", scope: !65, file: !2, line: 51, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 11)
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !DILocation(line: 48, column: 13, scope: !65)
!81 = !DILocation(line: 50, column: 2, scope: !65)
!82 = !DILocation(line: 50, column: 7, scope: !65)
!83 = !DILocation(line: 51, column: 2, scope: !65)
!84 = !DILocation(line: 51, column: 7, scope: !65)
!85 = !DILocation(line: 54, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !65, file: !2, line: 54, column: 6)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !78, i64 0}
!89 = !DILocation(line: 54, column: 16, scope: !86)
!90 = !DILocation(line: 54, column: 6, scope: !65)
!91 = !DILocation(line: 55, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !86, file: !2, line: 54, column: 25)
!93 = !DILocation(line: 58, column: 11, scope: !65)
!94 = !DILocation(line: 58, column: 15, scope: !65)
!95 = !DILocation(line: 58, column: 13, scope: !65)
!96 = !DILocation(line: 58, column: 2, scope: !65)
!97 = !DILocation(line: 61, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !65, file: !2, line: 61, column: 6)
!99 = !DILocation(line: 61, column: 64, scope: !98)
!100 = !DILocation(line: 61, column: 70, scope: !98)
!101 = !DILocation(line: 61, column: 6, scope: !98)
!102 = !DILocation(line: 61, column: 79, scope: !98)
!103 = !DILocation(line: 61, column: 6, scope: !65)
!104 = !DILocation(line: 62, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !2, line: 61, column: 85)
!106 = !DILocation(line: 62, column: 14, scope: !105)
!107 = !DILocation(line: 62, column: 3, scope: !105)
!108 = !DILocation(line: 63, column: 2, scope: !105)
!109 = !DILocation(line: 64, column: 11, scope: !65)
!110 = !DILocation(line: 64, column: 2, scope: !65)
!111 = !DILocation(line: 65, column: 1, scope: !65)
!112 = !DISubprogram(name: "seekline", scope: !40, file: !40, line: 391, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !41}
!115 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !116, file: !116, line: 434, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!117 = !DISubroutineType(types: !118)
!118 = !{!68, !119, !179, null}
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !122, line: 7, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !124, line: 49, size: 1728, elements: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !141, !143, !144, !145, !149, !151, !153, !157, !160, !162, !165, !168, !169, !170, !174, !175}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !123, file: !124, line: 51, baseType: !68, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !123, file: !124, line: 54, baseType: !36, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !123, file: !124, line: 55, baseType: !36, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !123, file: !124, line: 56, baseType: !36, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !123, file: !124, line: 57, baseType: !36, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !123, file: !124, line: 58, baseType: !36, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !123, file: !124, line: 59, baseType: !36, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !123, file: !124, line: 60, baseType: !36, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !123, file: !124, line: 61, baseType: !36, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !123, file: !124, line: 64, baseType: !36, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !123, file: !124, line: 65, baseType: !36, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !123, file: !124, line: 66, baseType: !36, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !123, file: !124, line: 68, baseType: !139, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !124, line: 36, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !123, file: !124, line: 70, baseType: !142, size: 64, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !123, file: !124, line: 72, baseType: !68, size: 32, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !123, file: !124, line: 73, baseType: !68, size: 32, offset: 928)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !123, file: !124, line: 74, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !147, line: 152, baseType: !148)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!148 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !123, file: !124, line: 77, baseType: !150, size: 16, offset: 1024)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !123, file: !124, line: 78, baseType: !152, size: 8, offset: 1040)
!152 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !123, file: !124, line: 79, baseType: !154, size: 8, offset: 1048)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 1)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !123, file: !124, line: 81, baseType: !158, size: 64, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !124, line: 43, baseType: null)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !123, file: !124, line: 89, baseType: !161, size: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !147, line: 153, baseType: !148)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !123, file: !124, line: 91, baseType: !163, size: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !124, line: 37, flags: DIFlagFwdDecl)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !123, file: !124, line: 92, baseType: !166, size: 64, offset: 1280)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !124, line: 38, flags: DIFlagFwdDecl)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !123, file: !124, line: 93, baseType: !142, size: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !123, file: !124, line: 94, baseType: !46, size: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !123, file: !124, line: 95, baseType: !171, size: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 70, baseType: !173)
!172 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!173 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !123, file: !124, line: 96, baseType: !68, size: 32, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !123, file: !124, line: 98, baseType: !176, size: 160, offset: 1568)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 20)
!179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!182 = distinct !DISubprogram(name: "edit", scope: !2, file: !2, line: 99, type: !183, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !36, !36}
!185 = !{!186, !187, !188, !192, !196}
!186 = !DILocalVariable(name: "file", arg: 1, scope: !182, file: !2, line: 99, type: !36)
!187 = !DILocalVariable(name: "linenum", arg: 2, scope: !182, file: !2, line: 99, type: !36)
!188 = !DILocalVariable(name: "msg", scope: !182, file: !2, line: 101, type: !189)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2648, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 331)
!192 = !DILocalVariable(name: "plusnum", scope: !182, file: !2, line: 102, type: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 30)
!196 = !DILocalVariable(name: "s", scope: !182, file: !2, line: 103, type: !36)
!197 = !DILocation(line: 99, column: 12, scope: !182)
!198 = !DILocation(line: 99, column: 24, scope: !182)
!199 = !DILocation(line: 101, column: 2, scope: !182)
!200 = !DILocation(line: 101, column: 7, scope: !182)
!201 = !DILocation(line: 102, column: 2, scope: !182)
!202 = !DILocation(line: 102, column: 7, scope: !182)
!203 = !DILocation(line: 103, column: 2, scope: !182)
!204 = !DILocation(line: 103, column: 8, scope: !182)
!205 = !DILocation(line: 105, column: 18, scope: !182)
!206 = !DILocation(line: 105, column: 9, scope: !182)
!207 = !DILocation(line: 105, column: 7, scope: !182)
!208 = !DILocation(line: 106, column: 18, scope: !182)
!209 = !DILocation(line: 106, column: 60, scope: !182)
!210 = !DILocation(line: 106, column: 49, scope: !182)
!211 = !DILocation(line: 106, column: 69, scope: !182)
!212 = !DILocation(line: 106, column: 78, scope: !182)
!213 = !DILocation(line: 106, column: 9, scope: !182)
!214 = !DILocation(line: 107, column: 10, scope: !182)
!215 = !DILocation(line: 107, column: 2, scope: !182)
!216 = !DILocation(line: 108, column: 18, scope: !182)
!217 = !DILocation(line: 108, column: 44, scope: !182)
!218 = !DILocation(line: 108, column: 54, scope: !182)
!219 = !DILocation(line: 108, column: 9, scope: !182)
!220 = !DILocation(line: 110, column: 28, scope: !221)
!221 = distinct !DILexicalBlock(scope: !182, file: !2, line: 110, column: 6)
!222 = !DILocation(line: 110, column: 17, scope: !221)
!223 = !DILocation(line: 110, column: 15, scope: !221)
!224 = !DILocation(line: 110, column: 6, scope: !221)
!225 = !DILocation(line: 110, column: 45, scope: !221)
!226 = !DILocation(line: 110, column: 50, scope: !221)
!227 = !DILocation(line: 110, column: 60, scope: !221)
!228 = !DILocation(line: 110, column: 53, scope: !221)
!229 = !DILocation(line: 110, column: 71, scope: !221)
!230 = !DILocation(line: 110, column: 6, scope: !182)
!231 = !DILocation(line: 114, column: 18, scope: !232)
!232 = distinct !DILexicalBlock(scope: !221, file: !2, line: 110, column: 77)
!233 = !DILocation(line: 114, column: 26, scope: !232)
!234 = !DILocation(line: 114, column: 34, scope: !232)
!235 = !DILocation(line: 114, column: 43, scope: !232)
!236 = !DILocation(line: 114, column: 10, scope: !232)
!237 = !DILocation(line: 115, column: 2, scope: !232)
!238 = !DILocation(line: 116, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !221, file: !2, line: 116, column: 11)
!240 = !{!78, !78, i64 0}
!241 = !DILocation(line: 116, column: 11, scope: !221)
!242 = !DILocation(line: 117, column: 18, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !2, line: 116, column: 30)
!244 = !DILocation(line: 117, column: 26, scope: !243)
!245 = !DILocation(line: 117, column: 34, scope: !243)
!246 = !DILocation(line: 117, column: 40, scope: !243)
!247 = !DILocation(line: 117, column: 10, scope: !243)
!248 = !DILocation(line: 118, column: 2, scope: !243)
!249 = !DILocation(line: 120, column: 18, scope: !250)
!250 = distinct !DILexicalBlock(scope: !239, file: !2, line: 119, column: 7)
!251 = !DILocation(line: 120, column: 26, scope: !250)
!252 = !DILocation(line: 120, column: 34, scope: !250)
!253 = !DILocation(line: 120, column: 43, scope: !250)
!254 = !DILocation(line: 120, column: 10, scope: !250)
!255 = !DILocation(line: 122, column: 2, scope: !182)
!256 = !DILocation(line: 123, column: 1, scope: !182)
!257 = distinct !DISubprogram(name: "editall", scope: !2, file: !2, line: 70, type: !258, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null}
!260 = !{!261, !262, !263}
!261 = !DILocalVariable(name: "file", scope: !257, file: !2, line: 72, type: !55)
!262 = !DILocalVariable(name: "linenum", scope: !257, file: !2, line: 73, type: !73)
!263 = !DILocalVariable(name: "c", scope: !257, file: !2, line: 74, type: !68)
!264 = !DILocation(line: 72, column: 2, scope: !257)
!265 = !DILocation(line: 72, column: 7, scope: !257)
!266 = !DILocation(line: 73, column: 2, scope: !257)
!267 = !DILocation(line: 73, column: 7, scope: !257)
!268 = !DILocation(line: 74, column: 2, scope: !257)
!269 = !DILocation(line: 74, column: 6, scope: !257)
!270 = !DILocation(line: 77, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !257, file: !2, line: 77, column: 6)
!272 = !DILocation(line: 77, column: 16, scope: !271)
!273 = !DILocation(line: 77, column: 6, scope: !257)
!274 = !DILocation(line: 78, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !2, line: 77, column: 25)
!276 = !DILocation(line: 81, column: 2, scope: !257)
!277 = !DILocation(line: 84, column: 2, scope: !257)
!278 = !DILocation(line: 84, column: 16, scope: !257)
!279 = !DILocation(line: 84, column: 74, scope: !257)
!280 = !DILocation(line: 84, column: 80, scope: !257)
!281 = !DILocation(line: 84, column: 9, scope: !257)
!282 = !DILocation(line: 84, column: 89, scope: !257)
!283 = !DILocation(line: 85, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !257, file: !2, line: 84, column: 95)
!285 = !DILocation(line: 85, column: 14, scope: !284)
!286 = !DILocation(line: 85, column: 3, scope: !284)
!287 = !DILocation(line: 86, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !2, line: 86, column: 7)
!289 = !DILocation(line: 86, column: 21, scope: !288)
!290 = !DILocation(line: 86, column: 7, scope: !284)
!291 = !DILocation(line: 87, column: 4, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !2, line: 86, column: 29)
!293 = !DILocation(line: 88, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !2, line: 88, column: 8)
!295 = !DILocation(line: 88, column: 11, scope: !294)
!296 = !DILocation(line: 88, column: 24, scope: !294)
!297 = !DILocation(line: 88, column: 31, scope: !294)
!298 = !DILocation(line: 88, column: 34, scope: !294)
!299 = !DILocation(line: 88, column: 36, scope: !294)
!300 = !DILocation(line: 88, column: 49, scope: !294)
!301 = !DILocation(line: 88, column: 52, scope: !294)
!302 = !DILocation(line: 88, column: 54, scope: !294)
!303 = !DILocation(line: 88, column: 8, scope: !292)
!304 = !DILocation(line: 89, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !294, file: !2, line: 88, column: 68)
!306 = !DILocation(line: 91, column: 3, scope: !292)
!307 = distinct !{!307, !277, !308, !309}
!308 = !DILocation(line: 92, column: 2, scope: !257)
!309 = !{!"llvm.loop.mustprogress"}
!310 = !DILocation(line: 93, column: 11, scope: !257)
!311 = !DILocation(line: 93, column: 2, scope: !257)
!312 = !DILocation(line: 94, column: 1, scope: !257)
!313 = !DISubprogram(name: "waddnstr", scope: !314, file: !314, line: 830, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_/linux-ubuntu22.04-zen2/clang-18.0.0/ncurses-6.4-jlkrbksyubm34wnozn3xut2doziaj6o6/include/curses.h", directory: "/local-ssd/cscope-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit-build", checksumkind: CSK_MD5, checksum: "0959b6ec00a17e3e4dd0e23c777211fc")
!315 = !DISubroutineType(types: !316)
!316 = !{!68, !317, !180, !68}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW", file: !314, line: 442, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_win_st", file: !314, line: 491, size: 960, elements: !320)
!320 = !{!321, !323, !324, !325, !326, !327, !328, !329, !332, !333, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !347, !348, !349, !350, !351, !352, !361, !362, !371}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_cury", scope: !319, file: !314, line: 493, baseType: !322, size: 16)
!322 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_curx", scope: !319, file: !314, line: 493, baseType: !322, size: 16, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_maxy", scope: !319, file: !314, line: 496, baseType: !322, size: 16, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_maxx", scope: !319, file: !314, line: 496, baseType: !322, size: 16, offset: 48)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_begy", scope: !319, file: !314, line: 497, baseType: !322, size: 16, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_begx", scope: !319, file: !314, line: 497, baseType: !322, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !319, file: !314, line: 499, baseType: !322, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_attrs", scope: !319, file: !314, line: 502, baseType: !330, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "attr_t", file: !314, line: 444, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "chtype", file: !314, line: 222, baseType: !41)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_bkgd", scope: !319, file: !314, line: 503, baseType: !331, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_notimeout", scope: !319, file: !314, line: 506, baseType: !334, size: 8, offset: 192)
!334 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_clear", scope: !319, file: !314, line: 507, baseType: !334, size: 8, offset: 200)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_leaveok", scope: !319, file: !314, line: 508, baseType: !334, size: 8, offset: 208)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_scroll", scope: !319, file: !314, line: 509, baseType: !334, size: 8, offset: 216)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_idlok", scope: !319, file: !314, line: 510, baseType: !334, size: 8, offset: 224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_idcok", scope: !319, file: !314, line: 511, baseType: !334, size: 8, offset: 232)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_immed", scope: !319, file: !314, line: 512, baseType: !334, size: 8, offset: 240)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !319, file: !314, line: 513, baseType: !334, size: 8, offset: 248)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_use_keypad", scope: !319, file: !314, line: 514, baseType: !334, size: 8, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_delay", scope: !319, file: !314, line: 515, baseType: !68, size: 32, offset: 288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_line", scope: !319, file: !314, line: 517, baseType: !345, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldat", file: !314, line: 489, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_regtop", scope: !319, file: !314, line: 520, baseType: !322, size: 16, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_regbottom", scope: !319, file: !314, line: 521, baseType: !322, size: 16, offset: 400)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_parx", scope: !319, file: !314, line: 524, baseType: !68, size: 32, offset: 416)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_pary", scope: !319, file: !314, line: 525, baseType: !68, size: 32, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_parent", scope: !319, file: !314, line: 526, baseType: !317, size: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !319, file: !314, line: 534, baseType: !353, size: 96, offset: 576)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdat", file: !314, line: 529, size: 96, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_y", scope: !353, file: !314, line: 531, baseType: !322, size: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_x", scope: !353, file: !314, line: 531, baseType: !322, size: 16, offset: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_top", scope: !353, file: !314, line: 532, baseType: !322, size: 16, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_left", scope: !353, file: !314, line: 532, baseType: !322, size: 16, offset: 48)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_bottom", scope: !353, file: !314, line: 533, baseType: !322, size: 16, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_right", scope: !353, file: !314, line: 533, baseType: !322, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_yoffset", scope: !319, file: !314, line: 536, baseType: !322, size: 16, offset: 672)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_bkgrnd", scope: !319, file: !314, line: 539, baseType: !363, size: 224, offset: 704)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "cchar_t", file: !314, line: 484, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 474, size: 224, elements: !365)
!365 = !{!366, !367, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !364, file: !314, line: 476, baseType: !330, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "chars", scope: !364, file: !314, line: 477, baseType: !368, size: 160, offset: 32)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 160, elements: !25)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !172, line: 96, baseType: !68)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ext_color", scope: !364, file: !314, line: 481, baseType: !68, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_color", scope: !319, file: !314, line: 541, baseType: !68, size: 32, offset: 928)
!372 = !DISubprogram(name: "mygetch", scope: !40, file: !40, line: 413, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!68}
!375 = !DILocation(line: 128, column: 16, scope: !33)
!376 = !DILocation(line: 132, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !33, file: !2, line: 132, column: 6)
!378 = !DILocation(line: 132, column: 18, scope: !377)
!379 = !DILocation(line: 132, column: 26, scope: !377)
!380 = !DILocation(line: 132, column: 30, scope: !377)
!381 = !DILocation(line: 132, column: 29, scope: !377)
!382 = !DILocation(line: 132, column: 35, scope: !377)
!383 = !DILocation(line: 132, column: 6, scope: !33)
!384 = !DILocation(line: 133, column: 48, scope: !385)
!385 = distinct !DILexicalBlock(scope: !377, file: !2, line: 132, column: 43)
!386 = !DILocation(line: 133, column: 61, scope: !385)
!387 = !DILocation(line: 133, column: 10, scope: !385)
!388 = !DILocation(line: 134, column: 8, scope: !385)
!389 = !DILocation(line: 135, column: 2, scope: !385)
!390 = !DILocation(line: 136, column: 9, scope: !33)
!391 = !DILocation(line: 136, column: 2, scope: !33)
!392 = !DISubprogram(name: "snprintf", scope: !116, file: !116, line: 378, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!68, !395, !171, !179, null}
!395 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!396 = !DISubprogram(name: "mybasename", scope: !397, file: !397, line: 42, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DIFile(filename: "./library.h", directory: "/local-ssd/cscope-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit-build/aidengro/spack-stage-cscope-15.9-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit/spack-src/src", checksumkind: CSK_MD5, checksum: "0db8b799c92e2b9702193517cfa4629d")
!398 = !DISubprogram(name: "postmsg", scope: !40, file: !40, line: 384, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !36}
!401 = !DISubprogram(name: "strcmp", scope: !402, file: !402, line: 156, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!403 = !DISubroutineType(types: !404)
!404 = !{!68, !180, !180}
!405 = !DISubprogram(name: "execute", scope: !40, file: !40, line: 415, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!68, !36, null}
!408 = !DISubprogram(name: "wclear", scope: !314, file: !314, line: 843, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubroutineType(types: !410)
!410 = !{!68, !317}
