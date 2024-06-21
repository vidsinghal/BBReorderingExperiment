; ModuleID = 'samples/849.bc'
source_filename = "check/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.lzma_sha256_state }
%struct.lzma_sha256_state = type { [8 x i32], i64 }

@lzma_check_is_supported.available_checks = internal constant [16 x i8] c"\01\01\00\00\01\00\00\00\00\00\01\00\00\00\00\00", align 16
@lzma_check_size.check_sizes = internal constant [16 x i8] c"\00\04\04\04\08\08\08\10\10\10   @@@", align 16

; Function Attrs: noinline nounwind optnone willreturn memory(none) uwtable
define zeroext i8 @lzma_check_is_supported(i32 noundef %type) #0 {
entry:
  %retval = alloca i8, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  %cmp = icmp ugt i32 %0, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_is_supported.available_checks, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind optnone willreturn memory(none) uwtable
define i32 @lzma_check_size(i32 noundef %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  %cmp = icmp ugt i32 %0, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_size.check_sizes, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @lzma_check_init(ptr noundef %check, i32 noundef %type) #1 {
entry:
  %check.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %check, ptr %check.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
    i32 10, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load ptr, ptr %check.addr, align 8
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %1, i32 0, i32 1
  store i32 0, ptr %state, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %2 = load ptr, ptr %check.addr, align 8
  %state3 = getelementptr inbounds %struct.lzma_check_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %state3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load ptr, ptr %check.addr, align 8
  call void @lzma_sha256_init(ptr noundef %3)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

declare void @lzma_sha256_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @lzma_check_update(ptr noundef %check, i32 noundef %type, ptr noundef %buf, i64 noundef %size) #1 {
entry:
  %check.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %check, ptr %check.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i32, ptr %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 10, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i64, ptr %size.addr, align 8
  %3 = load ptr, ptr %check.addr, align 8
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %state, align 8
  %call = call i32 @lzma_crc32(ptr noundef %1, i64 noundef %2, i32 noundef %4) #4
  %5 = load ptr, ptr %check.addr, align 8
  %state1 = getelementptr inbounds %struct.lzma_check_state, ptr %5, i32 0, i32 1
  store i32 %call, ptr %state1, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i64, ptr %size.addr, align 8
  %8 = load ptr, ptr %check.addr, align 8
  %state3 = getelementptr inbounds %struct.lzma_check_state, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %state3, align 8
  %call4 = call i64 @lzma_crc64(ptr noundef %6, i64 noundef %7, i64 noundef %9) #4
  %10 = load ptr, ptr %check.addr, align 8
  %state5 = getelementptr inbounds %struct.lzma_check_state, ptr %10, i32 0, i32 1
  store i64 %call4, ptr %state5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %11 = load ptr, ptr %buf.addr, align 8
  %12 = load i64, ptr %size.addr, align 8
  %13 = load ptr, ptr %check.addr, align 8
  call void @lzma_sha256_update(ptr noundef %11, i64 noundef %12, ptr noundef %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @lzma_crc64(ptr noundef, i64 noundef, i64 noundef) #3

declare void @lzma_sha256_update(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @lzma_check_finish(ptr noundef %check, i32 noundef %type) #1 {
entry:
  %check.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %check, ptr %check.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  %0 = load i32, ptr %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 10, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %check.addr, align 8
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %state, align 8
  %3 = load ptr, ptr %check.addr, align 8
  %buffer = getelementptr inbounds %struct.lzma_check_state, ptr %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i32], ptr %buffer, i64 0, i64 0
  store i32 %2, ptr %arrayidx, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %check.addr, align 8
  %state2 = getelementptr inbounds %struct.lzma_check_state, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %state2, align 8
  %6 = load ptr, ptr %check.addr, align 8
  %buffer3 = getelementptr inbounds %struct.lzma_check_state, ptr %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i64], ptr %buffer3, i64 0, i64 0
  store i64 %5, ptr %arrayidx4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load ptr, ptr %check.addr, align 8
  call void @lzma_sha256_finish(ptr noundef %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb1, %sw.bb
  ret void
}

declare void @lzma_sha256_finish(ptr noundef) #2

attributes #0 = { noinline nounwind optnone willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
