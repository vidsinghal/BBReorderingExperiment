; ModuleID = 'samples/512.bc'
source_filename = "crypto/bio/bss_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, [10 x i8], i32 }
%struct.bio_st = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i64, i64, %struct.crypto_ex_data_st, ptr }
%struct.crypto_ex_data_st = type { ptr, ptr }

@methods_slg = internal constant %struct.bio_method_st { i32 1025, ptr @.str, ptr @bwrite_conv, ptr @slg_write, ptr null, ptr null, ptr @slg_puts, ptr null, ptr @slg_ctrl, ptr @slg_new, ptr @slg_free, ptr null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@slg_write.mapping = internal constant [20 x %struct.anon] [%struct.anon { i32 6, [10 x i8] c"PANIC \00\00\00\00", i32 0 }, %struct.anon { i32 6, [10 x i8] c"EMERG \00\00\00\00", i32 0 }, %struct.anon { i32 4, [10 x i8] c"EMR \00\00\00\00\00\00", i32 0 }, %struct.anon { i32 6, [10 x i8] c"ALERT \00\00\00\00", i32 1 }, %struct.anon { i32 4, [10 x i8] c"ALR \00\00\00\00\00\00", i32 1 }, %struct.anon { i32 5, [10 x i8] c"CRIT \00\00\00\00\00", i32 2 }, %struct.anon { i32 4, [10 x i8] c"CRI \00\00\00\00\00\00", i32 2 }, %struct.anon { i32 6, [10 x i8] c"ERROR \00\00\00\00", i32 3 }, %struct.anon { i32 4, [10 x i8] c"ERR \00\00\00\00\00\00", i32 3 }, %struct.anon { i32 8, [10 x i8] c"WARNING \00\00", i32 4 }, %struct.anon { i32 5, [10 x i8] c"WARN \00\00\00\00\00", i32 4 }, %struct.anon { i32 4, [10 x i8] c"WAR \00\00\00\00\00\00", i32 4 }, %struct.anon { i32 7, [10 x i8] c"NOTICE \00\00\00", i32 5 }, %struct.anon { i32 5, [10 x i8] c"NOTE \00\00\00\00\00", i32 5 }, %struct.anon { i32 4, [10 x i8] c"NOT \00\00\00\00\00\00", i32 5 }, %struct.anon { i32 5, [10 x i8] c"INFO \00\00\00\00\00", i32 6 }, %struct.anon { i32 4, [10 x i8] c"INF \00\00\00\00\00\00", i32 6 }, %struct.anon { i32 6, [10 x i8] c"DEBUG \00\00\00\00", i32 7 }, %struct.anon { i32 4, [10 x i8] c"DBG \00\00\00\00\00\00", i32 7 }, %struct.anon { i32 0, [10 x i8] zeroinitializer, i32 3 }], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/bio/bss_log.c\00", align 1
@__func__.slg_write = private unnamed_addr constant [10 x i8] c"slg_write\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"application\00", align 1

; Function Attrs: nounwind uwtable
define ptr @BIO_s_log() #0 {
entry:
  ret ptr @methods_slg
}

