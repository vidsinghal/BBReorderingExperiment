; ModuleID = 'samples/524.bc'
source_filename = "src/core/ezlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !7
@__func__.gt_egzopen = private unnamed_addr constant [11 x i8] c"gt_egzopen\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [17 x i8] c"src/core/ezlib.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [36 x i8] c"gzopen(): cannot open file '%s': %s\00", align 1, !dbg !23

; Function Attrs: nounwind uwtable
define ptr @gt_egzopen(ptr noundef %path, ptr noundef %mode, ptr noundef %err) #0 !dbg !36 {
entry:
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8, !tbaa !65
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !61, metadata !DIExpression()), !dbg !69
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !65
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !62, metadata !DIExpression()), !dbg !70
  store ptr %err, ptr %err.addr, align 8, !tbaa !65
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !63, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #7, !dbg !72
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !64, metadata !DIExpression()), !dbg !73
  br label %do.body, !dbg !74

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !75, !tbaa !65
  %tobool = icmp ne ptr %0, null, !dbg !75
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !75

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !75, !tbaa !65
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !75
  br i1 %call, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !79, !tbaa !65
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_egzopen, ptr noundef @.str.2, i32 noundef 25), !dbg !79
  call void @abort() #8, !dbg !79
  unreachable, !dbg !79

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !78

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !78

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %path.addr, align 8, !dbg !81, !tbaa !65
  %4 = load ptr, ptr %mode.addr, align 8, !dbg !83, !tbaa !65
  %call2 = call ptr @gzopen64(ptr noundef %3, ptr noundef %4), !dbg !84
  store ptr %call2, ptr %file, align 8, !dbg !85, !tbaa !65
  %tobool3 = icmp ne ptr %call2, null, !dbg !85
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !86

if.then4:                                         ; preds = %do.end
  %5 = load ptr, ptr %err.addr, align 8, !dbg !87, !tbaa !65
  %6 = load ptr, ptr %path.addr, align 8, !dbg !89, !tbaa !65
  %call5 = call ptr @__errno_location() #9, !dbg !90
  %7 = load i32, ptr %call5, align 4, !dbg !90, !tbaa !91
  %call6 = call ptr @strerror(i32 noundef %7) #7, !dbg !93
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %5, ptr noundef @.str.3, ptr noundef %6, ptr noundef %call6), !dbg !94
  br label %if.end7, !dbg !95

if.end7:                                          ; preds = %if.then4, %do.end
  %8 = load ptr, ptr %file, align 8, !dbg !96, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #7, !dbg !97
  ret ptr %8, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !99 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !105 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !170 void @abort() #3

declare !dbg !174 ptr @gzopen64(ptr noundef, ptr noundef) #2

