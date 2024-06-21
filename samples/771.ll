; ModuleID = 'samples/771.bc'
source_filename = "nasmlib/path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define hidden noalias nonnull ptr @nasm_basename(ptr noundef %path) #0 !dbg !18 {
entry:
  %path.addr = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !25, metadata !DIExpression()), !dbg !30
  %0 = load ptr, ptr %path.addr, align 8, !dbg !31, !tbaa !26
  %call = call ptr @first_filename_char(ptr noundef %0), !dbg !32
  %call1 = call noalias nonnull ptr @nasm_strdup(ptr noundef %call), !dbg !33
  ret ptr %call1, !dbg !34
}

declare !dbg !35 noalias nonnull ptr @nasm_strdup(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @first_filename_char(ptr noundef %path) #0 !dbg !37 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !44
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !42, metadata !DIExpression()), !dbg !45
  store ptr null, ptr %p, align 8, !dbg !45, !annotation !46
  %0 = load ptr, ptr %path.addr, align 8, !dbg !47, !tbaa !26
  %1 = load ptr, ptr %path.addr, align 8, !dbg !48, !tbaa !26
  %call = call i64 @strlen(ptr noundef %1) #9, !dbg !49
  %add.ptr = getelementptr i8, ptr %0, i64 %call, !dbg !50
  store ptr %add.ptr, ptr %p, align 8, !dbg !45, !tbaa !26
  br label %while.cond, !dbg !51

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %p, align 8, !dbg !52, !tbaa !26
  %3 = load ptr, ptr %path.addr, align 8, !dbg !53, !tbaa !26
  %cmp = icmp ugt ptr %2, %3, !dbg !54
  br i1 %cmp, label %while.body, label %while.end, !dbg !51

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %p, align 8, !dbg !55, !tbaa !26
  %arrayidx = getelementptr i8, ptr %4, i64 -1, !dbg !55
  %5 = load i8, ptr %arrayidx, align 1, !dbg !55, !tbaa !58
  %call1 = call zeroext i1 @ismatch(ptr noundef @.str.1, i8 noundef signext %5), !dbg !59
  br i1 %call1, label %if.then, label %if.end, !dbg !60

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %p, align 8, !dbg !61, !tbaa !26
  store ptr %6, ptr %retval, align 8, !dbg !62
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !62

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %p, align 8, !dbg !63, !tbaa !26
  %incdec.ptr = getelementptr i8, ptr %7, i32 -1, !dbg !63
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !63, !tbaa !26
  br label %while.cond, !dbg !51, !llvm.loop !64

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %p, align 8, !dbg !67, !tbaa !26
  store ptr %8, ptr %retval, align 8, !dbg !68
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !68

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !69
  %9 = load ptr, ptr %retval, align 8, !dbg !69
  ret ptr %9, !dbg !69
}

; Function Attrs: nounwind uwtable
define hidden noalias nonnull ptr @nasm_dirname(ptr noundef %path) #0 !dbg !70 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p0 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !72, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !76
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !73, metadata !DIExpression()), !dbg !77
  store ptr null, ptr %p, align 8, !dbg !77, !annotation !46
  %0 = load ptr, ptr %path.addr, align 8, !dbg !78, !tbaa !26
  %call = call ptr @first_filename_char(ptr noundef %0), !dbg !79
  store ptr %call, ptr %p, align 8, !dbg !77, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %p0) #8, !dbg !80
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !74, metadata !DIExpression()), !dbg !81
  store ptr null, ptr %p0, align 8, !dbg !81, !annotation !46
  %1 = load ptr, ptr %p, align 8, !dbg !82, !tbaa !26
  store ptr %1, ptr %p0, align 8, !dbg !81, !tbaa !26
  %2 = load ptr, ptr %p0, align 8, !dbg !83, !tbaa !26
  %3 = load ptr, ptr %p, align 8, !dbg !84, !tbaa !26
  %4 = load ptr, ptr %path.addr, align 8, !dbg !86, !tbaa !26
  %cmp = icmp eq ptr %3, %4, !dbg !87
  br i1 %cmp, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  %call1 = call noalias nonnull ptr @nasm_strdup(ptr noundef @.str), !dbg !89
  store ptr %call1, ptr %retval, align 8, !dbg !90
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !90

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !91

