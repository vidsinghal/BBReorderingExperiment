; ModuleID = 'samples/188.bc'
source_filename = "unicode_fold2_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@onigenc_unicode_fold2_key.wordlist = internal constant [59 x i16] [i16 101, i16 253, i16 76, i16 29, i16 24, i16 239, i16 96, i16 71, i16 92, i16 67, i16 4, i16 62, i16 8, i16 58, i16 234, i16 109, i16 164, i16 88, i16 84, i16 80, i16 214, i16 0, i16 54, i16 261, i16 50, i16 105, i16 121, i16 125, i16 257, i16 42, i16 38, i16 249, i16 46, i16 117, i16 12, i16 113, i16 244, i16 229, i16 224, i16 219, i16 209, i16 16, i16 204, i16 199, i16 194, i16 189, i16 184, i16 179, i16 174, i16 169, i16 20, i16 34, i16 159, i16 154, i16 149, i16 144, i16 139, i16 134, i16 129], align 16, !dbg !0
@OnigUnicodeFolds2 = external global [0 x i32], align 4
@hash.asso_values = internal constant [256 x i8] c":987654\102;\0F;\19;;;;;;\03;;;;;;;;;;;;10/.-,+*;;;;;;;;;\15;;;;;;;;;;;;;;;;\02;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(\14'&%\0E\05$\14\07\19\22\1D \10;\1F;;\02\01;\19\0F;\0E;;\1C;\02;;;\0B;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\18;\16;;\0B;;;;;\07;\00;;\10;\01;;\10;;;\0F;;;\06;;;;\00;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;", align 16, !dbg !15

; Function Attrs: nounwind uwtable
define i32 @onigenc_unicode_fold2_key(ptr noundef %codes) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %codes.addr = alloca ptr, align 8
  %key = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codes, ptr %codes.addr, align 8, !tbaa !44
  tail call void @llvm.dbg.declare(metadata ptr %codes.addr, metadata !27, metadata !DIExpression()), !dbg !48
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #5, !dbg !49
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !28, metadata !DIExpression()), !dbg !50
  %0 = load ptr, ptr %codes.addr, align 8, !dbg !51, !tbaa !44
  %call = call i32 @hash(ptr noundef %0), !dbg !52
  store i32 %call, ptr %key, align 4, !dbg !50, !tbaa !53
  %1 = load i32, ptr %key, align 4, !dbg !55, !tbaa !53
  %cmp = icmp sle i32 %1, 58, !dbg !56
  br i1 %cmp, label %if.then, label %if.end7, !dbg !57

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #5, !dbg !58
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !30, metadata !DIExpression()), !dbg !59
  %2 = load i32, ptr %key, align 4, !dbg !60, !tbaa !53
  %idxprom = sext i32 %2 to i64, !dbg !61
  %arrayidx = getelementptr inbounds [59 x i16], ptr @onigenc_unicode_fold2_key.wordlist, i64 0, i64 %idxprom, !dbg !61
  %3 = load i16, ptr %arrayidx, align 2, !dbg !61, !tbaa !62
  %conv = sext i16 %3 to i32, !dbg !61
  store i32 %conv, ptr %index, align 4, !dbg !59, !tbaa !53
  %4 = load i32, ptr %index, align 4, !dbg !64, !tbaa !53
  %cmp1 = icmp sge i32 %4, 0, !dbg !66
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !67

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %codes.addr, align 8, !dbg !68, !tbaa !44
  %6 = load i32, ptr %index, align 4, !dbg !69, !tbaa !53
  %idx.ext = sext i32 %6 to i64, !dbg !70
  %add.ptr = getelementptr inbounds i32, ptr @OnigUnicodeFolds2, i64 %idx.ext, !dbg !70
  %call3 = call i32 @onig_codes_cmp(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 2), !dbg !71
  %cmp4 = icmp eq i32 %call3, 0, !dbg !72
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !73

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr %index, align 4, !dbg !74, !tbaa !53
  store i32 %7, ptr %retval, align 4, !dbg !75
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !75

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !76
  br label %cleanup, !dbg !76

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #5, !dbg !76
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !77

