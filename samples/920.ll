; ModuleID = 'samples/920.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/install/util/io/fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syl = type { i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.cilist = type { i32, i32, i32, ptr, i32 }

@f__pc = global i32 0, align 4
@f__revloc = global i32 0, align 4
@f__parenlvl = global i32 0, align 4
@f__syl = internal global [300 x %struct.syl] zeroinitializer, align 16
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"unknown code in do_fio: %d\0A%s\0A\00", align 1
@f__fmtbuf = external global ptr, align 8
@f__elist = external global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"do_fio\00", align 1
@f__doned = external global ptr, align 8
@f__cnt = global [10 x i32] zeroinitializer, align 16
@f__cp = global i32 0, align 4
@f__doend = external global ptr, align 8
@f__workdone = global i32 0, align 4
@f__doed = external global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@f__ret = global [10 x i32] zeroinitializer, align 16
@f__rp = global i32 0, align 4
@f__dorevert = external global ptr, align 8
@f__nonl = global i32 0, align 4
@f__cplus = external global i32, align 4
@f__scale = external global i32, align 4
@f__cblank = external global i32, align 4
@f__cursor = external global i64, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"format too complicated:\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"bad string\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pars_f(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 0, ptr @f__pc, align 4, !tbaa !8
  store i32 0, ptr @f__revloc, align 4, !tbaa !8
  store i32 0, ptr @f__parenlvl, align 4, !tbaa !8
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call ptr @f_s(ptr noundef %0, i32 noundef 0)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal ptr @f_s(ptr noundef %s, i32 noundef %curloc) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %curloc.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %curloc, ptr %curloc.addr, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr2, ptr %s.addr, align 8, !tbaa !4
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 40
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.end
  %5 = load i32, ptr @f__parenlvl, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @f__parenlvl, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %6 = load i32, ptr %curloc.addr, align 4, !tbaa !8
  store i32 %6, ptr @f__revloc, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %7 = load i32, ptr %curloc.addr, align 4, !tbaa !8
  %call = call i32 @op_gen(i32 noundef 1, i32 noundef %7, i32 noundef 0, i32 noundef 0)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call12 = call ptr @f_list(ptr noundef %8)
  store ptr %call12, ptr %s.addr, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end9
  store ptr null, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  br label %while.cond17

while.cond17:                                     ; preds = %while.body21, %if.end16
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %conv18 = sext i8 %10 to i32
  %cmp19 = icmp eq i32 %conv18, 32
  br i1 %cmp19, label %while.body21, label %while.end23

while.body21:                                     ; preds = %while.cond17
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr22 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr22, ptr %s.addr, align 8, !tbaa !4
  br label %while.cond17, !llvm.loop !13

while.end23:                                      ; preds = %while.cond17
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end23, %if.then15, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define i32 @do_fio(ptr noundef %number, ptr noundef %ptr, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %number, ptr %number.addr, align 8, !tbaa !4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load ptr, ptr %number.addr, align 8, !tbaa !4
  %2 = load i32, ptr %1, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %loop

loop:                                             ; preds = %sw.bb92, %sw.bb90, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %if.end79, %if.end74, %if.end58, %if.then54, %sw.bb43, %sw.bb38, %if.then13, %if.then6, %for.body
  %3 = load i32, ptr @f__pc, align 4, !tbaa !8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [300 x %struct.syl], ptr @f__syl, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8, !tbaa !4
  %op = getelementptr inbounds %struct.syl, ptr %arrayidx, i32 0, i32 0
  %4 = load i32, ptr %op, align 8, !tbaa !14
  %call = call i32 @type_f(i32 noundef %4)
  switch i32 %call, label %sw.default [
    i32 9, label %sw.bb
    i32 8, label %sw.bb9
    i32 6, label %sw.bb38
    i32 1, label %sw.bb43
    i32 3, label %sw.bb49
    i32 2, label %sw.bb62
    i32 16, label %sw.bb75
    i32 33, label %sw.bb81
    i32 17, label %sw.bb83
    i32 19, label %sw.bb83
    i32 18, label %sw.bb85
    i32 20, label %sw.bb87
    i32 21, label %sw.bb90
    i32 22, label %sw.bb92
  ]

sw.default:                                       ; preds = %loop
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %op1 = getelementptr inbounds %struct.syl, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %op1, align 8, !tbaa !14
  %8 = load ptr, ptr @f__fmtbuf, align 8, !tbaa !4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %7, ptr noundef %8)
  %9 = load ptr, ptr @f__elist, align 8, !tbaa !4
  %cierr = getelementptr inbounds %struct.cilist, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %cierr, align 8, !tbaa !16
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %call3 = call ptr @__errno_location() #5
  store i32 100, ptr %call3, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %sw.default
  call void @f__fatal(i32 noundef 100, ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 100, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb:                                            ; preds = %loop
  %11 = load ptr, ptr @f__doned, align 8, !tbaa !4
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %call4 = call i32 %11(ptr noundef %12)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb
  %13 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr @f__pc, align 4, !tbaa !8
  br label %loop

if.end7:                                          ; preds = %sw.bb
  %14 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr @f__pc, align 4, !tbaa !8
  br label %for.inc

sw.bb9:                                           ; preds = %loop
  %15 = load i32, ptr @f__cp, align 4, !tbaa !8
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], ptr @f__cnt, i64 0, i64 %idxprom10
  %16 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %cmp12 = icmp sle i32 %16, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.bb9
  %17 = load i32, ptr @f__cp, align 4, !tbaa !8
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr @f__cp, align 4, !tbaa !8
  %18 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc14 = add nsw i32 %18, 1
  store i32 %inc14, ptr @f__pc, align 4, !tbaa !8
  br label %loop

if.end15:                                         ; preds = %sw.bb9
  %19 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %cmp16 = icmp eq ptr %19, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %20 = load ptr, ptr @f__doend, align 8, !tbaa !4
  %call18 = call i32 %20()
  store i32 %call18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %21 = load i32, ptr @f__cp, align 4, !tbaa !8
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], ptr @f__cnt, i64 0, i64 %idxprom20
  %22 = load i32, ptr %arrayidx21, align 4, !tbaa !8
  %dec22 = add nsw i32 %22, -1
  store i32 %dec22, ptr %arrayidx21, align 4, !tbaa !8
  store i32 1, ptr @f__workdone, align 4, !tbaa !8
  %23 = load ptr, ptr @f__doed, align 8, !tbaa !4
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %25 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %26 = load i32, ptr %len.addr, align 4, !tbaa !8
  %call23 = call i32 %23(ptr noundef %24, ptr noundef %25, i32 noundef %26)
  store i32 %call23, ptr %n, align 4, !tbaa !8
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end19
  %27 = load ptr, ptr @f__elist, align 8, !tbaa !4
  %cierr26 = getelementptr inbounds %struct.cilist, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %cierr26, align 8, !tbaa !16
  %call27 = call ptr @__errno_location() #5
  %29 = load i32, ptr %call27, align 4, !tbaa !8
  %call28 = call i32 @err__fl(i32 noundef %28, i32 noundef %29, ptr noundef @.str.2)
  store i32 %call28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %cmp30 = icmp slt i32 %30, 0
  br i1 %cmp30, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end29
  %31 = load ptr, ptr @f__elist, align 8, !tbaa !4
  %ciend = getelementptr inbounds %struct.cilist, ptr %31, i32 0, i32 2
  %32 = load i32, ptr %ciend, align 8, !tbaa !18
  %tobool32 = icmp ne i32 %32, 0
  br i1 %tobool32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.then31
  %call34 = call ptr @__errno_location() #5
  store i32 -1, ptr %call34, align 4, !tbaa !8
  br label %if.end36