while.cond:                                       ; preds = %if.end5, %if.end
  %5 = load ptr, ptr %p, align 8, !dbg !92, !tbaa !26
  %6 = load ptr, ptr %path.addr, align 8, !dbg !93, !tbaa !26
  %add.ptr = getelementptr i8, ptr %6, i64 1, !dbg !94
  %cmp2 = icmp ugt ptr %5, %add.ptr, !dbg !95
  br i1 %cmp2, label %while.body, label %while.end, !dbg !91

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %p, align 8, !dbg !96, !tbaa !26
  %arrayidx = getelementptr i8, ptr %7, i64 -1, !dbg !96
  %8 = load i8, ptr %arrayidx, align 1, !dbg !96, !tbaa !58
  %call3 = call zeroext i1 @ismatch(ptr noundef @.str.1, i8 noundef signext %8), !dbg !99
  br i1 %call3, label %if.then4, label %if.end5, !dbg !100

if.then4:                                         ; preds = %while.body
  br label %while.end, !dbg !101

if.end5:                                          ; preds = %while.body
  %9 = load ptr, ptr %p, align 8, !dbg !102, !tbaa !26
  %incdec.ptr = getelementptr i8, ptr %9, i32 -1, !dbg !102
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !102, !tbaa !26
  br label %while.cond, !dbg !91, !llvm.loop !103

while.end:                                        ; preds = %if.then4, %while.cond
  %10 = load ptr, ptr %path.addr, align 8, !dbg !105, !tbaa !26
  %11 = load ptr, ptr %p, align 8, !dbg !106, !tbaa !26
  %12 = load ptr, ptr %path.addr, align 8, !dbg !107, !tbaa !26
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64, !dbg !108
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64, !dbg !108
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !108
  %call6 = call noalias nonnull ptr @nasm_strndup(ptr noundef %10, i64 noundef %sub.ptr.sub), !dbg !109
  store ptr %call6, ptr %retval, align 8, !dbg !110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !110

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p0) #8, !dbg !111
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !111
  %13 = load ptr, ptr %retval, align 8, !dbg !111
  ret ptr %13, !dbg !111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @ismatch(ptr noundef %charset, i8 noundef signext %ch) #3 !dbg !112 {
entry:
  %retval = alloca i1, align 1
  %charset.addr = alloca ptr, align 8
  %ch.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %charset, ptr %charset.addr, align 8, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %charset.addr, metadata !117, metadata !DIExpression()), !dbg !120
  store i8 %ch, ptr %ch.addr, align 1, !tbaa !58
  tail call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !122
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !119, metadata !DIExpression()), !dbg !123
  store ptr null, ptr %p, align 8, !dbg !123, !annotation !46
  %0 = load ptr, ptr %charset.addr, align 8, !dbg !124, !tbaa !26
  store ptr %0, ptr %p, align 8, !dbg !126, !tbaa !26
  br label %for.cond, !dbg !127

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !128, !tbaa !26
  %2 = load i8, ptr %1, align 1, !dbg !130, !tbaa !58
  %tobool = icmp ne i8 %2, 0, !dbg !131
  br i1 %tobool, label %for.body, label %for.end, !dbg !131

for.body:                                         ; preds = %for.cond
  %3 = load i8, ptr %ch.addr, align 1, !dbg !132, !tbaa !58
  %conv = sext i8 %3 to i32, !dbg !132
  %4 = load ptr, ptr %p, align 8, !dbg !135, !tbaa !26
  %5 = load i8, ptr %4, align 1, !dbg !136, !tbaa !58
  %conv1 = sext i8 %5 to i32, !dbg !136
  %cmp = icmp eq i32 %conv, %conv1, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !139

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !140

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !141, !tbaa !26
  %incdec.ptr = getelementptr i8, ptr %6, i32 1, !dbg !141
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !141, !tbaa !26
  br label %for.cond, !dbg !142, !llvm.loop !143

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !146
  %7 = load i1, ptr %retval, align 1, !dbg !146
  ret i1 %7, !dbg !146
}

