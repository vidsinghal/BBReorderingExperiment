; ModuleID = 'samples/949.bc'
source_filename = "../Source/klu_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klu_l_common_struct = type { double, double, double, double, double, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, double, double, double, double, double, i64, i64 }

; Function Attrs: nounwind uwtable
define i64 @klu_l_add_size_t(i64 noundef %a, i64 noundef %b, ptr noundef %ok) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %ok.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ok, ptr %ok.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %1 = load i64, ptr %0, align 8, !tbaa !4
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !4
  %3 = load i64, ptr %b.addr, align 8, !tbaa !4
  %add = add i64 %2, %3
  %4 = load i64, ptr %a.addr, align 8, !tbaa !4
  %5 = load i64, ptr %b.addr, align 8, !tbaa !4
  %cmp = icmp ugt i64 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %6 = load i64, ptr %a.addr, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %7 = load i64, ptr %b.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ]
  %cmp1 = icmp uge i64 %add, %cond
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1, %cond.end ]
  %land.ext = zext i1 %8 to i32
  %conv = sext i32 %land.ext to i64
  %9 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  store i64 %conv, ptr %9, align 8, !tbaa !4
  %10 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %11 = load i64, ptr %10, align 8, !tbaa !4
  %tobool2 = icmp ne i64 %11, 0
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %land.end
  %12 = load i64, ptr %a.addr, align 8, !tbaa !4
  %13 = load i64, ptr %b.addr, align 8, !tbaa !4
  %add4 = add i64 %12, %13
  br label %cond.end6

cond.false5:                                      ; preds = %land.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true3
  %cond7 = phi i64 [ %add4, %cond.true3 ], [ -1, %cond.false5 ]
  ret i64 %cond7
}

; Function Attrs: nounwind uwtable
define i64 @klu_l_mult_size_t(i64 noundef %a, i64 noundef %k, ptr noundef %ok) #0 {
entry:
  %a.addr = alloca i64, align 8
  %k.addr = alloca i64, align 8
  %ok.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %s = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %ok, ptr %ok.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  store i64 0, ptr %s, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !4
  %1 = load i64, ptr %k.addr, align 8, !tbaa !4
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %s, align 8, !tbaa !4
  %3 = load i64, ptr %a.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %call = call i64 @klu_l_add_size_t(i64 noundef %2, i64 noundef %3, ptr noundef %4)
  store i64 %call, ptr %s, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %ok.addr, align 8, !tbaa !8
  %7 = load i64, ptr %6, align 8, !tbaa !4
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %8 = load i64, ptr %s, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ -1, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  ret i64 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
define ptr @klu_l_malloc(i64 noundef %n, i64 noundef %size, ptr noundef %Common) #2 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %Common.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end24

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.klu_l_common_struct, ptr %2, i32 0, i32 11
  store i64 -3, ptr %status, align 8, !tbaa !12
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end23

if.else3:                                         ; preds = %if.else
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp4 = icmp uge i64 %3, 9223372036854775807
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else3
  %4 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status6 = getelementptr inbounds %struct.klu_l_common_struct, ptr %4, i32 0, i32 11
  store i64 -4, ptr %status6, align 8, !tbaa !12
  store ptr null, ptr %p, align 8, !tbaa !8
  br label %if.end22

if.else7:                                         ; preds = %if.else3
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %size.addr, align 8, !tbaa !4
  %call = call ptr @SuiteSparse_malloc(i64 noundef %5, i64 noundef %6)
  store ptr %call, ptr %p, align 8, !tbaa !8
  %7 = load ptr, ptr %p, align 8, !tbaa !8
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else7
  %8 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status10 = getelementptr inbounds %struct.klu_l_common_struct, ptr %8, i32 0, i32 11
  store i64 -2, ptr %status10, align 8, !tbaa !12
  br label %if.end

if.else11:                                        ; preds = %if.else7
  %9 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp12 = icmp ugt i64 1, %9
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else11
  br label %cond.end

cond.false:                                       ; preds = %if.else11
  %10 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %10, %cond.false ]
  %11 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %cond, %11
  %12 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage = getelementptr inbounds %struct.klu_l_common_struct, ptr %12, i32 0, i32 22
  %13 = load i64, ptr %memusage, align 8, !tbaa !15
  %add = add i64 %13, %mul
  store i64 %add, ptr %memusage, align 8, !tbaa !15
  %14 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %mempeak = getelementptr inbounds %struct.klu_l_common_struct, ptr %14, i32 0, i32 23
  %15 = load i64, ptr %mempeak, align 8, !tbaa !16
  %16 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage13 = getelementptr inbounds %struct.klu_l_common_struct, ptr %16, i32 0, i32 22
  %17 = load i64, ptr %memusage13, align 8, !tbaa !15
  %cmp14 = icmp ugt i64 %15, %17
  br i1 %cmp14, label %cond.true15, label %cond.false17

cond.true15:                                      ; preds = %cond.end
  %18 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %mempeak16 = getelementptr inbounds %struct.klu_l_common_struct, ptr %18, i32 0, i32 23
  %19 = load i64, ptr %mempeak16, align 8, !tbaa !16
  br label %cond.end19

cond.false17:                                     ; preds = %cond.end
  %20 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage18 = getelementptr inbounds %struct.klu_l_common_struct, ptr %20, i32 0, i32 22
  %21 = load i64, ptr %memusage18, align 8, !tbaa !15
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true15
  %cond20 = phi i64 [ %19, %cond.true15 ], [ %21, %cond.false17 ]
  %22 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %mempeak21 = getelementptr inbounds %struct.klu_l_common_struct, ptr %22, i32 0, i32 23
  store i64 %cond20, ptr %mempeak21, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %cond.end19, %if.then9
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then5
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then2
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %23 = load ptr, ptr %p, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret ptr %23
}

