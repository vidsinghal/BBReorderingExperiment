; ModuleID = 'samples/87.bc'
source_filename = "regext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OnigErrorInfo = type { ptr, ptr, ptr }
%struct.OnigCompileInfo = type { i32, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @onig_new_deluxe(ptr noundef %reg, ptr noundef %pattern, ptr noundef %pattern_end, ptr noundef %ci, ptr noundef %einfo) #0 !dbg !559 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %pattern.addr = alloca ptr, align 8
  %pattern_end.addr = alloca ptr, align 8
  %ci.addr = alloca ptr, align 8
  %einfo.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %cpat = alloca ptr, align 8
  %cpat_end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8, !tbaa !593
  tail call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !581, metadata !DIExpression()), !dbg !597
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !593
  tail call void @llvm.dbg.declare(metadata ptr %pattern.addr, metadata !582, metadata !DIExpression()), !dbg !598
  store ptr %pattern_end, ptr %pattern_end.addr, align 8, !tbaa !593
  tail call void @llvm.dbg.declare(metadata ptr %pattern_end.addr, metadata !583, metadata !DIExpression()), !dbg !599
  store ptr %ci, ptr %ci.addr, align 8, !tbaa !593
  tail call void @llvm.dbg.declare(metadata ptr %ci.addr, metadata !584, metadata !DIExpression()), !dbg !600
  store ptr %einfo, ptr %einfo.addr, align 8, !tbaa !593
  tail call void @llvm.dbg.declare(metadata ptr %einfo.addr, metadata !585, metadata !DIExpression()), !dbg !601
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #6, !dbg !602
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !586, metadata !DIExpression()), !dbg !603
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpat) #6, !dbg !604
  tail call void @llvm.dbg.declare(metadata ptr %cpat, metadata !587, metadata !DIExpression()), !dbg !605
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpat_end) #6, !dbg !604
  tail call void @llvm.dbg.declare(metadata ptr %cpat_end, metadata !588, metadata !DIExpression()), !dbg !606
  %0 = load ptr, ptr %einfo.addr, align 8, !dbg !607, !tbaa !593
  %cmp = icmp ne ptr %0, null, !dbg !607
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %einfo.addr, align 8, !dbg !610, !tbaa !593
  %par = getelementptr inbounds %struct.OnigErrorInfo, ptr %1, i32 0, i32 1, !dbg !611
  store ptr null, ptr %par, align 8, !dbg !612, !tbaa !613
  br label %if.end, !dbg !610

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %ci.addr, align 8, !dbg !615, !tbaa !593
  %pattern_enc = getelementptr inbounds %struct.OnigCompileInfo, ptr %2, i32 0, i32 1, !dbg !617
  %3 = load ptr, ptr %pattern_enc, align 8, !dbg !617, !tbaa !618
  %4 = load ptr, ptr %ci.addr, align 8, !dbg !621, !tbaa !593
  %target_enc = getelementptr inbounds %struct.OnigCompileInfo, ptr %4, i32 0, i32 2, !dbg !622
  %5 = load ptr, ptr %target_enc, align 8, !dbg !622, !tbaa !623
  %cmp1 = icmp ne ptr %3, %5, !dbg !624
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !625

if.then2:                                         ; preds = %if.end
  store i32 -402, ptr %retval, align 4, !dbg !626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !626

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %pattern.addr, align 8, !dbg !628, !tbaa !593
  store ptr %6, ptr %cpat, align 8, !dbg !630, !tbaa !593
  %7 = load ptr, ptr %pattern_end.addr, align 8, !dbg !631, !tbaa !593
  store ptr %7, ptr %cpat_end, align 8, !dbg !632, !tbaa !593
  br label %if.end3

if.end3:                                          ; preds = %if.else
  %call = call noalias ptr @malloc(i64 noundef 456) #7, !dbg !633
  %8 = load ptr, ptr %reg.addr, align 8, !dbg !634, !tbaa !593
  store ptr %call, ptr %8, align 8, !dbg !635, !tbaa !593
  %9 = load ptr, ptr %reg.addr, align 8, !dbg !636, !tbaa !593
  %10 = load ptr, ptr %9, align 8, !dbg !636, !tbaa !593
  %cmp4 = icmp eq ptr %10, null, !dbg !636
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !638

if.then5:                                         ; preds = %if.end3
  store i32 -5, ptr %r, align 4, !dbg !639, !tbaa !641
  br label %err2, !dbg !642

if.end6:                                          ; preds = %if.end3
  %11 = load ptr, ptr %reg.addr, align 8, !dbg !643, !tbaa !593
  %12 = load ptr, ptr %11, align 8, !dbg !644, !tbaa !593
  %13 = load ptr, ptr %ci.addr, align 8, !dbg !645, !tbaa !593
  %option = getelementptr inbounds %struct.OnigCompileInfo, ptr %13, i32 0, i32 4, !dbg !646
  %14 = load i32, ptr %option, align 8, !dbg !646, !tbaa !647
  %15 = load ptr, ptr %ci.addr, align 8, !dbg !648, !tbaa !593
  %case_fold_flag = getelementptr inbounds %struct.OnigCompileInfo, ptr %15, i32 0, i32 5, !dbg !649
  %16 = load i32, ptr %case_fold_flag, align 4, !dbg !649, !tbaa !650
  %17 = load ptr, ptr %ci.addr, align 8, !dbg !651, !tbaa !593
  %target_enc7 = getelementptr inbounds %struct.OnigCompileInfo, ptr %17, i32 0, i32 2, !dbg !652
  %18 = load ptr, ptr %target_enc7, align 8, !dbg !652, !tbaa !623
  %19 = load ptr, ptr %ci.addr, align 8, !dbg !653, !tbaa !593
  %syntax = getelementptr inbounds %struct.OnigCompileInfo, ptr %19, i32 0, i32 3, !dbg !654
  %20 = load ptr, ptr %syntax, align 8, !dbg !654, !tbaa !655
  %call8 = call i32 @onig_reg_init(ptr noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %18, ptr noundef %20), !dbg !656
  store i32 %call8, ptr %r, align 4, !dbg !657, !tbaa !641
  %21 = load i32, ptr %r, align 4, !dbg !658, !tbaa !641
  %cmp9 = icmp ne i32 %21, 0, !dbg !660
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !661

