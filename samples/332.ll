; ModuleID = 'samples/332.bc'
source_filename = "mytime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@opt_flush_timeout = hidden global i64 0, align 8
@start_time = internal global i64 0, align 8
@next_flush = internal global i64 0, align 8
@flush_needed = hidden global i8 0, align 1
@opt_mode = external global i32, align 4
@mytime_now.clk_id = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @mytime_set_start_time() #0 {
entry:
  %call = call i64 @mytime_now()
  store i64 %call, ptr @start_time, align 8
  %0 = load i64, ptr @start_time, align 8
  %1 = load i64, ptr @opt_flush_timeout, align 8
  %add = add i64 %0, %1
  store i64 %add, ptr @next_flush, align 8
  store i8 0, ptr @flush_needed, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mytime_now() #0 {
entry:
  %tv = alloca %struct.timespec, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @mytime_now.clk_id, align 4
  %call = call i32 @clock_gettime(i32 noundef %0, ptr noundef %tv) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @mytime_now.clk_id, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %tv, i32 0, i32 0
  %1 = load i64, ptr %tv_sec, align 8
  %mul = mul i64 %1, 1000
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %tv, i32 0, i32 1
  %2 = load i64, ptr %tv_nsec, align 8
  %div = sdiv i64 %2, 1000000
  %add = add i64 %mul, %div
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @mytime_get_elapsed() #0 {
entry:
  %call = call i64 @mytime_now()
  %0 = load i64, ptr @start_time, align 8
  %sub = sub i64 %call, %0
  ret i64 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @mytime_set_flush_time() #0 {
entry:
  %call = call i64 @mytime_now()
  %0 = load i64, ptr @opt_flush_timeout, align 8
  %add = add i64 %call, %0
  store i64 %add, ptr @next_flush, align 8
  store i8 0, ptr @flush_needed, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @mytime_get_flush_timeout() #0 {
entry:
  %retval = alloca i32, align 4
  %now = alloca i64, align 8
  %remaining = alloca i64, align 8
  %0 = load i64, ptr @opt_flush_timeout, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @opt_mode, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call i64 @mytime_now()
  store i64 %call, ptr %now, align 8
  %2 = load i64, ptr %now, align 8
  %3 = load i64, ptr @next_flush, align 8
  %cmp2 = icmp uge i64 %2, %3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load i64, ptr @next_flush, align 8
  %5 = load i64, ptr %now, align 8
  %sub = sub i64 %4, %5
  store i64 %sub, ptr %remaining, align 8
  %6 = load i64, ptr %remaining, align 8
  %cmp5 = icmp ugt i64 %6, 2147483647
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %7 = load i64, ptr %remaining, align 8
  %conv = trunc i64 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2147483647, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