declare !dbg !177 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare !dbg !180 ptr @strerror(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !184 ptr @__errno_location() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/core/ezlib.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "edad54ff6ea40626e6843aa24642dd8c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 11)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 17)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 36)
!28 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !29, splitDebugInlining: false, nameTableKind: None)
!29 = !{!0, !7, !12, !18, !23}
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!36 = distinct !DISubprogram(name: "gt_egzopen", scope: !2, file: !2, line: 22, type: !37, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !28, retainedNodes: !60)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !55, !55, !56}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !40, line: 1224, baseType: !41)
!40 = !DIFile(filename: "src/external/zlib-1.2.8/zlib.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "64d8a5180bd54ff5452886e4cbb21e14")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !40, line: 1670, size: 192, elements: !43)
!43 = !{!44, !46, !49}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !42, file: !40, line: 1671, baseType: !45, size: 32)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !40, line: 1672, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !42, file: !40, line: 1673, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "off64_t", file: !51, line: 92, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !58, line: 44, baseType: !59)
!58 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !58, line: 44, flags: DIFlagFwdDecl)
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "path", arg: 1, scope: !36, file: !2, line: 22, type: !55)
!62 = !DILocalVariable(name: "mode", arg: 2, scope: !36, file: !2, line: 22, type: !55)
!63 = !DILocalVariable(name: "err", arg: 3, scope: !36, file: !2, line: 22, type: !56)
!64 = !DILocalVariable(name: "file", scope: !36, file: !2, line: 24, type: !39)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 22, column: 31, scope: !36)
!70 = !DILocation(line: 22, column: 49, scope: !36)
!71 = !DILocation(line: 22, column: 64, scope: !36)
!72 = !DILocation(line: 24, column: 3, scope: !36)
!73 = !DILocation(line: 24, column: 10, scope: !36)
!74 = !DILocation(line: 25, column: 3, scope: !36)
!75 = !DILocation(line: 25, column: 3, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 25, column: 3)
!77 = distinct !DILexicalBlock(scope: !36, file: !2, line: 25, column: 3)
!78 = !DILocation(line: 25, column: 3, scope: !77)
!79 = !DILocation(line: 25, column: 3, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !2, line: 25, column: 3)
!81 = !DILocation(line: 26, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !36, file: !2, line: 26, column: 7)
!83 = !DILocation(line: 26, column: 29, scope: !82)
!84 = !DILocation(line: 26, column: 16, scope: !82)
!85 = !DILocation(line: 26, column: 14, scope: !82)
!86 = !DILocation(line: 26, column: 7, scope: !36)
!87 = !DILocation(line: 27, column: 18, scope: !88)
!88 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 37)
!89 = !DILocation(line: 27, column: 62, scope: !88)
!90 = !DILocation(line: 28, column: 24, scope: !88)
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !67, i64 0}
!93 = !DILocation(line: 28, column: 15, scope: !88)
!94 = !DILocation(line: 27, column: 5, scope: !88)
!95 = !DILocation(line: 29, column: 3, scope: !88)
!96 = !DILocation(line: 30, column: 10, scope: !36)
!97 = !DILocation(line: 31, column: 1, scope: !36)
!98 = !DILocation(line: 30, column: 3, scope: !36)
!99 = !DISubprogram(name: "gt_error_is_set", scope: !58, file: !58, line: 64, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!105 = !DISubprogram(name: "fprintf", scope: !106, file: !106, line: 350, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !110, !169, null}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !113, line: 7, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !115, line: 49, size: 1728, elements: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!116 = !{!117, !118, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !133, !135, !136, !137, !139, !141, !143, !147, !150, !151, !154, !157, !158, !160, !164, !165}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !114, file: !115, line: 51, baseType: !109, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !114, file: !115, line: 54, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !114, file: !115, line: 55, baseType: !119, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !114, file: !115, line: 56, baseType: !119, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !114, file: !115, line: 57, baseType: !119, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !114, file: !115, line: 58, baseType: !119, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !114, file: !115, line: 59, baseType: !119, size: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !114, file: !115, line: 60, baseType: !119, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !114, file: !115, line: 61, baseType: !119, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !114, file: !115, line: 64, baseType: !119, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !114, file: !115, line: 65, baseType: !119, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !114, file: !115, line: 66, baseType: !119, size: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !114, file: !115, line: 68, baseType: !131, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !115, line: 36, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !114, file: !115, line: 70, baseType: !134, size: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !114, file: !115, line: 72, baseType: !109, size: 32, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !114, file: !115, line: 73, baseType: !109, size: 32, offset: 928)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !114, file: !115, line: 74, baseType: !138, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !114, file: !115, line: 77, baseType: !140, size: 16, offset: 1024)
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !114, file: !115, line: 78, baseType: !142, size: 8, offset: 1040)
!142 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !114, file: !115, line: 79, baseType: !144, size: 8, offset: 1048)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 1)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !114, file: !115, line: 81, baseType: !148, size: 64, offset: 1088)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !115, line: 43, baseType: null)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !114, file: !115, line: 89, baseType: !52, size: 64, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !114, file: !115, line: 91, baseType: !152, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !115, line: 37, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !114, file: !115, line: 92, baseType: !155, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !115, line: 38, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !114, file: !115, line: 93, baseType: !134, size: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !114, file: !115, line: 94, baseType: !159, size: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !114, file: !115, line: 95, baseType: !161, size: 64, offset: 1472)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 70, baseType: !163)
!162 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!163 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !114, file: !115, line: 96, baseType: !109, size: 32, offset: 1536)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !114, file: !115, line: 98, baseType: !166, size: 160, offset: 1568)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 20)
!169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!170 = !DISubprogram(name: "abort", scope: !171, file: !171, line: 598, type: !172, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!171 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!172 = !DISubroutineType(types: !173)
!173 = !{null}
!174 = !DISubprogram(name: "gzopen64", scope: !40, file: !40, line: 1692, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!39, !55, !55}
!177 = !DISubprogram(name: "gt_error_set", scope: !58, file: !58, line: 56, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !56, !55, null}
!180 = !DISubprogram(name: "strerror", scope: !181, file: !181, line: 419, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!182 = !DISubroutineType(types: !183)
!183 = !{!119, !109}
!184 = !DISubprogram(name: "__errno_location", scope: !185, file: !185, line: 37, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!186 = !DISubroutineType(types: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
