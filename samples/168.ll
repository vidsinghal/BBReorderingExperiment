; ModuleID = 'samples/168.bc'
source_filename = "bam_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"flags\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not parse \22%s\22\00", align 1, !dbg !7
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"0x%x\09%d\09%s\0A\00", align 1, !dbg !12
@usage.fl = internal global ptr null, align 8, !dbg !17
@usage.flags = internal constant [13 x %struct.anon] [%struct.anon { i32 1, ptr @.str.3 }, %struct.anon { i32 2, ptr @.str.4 }, %struct.anon { i32 4, ptr @.str.5 }, %struct.anon { i32 8, ptr @.str.6 }, %struct.anon { i32 16, ptr @.str.7 }, %struct.anon { i32 32, ptr @.str.8 }, %struct.anon { i32 64, ptr @.str.9 }, %struct.anon { i32 128, ptr @.str.10 }, %struct.anon { i32 256, ptr @.str.11 }, %struct.anon { i32 512, ptr @.str.12 }, %struct.anon { i32 1024, ptr @.str.13 }, %struct.anon { i32 2048, ptr @.str.14 }, %struct.anon zeroinitializer], align 16, !dbg !141
@.str.3 = private unnamed_addr constant [52 x i8] c"paired-end / multiple-segment sequencing technology\00", align 1, !dbg !87
@.str.4 = private unnamed_addr constant [51 x i8] c"each segment properly aligned according to aligner\00", align 1, !dbg !92
@.str.5 = private unnamed_addr constant [17 x i8] c"segment unmapped\00", align 1, !dbg !97
@.str.6 = private unnamed_addr constant [38 x i8] c"next segment in the template unmapped\00", align 1, !dbg !102
@.str.7 = private unnamed_addr constant [28 x i8] c"SEQ is reverse complemented\00", align 1, !dbg !107
@.str.8 = private unnamed_addr constant [52 x i8] c"SEQ of next segment in template is rev.complemented\00", align 1, !dbg !112
@.str.9 = private unnamed_addr constant [34 x i8] c"the first segment in the template\00", align 1, !dbg !114
@.str.10 = private unnamed_addr constant [33 x i8] c"the last segment in the template\00", align 1, !dbg !119
@.str.11 = private unnamed_addr constant [20 x i8] c"secondary alignment\00", align 1, !dbg !124
@.str.12 = private unnamed_addr constant [46 x i8] c"not passing quality controls or other filters\00", align 1, !dbg !126
@.str.13 = private unnamed_addr constant [25 x i8] c"PCR or optical duplicate\00", align 1, !dbg !131
@.str.14 = private unnamed_addr constant [24 x i8] c"supplementary alignment\00", align 1, !dbg !136
@.str.15 = private unnamed_addr constant [328 x i8] c"About: Convert between textual and numeric flag representation\0AUsage: samtools flags FLAGS...\0A\0AEach FLAGS argument is either an INT (in decimal/hexadecimal/octal) representing\0Aa combination of the following numeric flag values, or a comma-separated string\0ANAME,...,NAME representing a combination of the following flag names:\0A\0A\00", align 1, !dbg !153
@.str.16 = private unnamed_addr constant [19 x i8] c"%#6x %5d  %-15s%s\0A\00", align 1, !dbg !158

; Function Attrs: nounwind uwtable
define dso_local i32 @main_flags(i32 noundef %argc, ptr noundef %argv) #0 !dbg !177 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %str = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !182, metadata !DIExpression()), !dbg !194
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !183, metadata !DIExpression()), !dbg !197
  %0 = load i32, ptr %argc.addr, align 4, !dbg !198, !tbaa !190
  %cmp = icmp slt i32 %0, 2, !dbg !200
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stdout, align 8, !dbg !202, !tbaa !195
  call void @usage(ptr noundef %1), !dbg !204
  store i32 0, ptr %retval, align 4, !dbg !205
  br label %return, !dbg !205

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !184, metadata !DIExpression()), !dbg !207
  store i32 1, ptr %i, align 4, !dbg !208, !tbaa !190
  br label %for.cond, !dbg !209

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !210, !tbaa !190
  %3 = load i32, ptr %argc.addr, align 4, !dbg !211, !tbaa !190
  %cmp1 = icmp slt i32 %2, %3, !dbg !212
  br i1 %cmp1, label %for.body, label %for.end, !dbg !213

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #5, !dbg !214
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !185, metadata !DIExpression()), !dbg !215
  %4 = load ptr, ptr %argv.addr, align 8, !dbg !216, !tbaa !195
  %5 = load i32, ptr %i, align 4, !dbg !217, !tbaa !190
  %idxprom = sext i32 %5 to i64, !dbg !216
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom, !dbg !216
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !216, !tbaa !195
  %call = call i32 @bam_str2flag(ptr noundef %6), !dbg !218
  store i32 %call, ptr %mask, align 4, !dbg !215, !tbaa !190
  %7 = load i32, ptr %mask, align 4, !dbg !219, !tbaa !190
  %cmp2 = icmp slt i32 %7, 0, !dbg !221
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !222

