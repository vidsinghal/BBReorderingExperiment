; ModuleID = 'samples/596.bc'
source_filename = "src/extended/id_to_md5_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"in_stream && rm\00", align 1, !dbg !7
@__func__.gt_id_to_md5_stream_new = private unnamed_addr constant [24 x i8] c"gt_id_to_md5_stream_new\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [32 x i8] c"src/extended/id_to_md5_stream.c\00", align 1, !dbg !18

; Function Attrs: nounwind uwtable
define ptr @gt_id_to_md5_stream_new(ptr noundef %in_stream, ptr noundef %rm, i1 noundef zeroext %substitute_target_ids) #0 !dbg !31 {
entry:
  %in_stream.addr = alloca ptr, align 8
  %rm.addr = alloca ptr, align 8
  %substitute_target_ids.addr = alloca i8, align 1
  store ptr %in_stream, ptr %in_stream.addr, align 8, !tbaa !57
  tail call void @llvm.dbg.declare(metadata ptr %in_stream.addr, metadata !54, metadata !DIExpression()), !dbg !61
  store ptr %rm, ptr %rm.addr, align 8, !tbaa !57
  tail call void @llvm.dbg.declare(metadata ptr %rm.addr, metadata !55, metadata !DIExpression()), !dbg !62
  %frombool = zext i1 %substitute_target_ids to i8
  store i8 %frombool, ptr %substitute_target_ids.addr, align 1, !tbaa !63
  tail call void @llvm.dbg.declare(metadata ptr %substitute_target_ids.addr, metadata !56, metadata !DIExpression()), !dbg !65
  br label %do.body, !dbg !66

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %in_stream.addr, align 8, !dbg !67, !tbaa !57
  %tobool = icmp ne ptr %0, null, !dbg !67
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !67

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %rm.addr, align 8, !dbg !67, !tbaa !57
  %tobool1 = icmp ne ptr %1, null, !dbg !67
  br i1 %tobool1, label %if.end, label %if.then, !dbg !70

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !71, !tbaa !57
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_id_to_md5_stream_new, ptr noundef @.str.2, i32 noundef 25), !dbg !71
  call void @abort() #4, !dbg !71
  unreachable, !dbg !71

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !70

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %in_stream.addr, align 8, !dbg !73, !tbaa !57
  %4 = load ptr, ptr %rm.addr, align 8, !dbg !74, !tbaa !57
  %5 = load i8, ptr %substitute_target_ids.addr, align 1, !dbg !75, !tbaa !63, !range !76, !noundef !77
  %tobool2 = trunc i8 %5 to i1, !dbg !75
  %call3 = call ptr @gt_id_to_md5_visitor_new(ptr noundef %4, i1 noundef zeroext %tobool2), !dbg !78
  %call4 = call ptr @gt_visitor_stream_new(ptr noundef %3, ptr noundef %call3), !dbg !79
  ret ptr %call4, !dbg !80
}

declare !dbg !81 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !150 void @abort() #2

declare !dbg !154 ptr @gt_visitor_stream_new(ptr noundef, ptr noundef) #1