declare ptr @SuiteSparse_malloc(i64 noundef, i64 noundef) #3

; Function Attrs: uwtable
define ptr @klu_l_free(ptr noundef %p, i64 noundef %n, i64 noundef %size, ptr noundef %Common) #2 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %Common.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp1 = icmp ne ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %call = call ptr @SuiteSparse_free(ptr noundef %2)
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp2 = icmp ugt i64 1, %3
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %4, %cond.false ]
  %5 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %cond, %5
  %6 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage = getelementptr inbounds %struct.klu_l_common_struct, ptr %6, i32 0, i32 22
  %7 = load i64, ptr %memusage, align 8, !tbaa !15
  %sub = sub i64 %7, %mul
  store i64 %sub, ptr %memusage, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  ret ptr null
}

declare ptr @SuiteSparse_free(ptr noundef) #3

; Function Attrs: uwtable
define ptr @klu_l_realloc(i64 noundef %nnew, i64 noundef %nold, i64 noundef %size, ptr noundef %p, ptr noundef %Common) #2 {
entry:
  %nnew.addr = alloca i64, align 8
  %nold.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %pnew = alloca ptr, align 8
  %ok = alloca i32, align 4
  store i64 %nnew, ptr %nnew.addr, align 8, !tbaa !4
  store i64 %nold, ptr %nold.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !8
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnew) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #4
  store i32 1, ptr %ok, align 4, !tbaa !17
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %p.addr, align 8, !tbaa !8
  br label %if.end23

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.klu_l_common_struct, ptr %2, i32 0, i32 11
  store i64 -3, ptr %status, align 8, !tbaa !12
  store ptr null, ptr %p.addr, align 8, !tbaa !8
  br label %if.end22

if.else3:                                         ; preds = %if.else
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %4 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %5 = load i64, ptr %size.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %call = call ptr @klu_l_malloc(i64 noundef %4, i64 noundef %5, ptr noundef %6)
  store ptr %call, ptr %p.addr, align 8, !tbaa !8
  br label %if.end21

if.else6:                                         ; preds = %if.else3
  %7 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %cmp7 = icmp uge i64 %7, 9223372036854775807
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  %8 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status9 = getelementptr inbounds %struct.klu_l_common_struct, ptr %8, i32 0, i32 11
  store i64 -4, ptr %status9, align 8, !tbaa !12
  br label %if.end20

if.else10:                                        ; preds = %if.else6
  %9 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %10 = load i64, ptr %nold.addr, align 8, !tbaa !4
  %11 = load i64, ptr %size.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !8
  %call11 = call ptr @SuiteSparse_realloc(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %ok)
  store ptr %call11, ptr %pnew, align 8, !tbaa !8
  %13 = load i32, ptr %ok, align 4, !tbaa !17
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then12, label %if.else18

if.then12:                                        ; preds = %if.else10
  %14 = load i64, ptr %nnew.addr, align 8, !tbaa !4
  %15 = load i64, ptr %nold.addr, align 8, !tbaa !4
  %sub = sub i64 %14, %15
  %16 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %sub, %16
  %17 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage = getelementptr inbounds %struct.klu_l_common_struct, ptr %17, i32 0, i32 22
  %18 = load i64, ptr %memusage, align 8, !tbaa !15
  %add = add i64 %18, %mul
  store i64 %add, ptr %memusage, align 8, !tbaa !15
  %19 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %mempeak = getelementptr inbounds %struct.klu_l_common_struct, ptr %19, i32 0, i32 23
  %20 = load i64, ptr %mempeak, align 8, !tbaa !16
  %21 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage13 = getelementptr inbounds %struct.klu_l_common_struct, ptr %21, i32 0, i32 22
  %22 = load i64, ptr %memusage13, align 8, !tbaa !15
  %cmp14 = icmp ugt i64 %20, %22
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  %23 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %mempeak15 = getelementptr inbounds %struct.klu_l_common_struct, ptr %23, i32 0, i32 23
  %24 = load i64, ptr %mempeak15, align 8, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  %25 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %memusage16 = getelementptr inbounds %struct.klu_l_common_struct, ptr %25, i32 0, i32 22
  %26 = load i64, ptr %memusage16, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %26, %cond.false ]
  %27 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %mempeak17 = getelementptr inbounds %struct.klu_l_common_struct, ptr %27, i32 0, i32 23
  store i64 %cond, ptr %mempeak17, align 8, !tbaa !16
  %28 = load ptr, ptr %pnew, align 8, !tbaa !8
  store ptr %28, ptr %p.addr, align 8, !tbaa !8
  br label %if.end

if.else18:                                        ; preds = %if.else10
  %29 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status19 = getelementptr inbounds %struct.klu_l_common_struct, ptr %29, i32 0, i32 11
  store i64 -2, ptr %status19, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else18, %cond.end
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then5
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then2
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  %30 = load ptr, ptr %p.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnew) #4
  ret ptr %30
}

declare ptr @SuiteSparse_realloc(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !5, i64 88}
!13 = !{!"klu_l_common_struct", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !5, i64 176, !5, i64 184}
!14 = !{!"double", !6, i64 0}
!15 = !{!13, !5, i64 176}
!16 = !{!13, !5, i64 184}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !6, i64 0}