if.then3:                                         ; preds = %for.body
  %8 = load ptr, ptr %argv.addr, align 8, !dbg !223, !tbaa !195
  %9 = load i32, ptr %i, align 4, !dbg !225, !tbaa !190
  %idxprom4 = sext i32 %9 to i64, !dbg !223
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 %idxprom4, !dbg !223
  %10 = load ptr, ptr %arrayidx5, align 8, !dbg !223, !tbaa !195
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str, ptr noundef @.str.1, ptr noundef %10), !dbg !226
  %11 = load ptr, ptr @stderr, align 8, !dbg !227, !tbaa !195
  call void @usage(ptr noundef %11), !dbg !228
  store i32 1, ptr %retval, align 4, !dbg !229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !229

if.end6:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #5, !dbg !230
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !189, metadata !DIExpression()), !dbg !231
  %12 = load i32, ptr %mask, align 4, !dbg !232, !tbaa !190
  %call7 = call ptr @bam_flag2str(i32 noundef %12), !dbg !233
  store ptr %call7, ptr %str, align 8, !dbg !231, !tbaa !195
  %13 = load i32, ptr %mask, align 4, !dbg !234, !tbaa !190
  %14 = load i32, ptr %mask, align 4, !dbg !235, !tbaa !190
  %15 = load ptr, ptr %str, align 8, !dbg !236, !tbaa !195
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13, i32 noundef %14, ptr noundef %15), !dbg !237
  %16 = load ptr, ptr %str, align 8, !dbg !238, !tbaa !195
  call void @free(ptr noundef %16) #5, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #5, !dbg !240
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !240
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %if.end6, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #5, !dbg !240
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !241

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, ptr %i, align 4, !dbg !242, !tbaa !190
  %inc = add nsw i32 %17, 1, !dbg !242
  store i32 %inc, ptr %i, align 4, !dbg !242, !tbaa !190
  br label %for.cond, !dbg !243, !llvm.loop !244

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !247

cleanup9:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !248
  br label %return

return:                                           ; preds = %cleanup9, %if.then
  %18 = load i32, ptr %retval, align 4, !dbg !248
  ret i32 %18, !dbg !248
}

; Function Attrs: nounwind uwtable
define internal void @usage(ptr noundef %fp) #0 !dbg !19 {
entry:
  %fp.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !164, metadata !DIExpression()), !dbg !249
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !250, !tbaa !195
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.15), !dbg !251
  store ptr @usage.flags, ptr @usage.fl, align 8, !dbg !252, !tbaa !195
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr @usage.fl, align 8, !dbg !254, !tbaa !195
  %desc = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !255
  %2 = load ptr, ptr %desc, align 8, !dbg !255, !tbaa !256
  %tobool = icmp ne ptr %2, null, !dbg !258
  br i1 %tobool, label %for.body, label %for.end, !dbg !258

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #5, !dbg !259
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !165, metadata !DIExpression()), !dbg !260
  %3 = load ptr, ptr @usage.fl, align 8, !dbg !261, !tbaa !195
  %bit = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0, !dbg !262
  %4 = load i32, ptr %bit, align 8, !dbg !262, !tbaa !263
  %call1 = call ptr @bam_flag2str(i32 noundef %4), !dbg !264
  store ptr %call1, ptr %name, align 8, !dbg !260, !tbaa !195
  %5 = load ptr, ptr %fp.addr, align 8, !dbg !265, !tbaa !195
  %6 = load ptr, ptr @usage.fl, align 8, !dbg !266, !tbaa !195
  %bit2 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 0, !dbg !267
  %7 = load i32, ptr %bit2, align 8, !dbg !267, !tbaa !263
  %8 = load ptr, ptr @usage.fl, align 8, !dbg !268, !tbaa !195
  %bit3 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 0, !dbg !269
  %9 = load i32, ptr %bit3, align 8, !dbg !269, !tbaa !263
  %10 = load ptr, ptr %name, align 8, !dbg !270, !tbaa !195
  %11 = load ptr, ptr @usage.fl, align 8, !dbg !271, !tbaa !195
  %desc4 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1, !dbg !272
  %12 = load ptr, ptr %desc4, align 8, !dbg !272, !tbaa !256
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.16, i32 noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %12), !dbg !273
  %13 = load ptr, ptr %name, align 8, !dbg !274, !tbaa !195
  call void @free(ptr noundef %13) #5, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #5, !dbg !276
  br label %for.inc, !dbg !277

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr @usage.fl, align 8, !dbg !278, !tbaa !195
  %incdec.ptr = getelementptr inbounds %struct.anon, ptr %14, i32 1, !dbg !278
  store ptr %incdec.ptr, ptr @usage.fl, align 8, !dbg !278, !tbaa !195
  br label %for.cond, !dbg !279, !llvm.loop !280

