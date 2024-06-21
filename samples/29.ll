; ModuleID = 'samples/29.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_client_ems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_extension_type = type { i16, i8, i16, ptr, ptr, ptr, ptr }
%struct.s2n_stuffer = type { %struct.s2n_blob, i32, i32, i32, i8 }
%struct.s2n_blob = type { ptr, i32, i32, i8 }

@s2n_client_ems_extension = hidden constant %struct.s2n_extension_type { i16 23, i8 0, i16 0, ptr @s2n_extension_send_noop, ptr @s2n_client_ems_recv, ptr @s2n_client_ems_should_send, ptr @s2n_extension_noop_if_missing }, align 8
@.str = private unnamed_addr constant [227 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_client_ems.c:46\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [227 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/extensions/s2n_client_ems.c:49\00", align 1

declare i32 @s2n_extension_send_noop(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @s2n_client_ems_recv(ptr noundef %conn, ptr noundef %extension) #1 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %extension.addr = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store ptr %extension, ptr %extension.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !8
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load ptr, ptr %extension.addr, align 8, !tbaa !4
  %write_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %write_cursor, align 4, !tbaa !10
  %5 = load ptr, ptr %extension.addr, align 8, !tbaa !4
  %read_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %read_cursor, align 8, !tbaa !13
  %sub = sub i32 %4, %6
  %cmp8 = icmp eq i32 %sub, 0
  br i1 %cmp8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %7, align 8, !tbaa !4
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544386, ptr %8, align 4, !tbaa !8
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  store i32 -1, ptr %retval, align 4
  br label %return

do.end15:                                         ; No predecessors!
  br label %do.end16

do.end16:                                         ; preds = %do.end15
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.body7
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load = load i32, ptr %9, align 8
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, 8192
  store i32 %bf.set, ptr %9, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end18, %do.body14, %do.body3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s2n_client_ems_should_send(ptr noundef %conn) #1 {
entry:
  %retval = alloca i1, align 1
  %conn.addr = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load = load i32, ptr %1, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load3 = load i32, ptr %2, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 13
  %bf.clear5 = and i32 %bf.lshr4, 1
  %tobool6 = icmp ne i32 %bf.clear5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  store i1 false, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i1, ptr %retval, align 1
  ret i1 %3
}

declare i32 @s2n_extension_noop_if_missing(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

declare i32 @s2n_calculate_stacktrace() #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!11, !9, i64 28}
!11 = !{!"s2n_stuffer", !12, i64 0, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 36, !9, i64 36}
!12 = !{!"s2n_blob", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!13 = !{!11, !9, i64 24}
