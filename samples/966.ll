; ModuleID = 'samples/966.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5Ounknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5O_msg_class_t = type { i32, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.H5FL_reg_head_t = type { i8, i32, i32, ptr, i64, ptr }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@H5O_MSG_UNKNOWN = constant [1 x %struct.H5O_msg_class_t] [%struct.H5O_msg_class_t { i32 25, ptr @.str, i64 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @H5O__unknown_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"H5O_unknown_t\00", align 1
@H5_H5O_unknown_t_reg_free_list = global %struct.H5FL_reg_head_t { i8 0, i32 0, i32 0, ptr @.str.1, i64 4, ptr null }, align 8
@H5O__unknown_free.func_check = internal global i8 0, align 1
@__func__.H5O__unknown_free = private unnamed_addr constant [18 x i8] c"H5O__unknown_free\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in H5private.h (this is usually due to an incorrect number of underscores)\00", align 1
@.str.3 = private unnamed_addr constant [1089 x i8] c"(((((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISupper)) && '_' == __func__[2] && '_' == __func__[3] && ((*__ctype_b_loc ())[(int) (((int)(__func__[4])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISupper)) && '_' == __func__[3] && '_' == __func__[4] && ((*__ctype_b_loc ())[(int) (((int)(__func__[5])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISupper)) && '_' == __func__[4] && '_' == __func__[5] && ((*__ctype_b_loc ())[(int) (((int)(__func__[6])))] & (unsigned short int) _ISlower))) && \22Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in \22 \22H5private.h (this is usually due to an incorrect number of underscores)\22\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"../spack-src/externals/cgns/hdf5/H5Ounknown.c\00", align 1
@__PRETTY_FUNCTION__.H5O__unknown_free = private unnamed_addr constant [33 x i8] c"herr_t H5O__unknown_free(void *)\00", align 1
@H5O_init_g = external global i8, align 1
@H5_libterm_g = external global i8, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @H5O__unknown_free(ptr noundef %mesg) #0 {
entry:
  %mesg.addr = alloca ptr, align 8
  store ptr %mesg, ptr %mesg.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5O__unknown_free.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #4
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #4
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #4
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 4), align 1, !tbaa !12
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !13
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #4
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 2), align 1, !tbaa !12
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !13
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #4
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 2), align 1, !tbaa !12
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !13
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #4
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 5), align 1, !tbaa !12
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !13
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #4
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 3), align 1, !tbaa !12
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #4
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 5), align 1, !tbaa !12
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #4
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5O__unknown_free, i64 0, i64 6), align 1, !tbaa !12
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !13
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.4, i32 noundef 77, ptr noundef @__PRETTY_FUNCTION__.H5O__unknown_free) #5
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5O__unknown_free.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end83, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %mesg.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.4, i32 noundef 79, ptr noundef @__PRETTY_FUNCTION__.H5O__unknown_free) #5
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %mesg.addr, align 8, !tbaa !4
  %call82 = call ptr @H5FL_reg_free(ptr noundef @H5_H5O_unknown_t_reg_free_list, ptr noundef %35)
  store ptr %call82, ptr %mesg.addr, align 8, !tbaa !4
  br label %if.end83

if.end83:                                         ; preds = %cond.end81, %lor.lhs.false75
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { noreturn nounwind }

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
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
