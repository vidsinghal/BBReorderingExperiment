; ModuleID = 'samples/283.bc'
source_filename = "fixedname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_fixedname = type { %struct.dns_name, [128 x i8], %struct.isc_buffer, [255 x i8] }
%struct.dns_name = type { i32, ptr, i32, i32, i32, ptr, ptr, %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon.1, ptr, i8 }
%struct.anon.1 = type { ptr, ptr }

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @dns_fixedname_init(ptr noundef %fixed) #0 !dbg !10 {
entry:
  %fixed.addr = alloca ptr, align 8
  store ptr %fixed, ptr %fixed.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fixed.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %0 = load ptr, ptr %fixed.addr, align 8, !dbg !84
  %name = getelementptr inbounds %struct.dns_fixedname, ptr %0, i32 0, i32 0, !dbg !85
  %1 = load ptr, ptr %fixed.addr, align 8, !dbg !86
  %offsets = getelementptr inbounds %struct.dns_fixedname, ptr %1, i32 0, i32 1, !dbg !87
  %arraydecay = getelementptr inbounds [128 x i8], ptr %offsets, i64 0, i64 0, !dbg !86
  call void @dns_name_init(ptr noundef %name, ptr noundef %arraydecay), !dbg !88
  br label %do.body, !dbg !89

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %data = getelementptr inbounds %struct.dns_fixedname, ptr %2, i32 0, i32 3, !dbg !90
  %arraydecay1 = getelementptr inbounds [255 x i8], ptr %data, i64 0, i64 0, !dbg !90
  %3 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer = getelementptr inbounds %struct.dns_fixedname, ptr %3, i32 0, i32 2, !dbg !90
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !90
  store ptr %arraydecay1, ptr %base, align 8, !dbg !90
  %4 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer2 = getelementptr inbounds %struct.dns_fixedname, ptr %4, i32 0, i32 2, !dbg !90
  %length = getelementptr inbounds %struct.isc_buffer, ptr %buffer2, i32 0, i32 2, !dbg !90
  store i32 255, ptr %length, align 8, !dbg !90
  %5 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer3 = getelementptr inbounds %struct.dns_fixedname, ptr %5, i32 0, i32 2, !dbg !90
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buffer3, i32 0, i32 3, !dbg !90
  store i32 0, ptr %used, align 4, !dbg !90
  %6 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer4 = getelementptr inbounds %struct.dns_fixedname, ptr %6, i32 0, i32 2, !dbg !90
  %current = getelementptr inbounds %struct.isc_buffer, ptr %buffer4, i32 0, i32 4, !dbg !90
  store i32 0, ptr %current, align 8, !dbg !90
  %7 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer5 = getelementptr inbounds %struct.dns_fixedname, ptr %7, i32 0, i32 2, !dbg !90
  %active = getelementptr inbounds %struct.isc_buffer, ptr %buffer5, i32 0, i32 5, !dbg !90
  store i32 0, ptr %active, align 4, !dbg !90
  %8 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer6 = getelementptr inbounds %struct.dns_fixedname, ptr %8, i32 0, i32 2, !dbg !90
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %buffer6, i32 0, i32 7, !dbg !90
  store ptr null, ptr %mctx, align 8, !dbg !90
  br label %do.body7, !dbg !90

do.body7:                                         ; preds = %do.body
  %9 = load ptr, ptr %fixed.addr, align 8, !dbg !92
  %buffer8 = getelementptr inbounds %struct.dns_fixedname, ptr %9, i32 0, i32 2, !dbg !92
  %link = getelementptr inbounds %struct.isc_buffer, ptr %buffer8, i32 0, i32 6, !dbg !92
  %prev = getelementptr inbounds %struct.anon.1, ptr %link, i32 0, i32 0, !dbg !92
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !92
  %10 = load ptr, ptr %fixed.addr, align 8, !dbg !92
  %buffer9 = getelementptr inbounds %struct.dns_fixedname, ptr %10, i32 0, i32 2, !dbg !92
  %link10 = getelementptr inbounds %struct.isc_buffer, ptr %buffer9, i32 0, i32 6, !dbg !92
  %next = getelementptr inbounds %struct.anon.1, ptr %link10, i32 0, i32 1, !dbg !92
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !92
  br label %do.end, !dbg !92

