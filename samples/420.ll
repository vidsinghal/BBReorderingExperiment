; ModuleID = 'samples/420.bc'
source_filename = "BLAS_zsymm_z_c_x-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_zsymm_z_c_x_(ptr noundef %side, ptr noundef %uplo, ptr noundef %m, ptr noundef %n, ptr noundef %alpha, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %beta, ptr noundef %c, ptr noundef %ldc, ptr noundef %prec) #0 !dbg !31 {
entry:
  %side.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %prec.addr = alloca ptr, align 8
  store ptr %side, ptr %side.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %side.addr, metadata !40, metadata !DIExpression()), !dbg !57
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %uplo.addr, metadata !41, metadata !DIExpression()), !dbg !58
  store ptr %m, ptr %m.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !42, metadata !DIExpression()), !dbg !59
  store ptr %n, ptr %n.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !43, metadata !DIExpression()), !dbg !60
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !44, metadata !DIExpression()), !dbg !61
  store ptr %a, ptr %a.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !45, metadata !DIExpression()), !dbg !62
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %lda.addr, metadata !46, metadata !DIExpression()), !dbg !63
  store ptr %b, ptr %b.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !47, metadata !DIExpression()), !dbg !64
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %ldb.addr, metadata !48, metadata !DIExpression()), !dbg !65
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !49, metadata !DIExpression()), !dbg !66
  store ptr %c, ptr %c.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !50, metadata !DIExpression()), !dbg !67
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %ldc.addr, metadata !51, metadata !DIExpression()), !dbg !68
  store ptr %prec, ptr %prec.addr, align 8, !tbaa !53
  tail call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !52, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr %side.addr, align 8, !dbg !70, !tbaa !53
  %1 = load i32, ptr %0, align 4, !dbg !71, !tbaa !72
  %2 = load ptr, ptr %uplo.addr, align 8, !dbg !74, !tbaa !53
  %3 = load i32, ptr %2, align 4, !dbg !75, !tbaa !72
  %4 = load ptr, ptr %m.addr, align 8, !dbg !76, !tbaa !53
  %5 = load i32, ptr %4, align 4, !dbg !77, !tbaa !72
  %6 = load ptr, ptr %n.addr, align 8, !dbg !78, !tbaa !53
  %7 = load i32, ptr %6, align 4, !dbg !79, !tbaa !72
  %8 = load ptr, ptr %alpha.addr, align 8, !dbg !80, !tbaa !53
  %9 = load ptr, ptr %a.addr, align 8, !dbg !81, !tbaa !53
  %10 = load ptr, ptr %lda.addr, align 8, !dbg !82, !tbaa !53
  %11 = load i32, ptr %10, align 4, !dbg !83, !tbaa !72
  %12 = load ptr, ptr %b.addr, align 8, !dbg !84, !tbaa !53
  %13 = load ptr, ptr %ldb.addr, align 8, !dbg !85, !tbaa !53
  %14 = load i32, ptr %13, align 4, !dbg !86, !tbaa !72
  %15 = load ptr, ptr %beta.addr, align 8, !dbg !87, !tbaa !53
  %16 = load ptr, ptr %c.addr, align 8, !dbg !88, !tbaa !53
  %17 = load ptr, ptr %ldc.addr, align 8, !dbg !89, !tbaa !53
  %18 = load i32, ptr %17, align 4, !dbg !90, !tbaa !72
  %19 = load ptr, ptr %prec.addr, align 8, !dbg !91, !tbaa !53
  %20 = load i32, ptr %19, align 4, !dbg !92, !tbaa !72
  call void @BLAS_zsymm_z_c_x(i32 noundef 102, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %11, ptr noundef %12, i32 noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %18, i32 noundef %20), !dbg !93
  ret void, !dbg !94
}