declare i32 @bwrite_conv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @slg_write(ptr noundef %b, ptr noundef %in, i32 noundef %inl) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inl.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %priority = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i32 %inl, ptr %inl.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  %0 = load i32, ptr %inl.addr, align 4, !tbaa !8
  store i32 %0, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %priority) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %1 = load i32, ptr %inl.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %inl.addr, align 4, !tbaa !8
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call = call noalias ptr @CRYPTO_malloc(i64 noundef %conv, ptr noundef @.str.1, i32 noundef 200)
  store ptr %call, ptr %buf, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.1, i32 noundef 201, ptr noundef @__func__.slg_write)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %buf, align 8, !tbaa !4
  %4 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %5 = load i32, ptr %inl.addr, align 4, !tbaa !8
  %conv5 = sext i32 %5 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %conv5, i1 false)
  %6 = load ptr, ptr %buf, align 8, !tbaa !4
  %7 = load i32, ptr %inl.addr, align 4, !tbaa !8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %8 = load ptr, ptr %buf, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [20 x %struct.anon], ptr @slg_write.mapping, i64 0, i64 %idxprom6
  %str = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %arraydecay = getelementptr inbounds [10 x i8], ptr %str, i64 0, i64 0
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [20 x %struct.anon], ptr @slg_write.mapping, i64 0, i64 %idxprom8
  %strl = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 0
  %11 = load i32, ptr %strl, align 4, !tbaa !11
  %conv10 = sext i32 %11 to i64
  %call11 = call i32 @strncmp(ptr noundef %8, ptr noundef %arraydecay, i64 noundef %conv10) #6
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [20 x %struct.anon], ptr @slg_write.mapping, i64 0, i64 %idxprom14
  %log_level = getelementptr inbounds %struct.anon, ptr %arrayidx15, i32 0, i32 2
  %14 = load i32, ptr %log_level, align 4, !tbaa !15
  store i32 %14, ptr %priority, align 4, !tbaa !8
  %15 = load ptr, ptr %buf, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [20 x %struct.anon], ptr @slg_write.mapping, i64 0, i64 %idxprom16
  %strl18 = getelementptr inbounds %struct.anon, ptr %arrayidx17, i32 0, i32 0
  %17 = load i32, ptr %strl18, align 4, !tbaa !11
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  store ptr %add.ptr, ptr %pp, align 8, !tbaa !4
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %19 = load i32, ptr %priority, align 4, !tbaa !8
  %20 = load ptr, ptr %pp, align 8, !tbaa !4
  call void @xsyslog(ptr noundef %18, i32 noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %21, ptr noundef @.str.1, i32 noundef 215)
  %22 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %priority) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @slg_puts(ptr noundef %bp, ptr noundef %str) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !4
  store ptr %str, ptr %str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %n, align 4, !tbaa !8
  %1 = load ptr, ptr %bp.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %3 = load i32, ptr %n, align 4, !tbaa !8
  %call1 = call i32 @slg_write(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  store i32 %call1, ptr %ret, align 4, !tbaa !8
  %4 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i64 @slg_ctrl(ptr noundef %b, i32 noundef %cmd, i64 noundef %num, ptr noundef %ptr) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %num.addr = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store i32 %cmd, ptr %cmd.addr, align 4, !tbaa !8
  store i64 %num, ptr %num.addr, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load i32, ptr %cmd.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @xcloselog(ptr noundef %1)
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %4 = load i64, ptr %num.addr, align 8, !tbaa !16
  %conv = trunc i64 %4 to i32
  call void @xopenlog(ptr noundef %2, ptr noundef %3, i32 noundef %conv)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal i32 @slg_new(ptr noundef %bi) #0 {
entry:
  %bi.addr = alloca ptr, align 8
  store ptr %bi, ptr %bi.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bi.addr, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.bio_st, ptr %0, i32 0, i32 5
  store i32 1, ptr %init, align 8, !tbaa !18
  %1 = load ptr, ptr %bi.addr, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.bio_st, ptr %1, i32 0, i32 9
  store i32 0, ptr %num, align 8, !tbaa !21
  %2 = load ptr, ptr %bi.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bio_st, ptr %2, i32 0, i32 10
  store ptr null, ptr %ptr, align 8, !tbaa !22
  %3 = load ptr, ptr %bi.addr, align 8, !tbaa !4
  call void @xopenlog(ptr noundef %3, ptr noundef @.str.3, i32 noundef 24)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @slg_free(ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @xcloselog(ptr noundef %1)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #1

declare void @ERR_new() #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal void @xsyslog(ptr noundef %bp, i32 noundef %priority, ptr noundef %string) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  %priority.addr = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !4
  store i32 %priority, ptr %priority.addr, align 4, !tbaa !8
  store ptr %string, ptr %string.addr, align 8, !tbaa !4
  %0 = load i32, ptr %priority.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %string.addr, align 8, !tbaa !4
  call void (i32, ptr, ...) @syslog(i32 noundef %0, ptr noundef @.str.2, ptr noundef %1)
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @syslog(i32 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @xcloselog(ptr noundef %bp) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !4
  call void @closelog()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xopenlog(ptr noundef %bp, ptr noundef %name, i32 noundef %level) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %1 = load i32, ptr %level.addr, align 4, !tbaa !8
  call void @openlog(ptr noundef %0, i32 noundef 3, i32 noundef %1)
  ret void
}

declare void @closelog() #1

declare void @openlog(ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !9, i64 0}
!12 = !{!"", !9, i64 0, !6, i64 4, !9, i64 16}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!12, !9, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !9, i64 40}
!19 = !{!"bio_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !6, i64 88, !17, i64 96, !17, i64 104, !20, i64 112, !5, i64 128}
!20 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!21 = !{!19, !9, i64 56}
!22 = !{!19, !5, i64 64}