declare !dbg !147 noalias nonnull ptr @nasm_strndup(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define hidden noalias nonnull ptr @nasm_catfile(ptr noundef %dir, ptr noundef %file) #0 !dbg !153 {
entry:
  %dir.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %dl = alloca i64, align 8
  %fl = alloca i64, align 8
  %p = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %dosep = alloca i8, align 1
  store ptr %dir, ptr %dir.addr, align 8, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !157, metadata !DIExpression()), !dbg !164
  store ptr %file, ptr %file.addr, align 8, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !158, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 8, ptr %dl) #8, !dbg !166
  tail call void @llvm.dbg.declare(metadata ptr %dl, metadata !159, metadata !DIExpression()), !dbg !167
  store i64 0, ptr %dl, align 8, !dbg !167, !annotation !46
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !168, !tbaa !26
  %call = call i64 @strlen(ptr noundef %0) #9, !dbg !169
  store i64 %call, ptr %dl, align 8, !dbg !167, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %fl) #8, !dbg !172
  tail call void @llvm.dbg.declare(metadata ptr %fl, metadata !160, metadata !DIExpression()), !dbg !173
  store i64 0, ptr %fl, align 8, !dbg !173, !annotation !46
  %1 = load ptr, ptr %file.addr, align 8, !dbg !174, !tbaa !26
  %call1 = call i64 @strlen(ptr noundef %1) #9, !dbg !175
  store i64 %call1, ptr %fl, align 8, !dbg !173, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !176
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !161, metadata !DIExpression()), !dbg !177
  store ptr null, ptr %p, align 8, !dbg !177, !annotation !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #8, !dbg !176
  tail call void @llvm.dbg.declare(metadata ptr %pp, metadata !162, metadata !DIExpression()), !dbg !178
  store ptr null, ptr %pp, align 8, !dbg !178, !annotation !46
  call void @llvm.lifetime.start.p0(i64 1, ptr %dosep) #8, !dbg !179
  tail call void @llvm.dbg.declare(metadata ptr %dosep, metadata !163, metadata !DIExpression()), !dbg !180
  store i8 0, ptr %dosep, align 1, !dbg !180, !annotation !46
  store i8 1, ptr %dosep, align 1, !dbg !180, !tbaa !181
  %2 = load i64, ptr %dl, align 8, !dbg !183, !tbaa !170
  %tobool = icmp ne i64 %2, 0, !dbg !183
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !185

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %dir.addr, align 8, !dbg !186, !tbaa !26
  %4 = load i64, ptr %dl, align 8, !dbg !187, !tbaa !170
  %sub = sub i64 %4, 1, !dbg !188
  %arrayidx = getelementptr i8, ptr %3, i64 %sub, !dbg !186
  %5 = load i8, ptr %arrayidx, align 1, !dbg !186, !tbaa !58
  %call2 = call zeroext i1 @ismatch(ptr noundef @.str.1, i8 noundef signext %5), !dbg !189
  br i1 %call2, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, ptr %dosep, align 1, !dbg !191, !tbaa !181
  br label %if.end, !dbg !193

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i64, ptr %dl, align 8, !dbg !194, !tbaa !170
  %7 = load i64, ptr %fl, align 8, !dbg !195, !tbaa !170
  %add = add i64 %6, %7, !dbg !196
  %8 = load i8, ptr %dosep, align 1, !dbg !197, !tbaa !181, !range !198, !noundef !199
  %tobool3 = trunc i8 %8 to i1, !dbg !197
  %conv = zext i1 %tobool3 to i64, !dbg !197
  %add4 = add i64 %add, %conv, !dbg !200
  %add5 = add i64 %add4, 1, !dbg !201
  %call6 = call noalias nonnull ptr @nasm_malloc(i64 noundef %add5) #10, !dbg !202
  store ptr %call6, ptr %pp, align 8, !dbg !203, !tbaa !26
  store ptr %call6, ptr %p, align 8, !dbg !204, !tbaa !26
  %9 = load ptr, ptr %pp, align 8, !dbg !205, !tbaa !26
  %10 = load ptr, ptr %dir.addr, align 8, !dbg !206, !tbaa !26
  %11 = load i64, ptr %dl, align 8, !dbg !207, !tbaa !170
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %11, i1 false), !dbg !208
  %12 = load i64, ptr %dl, align 8, !dbg !209, !tbaa !170
  %13 = load ptr, ptr %pp, align 8, !dbg !210, !tbaa !26
  %add.ptr = getelementptr i8, ptr %13, i64 %12, !dbg !210
  store ptr %add.ptr, ptr %pp, align 8, !dbg !210, !tbaa !26
  %14 = load i8, ptr %dosep, align 1, !dbg !211, !tbaa !181, !range !198, !noundef !199
  %tobool7 = trunc i8 %14 to i1, !dbg !211
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !213

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr %pp, align 8, !dbg !214, !tbaa !26
  %incdec.ptr = getelementptr i8, ptr %15, i32 1, !dbg !214
  store ptr %incdec.ptr, ptr %pp, align 8, !dbg !214, !tbaa !26
  store i8 47, ptr %15, align 1, !dbg !215, !tbaa !58
  br label %if.end9, !dbg !216

