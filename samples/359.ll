; ModuleID = 'samples/359.bc'
source_filename = "mi/Lget_proc_info_by_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_accessors = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline optnone uwtable
define i32 @_ULx86_64_get_proc_info_by_ip(ptr noundef %as, i64 noundef %ip, ptr noundef %pi, ptr noundef %as_arg) #0 {
entry:
  %as.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %pi.addr = alloca ptr, align 8
  %as_arg.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %as, ptr %as.addr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  store ptr %as_arg, ptr %as_arg.addr, align 8
  %0 = load ptr, ptr %as.addr, align 8
  %call = call ptr @_Ux86_64_get_accessors_int(ptr noundef %0)
  store ptr %call, ptr %a, align 8
  %1 = load ptr, ptr %as.addr, align 8
  %2 = load i64, ptr %ip.addr, align 8
  %3 = load ptr, ptr %pi.addr, align 8
  %4 = load ptr, ptr %as_arg.addr, align 8
  %call1 = call i32 @_ULx86_64_Ifind_dynamic_proc_info(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %4)
  store i32 %call1, ptr %ret, align 4
  %5 = load i32, ptr %ret, align 4
  %cmp = icmp eq i32 %5, -10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %a, align 8
  %find_proc_info = getelementptr inbounds %struct.unw_accessors, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %find_proc_info, align 8
  %8 = load ptr, ptr %as.addr, align 8
  %9 = load i64, ptr %ip.addr, align 8
  %10 = load ptr, ptr %pi.addr, align 8
  %11 = load ptr, ptr %as_arg.addr, align 8
  %call2 = call i32 %7(ptr noundef %8, i64 noundef %9, ptr noundef %10, i32 noundef 0, ptr noundef %11)
  store i32 %call2, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %ret, align 4
  ret i32 %12
}

declare ptr @_Ux86_64_get_accessors_int(ptr noundef) #1

declare i32 @_ULx86_64_Ifind_dynamic_proc_info(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
