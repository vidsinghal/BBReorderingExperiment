; ModuleID = 'samples/754.bc'
source_filename = "/local-ssd/jansson-6ysjm5zf4xkytnr237xl5srxz3lqeclu-build/aidengro/spack-stage-jansson-2.14-6ysjm5zf4xkytnr237xl5srxz3lqeclu/spack-src/src/error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_error_t = type { i32, i32, i32, [80 x i8], [160 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define void @jsonp_error_init(ptr noundef %error, ptr noundef %source) #0 {
entry:
  %error.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  store ptr %source, ptr %source.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %text = getelementptr inbounds %struct.json_error_t, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr inbounds [160 x i8], ptr %text, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 4, !tbaa !8
  %2 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %line = getelementptr inbounds %struct.json_error_t, ptr %2, i32 0, i32 0
  store i32 -1, ptr %line, align 4, !tbaa !9
  %3 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %column = getelementptr inbounds %struct.json_error_t, ptr %3, i32 0, i32 1
  store i32 -1, ptr %column, align 4, !tbaa !12
  %4 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %position = getelementptr inbounds %struct.json_error_t, ptr %4, i32 0, i32 2
  store i32 0, ptr %position, align 4, !tbaa !13
  %5 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %source.addr, align 8, !tbaa !4
  call void @jsonp_error_set_source(ptr noundef %6, ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %source3 = getelementptr inbounds %struct.json_error_t, ptr %8, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [80 x i8], ptr %source3, i64 0, i64 0
  store i8 0, ptr %arrayidx4, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @jsonp_error_set_source(ptr noundef %error, ptr noundef %source) #0 {
entry:
  %error.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %extra = alloca i64, align 8
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  store ptr %source, ptr %source.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #6
  %0 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %2) #7
  store i64 %call, ptr %length, align 8, !tbaa !14
  %3 = load i64, ptr %length, align 8, !tbaa !14
  %cmp = icmp ult i64 %3, 80
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %source3 = getelementptr inbounds %struct.json_error_t, ptr %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [80 x i8], ptr %source3, i64 0, i64 0
  %5 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %6 = load i64, ptr %length, align 8, !tbaa !14
  %add = add i64 %6, 1
  %call4 = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %5, i64 noundef %add) #6
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra) #6
  %7 = load i64, ptr %length, align 8, !tbaa !14
  %sub = sub i64 %7, 80
  %add5 = add i64 %sub, 4
  store i64 %add5, ptr %extra, align 8, !tbaa !14
  %8 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %source6 = getelementptr inbounds %struct.json_error_t, ptr %8, i32 0, i32 3
  %arraydecay7 = getelementptr inbounds [80 x i8], ptr %source6, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay7, ptr align 1 @.str, i64 3, i1 false)
  %9 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %source8 = getelementptr inbounds %struct.json_error_t, ptr %9, i32 0, i32 3
  %arraydecay9 = getelementptr inbounds [80 x i8], ptr %source8, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay9, i64 3
  %10 = load ptr, ptr %source.addr, align 8, !tbaa !4
  %11 = load i64, ptr %extra, align 8, !tbaa !14
  %add.ptr10 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i64, ptr %length, align 8, !tbaa !14
  %13 = load i64, ptr %extra, align 8, !tbaa !14
  %sub11 = sub i64 %12, %13
  %add12 = add i64 %sub11, 1
  %call13 = call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %add.ptr10, i64 noundef %add12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @jsonp_error_set(ptr noundef %error, i32 noundef %line, i32 noundef %column, i64 noundef %position, i32 noundef %code, ptr noundef %msg, ...) #0 {
entry:
  %error.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %position.addr = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  store i32 %line, ptr %line.addr, align 4, !tbaa !16
  store i32 %column, ptr %column.addr, align 4, !tbaa !16
  store i64 %position, ptr %position.addr, align 8, !tbaa !14
  store i32 %code, ptr %code.addr, align 4, !tbaa !8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #6
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %1 = load i32, ptr %line.addr, align 4, !tbaa !16
  %2 = load i32, ptr %column.addr, align 4, !tbaa !16
  %3 = load i64, ptr %position.addr, align 8, !tbaa !14
  %4 = load i32, ptr %code.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @jsonp_error_vset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @jsonp_error_vset(ptr noundef %error, i32 noundef %line, i32 noundef %column, i64 noundef %position, i32 noundef %code, ptr noundef %msg, ptr noundef %ap) #0 {
entry:
  %error.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %position.addr = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  store i32 %line, ptr %line.addr, align 4, !tbaa !16
  store i32 %column, ptr %column.addr, align 4, !tbaa !16
  store i64 %position, ptr %position.addr, align 8, !tbaa !14
  store i32 %code, ptr %code.addr, align 4, !tbaa !8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %text = getelementptr inbounds %struct.json_error_t, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr inbounds [160 x i8], ptr %text, i64 0, i64 0
  %2 = load i8, ptr %arrayidx, align 4, !tbaa !8
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %line.addr, align 4, !tbaa !16
  %4 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %line4 = getelementptr inbounds %struct.json_error_t, ptr %4, i32 0, i32 0
  store i32 %3, ptr %line4, align 4, !tbaa !9
  %5 = load i32, ptr %column.addr, align 4, !tbaa !16
  %6 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %column5 = getelementptr inbounds %struct.json_error_t, ptr %6, i32 0, i32 1
  store i32 %5, ptr %column5, align 4, !tbaa !12
  %7 = load i64, ptr %position.addr, align 8, !tbaa !14
  %conv6 = trunc i64 %7 to i32
  %8 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %position7 = getelementptr inbounds %struct.json_error_t, ptr %8, i32 0, i32 2
  store i32 %conv6, ptr %position7, align 4, !tbaa !13
  %9 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %text8 = getelementptr inbounds %struct.json_error_t, ptr %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [160 x i8], ptr %text8, i64 0, i64 0
  %10 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %call = call i32 @vsnprintf(ptr noundef %arraydecay, i64 noundef 159, ptr noundef %10, ptr noundef %11) #6
  %12 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %text9 = getelementptr inbounds %struct.json_error_t, ptr %12, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [160 x i8], ptr %text9, i64 0, i64 158
  store i8 0, ptr %arrayidx10, align 2, !tbaa !8
  %13 = load i32, ptr %code.addr, align 4, !tbaa !8
  %conv11 = trunc i32 %13 to i8
  %14 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %text12 = getelementptr inbounds %struct.json_error_t, ptr %14, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [160 x i8], ptr %text12, i64 0, i64 159
  store i8 %conv11, ptr %arrayidx13, align 1, !tbaa !8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"json_error_t", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 12, !6, i64 92}
!11 = !{!"int", !6, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!11, !11, i64 0}
