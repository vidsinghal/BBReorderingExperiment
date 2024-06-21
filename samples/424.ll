; ModuleID = 'samples/424.bc'
source_filename = "BLAS_dspmv_x-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_dspmv_x_(ptr noundef %uplo, ptr noundef %n, ptr noundef %alpha, ptr noundef %ap, ptr noundef %x, ptr noundef %incx, ptr noundef %beta, ptr noundef %y, ptr noundef %incy, ptr noundef %prec) #0 !dbg !27 {
entry:
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  %prec.addr = alloca ptr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %uplo.addr, metadata !37, metadata !DIExpression()), !dbg !51
  store ptr %n, ptr %n.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !38, metadata !DIExpression()), !dbg !52
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !39, metadata !DIExpression()), !dbg !53
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !40, metadata !DIExpression()), !dbg !54
  store ptr %x, ptr %x.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !41, metadata !DIExpression()), !dbg !55
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !42, metadata !DIExpression()), !dbg !56
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !43, metadata !DIExpression()), !dbg !57
  store ptr %y, ptr %y.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !44, metadata !DIExpression()), !dbg !58
  store ptr %incy, ptr %incy.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !45, metadata !DIExpression()), !dbg !59
  store ptr %prec, ptr %prec.addr, align 8, !tbaa !47
  tail call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !46, metadata !DIExpression()), !dbg !60
  %0 = load ptr, ptr %uplo.addr, align 8, !dbg !61, !tbaa !47
  %1 = load i32, ptr %0, align 4, !dbg !62, !tbaa !63
  %2 = load ptr, ptr %n.addr, align 8, !dbg !65, !tbaa !47
  %3 = load i32, ptr %2, align 4, !dbg !66, !tbaa !63
  %4 = load ptr, ptr %alpha.addr, align 8, !dbg !67, !tbaa !47
  %5 = load double, ptr %4, align 8, !dbg !68, !tbaa !69
  %6 = load ptr, ptr %ap.addr, align 8, !dbg !71, !tbaa !47
  %7 = load ptr, ptr %x.addr, align 8, !dbg !72, !tbaa !47
  %8 = load ptr, ptr %incx.addr, align 8, !dbg !73, !tbaa !47
  %9 = load i32, ptr %8, align 4, !dbg !74, !tbaa !63
  %10 = load ptr, ptr %beta.addr, align 8, !dbg !75, !tbaa !47
  %11 = load double, ptr %10, align 8, !dbg !76, !tbaa !69
  %12 = load ptr, ptr %y.addr, align 8, !dbg !77, !tbaa !47
  %13 = load ptr, ptr %incy.addr, align 8, !dbg !78, !tbaa !47
  %14 = load i32, ptr %13, align 4, !dbg !79, !tbaa !63
  %15 = load ptr, ptr %prec.addr, align 8, !dbg !80, !tbaa !47
  %16 = load i32, ptr %15, align 4, !dbg !81, !tbaa !63
  call void @BLAS_dspmv_x(i32 noundef 102, i32 noundef %1, i32 noundef %3, double noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %9, double noundef %11, ptr noundef %12, i32 noundef %14, i32 noundef %16), !dbg !82
  ret void, !dbg !83
}

declare !dbg !84 void @BLAS_dspmv_x(i32 noundef, i32 noundef, i32 noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_dspmv_x-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/spmv", checksumkind: CSK_MD5, checksum: "40d787533105af96e9d03bf4c01ae60d")
!2 = !{!3, !9, !13}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/spmv", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_uplo_type", file: !4, line: 15, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "blas_upper", value: 121)
!12 = !DIEnumerator(name: "blas_lower", value: 122)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_prec_type", file: !4, line: 63, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "blas_prec_single", value: 211)
!16 = !DIEnumerator(name: "blas_prec_double", value: 212)
!17 = !DIEnumerator(name: "blas_prec_indigenous", value: 213)
!18 = !DIEnumerator(name: "blas_prec_extra", value: 214)
!19 = !{!9, !13}
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!27 = distinct !DISubprogram(name: "blas_dspmv_x_", scope: !1, file: !1, line: 10, type: !28, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !32, !34, !34, !30, !32, !32, !30, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!37 = !DILocalVariable(name: "uplo", arg: 1, scope: !27, file: !1, line: 12, type: !30)
!38 = !DILocalVariable(name: "n", arg: 2, scope: !27, file: !1, line: 12, type: !30)
!39 = !DILocalVariable(name: "alpha", arg: 3, scope: !27, file: !1, line: 12, type: !32)
!40 = !DILocalVariable(name: "ap", arg: 4, scope: !27, file: !1, line: 12, type: !34)
!41 = !DILocalVariable(name: "x", arg: 5, scope: !27, file: !1, line: 12, type: !34)
!42 = !DILocalVariable(name: "incx", arg: 6, scope: !27, file: !1, line: 13, type: !30)
!43 = !DILocalVariable(name: "beta", arg: 7, scope: !27, file: !1, line: 13, type: !32)
!44 = !DILocalVariable(name: "y", arg: 8, scope: !27, file: !1, line: 13, type: !32)
!45 = !DILocalVariable(name: "incy", arg: 9, scope: !27, file: !1, line: 13, type: !30)
!46 = !DILocalVariable(name: "prec", arg: 10, scope: !27, file: !1, line: 13, type: !30)
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 12, column: 9, scope: !27)
!52 = !DILocation(line: 12, column: 20, scope: !27)
!53 = !DILocation(line: 12, column: 31, scope: !27)
!54 = !DILocation(line: 12, column: 52, scope: !27)
!55 = !DILocation(line: 12, column: 70, scope: !27)
!56 = !DILocation(line: 13, column: 9, scope: !27)
!57 = !DILocation(line: 13, column: 23, scope: !27)
!58 = !DILocation(line: 13, column: 37, scope: !27)
!59 = !DILocation(line: 13, column: 45, scope: !27)
!60 = !DILocation(line: 13, column: 56, scope: !27)
!61 = !DILocation(line: 14, column: 54, scope: !27)
!62 = !DILocation(line: 14, column: 53, scope: !27)
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !49, i64 0}
!65 = !DILocation(line: 14, column: 61, scope: !27)
!66 = !DILocation(line: 14, column: 60, scope: !27)
!67 = !DILocation(line: 14, column: 65, scope: !27)
!68 = !DILocation(line: 14, column: 64, scope: !27)
!69 = !{!70, !70, i64 0}
!70 = !{!"double", !49, i64 0}
!71 = !DILocation(line: 14, column: 72, scope: !27)
!72 = !DILocation(line: 14, column: 76, scope: !27)
!73 = !DILocation(line: 15, column: 10, scope: !27)
!74 = !DILocation(line: 15, column: 9, scope: !27)
!75 = !DILocation(line: 15, column: 17, scope: !27)
!76 = !DILocation(line: 15, column: 16, scope: !27)
!77 = !DILocation(line: 15, column: 23, scope: !27)
!78 = !DILocation(line: 15, column: 27, scope: !27)
!79 = !DILocation(line: 15, column: 26, scope: !27)
!80 = !DILocation(line: 15, column: 56, scope: !27)
!81 = !DILocation(line: 15, column: 55, scope: !27)
!82 = !DILocation(line: 14, column: 3, scope: !27)
!83 = !DILocation(line: 16, column: 1, scope: !27)
!84 = !DISubprogram(name: "BLAS_dspmv_x", scope: !1, file: !1, line: 4, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !3, !9, !31, !33, !34, !34, !31, !33, !32, !31, !13}