if.else35:                                        ; preds = %if.then31
  call void @f__fatal(i32 noundef -1, ptr noundef @.str.2)
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then33
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  br label %for.inc

sw.bb38:                                          ; preds = %loop
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.syl, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %p1, align 4, !tbaa !19
  %35 = load i32, ptr @f__cp, align 4, !tbaa !8
  %inc39 = add nsw i32 %35, 1
  store i32 %inc39, ptr @f__cp, align 4, !tbaa !8
  %idxprom40 = sext i32 %inc39 to i64
  %arrayidx41 = getelementptr inbounds [10 x i32], ptr @f__cnt, i64 0, i64 %idxprom40
  store i32 %34, ptr %arrayidx41, align 4, !tbaa !8
  %36 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc42 = add nsw i32 %36, 1
  store i32 %inc42, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb43:                                          ; preds = %loop
  %37 = load ptr, ptr %p, align 8, !tbaa !4
  %p144 = getelementptr inbounds %struct.syl, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %p144, align 4, !tbaa !19
  %39 = load i32, ptr @f__rp, align 4, !tbaa !8
  %inc45 = add nsw i32 %39, 1
  store i32 %inc45, ptr @f__rp, align 4, !tbaa !8
  %idxprom46 = sext i32 %inc45 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], ptr @f__ret, i64 0, i64 %idxprom46
  store i32 %38, ptr %arrayidx47, align 4, !tbaa !8
  %40 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc48 = add nsw i32 %40, 1
  store i32 %inc48, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb49:                                          ; preds = %loop
  %41 = load i32, ptr @f__cp, align 4, !tbaa !8
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds [10 x i32], ptr @f__cnt, i64 0, i64 %idxprom50
  %42 = load i32, ptr %arrayidx51, align 4, !tbaa !8
  %dec52 = add nsw i32 %42, -1
  store i32 %dec52, ptr %arrayidx51, align 4, !tbaa !8
  %cmp53 = icmp sle i32 %dec52, 0
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %sw.bb49
  %43 = load i32, ptr @f__cp, align 4, !tbaa !8
  %dec55 = add nsw i32 %43, -1
  store i32 %dec55, ptr @f__cp, align 4, !tbaa !8
  %44 = load i32, ptr @f__rp, align 4, !tbaa !8
  %dec56 = add nsw i32 %44, -1
  store i32 %dec56, ptr @f__rp, align 4, !tbaa !8
  %45 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc57 = add nsw i32 %45, 1
  store i32 %inc57, ptr @f__pc, align 4, !tbaa !8
  br label %loop

if.end58:                                         ; preds = %sw.bb49
  %46 = load i32, ptr @f__rp, align 4, !tbaa !8
  %dec59 = add nsw i32 %46, -1
  store i32 %dec59, ptr @f__rp, align 4, !tbaa !8
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds [10 x i32], ptr @f__ret, i64 0, i64 %idxprom60
  %47 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  %add = add nsw i32 1, %47
  store i32 %add, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb62:                                          ; preds = %loop
  store i32 0, ptr @f__cp, align 4, !tbaa !8
  store i32 0, ptr @f__rp, align 4, !tbaa !8
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  %p163 = getelementptr inbounds %struct.syl, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %p163, align 4, !tbaa !19
  store i32 %49, ptr @f__pc, align 4, !tbaa !8
  %50 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %cmp64 = icmp eq ptr %50, null
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %sw.bb62
  %51 = load ptr, ptr @f__doend, align 8, !tbaa !4
  %call66 = call i32 %51()
  store i32 %call66, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %sw.bb62
  %52 = load i32, ptr @f__workdone, align 4, !tbaa !8
  %tobool68 = icmp ne i32 %52, 0
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end67
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end67
  %53 = load ptr, ptr @f__dorevert, align 8, !tbaa !4
  %call71 = call i32 %53()
  store i32 %call71, ptr %n, align 4, !tbaa !8
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  %54 = load i32, ptr %n, align 4, !tbaa !8
  store i32 %54, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  br label %loop

