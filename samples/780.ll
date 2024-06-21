; ModuleID = 'samples/780.bc'
source_filename = "/local-ssd/jansson-6ysjm5zf4xkytnr237xl5srxz3lqeclu-build/aidengro/spack-stage-jansson-2.14-6ysjm5zf4xkytnr237xl5srxz3lqeclu/spack-src/src/strbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuffer_t = type { ptr, i64, i64 }

; Function Attrs: nounwind uwtable
define i32 @strbuffer_init(ptr noundef %strbuff) #0 {
entry:
  %retval = alloca i32, align 4
  %strbuff.addr = alloca ptr, align 8
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.strbuffer_t, ptr %0, i32 0, i32 2
  store i64 16, ptr %size, align 8, !tbaa !8
  %1 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.strbuffer_t, ptr %1, i32 0, i32 1
  store i64 0, ptr %length, align 8, !tbaa !11
  %2 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size1 = getelementptr inbounds %struct.strbuffer_t, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %size1, align 8, !tbaa !8
  %call = call ptr @jsonp_malloc(i64 noundef %3)
  %4 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %4, i32 0, i32 0
  store ptr %call, ptr %value, align 8, !tbaa !12
  %5 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value2 = getelementptr inbounds %struct.strbuffer_t, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %value2, align 8, !tbaa !12
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value3 = getelementptr inbounds %struct.strbuffer_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %value3, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare ptr @jsonp_malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @strbuffer_close(ptr noundef %strbuff) #0 {
entry:
  %strbuff.addr = alloca ptr, align 8
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %value, align 8, !tbaa !12
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value1 = getelementptr inbounds %struct.strbuffer_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %value1, align 8, !tbaa !12
  call void @jsonp_free(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.strbuffer_t, ptr %4, i32 0, i32 2
  store i64 0, ptr %size, align 8, !tbaa !8
  %5 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.strbuffer_t, ptr %5, i32 0, i32 1
  store i64 0, ptr %length, align 8, !tbaa !11
  %6 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value2 = getelementptr inbounds %struct.strbuffer_t, ptr %6, i32 0, i32 0
  store ptr null, ptr %value2, align 8, !tbaa !12
  ret void
}

declare void @jsonp_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @strbuffer_clear(ptr noundef %strbuff) #0 {
entry:
  %strbuff.addr = alloca ptr, align 8
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.strbuffer_t, ptr %0, i32 0, i32 1
  store i64 0, ptr %length, align 8, !tbaa !11
  %1 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %value, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @strbuffer_value(ptr noundef %strbuff) #0 {
entry:
  %strbuff.addr = alloca ptr, align 8
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %value, align 8, !tbaa !12
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @strbuffer_steal_value(ptr noundef %strbuff) #0 {
entry:
  %strbuff.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #4
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %value, align 8, !tbaa !12
  store ptr %1, ptr %result, align 8, !tbaa !4
  %2 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value1 = getelementptr inbounds %struct.strbuffer_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %value1, align 8, !tbaa !12
  %3 = load ptr, ptr %result, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #4
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @strbuffer_append_byte(ptr noundef %strbuff, i8 noundef signext %byte) #0 {
entry:
  %strbuff.addr = alloca ptr, align 8
  %byte.addr = alloca i8, align 1
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  store i8 %byte, ptr %byte.addr, align 1, !tbaa !13
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %call = call i32 @strbuffer_append_bytes(ptr noundef %0, ptr noundef %byte.addr, i64 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @strbuffer_append_bytes(ptr noundef %strbuff, ptr noundef %data, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %strbuff.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %new_size = alloca i64, align 8
  %new_value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !14
  %0 = load i64, ptr %size.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size1 = getelementptr inbounds %struct.strbuffer_t, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %size1, align 8, !tbaa !8
  %3 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.strbuffer_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %length, align 8, !tbaa !11
  %sub = sub i64 %2, %4
  %cmp = icmp uge i64 %0, %sub
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_value) #4
  %5 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size2 = getelementptr inbounds %struct.strbuffer_t, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %size2, align 8, !tbaa !8
  %cmp3 = icmp ugt i64 %6, 9223372036854775807
  br i1 %cmp3, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !tbaa !14
  %cmp4 = icmp ugt i64 %7, -2
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length6 = getelementptr inbounds %struct.strbuffer_t, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %length6, align 8, !tbaa !11
  %10 = load i64, ptr %size.addr, align 8, !tbaa !14
  %sub7 = sub i64 -2, %10
  %cmp8 = icmp ugt i64 %9, %sub7
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %11 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size10 = getelementptr inbounds %struct.strbuffer_t, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %size10, align 8, !tbaa !8
  %mul = mul i64 %12, 2
  %13 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length11 = getelementptr inbounds %struct.strbuffer_t, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %length11, align 8, !tbaa !11
  %15 = load i64, ptr %size.addr, align 8, !tbaa !14
  %add = add i64 %14, %15
  %add12 = add i64 %add, 1
  %cmp13 = icmp ugt i64 %mul, %add12
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %16 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size14 = getelementptr inbounds %struct.strbuffer_t, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %size14, align 8, !tbaa !8
  %mul15 = mul i64 %17, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length16 = getelementptr inbounds %struct.strbuffer_t, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %length16, align 8, !tbaa !11
  %20 = load i64, ptr %size.addr, align 8, !tbaa !14
  %add17 = add i64 %19, %20
  %add18 = add i64 %add17, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul15, %cond.true ], [ %add18, %cond.false ]
  store i64 %cond, ptr %new_size, align 8, !tbaa !14
  %21 = load i64, ptr %new_size, align 8, !tbaa !14
  %call = call ptr @jsonp_malloc(i64 noundef %21)
  store ptr %call, ptr %new_value, align 8, !tbaa !4
  %22 = load ptr, ptr %new_value, align 8, !tbaa !4
  %tobool = icmp ne ptr %22, null
  br i1 %tobool, label %if.end20, label %if.then19