if.then10:                                        ; preds = %if.end6
  br label %err, !dbg !662

if.end11:                                         ; preds = %if.end6
  %22 = load ptr, ptr %reg.addr, align 8, !dbg !663, !tbaa !593
  %23 = load ptr, ptr %22, align 8, !dbg !664, !tbaa !593
  %24 = load ptr, ptr %cpat, align 8, !dbg !665, !tbaa !593
  %25 = load ptr, ptr %cpat_end, align 8, !dbg !666, !tbaa !593
  %26 = load ptr, ptr %einfo.addr, align 8, !dbg !667, !tbaa !593
  %call12 = call i32 @onig_compile(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !668
  store i32 %call12, ptr %r, align 4, !dbg !669, !tbaa !641
  %27 = load i32, ptr %r, align 4, !dbg !670, !tbaa !641
  %cmp13 = icmp ne i32 %27, 0, !dbg !671
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !672

if.then14:                                        ; preds = %if.end11
  br label %err, !dbg !673

err:                                              ; preds = %if.then14, %if.then10
  tail call void @llvm.dbg.label(metadata !589), !dbg !674
  %28 = load ptr, ptr %reg.addr, align 8, !dbg !675, !tbaa !593
  %29 = load ptr, ptr %28, align 8, !dbg !676, !tbaa !593
  call void @onig_free(ptr noundef %29), !dbg !677
  %30 = load ptr, ptr %reg.addr, align 8, !dbg !678, !tbaa !593
  store ptr null, ptr %30, align 8, !dbg !679, !tbaa !593
  br label %if.end15, !dbg !680

if.end15:                                         ; preds = %err, %if.end11
  br label %err2, !dbg !681

err2:                                             ; preds = %if.end15, %if.then5
  tail call void @llvm.dbg.label(metadata !592), !dbg !682
  %31 = load ptr, ptr %cpat, align 8, !dbg !683, !tbaa !593
  %32 = load ptr, ptr %pattern.addr, align 8, !dbg !685, !tbaa !593
  %cmp16 = icmp ne ptr %31, %32, !dbg !686
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !687

if.then17:                                        ; preds = %err2
  %33 = load ptr, ptr %cpat, align 8, !dbg !688, !tbaa !593
  call void @free(ptr noundef %33) #6, !dbg !689
  br label %if.end18, !dbg !689

if.end18:                                         ; preds = %if.then17, %err2
  %34 = load i32, ptr %r, align 4, !dbg !690, !tbaa !641
  store i32 %34, ptr %retval, align 4, !dbg !691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !691

cleanup:                                          ; preds = %if.end18, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpat_end) #6, !dbg !692
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpat) #6, !dbg !692
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #6, !dbg !692
  %35 = load i32, ptr %retval, align 4, !dbg !692
  ret i32 %35, !dbg !692
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !693 noalias ptr @malloc(i64 noundef) #2