if.end9:                                          ; preds = %if.then8, %if.end
  %16 = load ptr, ptr %pp, align 8, !dbg !217, !tbaa !26
  %17 = load ptr, ptr %file.addr, align 8, !dbg !218, !tbaa !26
  %18 = load i64, ptr %fl, align 8, !dbg !219, !tbaa !170
  %add10 = add i64 %18, 1, !dbg !220
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %add10, i1 false), !dbg !221
  %19 = load ptr, ptr %p, align 8, !dbg !222, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 1, ptr %dosep) #8, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #8, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %fl) #8, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %dl) #8, !dbg !223
  ret ptr %19, !dbg !224
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !225 i64 @strlen(ptr noundef) #4

; Function Attrs: allocsize(0)
declare !dbg !229 noalias nonnull ptr @nasm_malloc(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { allocsize(0) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "nasmlib/path.c", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "3ba9afd7746ffe9684b60e785068f21e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !3, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !10, splitDebugInlining: false, nameTableKind: None)
!10 = !{!0, !7}
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!18 = distinct !DISubprogram(name: "nasm_basename", scope: !2, file: !2, line: 123, type: !19, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !{!25}
!25 = !DILocalVariable(name: "path", arg: 1, scope: !18, file: !2, line: 123, type: !22)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 123, column: 33, scope: !18)
!31 = !DILocation(line: 125, column: 44, scope: !18)
!32 = !DILocation(line: 125, column: 24, scope: !18)
!33 = !DILocation(line: 125, column: 12, scope: !18)
!34 = !DILocation(line: 125, column: 5, scope: !18)
!35 = !DISubprogram(name: "nasm_strdup", scope: !36, file: !36, line: 69, type: !19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!36 = !DIFile(filename: "./include/nasmlib.h", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "cd87db651c56070455313058ded731a5")
!37 = distinct !DISubprogram(name: "first_filename_char", scope: !2, file: !2, line: 105, type: !38, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{!22, !22}
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "path", arg: 1, scope: !37, file: !2, line: 105, type: !22)
!42 = !DILocalVariable(name: "p", scope: !37, file: !2, line: 108, type: !22)
!43 = !DILocation(line: 105, column: 52, scope: !37)
!44 = !DILocation(line: 108, column: 5, scope: !37)
!45 = !DILocation(line: 108, column: 17, scope: !37)
!46 = !{!"auto-init"}
!47 = !DILocation(line: 108, column: 21, scope: !37)
!48 = !DILocation(line: 108, column: 35, scope: !37)
!49 = !DILocation(line: 108, column: 28, scope: !37)
!50 = !DILocation(line: 108, column: 26, scope: !37)
!51 = !DILocation(line: 110, column: 5, scope: !37)
!52 = !DILocation(line: 110, column: 12, scope: !37)
!53 = !DILocation(line: 110, column: 16, scope: !37)
!54 = !DILocation(line: 110, column: 14, scope: !37)
!55 = !DILocation(line: 111, column: 33, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !2, line: 111, column: 13)
!57 = distinct !DILexicalBlock(scope: !37, file: !2, line: 110, column: 22)
!58 = !{!28, !28, i64 0}
!59 = !DILocation(line: 111, column: 13, scope: !56)
!60 = !DILocation(line: 111, column: 13, scope: !57)
!61 = !DILocation(line: 112, column: 20, scope: !56)
!62 = !DILocation(line: 112, column: 13, scope: !56)
!63 = !DILocation(line: 113, column: 10, scope: !57)
!64 = distinct !{!64, !51, !65, !66}
!65 = !DILocation(line: 114, column: 5, scope: !37)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 116, column: 12, scope: !37)
!68 = !DILocation(line: 116, column: 5, scope: !37)
!69 = !DILocation(line: 120, column: 1, scope: !37)
!70 = distinct !DISubprogram(name: "nasm_dirname", scope: !2, file: !2, line: 129, type: !19, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !71)
!71 = !{!72, !73, !74}
!72 = !DILocalVariable(name: "path", arg: 1, scope: !70, file: !2, line: 129, type: !22)
!73 = !DILocalVariable(name: "p", scope: !70, file: !2, line: 131, type: !22)
!74 = !DILocalVariable(name: "p0", scope: !70, file: !2, line: 132, type: !22)
!75 = !DILocation(line: 129, column: 32, scope: !70)
!76 = !DILocation(line: 131, column: 5, scope: !70)
!77 = !DILocation(line: 131, column: 17, scope: !70)
!78 = !DILocation(line: 131, column: 41, scope: !70)
!79 = !DILocation(line: 131, column: 21, scope: !70)
!80 = !DILocation(line: 132, column: 5, scope: !70)
!81 = !DILocation(line: 132, column: 17, scope: !70)
!82 = !DILocation(line: 132, column: 22, scope: !70)
!83 = !DILocation(line: 133, column: 11, scope: !70)
!84 = !DILocation(line: 135, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !70, file: !2, line: 135, column: 9)
!86 = !DILocation(line: 135, column: 14, scope: !85)
!87 = !DILocation(line: 135, column: 11, scope: !85)
!88 = !DILocation(line: 135, column: 9, scope: !70)
!89 = !DILocation(line: 136, column: 16, scope: !85)
!90 = !DILocation(line: 136, column: 9, scope: !85)
!91 = !DILocation(line: 139, column: 5, scope: !70)
!92 = !DILocation(line: 139, column: 12, scope: !70)
!93 = !DILocation(line: 139, column: 16, scope: !70)
!94 = !DILocation(line: 139, column: 20, scope: !70)
!95 = !DILocation(line: 139, column: 14, scope: !70)
!96 = !DILocation(line: 140, column: 34, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 140, column: 13)
!98 = distinct !DILexicalBlock(scope: !70, file: !2, line: 139, column: 35)
!99 = !DILocation(line: 140, column: 13, scope: !97)
!100 = !DILocation(line: 140, column: 13, scope: !98)
!101 = !DILocation(line: 141, column: 13, scope: !97)
!102 = !DILocation(line: 142, column: 10, scope: !98)
!103 = distinct !{!103, !91, !104, !66}
!104 = !DILocation(line: 143, column: 5, scope: !70)
!105 = !DILocation(line: 152, column: 25, scope: !70)
!106 = !DILocation(line: 152, column: 31, scope: !70)
!107 = !DILocation(line: 152, column: 33, scope: !70)
!108 = !DILocation(line: 152, column: 32, scope: !70)
!109 = !DILocation(line: 152, column: 12, scope: !70)
!110 = !DILocation(line: 152, column: 5, scope: !70)
!111 = !DILocation(line: 153, column: 1, scope: !70)
!112 = distinct !DISubprogram(name: "ismatch", scope: !2, file: !2, line: 93, type: !113, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !22, !4}
!115 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!116 = !{!117, !118, !119}
!117 = !DILocalVariable(name: "charset", arg: 1, scope: !112, file: !2, line: 93, type: !22)
!118 = !DILocalVariable(name: "ch", arg: 2, scope: !112, file: !2, line: 93, type: !4)
!119 = !DILocalVariable(name: "p", scope: !112, file: !2, line: 95, type: !22)
!120 = !DILocation(line: 93, column: 40, scope: !112)
!121 = !DILocation(line: 93, column: 54, scope: !112)
!122 = !DILocation(line: 95, column: 5, scope: !112)
!123 = !DILocation(line: 95, column: 17, scope: !112)
!124 = !DILocation(line: 97, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !112, file: !2, line: 97, column: 5)
!126 = !DILocation(line: 97, column: 12, scope: !125)
!127 = !DILocation(line: 97, column: 10, scope: !125)
!128 = !DILocation(line: 97, column: 24, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !2, line: 97, column: 5)
!130 = !DILocation(line: 97, column: 23, scope: !129)
!131 = !DILocation(line: 97, column: 5, scope: !125)
!132 = !DILocation(line: 98, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 98, column: 13)
!134 = distinct !DILexicalBlock(scope: !129, file: !2, line: 97, column: 32)
!135 = !DILocation(line: 98, column: 20, scope: !133)
!136 = !DILocation(line: 98, column: 19, scope: !133)
!137 = !DILocation(line: 98, column: 16, scope: !133)
!138 = !DILocation(line: 98, column: 13, scope: !134)
!139 = !DILocation(line: 99, column: 13, scope: !133)
!140 = !DILocation(line: 100, column: 5, scope: !134)
!141 = !DILocation(line: 97, column: 28, scope: !129)
!142 = !DILocation(line: 97, column: 5, scope: !129)
!143 = distinct !{!143, !131, !144, !66}
!144 = !DILocation(line: 100, column: 5, scope: !125)
!145 = !DILocation(line: 102, column: 5, scope: !112)
!146 = !DILocation(line: 103, column: 1, scope: !112)
!147 = !DISubprogram(name: "nasm_strndup", scope: !36, file: !36, line: 70, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!21, !22, !150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 70, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = distinct !DISubprogram(name: "nasm_catfile", scope: !2, file: !2, line: 160, type: !154, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{!21, !22, !22}
!156 = !{!157, !158, !159, !160, !161, !162, !163}
!157 = !DILocalVariable(name: "dir", arg: 1, scope: !153, file: !2, line: 160, type: !22)
!158 = !DILocalVariable(name: "file", arg: 2, scope: !153, file: !2, line: 160, type: !22)
!159 = !DILocalVariable(name: "dl", scope: !153, file: !2, line: 165, type: !150)
!160 = !DILocalVariable(name: "fl", scope: !153, file: !2, line: 166, type: !150)
!161 = !DILocalVariable(name: "p", scope: !153, file: !2, line: 167, type: !21)
!162 = !DILocalVariable(name: "pp", scope: !153, file: !2, line: 167, type: !21)
!163 = !DILocalVariable(name: "dosep", scope: !153, file: !2, line: 168, type: !115)
!164 = !DILocation(line: 160, column: 32, scope: !153)
!165 = !DILocation(line: 160, column: 49, scope: !153)
!166 = !DILocation(line: 165, column: 5, scope: !153)
!167 = !DILocation(line: 165, column: 12, scope: !153)
!168 = !DILocation(line: 165, column: 24, scope: !153)
!169 = !DILocation(line: 165, column: 17, scope: !153)
!170 = !{!171, !171, i64 0}
!171 = !{!"long", !28, i64 0}
!172 = !DILocation(line: 166, column: 5, scope: !153)
!173 = !DILocation(line: 166, column: 12, scope: !153)
!174 = !DILocation(line: 166, column: 24, scope: !153)
!175 = !DILocation(line: 166, column: 17, scope: !153)
!176 = !DILocation(line: 167, column: 5, scope: !153)
!177 = !DILocation(line: 167, column: 11, scope: !153)
!178 = !DILocation(line: 167, column: 15, scope: !153)
!179 = !DILocation(line: 168, column: 5, scope: !153)
!180 = !DILocation(line: 168, column: 10, scope: !153)
!181 = !{!182, !182, i64 0}
!182 = !{!"_Bool", !28, i64 0}
!183 = !DILocation(line: 170, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !153, file: !2, line: 170, column: 9)
!185 = !DILocation(line: 170, column: 13, scope: !184)
!186 = !DILocation(line: 170, column: 36, scope: !184)
!187 = !DILocation(line: 170, column: 40, scope: !184)
!188 = !DILocation(line: 170, column: 42, scope: !184)
!189 = !DILocation(line: 170, column: 16, scope: !184)
!190 = !DILocation(line: 170, column: 9, scope: !153)
!191 = !DILocation(line: 172, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !2, line: 170, column: 48)
!193 = !DILocation(line: 173, column: 5, scope: !192)
!194 = !DILocation(line: 175, column: 26, scope: !153)
!195 = !DILocation(line: 175, column: 31, scope: !153)
!196 = !DILocation(line: 175, column: 29, scope: !153)
!197 = !DILocation(line: 175, column: 36, scope: !153)
!198 = !{i8 0, i8 2}
!199 = !{}
!200 = !DILocation(line: 175, column: 34, scope: !153)
!201 = !DILocation(line: 175, column: 42, scope: !153)
!202 = !DILocation(line: 175, column: 14, scope: !153)
!203 = !DILocation(line: 175, column: 12, scope: !153)
!204 = !DILocation(line: 175, column: 7, scope: !153)
!205 = !DILocation(line: 177, column: 12, scope: !153)
!206 = !DILocation(line: 177, column: 16, scope: !153)
!207 = !DILocation(line: 177, column: 21, scope: !153)
!208 = !DILocation(line: 177, column: 5, scope: !153)
!209 = !DILocation(line: 178, column: 11, scope: !153)
!210 = !DILocation(line: 178, column: 8, scope: !153)
!211 = !DILocation(line: 179, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !153, file: !2, line: 179, column: 9)
!213 = !DILocation(line: 179, column: 9, scope: !153)
!214 = !DILocation(line: 180, column: 12, scope: !212)
!215 = !DILocation(line: 180, column: 15, scope: !212)
!216 = !DILocation(line: 180, column: 9, scope: !212)
!217 = !DILocation(line: 182, column: 12, scope: !153)
!218 = !DILocation(line: 182, column: 16, scope: !153)
!219 = !DILocation(line: 182, column: 22, scope: !153)
!220 = !DILocation(line: 182, column: 24, scope: !153)
!221 = !DILocation(line: 182, column: 5, scope: !153)
!222 = !DILocation(line: 184, column: 12, scope: !153)
!223 = !DILocation(line: 186, column: 1, scope: !153)
!224 = !DILocation(line: 184, column: 5, scope: !153)
!225 = !DISubprogram(name: "strlen", scope: !226, file: !226, line: 407, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!227 = !DISubroutineType(types: !228)
!228 = !{!152, !22}
!229 = !DISubprogram(name: "nasm_malloc", scope: !36, file: !36, line: 64, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !150}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