for.end:                                          ; preds = %for.cond
  ret void, !dbg !282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !283 i32 @bam_str2flag(ptr noundef) #2

declare !dbg !287 void @print_error(ptr noundef, ptr noundef, ...) #2

declare !dbg !291 ptr @bam_flag2str(i32 noundef) #2

declare !dbg !294 i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare !dbg !299 void @free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !303 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!84}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bam_flags.c", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "f27042c2309bcc9312ebf024edff655e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 21)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 12)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "fl", scope: !19, file: !2, line: 39, type: !169, isLocal: true, isDefinition: true)
!19 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !20, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !163)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 7, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!27 = !{!28, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !45, !47, !48, !49, !53, !55, !57, !61, !64, !66, !69, !72, !73, !75, !79, !80}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !26, line: 51, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !25, file: !26, line: 54, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !25, file: !26, line: 55, baseType: !31, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !25, file: !26, line: 56, baseType: !31, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !25, file: !26, line: 57, baseType: !31, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !25, file: !26, line: 58, baseType: !31, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !25, file: !26, line: 59, baseType: !31, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !25, file: !26, line: 60, baseType: !31, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !25, file: !26, line: 61, baseType: !31, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !25, file: !26, line: 64, baseType: !31, size: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !25, file: !26, line: 65, baseType: !31, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !25, file: !26, line: 66, baseType: !31, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !25, file: !26, line: 68, baseType: !43, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !26, line: 36, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !25, file: !26, line: 70, baseType: !46, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !25, file: !26, line: 72, baseType: !29, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !26, line: 73, baseType: !29, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !25, file: !26, line: 74, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!52 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !25, file: !26, line: 77, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !25, file: !26, line: 78, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !25, file: !26, line: 79, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !26, line: 81, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !26, line: 43, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !26, line: 89, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !25, file: !26, line: 91, baseType: !67, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !26, line: 37, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !25, file: !26, line: 92, baseType: !70, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !26, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !25, file: !26, line: 93, baseType: !46, size: 64, offset: 1344)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !25, file: !26, line: 94, baseType: !74, size: 64, offset: 1408)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !25, file: !26, line: 95, baseType: !76, size: 64, offset: 1472)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 70, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!78 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !25, file: !26, line: 96, baseType: !29, size: 32, offset: 1536)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !25, file: !26, line: 98, baseType: !81, size: 160, offset: 1568)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 20)
!84 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !85, globals: !86, splitDebugInlining: false, nameTableKind: None)
!85 = !{!74}
!86 = !{!0, !7, !12, !17, !87, !92, !97, !102, !107, !112, !114, !119, !124, !126, !131, !136, !141, !153, !158}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 52)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 51)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 17)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 38)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 28)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !89, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 34)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 33)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !81, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 46)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 25)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 24)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "flags", scope: !19, file: !2, line: 39, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1664, elements: !151)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !19, file: !2, line: 39, size: 128, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !145, file: !2, line: 39, baseType: !29, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !145, file: !2, line: 39, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!151 = !{!152}
!152 = !DISubrange(count: 13)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2624, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 328)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 19)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "fp", arg: 1, scope: !19, file: !2, line: 37, type: !22)
!165 = !DILocalVariable(name: "name", scope: !166, file: !2, line: 64, type: !31)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 63, column: 38)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 63, column: 5)
!168 = distinct !DILexicalBlock(scope: !19, file: !2, line: 63, column: 5)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!170 = !{i32 7, !"Dwarf Version", i32 5}
!171 = !{i32 2, !"Debug Info Version", i32 3}
!172 = !{i32 1, !"wchar_size", i32 4}
!173 = !{i32 8, !"PIC Level", i32 2}
!174 = !{i32 7, !"PIE Level", i32 2}
!175 = !{i32 7, !"uwtable", i32 2}
!176 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!177 = distinct !DISubprogram(name: "main_flags", scope: !2, file: !2, line: 71, type: !178, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !84, retainedNodes: !181)
!178 = !DISubroutineType(types: !179)
!179 = !{!29, !29, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!181 = !{!182, !183, !184, !185, !189}
!182 = !DILocalVariable(name: "argc", arg: 1, scope: !177, file: !2, line: 71, type: !29)
!183 = !DILocalVariable(name: "argv", arg: 2, scope: !177, file: !2, line: 71, type: !180)
!184 = !DILocalVariable(name: "i", scope: !177, file: !2, line: 75, type: !29)
!185 = !DILocalVariable(name: "mask", scope: !186, file: !2, line: 78, type: !29)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 77, column: 5)
!187 = distinct !DILexicalBlock(scope: !188, file: !2, line: 76, column: 5)
!188 = distinct !DILexicalBlock(scope: !177, file: !2, line: 76, column: 5)
!189 = !DILocalVariable(name: "str", scope: !186, file: !2, line: 80, type: !31)
!190 = !{!191, !191, i64 0}
!191 = !{!"int", !192, i64 0}
!192 = !{!"omnipotent char", !193, i64 0}
!193 = !{!"Simple C/C++ TBAA"}
!194 = !DILocation(line: 71, column: 20, scope: !177)
!195 = !{!196, !196, i64 0}
!196 = !{!"any pointer", !192, i64 0}
!197 = !DILocation(line: 71, column: 32, scope: !177)
!198 = !DILocation(line: 73, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !177, file: !2, line: 73, column: 10)
!200 = !DILocation(line: 73, column: 15, scope: !199)
!201 = !DILocation(line: 73, column: 10, scope: !177)
!202 = !DILocation(line: 73, column: 29, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !2, line: 73, column: 21)
!204 = !DILocation(line: 73, column: 23, scope: !203)
!205 = !DILocation(line: 73, column: 38, scope: !203)
!206 = !DILocation(line: 75, column: 5, scope: !177)
!207 = !DILocation(line: 75, column: 9, scope: !177)
!208 = !DILocation(line: 76, column: 12, scope: !188)
!209 = !DILocation(line: 76, column: 10, scope: !188)
!210 = !DILocation(line: 76, column: 17, scope: !187)
!211 = !DILocation(line: 76, column: 21, scope: !187)
!212 = !DILocation(line: 76, column: 19, scope: !187)
!213 = !DILocation(line: 76, column: 5, scope: !188)
!214 = !DILocation(line: 78, column: 9, scope: !186)
!215 = !DILocation(line: 78, column: 13, scope: !186)
!216 = !DILocation(line: 78, column: 33, scope: !186)
!217 = !DILocation(line: 78, column: 38, scope: !186)
!218 = !DILocation(line: 78, column: 20, scope: !186)
!219 = !DILocation(line: 79, column: 14, scope: !220)
!220 = distinct !DILexicalBlock(scope: !186, file: !2, line: 79, column: 14)
!221 = !DILocation(line: 79, column: 18, scope: !220)
!222 = !DILocation(line: 79, column: 14, scope: !186)
!223 = !DILocation(line: 79, column: 72, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !2, line: 79, column: 23)
!225 = !DILocation(line: 79, column: 77, scope: !224)
!226 = !DILocation(line: 79, column: 25, scope: !224)
!227 = !DILocation(line: 79, column: 88, scope: !224)
!228 = !DILocation(line: 79, column: 82, scope: !224)
!229 = !DILocation(line: 79, column: 97, scope: !224)
!230 = !DILocation(line: 80, column: 9, scope: !186)
!231 = !DILocation(line: 80, column: 15, scope: !186)
!232 = !DILocation(line: 80, column: 34, scope: !186)
!233 = !DILocation(line: 80, column: 21, scope: !186)
!234 = !DILocation(line: 81, column: 34, scope: !186)
!235 = !DILocation(line: 81, column: 40, scope: !186)
!236 = !DILocation(line: 81, column: 46, scope: !186)
!237 = !DILocation(line: 81, column: 9, scope: !186)
!238 = !DILocation(line: 82, column: 14, scope: !186)
!239 = !DILocation(line: 82, column: 9, scope: !186)
!240 = !DILocation(line: 83, column: 5, scope: !187)
!241 = !DILocation(line: 83, column: 5, scope: !186)
!242 = !DILocation(line: 76, column: 28, scope: !187)
!243 = !DILocation(line: 76, column: 5, scope: !187)
!244 = distinct !{!244, !213, !245, !246}
!245 = !DILocation(line: 83, column: 5, scope: !188)
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocation(line: 84, column: 5, scope: !177)
!248 = !DILocation(line: 85, column: 1, scope: !177)
!249 = !DILocation(line: 37, column: 25, scope: !19)
!250 = !DILocation(line: 55, column: 13, scope: !19)
!251 = !DILocation(line: 55, column: 5, scope: !19)
!252 = !DILocation(line: 63, column: 13, scope: !168)
!253 = !DILocation(line: 63, column: 10, scope: !168)
!254 = !DILocation(line: 63, column: 22, scope: !167)
!255 = !DILocation(line: 63, column: 26, scope: !167)
!256 = !{!257, !196, i64 8}
!257 = !{!"", !191, i64 0, !196, i64 8}
!258 = !DILocation(line: 63, column: 5, scope: !168)
!259 = !DILocation(line: 64, column: 9, scope: !166)
!260 = !DILocation(line: 64, column: 15, scope: !166)
!261 = !DILocation(line: 64, column: 35, scope: !166)
!262 = !DILocation(line: 64, column: 39, scope: !166)
!263 = !{!257, !191, i64 0}
!264 = !DILocation(line: 64, column: 22, scope: !166)
!265 = !DILocation(line: 65, column: 17, scope: !166)
!266 = !DILocation(line: 65, column: 44, scope: !166)
!267 = !DILocation(line: 65, column: 48, scope: !166)
!268 = !DILocation(line: 65, column: 53, scope: !166)
!269 = !DILocation(line: 65, column: 57, scope: !166)
!270 = !DILocation(line: 65, column: 62, scope: !166)
!271 = !DILocation(line: 65, column: 68, scope: !166)
!272 = !DILocation(line: 65, column: 72, scope: !166)
!273 = !DILocation(line: 65, column: 9, scope: !166)
!274 = !DILocation(line: 66, column: 14, scope: !166)
!275 = !DILocation(line: 66, column: 9, scope: !166)
!276 = !DILocation(line: 67, column: 5, scope: !167)
!277 = !DILocation(line: 67, column: 5, scope: !166)
!278 = !DILocation(line: 63, column: 34, scope: !167)
!279 = !DILocation(line: 63, column: 5, scope: !167)
!280 = distinct !{!280, !258, !281, !246}
!281 = !DILocation(line: 67, column: 5, scope: !168)
!282 = !DILocation(line: 68, column: 1, scope: !19)
!283 = !DISubprogram(name: "bam_str2flag", scope: !284, file: !284, line: 1094, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/sam.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "b64ad94d97c3b81ccf06052d1de39653")
!285 = !DISubroutineType(types: !286)
!286 = !{!29, !149}
!287 = !DISubprogram(name: "print_error", scope: !288, file: !288, line: 35, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DIFile(filename: "./samtools.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "a779e61124e956dfb3b0bc9d6698083d")
!289 = !DISubroutineType(types: !290)
!290 = !{null, !149, !149, null}
!291 = !DISubprogram(name: "bam_flag2str", scope: !284, file: !284, line: 1097, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!31, !29}
!294 = !DISubprogram(name: "printf", scope: !295, file: !295, line: 356, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!296 = !DISubroutineType(types: !297)
!297 = !{!29, !298, null}
!298 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!299 = !DISubprogram(name: "free", scope: !300, file: !300, line: 555, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!301 = !DISubroutineType(types: !302)
!302 = !{null, !74}
!303 = !DISubprogram(name: "fprintf", scope: !295, file: !295, line: 350, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!29, !306, !298, null}
!306 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
