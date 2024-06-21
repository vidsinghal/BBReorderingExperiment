; ModuleID = 'samples/472.bc'
source_filename = "lj_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GCRef = type { i64 }
%struct.GCudata = type { %struct.GCRef, i8, i8, i8, i8, %struct.GCRef, i32, %struct.GCRef, i32 }
%struct.GCcdata = type { %struct.GCRef, i8, i8, i16 }
%struct.global_State = type { ptr, ptr, %struct.GCState, %struct.GCstr, i8, i8, i8, i8, %struct.StrInternState, i32, %struct.GCRef, %struct.SBuf, %union.TValue, %union.TValue, %struct.Node, %union.TValue, %struct.GCupval, i32, i32, ptr, ptr, ptr, i32, i32, %struct.GCRef, %struct.MRef, %struct.MRef, %struct.PRNGState, [38 x %struct.GCRef], %struct.MRef }
%struct.GCState = type { i64, i64, i8, i8, i8, i8, i32, %struct.GCRef, %struct.MRef, %struct.GCRef, %struct.GCRef, %struct.GCRef, %struct.GCRef, i64, i64, i32, i32, %struct.MRef }
%struct.GCstr = type { %struct.GCRef, i8, i8, i8, i8, i32, i32, i32 }
%struct.StrInternState = type { ptr, i32, i32, i32, i8, i8, i8, i8, i64 }
%struct.SBuf = type { ptr, ptr, ptr, %struct.MRef }
%struct.Node = type { %union.TValue, %union.TValue, %struct.MRef }
%union.TValue = type { i64 }
%struct.GCupval = type { %struct.GCRef, i8, i8, i8, i8, %union.anon, %struct.MRef, i32 }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.GCRef, %struct.GCRef }
%struct.PRNGState = type { [4 x i64] }
%struct.MRef = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"no value\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [6 x i8] c"table\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [9 x i8] c"function\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [7 x i8] c"thread\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [6 x i8] c"proto\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [6 x i8] c"cdata\00", align 1, !dbg !37
@lj_obj_typename = hidden constant [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 16, !dbg !39
@.str.11 = private unnamed_addr constant [6 x i8] c"upval\00", align 1, !dbg !277
@.str.12 = private unnamed_addr constant [6 x i8] c"trace\00", align 1, !dbg !279
@lj_obj_itypename = hidden constant [14 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.11, ptr @.str.8, ptr @.str.9, ptr @.str.7, ptr @.str.12, ptr @.str.10, ptr @.str.6, ptr @.str.3, ptr @.str.4], align 16, !dbg !281

; Function Attrs: nounwind uwtable
define hidden i32 @lj_obj_equal(ptr noundef %o1, ptr noundef %o2) #0 !dbg !299 {
entry:
  %retval = alloca i32, align 4
  %o1.addr = alloca ptr, align 8
  %o2.addr = alloca ptr, align 8
  store ptr %o1, ptr %o1.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %o1.addr, metadata !306, metadata !DIExpression()), !dbg !312
  store ptr %o2, ptr %o2.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %o2.addr, metadata !307, metadata !DIExpression()), !dbg !313
  %0 = load ptr, ptr %o1.addr, align 8, !dbg !314, !tbaa !308
  %1 = load i64, ptr %0, align 8, !dbg !314, !tbaa !316
  %shr = ashr i64 %1, 47, !dbg !314
  %conv = trunc i64 %shr to i32, !dbg !314
  %2 = load ptr, ptr %o2.addr, align 8, !dbg !317, !tbaa !308
  %3 = load i64, ptr %2, align 8, !dbg !317, !tbaa !316
  %shr1 = ashr i64 %3, 47, !dbg !317
  %conv2 = trunc i64 %shr1 to i32, !dbg !317
  %cmp = icmp eq i32 %conv, %conv2, !dbg !318
  br i1 %cmp, label %if.then, label %if.else, !dbg !319

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %o1.addr, align 8, !dbg !320, !tbaa !308
  %5 = load i64, ptr %4, align 8, !dbg !320, !tbaa !316
  %shr4 = ashr i64 %5, 47, !dbg !320
  %conv5 = trunc i64 %shr4 to i32, !dbg !320
  %cmp6 = icmp uge i32 %conv5, -3, !dbg !320
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !323

if.then8:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %o1.addr, align 8, !dbg !325, !tbaa !308
  %7 = load i64, ptr %6, align 8, !dbg !325, !tbaa !316
  %shr9 = ashr i64 %7, 47, !dbg !325
  %conv10 = trunc i64 %shr9 to i32, !dbg !325
  %cmp11 = icmp ult i32 %conv10, -14, !dbg !325
  br i1 %cmp11, label %if.end17, label %if.then13, !dbg !327

if.then13:                                        ; preds = %if.end
  %8 = load ptr, ptr %o1.addr, align 8, !dbg !328, !tbaa !308
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %8, i32 0, i32 0, !dbg !328
  %9 = load i64, ptr %gcptr64, align 8, !dbg !328, !tbaa !316
  %10 = load ptr, ptr %o2.addr, align 8, !dbg !328, !tbaa !308
  %gcptr6414 = getelementptr inbounds %struct.GCRef, ptr %10, i32 0, i32 0, !dbg !328
  %11 = load i64, ptr %gcptr6414, align 8, !dbg !328, !tbaa !316
  %cmp15 = icmp eq i64 %9, %11, !dbg !328
  %conv16 = zext i1 %cmp15 to i32, !dbg !328
  store i32 %conv16, ptr %retval, align 4, !dbg !329
  br label %return, !dbg !329

if.end17:                                         ; preds = %if.end
  br label %if.end28, !dbg !330

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %o1.addr, align 8, !dbg !331, !tbaa !308
  %13 = load i64, ptr %12, align 8, !dbg !331, !tbaa !316
  %shr18 = ashr i64 %13, 47, !dbg !331
  %conv19 = trunc i64 %shr18 to i32, !dbg !331
  %cmp20 = icmp ule i32 %conv19, -14, !dbg !331
  br i1 %cmp20, label %lor.lhs.false, label %if.then26, !dbg !333

