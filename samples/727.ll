; ModuleID = 'samples/727.bc'
source_filename = "../scipy/sparse/linalg/_dsolve/SuperLU/SRC/smach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%s at line %d in file %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Not implemented.\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"../scipy/sparse/linalg/_dsolve/SuperLU/SRC/smach.c\00", align 1

; Function Attrs: nounwind uwtable
define float @smach(ptr noundef %cmach) #0 {
entry:
  %cmach.addr = alloca ptr, align 8
  %sfmin = alloca float, align 4
  %small = alloca float, align 4
  %rmach = alloca float, align 4
  %msg = alloca [256 x i8], align 16
  store ptr %cmach, ptr %cmach.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sfmin) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %small) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %rmach) #6
  store float 0.000000e+00, ptr %rmach, align 4, !tbaa !8
  %0 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str, i64 noundef 1) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float 0x3E70000000000000, ptr %rmach, align 4, !tbaa !8
  br label %if.end60

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.1, i64 noundef 1) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  store float 0x3810000000000000, ptr %sfmin, align 4, !tbaa !8
  store float 0x37F0000000000000, ptr %small, align 4, !tbaa !8
  %2 = load float, ptr %small, align 4, !tbaa !8
  %3 = load float, ptr %sfmin, align 4, !tbaa !8
  %cmp4 = fcmp oge float %2, %3
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %4 = load float, ptr %small, align 4, !tbaa !8
  %conv = fpext float %4 to double
  %mul = fmul double %conv, 0x3FF0000010000000
  %conv6 = fptrunc double %mul to float
  store float %conv6, ptr %sfmin, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %5 = load float, ptr %sfmin, align 4, !tbaa !8
  store float %5, ptr %rmach, align 4, !tbaa !8
  br label %if.end59

if.else7:                                         ; preds = %if.else
  %6 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call8 = call i32 @strncmp(ptr noundef %6, ptr noundef @.str.2, i64 noundef 1) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else7
  store float 2.000000e+00, ptr %rmach, align 4, !tbaa !8
  br label %if.end58

if.else12:                                        ; preds = %if.else7
  %7 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call13 = call i32 @strncmp(ptr noundef %7, ptr noundef @.str.3, i64 noundef 1) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else12
  store float 0x3E80000000000000, ptr %rmach, align 4, !tbaa !8
  br label %if.end57

if.else17:                                        ; preds = %if.else12
  %8 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call18 = call i32 @strncmp(ptr noundef %8, ptr noundef @.str.4, i64 noundef 1) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else17
  store float 2.400000e+01, ptr %rmach, align 4, !tbaa !8
  br label %if.end56

if.else22:                                        ; preds = %if.else17
  %9 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call23 = call i32 @strncmp(ptr noundef %9, ptr noundef @.str.5, i64 noundef 1) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else22
  %10 = call i32 @llvm.get.rounding()
  %conv27 = sitofp i32 %10 to float
  store float %conv27, ptr %rmach, align 4, !tbaa !8
  br label %if.end55

if.else28:                                        ; preds = %if.else22
  %11 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call29 = call i32 @strncmp(ptr noundef %11, ptr noundef @.str.6, i64 noundef 1) #7
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  store float -1.250000e+02, ptr %rmach, align 4, !tbaa !8
  br label %if.end54

if.else33:                                        ; preds = %if.else28
  %12 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call34 = call i32 @strncmp(ptr noundef %12, ptr noundef @.str.7, i64 noundef 1) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else33
  store float 0x3810000000000000, ptr %rmach, align 4, !tbaa !8
  br label %if.end53

if.else38:                                        ; preds = %if.else33
  %13 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call39 = call i32 @strncmp(ptr noundef %13, ptr noundef @.str.8, i64 noundef 1) #7
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else38
  store float 1.280000e+02, ptr %rmach, align 4, !tbaa !8
  br label %if.end52

if.else43:                                        ; preds = %if.else38
  %14 = load ptr, ptr %cmach.addr, align 8, !tbaa !4
  %call44 = call i32 @strncmp(ptr noundef %14, ptr noundef @.str.9, i64 noundef 1) #7
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else43
  store float 0x47EFFFFFE0000000, ptr %rmach, align 4, !tbaa !8
  br label %if.end51

if.else48:                                        ; preds = %if.else43
  call void @llvm.lifetime.start.p0(i64 256, ptr %msg) #6
  %arraydecay = getelementptr inbounds [256 x i8], ptr %msg, i64 0, i64 0
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 92, ptr noundef @.str.12) #6
  %arraydecay50 = getelementptr inbounds [256 x i8], ptr %msg, i64 0, i64 0
  call void @superlu_python_module_abort(ptr noundef %arraydecay50)
  call void @llvm.lifetime.end.p0(i64 256, ptr %msg) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then42
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then37
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then32
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then26
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then21
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then16
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then11
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then
  %15 = load float, ptr %rmach, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rmach) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %small) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sfmin) #6
  ret float %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare i32 @llvm.get.rounding() #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

declare void @superlu_python_module_abort(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
