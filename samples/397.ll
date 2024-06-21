; ModuleID = 'samples/397.bc'
source_filename = "BLAS_ctpmv_s-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_ctpmv_s_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %n, ptr noundef %alpha, ptr noundef %tp, ptr noundef %x, ptr noundef %incx) #0 !dbg !30 {
entry:
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %tp.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %uplo.addr, metadata !42, metadata !DIExpression()), !dbg !54
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %trans.addr, metadata !43, metadata !DIExpression()), !dbg !55
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %diag.addr, metadata !44, metadata !DIExpression()), !dbg !56
  store ptr %n, ptr %n.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !45, metadata !DIExpression()), !dbg !57
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !46, metadata !DIExpression()), !dbg !58
  store ptr %tp, ptr %tp.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !47, metadata !DIExpression()), !dbg !59
  store ptr %x, ptr %x.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !48, metadata !DIExpression()), !dbg !60
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !49, metadata !DIExpression()), !dbg !61
  %0 = load ptr, ptr %uplo.addr, align 8, !dbg !62, !tbaa !50
  %1 = load i32, ptr %0, align 4, !dbg !63, !tbaa !64
  %2 = load ptr, ptr %trans.addr, align 8, !dbg !66, !tbaa !50
  %3 = load i32, ptr %2, align 4, !dbg !67, !tbaa !64
  %4 = load ptr, ptr %diag.addr, align 8, !dbg !68, !tbaa !50
  %5 = load i32, ptr %4, align 4, !dbg !69, !tbaa !64
  %6 = load ptr, ptr %n.addr, align 8, !dbg !70, !tbaa !50
  %7 = load i32, ptr %6, align 4, !dbg !71, !tbaa !64
  %8 = load ptr, ptr %alpha.addr, align 8, !dbg !72, !tbaa !50
  %9 = load ptr, ptr %tp.addr, align 8, !dbg !73, !tbaa !50
  %10 = load ptr, ptr %x.addr, align 8, !dbg !74, !tbaa !50
  %11 = load ptr, ptr %incx.addr, align 8, !dbg !75, !tbaa !50
  %12 = load i32, ptr %11, align 4, !dbg !76, !tbaa !64
  call void @BLAS_ctpmv_s(i32 noundef 102, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %12), !dbg !77
  ret void, !dbg !78
}

declare !dbg !79 void @BLAS_ctpmv_s(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_ctpmv_s-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/tpmv", checksumkind: CSK_MD5, checksum: "df07389b61e48a618d6aac7d26c60ed9")
!2 = !{!3, !9, !13, !18}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/tpmv", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_uplo_type", file: !4, line: 15, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "blas_upper", value: 121)
!12 = !DIEnumerator(name: "blas_lower", value: 122)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_trans_type", file: !4, line: 10, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "blas_no_trans", value: 111)
!16 = !DIEnumerator(name: "blas_trans", value: 112)
!17 = !DIEnumerator(name: "blas_conj_trans", value: 113)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_diag_type", file: !4, line: 19, baseType: !5, size: 32, elements: !19)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "blas_non_unit_diag", value: 131)
!21 = !DIEnumerator(name: "blas_unit_diag", value: 132)
!22 = !{!9, !13, !18}
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!30 = distinct !DISubprogram(name: "blas_ctpmv_s_", scope: !1, file: !1, line: 10, type: !31, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33, !33, !33, !35, !37, !40, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DILocalVariable(name: "uplo", arg: 1, scope: !30, file: !1, line: 12, type: !33)
!43 = !DILocalVariable(name: "trans", arg: 2, scope: !30, file: !1, line: 12, type: !33)
!44 = !DILocalVariable(name: "diag", arg: 3, scope: !30, file: !1, line: 12, type: !33)
!45 = !DILocalVariable(name: "n", arg: 4, scope: !30, file: !1, line: 12, type: !33)
!46 = !DILocalVariable(name: "alpha", arg: 5, scope: !30, file: !1, line: 12, type: !35)
!47 = !DILocalVariable(name: "tp", arg: 6, scope: !30, file: !1, line: 13, type: !37)
!48 = !DILocalVariable(name: "x", arg: 7, scope: !30, file: !1, line: 13, type: !40)
!49 = !DILocalVariable(name: "incx", arg: 8, scope: !30, file: !1, line: 13, type: !33)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 12, column: 9, scope: !30)
!55 = !DILocation(line: 12, column: 20, scope: !30)
!56 = !DILocation(line: 12, column: 32, scope: !30)
!57 = !DILocation(line: 12, column: 43, scope: !30)
!58 = !DILocation(line: 12, column: 58, scope: !30)
!59 = !DILocation(line: 13, column: 17, scope: !30)
!60 = !DILocation(line: 13, column: 27, scope: !30)
!61 = !DILocation(line: 13, column: 35, scope: !30)
!62 = !DILocation(line: 14, column: 54, scope: !30)
!63 = !DILocation(line: 14, column: 53, scope: !30)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !52, i64 0}
!66 = !DILocation(line: 15, column: 33, scope: !30)
!67 = !DILocation(line: 15, column: 32, scope: !30)
!68 = !DILocation(line: 15, column: 63, scope: !30)
!69 = !DILocation(line: 15, column: 62, scope: !30)
!70 = !DILocation(line: 15, column: 70, scope: !30)
!71 = !DILocation(line: 15, column: 69, scope: !30)
!72 = !DILocation(line: 16, column: 9, scope: !30)
!73 = !DILocation(line: 16, column: 16, scope: !30)
!74 = !DILocation(line: 16, column: 20, scope: !30)
!75 = !DILocation(line: 16, column: 24, scope: !30)
!76 = !DILocation(line: 16, column: 23, scope: !30)
!77 = !DILocation(line: 14, column: 3, scope: !30)
!78 = !DILocation(line: 17, column: 1, scope: !30)
!79 = !DISubprogram(name: "BLAS_ctpmv_s", scope: !1, file: !1, line: 4, type: !80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !3, !9, !13, !18, !34, !35, !37, !40, !34}