lor.lhs.false:                                    ; preds = %if.else
  %14 = load ptr, ptr %o2.addr, align 8, !dbg !334, !tbaa !308
  %15 = load i64, ptr %14, align 8, !dbg !334, !tbaa !316
  %shr22 = ashr i64 %15, 47, !dbg !334
  %conv23 = trunc i64 %shr22 to i32, !dbg !334
  %cmp24 = icmp ule i32 %conv23, -14, !dbg !334
  br i1 %cmp24, label %if.end27, label %if.then26, !dbg !335

if.then26:                                        ; preds = %lor.lhs.false, %if.else
  store i32 0, ptr %retval, align 4, !dbg !336
  br label %return, !dbg !336

if.end27:                                         ; preds = %lor.lhs.false
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end17
  %16 = load ptr, ptr %o1.addr, align 8, !dbg !338, !tbaa !308
  %call = call double @numberVnum(ptr noundef %16), !dbg !339
  %17 = load ptr, ptr %o2.addr, align 8, !dbg !340, !tbaa !308
  %call29 = call double @numberVnum(ptr noundef %17), !dbg !341
  %cmp30 = fcmp oeq double %call, %call29, !dbg !342
  %conv31 = zext i1 %cmp30 to i32, !dbg !342
  store i32 %conv31, ptr %retval, align 4, !dbg !343
  br label %return, !dbg !343

return:                                           ; preds = %if.end28, %if.then26, %if.then13, %if.then8
  %18 = load i32, ptr %retval, align 4, !dbg !344
  ret i32 %18, !dbg !344
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @numberVnum(ptr noundef %o) #1 !dbg !345 {
entry:
  %o.addr = alloca ptr, align 8
  store ptr %o, ptr %o.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load ptr, ptr %o.addr, align 8, !dbg !351, !tbaa !308
  %1 = load double, ptr %0, align 8, !dbg !351, !tbaa !316
  ret double %1, !dbg !353
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_obj_ptr(ptr noundef %g, ptr noundef %o) #0 !dbg !354 {
entry:
  %retval = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !482, metadata !DIExpression()), !dbg !484
  store ptr %o, ptr %o.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !483, metadata !DIExpression()), !dbg !485
  %0 = load ptr, ptr %g.addr, align 8, !dbg !486, !tbaa !308
  %1 = load ptr, ptr %o.addr, align 8, !dbg !487, !tbaa !308
  %2 = load i64, ptr %1, align 8, !dbg !487, !tbaa !316
  %shr = ashr i64 %2, 47, !dbg !487
  %conv = trunc i64 %shr to i32, !dbg !487
  %cmp = icmp eq i32 %conv, -13, !dbg !487
  br i1 %cmp, label %if.then, label %if.else, !dbg !489

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %o.addr, align 8, !dbg !490, !tbaa !308
  %gcptr64 = getelementptr inbounds %struct.GCRef, ptr %3, i32 0, i32 0, !dbg !490
  %4 = load i64, ptr %gcptr64, align 8, !dbg !490, !tbaa !316
  %and = and i64 %4, 140737488355327, !dbg !490
  %5 = inttoptr i64 %and to ptr, !dbg !490
  %add.ptr = getelementptr inbounds %struct.GCudata, ptr %5, i64 1, !dbg !490
  store ptr %add.ptr, ptr %retval, align 8, !dbg !491
  br label %return, !dbg !491

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %o.addr, align 8, !dbg !492, !tbaa !308
  %7 = load i64, ptr %6, align 8, !dbg !492, !tbaa !316
  %shr2 = ashr i64 %7, 47, !dbg !492
  %conv3 = trunc i64 %shr2 to i32, !dbg !492
  %cmp4 = icmp eq i32 %conv3, -4, !dbg !492
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !494

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %g.addr, align 8, !dbg !495, !tbaa !308
  %9 = load ptr, ptr %o.addr, align 8, !dbg !496, !tbaa !308
  %call = call ptr @lightudV(ptr noundef %8, ptr noundef %9), !dbg !497
  store ptr %call, ptr %retval, align 8, !dbg !498
  br label %return, !dbg !498

if.else7:                                         ; preds = %if.else
  %10 = load ptr, ptr %o.addr, align 8, !dbg !499, !tbaa !308
  %11 = load i64, ptr %10, align 8, !dbg !499, !tbaa !316
  %shr8 = ashr i64 %11, 47, !dbg !499
  %conv9 = trunc i64 %shr8 to i32, !dbg !499
  %cmp10 = icmp eq i32 %conv9, -11, !dbg !499
  br i1 %cmp10, label %if.then12, label %if.else16, !dbg !501

if.then12:                                        ; preds = %if.else7
  %12 = load ptr, ptr %o.addr, align 8, !dbg !502, !tbaa !308
  %gcptr6413 = getelementptr inbounds %struct.GCRef, ptr %12, i32 0, i32 0, !dbg !502
  %13 = load i64, ptr %gcptr6413, align 8, !dbg !502, !tbaa !316
  %and14 = and i64 %13, 140737488355327, !dbg !502
  %14 = inttoptr i64 %and14 to ptr, !dbg !502
  %add.ptr15 = getelementptr inbounds %struct.GCcdata, ptr %14, i64 1, !dbg !502
  store ptr %add.ptr15, ptr %retval, align 8, !dbg !503
  br label %return, !dbg !503

if.else16:                                        ; preds = %if.else7
  %15 = load ptr, ptr %o.addr, align 8, !dbg !504, !tbaa !308
  %16 = load i64, ptr %15, align 8, !dbg !504, !tbaa !316
  %shr17 = ashr i64 %16, 47, !dbg !504
  %conv18 = trunc i64 %shr17 to i32, !dbg !504
  %sub = sub i32 %conv18, -4, !dbg !504
  %cmp19 = icmp ugt i32 %sub, -10, !dbg !504
  br i1 %cmp19, label %if.then21, label %if.else24, !dbg !506