declare !dbg !172 ptr @gt_id_to_md5_visitor_new(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/id_to_md5_stream.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "ecf9a2447f8bd6aff908ef43ed313191")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 24)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 32)
!23 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !24, splitDebugInlining: false, nameTableKind: None)
!24 = !{!0, !7, !12, !18}
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!31 = distinct !DISubprogram(name: "gt_id_to_md5_stream_new", scope: !2, file: !2, line: 21, type: !32, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !53)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !34, !48, !52}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStream", file: !36, line: 29, baseType: !37)
!36 = !DIFile(filename: "src/extended/node_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "394932ed37b4b1336cc2d8af8d72d6ac")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStream", file: !36, line: 65, size: 128, elements: !38)
!38 = !{!39, !44}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !37, file: !36, line: 66, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStreamClass", file: !36, line: 25, baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStreamClass", file: !36, line: 25, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !37, file: !36, line: 67, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStreamMembers", file: !36, line: 63, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStreamMembers", file: !36, line: 63, flags: DIFlagFwdDecl)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRegionMapping", file: !50, line: 28, baseType: !51)
!50 = !DIFile(filename: "src/extended/region_mapping_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "cb6a34cc5fe6689aff20c603a40e6278")
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtRegionMapping", file: !50, line: 28, flags: DIFlagFwdDecl)
!52 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(name: "in_stream", arg: 1, scope: !31, file: !2, line: 21, type: !34)
!55 = !DILocalVariable(name: "rm", arg: 2, scope: !31, file: !2, line: 22, type: !48)
!56 = !DILocalVariable(name: "substitute_target_ids", arg: 3, scope: !31, file: !2, line: 23, type: !52)
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 21, column: 53, scope: !31)
!62 = !DILocation(line: 22, column: 56, scope: !31)
!63 = !{!64, !64, i64 0}
!64 = !{!"_Bool", !59, i64 0}
!65 = !DILocation(line: 23, column: 44, scope: !31)
!66 = !DILocation(line: 25, column: 3, scope: !31)
!67 = !DILocation(line: 25, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 25, column: 3)
!69 = distinct !DILexicalBlock(scope: !31, file: !2, line: 25, column: 3)
!70 = !DILocation(line: 25, column: 3, scope: !69)
!71 = !DILocation(line: 25, column: 3, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !2, line: 25, column: 3)
!73 = !DILocation(line: 26, column: 32, scope: !31)
!74 = !DILocation(line: 27, column: 57, scope: !31)
!75 = !DILocation(line: 28, column: 57, scope: !31)
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !DILocation(line: 27, column: 32, scope: !31)
!79 = !DILocation(line: 26, column: 10, scope: !31)
!80 = !DILocation(line: 26, column: 3, scope: !31)
!81 = !DISubprogram(name: "fprintf", scope: !82, file: !82, line: 350, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !86, !148, null}
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!92 = !{!93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !109, !111, !112, !113, !117, !119, !121, !125, !128, !130, !133, !136, !137, !139, !143, !144}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !90, file: !91, line: 51, baseType: !85, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !90, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !90, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !90, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !90, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !90, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !90, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !90, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !90, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !90, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !90, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !90, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !90, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !91, line: 36, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !90, file: !91, line: 70, baseType: !110, size: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !90, file: !91, line: 72, baseType: !85, size: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !90, file: !91, line: 73, baseType: !85, size: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !90, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !115, line: 152, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!116 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !90, file: !91, line: 77, baseType: !118, size: 16, offset: 1024)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !90, file: !91, line: 78, baseType: !120, size: 8, offset: 1040)
!120 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !90, file: !91, line: 79, baseType: !122, size: 8, offset: 1048)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !90, file: !91, line: 81, baseType: !126, size: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !91, line: 43, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !90, file: !91, line: 89, baseType: !129, size: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !115, line: 153, baseType: !116)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !90, file: !91, line: 91, baseType: !131, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !91, line: 37, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !90, file: !91, line: 92, baseType: !134, size: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !91, line: 38, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !90, file: !91, line: 93, baseType: !110, size: 64, offset: 1344)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !90, file: !91, line: 94, baseType: !138, size: 64, offset: 1408)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !90, file: !91, line: 95, baseType: !140, size: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 70, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !90, file: !91, line: 96, baseType: !85, size: 32, offset: 1536)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !90, file: !91, line: 98, baseType: !145, size: 160, offset: 1568)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 20)
!148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!150 = !DISubprogram(name: "abort", scope: !151, file: !151, line: 598, type: !152, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!151 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!152 = !DISubroutineType(types: !153)
!153 = !{null}
!154 = !DISubprogram(name: "gt_visitor_stream_new", scope: !155, file: !155, line: 30, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!155 = !DIFile(filename: "src/extended/visitor_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "13d80982bd91df53c1312f9920970783")
!156 = !DISubroutineType(types: !157)
!157 = !{!34, !34, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitor", file: !160, line: 22, baseType: !161)
!160 = !DIFile(filename: "src/extended/node_visitor_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "500f2847f6803702c23b27c7a511e246")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitor", file: !160, line: 70, size: 128, elements: !162)
!162 = !{!163, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !161, file: !160, line: 71, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorClass", file: !160, line: 67, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitorClass", file: !160, line: 67, flags: DIFlagFwdDecl)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !161, file: !160, line: 72, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorMembers", file: !160, line: 68, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitorMembers", file: !160, line: 68, flags: DIFlagFwdDecl)
!172 = !DISubprogram(name: "gt_id_to_md5_visitor_new", scope: !173, file: !173, line: 28, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DIFile(filename: "src/extended/id_to_md5_visitor.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "925d25f33f87bb28b483f1a7912f44fc")
!174 = !DISubroutineType(types: !175)
!175 = !{!158, !48, !52}
