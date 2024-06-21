; ModuleID = 'samples/680.bc'
source_filename = "BLAS_caxpby_x-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_caxpby_x_(ptr noundef %n, ptr noundef %alpha, ptr noundef %x, ptr noundef %incx, ptr noundef %beta, ptr noundef %y, ptr noundef %incy, ptr noundef %prec) #0 !dbg !18 {
entry:
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  %prec.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !27, metadata !DIExpression()), !dbg !39
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !28, metadata !DIExpression()), !dbg !40
  store ptr %x, ptr %x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !29, metadata !DIExpression()), !dbg !41
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !30, metadata !DIExpression()), !dbg !42
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !31, metadata !DIExpression()), !dbg !43
  store ptr %y, ptr %y.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !32, metadata !DIExpression()), !dbg !44
  store ptr %incy, ptr %incy.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !33, metadata !DIExpression()), !dbg !45
  store ptr %prec, ptr %prec.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !34, metadata !DIExpression()), !dbg !46
  %0 = load ptr, ptr %n.addr, align 8, !dbg !47, !tbaa !35
  %1 = load i32, ptr %0, align 4, !dbg !48, !tbaa !49
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !51, !tbaa !35
  %3 = load ptr, ptr %x.addr, align 8, !dbg !52, !tbaa !35
  %4 = load ptr, ptr %incx.addr, align 8, !dbg !53, !tbaa !35
  %5 = load i32, ptr %4, align 4, !dbg !54, !tbaa !49
  %6 = load ptr, ptr %beta.addr, align 8, !dbg !55, !tbaa !35
  %7 = load ptr, ptr %y.addr, align 8, !dbg !56, !tbaa !35
  %8 = load ptr, ptr %incy.addr, align 8, !dbg !57, !tbaa !35
  %9 = load i32, ptr %8, align 4, !dbg !58, !tbaa !49
  %10 = load ptr, ptr %prec.addr, align 8, !dbg !59, !tbaa !35
  %11 = load i32, ptr %10, align 4, !dbg !60, !tbaa !49
  call void @BLAS_caxpby_x(i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %9, i32 noundef %11), !dbg !61
  ret void, !dbg !62
}

declare !dbg !63 void @BLAS_caxpby_x(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_caxpby_x-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/axpby", checksumkind: CSK_MD5, checksum: "4a5ba14a92fe989a9c2956b2cf6bd9ec")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_prec_type", file: !4, line: 63, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/axpby", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "blas_prec_single", value: 211)
!8 = !DIEnumerator(name: "blas_prec_double", value: 212)
!9 = !DIEnumerator(name: "blas_prec_indigenous", value: 213)
!10 = !DIEnumerator(name: "blas_prec_extra", value: 214)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!18 = distinct !DISubprogram(name: "blas_caxpby_x_", scope: !1, file: !1, line: 9, type: !19, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !26)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !23, !23, !21, !23, !25, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34}
!27 = !DILocalVariable(name: "n", arg: 1, scope: !18, file: !1, line: 11, type: !21)
!28 = !DILocalVariable(name: "alpha", arg: 2, scope: !18, file: !1, line: 11, type: !23)
!29 = !DILocalVariable(name: "x", arg: 3, scope: !18, file: !1, line: 11, type: !23)
!30 = !DILocalVariable(name: "incx", arg: 4, scope: !18, file: !1, line: 11, type: !21)
!31 = !DILocalVariable(name: "beta", arg: 5, scope: !18, file: !1, line: 11, type: !23)
!32 = !DILocalVariable(name: "y", arg: 6, scope: !18, file: !1, line: 12, type: !25)
!33 = !DILocalVariable(name: "incy", arg: 7, scope: !18, file: !1, line: 12, type: !21)
!34 = !DILocalVariable(name: "prec", arg: 8, scope: !18, file: !1, line: 12, type: !21)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 11, column: 9, scope: !18)
!40 = !DILocation(line: 11, column: 24, scope: !18)
!41 = !DILocation(line: 11, column: 43, scope: !18)
!42 = !DILocation(line: 11, column: 51, scope: !18)
!43 = !DILocation(line: 11, column: 69, scope: !18)
!44 = !DILocation(line: 12, column: 10, scope: !18)
!45 = !DILocation(line: 12, column: 18, scope: !18)
!46 = !DILocation(line: 12, column: 29, scope: !18)
!47 = !DILocation(line: 13, column: 18, scope: !18)
!48 = !DILocation(line: 13, column: 17, scope: !18)
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !37, i64 0}
!51 = !DILocation(line: 13, column: 21, scope: !18)
!52 = !DILocation(line: 13, column: 28, scope: !18)
!53 = !DILocation(line: 13, column: 32, scope: !18)
!54 = !DILocation(line: 13, column: 31, scope: !18)
!55 = !DILocation(line: 13, column: 38, scope: !18)
!56 = !DILocation(line: 13, column: 44, scope: !18)
!57 = !DILocation(line: 13, column: 48, scope: !18)
!58 = !DILocation(line: 13, column: 47, scope: !18)
!59 = !DILocation(line: 14, column: 26, scope: !18)
!60 = !DILocation(line: 14, column: 25, scope: !18)
!61 = !DILocation(line: 13, column: 3, scope: !18)
!62 = !DILocation(line: 15, column: 1, scope: !18)
!63 = !DISubprogram(name: "BLAS_caxpby_x", scope: !1, file: !1, line: 4, type: !64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !22, !23, !23, !22, !23, !25, !22, !3}