if.then19:                                        ; preds = %cond.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %cond.end
  %23 = load ptr, ptr %new_value, align 8, !tbaa !4
  %24 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %value, align 8, !tbaa !12
  %26 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length21 = getelementptr inbounds %struct.strbuffer_t, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %length21, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %25, i64 %27, i1 false)
  %28 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value22 = getelementptr inbounds %struct.strbuffer_t, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %value22, align 8, !tbaa !12
  call void @jsonp_free(ptr noundef %29)
  %30 = load ptr, ptr %new_value, align 8, !tbaa !4
  %31 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value23 = getelementptr inbounds %struct.strbuffer_t, ptr %31, i32 0, i32 0
  store ptr %30, ptr %value23, align 8, !tbaa !12
  %32 = load i64, ptr %new_size, align 8, !tbaa !14
  %33 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %size24 = getelementptr inbounds %struct.strbuffer_t, ptr %33, i32 0, i32 2
  store i64 %32, ptr %size24, align 8, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_value) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_size) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26

if.end26:                                         ; preds = %cleanup.cont, %entry
  %34 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value27 = getelementptr inbounds %struct.strbuffer_t, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %value27, align 8, !tbaa !12
  %36 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length28 = getelementptr inbounds %struct.strbuffer_t, ptr %36, i32 0, i32 1
  %37 = load i64, ptr %length28, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %37
  %38 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %39 = load i64, ptr %size.addr, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %38, i64 %39, i1 false)
  %40 = load i64, ptr %size.addr, align 8, !tbaa !14
  %41 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length29 = getelementptr inbounds %struct.strbuffer_t, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %length29, align 8, !tbaa !11
  %add30 = add i64 %42, %40
  store i64 %add30, ptr %length29, align 8, !tbaa !11
  %43 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value31 = getelementptr inbounds %struct.strbuffer_t, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %value31, align 8, !tbaa !12
  %45 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length32 = getelementptr inbounds %struct.strbuffer_t, ptr %45, i32 0, i32 1
  %46 = load i64, ptr %length32, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 0, ptr %arrayidx, align 1, !tbaa !13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %cleanup
  %47 = load i32, ptr %retval, align 4
  ret i32 %47

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define signext i8 @strbuffer_pop(ptr noundef %strbuff) #0 {
entry:
  %retval = alloca i8, align 1
  %strbuff.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %strbuff, ptr %strbuff.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.strbuffer_t, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %length, align 8, !tbaa !11
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4
  %2 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.strbuffer_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %value, align 8, !tbaa !12
  %4 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length1 = getelementptr inbounds %struct.strbuffer_t, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %length1, align 8, !tbaa !11
  %dec = add i64 %5, -1
  store i64 %dec, ptr %length1, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %dec
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !13
  store i8 %6, ptr %c, align 1, !tbaa !13
  %7 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %value2 = getelementptr inbounds %struct.strbuffer_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %value2, align 8, !tbaa !12
  %9 = load ptr, ptr %strbuff.addr, align 8, !tbaa !4
  %length3 = getelementptr inbounds %struct.strbuffer_t, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %length3, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 %10
  store i8 0, ptr %arrayidx4, align 1, !tbaa !13
  %11 = load i8, ptr %c, align 1, !tbaa !13
  store i8 %11, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4
  br label %return

if.else:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i8, ptr %retval, align 1
  ret i8 %12
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !5, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!10, !10, i64 0}