declare !dbg !700 i32 @onig_reg_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare !dbg !705 i32 @onig_compile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !708 void @onig_free(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !711 void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!553, !554, !555, !556, !557}
!llvm.ident = !{!558}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "regext.c", directory: "/local-ssd/oniguruma-5dixjcb7r6f3didayuuite3wcjskif36-build/aidengro/spack-stage-oniguruma-6.9.8-5dixjcb7r6f3didayuuite3wcjskif36/spack-src/src", checksumkind: CSK_MD5, checksum: "df613b36c9dd8cd5267778b98dfc4b0b")
!2 = !{!3, !9, !13, !99, !104, !110}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "TextSegmentBoundaryType", file: !4, line: 593, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./regint.h", directory: "/local-ssd/oniguruma-5dixjcb7r6f3didayuuite3wcjskif36-build/aidengro/spack-stage-oniguruma-6.9.8-5dixjcb7r6f3didayuuite3wcjskif36/spack-src/src", checksumkind: CSK_MD5, checksum: "a0dbc72b2d9129d87c5ff46819fc5307")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "EXTENDED_GRAPHEME_CLUSTER_BOUNDARY", value: 0)
!8 = !DIEnumerator(name: "WORD_BOUNDARY", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CheckPositionType", file: !4, line: 588, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "CHECK_POSITION_SEARCH_START", value: 0)
!12 = !DIEnumerator(name: "CHECK_POSITION_CURRENT_RIGHT_RANGE", value: 1)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OpCode", file: !4, line: 470, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!15 = !DIEnumerator(name: "OP_FINISH", value: 0)
!16 = !DIEnumerator(name: "OP_END", value: 1)
!17 = !DIEnumerator(name: "OP_STR_1", value: 2)
!18 = !DIEnumerator(name: "OP_STR_2", value: 3)
!19 = !DIEnumerator(name: "OP_STR_3", value: 4)
!20 = !DIEnumerator(name: "OP_STR_4", value: 5)
!21 = !DIEnumerator(name: "OP_STR_5", value: 6)
!22 = !DIEnumerator(name: "OP_STR_N", value: 7)
!23 = !DIEnumerator(name: "OP_STR_MB2N1", value: 8)
!24 = !DIEnumerator(name: "OP_STR_MB2N2", value: 9)
!25 = !DIEnumerator(name: "OP_STR_MB2N3", value: 10)
!26 = !DIEnumerator(name: "OP_STR_MB2N", value: 11)
!27 = !DIEnumerator(name: "OP_STR_MB3N", value: 12)
!28 = !DIEnumerator(name: "OP_STR_MBN", value: 13)
!29 = !DIEnumerator(name: "OP_CCLASS", value: 14)
!30 = !DIEnumerator(name: "OP_CCLASS_MB", value: 15)
!31 = !DIEnumerator(name: "OP_CCLASS_MIX", value: 16)
!32 = !DIEnumerator(name: "OP_CCLASS_NOT", value: 17)
!33 = !DIEnumerator(name: "OP_CCLASS_MB_NOT", value: 18)
!34 = !DIEnumerator(name: "OP_CCLASS_MIX_NOT", value: 19)
!35 = !DIEnumerator(name: "OP_ANYCHAR", value: 20)
!36 = !DIEnumerator(name: "OP_ANYCHAR_ML", value: 21)
!37 = !DIEnumerator(name: "OP_ANYCHAR_STAR", value: 22)
!38 = !DIEnumerator(name: "OP_ANYCHAR_ML_STAR", value: 23)
!39 = !DIEnumerator(name: "OP_ANYCHAR_STAR_PEEK_NEXT", value: 24)
!40 = !DIEnumerator(name: "OP_ANYCHAR_ML_STAR_PEEK_NEXT", value: 25)
!41 = !DIEnumerator(name: "OP_WORD", value: 26)
!42 = !DIEnumerator(name: "OP_WORD_ASCII", value: 27)
!43 = !DIEnumerator(name: "OP_NO_WORD", value: 28)
!44 = !DIEnumerator(name: "OP_NO_WORD_ASCII", value: 29)
!45 = !DIEnumerator(name: "OP_WORD_BOUNDARY", value: 30)
!46 = !DIEnumerator(name: "OP_NO_WORD_BOUNDARY", value: 31)
!47 = !DIEnumerator(name: "OP_WORD_BEGIN", value: 32)
!48 = !DIEnumerator(name: "OP_WORD_END", value: 33)
!49 = !DIEnumerator(name: "OP_TEXT_SEGMENT_BOUNDARY", value: 34)
!50 = !DIEnumerator(name: "OP_BEGIN_BUF", value: 35)
!51 = !DIEnumerator(name: "OP_END_BUF", value: 36)
!52 = !DIEnumerator(name: "OP_BEGIN_LINE", value: 37)
!53 = !DIEnumerator(name: "OP_END_LINE", value: 38)
!54 = !DIEnumerator(name: "OP_SEMI_END_BUF", value: 39)
!55 = !DIEnumerator(name: "OP_CHECK_POSITION", value: 40)
!56 = !DIEnumerator(name: "OP_BACKREF1", value: 41)
!57 = !DIEnumerator(name: "OP_BACKREF2", value: 42)
!58 = !DIEnumerator(name: "OP_BACKREF_N", value: 43)
!59 = !DIEnumerator(name: "OP_BACKREF_N_IC", value: 44)
!60 = !DIEnumerator(name: "OP_BACKREF_MULTI", value: 45)
!61 = !DIEnumerator(name: "OP_BACKREF_MULTI_IC", value: 46)
!62 = !DIEnumerator(name: "OP_BACKREF_WITH_LEVEL", value: 47)
!63 = !DIEnumerator(name: "OP_BACKREF_WITH_LEVEL_IC", value: 48)
!64 = !DIEnumerator(name: "OP_BACKREF_CHECK", value: 49)
!65 = !DIEnumerator(name: "OP_BACKREF_CHECK_WITH_LEVEL", value: 50)
!66 = !DIEnumerator(name: "OP_MEM_START", value: 51)
!67 = !DIEnumerator(name: "OP_MEM_START_PUSH", value: 52)
!68 = !DIEnumerator(name: "OP_MEM_END_PUSH", value: 53)
!69 = !DIEnumerator(name: "OP_MEM_END_PUSH_REC", value: 54)
!70 = !DIEnumerator(name: "OP_MEM_END", value: 55)
!71 = !DIEnumerator(name: "OP_MEM_END_REC", value: 56)
!72 = !DIEnumerator(name: "OP_FAIL", value: 57)
!73 = !DIEnumerator(name: "OP_JUMP", value: 58)
!74 = !DIEnumerator(name: "OP_PUSH", value: 59)
!75 = !DIEnumerator(name: "OP_PUSH_SUPER", value: 60)
!76 = !DIEnumerator(name: "OP_POP", value: 61)
!77 = !DIEnumerator(name: "OP_POP_TO_MARK", value: 62)
!78 = !DIEnumerator(name: "OP_PUSH_OR_JUMP_EXACT1", value: 63)
!79 = !DIEnumerator(name: "OP_PUSH_IF_PEEK_NEXT", value: 64)
!80 = !DIEnumerator(name: "OP_REPEAT", value: 65)
!81 = !DIEnumerator(name: "OP_REPEAT_NG", value: 66)
!82 = !DIEnumerator(name: "OP_REPEAT_INC", value: 67)
!83 = !DIEnumerator(name: "OP_REPEAT_INC_NG", value: 68)
!84 = !DIEnumerator(name: "OP_EMPTY_CHECK_START", value: 69)
!85 = !DIEnumerator(name: "OP_EMPTY_CHECK_END", value: 70)
!86 = !DIEnumerator(name: "OP_EMPTY_CHECK_END_MEMST", value: 71)
!87 = !DIEnumerator(name: "OP_EMPTY_CHECK_END_MEMST_PUSH", value: 72)
!88 = !DIEnumerator(name: "OP_MOVE", value: 73)
!89 = !DIEnumerator(name: "OP_STEP_BACK_START", value: 74)
!90 = !DIEnumerator(name: "OP_STEP_BACK_NEXT", value: 75)
!91 = !DIEnumerator(name: "OP_CUT_TO_MARK", value: 76)
!92 = !DIEnumerator(name: "OP_MARK", value: 77)
!93 = !DIEnumerator(name: "OP_SAVE_VAL", value: 78)
!94 = !DIEnumerator(name: "OP_UPDATE_VAR", value: 79)
!95 = !DIEnumerator(name: "OP_CALL", value: 80)
!96 = !DIEnumerator(name: "OP_RETURN", value: 81)
!97 = !DIEnumerator(name: "OP_CALLOUT_CONTENTS", value: 82)
!98 = !DIEnumerator(name: "OP_CALLOUT_NAME", value: 83)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 744, baseType: !5, size: 32, elements: !101)
!100 = !DIFile(filename: "./oniguruma.h", directory: "/local-ssd/oniguruma-5dixjcb7r6f3didayuuite3wcjskif36-build/aidengro/spack-stage-oniguruma-6.9.8-5dixjcb7r6f3didayuuite3wcjskif36/spack-src/src", checksumkind: CSK_MD5, checksum: "34baa0a549f6a1aa52ed2a6d4768d26d")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "ONIG_CALLOUT_OF_CONTENTS", value: 0)
!103 = !DIEnumerator(name: "ONIG_CALLOUT_OF_NAME", value: 1)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 749, baseType: !5, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "ONIG_CALLOUT_TYPE_SINGLE", value: 0)
!107 = !DIEnumerator(name: "ONIG_CALLOUT_TYPE_START_CALL", value: 1)
!108 = !DIEnumerator(name: "ONIG_CALLOUT_TYPE_BOTH_CALL", value: 2)
!109 = !DIEnumerator(name: "ONIG_CALLOUT_TYPE_START_MARK_END_CALL", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 774, baseType: !5, size: 32, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117}
!112 = !DIEnumerator(name: "ONIG_TYPE_VOID", value: 0)
!113 = !DIEnumerator(name: "ONIG_TYPE_LONG", value: 1)
!114 = !DIEnumerator(name: "ONIG_TYPE_CHAR", value: 2)
!115 = !DIEnumerator(name: "ONIG_TYPE_STRING", value: 4)
!116 = !DIEnumerator(name: "ONIG_TYPE_POINTER", value: 8)
!117 = !DIEnumerator(name: "ONIG_TYPE_TAG", value: 16)
!118 = !{!119, !120, !123}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigUChar", file: !100, line: 84, baseType: !122)
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !100, line: 712, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigRegexType", file: !100, line: 708, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !4, line: 888, size: 3648, elements: !127)
!127 = !{!128, !324, !326, !327, !328, !329, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !353, !448, !450, !469, !470, !471, !472, !473, !474, !476, !477, !478, !479, !480, !484, !485, !486, !487}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !126, file: !4, line: 890, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "Operation", file: !4, line: 866, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 725, size: 192, elements: !132)
!132 = !{!133, !136}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "opaddr", scope: !131, file: !4, line: 727, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !4, line: 731, baseType: !137, size: 128, offset: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !4, line: 731, size: 128, elements: !138)
!138 = !{!139, !146, !153, !159, !170, !174, !179, !183, !188, !193, !197, !209, !213, !217, !221, !226, !230, !235, !240, !244, !249, !253, !257, !263, !267, !271, !276, !281, !287, !292, !297, !303, !310, !315, !319}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !137, file: !4, line: 734, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 732, size: 128, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !140, file: !4, line: 733, baseType: !143, size: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "exact_n", scope: !137, file: !4, line: 738, baseType: !147, size: 128)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 735, size: 128, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !147, file: !4, line: 736, baseType: !120, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !147, file: !4, line: 737, baseType: !151, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "LengthType", file: !4, line: 600, baseType: !152)
!152 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "exact_len_n", scope: !137, file: !4, line: 743, baseType: !154, size: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 739, size: 128, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !154, file: !4, line: 740, baseType: !120, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !154, file: !4, line: 741, baseType: !151, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !154, file: !4, line: 742, baseType: !151, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cclass", scope: !137, file: !4, line: 746, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 744, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bsp", scope: !160, file: !4, line: 745, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "BitSetRef", file: !4, line: 424, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bits", file: !4, line: 422, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !167, line: 26, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !5)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cclass_mb", scope: !137, file: !4, line: 749, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 747, size: 64, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !171, file: !4, line: 748, baseType: !119, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cclass_mix", scope: !137, file: !4, line: 753, baseType: !175, size: 128)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 750, size: 128, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !175, file: !4, line: 751, baseType: !119, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bsp", scope: !175, file: !4, line: 752, baseType: !163, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "anychar_star_peek_next", scope: !137, file: !4, line: 756, baseType: !180, size: 8)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 754, size: 8, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !180, file: !4, line: 755, baseType: !121, size: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "word_boundary", scope: !137, file: !4, line: 759, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 757, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !184, file: !4, line: 758, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ModeType", file: !4, line: 607, baseType: !152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "text_segment_boundary", scope: !137, file: !4, line: 763, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 760, size: 64, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !4, line: 761, baseType: !3, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "not", scope: !189, file: !4, line: 762, baseType: !152, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "check_position", scope: !137, file: !4, line: 766, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 764, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !4, line: 765, baseType: !9, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "backref_general", scope: !137, file: !4, line: 774, baseType: !198, size: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 767, size: 128, elements: !199)
!199 = !{!200, !207, !208}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !4, line: 768, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !4, line: 768, size: 64, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !201, file: !4, line: 769, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "MemNumType", file: !4, line: 603, baseType: !152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !201, file: !4, line: 770, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !198, file: !4, line: 772, baseType: !152, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nest_level", scope: !198, file: !4, line: 773, baseType: !152, size: 32, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "backref_n", scope: !137, file: !4, line: 777, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 775, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !210, file: !4, line: 776, baseType: !204, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "memory_start", scope: !137, file: !4, line: 780, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 778, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !214, file: !4, line: 779, baseType: !204, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "memory_end", scope: !137, file: !4, line: 783, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 781, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !218, file: !4, line: 782, baseType: !204, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !137, file: !4, line: 786, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 784, size: 32, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !222, file: !4, line: 785, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "RelAddrType", file: !4, line: 598, baseType: !152)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !137, file: !4, line: 789, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 787, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !227, file: !4, line: 788, baseType: !225, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "push_or_jump_exact1", scope: !137, file: !4, line: 793, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 790, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !231, file: !4, line: 791, baseType: !225, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !231, file: !4, line: 792, baseType: !121, size: 8, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "push_if_peek_next", scope: !137, file: !4, line: 797, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 794, size: 64, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !236, file: !4, line: 795, baseType: !225, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !236, file: !4, line: 796, baseType: !121, size: 8, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pop_to_mark", scope: !137, file: !4, line: 800, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 798, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !241, file: !4, line: 799, baseType: !204, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !137, file: !4, line: 804, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 801, size: 64, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !245, file: !4, line: 802, baseType: !204, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !245, file: !4, line: 803, baseType: !225, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_inc", scope: !137, file: !4, line: 807, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 805, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !250, file: !4, line: 806, baseType: !204, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "empty_check_start", scope: !137, file: !4, line: 810, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 808, size: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !254, file: !4, line: 809, baseType: !204, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "empty_check_end", scope: !137, file: !4, line: 814, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 811, size: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !258, file: !4, line: 812, baseType: !204, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "empty_status_mem", scope: !258, file: !4, line: 813, baseType: !262, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "MemStatusType", file: !4, line: 346, baseType: !5)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prec_read_not_start", scope: !137, file: !4, line: 817, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 815, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !264, file: !4, line: 816, baseType: !225, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "look_behind", scope: !137, file: !4, line: 820, baseType: !268, size: 32)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 818, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !268, file: !4, line: 819, baseType: !151, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "look_behind_not_start", scope: !137, file: !4, line: 824, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 821, size: 64, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !272, file: !4, line: 822, baseType: !151, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !272, file: !4, line: 823, baseType: !225, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !137, file: !4, line: 827, baseType: !277, size: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 825, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !277, file: !4, line: 826, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "RelPositionType", file: !4, line: 601, baseType: !152)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "step_back_start", scope: !137, file: !4, line: 832, baseType: !282, size: 96)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 828, size: 96, elements: !283)
!283 = !{!284, !285, !286}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !282, file: !4, line: 829, baseType: !151, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !282, file: !4, line: 830, baseType: !151, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !282, file: !4, line: 831, baseType: !225, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cut_to_mark", scope: !137, file: !4, line: 836, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 833, size: 64, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !288, file: !4, line: 834, baseType: !204, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pos", scope: !288, file: !4, line: 835, baseType: !152, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !137, file: !4, line: 840, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 837, size: 64, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !293, file: !4, line: 838, baseType: !204, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "save_pos", scope: !293, file: !4, line: 839, baseType: !152, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "save_val", scope: !137, file: !4, line: 844, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 841, size: 64, elements: !299)
!299 = !{!300, !302}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !298, file: !4, line: 842, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "SaveType", file: !4, line: 605, baseType: !152)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !298, file: !4, line: 843, baseType: !204, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "update_var", scope: !137, file: !4, line: 849, baseType: !304, size: 96)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 845, size: 96, elements: !305)
!305 = !{!306, !308, !309}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !4, line: 846, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpdateVarType", file: !4, line: 606, baseType: !152)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !304, file: !4, line: 847, baseType: !204, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !304, file: !4, line: 848, baseType: !152, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !137, file: !4, line: 855, baseType: !311, size: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 850, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !311, file: !4, line: 851, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "AbsAddrType", file: !4, line: 599, baseType: !152)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "callout_contents", scope: !137, file: !4, line: 859, baseType: !316, size: 32)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 857, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !316, file: !4, line: 858, baseType: !204, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "callout_name", scope: !137, file: !4, line: 863, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !4, line: 860, size: 64, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !320, file: !4, line: 861, baseType: !204, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !320, file: !4, line: 862, baseType: !204, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ocs", scope: !126, file: !4, line: 892, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ops_curr", scope: !126, file: !4, line: 894, baseType: !129, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ops_used", scope: !126, file: !4, line: 895, baseType: !5, size: 32, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ops_alloc", scope: !126, file: !4, line: 896, baseType: !5, size: 32, offset: 224)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "string_pool", scope: !126, file: !4, line: 897, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "string_pool_end", scope: !126, file: !4, line: 898, baseType: !330, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_mem", scope: !126, file: !4, line: 900, baseType: !152, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_repeat", scope: !126, file: !4, line: 901, baseType: !152, size: 32, offset: 416)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "num_empty_check", scope: !126, file: !4, line: 902, baseType: !152, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_call", scope: !126, file: !4, line: 903, baseType: !152, size: 32, offset: 480)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "capture_history", scope: !126, file: !4, line: 904, baseType: !262, size: 32, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "push_mem_start", scope: !126, file: !4, line: 905, baseType: !262, size: 32, offset: 544)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "push_mem_end", scope: !126, file: !4, line: 906, baseType: !262, size: 32, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "stack_pop_level", scope: !126, file: !4, line: 907, baseType: !152, size: 32, offset: 608)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_range_alloc", scope: !126, file: !4, line: 908, baseType: !152, size: 32, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_range", scope: !126, file: !4, line: 909, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "RepeatRange", file: !4, line: 886, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 879, size: 128, elements: !345)
!345 = !{!346, !347, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !344, file: !4, line: 880, baseType: !152, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !344, file: !4, line: 881, baseType: !152, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !344, file: !4, line: 885, baseType: !349, size: 64, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !4, line: 882, size: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pcode", scope: !349, file: !4, line: 883, baseType: !129, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !349, file: !4, line: 884, baseType: !152, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !126, file: !4, line: 911, baseType: !354, size: 64, offset: 768)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigEncoding", file: !100, line: 155, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigEncodingType", file: !100, line: 153, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OnigEncodingTypeST", file: !100, line: 130, size: 1280, elements: !358)
!358 = !{!359, !365, !369, !370, !371, !375, !380, !384, !388, !394, !403, !417, !422, !427, !434, !438, !439, !443, !444, !445, !446, !447}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mbc_enc_len", scope: !357, file: !100, line: 131, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!152, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !100, line: 132, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_len", scope: !357, file: !100, line: 133, baseType: !152, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "min_enc_len", scope: !357, file: !100, line: 134, baseType: !152, size: 32, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_mbc_newline", scope: !357, file: !100, line: 135, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!152, !363, !363}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mbc_to_code", scope: !357, file: !100, line: 136, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !363, !363}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCodePoint", file: !100, line: 83, baseType: !5)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "code_to_mbclen", scope: !357, file: !100, line: 137, baseType: !381, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!152, !379}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "code_to_mbc", scope: !357, file: !100, line: 138, baseType: !385, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!152, !379, !120}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mbc_case_fold", scope: !357, file: !100, line: 139, baseType: !389, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!152, !392, !393, !363, !120}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCaseFoldType", file: !100, line: 90, baseType: !5)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "apply_all_case_fold", scope: !357, file: !100, line: 140, baseType: !395, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!152, !392, !398, !119}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigApplyAllCaseFoldFunc", file: !100, line: 128, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!152, !379, !402, !152, !119}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "get_case_fold_codes_by_str", scope: !357, file: !100, line: 141, baseType: !404, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!152, !392, !363, !363, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCaseFoldCodeItem", file: !100, line: 117, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 113, size: 160, elements: !410)
!410 = !{!411, !412, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "byte_len", scope: !409, file: !100, line: 114, baseType: !152, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !409, file: !100, line: 115, baseType: !152, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !409, file: !100, line: 116, baseType: !414, size: 96, offset: 64)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 96, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 3)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "property_name_to_ctype", scope: !357, file: !100, line: 142, baseType: !418, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!152, !421, !120, !120}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_code_ctype", scope: !357, file: !100, line: 143, baseType: !423, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!152, !379, !426}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCtype", file: !100, line: 85, baseType: !5)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "get_ctype_code_range", scope: !357, file: !100, line: 144, baseType: !428, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!152, !426, !402, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "left_adjust_char_head", scope: !357, file: !100, line: 145, baseType: !435, size: 64, offset: 832)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!120, !363, !363}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "is_allowed_reverse_match", scope: !357, file: !100, line: 146, baseType: !372, size: 64, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !357, file: !100, line: 147, baseType: !440, size: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!152}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !357, file: !100, line: 148, baseType: !440, size: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid_mbc_string", scope: !357, file: !100, line: 149, baseType: !372, size: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !357, file: !100, line: 150, baseType: !5, size: 32, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sb_range", scope: !357, file: !100, line: 151, baseType: !379, size: 32, offset: 1184)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !357, file: !100, line: 152, baseType: !152, size: 32, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !126, file: !4, line: 912, baseType: !449, size: 32, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigOptionType", file: !100, line: 370, baseType: !5)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !126, file: !4, line: 913, baseType: !451, size: 64, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigSyntaxType", file: !100, line: 418, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 412, size: 320, elements: !454)
!454 = !{!455, !456, !457, !458, !459}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !453, file: !100, line: 413, baseType: !5, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "op2", scope: !453, file: !100, line: 414, baseType: !5, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "behavior", scope: !453, file: !100, line: 415, baseType: !5, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !453, file: !100, line: 416, baseType: !449, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "meta_char_table", scope: !453, file: !100, line: 417, baseType: !460, size: 192, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigMetaCharTableType", file: !100, line: 126, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 119, size: 192, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "esc", scope: !461, file: !100, line: 120, baseType: !379, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "anychar", scope: !461, file: !100, line: 121, baseType: !379, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "anytime", scope: !461, file: !100, line: 122, baseType: !379, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "zero_or_one_time", scope: !461, file: !100, line: 123, baseType: !379, size: 32, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "one_or_more_time", scope: !461, file: !100, line: 124, baseType: !379, size: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "anychar_anytime", scope: !461, file: !100, line: 125, baseType: !379, size: 32, offset: 160)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "case_fold_flag", scope: !126, file: !4, line: 914, baseType: !392, size: 32, offset: 960)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name_table", scope: !126, file: !4, line: 915, baseType: !119, size: 64, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !126, file: !4, line: 918, baseType: !152, size: 32, offset: 1088)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "threshold_len", scope: !126, file: !4, line: 919, baseType: !152, size: 32, offset: 1120)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !126, file: !4, line: 920, baseType: !152, size: 32, offset: 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "anc_dist_min", scope: !126, file: !4, line: 921, baseType: !475, size: 32, offset: 1184)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigLen", file: !100, line: 86, baseType: !5)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "anc_dist_max", scope: !126, file: !4, line: 922, baseType: !475, size: 32, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sub_anchor", scope: !126, file: !4, line: 923, baseType: !152, size: 32, offset: 1248)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !126, file: !4, line: 924, baseType: !330, size: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "exact_end", scope: !126, file: !4, line: 925, baseType: !330, size: 64, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !126, file: !4, line: 926, baseType: !481, size: 2048, offset: 1408)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2048, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "map_offset", scope: !126, file: !4, line: 927, baseType: !152, size: 32, offset: 3456)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dist_min", scope: !126, file: !4, line: 928, baseType: !475, size: 32, offset: 3488)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dist_max", scope: !126, file: !4, line: 929, baseType: !475, size: 32, offset: 3520)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "extp", scope: !126, file: !4, line: 930, baseType: !488, size: 64, offset: 3584)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegexExt", file: !4, line: 877, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 868, size: 320, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !490, file: !4, line: 869, baseType: !363, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_end", scope: !490, file: !4, line: 870, baseType: !363, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tag_table", scope: !490, file: !4, line: 872, baseType: !119, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "callout_num", scope: !490, file: !4, line: 873, baseType: !152, size: 32, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "callout_list_alloc", scope: !490, file: !4, line: 874, baseType: !152, size: 32, offset: 224)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "callout_list", scope: !490, file: !4, line: 875, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "CalloutListEntry", file: !4, line: 325, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 303, size: 1152, elements: !501)
!501 = !{!502, !503, !505, !506, !507, !508, !509, !511, !519, !520}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !500, file: !4, line: 304, baseType: !152, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !500, file: !4, line: 305, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCalloutOf", file: !100, line: 747, baseType: !99)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !500, file: !4, line: 306, baseType: !152, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name_id", scope: !500, file: !4, line: 307, baseType: !152, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tag_start", scope: !500, file: !4, line: 308, baseType: !363, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tag_end", scope: !500, file: !4, line: 309, baseType: !363, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !4, line: 310, baseType: !510, size: 32, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCalloutType", file: !100, line: 754, baseType: !104)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_func", scope: !500, file: !4, line: 311, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCalloutFunc", file: !100, line: 766, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!152, !516, !119}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCalloutArgs", file: !100, line: 764, baseType: !518)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "OnigCalloutArgsStruct", file: !100, line: 763, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "end_func", scope: !500, file: !4, line: 312, baseType: !512, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !500, file: !4, line: 324, baseType: !521, size: 704, offset: 448)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !4, line: 313, size: 704, elements: !522)
!522 = !{!523, !528}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !521, file: !4, line: 317, baseType: !524, size: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !4, line: 314, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !524, file: !4, line: 315, baseType: !363, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !524, file: !4, line: 316, baseType: !363, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !521, file: !4, line: 323, baseType: !529, size: 704)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !4, line: 318, size: 704, elements: !530)
!530 = !{!531, !532, !533, !538}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !529, file: !4, line: 319, baseType: !152, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "passed_num", scope: !529, file: !4, line: 320, baseType: !152, size: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !529, file: !4, line: 321, baseType: !534, size: 128, offset: 64)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 128, elements: !536)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigType", file: !100, line: 781, baseType: !110)
!536 = !{!537}
!537 = !DISubrange(count: 4)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !529, file: !4, line: 322, baseType: !539, size: 512, offset: 192)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 512, elements: !536)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigValue", file: !100, line: 792, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !100, line: 783, size: 128, elements: !542)
!542 = !{!543, !545, !546, !551, !552}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !541, file: !100, line: 784, baseType: !544, size: 64)
!544 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !541, file: !100, line: 785, baseType: !379, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !541, file: !100, line: 789, baseType: !547, size: 128)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !100, line: 786, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !547, file: !100, line: 787, baseType: !120, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !547, file: !100, line: 788, baseType: !120, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !541, file: !100, line: 790, baseType: !119, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !541, file: !100, line: 791, baseType: !152, size: 32)
!553 = !{i32 7, !"Dwarf Version", i32 5}
!554 = !{i32 2, !"Debug Info Version", i32 3}
!555 = !{i32 1, !"wchar_size", i32 4}
!556 = !{i32 8, !"PIC Level", i32 2}
!557 = !{i32 7, !"uwtable", i32 2}
!558 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!559 = distinct !DISubprogram(name: "onig_new_deluxe", scope: !1, file: !1, line: 165, type: !560, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !580)
!560 = !DISubroutineType(types: !561)
!561 = !{!152, !562, !363, !363, !563, !573}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigCompileInfo", file: !100, line: 731, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 724, size: 320, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_elements", scope: !565, file: !100, line: 725, baseType: !152, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_enc", scope: !565, file: !100, line: 726, baseType: !354, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "target_enc", scope: !565, file: !100, line: 727, baseType: !354, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !565, file: !100, line: 728, baseType: !451, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !565, file: !100, line: 729, baseType: !449, size: 32, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "case_fold_flag", scope: !565, file: !100, line: 730, baseType: !392, size: 32, offset: 288)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigErrorInfo", file: !100, line: 694, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 690, size: 192, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !575, file: !100, line: 691, baseType: !354, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !575, file: !100, line: 692, baseType: !120, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "par_end", scope: !575, file: !100, line: 693, baseType: !120, size: 64, offset: 128)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !592}
!581 = !DILocalVariable(name: "reg", arg: 1, scope: !559, file: !1, line: 165, type: !562)
!582 = !DILocalVariable(name: "pattern", arg: 2, scope: !559, file: !1, line: 165, type: !363)
!583 = !DILocalVariable(name: "pattern_end", arg: 3, scope: !559, file: !1, line: 165, type: !363)
!584 = !DILocalVariable(name: "ci", arg: 4, scope: !559, file: !1, line: 166, type: !563)
!585 = !DILocalVariable(name: "einfo", arg: 5, scope: !559, file: !1, line: 166, type: !573)
!586 = !DILocalVariable(name: "r", scope: !559, file: !1, line: 168, type: !152)
!587 = !DILocalVariable(name: "cpat", scope: !559, file: !1, line: 169, type: !120)
!588 = !DILocalVariable(name: "cpat_end", scope: !559, file: !1, line: 169, type: !120)
!589 = !DILabel(scope: !590, name: "err", file: !1, line: 193)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 192, column: 15)
!591 = distinct !DILexicalBlock(scope: !559, file: !1, line: 192, column: 7)
!592 = !DILabel(scope: !559, name: "err2", file: !1, line: 198)
!593 = !{!594, !594, i64 0}
!594 = !{!"any pointer", !595, i64 0}
!595 = !{!"omnipotent char", !596, i64 0}
!596 = !{!"Simple C/C++ TBAA"}
!597 = !DILocation(line: 165, column: 27, scope: !559)
!598 = !DILocation(line: 165, column: 45, scope: !559)
!599 = !DILocation(line: 165, column: 67, scope: !559)
!600 = !DILocation(line: 166, column: 34, scope: !559)
!601 = !DILocation(line: 166, column: 53, scope: !559)
!602 = !DILocation(line: 168, column: 3, scope: !559)
!603 = !DILocation(line: 168, column: 7, scope: !559)
!604 = !DILocation(line: 169, column: 3, scope: !559)
!605 = !DILocation(line: 169, column: 10, scope: !559)
!606 = !DILocation(line: 169, column: 17, scope: !559)
!607 = !DILocation(line: 171, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !559, file: !1, line: 171, column: 7)
!609 = !DILocation(line: 171, column: 7, scope: !559)
!610 = !DILocation(line: 171, column: 27, scope: !608)
!611 = !DILocation(line: 171, column: 34, scope: !608)
!612 = !DILocation(line: 171, column: 38, scope: !608)
!613 = !{!614, !594, i64 8}
!614 = !{!"", !594, i64 0, !594, i64 8, !594, i64 16}
!615 = !DILocation(line: 173, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !559, file: !1, line: 173, column: 7)
!617 = !DILocation(line: 173, column: 11, scope: !616)
!618 = !{!619, !594, i64 8}
!619 = !{!"", !620, i64 0, !594, i64 8, !594, i64 16, !594, i64 24, !620, i64 32, !620, i64 36}
!620 = !{!"int", !595, i64 0}
!621 = !DILocation(line: 173, column: 26, scope: !616)
!622 = !DILocation(line: 173, column: 30, scope: !616)
!623 = !{!619, !594, i64 16}
!624 = !DILocation(line: 173, column: 23, scope: !616)
!625 = !DILocation(line: 173, column: 7, scope: !559)
!626 = !DILocation(line: 174, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !616, file: !1, line: 173, column: 42)
!628 = !DILocation(line: 177, column: 25, scope: !629)
!629 = distinct !DILexicalBlock(scope: !616, file: !1, line: 176, column: 8)
!630 = !DILocation(line: 177, column: 14, scope: !629)
!631 = !DILocation(line: 178, column: 25, scope: !629)
!632 = !DILocation(line: 178, column: 14, scope: !629)
!633 = !DILocation(line: 181, column: 21, scope: !559)
!634 = !DILocation(line: 181, column: 4, scope: !559)
!635 = !DILocation(line: 181, column: 8, scope: !559)
!636 = !DILocation(line: 182, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !559, file: !1, line: 182, column: 7)
!638 = !DILocation(line: 182, column: 7, scope: !559)
!639 = !DILocation(line: 183, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !1, line: 182, column: 22)
!641 = !{!620, !620, i64 0}
!642 = !DILocation(line: 184, column: 5, scope: !640)
!643 = !DILocation(line: 187, column: 22, scope: !559)
!644 = !DILocation(line: 187, column: 21, scope: !559)
!645 = !DILocation(line: 187, column: 27, scope: !559)
!646 = !DILocation(line: 187, column: 31, scope: !559)
!647 = !{!619, !620, i64 32}
!648 = !DILocation(line: 187, column: 39, scope: !559)
!649 = !DILocation(line: 187, column: 43, scope: !559)
!650 = !{!619, !620, i64 36}
!651 = !DILocation(line: 187, column: 59, scope: !559)
!652 = !DILocation(line: 187, column: 63, scope: !559)
!653 = !DILocation(line: 188, column: 21, scope: !559)
!654 = !DILocation(line: 188, column: 25, scope: !559)
!655 = !{!619, !594, i64 24}
!656 = !DILocation(line: 187, column: 7, scope: !559)
!657 = !DILocation(line: 187, column: 5, scope: !559)
!658 = !DILocation(line: 189, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !559, file: !1, line: 189, column: 7)
!660 = !DILocation(line: 189, column: 9, scope: !659)
!661 = !DILocation(line: 189, column: 7, scope: !559)
!662 = !DILocation(line: 189, column: 15, scope: !659)
!663 = !DILocation(line: 191, column: 21, scope: !559)
!664 = !DILocation(line: 191, column: 20, scope: !559)
!665 = !DILocation(line: 191, column: 26, scope: !559)
!666 = !DILocation(line: 191, column: 32, scope: !559)
!667 = !DILocation(line: 191, column: 42, scope: !559)
!668 = !DILocation(line: 191, column: 7, scope: !559)
!669 = !DILocation(line: 191, column: 5, scope: !559)
!670 = !DILocation(line: 192, column: 7, scope: !591)
!671 = !DILocation(line: 192, column: 9, scope: !591)
!672 = !DILocation(line: 192, column: 7, scope: !559)
!673 = !DILocation(line: 192, column: 15, scope: !591)
!674 = !DILocation(line: 193, column: 3, scope: !590)
!675 = !DILocation(line: 194, column: 16, scope: !590)
!676 = !DILocation(line: 194, column: 15, scope: !590)
!677 = !DILocation(line: 194, column: 5, scope: !590)
!678 = !DILocation(line: 195, column: 6, scope: !590)
!679 = !DILocation(line: 195, column: 10, scope: !590)
!680 = !DILocation(line: 196, column: 3, scope: !590)
!681 = !DILocation(line: 192, column: 12, scope: !591)
!682 = !DILocation(line: 198, column: 2, scope: !559)
!683 = !DILocation(line: 199, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !559, file: !1, line: 199, column: 7)
!685 = !DILocation(line: 199, column: 15, scope: !684)
!686 = !DILocation(line: 199, column: 12, scope: !684)
!687 = !DILocation(line: 199, column: 7, scope: !559)
!688 = !DILocation(line: 199, column: 30, scope: !684)
!689 = !DILocation(line: 199, column: 24, scope: !684)
!690 = !DILocation(line: 201, column: 10, scope: !559)
!691 = !DILocation(line: 201, column: 3, scope: !559)
!692 = !DILocation(line: 202, column: 1, scope: !559)
!693 = !DISubprogram(name: "malloc", scope: !694, file: !694, line: 540, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!695 = !DISubroutineType(types: !696)
!696 = !{!119, !697}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !698, line: 70, baseType: !699)
!698 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!699 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!700 = !DISubprogram(name: "onig_reg_init", scope: !100, file: !100, line: 817, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubroutineType(types: !702)
!702 = !{!152, !703, !449, !392, !354, !451}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "OnigRegex", file: !100, line: 709, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!705 = !DISubprogram(name: "onig_compile", scope: !4, file: !4, line: 943, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DISubroutineType(types: !707)
!707 = !{!152, !123, !363, !363, !573}
!708 = !DISubprogram(name: "onig_free", scope: !100, file: !100, line: 822, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !703}
!711 = !DISubprogram(name: "free", scope: !694, file: !694, line: 555, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !119}
