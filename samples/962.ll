; ModuleID = 'samples/962.bc'
source_filename = "struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_definition = type { ptr, i32, i32, i32, i32, ptr }
%struct.bt_declaration = type { i32, i64, i32, ptr, ptr, ptr }
%struct.ctf_stream_pos = type { %struct.bt_stream_pos, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, ptr, i32, ptr, ptr }
%struct.bt_stream_pos = type { ptr, ptr, ptr, ptr, ptr }

@babeltrace_debug = external global i32, align 4
@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c"[debug] ctf_move_pos test EOF: %ld\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [43 x i8] c"[debug] ctf_move_pos after increment: %ld\0A\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define hidden i32 @ctf_struct_rw(ptr noundef %ppos, ptr noundef %definition) #0 !dbg !225 {
entry:
  %retval = alloca i32, align 4
  %ppos.addr = alloca ptr, align 8
  %definition.addr = alloca ptr, align 8
  %declaration = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ppos, ptr %ppos.addr, align 8, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !227, metadata !DIExpression()), !dbg !235
  store ptr %definition, ptr %definition.addr, align 8, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %definition.addr, metadata !228, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 8, ptr %declaration) #6, !dbg !237
  tail call void @llvm.dbg.declare(metadata ptr %declaration, metadata !229, metadata !DIExpression()), !dbg !238
  %0 = load ptr, ptr %definition.addr, align 8, !dbg !239, !tbaa !231
  %declaration1 = getelementptr inbounds %struct.bt_definition, ptr %0, i32 0, i32 0, !dbg !240
  %1 = load ptr, ptr %declaration1, align 8, !dbg !240, !tbaa !241
  store ptr %1, ptr %declaration, align 8, !dbg !238, !tbaa !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #6, !dbg !244
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !230, metadata !DIExpression()), !dbg !245
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !246, !tbaa !231
  %call = call ptr @ctf_pos(ptr noundef %2), !dbg !247
  store ptr %call, ptr %pos, align 8, !dbg !245, !tbaa !231
  %3 = load ptr, ptr %pos, align 8, !dbg !248, !tbaa !231
  %4 = load ptr, ptr %declaration, align 8, !dbg !250, !tbaa !231
  %alignment = getelementptr inbounds %struct.bt_declaration, ptr %4, i32 0, i32 1, !dbg !251
  %5 = load i64, ptr %alignment, align 8, !dbg !251, !tbaa !252
  %call2 = call i32 @ctf_align_pos(ptr noundef %3, i64 noundef %5), !dbg !255
  %tobool = icmp ne i32 %call2, 0, !dbg !255
  br i1 %tobool, label %if.end, label %if.then, !dbg !256

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !257

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ppos.addr, align 8, !dbg !258, !tbaa !231
  %7 = load ptr, ptr %definition.addr, align 8, !dbg !259, !tbaa !231
  %call3 = call i32 @bt_struct_rw(ptr noundef %6, ptr noundef %7), !dbg !260
  store i32 %call3, ptr %retval, align 4, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #6, !dbg !262
  call void @llvm.lifetime.end.p0(i64 8, ptr %declaration) #6, !dbg !262
  %8 = load i32, ptr %retval, align 4, !dbg !262
  ret i32 %8, !dbg !262
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ctf_pos(ptr noundef %pos) #2 !dbg !263 {
entry:
  %pos.addr = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %pos, ptr %pos.addr, align 8, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !267, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #6, !dbg !273
  tail call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !268, metadata !DIExpression()), !dbg !273
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !273, !tbaa !231
  store ptr %0, ptr %__ptr, align 8, !dbg !273, !tbaa !231
  %1 = load ptr, ptr %__ptr, align 8, !dbg !273, !tbaa !231
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0, !dbg !273
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !273, !tbaa !231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #6, !dbg !274
  %2 = load ptr, ptr %tmp, align 8, !dbg !273, !tbaa !231
  ret ptr %2, !dbg !275
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ctf_align_pos(ptr noundef %pos, i64 noundef %bit_offset) #2 !dbg !276 {
entry:
  %pos.addr = alloca ptr, align 8
  %bit_offset.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %pos, ptr %pos.addr, align 8, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !280, metadata !DIExpression()), !dbg !282
  store i64 %bit_offset, ptr %bit_offset.addr, align 8, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %bit_offset.addr, metadata !281, metadata !DIExpression()), !dbg !284
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !285, !tbaa !231
  %1 = load i64, ptr %bit_offset.addr, align 8, !dbg !286, !tbaa !283
  %cmp = icmp eq i64 %1, 0, !dbg !286
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !286