declare !dbg !95 void @BLAS_zsymm_z_c_x(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !23, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_zsymm_z_c_x-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/symm", checksumkind: CSK_MD5, checksum: "6b6f2e095df6fdd01bdb5b1274a4fccb")
!2 = !{!3, !9, !13, !17}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/symm", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_side_type", file: !4, line: 23, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "blas_left_side", value: 141)
!12 = !DIEnumerator(name: "blas_right_side", value: 142)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_uplo_type", file: !4, line: 15, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "blas_upper", value: 121)
!16 = !DIEnumerator(name: "blas_lower", value: 122)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_prec_type", file: !4, line: 63, baseType: !5, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "blas_prec_single", value: 211)
!20 = !DIEnumerator(name: "blas_prec_double", value: 212)
!21 = !DIEnumerator(name: "blas_prec_indigenous", value: 213)
!22 = !DIEnumerator(name: "blas_prec_extra", value: 214)
!23 = !{!9, !13, !17}
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!31 = distinct !DISubprogram(name: "blas_zsymm_z_c_x_", scope: !1, file: !1, line: 11, type: !32, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !34, !34, !36, !36, !34, !36, !34, !36, !38, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DILocalVariable(name: "side", arg: 1, scope: !31, file: !1, line: 13, type: !34)
!41 = !DILocalVariable(name: "uplo", arg: 2, scope: !31, file: !1, line: 13, type: !34)
!42 = !DILocalVariable(name: "m", arg: 3, scope: !31, file: !1, line: 13, type: !34)
!43 = !DILocalVariable(name: "n", arg: 4, scope: !31, file: !1, line: 13, type: !34)
!44 = !DILocalVariable(name: "alpha", arg: 5, scope: !31, file: !1, line: 13, type: !36)
!45 = !DILocalVariable(name: "a", arg: 6, scope: !31, file: !1, line: 13, type: !36)
!46 = !DILocalVariable(name: "lda", arg: 7, scope: !31, file: !1, line: 14, type: !34)
!47 = !DILocalVariable(name: "b", arg: 8, scope: !31, file: !1, line: 14, type: !36)
!48 = !DILocalVariable(name: "ldb", arg: 9, scope: !31, file: !1, line: 14, type: !34)
!49 = !DILocalVariable(name: "beta", arg: 10, scope: !31, file: !1, line: 14, type: !36)
!50 = !DILocalVariable(name: "c", arg: 11, scope: !31, file: !1, line: 14, type: !38)
!51 = !DILocalVariable(name: "ldc", arg: 12, scope: !31, file: !1, line: 14, type: !34)
!52 = !DILocalVariable(name: "prec", arg: 13, scope: !31, file: !1, line: 15, type: !34)
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 13, column: 9, scope: !31)
!58 = !DILocation(line: 13, column: 20, scope: !31)
!59 = !DILocation(line: 13, column: 31, scope: !31)
!60 = !DILocation(line: 13, column: 39, scope: !31)
!61 = !DILocation(line: 13, column: 54, scope: !31)
!62 = !DILocation(line: 13, column: 73, scope: !31)
!63 = !DILocation(line: 14, column: 9, scope: !31)
!64 = !DILocation(line: 14, column: 26, scope: !31)
!65 = !DILocation(line: 14, column: 34, scope: !31)
!66 = !DILocation(line: 14, column: 51, scope: !31)
!67 = !DILocation(line: 14, column: 63, scope: !31)
!68 = !DILocation(line: 14, column: 71, scope: !31)
!69 = !DILocation(line: 15, column: 9, scope: !31)
!70 = !DILocation(line: 16, column: 58, scope: !31)
!71 = !DILocation(line: 16, column: 57, scope: !31)
!72 = !{!73, !73, i64 0}
!73 = !{!"int", !55, i64 0}
!74 = !DILocation(line: 17, column: 29, scope: !31)
!75 = !DILocation(line: 17, column: 28, scope: !31)
!76 = !DILocation(line: 17, column: 36, scope: !31)
!77 = !DILocation(line: 17, column: 35, scope: !31)
!78 = !DILocation(line: 17, column: 40, scope: !31)
!79 = !DILocation(line: 17, column: 39, scope: !31)
!80 = !DILocation(line: 17, column: 43, scope: !31)
!81 = !DILocation(line: 17, column: 50, scope: !31)
!82 = !DILocation(line: 17, column: 54, scope: !31)
!83 = !DILocation(line: 17, column: 53, scope: !31)
!84 = !DILocation(line: 17, column: 59, scope: !31)
!85 = !DILocation(line: 18, column: 7, scope: !31)
!86 = !DILocation(line: 18, column: 6, scope: !31)
!87 = !DILocation(line: 18, column: 12, scope: !31)
!88 = !DILocation(line: 18, column: 18, scope: !31)
!89 = !DILocation(line: 18, column: 22, scope: !31)
!90 = !DILocation(line: 18, column: 21, scope: !31)
!91 = !DILocation(line: 18, column: 50, scope: !31)
!92 = !DILocation(line: 18, column: 49, scope: !31)
!93 = !DILocation(line: 16, column: 3, scope: !31)
!94 = !DILocation(line: 19, column: 1, scope: !31)
!95 = !DISubprogram(name: "BLAS_zsymm_z_c_x", scope: !1, file: !1, line: 4, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !3, !9, !13, !35, !35, !36, !36, !35, !36, !35, !36, !38, !35, !17}
