; ModuleID = 'samples/891.bc'
source_filename = "libyasm/xmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yasm_xmalloc = dso_local global ptr @def_xmalloc, align 8
@yasm_xcalloc = dso_local global ptr @def_xcalloc, align 8
@yasm_xrealloc = dso_local global ptr @def_xrealloc, align 8
@yasm_xfree = dso_local global ptr @def_xfree, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @def_xmalloc(i64 noundef %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %newmem = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %size.addr, align 8
  %call = call noalias ptr @malloc(i64 noundef %1) #6
  store ptr %call, ptr %newmem, align 8
  %2 = load ptr, ptr %newmem, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void (ptr, ...) @yasm__fatal(ptr noundef @.str)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load ptr, ptr %newmem, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @def_xcalloc(i64 noundef %nelem, i64 noundef %elsize) #0 {
entry:
  %nelem.addr = alloca i64, align 8
  %elsize.addr = alloca i64, align 8
  %newmem = alloca ptr, align 8
  store i64 %nelem, ptr %nelem.addr, align 8
  store i64 %elsize, ptr %elsize.addr, align 8
  %0 = load i64, ptr %nelem.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %elsize.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 1, ptr %elsize.addr, align 8
  store i64 1, ptr %nelem.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i64, ptr %nelem.addr, align 8
  %3 = load i64, ptr %elsize.addr, align 8
  %call = call noalias ptr @calloc(i64 noundef %2, i64 noundef %3) #7
  store ptr %call, ptr %newmem, align 8
  %4 = load ptr, ptr %newmem, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void (ptr, ...) @yasm__fatal(ptr noundef @.str)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %newmem, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @def_xrealloc(ptr noundef %oldmem, i64 noundef %size) #0 {
entry:
  %oldmem.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %newmem = alloca ptr, align 8
  store ptr %oldmem, ptr %oldmem.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load i64, ptr %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %oldmem.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8
  %call = call noalias ptr @malloc(i64 noundef %2) #6
  store ptr %call, ptr %newmem, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %oldmem.addr, align 8
  %4 = load i64, ptr %size.addr, align 8
  %call2 = call ptr @realloc(ptr noundef %3, i64 noundef %4) #8
  store ptr %call2, ptr %newmem, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %5 = load ptr, ptr %newmem, align 8
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void (ptr, ...) @yasm__fatal(ptr noundef @.str)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load ptr, ptr %newmem, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @def_xfree(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  call void @free(ptr noundef %1) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

declare void @yasm__fatal(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind allocsize(1) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