lor.rhs:                                          ; preds = %entry
  %2 = load i64, ptr %bit_offset.addr, align 8, !dbg !286, !tbaa !283
  %3 = load i64, ptr %bit_offset.addr, align 8, !dbg !286, !tbaa !283
  %sub = sub i64 %3, 1, !dbg !286
  %and = and i64 %2, %sub, !dbg !286
  %tobool = icmp ne i64 %and, 0, !dbg !286
  br label %lor.end, !dbg !286

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !286
  %lnot1 = xor i1 %lnot, true, !dbg !286
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !286
  %mul = mul nsw i32 2, %lnot.ext, !dbg !286
  %sub2 = sub nsw i32 1, %mul, !dbg !286
  %5 = zext i32 %sub2 to i64, !dbg !286
  %6 = load i64, ptr %bit_offset.addr, align 8, !dbg !286, !tbaa !283
  %7 = load ptr, ptr %pos.addr, align 8, !dbg !286, !tbaa !231
  %offset = getelementptr inbounds %struct.ctf_stream_pos, ptr %7, i32 0, i32 12, !dbg !286
  %8 = load i64, ptr %offset, align 8, !dbg !286, !tbaa !288
  %sub3 = sub i64 %6, %8, !dbg !286
  %9 = load i64, ptr %bit_offset.addr, align 8, !dbg !286, !tbaa !283
  %sub4 = sub i64 %9, 1, !dbg !286
  %and5 = and i64 %sub3, %sub4, !dbg !286
  store i64 %and5, ptr %tmp, align 8, !dbg !286, !tbaa !283
  %10 = load i64, ptr %tmp, align 8, !dbg !286, !tbaa !283
  %call = call i32 @ctf_move_pos(ptr noundef %0, i64 noundef %10), !dbg !291
  ret i32 %call, !dbg !292
}

declare !dbg !293 i32 @bt_struct_rw(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ctf_move_pos(ptr noundef %pos, i64 noundef %bit_offset) #2 !dbg !294 {
entry:
  %pos.addr = alloca ptr, align 8
  %bit_offset.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %pos, ptr %pos.addr, align 8, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !296, metadata !DIExpression()), !dbg !300
  store i64 %bit_offset, ptr %bit_offset.addr, align 8, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %bit_offset.addr, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !302
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !298, metadata !DIExpression()), !dbg !303
  store i32 0, ptr %ret, align 4, !dbg !303, !tbaa !304
  br label %do.body, !dbg !305

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @babeltrace_debug, align 4, !dbg !306, !tbaa !304
  %tobool = icmp ne i32 %0, 0, !dbg !306
  br i1 %tobool, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stdout, align 8, !dbg !306, !tbaa !231
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !306, !tbaa !231
  %offset = getelementptr inbounds %struct.ctf_stream_pos, ptr %2, i32 0, i32 12, !dbg !306
  %3 = load i64, ptr %offset, align 8, !dbg !306, !tbaa !288
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, i64 noundef %3), !dbg !306
  br label %if.end, !dbg !306

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !309

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !309

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %pos.addr, align 8, !dbg !310, !tbaa !231
  %5 = load i64, ptr %bit_offset.addr, align 8, !dbg !311, !tbaa !283
  %call1 = call i32 @ctf_pos_access_ok(ptr noundef %4, i64 noundef %5), !dbg !312
  store i32 %call1, ptr %ret, align 4, !dbg !313, !tbaa !304
  %6 = load i32, ptr %ret, align 4, !dbg !314, !tbaa !304
  %tobool2 = icmp ne i32 %6, 0, !dbg !314
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !316

if.then3:                                         ; preds = %do.end
  br label %end, !dbg !317

if.end4:                                          ; preds = %do.end
  %7 = load i64, ptr %bit_offset.addr, align 8, !dbg !319, !tbaa !283
  %8 = load ptr, ptr %pos.addr, align 8, !dbg !320, !tbaa !231
  %offset5 = getelementptr inbounds %struct.ctf_stream_pos, ptr %8, i32 0, i32 12, !dbg !321
  %9 = load i64, ptr %offset5, align 8, !dbg !322, !tbaa !288
  %add = add i64 %9, %7, !dbg !322
  store i64 %add, ptr %offset5, align 8, !dbg !322, !tbaa !288
  br label %do.body6, !dbg !323