do.end:                                           ; preds = %do.body7
  %11 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer11 = getelementptr inbounds %struct.dns_fixedname, ptr %11, i32 0, i32 2, !dbg !90
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %buffer11, i32 0, i32 0, !dbg !90
  store i32 1114990113, ptr %magic, align 8, !dbg !90
  %12 = load ptr, ptr %fixed.addr, align 8, !dbg !90
  %buffer12 = getelementptr inbounds %struct.dns_fixedname, ptr %12, i32 0, i32 2, !dbg !90
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %buffer12, i32 0, i32 8, !dbg !90
  store i8 0, ptr %autore, align 8, !dbg !90
  br label %do.end13, !dbg !90

do.end13:                                         ; preds = %do.end
  %13 = load ptr, ptr %fixed.addr, align 8, !dbg !94
  %name14 = getelementptr inbounds %struct.dns_fixedname, ptr %13, i32 0, i32 0, !dbg !95
  %14 = load ptr, ptr %fixed.addr, align 8, !dbg !96
  %buffer15 = getelementptr inbounds %struct.dns_fixedname, ptr %14, i32 0, i32 2, !dbg !97
  call void @dns_name_setbuffer(ptr noundef %name14, ptr noundef %buffer15), !dbg !98
  ret void, !dbg !99
}

; Function Attrs: null_pointer_is_valid
declare !dbg !100 void @dns_name_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !103 void @dns_name_setbuffer(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @dns_fixedname_invalidate(ptr noundef %fixed) #0 !dbg !106 {
entry:
  %fixed.addr = alloca ptr, align 8
  store ptr %fixed, ptr %fixed.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fixed.addr, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = load ptr, ptr %fixed.addr, align 8, !dbg !110
  %name = getelementptr inbounds %struct.dns_fixedname, ptr %0, i32 0, i32 0, !dbg !111
  call void @dns_name_invalidate(ptr noundef %name), !dbg !112
  ret void, !dbg !113
}

