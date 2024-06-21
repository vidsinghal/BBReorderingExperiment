; ModuleID = 'samples/969.bc'
source_filename = "simple/simple_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_bcj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @lzma_simple_props_size(ptr noundef %size, ptr noundef %options) #0 {
entry:
  %size.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %opt = alloca ptr, align 8
  store ptr %size, ptr %size.addr, align 8
  store ptr %options, ptr %options.addr, align 8
  %0 = load ptr, ptr %options.addr, align 8
  store ptr %0, ptr %opt, align 8
  %1 = load ptr, ptr %opt, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %opt, align 8
  %start_offset = getelementptr inbounds %struct.lzma_options_bcj, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %start_offset, align 4
  %cmp1 = icmp eq i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %5 = zext i1 %4 to i64
  %cond = select i1 %4, i32 0, i32 4
  %6 = load ptr, ptr %size.addr, align 8
  store i32 %cond, ptr %6, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @lzma_simple_props_encode(ptr noundef %options, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %opt = alloca ptr, align 8
  store ptr %options, ptr %options.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %options.addr, align 8
  store ptr %0, ptr %opt, align 8
  %1 = load ptr, ptr %opt, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %opt, align 8
  %start_offset = getelementptr inbounds %struct.lzma_options_bcj, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %start_offset, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %out.addr, align 8
  %5 = load ptr, ptr %opt, align 8
  %start_offset2 = getelementptr inbounds %struct.lzma_options_bcj, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %start_offset2, align 4
  call void @write32ne(ptr noundef %4, i32 noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write32ne(ptr noundef %buf, i32 noundef %num) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  %1 = load ptr, ptr %buf.addr, align 8
  store i32 %0, ptr %1, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