do.body6:                                         ; preds = %if.end4
  %10 = load i32, ptr @babeltrace_debug, align 4, !dbg !324, !tbaa !304
  %tobool7 = icmp ne i32 %10, 0, !dbg !324
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !327

if.then8:                                         ; preds = %do.body6
  %11 = load ptr, ptr @stdout, align 8, !dbg !324, !tbaa !231
  %12 = load ptr, ptr %pos.addr, align 8, !dbg !324, !tbaa !231
  %offset9 = getelementptr inbounds %struct.ctf_stream_pos, ptr %12, i32 0, i32 12, !dbg !324
  %13 = load i64, ptr %offset9, align 8, !dbg !324, !tbaa !288
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1, i64 noundef %13), !dbg !324
  br label %if.end11, !dbg !324

if.end11:                                         ; preds = %if.then8, %do.body6
  br label %do.cond12, !dbg !327

do.cond12:                                        ; preds = %if.end11
  br label %do.end13, !dbg !327

do.end13:                                         ; preds = %do.cond12
  br label %end, !dbg !327

end:                                              ; preds = %do.end13, %if.then3
  tail call void @llvm.dbg.label(metadata !299), !dbg !328
  %14 = load i32, ptr %ret, align 4, !dbg !329, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !330
  ret i32 %14, !dbg !331
}

declare !dbg !332 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ctf_pos_access_ok(ptr noundef %pos, i64 noundef %bit_len) #2 !dbg !338 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca ptr, align 8
  %bit_len.addr = alloca i64, align 8
  %max_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pos, ptr %pos.addr, align 8, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !340, metadata !DIExpression()), !dbg !343
  store i64 %bit_len, ptr %bit_len.addr, align 8, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %bit_len.addr, metadata !341, metadata !DIExpression()), !dbg !344
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_len) #6, !dbg !345
  tail call void @llvm.dbg.declare(metadata ptr %max_len, metadata !342, metadata !DIExpression()), !dbg !346
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !347, !tbaa !231
  %offset = getelementptr inbounds %struct.ctf_stream_pos, ptr %0, i32 0, i32 12, !dbg !347
  %1 = load i64, ptr %offset, align 8, !dbg !347, !tbaa !288
  %cmp = icmp eq i64 %1, -1, !dbg !347
  %lnot = xor i1 %cmp, true, !dbg !347
  %lnot1 = xor i1 %lnot, true, !dbg !347
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !347
  %conv = sext i32 %lnot.ext to i64, !dbg !347
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !347
  %tobool = icmp ne i64 %expval, 0, !dbg !347
  br i1 %tobool, label %if.then, label %if.end, !dbg !349

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !350

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !351, !tbaa !231
  %prot = getelementptr inbounds %struct.ctf_stream_pos, ptr %2, i32 0, i32 4, !dbg !353
  %3 = load i32, ptr %prot, align 8, !dbg !353, !tbaa !354
  %cmp2 = icmp eq i32 %3, 1, !dbg !355
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !356

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %pos.addr, align 8, !dbg !357, !tbaa !231
  %content_size = getelementptr inbounds %struct.ctf_stream_pos, ptr %4, i32 0, i32 9, !dbg !359
  %5 = load i64, ptr %content_size, align 8, !dbg !359, !tbaa !360
  store i64 %5, ptr %max_len, align 8, !dbg !361, !tbaa !283
  br label %if.end5, !dbg !362

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %pos.addr, align 8, !dbg !363, !tbaa !231
  %packet_size = getelementptr inbounds %struct.ctf_stream_pos, ptr %6, i32 0, i32 8, !dbg !365
  %7 = load i64, ptr %packet_size, align 8, !dbg !365, !tbaa !366
  store i64 %7, ptr %max_len, align 8, !dbg !367, !tbaa !283
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %8 = load ptr, ptr %pos.addr, align 8, !dbg !368, !tbaa !231
  %offset6 = getelementptr inbounds %struct.ctf_stream_pos, ptr %8, i32 0, i32 12, !dbg !368
  %9 = load i64, ptr %offset6, align 8, !dbg !368, !tbaa !288
  %10 = load i64, ptr %bit_len.addr, align 8, !dbg !368, !tbaa !283
  %add = add i64 %9, %10, !dbg !368
  %11 = load i64, ptr %max_len, align 8, !dbg !368, !tbaa !283
  %cmp7 = icmp ugt i64 %add, %11, !dbg !368
  %lnot9 = xor i1 %cmp7, true, !dbg !368
  %lnot11 = xor i1 %lnot9, true, !dbg !368
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !368
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !368
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !368
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !368
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !370

