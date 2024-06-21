; ModuleID = 'samples/176.bc'
source_filename = "crypto/rsa/rsa_x931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_x931.c\00", align 1
@__func__.RSA_padding_add_X931 = private unnamed_addr constant [21 x i8] c"RSA_padding_add_X931\00", align 1
@__func__.RSA_padding_check_X931 = private unnamed_addr constant [23 x i8] c"RSA_padding_check_X931\00", align 1

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_add_X931(ptr noundef %to, i32 noundef %tlen, ptr noundef %from, i32 noundef %flen) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %tlen.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %flen.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store i32 %tlen, ptr %tlen.addr, align 4, !tbaa !8
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  store i32 %flen, ptr %flen.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load i32, ptr %tlen.addr, align 4, !tbaa !8
  %1 = load i32, ptr %flen.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %0, %1
  %sub1 = sub nsw i32 %sub, 2
  store i32 %sub1, ptr %j, align 4, !tbaa !8
  %2 = load i32, ptr %j, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 36, ptr noundef @__func__.RSA_padding_add_X931)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %to.addr, align 8, !tbaa !4
  store ptr %3, ptr %p, align 8, !tbaa !4
  %4 = load i32, ptr %j, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 106, ptr %5, align 1, !tbaa !10
  br label %if.end11

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr4, ptr %p, align 8, !tbaa !4
  store i8 107, ptr %6, align 1, !tbaa !10
  %7 = load i32, ptr %j, align 4, !tbaa !8
  %cmp5 = icmp sgt i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %p, align 8, !tbaa !4
  %9 = load i32, ptr %j, align 4, !tbaa !8
  %sub7 = sub nsw i32 %9, 1
  %conv = sext i32 %sub7 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 -69, i64 %conv, i1 false)
  %10 = load i32, ptr %j, align 4, !tbaa !8
  %sub8 = sub nsw i32 %10, 1
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %idx.ext = sext i32 %sub8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr10, ptr %p, align 8, !tbaa !4
  store i8 -70, ptr %12, align 1, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.then3
  %13 = load ptr, ptr %p, align 8, !tbaa !4
  %14 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %15 = load i32, ptr %flen.addr, align 4, !tbaa !8
  %conv12 = zext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 %conv12, i1 false)
  %16 = load i32, ptr %flen.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %idx.ext13 = sext i32 %16 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %17, i64 %idx.ext13
  store ptr %add.ptr14, ptr %p, align 8, !tbaa !4
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  store i8 -52, ptr %18, align 1, !tbaa !10
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_check_X931(ptr noundef %to, i32 noundef %tlen, ptr noundef %from, i32 noundef %flen, i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca ptr, align 8
  %tlen.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %flen.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %to, ptr %to.addr, align 8, !tbaa !4
  store i32 %tlen, ptr %tlen.addr, align 4, !tbaa !8
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  store i32 %flen, ptr %flen.addr, align 4, !tbaa !8
  store i32 %num, ptr %num.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load ptr, ptr %from.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load i32, ptr %num.addr, align 4, !tbaa !8
  %2 = load i32, ptr %flen.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !tbaa !4
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 106
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load ptr, ptr %p, align 8, !tbaa !4
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %conv3 = zext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 107
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 67, ptr noundef @__func__.RSA_padding_check_X931)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 137, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %conv6 = zext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 107
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %9 = load i32, ptr %flen.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %9, 3
  store i32 %sub, ptr %j, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #5
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr12, ptr %p, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !10
  store i8 %13, ptr %c, align 1, !tbaa !10
  %14 = load i8, ptr %c, align 1, !tbaa !10
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 186
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %15 = load i8, ptr %c, align 1, !tbaa !10
  %conv18 = zext i8 %15 to i32
  %cmp19 = icmp ne i32 %conv18, 187
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 78, ptr noundef @__func__.RSA_padding_check_X931)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 138, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then16
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %cleanup, %for.cond
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %18 = load i32, ptr %j, align 4, !tbaa !8
  %sub23 = sub nsw i32 %18, %17
  store i32 %sub23, ptr %j, align 4, !tbaa !8
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %cmp24 = icmp eq i32 %19, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 86, ptr noundef @__func__.RSA_padding_check_X931)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 138, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.end27:                                         ; preds = %for.end
  br label %if.end29

if.else:                                          ; preds = %if.end
  %20 = load i32, ptr %flen.addr, align 4, !tbaa !8
  %sub28 = sub nsw i32 %20, 2
  store i32 %sub28, ptr %j, align 4, !tbaa !8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end27
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %22 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv30 = zext i8 %23 to i32
  %cmp31 = icmp ne i32 %conv30, 204
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 95, ptr noundef @__func__.RSA_padding_check_X931)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 139, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.end34:                                         ; preds = %if.end29
  %24 = load ptr, ptr %to.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %p, align 8, !tbaa !4
  %26 = load i32, ptr %j, align 4, !tbaa !8
  %conv35 = zext i32 %26 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %25, i64 %conv35, i1 false)
  %27 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.end34, %if.then33, %if.then26, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @RSA_X931_hash_id(i32 noundef %nid) #0 {
entry:
  %retval = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4, !tbaa !8
  %0 = load i32, ptr %nid.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.epilog [
    i32 64, label %sw.bb
    i32 672, label %sw.bb1
    i32 673, label %sw.bb2
    i32 674, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 51, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 52, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 54, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 53, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