if.end7:                                          ; preds = %cleanup.cont, %entry
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !78
  br label %cleanup8, !dbg !78

cleanup8:                                         ; preds = %if.end7, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #5, !dbg !78
  %cleanup.dest9 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest9, label %unreachable [
    i32 0, label %cleanup.cont10
    i32 1, label %return
  ]

cleanup.cont10:                                   ; preds = %cleanup8
  store i32 -1, ptr %retval, align 4, !dbg !79
  br label %return, !dbg !79

return:                                           ; preds = %cleanup.cont10, %cleanup8
  %8 = load i32, ptr %retval, align 4, !dbg !80
  ret i32 %8, !dbg !80

unreachable:                                      ; preds = %cleanup8
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash(ptr noundef %codes) #2 !dbg !17 {
entry:
  %codes.addr = alloca ptr, align 8
  store ptr %codes, ptr %codes.addr, align 8, !tbaa !44
  tail call void @llvm.dbg.declare(metadata ptr %codes.addr, metadata !21, metadata !DIExpression()), !dbg !81
  %0 = load ptr, ptr %codes.addr, align 8, !dbg !82, !tbaa !44
  %call = call i32 @onig_codes_byte_at(ptr noundef %0, i32 noundef 5), !dbg !83
  %conv = trunc i32 %call to i8, !dbg !84
  %idxprom = zext i8 %conv to i64, !dbg !85
  %arrayidx = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom, !dbg !85
  %1 = load i8, ptr %arrayidx, align 1, !dbg !85, !tbaa !86
  %conv1 = zext i8 %1 to i32, !dbg !85
  %2 = load ptr, ptr %codes.addr, align 8, !dbg !87, !tbaa !44
  %call2 = call i32 @onig_codes_byte_at(ptr noundef %2, i32 noundef 2), !dbg !88
  %conv3 = trunc i32 %call2 to i8, !dbg !89
  %idxprom4 = zext i8 %conv3 to i64, !dbg !90
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom4, !dbg !90
  %3 = load i8, ptr %arrayidx5, align 1, !dbg !90, !tbaa !86
  %conv6 = zext i8 %3 to i32, !dbg !90
  %add = add nsw i32 %conv1, %conv6, !dbg !91
  ret i32 %add, !dbg !92
}