if.then16:                                        ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !371

if.end17:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4, !dbg !372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !372

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_len) #6, !dbg !373
  %12 = load i32, ptr %retval, align 4, !dbg !373
  ret i32 %12, !dbg !373
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../../../include/babeltrace/ctf/types.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/formats/ctf/types", checksumkind: CSK_MD5, checksum: "630ef96fa7beb69ac065f2cf30d529b4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 43)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !13, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !30, globals: !218, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "struct.c", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/formats/ctf/types", checksumkind: CSK_MD5, checksum: "2eabd220f4a98150f8772e9d6f66a171")
!14 = !{!15}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ctf_type_id", file: !16, line: 63, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "../../../include/babeltrace/ctf/events.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/formats/ctf/types", checksumkind: CSK_MD5, checksum: "94e6bc16713c74e95d4df9cedcb70078")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!19 = !DIEnumerator(name: "CTF_TYPE_UNKNOWN", value: 0)
!20 = !DIEnumerator(name: "CTF_TYPE_INTEGER", value: 1)
!21 = !DIEnumerator(name: "CTF_TYPE_FLOAT", value: 2)
!22 = !DIEnumerator(name: "CTF_TYPE_ENUM", value: 3)
!23 = !DIEnumerator(name: "CTF_TYPE_STRING", value: 4)
!24 = !DIEnumerator(name: "CTF_TYPE_STRUCT", value: 5)
!25 = !DIEnumerator(name: "CTF_TYPE_UNTAGGED_VARIANT", value: 6)
!26 = !DIEnumerator(name: "CTF_TYPE_VARIANT", value: 7)
!27 = !DIEnumerator(name: "CTF_TYPE_ARRAY", value: 8)
!28 = !DIEnumerator(name: "CTF_TYPE_SEQUENCE", value: 9)
!29 = !DIEnumerator(name: "NR_CTF_TYPES", value: 10)
!30 = !{!31, !128}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctf_stream_pos", file: !2, line: 66, size: 1536, elements: !33)
!33 = !{!34, !118, !119, !178, !179, !180, !181, !184, !185, !189, !190, !192, !201, !205, !206, !207, !208, !209, !213, !214, !217}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !32, file: !2, line: 67, baseType: !35, size: 320)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_stream_pos", file: !36, line: 113, size: 320, elements: !37)
!36 = !DIFile(filename: "../../../include/babeltrace/types.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/formats/ctf/types", checksumkind: CSK_MD5, checksum: "f3c4a6ec3715821c96628bfd5e29fc9b")
!37 = !{!38, !103, !109, !116, !117}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "rw_table", scope: !35, file: !36, line: 115, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "rw_dispatch", file: !36, line: 109, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !45, !46}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_definition", file: !36, line: 100, size: 256, elements: !48)
!48 = !{!49, !98, !99, !100, !101, !102}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !47, file: !36, line: 101, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_declaration", file: !36, line: 81, size: 384, elements: !52)
!52 = !{!53, !54, !58, !59, !63, !94}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !51, file: !36, line: 82, baseType: !15, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !51, file: !36, line: 83, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 70, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !51, file: !36, line: 84, baseType: !44, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "declaration_free", scope: !51, file: !36, line: 88, baseType: !60, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !50}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "definition_new", scope: !51, file: !36, line: 90, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!46, !50, !67, !88, !44, !92}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "definition_scope", file: !36, line: 66, size: 192, elements: !69)
!69 = !{!70, !75, !76}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "definitions", scope: !68, file: !36, line: 68, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !73, line: 40, baseType: !74)
!73 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/ghash.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "ff178276f16d53966cd41952349b047f")
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !73, line: 40, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "parent_scope", scope: !68, file: !36, line: 69, baseType: !67, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "scope_path", scope: !68, file: !36, line: 78, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !79, line: 39, baseType: !80)
!79 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/garray.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "24464ffabff9776f21c3b3e9eb512110")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !79, line: 43, size: 128, elements: !81)
!81 = !{!82, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !79, line: 45, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !85, line: 52, baseType: !4)
!85 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/gtypes.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "bb471ab4f4c8d1bff5846ccdfd1b3ac4")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !80, file: !79, line: 46, baseType: !87, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !85, line: 61, baseType: !17)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !89, line: 38, baseType: !90)
!89 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/gquark.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "faea4af9793ef6f769fba7d824d6e90e")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !91, line: 56, baseType: !17)
!91 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/lib/glib-2.0/include/glibconfig.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "9ffe497af55cf05235a0b35b38ac2c19")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "definition_free", scope: !51, file: !36, line: 97, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !46}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !47, file: !36, line: 102, baseType: !44, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !47, file: !36, line: 103, baseType: !88, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !47, file: !36, line: 104, baseType: !44, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !47, file: !36, line: 105, baseType: !88, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !47, file: !36, line: 106, baseType: !67, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "event_cb", scope: !35, file: !36, line: 116, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!44, !45, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "ctf_stream_definition", file: !36, line: 45, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pre_trace_cb", scope: !35, file: !36, line: 118, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!44, !45, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_trace_descriptor", file: !115, line: 47, flags: DIFlagFwdDecl)
!115 = !DIFile(filename: "../../../include/babeltrace/format.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/formats/ctf/types", checksumkind: CSK_MD5, checksum: "8b73d2e240348b75e8476ff9731b0bfe")
!116 = !DIDerivedType(tag: DW_TAG_member, name: "post_trace_cb", scope: !35, file: !36, line: 120, baseType: !110, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !35, file: !36, line: 122, baseType: !113, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !32, file: !2, line: 68, baseType: !44, size: 32, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "index_fp", scope: !32, file: !2, line: 69, baseType: !120, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !122, line: 7, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !124, line: 49, size: 1728, elements: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!125 = !{!126, !127, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !142, !144, !145, !146, !150, !152, !154, !158, !161, !163, !166, !169, !170, !172, !173, !174}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !123, file: !124, line: 51, baseType: !44, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !123, file: !124, line: 54, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !123, file: !124, line: 55, baseType: !128, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !123, file: !124, line: 56, baseType: !128, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !123, file: !124, line: 57, baseType: !128, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !123, file: !124, line: 58, baseType: !128, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !123, file: !124, line: 59, baseType: !128, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !123, file: !124, line: 60, baseType: !128, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !123, file: !124, line: 61, baseType: !128, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !123, file: !124, line: 64, baseType: !128, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !123, file: !124, line: 65, baseType: !128, size: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !123, file: !124, line: 66, baseType: !128, size: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !123, file: !124, line: 68, baseType: !140, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !124, line: 36, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !123, file: !124, line: 70, baseType: !143, size: 64, offset: 832)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !123, file: !124, line: 72, baseType: !44, size: 32, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !123, file: !124, line: 73, baseType: !44, size: 32, offset: 928)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !123, file: !124, line: 74, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !148, line: 152, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!149 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !123, file: !124, line: 77, baseType: !151, size: 16, offset: 1024)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !123, file: !124, line: 78, baseType: !153, size: 8, offset: 1040)
!153 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !123, file: !124, line: 79, baseType: !155, size: 8, offset: 1048)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 1)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !123, file: !124, line: 81, baseType: !159, size: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !124, line: 43, baseType: null)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !123, file: !124, line: 89, baseType: !162, size: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !148, line: 153, baseType: !149)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !123, file: !124, line: 91, baseType: !164, size: 64, offset: 1216)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !124, line: 37, flags: DIFlagFwdDecl)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !123, file: !124, line: 92, baseType: !167, size: 64, offset: 1280)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !124, line: 38, flags: DIFlagFwdDecl)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !123, file: !124, line: 93, baseType: !143, size: 64, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !123, file: !124, line: 94, baseType: !171, size: 64, offset: 1408)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !123, file: !124, line: 95, baseType: !55, size: 64, offset: 1472)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !123, file: !124, line: 96, baseType: !44, size: 32, offset: 1536)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !123, file: !124, line: 98, baseType: !175, size: 160, offset: 1568)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 20)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "packet_index", scope: !32, file: !2, line: 70, baseType: !77, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !32, file: !2, line: 71, baseType: !44, size: 32, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !2, line: 72, baseType: !44, size: 32, offset: 544)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_offset", scope: !32, file: !2, line: 75, baseType: !182, size: 64, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !183, line: 243, baseType: !147)
!183 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base_offset", scope: !32, file: !2, line: 76, baseType: !182, size: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "packet_size", scope: !32, file: !2, line: 77, baseType: !186, size: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !187, line: 27, baseType: !188)
!187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !148, line: 45, baseType: !57)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "content_size", scope: !32, file: !2, line: 78, baseType: !186, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "content_size_loc", scope: !32, file: !2, line: 79, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "base_mma", scope: !32, file: !2, line: 80, baseType: !193, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmap_align", file: !195, line: 41, size: 256, elements: !196)
!195 = !DIFile(filename: "../../../include/babeltrace/mmap-align.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/formats/ctf/types", checksumkind: CSK_MD5, checksum: "f43b0be981d4235277689f3affda55ad")
!196 = !{!197, !198, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "page_aligned_addr", scope: !194, file: !195, line: 42, baseType: !171, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "page_aligned_length", scope: !194, file: !195, line: 43, baseType: !55, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !194, file: !195, line: 45, baseType: !171, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !194, file: !195, line: 46, baseType: !55, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !32, file: !2, line: 81, baseType: !202, size: 64, offset: 960)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !203, line: 27, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !148, line: 44, baseType: !149)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !32, file: !2, line: 82, baseType: !202, size: 64, offset: 1024)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "data_offset", scope: !32, file: !2, line: 83, baseType: !202, size: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cur_index", scope: !32, file: !2, line: 84, baseType: !186, size: 64, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "last_events_discarded", scope: !32, file: !2, line: 85, baseType: !186, size: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "packet_seek", scope: !32, file: !2, line: 86, baseType: !210, size: 64, offset: 1280)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !45, !55, !44}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !32, file: !2, line: 89, baseType: !44, size: 32, offset: 1344)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !32, file: !2, line: 90, baseType: !215, size: 64, offset: 1408)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_stream_callbacks", file: !2, line: 45, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !32, file: !2, line: 91, baseType: !171, size: 64, offset: 1472)
!218 = !{!0, !7}
!219 = !{i32 7, !"Dwarf Version", i32 5}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 4}
!222 = !{i32 8, !"PIC Level", i32 2}
!223 = !{i32 7, !"uwtable", i32 2}
!224 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!225 = distinct !DISubprogram(name: "ctf_struct_rw", scope: !13, file: !13, line: 31, type: !42, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DILocalVariable(name: "ppos", arg: 1, scope: !225, file: !13, line: 31, type: !45)
!228 = !DILocalVariable(name: "definition", arg: 2, scope: !225, file: !13, line: 31, type: !46)
!229 = !DILocalVariable(name: "declaration", scope: !225, file: !13, line: 33, type: !50)
!230 = !DILocalVariable(name: "pos", scope: !225, file: !13, line: 34, type: !31)
!231 = !{!232, !232, i64 0}
!232 = !{!"any pointer", !233, i64 0}
!233 = !{!"omnipotent char", !234, i64 0}
!234 = !{!"Simple C/C++ TBAA"}
!235 = !DILocation(line: 31, column: 41, scope: !225)
!236 = !DILocation(line: 31, column: 69, scope: !225)
!237 = !DILocation(line: 33, column: 2, scope: !225)
!238 = !DILocation(line: 33, column: 25, scope: !225)
!239 = !DILocation(line: 33, column: 39, scope: !225)
!240 = !DILocation(line: 33, column: 51, scope: !225)
!241 = !{!242, !232, i64 0}
!242 = !{!"bt_definition", !232, i64 0, !243, i64 8, !243, i64 12, !243, i64 16, !243, i64 20, !232, i64 24}
!243 = !{!"int", !233, i64 0}
!244 = !DILocation(line: 34, column: 2, scope: !225)
!245 = !DILocation(line: 34, column: 25, scope: !225)
!246 = !DILocation(line: 34, column: 39, scope: !225)
!247 = !DILocation(line: 34, column: 31, scope: !225)
!248 = !DILocation(line: 36, column: 21, scope: !249)
!249 = distinct !DILexicalBlock(scope: !225, file: !13, line: 36, column: 6)
!250 = !DILocation(line: 36, column: 26, scope: !249)
!251 = !DILocation(line: 36, column: 39, scope: !249)
!252 = !{!253, !254, i64 8}
!253 = !{!"bt_declaration", !233, i64 0, !254, i64 8, !243, i64 16, !232, i64 24, !232, i64 32, !232, i64 40}
!254 = !{!"long", !233, i64 0}
!255 = !DILocation(line: 36, column: 7, scope: !249)
!256 = !DILocation(line: 36, column: 6, scope: !225)
!257 = !DILocation(line: 37, column: 3, scope: !249)
!258 = !DILocation(line: 38, column: 22, scope: !225)
!259 = !DILocation(line: 38, column: 28, scope: !225)
!260 = !DILocation(line: 38, column: 9, scope: !225)
!261 = !DILocation(line: 38, column: 2, scope: !225)
!262 = !DILocation(line: 39, column: 1, scope: !225)
!263 = distinct !DISubprogram(name: "ctf_pos", scope: !2, file: !2, line: 95, type: !264, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!31, !45}
!266 = !{!267, !268}
!267 = !DILocalVariable(name: "pos", arg: 1, scope: !263, file: !2, line: 95, type: !45)
!268 = !DILocalVariable(name: "__ptr", scope: !269, file: !2, line: 97, type: !270)
!269 = distinct !DILexicalBlock(scope: !263, file: !2, line: 97, column: 9)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!272 = !DILocation(line: 95, column: 54, scope: !263)
!273 = !DILocation(line: 97, column: 9, scope: !269)
!274 = !DILocation(line: 97, column: 9, scope: !263)
!275 = !DILocation(line: 97, column: 2, scope: !263)
!276 = distinct !DISubprogram(name: "ctf_align_pos", scope: !2, file: !2, line: 188, type: !277, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!44, !31, !186}
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "pos", arg: 1, scope: !276, file: !2, line: 188, type: !31)
!281 = !DILocalVariable(name: "bit_offset", arg: 2, scope: !276, file: !2, line: 188, type: !186)
!282 = !DILocation(line: 188, column: 42, scope: !276)
!283 = !{!254, !254, i64 0}
!284 = !DILocation(line: 188, column: 56, scope: !276)
!285 = !DILocation(line: 190, column: 22, scope: !276)
!286 = !DILocation(line: 190, column: 27, scope: !287)
!287 = distinct !DILexicalBlock(scope: !276, file: !2, line: 190, column: 27)
!288 = !{!289, !254, i64 120}
!289 = !{!"ctf_stream_pos", !290, i64 0, !243, i64 40, !232, i64 48, !232, i64 56, !243, i64 64, !243, i64 68, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !232, i64 104, !232, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152, !232, i64 160, !243, i64 168, !232, i64 176, !232, i64 184}
!290 = !{!"bt_stream_pos", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !232, i64 32}
!291 = !DILocation(line: 190, column: 9, scope: !276)
!292 = !DILocation(line: 190, column: 2, scope: !276)
!293 = !DISubprogram(name: "bt_struct_rw", scope: !36, file: !36, line: 462, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = distinct !DISubprogram(name: "ctf_move_pos", scope: !2, file: !2, line: 165, type: !277, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !295)
!295 = !{!296, !297, !298, !299}
!296 = !DILocalVariable(name: "pos", arg: 1, scope: !294, file: !2, line: 165, type: !31)
!297 = !DILocalVariable(name: "bit_offset", arg: 2, scope: !294, file: !2, line: 165, type: !186)
!298 = !DILocalVariable(name: "ret", scope: !294, file: !2, line: 167, type: !44)
!299 = !DILabel(scope: !294, name: "end", file: !2, line: 176)
!300 = !DILocation(line: 165, column: 41, scope: !294)
!301 = !DILocation(line: 165, column: 55, scope: !294)
!302 = !DILocation(line: 167, column: 2, scope: !294)
!303 = !DILocation(line: 167, column: 6, scope: !294)
!304 = !{!243, !243, i64 0}
!305 = !DILocation(line: 169, column: 2, scope: !294)
!306 = !DILocation(line: 169, column: 2, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 169, column: 2)
!308 = distinct !DILexicalBlock(scope: !294, file: !2, line: 169, column: 2)
!309 = !DILocation(line: 169, column: 2, scope: !308)
!310 = !DILocation(line: 170, column: 26, scope: !294)
!311 = !DILocation(line: 170, column: 31, scope: !294)
!312 = !DILocation(line: 170, column: 8, scope: !294)
!313 = !DILocation(line: 170, column: 6, scope: !294)
!314 = !DILocation(line: 171, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !294, file: !2, line: 171, column: 6)
!316 = !DILocation(line: 171, column: 6, scope: !294)
!317 = !DILocation(line: 172, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !2, line: 171, column: 12)
!319 = !DILocation(line: 174, column: 17, scope: !294)
!320 = !DILocation(line: 174, column: 2, scope: !294)
!321 = !DILocation(line: 174, column: 7, scope: !294)
!322 = !DILocation(line: 174, column: 14, scope: !294)
!323 = !DILocation(line: 175, column: 2, scope: !294)
!324 = !DILocation(line: 175, column: 2, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 175, column: 2)
!326 = distinct !DILexicalBlock(scope: !294, file: !2, line: 175, column: 2)
!327 = !DILocation(line: 175, column: 2, scope: !326)
!328 = !DILocation(line: 176, column: 1, scope: !294)
!329 = !DILocation(line: 177, column: 9, scope: !294)
!330 = !DILocation(line: 178, column: 1, scope: !294)
!331 = !DILocation(line: 177, column: 2, scope: !294)
!332 = !DISubprogram(name: "fprintf", scope: !333, file: !333, line: 350, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!334 = !DISubroutineType(types: !335)
!335 = !{!44, !336, !337, null}
!336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!338 = distinct !DISubprogram(name: "ctf_pos_access_ok", scope: !2, file: !2, line: 136, type: !277, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !339)
!339 = !{!340, !341, !342}
!340 = !DILocalVariable(name: "pos", arg: 1, scope: !338, file: !2, line: 136, type: !31)
!341 = !DILocalVariable(name: "bit_len", arg: 2, scope: !338, file: !2, line: 136, type: !186)
!342 = !DILocalVariable(name: "max_len", scope: !338, file: !2, line: 138, type: !186)
!343 = !DILocation(line: 136, column: 46, scope: !338)
!344 = !DILocation(line: 136, column: 60, scope: !338)
!345 = !DILocation(line: 138, column: 2, scope: !338)
!346 = !DILocation(line: 138, column: 11, scope: !338)
!347 = !DILocation(line: 140, column: 6, scope: !348)
!348 = distinct !DILexicalBlock(scope: !338, file: !2, line: 140, column: 6)
!349 = !DILocation(line: 140, column: 6, scope: !338)
!350 = !DILocation(line: 141, column: 3, scope: !348)
!351 = !DILocation(line: 142, column: 6, scope: !352)
!352 = distinct !DILexicalBlock(scope: !338, file: !2, line: 142, column: 6)
!353 = !DILocation(line: 142, column: 11, scope: !352)
!354 = !{!289, !243, i64 64}
!355 = !DILocation(line: 142, column: 16, scope: !352)
!356 = !DILocation(line: 142, column: 6, scope: !338)
!357 = !DILocation(line: 147, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !352, file: !2, line: 142, column: 30)
!359 = !DILocation(line: 147, column: 18, scope: !358)
!360 = !{!289, !254, i64 96}
!361 = !DILocation(line: 147, column: 11, scope: !358)
!362 = !DILocation(line: 148, column: 2, scope: !358)
!363 = !DILocation(line: 150, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !352, file: !2, line: 148, column: 9)
!365 = !DILocation(line: 150, column: 18, scope: !364)
!366 = !{!289, !254, i64 88}
!367 = !DILocation(line: 150, column: 11, scope: !364)
!368 = !DILocation(line: 152, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !338, file: !2, line: 152, column: 6)
!370 = !DILocation(line: 152, column: 6, scope: !338)
!371 = !DILocation(line: 153, column: 3, scope: !369)
!372 = !DILocation(line: 154, column: 2, scope: !338)
!373 = !DILocation(line: 155, column: 1, scope: !338)
