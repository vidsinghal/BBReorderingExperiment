; ModuleID = 'samples/34.bc'
source_filename = "common/easy_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_easy = type { [5 x %struct.lzma_filter], %struct.lzma_options_lzma }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lzma_easy_buffer_encode(i32 noundef %preset, i32 noundef %check, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #0 {
entry:
  %retval = alloca i32, align 4
  %preset.addr = alloca i32, align 4
  %check.addr = alloca i32, align 4
  %allocator.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %in_size.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_pos.addr = alloca ptr, align 8
  %out_size.addr = alloca i64, align 8
  %opt_easy = alloca %struct.lzma_options_easy, align 8
  store i32 %preset, ptr %preset.addr, align 4
  store i32 %check, ptr %check.addr, align 4
  store ptr %allocator, ptr %allocator.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i64 %in_size, ptr %in_size.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %out_pos, ptr %out_pos.addr, align 8
  store i64 %out_size, ptr %out_size.addr, align 8
  %0 = load i32, ptr %preset.addr, align 4
  %call = call zeroext i1 @lzma_easy_preset(ptr noundef %opt_easy, i32 noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %filters = getelementptr inbounds %struct.lzma_options_easy, ptr %opt_easy, i32 0, i32 0
  %arraydecay = getelementptr inbounds [5 x %struct.lzma_filter], ptr %filters, i64 0, i64 0
  %1 = load i32, ptr %check.addr, align 4
  %2 = load ptr, ptr %allocator.addr, align 8
  %3 = load ptr, ptr %in.addr, align 8
  %4 = load i64, ptr %in_size.addr, align 8
  %5 = load ptr, ptr %out.addr, align 8
  %6 = load ptr, ptr %out_pos.addr, align 8
  %7 = load i64, ptr %out_size.addr, align 8
  %call1 = call i32 @lzma_stream_buffer_encode(ptr noundef %arraydecay, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #3
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare zeroext i1 @lzma_easy_preset(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @lzma_stream_buffer_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