if.then21:                                        ; preds = %if.else16
  %17 = load ptr, ptr %o.addr, align 8, !dbg !507, !tbaa !308
  %gcptr6422 = getelementptr inbounds %struct.GCRef, ptr %17, i32 0, i32 0, !dbg !507
  %18 = load i64, ptr %gcptr6422, align 8, !dbg !507, !tbaa !316
  %and23 = and i64 %18, 140737488355327, !dbg !507
  %19 = inttoptr i64 %and23 to ptr, !dbg !507
  store ptr %19, ptr %retval, align 8, !dbg !508
  br label %return, !dbg !508

if.else24:                                        ; preds = %if.else16
  store ptr null, ptr %retval, align 8, !dbg !509
  br label %return, !dbg !509

return:                                           ; preds = %if.else24, %if.then21, %if.then12, %if.then6, %if.then
  %20 = load ptr, ptr %retval, align 8, !dbg !510
  ret ptr %20, !dbg !510
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @lightudV(ptr noundef %g, ptr noundef %o) #1 !dbg !511 {
entry:
  %retval = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %u = alloca i64, align 8
  %seg = alloca i64, align 8
  %segmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !515, metadata !DIExpression()), !dbg !520
  store ptr %o, ptr %o.addr, align 8, !tbaa !308
  tail call void @llvm.dbg.declare(metadata ptr %o.addr, metadata !516, metadata !DIExpression()), !dbg !521
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #4, !dbg !522
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !517, metadata !DIExpression()), !dbg !523
  %0 = load ptr, ptr %o.addr, align 8, !dbg !524, !tbaa !308
  %1 = load i64, ptr %0, align 8, !dbg !525, !tbaa !316
  store i64 %1, ptr %u, align 8, !dbg !523, !tbaa !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #4, !dbg !528
  tail call void @llvm.dbg.declare(metadata ptr %seg, metadata !518, metadata !DIExpression()), !dbg !529
  %2 = load i64, ptr %u, align 8, !dbg !530, !tbaa !526
  %shr = lshr i64 %2, 39, !dbg !530
  %and = and i64 %shr, 255, !dbg !530
  store i64 %and, ptr %seg, align 8, !dbg !529, !tbaa !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %segmap) #4, !dbg !531
  tail call void @llvm.dbg.declare(metadata ptr %segmap, metadata !519, metadata !DIExpression()), !dbg !532
  %3 = load ptr, ptr %g.addr, align 8, !dbg !533, !tbaa !308
  %gc = getelementptr inbounds %struct.global_State, ptr %3, i32 0, i32 2, !dbg !533
  %lightudseg = getelementptr inbounds %struct.GCState, ptr %gc, i32 0, i32 17, !dbg !533
  %ptr64 = getelementptr inbounds %struct.MRef, ptr %lightudseg, i32 0, i32 0, !dbg !533
  %4 = load i64, ptr %ptr64, align 8, !dbg !533, !tbaa !534
  %5 = inttoptr i64 %4 to ptr, !dbg !533
  store ptr %5, ptr %segmap, align 8, !dbg !532, !tbaa !308
  %6 = load ptr, ptr %g.addr, align 8, !dbg !546, !tbaa !308
  %7 = load i64, ptr %seg, align 8, !dbg !547, !tbaa !526
  %cmp = icmp eq i64 %7, 255, !dbg !549
  br i1 %cmp, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !551

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %g.addr, align 8, !dbg !552, !tbaa !308
  %9 = load ptr, ptr %segmap, align 8, !dbg !553, !tbaa !308
  %10 = load i64, ptr %seg, align 8, !dbg !554, !tbaa !526
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %10, !dbg !553
  %11 = load i32, ptr %arrayidx, align 4, !dbg !553, !tbaa !555
  %conv = zext i32 %11 to i64, !dbg !556
  %shl = shl i64 %conv, 32, !dbg !557
  %12 = load i64, ptr %u, align 8, !dbg !558, !tbaa !526
  %and1 = and i64 %12, 549755813887, !dbg !558
  %or = or i64 %shl, %and1, !dbg !559
  %13 = inttoptr i64 %or to ptr, !dbg !560
  store ptr %13, ptr %retval, align 8, !dbg !561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !561

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %segmap) #4, !dbg !562
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #4, !dbg !562
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #4, !dbg !562
  %14 = load ptr, ptr %retval, align 8, !dbg !562
  ret ptr %14, !dbg !562
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lj_obj.c", directory: "/local-ssd/lua-luajit-openresty-se52nalbvgco3rnkvshdz5pgiym3s7mg-build/aidengro/spack-stage-lua-luajit-openresty-2.1-20230410-se52nalbvgco3rnkvshdz5pgiym3s7mg/spack-src/src", checksumkind: CSK_MD5, checksum: "e43104f1abeb9cf79c9066dbb40d365a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 8)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 7)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 6)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !3, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !21, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !28, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !28, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "lj_obj_typename", scope: !41, file: !2, line: 12, type: !289, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !42, globals: !276, splitDebugInlining: false, nameTableKind: None)
!42 = !{!43, !48, !49, !63, !275}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 26, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !46, line: 42, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCobj", file: !51, line: 766, baseType: !52)
!51 = !DIFile(filename: "./lj_obj.h", directory: "/local-ssd/lua-luajit-openresty-se52nalbvgco3rnkvshdz5pgiym3s7mg-build/aidengro/spack-stage-lua-luajit-openresty-2.1-20230410-se52nalbvgco3rnkvshdz5pgiym3s7mg/spack-src/src", checksumkind: CSK_MD5, checksum: "ae555ad21e33811c5738269b7b6ddb34")
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCobj", file: !51, line: 756, size: 896, elements: !53)
!53 = !{!54, !76, !91, !143, !165, !195, !235, !243, !262}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !52, file: !51, line: 757, baseType: !55, size: 320)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "GChead", file: !51, line: 740, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GChead", file: !51, line: 733, size: 320, elements: !57)
!57 = !{!58, !66, !70, !71, !72, !73, !74, !75}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !56, file: !51, line: 734, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCRef", file: !51, line: 60, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCRef", file: !51, line: 54, size: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "gcptr64", scope: !60, file: !51, line: 56, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !44, line: 27, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !46, line: 45, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !56, file: !51, line: 734, baseType: !67, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !44, line: 24, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !46, line: 38, baseType: !69)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !56, file: !51, line: 734, baseType: !67, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !56, file: !51, line: 735, baseType: !67, size: 8, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !56, file: !51, line: 736, baseType: !67, size: 8, offset: 88)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !56, file: !51, line: 737, baseType: !59, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !56, file: !51, line: 738, baseType: !59, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !56, file: !51, line: 739, baseType: !59, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !52, file: !51, line: 758, baseType: !77, size: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCstr", file: !51, line: 313, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCstr", file: !51, line: 306, size: 192, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !87, !89}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !78, file: !51, line: 307, baseType: !59, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !78, file: !51, line: 307, baseType: !67, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !78, file: !51, line: 307, baseType: !67, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !78, file: !51, line: 308, baseType: !67, size: 8, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "hashalg", scope: !78, file: !51, line: 309, baseType: !67, size: 8, offset: 88)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !78, file: !51, line: 310, baseType: !86, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "StrID", file: !51, line: 303, baseType: !43)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !78, file: !51, line: 311, baseType: !88, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "StrHash", file: !51, line: 302, baseType: !43)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !78, file: !51, line: 312, baseType: !90, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSize", file: !51, line: 19, baseType: !43)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !52, file: !51, line: 759, baseType: !92, size: 384)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCupval", file: !51, line: 445, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCupval", file: !51, line: 432, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !137, !142}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !93, file: !51, line: 433, baseType: !59, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !93, file: !51, line: 433, baseType: !67, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !93, file: !51, line: 433, baseType: !67, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !93, file: !51, line: 434, baseType: !67, size: 8, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "immutable", scope: !93, file: !51, line: 435, baseType: !67, size: 8, offset: 88)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !51, line: 436, baseType: !101, size: 128, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !51, line: 436, size: 128, elements: !102)
!102 = !{!103, !132}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !101, file: !51, line: 437, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !51, line: 213, baseType: !105, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TValue", file: !51, line: 174, size: 64, elements: !106)
!106 = !{!107, !108, !112, !113, !118, !126, !127}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !105, file: !51, line: 175, baseType: !63, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !105, file: !51, line: 176, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !110, line: 100, baseType: !111)
!110 = !DIFile(filename: "./lua.h", directory: "/local-ssd/lua-luajit-openresty-se52nalbvgco3rnkvshdz5pgiym3s7mg-build/aidengro/spack-stage-lua-luajit-openresty-2.1-20230410-se52nalbvgco3rnkvshdz5pgiym3s7mg/spack-src/src", checksumkind: CSK_MD5, checksum: "3fa6368493e2e0085b7e1bc867c297f4")
!111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "gcr", scope: !105, file: !51, line: 178, baseType: !59, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "it64", scope: !105, file: !51, line: 179, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !115, line: 27, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !46, line: 44, baseType: !117)
!117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !51, line: 180, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !51, line: 180, size: 64, elements: !120)
!120 = !{!121, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !119, file: !51, line: 181, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !115, line: 26, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !46, line: 41, baseType: !124)
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !119, file: !51, line: 181, baseType: !43, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ftsz", scope: !105, file: !51, line: 198, baseType: !114, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !105, file: !51, line: 212, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !51, line: 207, size: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !128, file: !51, line: 208, baseType: !43, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !128, file: !51, line: 208, baseType: !43, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !51, line: 438, baseType: !133, size: 128)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !51, line: 438, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !51, line: 439, baseType: !59, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !51, line: 440, baseType: !59, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !93, file: !51, line: 443, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "MRef", file: !51, line: 33, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MRef", file: !51, line: 27, size: 64, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !139, file: !51, line: 29, baseType: !63, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "dhash", scope: !93, file: !51, line: 444, baseType: !43, size: 32, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !52, file: !51, line: 760, baseType: !144, size: 896)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !110, line: 51, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !51, line: 687, size: 896, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !145, file: !51, line: 688, baseType: !59, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !145, file: !51, line: 688, baseType: !67, size: 8, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !145, file: !51, line: 688, baseType: !67, size: 8, offset: 72)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_ffid", scope: !145, file: !51, line: 689, baseType: !67, size: 8, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !145, file: !51, line: 690, baseType: !67, size: 8, offset: 88)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "glref", scope: !145, file: !51, line: 691, baseType: !138, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !145, file: !51, line: 692, baseType: !59, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !145, file: !51, line: 693, baseType: !155, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !145, file: !51, line: 694, baseType: !155, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "maxstack", scope: !145, file: !51, line: 695, baseType: !138, size: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !145, file: !51, line: 696, baseType: !138, size: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !145, file: !51, line: 697, baseType: !59, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !145, file: !51, line: 698, baseType: !59, size: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cframe", scope: !145, file: !51, line: 699, baseType: !48, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !145, file: !51, line: 700, baseType: !90, size: 32, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "exdata", scope: !145, file: !51, line: 701, baseType: !48, size: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "exdata2", scope: !145, file: !51, line: 702, baseType: !48, size: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !52, file: !51, line: 761, baseType: !166, size: 832)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCproto", file: !51, line: 396, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCproto", file: !51, line: 372, size: 832, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !188, !189, !191, !192, !193, !194}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !167, file: !51, line: 373, baseType: !59, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !167, file: !51, line: 373, baseType: !67, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !167, file: !51, line: 373, baseType: !67, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !167, file: !51, line: 374, baseType: !67, size: 8, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "framesize", scope: !167, file: !51, line: 375, baseType: !67, size: 8, offset: 88)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sizebc", scope: !167, file: !51, line: 376, baseType: !90, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "unused_gc64", scope: !167, file: !51, line: 378, baseType: !43, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !167, file: !51, line: 380, baseType: !59, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !167, file: !51, line: 381, baseType: !138, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !167, file: !51, line: 382, baseType: !138, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sizekgc", scope: !167, file: !51, line: 383, baseType: !90, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sizekn", scope: !167, file: !51, line: 384, baseType: !90, size: 32, offset: 416)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sizept", scope: !167, file: !51, line: 385, baseType: !90, size: 32, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sizeuv", scope: !167, file: !51, line: 386, baseType: !67, size: 8, offset: 480)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !51, line: 387, baseType: !67, size: 8, offset: 488)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !167, file: !51, line: 388, baseType: !185, size: 16, offset: 496)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !44, line: 25, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !46, line: 40, baseType: !187)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "chunkname", scope: !167, file: !51, line: 390, baseType: !59, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "firstline", scope: !167, file: !51, line: 391, baseType: !190, size: 32, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCLine", file: !51, line: 154, baseType: !122)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "numline", scope: !167, file: !51, line: 392, baseType: !190, size: 32, offset: 608)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !167, file: !51, line: 393, baseType: !138, size: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uvinfo", scope: !167, file: !51, line: 394, baseType: !138, size: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "varinfo", scope: !167, file: !51, line: 395, baseType: !138, size: 64, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !52, file: !51, line: 762, baseType: !196, size: 448)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCfunc", file: !51, line: 472, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCfunc", file: !51, line: 469, size: 448, elements: !198)
!198 = !{!199, !221}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !197, file: !51, line: 470, baseType: !200, size: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCfuncC", file: !51, line: 462, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCfuncC", file: !51, line: 458, size: 448, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !217}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !201, file: !51, line: 459, baseType: !59, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !201, file: !51, line: 459, baseType: !67, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !201, file: !51, line: 459, baseType: !67, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ffid", scope: !201, file: !51, line: 459, baseType: !67, size: 8, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !201, file: !51, line: 459, baseType: !67, size: 8, offset: 88)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !201, file: !51, line: 459, baseType: !59, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !201, file: !51, line: 459, baseType: !59, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !201, file: !51, line: 459, baseType: !138, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !201, file: !51, line: 460, baseType: !212, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !110, line: 53, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!124, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !201, file: !51, line: 461, baseType: !218, size: 64, align: 64, offset: 384)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, align: 64, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 1)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !197, file: !51, line: 471, baseType: !222, size: 384)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCfuncL", file: !51, line: 467, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCfuncL", file: !51, line: 464, size: 384, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !223, file: !51, line: 465, baseType: !59, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !223, file: !51, line: 465, baseType: !67, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !223, file: !51, line: 465, baseType: !67, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ffid", scope: !223, file: !51, line: 465, baseType: !67, size: 8, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !223, file: !51, line: 465, baseType: !67, size: 8, offset: 88)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !223, file: !51, line: 465, baseType: !59, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !223, file: !51, line: 465, baseType: !59, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !223, file: !51, line: 465, baseType: !138, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "uvptr", scope: !223, file: !51, line: 466, baseType: !234, size: 64, offset: 320)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !219)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !52, file: !51, line: 763, baseType: !236, size: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCcdata", file: !51, line: 351, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCcdata", file: !51, line: 348, size: 128, elements: !238)
!238 = !{!239, !240, !241, !242}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !237, file: !51, line: 349, baseType: !59, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !237, file: !51, line: 349, baseType: !67, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !237, file: !51, line: 349, baseType: !67, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ctypeid", scope: !237, file: !51, line: 350, baseType: !185, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !52, file: !51, line: 764, baseType: !244, size: 512)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCtab", file: !51, line: 511, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCtab", file: !51, line: 498, size: 512, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !255, !256, !257, !258, !259, !260, !261}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !245, file: !51, line: 499, baseType: !59, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !245, file: !51, line: 499, baseType: !67, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !245, file: !51, line: 499, baseType: !67, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nomm", scope: !245, file: !51, line: 500, baseType: !67, size: 8, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "colo", scope: !245, file: !51, line: 501, baseType: !252, size: 8, offset: 88)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !115, line: 24, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !46, line: 37, baseType: !254)
!254 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !245, file: !51, line: 502, baseType: !138, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !245, file: !51, line: 503, baseType: !59, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !245, file: !51, line: 504, baseType: !59, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !51, line: 505, baseType: !138, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "asize", scope: !245, file: !51, line: 506, baseType: !43, size: 32, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "hmask", scope: !245, file: !51, line: 507, baseType: !43, size: 32, offset: 416)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "freetop", scope: !245, file: !51, line: 509, baseType: !138, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !52, file: !51, line: 765, baseType: !263, size: 384)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCudata", file: !51, line: 331, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCudata", file: !51, line: 323, size: 384, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nextgc", scope: !264, file: !51, line: 324, baseType: !59, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !264, file: !51, line: 324, baseType: !67, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "gct", scope: !264, file: !51, line: 324, baseType: !67, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "udtype", scope: !264, file: !51, line: 325, baseType: !67, size: 8, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !264, file: !51, line: 326, baseType: !67, size: 8, offset: 88)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !264, file: !51, line: 327, baseType: !59, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !51, line: 328, baseType: !90, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !264, file: !51, line: 329, baseType: !59, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "align1", scope: !264, file: !51, line: 330, baseType: !43, size: 32, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!276 = !{!0, !7, !12, !17, !19, !24, !26, !31, !33, !35, !37, !39, !277, !279, !281}
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !28, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !28, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "lj_obj_itypename", scope: !41, file: !2, line: 17, type: !283, isLocal: false, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 896, elements: !287)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!287 = !{!288}
!288 = !DISubrange(count: 14)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 768, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 12)
!292 = !{i32 7, !"Dwarf Version", i32 5}
!293 = !{i32 2, !"Debug Info Version", i32 3}
!294 = !{i32 1, !"wchar_size", i32 4}
!295 = !{i32 8, !"PIC Level", i32 2}
!296 = !{i32 7, !"PIE Level", i32 2}
!297 = !{i32 7, !"uwtable", i32 2}
!298 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!299 = distinct !DISubprogram(name: "lj_obj_equal", scope: !2, file: !2, line: 23, type: !300, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !305)
!300 = !DISubroutineType(types: !301)
!301 = !{!124, !302, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTValue", file: !51, line: 215, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!305 = !{!306, !307}
!306 = !DILocalVariable(name: "o1", arg: 1, scope: !299, file: !2, line: 23, type: !302)
!307 = !DILocalVariable(name: "o2", arg: 2, scope: !299, file: !2, line: 23, type: !302)
!308 = !{!309, !309, i64 0}
!309 = !{!"any pointer", !310, i64 0}
!310 = !{!"omnipotent char", !311, i64 0}
!311 = !{!"Simple C/C++ TBAA"}
!312 = !DILocation(line: 23, column: 39, scope: !299)
!313 = !DILocation(line: 23, column: 52, scope: !299)
!314 = !DILocation(line: 25, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !299, file: !2, line: 25, column: 7)
!316 = !{!310, !310, i64 0}
!317 = !DILocation(line: 25, column: 20, scope: !315)
!318 = !DILocation(line: 25, column: 17, scope: !315)
!319 = !DILocation(line: 25, column: 7, scope: !299)
!320 = !DILocation(line: 26, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 26, column: 9)
!322 = distinct !DILexicalBlock(scope: !315, file: !2, line: 25, column: 31)
!323 = !DILocation(line: 26, column: 9, scope: !322)
!324 = !DILocation(line: 27, column: 7, scope: !321)
!325 = !DILocation(line: 28, column: 10, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !2, line: 28, column: 9)
!327 = !DILocation(line: 28, column: 9, scope: !322)
!328 = !DILocation(line: 29, column: 14, scope: !326)
!329 = !DILocation(line: 29, column: 7, scope: !326)
!330 = !DILocation(line: 30, column: 3, scope: !322)
!331 = !DILocation(line: 30, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !315, file: !2, line: 30, column: 14)
!333 = !DILocation(line: 30, column: 30, scope: !332)
!334 = !DILocation(line: 30, column: 34, scope: !332)
!335 = !DILocation(line: 30, column: 14, scope: !315)
!336 = !DILocation(line: 31, column: 5, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !2, line: 30, column: 50)
!338 = !DILocation(line: 33, column: 21, scope: !299)
!339 = !DILocation(line: 33, column: 10, scope: !299)
!340 = !DILocation(line: 33, column: 39, scope: !299)
!341 = !DILocation(line: 33, column: 28, scope: !299)
!342 = !DILocation(line: 33, column: 25, scope: !299)
!343 = !DILocation(line: 33, column: 3, scope: !299)
!344 = !DILocation(line: 34, column: 1, scope: !299)
!345 = distinct !DISubprogram(name: "numberVnum", scope: !51, file: !51, line: 1032, type: !346, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!109, !302}
!348 = !{!349}
!349 = !DILocalVariable(name: "o", arg: 1, scope: !345, file: !51, line: 1032, type: !302)
!350 = !DILocation(line: 1032, column: 50, scope: !345)
!351 = !DILocation(line: 1037, column: 12, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !51, line: 1034, column: 7)
!353 = !DILocation(line: 1037, column: 5, scope: !352)
!354 = distinct !DISubprogram(name: "lj_obj_ptr", scope: !2, file: !2, line: 37, type: !355, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !481)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !359, !302}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !51, line: 661, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !51, line: 631, size: 5888, elements: !362)
!362 = !{!363, !370, !371, !394, !395, !396, !397, !398, !399, !413, !415, !416, !425, !426, !427, !434, !435, !436, !437, !438, !461, !462, !463, !465, !466, !467, !468, !469, !476, !480}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "allocf", scope: !361, file: !51, line: 632, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !110, line: 67, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!48, !48, !48, !368, !368}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !369, line: 70, baseType: !65)
!369 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!370 = !DIDerivedType(tag: DW_TAG_member, name: "allocd", scope: !361, file: !51, line: 633, baseType: !48, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !361, file: !51, line: 634, baseType: !372, size: 832, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCState", file: !51, line: 615, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCState", file: !51, line: 590, size: 832, elements: !374)
!374 = !{!375, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !373, file: !51, line: 591, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCSize", file: !51, line: 21, baseType: !63)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !373, file: !51, line: 592, baseType: !376, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !373, file: !51, line: 593, baseType: !67, size: 8, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !51, line: 594, baseType: !67, size: 8, offset: 136)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nocdatafin", scope: !373, file: !51, line: 595, baseType: !67, size: 8, offset: 144)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lightudnum", scope: !373, file: !51, line: 597, baseType: !67, size: 8, offset: 152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstr", scope: !373, file: !51, line: 601, baseType: !90, size: 32, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !373, file: !51, line: 602, baseType: !59, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sweep", scope: !373, file: !51, line: 603, baseType: !138, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !373, file: !51, line: 604, baseType: !59, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !373, file: !51, line: 605, baseType: !59, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !373, file: !51, line: 606, baseType: !59, size: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mmudata", scope: !373, file: !51, line: 607, baseType: !59, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "debt", scope: !373, file: !51, line: 608, baseType: !376, size: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !373, file: !51, line: 609, baseType: !376, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "stepmul", scope: !373, file: !51, line: 610, baseType: !90, size: 32, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !373, file: !51, line: 611, baseType: !90, size: 32, offset: 736)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lightudseg", scope: !373, file: !51, line: 613, baseType: !138, size: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "strempty", scope: !361, file: !51, line: 635, baseType: !77, size: 192, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "stremptyz", scope: !361, file: !51, line: 636, baseType: !67, size: 8, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !361, file: !51, line: 637, baseType: !67, size: 8, offset: 1160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dispatchmode", scope: !361, file: !51, line: 638, baseType: !67, size: 8, offset: 1168)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vmevmask", scope: !361, file: !51, line: 639, baseType: !67, size: 8, offset: 1176)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !361, file: !51, line: 640, baseType: !400, size: 256, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "StrInternState", file: !51, line: 628, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StrInternState", file: !51, line: 618, size: 256, elements: !402)
!402 = !{!403, !405, !406, !407, !408, !409, !410, !411, !412}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !401, file: !51, line: 619, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !401, file: !51, line: 620, baseType: !90, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !401, file: !51, line: 621, baseType: !90, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !401, file: !51, line: 622, baseType: !86, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "idreseed", scope: !401, file: !51, line: 623, baseType: !67, size: 8, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !401, file: !51, line: 624, baseType: !67, size: 8, offset: 168)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !401, file: !51, line: 625, baseType: !67, size: 8, offset: 176)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !401, file: !51, line: 626, baseType: !67, size: 8, offset: 184)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !401, file: !51, line: 627, baseType: !63, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vmstate", scope: !361, file: !51, line: 641, baseType: !414, size: 32, offset: 1472)
!414 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mainthref", scope: !361, file: !51, line: 642, baseType: !59, size: 64, offset: 1536)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tmpbuf", scope: !361, file: !51, line: 643, baseType: !417, size: 256, offset: 1600)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "SBuf", file: !51, line: 163, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SBuf", file: !51, line: 161, size: 256, elements: !419)
!419 = !{!420, !422, !423, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !418, file: !51, line: 162, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !418, file: !51, line: 162, baseType: !421, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !418, file: !51, line: 162, baseType: !421, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !418, file: !51, line: 162, baseType: !138, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tmptv", scope: !361, file: !51, line: 644, baseType: !104, size: 64, align: 64, offset: 1856)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tmptv2", scope: !361, file: !51, line: 644, baseType: !104, size: 64, align: 64, offset: 1920)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nilnode", scope: !361, file: !51, line: 645, baseType: !428, size: 192, offset: 1984)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !51, line: 494, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !51, line: 487, size: 192, elements: !430)
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !429, file: !51, line: 488, baseType: !104, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !429, file: !51, line: 489, baseType: !104, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !51, line: 490, baseType: !138, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "registrytv", scope: !361, file: !51, line: 646, baseType: !104, size: 64, align: 64, offset: 2176)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !361, file: !51, line: 647, baseType: !92, size: 384, offset: 2240)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !361, file: !51, line: 648, baseType: !122, size: 32, offset: 2624)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hookcstart", scope: !361, file: !51, line: 649, baseType: !122, size: 32, offset: 2656)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hookf", scope: !361, file: !51, line: 650, baseType: !439, size: 64, offset: 2688)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !110, line: 340, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !216, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !110, line: 336, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !110, line: 368, size: 960, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !460}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !445, file: !110, line: 369, baseType: !124, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !110, line: 370, baseType: !285, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !445, file: !110, line: 371, baseType: !285, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !445, file: !110, line: 372, baseType: !285, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !445, file: !110, line: 373, baseType: !285, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !445, file: !110, line: 374, baseType: !124, size: 32, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !445, file: !110, line: 375, baseType: !124, size: 32, offset: 352)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !445, file: !110, line: 376, baseType: !124, size: 32, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !445, file: !110, line: 377, baseType: !124, size: 32, offset: 416)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !445, file: !110, line: 378, baseType: !457, size: 480, offset: 448)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 60)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !445, file: !110, line: 380, baseType: !124, size: 32, offset: 928)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wrapf", scope: !361, file: !51, line: 651, baseType: !212, size: 64, offset: 2752)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !361, file: !51, line: 652, baseType: !212, size: 64, offset: 2816)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bc_cfunc_int", scope: !361, file: !51, line: 653, baseType: !464, size: 32, offset: 2880)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "BCIns", file: !51, line: 151, baseType: !43)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "bc_cfunc_ext", scope: !361, file: !51, line: 654, baseType: !464, size: 32, offset: 2912)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "cur_L", scope: !361, file: !51, line: 655, baseType: !59, size: 64, offset: 2944)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "jit_base", scope: !361, file: !51, line: 656, baseType: !138, size: 64, offset: 3008)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_state", scope: !361, file: !51, line: 657, baseType: !138, size: 64, offset: 3072)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prng", scope: !361, file: !51, line: 658, baseType: !470, size: 256, offset: 3136)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRNGState", file: !471, line: 387, baseType: !472)
!471 = !DIFile(filename: "./lj_def.h", directory: "/local-ssd/lua-luajit-openresty-se52nalbvgco3rnkvshdz5pgiym3s7mg-build/aidengro/spack-stage-lua-luajit-openresty-2.1-20230410-se52nalbvgco3rnkvshdz5pgiym3s7mg/spack-src/src", checksumkind: CSK_MD5, checksum: "a861394f4a588bbf2057e4eb5b9b296b")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PRNGState", file: !471, line: 385, size: 256, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !472, file: !471, line: 386, baseType: !475, size: 256)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !10)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "gcroot", scope: !361, file: !51, line: 659, baseType: !477, size: 2432, offset: 3392)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2432, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 38)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "saved_jit_base", scope: !361, file: !51, line: 660, baseType: !138, size: 64, offset: 5824)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "g", arg: 1, scope: !354, file: !2, line: 37, type: !359)
!483 = !DILocalVariable(name: "o", arg: 2, scope: !354, file: !2, line: 37, type: !302)
!484 = !DILocation(line: 37, column: 51, scope: !354)
!485 = !DILocation(line: 37, column: 63, scope: !354)
!486 = !DILocation(line: 39, column: 3, scope: !354)
!487 = !DILocation(line: 40, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !354, file: !2, line: 40, column: 7)
!489 = !DILocation(line: 40, column: 7, scope: !354)
!490 = !DILocation(line: 41, column: 12, scope: !488)
!491 = !DILocation(line: 41, column: 5, scope: !488)
!492 = !DILocation(line: 42, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !2, line: 42, column: 12)
!494 = !DILocation(line: 42, column: 12, scope: !488)
!495 = !DILocation(line: 43, column: 21, scope: !493)
!496 = !DILocation(line: 43, column: 24, scope: !493)
!497 = !DILocation(line: 43, column: 12, scope: !493)
!498 = !DILocation(line: 43, column: 5, scope: !493)
!499 = !DILocation(line: 44, column: 25, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !2, line: 44, column: 12)
!501 = !DILocation(line: 44, column: 12, scope: !493)
!502 = !DILocation(line: 45, column: 12, scope: !500)
!503 = !DILocation(line: 45, column: 5, scope: !500)
!504 = !DILocation(line: 46, column: 12, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !2, line: 46, column: 12)
!506 = !DILocation(line: 46, column: 12, scope: !500)
!507 = !DILocation(line: 47, column: 12, scope: !505)
!508 = !DILocation(line: 47, column: 5, scope: !505)
!509 = !DILocation(line: 49, column: 5, scope: !505)
!510 = !DILocation(line: 50, column: 1, scope: !354)
!511 = distinct !DISubprogram(name: "lightudV", scope: !51, file: !51, line: 849, type: !512, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!48, !359, !302}
!514 = !{!515, !516, !517, !518, !519}
!515 = !DILocalVariable(name: "g", arg: 1, scope: !511, file: !51, line: 849, type: !359)
!516 = !DILocalVariable(name: "o", arg: 2, scope: !511, file: !51, line: 849, type: !302)
!517 = !DILocalVariable(name: "u", scope: !511, file: !51, line: 851, type: !63)
!518 = !DILocalVariable(name: "seg", scope: !511, file: !51, line: 852, type: !63)
!519 = !DILocalVariable(name: "segmap", scope: !511, file: !51, line: 853, type: !275)
!520 = !DILocation(line: 849, column: 48, scope: !511)
!521 = !DILocation(line: 849, column: 60, scope: !511)
!522 = !DILocation(line: 851, column: 3, scope: !511)
!523 = !DILocation(line: 851, column: 12, scope: !511)
!524 = !DILocation(line: 851, column: 16, scope: !511)
!525 = !DILocation(line: 851, column: 19, scope: !511)
!526 = !{!527, !527, i64 0}
!527 = !{!"long", !310, i64 0}
!528 = !DILocation(line: 852, column: 3, scope: !511)
!529 = !DILocation(line: 852, column: 12, scope: !511)
!530 = !DILocation(line: 852, column: 18, scope: !511)
!531 = !DILocation(line: 853, column: 3, scope: !511)
!532 = !DILocation(line: 853, column: 13, scope: !511)
!533 = !DILocation(line: 853, column: 22, scope: !511)
!534 = !{!535, !527, i64 112}
!535 = !{!"global_State", !309, i64 0, !309, i64 8, !536, i64 16, !540, i64 120, !310, i64 144, !310, i64 145, !310, i64 146, !310, i64 147, !541, i64 152, !537, i64 184, !538, i64 192, !542, i64 200, !310, i64 232, !310, i64 240, !543, i64 248, !310, i64 272, !544, i64 280, !537, i64 328, !537, i64 332, !309, i64 336, !309, i64 344, !309, i64 352, !537, i64 360, !537, i64 364, !538, i64 368, !539, i64 376, !539, i64 384, !545, i64 392, !310, i64 424, !539, i64 728}
!536 = !{!"GCState", !527, i64 0, !527, i64 8, !310, i64 16, !310, i64 17, !310, i64 18, !310, i64 19, !537, i64 20, !538, i64 24, !539, i64 32, !538, i64 40, !538, i64 48, !538, i64 56, !538, i64 64, !527, i64 72, !527, i64 80, !537, i64 88, !537, i64 92, !539, i64 96}
!537 = !{!"int", !310, i64 0}
!538 = !{!"GCRef", !527, i64 0}
!539 = !{!"MRef", !527, i64 0}
!540 = !{!"GCstr", !538, i64 0, !310, i64 8, !310, i64 9, !310, i64 10, !310, i64 11, !537, i64 12, !537, i64 16, !537, i64 20}
!541 = !{!"StrInternState", !309, i64 0, !537, i64 8, !537, i64 12, !537, i64 16, !310, i64 20, !310, i64 21, !310, i64 22, !310, i64 23, !527, i64 24}
!542 = !{!"SBuf", !309, i64 0, !309, i64 8, !309, i64 16, !539, i64 24}
!543 = !{!"Node", !310, i64 0, !310, i64 8, !539, i64 16}
!544 = !{!"GCupval", !538, i64 0, !310, i64 8, !310, i64 9, !310, i64 10, !310, i64 11, !310, i64 16, !539, i64 32, !537, i64 40}
!545 = !{!"PRNGState", !310, i64 0}
!546 = !DILocation(line: 854, column: 3, scope: !511)
!547 = !DILocation(line: 855, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !511, file: !51, line: 855, column: 7)
!549 = !DILocation(line: 855, column: 11, scope: !548)
!550 = !DILocation(line: 855, column: 7, scope: !511)
!551 = !DILocation(line: 855, column: 44, scope: !548)
!552 = !DILocation(line: 856, column: 3, scope: !511)
!553 = !DILocation(line: 857, column: 30, scope: !511)
!554 = !DILocation(line: 857, column: 37, scope: !511)
!555 = !{!537, !537, i64 0}
!556 = !DILocation(line: 857, column: 20, scope: !511)
!557 = !DILocation(line: 857, column: 42, scope: !511)
!558 = !DILocation(line: 857, column: 51, scope: !511)
!559 = !DILocation(line: 857, column: 49, scope: !511)
!560 = !DILocation(line: 857, column: 10, scope: !511)
!561 = !DILocation(line: 857, column: 3, scope: !511)
!562 = !DILocation(line: 858, column: 1, scope: !511)