sw.bb75:                                          ; preds = %loop
  %55 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %cmp76 = icmp eq ptr %55, null
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %sw.bb75
  %56 = load ptr, ptr @f__doend, align 8, !tbaa !4
  %call78 = call i32 %56()
  store i32 %call78, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end79:                                         ; preds = %sw.bb75
  %57 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc80 = add nsw i32 %57, 1
  store i32 %inc80, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb81:                                          ; preds = %loop
  store i32 1, ptr @f__nonl, align 4, !tbaa !8
  %58 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc82 = add nsw i32 %58, 1
  store i32 %inc82, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb83:                                          ; preds = %loop, %loop
  store i32 0, ptr @f__cplus, align 4, !tbaa !8
  %59 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc84 = add nsw i32 %59, 1
  store i32 %inc84, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb85:                                          ; preds = %loop
  store i32 1, ptr @f__cplus, align 4, !tbaa !8
  %60 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc86 = add nsw i32 %60, 1
  store i32 %inc86, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb87:                                          ; preds = %loop
  %61 = load ptr, ptr %p, align 8, !tbaa !4
  %p188 = getelementptr inbounds %struct.syl, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %p188, align 4, !tbaa !19
  store i32 %62, ptr @f__scale, align 4, !tbaa !8
  %63 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc89 = add nsw i32 %63, 1
  store i32 %inc89, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb90:                                          ; preds = %loop
  store i32 0, ptr @f__cblank, align 4, !tbaa !8
  %64 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc91 = add nsw i32 %64, 1
  store i32 %inc91, ptr @f__pc, align 4, !tbaa !8
  br label %loop

sw.bb92:                                          ; preds = %loop
  store i32 1, ptr @f__cblank, align 4, !tbaa !8
  %65 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc93 = add nsw i32 %65, 1
  store i32 %inc93, ptr @f__pc, align 4, !tbaa !8
  br label %loop

for.inc:                                          ; preds = %if.end37, %if.end7
  %66 = load i32, ptr %i, align 4, !tbaa !8
  %inc94 = add nsw i32 %66, 1
  store i32 %inc94, ptr %i, align 4, !tbaa !8
  %67 = load i32, ptr %len.addr, align 4, !tbaa !8
  %68 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, ptr %68, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr.addr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then77, %if.then73, %if.then69, %if.then65, %if.end36, %if.then25, %if.then17, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @type_f(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 6, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb4
    i32 11, label %sw.bb4
    i32 12, label %sw.bb4
    i32 15, label %sw.bb4
    i32 13, label %sw.bb4
    i32 14, label %sw.bb4
    i32 23, label %sw.bb5
    i32 7, label %sw.bb5
    i32 10, label %sw.bb5
    i32 30, label %sw.bb5
    i32 31, label %sw.bb5
    i32 32, label %sw.bb5
    i32 34, label %sw.bb5
    i32 29, label %sw.bb5
    i32 24, label %sw.bb5
    i32 25, label %sw.bb5
    i32 26, label %sw.bb5
    i32 27, label %sw.bb5
    i32 28, label %sw.bb5
    i32 35, label %sw.bb5
    i32 36, label %sw.bb5
  ]

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  br label %return

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 9, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %sw.default
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

declare void @f__fatal(i32 noundef, ptr noundef) #2

declare i32 @err__fl(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @en_fio() #0 {
entry:
  %one = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %one) #4
  store i32 1, ptr %one, align 4, !tbaa !8
  %call = call i32 @do_fio(ptr noundef %one, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr %one) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @fmt_bg() #0 {