; Function Attrs: null_pointer_is_valid
declare !dbg !114 void @dns_name_invalidate(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable
define ptr @dns_fixedname_name(ptr noundef %fixed) #0 !dbg !117 {
entry:
  %fixed.addr = alloca ptr, align 8
  store ptr %fixed, ptr %fixed.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fixed.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load ptr, ptr %fixed.addr, align 8, !dbg !123
  %name = getelementptr inbounds %struct.dns_fixedname, ptr %0, i32 0, i32 0, !dbg !124
  ret ptr %name, !dbg !125
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define ptr @dns_fixedname_initname(ptr noundef %fixed) #0 !dbg !126 {
entry:
  %fixed.addr = alloca ptr, align 8
  store ptr %fixed, ptr %fixed.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fixed.addr, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load ptr, ptr %fixed.addr, align 8, !dbg !130
  call void @dns_fixedname_init(ptr noundef %0), !dbg !131
  %1 = load ptr, ptr %fixed.addr, align 8, !dbg !132
  %call = call ptr @dns_fixedname_name(ptr noundef %1), !dbg !133
  ret ptr %call, !dbg !134
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fixedname.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "2d1d9ee4ecc4e289eb89da478d0b62a8")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!10 = distinct !DISubprogram(name: "dns_fixedname_init", scope: !1, file: !1, line: 19, type: !11, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_fixedname_t", file: !15, line: 87, baseType: !16)
!15 = !DIFile(filename: "include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_fixedname", file: !17, line: 61, size: 4224, elements: !18)
!17 = !DIFile(filename: "include/dns/fixedname.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "0de03067a9d468538b5b154e7da6cb18")
!18 = !{!19, !71, !76, !77}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 62, baseType: !20, size: 640)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !15, line: 107, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !22, line: 104, size: 640, elements: !23)
!22 = !DIFile(filename: "include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!23 = !{!24, !26, !29, !30, !31, !32, !33, !57, !63}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !21, file: !22, line: 105, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !21, file: !22, line: 106, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !21, file: !22, line: 107, baseType: !25, size: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !21, file: !22, line: 108, baseType: !25, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !21, file: !22, line: 109, baseType: !25, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !21, file: !22, line: 110, baseType: !27, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !21, file: !22, line: 111, baseType: !34, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !36, line: 35, baseType: !37)
!36 = !DIFile(filename: "isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !38, line: 173, size: 512, elements: !39)
!38 = !DIFile(filename: "isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !51, !55}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !37, file: !38, line: 174, baseType: !25, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !37, file: !38, line: 175, baseType: !3, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !37, file: !38, line: 178, baseType: !25, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !37, file: !38, line: 179, baseType: !25, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !37, file: !38, line: 180, baseType: !25, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !37, file: !38, line: 181, baseType: !25, size: 32, offset: 224)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !37, file: !38, line: 184, baseType: !47, size: 128, offset: 256)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !37, file: !38, line: 184, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !47, file: !38, line: 184, baseType: !34, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !38, line: 184, baseType: !34, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !37, file: !38, line: 186, baseType: !52, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !36, line: 59, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !36, line: 59, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !37, file: !38, line: 188, baseType: !56, size: 8, offset: 448)
!56 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !21, file: !22, line: 112, baseType: !58, size: 128, offset: 384)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !21, file: !22, line: 112, size: 128, elements: !59)
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !22, line: 112, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !22, line: 112, baseType: !61, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !21, file: !22, line: 113, baseType: !64, size: 128, offset: 512)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !21, file: !22, line: 113, size: 128, elements: !65)
!65 = !{!66, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !22, line: 113, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !15, line: 123, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !15, line: 123, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !64, file: !22, line: 113, baseType: !67, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !16, file: !17, line: 63, baseType: !72, size: 1024, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_offsets_t", file: !15, line: 112, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !16, file: !17, line: 64, baseType: !35, size: 512, offset: 1664)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !17, line: 65, baseType: !78, size: 2040, offset: 2176)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2040, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 255)
!81 = !{!82}
!82 = !DILocalVariable(name: "fixed", arg: 1, scope: !10, file: !1, line: 19, type: !13)
!83 = !DILocation(line: 19, column: 37, scope: !10)
!84 = !DILocation(line: 20, column: 17, scope: !10)
!85 = !DILocation(line: 20, column: 24, scope: !10)
!86 = !DILocation(line: 20, column: 30, scope: !10)
!87 = !DILocation(line: 20, column: 37, scope: !10)
!88 = !DILocation(line: 20, column: 2, scope: !10)
!89 = !DILocation(line: 21, column: 2, scope: !10)
!90 = !DILocation(line: 21, column: 2, scope: !91)
!91 = distinct !DILexicalBlock(scope: !10, file: !1, line: 21, column: 2)
!92 = !DILocation(line: 21, column: 2, scope: !93)
!93 = distinct !DILexicalBlock(scope: !91, file: !1, line: 21, column: 2)
!94 = !DILocation(line: 22, column: 22, scope: !10)
!95 = !DILocation(line: 22, column: 29, scope: !10)
!96 = !DILocation(line: 22, column: 36, scope: !10)
!97 = !DILocation(line: 22, column: 43, scope: !10)
!98 = !DILocation(line: 22, column: 2, scope: !10)
!99 = !DILocation(line: 23, column: 1, scope: !10)
!100 = !DISubprogram(name: "dns_name_init", scope: !22, file: !22, line: 208, type: !101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !61, !27}
!103 = !DISubprogram(name: "dns_name_setbuffer", scope: !22, file: !22, line: 279, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !61, !34}
!106 = distinct !DISubprogram(name: "dns_fixedname_invalidate", scope: !1, file: !1, line: 26, type: !11, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!107 = !{!108}
!108 = !DILocalVariable(name: "fixed", arg: 1, scope: !106, file: !1, line: 26, type: !13)
!109 = !DILocation(line: 26, column: 43, scope: !106)
!110 = !DILocation(line: 27, column: 23, scope: !106)
!111 = !DILocation(line: 27, column: 30, scope: !106)
!112 = !DILocation(line: 27, column: 2, scope: !106)
!113 = !DILocation(line: 28, column: 1, scope: !106)
!114 = !DISubprogram(name: "dns_name_invalidate", scope: !22, file: !22, line: 254, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !61}
!117 = distinct !DISubprogram(name: "dns_fixedname_name", scope: !1, file: !1, line: 31, type: !118, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!61, !13}
!120 = !{!121}
!121 = !DILocalVariable(name: "fixed", arg: 1, scope: !117, file: !1, line: 31, type: !13)
!122 = !DILocation(line: 31, column: 37, scope: !117)
!123 = !DILocation(line: 32, column: 11, scope: !117)
!124 = !DILocation(line: 32, column: 18, scope: !117)
!125 = !DILocation(line: 32, column: 2, scope: !117)
!126 = distinct !DISubprogram(name: "dns_fixedname_initname", scope: !1, file: !1, line: 36, type: !118, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!127 = !{!128}
!128 = !DILocalVariable(name: "fixed", arg: 1, scope: !126, file: !1, line: 36, type: !13)
!129 = !DILocation(line: 36, column: 41, scope: !126)
!130 = !DILocation(line: 37, column: 21, scope: !126)
!131 = !DILocation(line: 37, column: 2, scope: !126)
!132 = !DILocation(line: 38, column: 29, scope: !126)
!133 = !DILocation(line: 38, column: 10, scope: !126)
!134 = !DILocation(line: 38, column: 2, scope: !126)