declare !dbg !93 i32 @onig_codes_cmp(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !97 i32 @onig_codes_byte_at(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "wordlist", scope: !2, file: !3, line: 91, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "onigenc_unicode_fold2_key", scope: !3, file: !3, line: 89, type: !4, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !26)
!3 = !DIFile(filename: "unicode_fold2_key.c", directory: "/local-ssd/oniguruma-5dixjcb7r6f3didayuuite3wcjskif36-build/aidengro/spack-stage-oniguruma-6.9.8-5dixjcb7r6f3didayuuite3wcjskif36/spack-src/src", checksumkind: CSK_MD5, checksum: "c303556297f676214e54689b41f40bb6")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCodePoint", file: !9, line: 83, baseType: !10)
!9 = !DIFile(filename: "./oniguruma.h", directory: "/local-ssd/oniguruma-5dixjcb7r6f3didayuuite3wcjskif36-build/aidengro/spack-stage-oniguruma-6.9.8-5dixjcb7r6f3didayuuite3wcjskif36/spack-src/src", checksumkind: CSK_MD5, checksum: "34baa0a549f6a1aa52ed2a6d4768d26d")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !12, globals: !14, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13}
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!0, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "asso_values", scope: !17, file: !3, line: 56, type: !22, isLocal: true, isDefinition: true)
!17 = distinct !DISubprogram(name: "hash", scope: !3, file: !3, line: 54, type: !18, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!10, !7}
!20 = !{!21}
!21 = !DILocalVariable(name: "codes", arg: 1, scope: !17, file: !3, line: 54, type: !7)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !24)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!24 = !{!25}
!25 = !DISubrange(count: 256)
!26 = !{!27, !28, !30}
!27 = !DILocalVariable(name: "codes", arg: 1, scope: !2, file: !3, line: 89, type: !7)
!28 = !DILocalVariable(name: "key", scope: !29, file: !3, line: 215, type: !6)
!29 = distinct !DILexicalBlock(scope: !2, file: !3, line: 214, column: 5)
!30 = !DILocalVariable(name: "index", scope: !31, file: !3, line: 219, type: !6)
!31 = distinct !DILexicalBlock(scope: !32, file: !3, line: 218, column: 9)
!32 = distinct !DILexicalBlock(scope: !29, file: !3, line: 217, column: 11)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 944, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!36 = !{!37}
!37 = !DISubrange(count: 59)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 89, column: 41, scope: !2)
!49 = !DILocation(line: 215, column: 7, scope: !29)
!50 = !DILocation(line: 215, column: 11, scope: !29)
!51 = !DILocation(line: 215, column: 22, scope: !29)
!52 = !DILocation(line: 215, column: 17, scope: !29)
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !46, i64 0}
!55 = !DILocation(line: 217, column: 11, scope: !32)
!56 = !DILocation(line: 217, column: 15, scope: !32)
!57 = !DILocation(line: 217, column: 11, scope: !29)
!58 = !DILocation(line: 219, column: 11, scope: !31)
!59 = !DILocation(line: 219, column: 15, scope: !31)
!60 = !DILocation(line: 219, column: 32, scope: !31)
!61 = !DILocation(line: 219, column: 23, scope: !31)
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !46, i64 0}
!64 = !DILocation(line: 221, column: 15, scope: !65)
!65 = distinct !DILexicalBlock(scope: !31, file: !3, line: 221, column: 15)
!66 = !DILocation(line: 221, column: 21, scope: !65)
!67 = !DILocation(line: 221, column: 26, scope: !65)
!68 = !DILocation(line: 221, column: 44, scope: !65)
!69 = !DILocation(line: 221, column: 71, scope: !65)
!70 = !DILocation(line: 221, column: 69, scope: !65)
!71 = !DILocation(line: 221, column: 29, scope: !65)
!72 = !DILocation(line: 221, column: 81, scope: !65)
!73 = !DILocation(line: 221, column: 15, scope: !31)
!74 = !DILocation(line: 222, column: 20, scope: !65)
!75 = !DILocation(line: 222, column: 13, scope: !65)
!76 = !DILocation(line: 223, column: 9, scope: !32)
!77 = !DILocation(line: 223, column: 9, scope: !31)
!78 = !DILocation(line: 224, column: 5, scope: !2)
!79 = !DILocation(line: 225, column: 3, scope: !2)
!80 = !DILocation(line: 226, column: 1, scope: !2)
!81 = !DILocation(line: 54, column: 20, scope: !17)
!82 = !DILocation(line: 85, column: 56, scope: !17)
!83 = !DILocation(line: 85, column: 37, scope: !17)
!84 = !DILocation(line: 85, column: 22, scope: !17)
!85 = !DILocation(line: 85, column: 10, scope: !17)
!86 = !{!46, !46, i64 0}
!87 = !DILocation(line: 85, column: 115, scope: !17)
!88 = !DILocation(line: 85, column: 96, scope: !17)
!89 = !DILocation(line: 85, column: 81, scope: !17)
!90 = !DILocation(line: 85, column: 69, scope: !17)
!91 = !DILocation(line: 85, column: 67, scope: !17)
!92 = !DILocation(line: 85, column: 3, scope: !17)
!93 = !DISubprogram(name: "onig_codes_cmp", scope: !94, file: !94, line: 242, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DIFile(filename: "./regenc.h", directory: "/local-ssd/oniguruma-5dixjcb7r6f3didayuuite3wcjskif36-build/aidengro/spack-stage-oniguruma-6.9.8-5dixjcb7r6f3didayuuite3wcjskif36/spack-src/src", checksumkind: CSK_MD5, checksum: "e93df5950f81737790ee125feb70f819")
!95 = !DISubroutineType(types: !96)
!96 = !{!6, !7, !7, !6}
!97 = !DISubprogram(name: "onig_codes_byte_at", scope: !94, file: !94, line: 243, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{!6, !7, !6}