entry:
  store i64 0, ptr @f__cursor, align 8, !tbaa !21
  store i32 0, ptr @f__pc, align 4, !tbaa !8
  store i32 0, ptr @f__rp, align 4, !tbaa !8
  store i32 0, ptr @f__cp, align 4, !tbaa !8
  store i32 0, ptr @f__workdone, align 4, !tbaa !8
  store i32 0, ptr @f__ret, align 16, !tbaa !8
  store i32 0, ptr @f__cnt, align 16, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @op_gen(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !8
  store i32 %b, ptr %b.addr, align 4, !tbaa !8
  store i32 %c, ptr %c.addr, align 4, !tbaa !8
  store i32 %d, ptr %d.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load i32, ptr @f__pc, align 4, !tbaa !8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [300 x %struct.syl], ptr @f__syl, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8, !tbaa !4
  %1 = load i32, ptr @f__pc, align 4, !tbaa !8
  %cmp = icmp sge i32 %1, 300
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.3)
  %3 = load ptr, ptr @f__fmtbuf, align 8, !tbaa !4
  call void @sig_die(ptr noundef %3, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %a.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %p, align 8, !tbaa !4
  %op = getelementptr inbounds %struct.syl, ptr %5, i32 0, i32 0
  store i32 %4, ptr %op, align 8, !tbaa !14
  %6 = load i32, ptr %b.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.syl, ptr %7, i32 0, i32 1
  store i32 %6, ptr %p1, align 4, !tbaa !19
  %8 = load i32, ptr %c.addr, align 4, !tbaa !8
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.syl, ptr %9, i32 0, i32 2
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %p2, i64 0, i64 0
  store i32 %8, ptr %arrayidx1, align 8, !tbaa !10
  %10 = load i32, ptr %d.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %p22 = getelementptr inbounds %struct.syl, ptr %11, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %p22, i64 0, i64 1
  store i32 %10, ptr %arrayidx3, align 4, !tbaa !10
  %12 = load i32, ptr @f__pc, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr @f__pc, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal ptr @f_list(ptr noundef %s) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %if.end32, %entry
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call ptr @i_tem(ptr noundef %5)
  store ptr %call, ptr %s.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body11, %if.end
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 32
  br i1 %cmp9, label %while.body11, label %while.end13

while.body11:                                     ; preds = %while.cond7
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr12, ptr %s.addr, align 8, !tbaa !4
  br label %while.cond7, !llvm.loop !24

while.end13:                                      ; preds = %while.cond7
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 44
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %while.end13
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr18, ptr %s.addr, align 8, !tbaa !4
  br label %if.end32

if.else:                                          ; preds = %while.end13
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv19, 41
  br i1 %cmp20, label %if.then22, label %if.end31

if.then22:                                        ; preds = %if.else
  %14 = load i32, ptr @f__parenlvl, align 4, !tbaa !8
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr @f__parenlvl, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then22
  %15 = load i32, ptr @f__revloc, align 4, !tbaa !8
  %call26 = call i32 @op_gen(i32 noundef 2, i32 noundef %15, i32 noundef 0, i32 noundef 0)
  %16 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr27, ptr %s.addr, align 8, !tbaa !4
  store ptr %incdec.ptr27, ptr %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.then22
  %call29 = call i32 @op_gen(i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %17 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr30 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr30, ptr %s.addr, align 8, !tbaa !4
  store ptr %incdec.ptr30, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then17
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end28, %if.then25, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare void @sig_die(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @i_tem(ptr noundef %s) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %n = alloca i32, align 4
  %curloc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %curloc) #4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @ne_d(ptr noundef %3, ptr noundef %t)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %t, align 8, !tbaa !4
  store ptr %4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call4 = call i32 @e_d(ptr noundef %5, ptr noundef %t)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %6 = load ptr, ptr %t, align 8, !tbaa !4
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call8 = call ptr @gt_num(ptr noundef %7, ptr noundef %n, i32 noundef 1)
  store ptr %call8, ptr %s.addr, align 8, !tbaa !4
  %8 = load i32, ptr %n, align 4, !tbaa !8
  %call9 = call i32 @op_gen(i32 noundef 6, i32 noundef %8, i32 noundef 0, i32 noundef 0)
  store i32 %call9, ptr %curloc, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %10 = load i32, ptr %curloc, align 4, !tbaa !8
  %call14 = call ptr @f_s(ptr noundef %9, i32 noundef %10)
  store ptr %call14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %curloc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #4
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal i32 @ne_d(ptr noundef %s, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %sign = alloca i32, align 4
  %sp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #4
  store i32 0, ptr %sign, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 58, label %sw.bb
    i32 36, label %sw.bb1
    i32 66, label %sw.bb3
    i32 98, label %sw.bb3
    i32 83, label %sw.bb11
    i32 115, label %sw.bb11
    i32 47, label %sw.bb38
    i32 45, label %sw.bb40
    i32 43, label %sw.bb41
    i32 48, label %sw.bb43
    i32 49, label %sw.bb43
    i32 50, label %sw.bb43
    i32 51, label %sw.bb43
    i32 52, label %sw.bb43
    i32 53, label %sw.bb43
    i32 54, label %sw.bb43
    i32 55, label %sw.bb43
    i32 56, label %sw.bb43
    i32 57, label %sw.bb43
    i32 2, label %sw.bb60
    i32 34, label %sw.bb60
    i32 39, label %sw.bb60
    i32 84, label %sw.bb70
    i32 116, label %sw.bb70
    i32 88, label %sw.bb104
    i32 120, label %sw.bb104
    i32 80, label %sw.bb106
    i32 112, label %sw.bb106
  ]

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call i32 @op_gen(i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 @op_gen(i32 noundef 33, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.bb3:                                           ; preds = %entry, %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  %3 = load i8, ptr %incdec.ptr, align 1, !tbaa !10
  %conv4 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv4, 122
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb3
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !10
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 90
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb3
  %call9 = call i32 @op_gen(i32 noundef 22, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call10 = call i32 @op_gen(i32 noundef 21, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog108

sw.bb11:                                          ; preds = %entry, %entry
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv12 = sext i8 %7 to i32
  %cmp13 = icmp eq i32 %conv12, 115
  br i1 %cmp13, label %if.then20, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %sw.bb11
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %add.ptr16, align 1, !tbaa !10
  %conv17 = sext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 83
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %lor.lhs.false15, %sw.bb11
  store i32 19, ptr %x, align 4, !tbaa !8
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr21 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr21, ptr %s.addr, align 8, !tbaa !4
  br label %if.end36

if.else22:                                        ; preds = %lor.lhs.false15
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr23 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %add.ptr23, align 1, !tbaa !10
  %conv24 = sext i8 %12 to i32
  %cmp25 = icmp eq i32 %conv24, 112
  br i1 %cmp25, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.else22
  %13 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr28 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %add.ptr28, align 1, !tbaa !10
  %conv29 = sext i8 %14 to i32
  %cmp30 = icmp eq i32 %conv29, 80
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %lor.lhs.false27, %if.else22
  store i32 18, ptr %x, align 4, !tbaa !8
  %15 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr33 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr33, ptr %s.addr, align 8, !tbaa !4
  br label %if.end35

if.else34:                                        ; preds = %lor.lhs.false27
  store i32 17, ptr %x, align 4, !tbaa !8
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then32
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then20
  %16 = load i32, ptr %x, align 4, !tbaa !8
  %call37 = call i32 @op_gen(i32 noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.bb38:                                          ; preds = %entry
  %call39 = call i32 @op_gen(i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.bb40:                                          ; preds = %entry
  store i32 1, ptr %sign, align 4, !tbaa !8
  br label %sw.bb41

sw.bb41:                                          ; preds = %entry, %sw.bb40
  %17 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr42 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr42, ptr %s.addr, align 8, !tbaa !4
  br label %sw.bb43

sw.bb43:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb41
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call44 = call ptr @gt_num(ptr noundef %18, ptr noundef %n, i32 noundef 0)
  store ptr %call44, ptr %s.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %call44, null
  br i1 %tobool, label %if.end46, label %if.then45

if.then45:                                        ; preds = %sw.bb43
  br label %bad

bad:                                              ; preds = %if.then100, %if.then45
  %19 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr null, ptr %19, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %sw.bb43
  %20 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %conv47 = sext i8 %21 to i32
  switch i32 %conv47, label %sw.default48 [
    i32 80, label %sw.bb49
    i32 112, label %sw.bb49
    i32 88, label %sw.bb54
    i32 120, label %sw.bb54
    i32 72, label %sw.bb56
    i32 104, label %sw.bb56
  ]

sw.default48:                                     ; preds = %if.end46
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb49:                                          ; preds = %if.end46, %if.end46
  %22 = load i32, ptr %sign, align 4, !tbaa !8
  %tobool50 = icmp ne i32 %22, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %sw.bb49
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %sub = sub nsw i32 0, %23
  store i32 %sub, ptr %n, align 4, !tbaa !8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %sw.bb49
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %call53 = call i32 @op_gen(i32 noundef 20, i32 noundef %24, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end46, %if.end46
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %call55 = call i32 @op_gen(i32 noundef 4, i32 noundef %25, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end46, %if.end46
  %26 = load i32, ptr %n, align 4, !tbaa !8
  %call57 = call i32 @op_gen(i32 noundef 12, i32 noundef %26, i32 noundef 0, i32 noundef 0)
  %idxprom = sext i32 %call57 to i64
  %arrayidx = getelementptr inbounds [300 x %struct.syl], ptr @f__syl, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %sp, align 8, !tbaa !4
  %27 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr58 = getelementptr inbounds i8, ptr %27, i64 1
  %28 = load ptr, ptr %sp, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.syl, ptr %28, i32 0, i32 2
  store ptr %add.ptr58, ptr %p2, align 8, !tbaa !10
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %30 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %29 to i64
  %add.ptr59 = getelementptr inbounds i8, ptr %30, i64 %idx.ext
  store ptr %add.ptr59, ptr %s.addr, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb56, %sw.bb54, %if.end52
  br label %sw.epilog108

sw.bb60:                                          ; preds = %entry, %entry, %entry
  %call61 = call i32 @op_gen(i32 noundef 11, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %idxprom62 = sext i32 %call61 to i64
  %arrayidx63 = getelementptr inbounds [300 x %struct.syl], ptr @f__syl, i64 0, i64 %idxprom62
  store ptr %arrayidx63, ptr %sp, align 8, !tbaa !4
  %31 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %sp, align 8, !tbaa !4
  %p264 = getelementptr inbounds %struct.syl, ptr %32, i32 0, i32 2
  store ptr %31, ptr %p264, align 8, !tbaa !10
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call65 = call ptr @ap_end(ptr noundef %33)
  %34 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %call65, ptr %34, align 8, !tbaa !4
  %cmp66 = icmp eq ptr %call65, null
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %sw.bb60
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %sw.bb60
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb70:                                          ; preds = %entry, %entry
  %35 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr71 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i8, ptr %add.ptr71, align 1, !tbaa !10
  %conv72 = sext i8 %36 to i32
  %cmp73 = icmp eq i32 %conv72, 108
  br i1 %cmp73, label %if.then80, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %sw.bb70
  %37 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr76 = getelementptr inbounds i8, ptr %37, i64 1
  %38 = load i8, ptr %add.ptr76, align 1, !tbaa !10
  %conv77 = sext i8 %38 to i32
  %cmp78 = icmp eq i32 %conv77, 76
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %lor.lhs.false75, %sw.bb70
  store i32 13, ptr %x, align 4, !tbaa !8
  %39 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr81 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr81, ptr %s.addr, align 8, !tbaa !4
  br label %if.end96

if.else82:                                        ; preds = %lor.lhs.false75
  %40 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr83 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %add.ptr83, align 1, !tbaa !10
  %conv84 = sext i8 %41 to i32
  %cmp85 = icmp eq i32 %conv84, 114
  br i1 %cmp85, label %if.then92, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.else82
  %42 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr88 = getelementptr inbounds i8, ptr %42, i64 1
  %43 = load i8, ptr %add.ptr88, align 1, !tbaa !10
  %conv89 = sext i8 %43 to i32
  %cmp90 = icmp eq i32 %conv89, 82
  br i1 %cmp90, label %if.then92, label %if.else94

if.then92:                                        ; preds = %lor.lhs.false87, %if.else82
  store i32 14, ptr %x, align 4, !tbaa !8
  %44 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr93 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr93, ptr %s.addr, align 8, !tbaa !4
  br label %if.end95

if.else94:                                        ; preds = %lor.lhs.false87
  store i32 15, ptr %x, align 4, !tbaa !8
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then92
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then80
  %45 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr97 = getelementptr inbounds i8, ptr %45, i64 1
  %call98 = call ptr @gt_num(ptr noundef %add.ptr97, ptr noundef %n, i32 noundef 0)
  store ptr %call98, ptr %s.addr, align 8, !tbaa !4
  %tobool99 = icmp ne ptr %call98, null
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end96
  br label %bad

if.end101:                                        ; preds = %if.end96
  %46 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr102 = getelementptr inbounds i8, ptr %46, i32 -1
  store ptr %incdec.ptr102, ptr %s.addr, align 8, !tbaa !4
  %47 = load i32, ptr %x, align 4, !tbaa !8
  %48 = load i32, ptr %n, align 4, !tbaa !8
  %call103 = call i32 @op_gen(i32 noundef %47, i32 noundef %48, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.bb104:                                         ; preds = %entry, %entry
  %call105 = call i32 @op_gen(i32 noundef 4, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.bb106:                                         ; preds = %entry, %entry
  %call107 = call i32 @op_gen(i32 noundef 20, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %sw.bb106, %sw.bb104, %if.end101, %sw.epilog, %sw.bb38, %if.end36, %if.end, %sw.bb1, %sw.bb
  %49 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr109 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr109, ptr %s.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %50, ptr %51, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog108, %if.end69, %if.then68, %sw.default48, %bad, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @e_d(ptr noundef %s, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %im = alloca i32, align 4
  %n = alloca i32, align 4
  %w = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %found = alloca i32, align 4
  %x = alloca i32, align 4
  %sv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %im) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #4
  store i32 0, ptr %found, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  store i32 0, ptr %x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sv) #4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  store ptr %0, ptr %sv, align 8, !tbaa !4
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call ptr @gt_num(ptr noundef %1, ptr noundef %n, i32 noundef 1)
  store ptr %call, ptr %s.addr, align 8, !tbaa !4
  %2 = load i32, ptr %n, align 4, !tbaa !8
  %call1 = call i32 @op_gen(i32 noundef 6, i32 noundef %2, i32 noundef 0, i32 noundef 0)
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb
    i32 71, label %sw.bb2
    i32 103, label %sw.bb2
    i32 79, label %sw.bb37
    i32 111, label %sw.bb37
    i32 90, label %sw.bb38
    i32 122, label %sw.bb38
    i32 76, label %sw.bb39
    i32 108, label %sw.bb39
    i32 65, label %sw.bb49
    i32 97, label %sw.bb49
    i32 70, label %sw.bb70
    i32 102, label %sw.bb70
    i32 68, label %sw.bb91
    i32 100, label %sw.bb91
    i32 73, label %sw.bb112
    i32 105, label %sw.bb112
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, ptr %x, align 4, !tbaa !8
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %entry, %sw.bb
  store i32 1, ptr %found, align 4, !tbaa !8
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call3 = call ptr @gt_num(ptr noundef %5, ptr noundef %w, i32 noundef 0)
  store ptr %call3, ptr %s.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %call3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb2
  br label %bad

bad:                                              ; preds = %if.then130, %if.then115, %if.then107, %if.then94, %if.then86, %if.then73, %if.then42, %if.then30, %if.then13, %if.then
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr null, ptr %6, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %7 = load i32, ptr %w, align 4, !tbaa !8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %sw.epilog

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 46
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 1
  %call11 = call ptr @gt_num(ptr noundef %add.ptr, ptr noundef %d, i32 noundef 0)
  store ptr %call11, ptr %s.addr, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %call11, null
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then10
  br label %bad

if.end14:                                         ; preds = %if.then10
  br label %if.end15

if.else:                                          ; preds = %if.end6
  store i32 0, ptr %d, align 4, !tbaa !8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end14
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp ne i32 %conv16, 69
  br i1 %cmp17, label %land.lhs.true, label %if.else26

land.lhs.true:                                    ; preds = %if.end15
  %13 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %14 = load i8, ptr %13, align 1, !tbaa !10
  %conv19 = sext i8 %14 to i32
  %cmp20 = icmp ne i32 %conv19, 101
  br i1 %cmp20, label %if.then22, label %if.else26

if.then22:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %x, align 4, !tbaa !8
  %cmp23 = icmp eq i32 %15, 1
  %16 = zext i1 %cmp23 to i64
  %cond = select i1 %cmp23, i32 24, i32 27
  %17 = load i32, ptr %w, align 4, !tbaa !8
  %18 = load i32, ptr %d, align 4, !tbaa !8
  %call25 = call i32 @op_gen(i32 noundef %cond, i32 noundef %17, i32 noundef %18, i32 noundef 0)
  br label %if.end36

if.else26:                                        ; preds = %land.lhs.true, %if.end15
  %19 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr27 = getelementptr inbounds i8, ptr %19, i64 1
  %call28 = call ptr @gt_num(ptr noundef %add.ptr27, ptr noundef %e, i32 noundef 0)
  store ptr %call28, ptr %s.addr, align 8, !tbaa !4
  %tobool29 = icmp ne ptr %call28, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.else26
  br label %bad

if.end31:                                         ; preds = %if.else26
  %20 = load i32, ptr %x, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %20, 1
  %21 = zext i1 %cmp32 to i64
  %cond34 = select i1 %cmp32, i32 25, i32 28
  %22 = load i32, ptr %w, align 4, !tbaa !8
  %23 = load i32, ptr %d, align 4, !tbaa !8
  %24 = load i32, ptr %e, align 4, !tbaa !8
  %call35 = call i32 @op_gen(i32 noundef %cond34, i32 noundef %22, i32 noundef %23, i32 noundef %24)
  br label %if.end36

if.end36:                                         ; preds = %if.end31, %if.then22
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry, %entry
  store i32 32, ptr %i, align 4, !tbaa !8
  store i32 34, ptr %im, align 4, !tbaa !8
  br label %finish_I

sw.bb38:                                          ; preds = %entry, %entry
  store i32 35, ptr %i, align 4, !tbaa !8
  store i32 36, ptr %im, align 4, !tbaa !8
  br label %finish_I

sw.bb39:                                          ; preds = %entry, %entry
  store i32 1, ptr %found, align 4, !tbaa !8
  %25 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call40 = call ptr @gt_num(ptr noundef %25, ptr noundef %w, i32 noundef 0)
  store ptr %call40, ptr %s.addr, align 8, !tbaa !4
  %tobool41 = icmp ne ptr %call40, null
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %sw.bb39
  br label %bad

if.end43:                                         ; preds = %sw.bb39
  %26 = load i32, ptr %w, align 4, !tbaa !8
  %cmp44 = icmp eq i32 %26, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  br label %sw.epilog

if.end47:                                         ; preds = %if.end43
  %27 = load i32, ptr %w, align 4, !tbaa !8
  %call48 = call i32 @op_gen(i32 noundef 29, i32 noundef %27, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry, %entry
  store i32 1, ptr %found, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb49
  %28 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %conv50 = sext i8 %29 to i32
  %cmp51 = icmp eq i32 %conv50, 32
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr53 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr53, ptr %s.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %31 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %32 = load i8, ptr %31, align 1, !tbaa !10
  %conv54 = sext i8 %32 to i32
  %cmp55 = icmp sge i32 %conv54, 48
  br i1 %cmp55, label %land.lhs.true57, label %if.end68

land.lhs.true57:                                  ; preds = %while.end
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %conv58 = sext i8 %34 to i32
  %cmp59 = icmp sle i32 %conv58, 57
  br i1 %cmp59, label %if.then61, label %if.end68

if.then61:                                        ; preds = %land.lhs.true57
  %35 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call62 = call ptr @gt_num(ptr noundef %35, ptr noundef %w, i32 noundef 1)
  store ptr %call62, ptr %s.addr, align 8, !tbaa !4
  %36 = load i32, ptr %w, align 4, !tbaa !8
  %cmp63 = icmp eq i32 %36, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then61
  br label %sw.epilog

if.end66:                                         ; preds = %if.then61
  %37 = load i32, ptr %w, align 4, !tbaa !8
  %call67 = call i32 @op_gen(i32 noundef 31, i32 noundef %37, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

if.end68:                                         ; preds = %land.lhs.true57, %while.end
  %call69 = call i32 @op_gen(i32 noundef 30, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry, %entry
  %38 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call71 = call ptr @gt_num(ptr noundef %38, ptr noundef %w, i32 noundef 0)
  store ptr %call71, ptr %s.addr, align 8, !tbaa !4
  %tobool72 = icmp ne ptr %call71, null
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %sw.bb70
  br label %bad

if.end74:                                         ; preds = %sw.bb70
  store i32 1, ptr %found, align 4, !tbaa !8
  %39 = load i32, ptr %w, align 4, !tbaa !8
  %cmp75 = icmp eq i32 %39, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  br label %sw.epilog

if.end78:                                         ; preds = %if.end74
  %40 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %41 = load i8, ptr %40, align 1, !tbaa !10
  %conv79 = sext i8 %41 to i32
  %cmp80 = icmp eq i32 %conv79, 46
  br i1 %cmp80, label %if.then82, label %if.else88

if.then82:                                        ; preds = %if.end78
  %42 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr83 = getelementptr inbounds i8, ptr %42, i64 1
  %call84 = call ptr @gt_num(ptr noundef %add.ptr83, ptr noundef %d, i32 noundef 0)
  store ptr %call84, ptr %s.addr, align 8, !tbaa !4
  %tobool85 = icmp ne ptr %call84, null
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.then82
  br label %bad

if.end87:                                         ; preds = %if.then82
  br label %if.end89

if.else88:                                        ; preds = %if.end78
  store i32 0, ptr %d, align 4, !tbaa !8
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.end87
  %43 = load i32, ptr %w, align 4, !tbaa !8
  %44 = load i32, ptr %d, align 4, !tbaa !8
  %call90 = call i32 @op_gen(i32 noundef 23, i32 noundef %43, i32 noundef %44, i32 noundef 0)
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry, %entry
  store i32 1, ptr %found, align 4, !tbaa !8
  %45 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call92 = call ptr @gt_num(ptr noundef %45, ptr noundef %w, i32 noundef 0)
  store ptr %call92, ptr %s.addr, align 8, !tbaa !4
  %tobool93 = icmp ne ptr %call92, null
  br i1 %tobool93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %sw.bb91
  br label %bad

if.end95:                                         ; preds = %sw.bb91
  %46 = load i32, ptr %w, align 4, !tbaa !8
  %cmp96 = icmp eq i32 %46, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end95
  br label %sw.epilog

if.end99:                                         ; preds = %if.end95
  %47 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %48 = load i8, ptr %47, align 1, !tbaa !10
  %conv100 = sext i8 %48 to i32
  %cmp101 = icmp eq i32 %conv100, 46
  br i1 %cmp101, label %if.then103, label %if.else109

if.then103:                                       ; preds = %if.end99
  %49 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr104 = getelementptr inbounds i8, ptr %49, i64 1
  %call105 = call ptr @gt_num(ptr noundef %add.ptr104, ptr noundef %d, i32 noundef 0)
  store ptr %call105, ptr %s.addr, align 8, !tbaa !4
  %tobool106 = icmp ne ptr %call105, null
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.then103
  br label %bad

if.end108:                                        ; preds = %if.then103
  br label %if.end110

if.else109:                                       ; preds = %if.end99
  store i32 0, ptr %d, align 4, !tbaa !8
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.end108
  %50 = load i32, ptr %w, align 4, !tbaa !8
  %51 = load i32, ptr %d, align 4, !tbaa !8
  %call111 = call i32 @op_gen(i32 noundef 26, i32 noundef %50, i32 noundef %51, i32 noundef 0)
  br label %sw.epilog

sw.bb112:                                         ; preds = %entry, %entry
  store i32 7, ptr %i, align 4, !tbaa !8
  store i32 10, ptr %im, align 4, !tbaa !8
  br label %finish_I

finish_I:                                         ; preds = %sw.bb112, %sw.bb38, %sw.bb37
  %52 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call113 = call ptr @gt_num(ptr noundef %52, ptr noundef %w, i32 noundef 0)
  store ptr %call113, ptr %s.addr, align 8, !tbaa !4
  %tobool114 = icmp ne ptr %call113, null
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %finish_I
  br label %bad

if.end116:                                        ; preds = %finish_I
  store i32 1, ptr %found, align 4, !tbaa !8
  %53 = load i32, ptr %w, align 4, !tbaa !8
  %cmp117 = icmp eq i32 %53, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  br label %sw.epilog

if.end120:                                        ; preds = %if.end116
  %54 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %55 = load i8, ptr %54, align 1, !tbaa !10
  %conv121 = sext i8 %55 to i32
  %cmp122 = icmp ne i32 %conv121, 46
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end120
  %56 = load i32, ptr %i, align 4, !tbaa !8
  %57 = load i32, ptr %w, align 4, !tbaa !8
  %call125 = call i32 @op_gen(i32 noundef %56, i32 noundef %57, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog

if.end126:                                        ; preds = %if.end120
  %58 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %add.ptr127 = getelementptr inbounds i8, ptr %58, i64 1
  %call128 = call ptr @gt_num(ptr noundef %add.ptr127, ptr noundef %d, i32 noundef 0)
  store ptr %call128, ptr %s.addr, align 8, !tbaa !4
  %tobool129 = icmp ne ptr %call128, null
  br i1 %tobool129, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.end126
  br label %bad

if.end131:                                        ; preds = %if.end126
  %59 = load i32, ptr %im, align 4, !tbaa !8
  %60 = load i32, ptr %w, align 4, !tbaa !8
  %61 = load i32, ptr %d, align 4, !tbaa !8
  %call132 = call i32 @op_gen(i32 noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end131, %if.then124, %if.then119, %if.end110, %if.then98, %if.end89, %if.then77, %if.end68, %if.end66, %if.then65, %if.end47, %if.then46, %if.end36, %if.then5, %sw.default
  %62 = load i32, ptr %found, align 4, !tbaa !8
  %cmp133 = icmp eq i32 %62, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %sw.epilog
  %63 = load i32, ptr @f__pc, align 4, !tbaa !8
  %dec = add nsw i32 %63, -1
  store i32 %dec, ptr @f__pc, align 4, !tbaa !8
  %64 = load ptr, ptr %sv, align 8, !tbaa !4
  %65 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %64, ptr %65, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end136:                                        ; preds = %sw.epilog
  %66 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %66, ptr %67, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.then135, %bad
  call void @llvm.lifetime.end.p0(i64 8, ptr %sv) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %im) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_num(ptr noundef %s, ptr noundef %n, i32 noundef %n1) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %f__cnt = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  store i32 0, ptr %m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %f__cnt) #4
  store i32 0, ptr %f__cnt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  store i8 %1, ptr %c, align 1, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, ptr %c, align 1, !tbaa !10
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  br label %for.inc

if.end:                                           ; preds = %for.cond
  %4 = load i8, ptr %c, align 1, !tbaa !10
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp sgt i32 %conv2, 57
  br i1 %cmp3, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8, ptr %c, align 1, !tbaa !10
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp slt i32 %conv5, 48
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load i32, ptr %m, align 4, !tbaa !8
  %mul = mul nsw i32 10, %6
  %7 = load i8, ptr %c, align 1, !tbaa !10
  %conv10 = sext i8 %7 to i32
  %add = add nsw i32 %mul, %conv10
  %sub = sub nsw i32 %add, 48
  store i32 %sub, ptr %m, align 4, !tbaa !8
  %8 = load i32, ptr %f__cnt, align 4, !tbaa !8
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %f__cnt, align 4, !tbaa !8
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr11, ptr %s.addr, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %if.then
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !10
  store i8 %11, ptr %c, align 1, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %if.then8
  %12 = load i32, ptr %f__cnt, align 4, !tbaa !8
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.end
  %13 = load i32, ptr %n1.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then14
  store ptr null, ptr %s.addr, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then14
  %14 = load i32, ptr %n1.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %n.addr, align 8, !tbaa !4
  store i32 %14, ptr %15, align 4, !tbaa !8
  br label %if.end17

if.else:                                          ; preds = %for.end
  %16 = load i32, ptr %m, align 4, !tbaa !8
  %17 = load ptr, ptr %n.addr, align 8, !tbaa !4
  store i32 %16, ptr %17, align 4, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %f__cnt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal ptr @ap_end(ptr noundef %s) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %quote = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %quote) #4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  store i8 %1, ptr %quote, align 1, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !10
  %conv = sext i8 %5 to i32
  %6 = load i8, ptr %quote, align 1, !tbaa !10
  %conv1 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr3, ptr %s.addr, align 8, !tbaa !4
  %8 = load i8, ptr %incdec.ptr3, align 1, !tbaa !10
  %conv4 = sext i8 %8 to i32
  %9 = load i8, ptr %quote, align 1, !tbaa !10
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %if.then
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr10, ptr %s.addr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr @f__elist, align 8, !tbaa !4
  %cierr = getelementptr inbounds %struct.cilist, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %cierr, align 8, !tbaa !16
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %call = call ptr @__errno_location() #5
  store i32 100, ptr %call, align 4, !tbaa !8
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @f__fatal(i32 noundef 100, ptr noundef @.str.4)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then8
  call void @llvm.lifetime.end.p0(i64 1, ptr %quote) #4
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(none) }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !9, i64 0}
!15 = !{!"syl", !9, i64 0, !9, i64 4, !6, i64 8}
!16 = !{!17, !9, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 16, !9, i64 24}
!18 = !{!17, !9, i64 8}
!19 = !{!15, !9, i64 4}
!20 = distinct !{!20, !12}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
