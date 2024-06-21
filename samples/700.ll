; ModuleID = 'samples/700.bc'
source_filename = "lj_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GCtab = type { %struct.GCRef, i8, i8, i8, i8, %struct.MRef, %struct.GCRef, %struct.GCRef, %struct.MRef, i32, i32 }
%struct.GCRef = type { i32 }
%struct.MRef = type { i32 }
%struct.lua_State = type { %struct.GCRef, i8, i8, i8, i8, %struct.MRef, %struct.GCRef, ptr, ptr, %struct.MRef, %struct.MRef, %struct.GCRef, %struct.GCRef, ptr, i32 }
%struct.global_State = type { ptr, i32, i32, ptr, ptr, %struct.GCState, %struct.SBuf, %struct.Node, %struct.GCstr, i8, i8, i8, i8, %struct.GCRef, %union.TValue, %union.TValue, %union.TValue, %struct.GCupval, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.GCRef, %struct.MRef, %struct.MRef, [38 x %struct.GCRef] }
%struct.GCState = type { i32, i32, i8, i8, i8, i8, i32, %struct.GCRef, %struct.MRef, %struct.GCRef, %struct.GCRef, %struct.GCRef, %struct.GCRef, i32, i32, i32, i32 }
%struct.SBuf = type { ptr, i32, i32 }
%struct.Node = type { %union.TValue, %union.TValue, %struct.MRef, %struct.MRef }
%struct.GCstr = type { %struct.GCRef, i8, i8, i8, i8, i32, i32 }
%union.TValue = type { i64 }
%struct.GCupval = type { %struct.GCRef, i8, i8, i8, i8, %union.anon.2, %struct.MRef, i32 }
%union.anon.2 = type { %union.TValue }
%struct.anon = type { %union.anon, i32 }
%union.anon = type { %struct.GCRef }
%struct.anon.1 = type { i32, i32 }
%struct.GChead = type { %struct.GCRef, i8, i8, i8, i8, %struct.GCRef, %struct.GCRef, %struct.GCRef }

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_new(ptr noundef %L, i32 noundef %asize, i32 noundef %hbits) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %asize.addr = alloca i32, align 4
  %hbits.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store i32 %asize, ptr %asize.addr, align 4, !tbaa !8
  store i32 %hbits, ptr %hbits.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %2 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  %call = call ptr @newtab(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  store ptr %call, ptr %t, align 8, !tbaa !4
  %3 = load ptr, ptr %t, align 8, !tbaa !4
  call void @clearapart(ptr noundef %3)
  %4 = load ptr, ptr %t, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %4, i32 0, i32 10
  %5 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %t, align 8, !tbaa !4
  call void @clearhpart(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  ret ptr %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @newtab(ptr noundef %L, i32 noundef %asize, i32 noundef %hbits) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %asize.addr = alloca i32, align 4
  %hbits.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store i32 %asize, ptr %asize.addr, align 4, !tbaa !8
  store i32 %hbits, ptr %hbits.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  %0 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %cmp1 = icmp ule i32 %1, 16
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %3 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 %mul, 32
  %conv2 = trunc i64 %add to i32
  %call = call ptr @lj_mem_newgco(ptr noundef %2, i32 noundef %conv2)
  store ptr %call, ptr %t, align 8, !tbaa !4
  %4 = load ptr, ptr %t, align 8, !tbaa !4
  %gct = getelementptr inbounds %struct.GCtab, ptr %4, i32 0, i32 2
  store i8 11, ptr %gct, align 1, !tbaa !14
  %5 = load ptr, ptr %t, align 8, !tbaa !4
  %nomm = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 3
  store i8 -1, ptr %nomm, align 2, !tbaa !15
  %6 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %conv3 = trunc i32 %6 to i8
  %7 = load ptr, ptr %t, align 8, !tbaa !4
  %colo = getelementptr inbounds %struct.GCtab, ptr %7, i32 0, i32 4
  store i8 %conv3, ptr %colo, align 1, !tbaa !16
  %8 = load ptr, ptr %t, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 32
  %9 = ptrtoint ptr %add.ptr to i64
  %conv4 = trunc i64 %9 to i32
  %10 = load ptr, ptr %t, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %10, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  store i32 %conv4, ptr %ptr32, align 4, !tbaa !17
  %11 = load ptr, ptr %t, align 8, !tbaa !4
  %metatable = getelementptr inbounds %struct.GCtab, ptr %11, i32 0, i32 7
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %metatable, i32 0, i32 0
  store i32 0, ptr %gcptr32, align 4, !tbaa !18
  %12 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %13 = load ptr, ptr %t, align 8, !tbaa !4
  %asize5 = getelementptr inbounds %struct.GCtab, ptr %13, i32 0, i32 9
  store i32 %12, ptr %asize5, align 4, !tbaa !19
  %14 = load ptr, ptr %t, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %14, i32 0, i32 10
  store i32 0, ptr %hmask, align 4, !tbaa !10
  %15 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref = getelementptr inbounds %struct.lua_State, ptr %15, i32 0, i32 5
  %ptr326 = getelementptr inbounds %struct.MRef, ptr %glref, i32 0, i32 0
  %16 = load i32, ptr %ptr326, align 8, !tbaa !20
  %conv7 = zext i32 %16 to i64
  %17 = inttoptr i64 %conv7 to ptr
  %nilnode = getelementptr inbounds %struct.global_State, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %nilnode to i64
  %conv8 = trunc i64 %18 to i32
  %19 = load ptr, ptr %t, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %19, i32 0, i32 8
  %ptr329 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  store i32 %conv8, ptr %ptr329, align 4, !tbaa !22
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %entry
  %20 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %call10 = call ptr @lj_mem_newgco(ptr noundef %20, i32 noundef 32)
  store ptr %call10, ptr %t, align 8, !tbaa !4
  %21 = load ptr, ptr %t, align 8, !tbaa !4
  %gct11 = getelementptr inbounds %struct.GCtab, ptr %21, i32 0, i32 2
  store i8 11, ptr %gct11, align 1, !tbaa !14
  %22 = load ptr, ptr %t, align 8, !tbaa !4
  %nomm12 = getelementptr inbounds %struct.GCtab, ptr %22, i32 0, i32 3
  store i8 -1, ptr %nomm12, align 2, !tbaa !15
  %23 = load ptr, ptr %t, align 8, !tbaa !4
  %colo13 = getelementptr inbounds %struct.GCtab, ptr %23, i32 0, i32 4
  store i8 0, ptr %colo13, align 1, !tbaa !16
  %24 = load ptr, ptr %t, align 8, !tbaa !4
  %array14 = getelementptr inbounds %struct.GCtab, ptr %24, i32 0, i32 5
  %ptr3215 = getelementptr inbounds %struct.MRef, ptr %array14, i32 0, i32 0
  store i32 0, ptr %ptr3215, align 4, !tbaa !17
  %25 = load ptr, ptr %t, align 8, !tbaa !4
  %metatable16 = getelementptr inbounds %struct.GCtab, ptr %25, i32 0, i32 7
  %gcptr3217 = getelementptr inbounds %struct.GCRef, ptr %metatable16, i32 0, i32 0
  store i32 0, ptr %gcptr3217, align 4, !tbaa !18
  %26 = load ptr, ptr %t, align 8, !tbaa !4
  %asize18 = getelementptr inbounds %struct.GCtab, ptr %26, i32 0, i32 9
  store i32 0, ptr %asize18, align 4, !tbaa !19
  %27 = load ptr, ptr %t, align 8, !tbaa !4
  %hmask19 = getelementptr inbounds %struct.GCtab, ptr %27, i32 0, i32 10
  store i32 0, ptr %hmask19, align 4, !tbaa !10
  %28 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref20 = getelementptr inbounds %struct.lua_State, ptr %28, i32 0, i32 5
  %ptr3221 = getelementptr inbounds %struct.MRef, ptr %glref20, i32 0, i32 0
  %29 = load i32, ptr %ptr3221, align 8, !tbaa !20
  %conv22 = zext i32 %29 to i64
  %30 = inttoptr i64 %conv22 to ptr
  %nilnode23 = getelementptr inbounds %struct.global_State, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %nilnode23 to i64
  %conv24 = trunc i64 %31 to i32
  %32 = load ptr, ptr %t, align 8, !tbaa !4
  %node25 = getelementptr inbounds %struct.GCtab, ptr %32, i32 0, i32 8
  %ptr3226 = getelementptr inbounds %struct.MRef, ptr %node25, i32 0, i32 0
  store i32 %conv24, ptr %ptr3226, align 4, !tbaa !22
  %33 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %cmp27 = icmp ugt i32 %33, 0
  br i1 %cmp27, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.else
  %34 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %cmp30 = icmp ugt i32 %34, 134217729
  br i1 %cmp30, label %if.then32, label %if.end

if.then32:                                        ; preds = %if.then29
  %35 = load ptr, ptr %L.addr, align 8, !tbaa !4
  call void @lj_err_msg(ptr noundef %35, i32 noundef 139) #9
  unreachable

if.end:                                           ; preds = %if.then29
  %36 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %37 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %conv33 = zext i32 %37 to i64
  %mul34 = mul i64 %conv33, 8
  %conv35 = trunc i64 %mul34 to i32
  %call36 = call ptr @lj_mem_realloc(ptr noundef %36, ptr noundef null, i32 noundef 0, i32 noundef %conv35)
  %38 = ptrtoint ptr %call36 to i64
  %conv37 = trunc i64 %38 to i32
  %39 = load ptr, ptr %t, align 8, !tbaa !4
  %array38 = getelementptr inbounds %struct.GCtab, ptr %39, i32 0, i32 5
  %ptr3239 = getelementptr inbounds %struct.MRef, ptr %array38, i32 0, i32 0
  store i32 %conv37, ptr %ptr3239, align 4, !tbaa !17
  %40 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %41 = load ptr, ptr %t, align 8, !tbaa !4
  %asize40 = getelementptr inbounds %struct.GCtab, ptr %41, i32 0, i32 9
  store i32 %40, ptr %asize40, align 4, !tbaa !19
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then
  %42 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end42
  %43 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %t, align 8, !tbaa !4
  %45 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  call void @newhpart(ptr noundef %43, ptr noundef %44, i32 noundef %45)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end42
  %46 = load ptr, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  ret ptr %46
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @clearapart(ptr noundef %t) #2 {
entry:
  %t.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %asize = alloca i32, align 4
  %array = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %asize) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize1 = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %asize1, align 4, !tbaa !19
  store i32 %1, ptr %asize, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #8
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array2 = getelementptr inbounds %struct.GCtab, ptr %2, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array2, i32 0, i32 0
  %3 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv = zext i32 %3 to i64
  %4 = inttoptr i64 %conv to ptr
  store ptr %4, ptr %array, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %6 = load i32, ptr %asize, align 4, !tbaa !8
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %array, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %7, i64 %idxprom
  %it = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  store i32 -1, ptr %it, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %asize) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @clearhpart(ptr noundef %t) #2 {
entry:
  %t.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %hmask = alloca i32, align 4
  %node = alloca ptr, align 8
  %n = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask1 = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %hmask1, align 4, !tbaa !10
  store i32 %1, ptr %hmask, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node2 = getelementptr inbounds %struct.GCtab, ptr %2, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node2, i32 0, i32 0
  %3 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv = zext i32 %3 to i64
  %4 = inttoptr i64 %conv to ptr
  store ptr %4, ptr %node, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %6 = load i32, ptr %hmask, align 4, !tbaa !8
  %cmp = icmp ule i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %7 = load ptr, ptr %node, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.Node, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %n, align 8, !tbaa !4
  %9 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 2
  %ptr324 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  store i32 0, ptr %ptr324, align 8, !tbaa !26
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 1
  %it = getelementptr inbounds %struct.anon, ptr %key, i32 0, i32 1
  store i32 -1, ptr %it, align 4, !tbaa !23
  %11 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 0
  %it5 = getelementptr inbounds %struct.anon, ptr %val, i32 0, i32 1
  store i32 -1, ptr %it5, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_new1(ptr noundef %L, i32 noundef %ahsize) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %ahsize.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store i32 %ahsize, ptr %ahsize.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load i32, ptr %ahsize.addr, align 4, !tbaa !8
  %and = and i32 %1, 16777215
  %2 = load i32, ptr %ahsize.addr, align 4, !tbaa !8
  %shr = lshr i32 %2, 24
  %call = call ptr @newtab(ptr noundef %0, i32 noundef %and, i32 noundef %shr)
  store ptr %call, ptr %t, align 8, !tbaa !4
  %3 = load ptr, ptr %t, align 8, !tbaa !4
  call void @clearapart(ptr noundef %3)
  %4 = load ptr, ptr %t, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %4, i32 0, i32 10
  %5 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %t, align 8, !tbaa !4
  call void @clearhpart(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_dup(ptr noundef %L, ptr noundef %kt) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %kt.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %asize = alloca i32, align 4
  %hmask = alloca i32, align 4
  %array = alloca ptr, align 8
  %karray = alloca ptr, align 8
  %i = alloca i32, align 4
  %i23 = alloca i32, align 4
  %node = alloca ptr, align 8
  %knode = alloca ptr, align 8
  %d = alloca i64, align 8
  %kn = alloca ptr, align 8
  %n = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %kt, ptr %kt.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %asize) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #8
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %asize1 = getelementptr inbounds %struct.GCtab, ptr %1, i32 0, i32 9
  %2 = load i32, ptr %asize1, align 4, !tbaa !19
  %3 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %hmask2 = getelementptr inbounds %struct.GCtab, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %hmask2, align 4, !tbaa !10
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %hmask3 = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %hmask3, align 4, !tbaa !10
  %7 = call i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %xor = xor i32 %7, 31
  %add = add i32 %xor, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %call = call ptr @newtab(ptr noundef %0, i32 noundef %2, i32 noundef %cond)
  store ptr %call, ptr %t, align 8, !tbaa !4
  %8 = load ptr, ptr %t, align 8, !tbaa !4
  %nomm = getelementptr inbounds %struct.GCtab, ptr %8, i32 0, i32 3
  store i8 0, ptr %nomm, align 2, !tbaa !15
  %9 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %asize4 = getelementptr inbounds %struct.GCtab, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %asize4, align 4, !tbaa !19
  store i32 %10, ptr %asize, align 4, !tbaa !8
  %11 = load i32, ptr %asize, align 4, !tbaa !8
  %cmp5 = icmp ugt i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.end18

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #8
  %12 = load ptr, ptr %t, align 8, !tbaa !4
  %array6 = getelementptr inbounds %struct.GCtab, ptr %12, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array6, i32 0, i32 0
  %13 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv = zext i32 %13 to i64
  %14 = inttoptr i64 %conv to ptr
  store ptr %14, ptr %array, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %karray) #8
  %15 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %array7 = getelementptr inbounds %struct.GCtab, ptr %15, i32 0, i32 5
  %ptr328 = getelementptr inbounds %struct.MRef, ptr %array7, i32 0, i32 0
  %16 = load i32, ptr %ptr328, align 4, !tbaa !17
  %conv9 = zext i32 %16 to i64
  %17 = inttoptr i64 %conv9 to ptr
  store ptr %17, ptr %karray, align 8, !tbaa !4
  %18 = load i32, ptr %asize, align 4, !tbaa !8
  %cmp10 = icmp ult i32 %18, 64
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %20 = load i32, ptr %asize, align 4, !tbaa !8
  %cmp13 = icmp ult i32 %19, %20
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %array, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %karray, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom15 = zext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds %union.TValue, ptr %24, i64 %idxprom15
  call void @copyTV(ptr noundef %21, ptr noundef %arrayidx, ptr noundef %arrayidx16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %27 = load ptr, ptr %array, align 8, !tbaa !4
  %28 = load ptr, ptr %karray, align 8, !tbaa !4
  %29 = load i32, ptr %asize, align 4, !tbaa !8
  %conv17 = zext i32 %29 to i64
  %mul = mul i64 %conv17, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %27, ptr align 8 %28, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %karray) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #8
  br label %if.end18

if.end18:                                         ; preds = %if.end, %cond.end
  %30 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %hmask19 = getelementptr inbounds %struct.GCtab, ptr %30, i32 0, i32 10
  %31 = load i32, ptr %hmask19, align 4, !tbaa !10
  store i32 %31, ptr %hmask, align 4, !tbaa !8
  %32 = load i32, ptr %hmask, align 4, !tbaa !8
  %cmp20 = icmp ugt i32 %32, 0
  br i1 %cmp20, label %if.then22, label %if.end61

if.then22:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %i23) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8
  %33 = load ptr, ptr %t, align 8, !tbaa !4
  %node24 = getelementptr inbounds %struct.GCtab, ptr %33, i32 0, i32 8
  %ptr3225 = getelementptr inbounds %struct.MRef, ptr %node24, i32 0, i32 0
  %34 = load i32, ptr %ptr3225, align 4, !tbaa !22
  %conv26 = zext i32 %34 to i64
  %35 = inttoptr i64 %conv26 to ptr
  store ptr %35, ptr %node, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %knode) #8
  %36 = load ptr, ptr %kt.addr, align 8, !tbaa !4
  %node27 = getelementptr inbounds %struct.GCtab, ptr %36, i32 0, i32 8
  %ptr3228 = getelementptr inbounds %struct.MRef, ptr %node27, i32 0, i32 0
  %37 = load i32, ptr %ptr3228, align 4, !tbaa !22
  %conv29 = zext i32 %37 to i64
  %38 = inttoptr i64 %conv29 to ptr
  store ptr %38, ptr %knode, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #8
  %39 = load ptr, ptr %node, align 8, !tbaa !4
  %40 = load ptr, ptr %knode, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %d, align 8, !tbaa !30
  %41 = load ptr, ptr %knode, align 8, !tbaa !4
  %freetop = getelementptr inbounds %struct.Node, ptr %41, i32 0, i32 3
  %ptr3230 = getelementptr inbounds %struct.MRef, ptr %freetop, i32 0, i32 0
  %42 = load i32, ptr %ptr3230, align 4, !tbaa !32
  %conv31 = zext i32 %42 to i64
  %43 = inttoptr i64 %conv31 to ptr
  %44 = load i64, ptr %d, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds i8, ptr %43, i64 %44
  %45 = ptrtoint ptr %add.ptr to i64
  %conv32 = trunc i64 %45 to i32
  %46 = load ptr, ptr %node, align 8, !tbaa !4
  %freetop33 = getelementptr inbounds %struct.Node, ptr %46, i32 0, i32 3
  %ptr3234 = getelementptr inbounds %struct.MRef, ptr %freetop33, i32 0, i32 0
  store i32 %conv32, ptr %ptr3234, align 4, !tbaa !32
  store i32 0, ptr %i23, align 4, !tbaa !8
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc58, %if.then22
  %47 = load i32, ptr %i23, align 4, !tbaa !8
  %48 = load i32, ptr %hmask, align 4, !tbaa !8
  %cmp36 = icmp ule i32 %47, %48
  br i1 %cmp36, label %for.body38, label %for.end60

for.body38:                                       ; preds = %for.cond35
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #8
  %49 = load ptr, ptr %knode, align 8, !tbaa !4
  %50 = load i32, ptr %i23, align 4, !tbaa !8
  %idxprom39 = zext i32 %50 to i64
  %arrayidx40 = getelementptr inbounds %struct.Node, ptr %49, i64 %idxprom39
  store ptr %arrayidx40, ptr %kn, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %51 = load ptr, ptr %node, align 8, !tbaa !4
  %52 = load i32, ptr %i23, align 4, !tbaa !8
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds %struct.Node, ptr %51, i64 %idxprom41
  store ptr %arrayidx42, ptr %n, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8
  %53 = load ptr, ptr %kn, align 8, !tbaa !4
  %next43 = getelementptr inbounds %struct.Node, ptr %53, i32 0, i32 2
  %ptr3244 = getelementptr inbounds %struct.MRef, ptr %next43, i32 0, i32 0
  %54 = load i32, ptr %ptr3244, align 8, !tbaa !26
  %conv45 = zext i32 %54 to i64
  %55 = inttoptr i64 %conv45 to ptr
  store ptr %55, ptr %next, align 8, !tbaa !4
  %56 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %kn, align 8, !tbaa !4
  %val46 = getelementptr inbounds %struct.Node, ptr %57, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val, ptr align 8 %val46, i64 8, i1 false), !tbaa.struct !33
  %58 = load ptr, ptr %n, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.Node, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %kn, align 8, !tbaa !4
  %key47 = getelementptr inbounds %struct.Node, ptr %59, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %key47, i64 8, i1 false), !tbaa.struct !33
  %60 = load ptr, ptr %next, align 8, !tbaa !4
  %cmp48 = icmp eq ptr %60, null
  br i1 %cmp48, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %for.body38
  %61 = load ptr, ptr %next, align 8, !tbaa !4
  br label %cond.end53

cond.false51:                                     ; preds = %for.body38
  %62 = load ptr, ptr %next, align 8, !tbaa !4
  %63 = load i64, ptr %d, align 8, !tbaa !30
  %add.ptr52 = getelementptr inbounds i8, ptr %62, i64 %63
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false51, %cond.true50
  %cond54 = phi ptr [ %61, %cond.true50 ], [ %add.ptr52, %cond.false51 ]
  %64 = ptrtoint ptr %cond54 to i64
  %conv55 = trunc i64 %64 to i32
  %65 = load ptr, ptr %n, align 8, !tbaa !4
  %next56 = getelementptr inbounds %struct.Node, ptr %65, i32 0, i32 2
  %ptr3257 = getelementptr inbounds %struct.MRef, ptr %next56, i32 0, i32 0
  store i32 %conv55, ptr %ptr3257, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #8
  br label %for.inc58

for.inc58:                                        ; preds = %cond.end53
  %66 = load i32, ptr %i23, align 4, !tbaa !8
  %inc59 = add i32 %66, 1
  store i32 %inc59, ptr %i23, align 4, !tbaa !8
  br label %for.cond35, !llvm.loop !36

for.end60:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %knode) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i23) #8
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %if.end18
  %67 = load ptr, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %asize) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  ret ptr %67
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @copyTV(ptr noundef %L, ptr noundef %o1, ptr noundef %o2) #2 {
entry:
  %L.addr = alloca ptr, align 8
  %o1.addr = alloca ptr, align 8
  %o2.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %o1, ptr %o1.addr, align 8, !tbaa !4
  store ptr %o2, ptr %o2.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %o1.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %o2.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 8, i1 false), !tbaa.struct !33
  %2 = load ptr, ptr %L.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden void @lj_tab_free(ptr noundef %g, ptr noundef %t) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %3, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  %4 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv = zext i32 %4 to i64
  %5 = inttoptr i64 %conv to ptr
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask1 = getelementptr inbounds %struct.GCtab, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %hmask1, align 4, !tbaa !10
  %add = add i32 %7, 1
  %conv2 = zext i32 %add to i64
  %mul = mul i64 %conv2, 24
  call void @lj_mem_free(ptr noundef %2, ptr noundef %5, i64 noundef %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp3 = icmp ugt i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo = getelementptr inbounds %struct.GCtab, ptr %10, i32 0, i32 4
  %11 = load i8, ptr %colo, align 1, !tbaa !16
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp sle i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %13, i32 0, i32 5
  %ptr329 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  %14 = load i32, ptr %ptr329, align 4, !tbaa !17
  %conv10 = zext i32 %14 to i64
  %15 = inttoptr i64 %conv10 to ptr
  %16 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize11 = getelementptr inbounds %struct.GCtab, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %asize11, align 4, !tbaa !19
  %conv12 = zext i32 %17 to i64
  %mul13 = mul i64 %conv12, 8
  call void @lj_mem_free(ptr noundef %12, ptr noundef %15, i64 noundef %mul13)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %land.lhs.true, %if.end
  %18 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo15 = getelementptr inbounds %struct.GCtab, ptr %18, i32 0, i32 4
  %19 = load i8, ptr %colo15, align 1, !tbaa !16
  %conv16 = sext i8 %19 to i32
  %tobool = icmp ne i32 %conv16, 0
  br i1 %tobool, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %20 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo18 = getelementptr inbounds %struct.GCtab, ptr %22, i32 0, i32 4
  %23 = load i8, ptr %colo18, align 1, !tbaa !16
  %conv19 = sext i8 %23 to i32
  %and = and i32 %conv19, 127
  %conv20 = zext i32 %and to i64
  %mul21 = mul i64 %conv20, 8
  %add22 = add i64 %mul21, 32
  call void @lj_mem_free(ptr noundef %20, ptr noundef %21, i64 noundef %add22)
  br label %if.end23

if.else:                                          ; preds = %if.end14
  %24 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %t.addr, align 8, !tbaa !4
  call void @lj_mem_free(ptr noundef %24, ptr noundef %25, i64 noundef 32)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @lj_mem_free(ptr noundef %g, ptr noundef %p, i64 noundef %osize) #2 {
entry:
  %g.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %osize.addr = alloca i64, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %osize, ptr %osize.addr, align 8, !tbaa !30
  %0 = load i64, ptr %osize.addr, align 8, !tbaa !30
  %conv = trunc i64 %0 to i32
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %gc = getelementptr inbounds %struct.global_State, ptr %1, i32 0, i32 5
  %total = getelementptr inbounds %struct.GCState, ptr %gc, i32 0, i32 0
  %2 = load i32, ptr %total, align 8, !tbaa !37
  %sub = sub i32 %2, %conv
  store i32 %sub, ptr %total, align 8, !tbaa !37
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %allocf = getelementptr inbounds %struct.global_State, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %allocf, align 8, !tbaa !43
  %5 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %allocd = getelementptr inbounds %struct.global_State, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %allocd, align 8, !tbaa !44
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %8 = load i64, ptr %osize.addr, align 8, !tbaa !30
  %call = call ptr %4(ptr noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @lj_tab_rehash(ptr noundef %L, ptr noundef %t) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref = getelementptr inbounds %struct.lua_State, ptr %2, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %glref, i32 0, i32 0
  %3 = load i32, ptr %ptr32, align 8, !tbaa !20
  %conv = zext i32 %3 to i64
  %4 = inttoptr i64 %conv to ptr
  %nilnode = getelementptr inbounds %struct.global_State, ptr %4, i32 0, i32 7
  %val = getelementptr inbounds %struct.Node, ptr %nilnode, i32 0, i32 0
  call void @rehashtab(ptr noundef %0, ptr noundef %1, ptr noundef %val)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rehashtab(ptr noundef %L, ptr noundef %t, ptr noundef %ek) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ek.addr = alloca ptr, align 8
  %bins = alloca [28 x i32], align 16
  %total = alloca i32, align 4
  %asize = alloca i32, align 4
  %na = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %ek, ptr %ek.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 112, ptr %bins) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %asize) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %na) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [28 x i32], ptr %bins, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [28 x i32], ptr %bins, i64 0, i64 0
  %call = call i32 @countarray(ptr noundef %3, ptr noundef %arraydecay)
  store i32 %call, ptr %asize, align 4, !tbaa !8
  %4 = load i32, ptr %asize, align 4, !tbaa !8
  %add = add i32 1, %4
  store i32 %add, ptr %total, align 4, !tbaa !8
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [28 x i32], ptr %bins, i64 0, i64 0
  %call2 = call i32 @counthash(ptr noundef %5, ptr noundef %arraydecay1, ptr noundef %asize)
  %6 = load i32, ptr %total, align 4, !tbaa !8
  %add3 = add i32 %6, %call2
  store i32 %add3, ptr %total, align 4, !tbaa !8
  %7 = load ptr, ptr %ek.addr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [28 x i32], ptr %bins, i64 0, i64 0
  %call5 = call i32 @countint(ptr noundef %7, ptr noundef %arraydecay4)
  %8 = load i32, ptr %asize, align 4, !tbaa !8
  %add6 = add i32 %8, %call5
  store i32 %add6, ptr %asize, align 4, !tbaa !8
  %arraydecay7 = getelementptr inbounds [28 x i32], ptr %bins, i64 0, i64 0
  %call8 = call i32 @bestasize(ptr noundef %arraydecay7, ptr noundef %asize)
  store i32 %call8, ptr %na, align 4, !tbaa !8
  %9 = load i32, ptr %na, align 4, !tbaa !8
  %10 = load i32, ptr %total, align 4, !tbaa !8
  %sub = sub i32 %10, %9
  store i32 %sub, ptr %total, align 4, !tbaa !8
  %11 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %13 = load i32, ptr %asize, align 4, !tbaa !8
  %14 = load i32, ptr %total, align 4, !tbaa !8
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false13

cond.true:                                        ; preds = %for.end
  %15 = load i32, ptr %total, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %15, 1
  br i1 %cmp9, label %cond.true10, label %cond.false

cond.true10:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %16 = load i32, ptr %total, align 4, !tbaa !8
  %sub11 = sub i32 %16, 1
  %17 = call i32 @llvm.ctlz.i32(i32 %sub11, i1 true)
  %xor = xor i32 %17, 31
  %add12 = add i32 1, %xor
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true10
  %cond = phi i32 [ 1, %cond.true10 ], [ %add12, %cond.false ]
  br label %cond.end14

cond.false13:                                     ; preds = %for.end
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false13 ]
  call void @resizetab(ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %cond15)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %na) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %asize) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr %bins) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @lj_tab_reasize(ptr noundef %L, ptr noundef %t, i32 noundef %nasize) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %nasize.addr = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %nasize, ptr %nasize.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %2 = load i32, ptr %nasize.addr, align 4, !tbaa !8
  %add = add i32 %2, 1
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask1 = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %hmask1, align 4, !tbaa !10
  %7 = call i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %xor = xor i32 %7, 31
  %add2 = add i32 %xor, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add2, %cond.true ], [ 0, %cond.false ]
  call void @resizetab(ptr noundef %0, ptr noundef %1, i32 noundef %add, i32 noundef %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @resizetab(ptr noundef %L, ptr noundef %t, i32 noundef %asize, i32 noundef %hbits) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %asize.addr = alloca i32, align 4
  %hbits.addr = alloca i32, align 4
  %oldnode = alloca ptr, align 8
  %oldasize = alloca i32, align 4
  %oldhmask = alloca i32, align 4
  %array = alloca ptr, align 8
  %i = alloca i32, align 4
  %oarray = alloca ptr, align 8
  %g = alloca ptr, align 8
  %array60 = alloca ptr, align 8
  %i64 = alloca i32, align 4
  %g103 = alloca ptr, align 8
  %i104 = alloca i32, align 4
  %n = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %asize, ptr %asize.addr, align 4, !tbaa !8
  store i32 %hbits, ptr %hbits.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldnode) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  %1 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv = zext i32 %1 to i64
  %2 = inttoptr i64 %conv to ptr
  store ptr %2, ptr %oldnode, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldasize) #8
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize1 = getelementptr inbounds %struct.GCtab, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %asize1, align 4, !tbaa !19
  store i32 %4, ptr %oldasize, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldhmask) #8
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %hmask, align 4, !tbaa !10
  store i32 %6, ptr %oldhmask, align 4, !tbaa !8
  %7 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %8 = load i32, ptr %oldasize, align 4, !tbaa !8
  %cmp = icmp ugt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end47

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %9 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %cmp3 = icmp ugt i32 %9, 134217729
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %L.addr, align 8, !tbaa !4
  call void @lj_err_msg(ptr noundef %10, i32 noundef 139) #9
  unreachable

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo = getelementptr inbounds %struct.GCtab, ptr %11, i32 0, i32 4
  %12 = load i8, ptr %colo, align 1, !tbaa !16
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp sgt i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %oarray) #8
  %13 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array10 = getelementptr inbounds %struct.GCtab, ptr %13, i32 0, i32 5
  %ptr3211 = getelementptr inbounds %struct.MRef, ptr %array10, i32 0, i32 0
  %14 = load i32, ptr %ptr3211, align 4, !tbaa !17
  %conv12 = zext i32 %14 to i64
  %15 = inttoptr i64 %conv12 to ptr
  store ptr %15, ptr %oarray, align 8, !tbaa !4
  %16 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %17 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %conv13 = zext i32 %17 to i64
  %mul = mul i64 %conv13, 8
  %conv14 = trunc i64 %mul to i32
  %call = call ptr @lj_mem_realloc(ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef %conv14)
  store ptr %call, ptr %array, align 8, !tbaa !4
  %18 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo15 = getelementptr inbounds %struct.GCtab, ptr %18, i32 0, i32 4
  %19 = load i8, ptr %colo15, align 1, !tbaa !16
  %conv16 = sext i8 %19 to i32
  %or = or i32 %conv16, 128
  %conv17 = trunc i32 %or to i8
  %20 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo18 = getelementptr inbounds %struct.GCtab, ptr %20, i32 0, i32 4
  store i8 %conv17, ptr %colo18, align 1, !tbaa !16
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %22 = load i32, ptr %oldasize, align 4, !tbaa !8
  %cmp19 = icmp ult i32 %21, %22
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %array, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %25 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %oarray, align 8, !tbaa !4
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom21 = zext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds %union.TValue, ptr %26, i64 %idxprom21
  call void @copyTV(ptr noundef %23, ptr noundef %arrayidx, ptr noundef %arrayidx22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %oarray) #8
  br label %if.end33

if.else:                                          ; preds = %if.end
  %29 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array23 = getelementptr inbounds %struct.GCtab, ptr %30, i32 0, i32 5
  %ptr3224 = getelementptr inbounds %struct.MRef, ptr %array23, i32 0, i32 0
  %31 = load i32, ptr %ptr3224, align 4, !tbaa !17
  %conv25 = zext i32 %31 to i64
  %32 = inttoptr i64 %conv25 to ptr
  %33 = load i32, ptr %oldasize, align 4, !tbaa !8
  %conv26 = zext i32 %33 to i64
  %mul27 = mul i64 %conv26, 8
  %conv28 = trunc i64 %mul27 to i32
  %34 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %conv29 = zext i32 %34 to i64
  %mul30 = mul i64 %conv29, 8
  %conv31 = trunc i64 %mul30 to i32
  %call32 = call ptr @lj_mem_realloc(ptr noundef %29, ptr noundef %32, i32 noundef %conv28, i32 noundef %conv31)
  store ptr %call32, ptr %array, align 8, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %for.end
  %35 = load ptr, ptr %array, align 8, !tbaa !4
  %36 = ptrtoint ptr %35 to i64
  %conv34 = trunc i64 %36 to i32
  %37 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array35 = getelementptr inbounds %struct.GCtab, ptr %37, i32 0, i32 5
  %ptr3236 = getelementptr inbounds %struct.MRef, ptr %array35, i32 0, i32 0
  store i32 %conv34, ptr %ptr3236, align 4, !tbaa !17
  %38 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %39 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize37 = getelementptr inbounds %struct.GCtab, ptr %39, i32 0, i32 9
  store i32 %38, ptr %asize37, align 4, !tbaa !19
  %40 = load i32, ptr %oldasize, align 4, !tbaa !8
  store i32 %40, ptr %i, align 4, !tbaa !8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc44, %if.end33
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %42 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %cmp39 = icmp ult i32 %41, %42
  br i1 %cmp39, label %for.body41, label %for.end46

for.body41:                                       ; preds = %for.cond38
  %43 = load ptr, ptr %array, align 8, !tbaa !4
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom42 = zext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds %union.TValue, ptr %43, i64 %idxprom42
  %it = getelementptr inbounds %struct.anon, ptr %arrayidx43, i32 0, i32 1
  store i32 -1, ptr %it, align 4, !tbaa !23
  br label %for.inc44

for.inc44:                                        ; preds = %for.body41
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %inc45 = add i32 %45, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !8
  br label %for.cond38, !llvm.loop !47

for.end46:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #8
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %entry
  %46 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end47
  %47 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %49 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  call void @newhpart(ptr noundef %47, ptr noundef %48, i32 noundef %49)
  %50 = load ptr, ptr %t.addr, align 8, !tbaa !4
  call void @clearhpart(ptr noundef %50)
  br label %if.end56

if.else49:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #8
  %51 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref = getelementptr inbounds %struct.lua_State, ptr %51, i32 0, i32 5
  %ptr3250 = getelementptr inbounds %struct.MRef, ptr %glref, i32 0, i32 0
  %52 = load i32, ptr %ptr3250, align 8, !tbaa !20
  %conv51 = zext i32 %52 to i64
  %53 = inttoptr i64 %conv51 to ptr
  store ptr %53, ptr %g, align 8, !tbaa !4
  %54 = load ptr, ptr %g, align 8, !tbaa !4
  %nilnode = getelementptr inbounds %struct.global_State, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %nilnode to i64
  %conv52 = trunc i64 %55 to i32
  %56 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node53 = getelementptr inbounds %struct.GCtab, ptr %56, i32 0, i32 8
  %ptr3254 = getelementptr inbounds %struct.MRef, ptr %node53, i32 0, i32 0
  store i32 %conv52, ptr %ptr3254, align 4, !tbaa !22
  %57 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask55 = getelementptr inbounds %struct.GCtab, ptr %57, i32 0, i32 10
  store i32 0, ptr %hmask55, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #8
  br label %if.end56

if.end56:                                         ; preds = %if.else49, %if.then48
  %58 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %59 = load i32, ptr %oldasize, align 4, !tbaa !8
  %cmp57 = icmp ult i32 %58, %59
  br i1 %cmp57, label %if.then59, label %if.end99

if.then59:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %array60) #8
  %60 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array61 = getelementptr inbounds %struct.GCtab, ptr %60, i32 0, i32 5
  %ptr3262 = getelementptr inbounds %struct.MRef, ptr %array61, i32 0, i32 0
  %61 = load i32, ptr %ptr3262, align 4, !tbaa !17
  %conv63 = zext i32 %61 to i64
  %62 = inttoptr i64 %conv63 to ptr
  store ptr %62, ptr %array60, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i64) #8
  %63 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %64 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize65 = getelementptr inbounds %struct.GCtab, ptr %64, i32 0, i32 9
  store i32 %63, ptr %asize65, align 4, !tbaa !19
  %65 = load i32, ptr %asize.addr, align 4, !tbaa !8
  store i32 %65, ptr %i64, align 4, !tbaa !8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc80, %if.then59
  %66 = load i32, ptr %i64, align 4, !tbaa !8
  %67 = load i32, ptr %oldasize, align 4, !tbaa !8
  %cmp67 = icmp ult i32 %66, %67
  br i1 %cmp67, label %for.body69, label %for.end82

for.body69:                                       ; preds = %for.cond66
  %68 = load ptr, ptr %array60, align 8, !tbaa !4
  %69 = load i32, ptr %i64, align 4, !tbaa !8
  %idxprom70 = zext i32 %69 to i64
  %arrayidx71 = getelementptr inbounds %union.TValue, ptr %68, i64 %idxprom70
  %it72 = getelementptr inbounds %struct.anon, ptr %arrayidx71, i32 0, i32 1
  %70 = load i32, ptr %it72, align 4, !tbaa !23
  %cmp73 = icmp eq i32 %70, -1
  br i1 %cmp73, label %if.end79, label %if.then75

if.then75:                                        ; preds = %for.body69
  %71 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %74 = load i32, ptr %i64, align 4, !tbaa !8
  %call76 = call ptr @lj_tab_setinth(ptr noundef %72, ptr noundef %73, i32 noundef %74)
  %75 = load ptr, ptr %array60, align 8, !tbaa !4
  %76 = load i32, ptr %i64, align 4, !tbaa !8
  %idxprom77 = zext i32 %76 to i64
  %arrayidx78 = getelementptr inbounds %union.TValue, ptr %75, i64 %idxprom77
  call void @copyTV(ptr noundef %71, ptr noundef %call76, ptr noundef %arrayidx78)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %for.body69
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %77 = load i32, ptr %i64, align 4, !tbaa !8
  %inc81 = add i32 %77, 1
  store i32 %inc81, ptr %i64, align 4, !tbaa !8
  br label %for.cond66, !llvm.loop !48

for.end82:                                        ; preds = %for.cond66
  %78 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %colo83 = getelementptr inbounds %struct.GCtab, ptr %78, i32 0, i32 4
  %79 = load i8, ptr %colo83, align 1, !tbaa !16
  %conv84 = sext i8 %79 to i32
  %cmp85 = icmp sle i32 %conv84, 0
  br i1 %cmp85, label %if.then87, label %if.end98

if.then87:                                        ; preds = %for.end82
  %80 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %81 = load ptr, ptr %array60, align 8, !tbaa !4
  %82 = load i32, ptr %oldasize, align 4, !tbaa !8
  %conv88 = zext i32 %82 to i64
  %mul89 = mul i64 %conv88, 8
  %conv90 = trunc i64 %mul89 to i32
  %83 = load i32, ptr %asize.addr, align 4, !tbaa !8
  %conv91 = zext i32 %83 to i64
  %mul92 = mul i64 %conv91, 8
  %conv93 = trunc i64 %mul92 to i32
  %call94 = call ptr @lj_mem_realloc(ptr noundef %80, ptr noundef %81, i32 noundef %conv90, i32 noundef %conv93)
  %84 = ptrtoint ptr %call94 to i64
  %conv95 = trunc i64 %84 to i32
  %85 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array96 = getelementptr inbounds %struct.GCtab, ptr %85, i32 0, i32 5
  %ptr3297 = getelementptr inbounds %struct.MRef, ptr %array96, i32 0, i32 0
  store i32 %conv95, ptr %ptr3297, align 4, !tbaa !17
  br label %if.end98

if.end98:                                         ; preds = %if.then87, %for.end82
  call void @llvm.lifetime.end.p0(i64 4, ptr %i64) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %array60) #8
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end56
  %86 = load i32, ptr %oldhmask, align 4, !tbaa !8
  %cmp100 = icmp ugt i32 %86, 0
  br i1 %cmp100, label %if.then102, label %if.end126

if.then102:                                       ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr %g103) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i104) #8
  store i32 0, ptr %i104, align 4, !tbaa !8
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc118, %if.then102
  %87 = load i32, ptr %i104, align 4, !tbaa !8
  %88 = load i32, ptr %oldhmask, align 4, !tbaa !8
  %cmp106 = icmp ule i32 %87, %88
  br i1 %cmp106, label %for.body108, label %for.end120

for.body108:                                      ; preds = %for.cond105
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %89 = load ptr, ptr %oldnode, align 8, !tbaa !4
  %90 = load i32, ptr %i104, align 4, !tbaa !8
  %idxprom109 = zext i32 %90 to i64
  %arrayidx110 = getelementptr inbounds %struct.Node, ptr %89, i64 %idxprom109
  store ptr %arrayidx110, ptr %n, align 8, !tbaa !4
  %91 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %91, i32 0, i32 0
  %it111 = getelementptr inbounds %struct.anon, ptr %val, i32 0, i32 1
  %92 = load i32, ptr %it111, align 4, !tbaa !23
  %cmp112 = icmp eq i32 %92, -1
  br i1 %cmp112, label %if.end117, label %if.then114

if.then114:                                       ; preds = %for.body108
  %93 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %n, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.Node, ptr %96, i32 0, i32 1
  %call115 = call ptr @lj_tab_set(ptr noundef %94, ptr noundef %95, ptr noundef %key)
  %97 = load ptr, ptr %n, align 8, !tbaa !4
  %val116 = getelementptr inbounds %struct.Node, ptr %97, i32 0, i32 0
  call void @copyTV(ptr noundef %93, ptr noundef %call115, ptr noundef %val116)
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %for.body108
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %98 = load i32, ptr %i104, align 4, !tbaa !8
  %inc119 = add i32 %98, 1
  store i32 %inc119, ptr %i104, align 4, !tbaa !8
  br label %for.cond105, !llvm.loop !49

for.end120:                                       ; preds = %for.cond105
  %99 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref121 = getelementptr inbounds %struct.lua_State, ptr %99, i32 0, i32 5
  %ptr32122 = getelementptr inbounds %struct.MRef, ptr %glref121, i32 0, i32 0
  %100 = load i32, ptr %ptr32122, align 8, !tbaa !20
  %conv123 = zext i32 %100 to i64
  %101 = inttoptr i64 %conv123 to ptr
  store ptr %101, ptr %g103, align 8, !tbaa !4
  %102 = load ptr, ptr %g103, align 8, !tbaa !4
  %103 = load ptr, ptr %oldnode, align 8, !tbaa !4
  %104 = load i32, ptr %oldhmask, align 4, !tbaa !8
  %add = add i32 %104, 1
  %conv124 = zext i32 %add to i64
  %mul125 = mul i64 %conv124, 24
  call void @lj_mem_free(ptr noundef %102, ptr noundef %103, i64 noundef %mul125)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i104) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %g103) #8
  br label %if.end126

if.end126:                                        ; preds = %for.end120, %if.end99
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldhmask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldasize) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldnode) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_getinth(ptr noundef %t, i32 noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %k = alloca %union.TValue, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %key, ptr %key.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load i32, ptr %key.addr, align 4, !tbaa !8
  %conv = sitofp i32 %0 to double
  store double %conv, ptr %k, align 8, !tbaa !23
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %lo = getelementptr inbounds %struct.anon.1, ptr %k, i32 0, i32 0
  %2 = load i32, ptr %lo, align 8, !tbaa !23
  %hi = getelementptr inbounds %struct.anon.1, ptr %k, i32 0, i32 1
  %3 = load i32, ptr %hi, align 4, !tbaa !23
  %shl = shl i32 %3, 1
  %call = call i32 @hashrot(i32 noundef %2, i32 noundef %shl)
  %call1 = call ptr @hashmask(ptr noundef %1, i32 noundef %call)
  store ptr %call1, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load ptr, ptr %n, align 8, !tbaa !4
  %key2 = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  %it = getelementptr inbounds %struct.anon, ptr %key2, i32 0, i32 1
  %5 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp ult i32 %5, -65537
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %n, align 8, !tbaa !4
  %key4 = getelementptr inbounds %struct.Node, ptr %6, i32 0, i32 1
  %7 = load double, ptr %key4, align 8, !tbaa !23
  %8 = load double, ptr %k, align 8, !tbaa !23
  %cmp5 = fcmp oeq double %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 0
  store ptr %val, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 2
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %11 = load i32, ptr %ptr32, align 8, !tbaa !26
  %conv7 = zext i32 %11 to i64
  %12 = inttoptr i64 %conv7 to ptr
  store ptr %12, ptr %n, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !50

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #8
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @hashmask(ptr noundef %t, i32 noundef %hash) #2 {
entry:
  %t.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %n = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %hash, ptr %hash.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  %1 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv = zext i32 %1 to i64
  %2 = inttoptr i64 %conv to ptr
  store ptr %2, ptr %n, align 8, !tbaa !4
  %3 = load ptr, ptr %n, align 8, !tbaa !4
  %4 = load i32, ptr %hash.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %hmask, align 4, !tbaa !10
  %and = and i32 %4, %6
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds %struct.Node, ptr %3, i64 %idxprom
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  ret ptr %arrayidx
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @hashrot(i32 noundef %lo, i32 noundef %hi) #2 {
entry:
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  store i32 %lo, ptr %lo.addr, align 4, !tbaa !8
  store i32 %hi, ptr %hi.addr, align 4, !tbaa !8
  %0 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %1 = load i32, ptr %lo.addr, align 4, !tbaa !8
  %xor = xor i32 %1, %0
  store i32 %xor, ptr %lo.addr, align 4, !tbaa !8
  %2 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %shl = shl i32 %2, 14
  %3 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %shr = lshr i32 %3, 18
  %or = or i32 %shl, %shr
  store i32 %or, ptr %hi.addr, align 4, !tbaa !8
  %4 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %5 = load i32, ptr %lo.addr, align 4, !tbaa !8
  %sub = sub i32 %5, %4
  store i32 %sub, ptr %lo.addr, align 4, !tbaa !8
  %6 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %shl1 = shl i32 %6, 5
  %7 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %shr2 = lshr i32 %7, 27
  %or3 = or i32 %shl1, %shr2
  store i32 %or3, ptr %hi.addr, align 4, !tbaa !8
  %8 = load i32, ptr %lo.addr, align 4, !tbaa !8
  %9 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %xor4 = xor i32 %9, %8
  store i32 %xor4, ptr %hi.addr, align 4, !tbaa !8
  %10 = load i32, ptr %lo.addr, align 4, !tbaa !8
  %shl5 = shl i32 %10, 13
  %11 = load i32, ptr %lo.addr, align 4, !tbaa !8
  %shr6 = lshr i32 %11, 19
  %or7 = or i32 %shl5, %shr6
  %12 = load i32, ptr %hi.addr, align 4, !tbaa !8
  %sub8 = sub i32 %12, %or7
  store i32 %sub8, ptr %hi.addr, align 4, !tbaa !8
  %13 = load i32, ptr %hi.addr, align 4, !tbaa !8
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_getstr(ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.GCstr, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %hash, align 4, !tbaa !51
  %call = call ptr @hashmask(ptr noundef %0, i32 noundef %2)
  store ptr %call, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load ptr, ptr %n, align 8, !tbaa !4
  %key1 = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  %it = getelementptr inbounds %struct.anon, ptr %key1, i32 0, i32 1
  %4 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp eq i32 %4, -5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %n, align 8, !tbaa !4
  %key2 = getelementptr inbounds %struct.Node, ptr %5, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon, ptr %key2, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %gcptr32, align 8, !tbaa !23
  %conv = zext i32 %7 to i64
  %8 = inttoptr i64 %conv to ptr
  %9 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 0
  store ptr %val, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 2
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %12 = load i32, ptr %ptr32, align 8, !tbaa !26
  %conv5 = zext i32 %12 to i64
  %13 = inttoptr i64 %conv5 to ptr
  store ptr %13, ptr %n, align 8, !tbaa !4
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !52

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_get(ptr noundef %L, ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %tv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %nk = alloca double, align 8
  %k = alloca i32, align 4
  %tv11 = alloca ptr, align 8
  %n = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #8
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %gcptr32, align 8, !tbaa !23
  %conv = zext i32 %5 to i64
  %6 = inttoptr i64 %conv to ptr
  %call = call ptr @lj_tab_getstr(ptr noundef %2, ptr noundef %6)
  store ptr %call, ptr %tv, align 8, !tbaa !4
  %7 = load ptr, ptr %tv, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %8 = load ptr, ptr %tv, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it2 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %it2, align 4, !tbaa !23
  %cmp3 = icmp ult i32 %10, -65537
  br i1 %cmp3, label %if.then5, label %if.else28

if.then5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %nk) #8
  %11 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %12 = load double, ptr %11, align 8, !tbaa !23
  store double %12, ptr %nk, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %13 = load double, ptr %nk, align 8, !tbaa !34
  %conv6 = fptosi double %13 to i32
  store i32 %conv6, ptr %k, align 4, !tbaa !8
  %14 = load double, ptr %nk, align 8, !tbaa !34
  %15 = load i32, ptr %k, align 4, !tbaa !8
  %conv7 = sitofp i32 %15 to double
  %cmp8 = fcmp oeq double %14, %conv7
  br i1 %cmp8, label %if.then10, label %if.else22

if.then10:                                        ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv11) #8
  %16 = load i32, ptr %k, align 4, !tbaa !8
  %17 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp12 = icmp ult i32 %16, %18
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %19 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %19, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  %20 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv14 = zext i32 %20 to i64
  %21 = inttoptr i64 %conv14 to ptr
  %22 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %21, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %23 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %24 = load i32, ptr %k, align 4, !tbaa !8
  %call15 = call ptr @lj_tab_getinth(ptr noundef %23, i32 noundef %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %call15, %cond.false ]
  store ptr %cond, ptr %tv11, align 8, !tbaa !4
  %25 = load ptr, ptr %tv11, align 8, !tbaa !4
  %tobool16 = icmp ne ptr %25, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %cond.end
  %26 = load ptr, ptr %tv11, align 8, !tbaa !4
  store ptr %26, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

if.end18:                                         ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv11) #8
  %cleanup.dest20 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest20, label %cleanup24 [
    i32 0, label %cleanup.cont21
  ]

cleanup.cont21:                                   ; preds = %cleanup19
  br label %if.end23

if.else22:                                        ; preds = %if.then5
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

if.end23:                                         ; preds = %cleanup.cont21
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %if.else22, %if.end23, %cleanup19
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nk) #8
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %unreachable [
    i32 0, label %cleanup.cont27
    i32 1, label %return
    i32 2, label %genlookup
  ]

cleanup.cont27:                                   ; preds = %cleanup24
  br label %if.end43

if.else28:                                        ; preds = %if.else
  %27 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it29 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %it29, align 4, !tbaa !23
  %cmp30 = icmp eq i32 %28, -1
  br i1 %cmp30, label %if.end42, label %if.then32

if.then32:                                        ; preds = %if.else28
  br label %genlookup

genlookup:                                        ; preds = %if.then32, %cleanup24
  %29 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call33 = call ptr @hashkey(ptr noundef %29, ptr noundef %30)
  store ptr %call33, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %genlookup
  %31 = load ptr, ptr %n, align 8, !tbaa !4
  %key34 = getelementptr inbounds %struct.Node, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call35 = call i32 @lj_obj_equal(ptr noundef %key34, ptr noundef %32)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body
  %33 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %33, i32 0, i32 0
  store ptr %val, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end38
  %34 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %34, i32 0, i32 2
  %ptr3239 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %35 = load i32, ptr %ptr3239, align 8, !tbaa !26
  %conv40 = zext i32 %35 to i64
  %36 = inttoptr i64 %conv40 to ptr
  store ptr %36, ptr %n, align 8, !tbaa !4
  %tobool41 = icmp ne ptr %36, null
  br i1 %tobool41, label %do.body, label %do.end, !llvm.loop !53

do.end:                                           ; preds = %do.cond
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.else28
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %cleanup.cont27
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %cleanup.cont
  %37 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref = getelementptr inbounds %struct.lua_State, ptr %37, i32 0, i32 5
  %ptr3245 = getelementptr inbounds %struct.MRef, ptr %glref, i32 0, i32 0
  %38 = load i32, ptr %ptr3245, align 8, !tbaa !20
  %conv46 = zext i32 %38 to i64
  %39 = inttoptr i64 %conv46 to ptr
  %nilnode = getelementptr inbounds %struct.global_State, ptr %39, i32 0, i32 7
  %val47 = getelementptr inbounds %struct.Node, ptr %nilnode, i32 0, i32 0
  store ptr %val47, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end44, %if.then37, %cleanup24, %cleanup
  %40 = load ptr, ptr %retval, align 8
  ret ptr %40

unreachable:                                      ; preds = %cleanup24, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @hashkey(ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %gcptr32, align 8, !tbaa !23
  %conv = zext i32 %5 to i64
  %6 = inttoptr i64 %conv to ptr
  %hash = getelementptr inbounds %struct.GCstr, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %hash, align 8, !tbaa !23
  %call = call ptr @hashmask(ptr noundef %2, i32 noundef %7)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it1 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %it1, align 4, !tbaa !23
  %cmp2 = icmp ult i32 %9, -65537
  br i1 %cmp2, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %lo = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %lo, align 8, !tbaa !23
  %13 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %hi = getelementptr inbounds %struct.anon.1, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %hi, align 4, !tbaa !23
  %shl = shl i32 %14, 1
  %call5 = call i32 @hashrot(i32 noundef %12, i32 noundef %shl)
  %call6 = call ptr @hashmask(ptr noundef %10, i32 noundef %call5)
  store ptr %call6, ptr %retval, align 8
  br label %return

if.else7:                                         ; preds = %if.else
  %15 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it8 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %it8, align 4, !tbaa !23
  %cmp9 = icmp eq i32 %16, -2
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else7
  %17 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it11 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %it11, align 4, !tbaa !23
  %cmp12 = icmp eq i32 %18, -3
  br i1 %cmp12, label %if.then14, label %if.else17

if.then14:                                        ; preds = %lor.lhs.false, %if.else7
  %19 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it15 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %it15, align 4, !tbaa !23
  %sub = sub i32 -2, %21
  %call16 = call ptr @hashmask(ptr noundef %19, i32 noundef %sub)
  store ptr %call16, ptr %retval, align 8
  br label %return

if.else17:                                        ; preds = %lor.lhs.false
  %22 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 0
  %gcptr3218 = getelementptr inbounds %struct.GCRef, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %gcptr3218, align 8, !tbaa !23
  %26 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %27 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 0
  %gcptr3219 = getelementptr inbounds %struct.GCRef, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %gcptr3219, align 8, !tbaa !23
  %add = add i32 %28, -79764919
  %call20 = call i32 @hashrot(i32 noundef %25, i32 noundef %add)
  %call21 = call ptr @hashmask(ptr noundef %22, i32 noundef %call20)
  store ptr %call21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else17, %if.then14, %if.then4, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

declare hidden i32 @lj_obj_equal(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_newkey(ptr noundef %L, ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %nodebase = alloca ptr, align 8
  %collide = alloca ptr, align 8
  %freenode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %nn = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @hashkey(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %n, align 8, !tbaa !4
  %2 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 0
  %it = getelementptr inbounds %struct.anon, ptr %val, i32 0, i32 1
  %3 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %4, i32 0, i32 10
  %5 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end83

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodebase) #8
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %6, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  %7 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv = zext i32 %7 to i64
  %8 = inttoptr i64 %conv to ptr
  store ptr %8, ptr %nodebase, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %collide) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %freenode) #8
  %9 = load ptr, ptr %nodebase, align 8, !tbaa !4
  %freetop = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 3
  %ptr322 = getelementptr inbounds %struct.MRef, ptr %freetop, i32 0, i32 0
  %10 = load i32, ptr %ptr322, align 4, !tbaa !32
  %conv3 = zext i32 %10 to i64
  %11 = inttoptr i64 %conv3 to ptr
  store ptr %11, ptr %freenode, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %12 = load ptr, ptr %freenode, align 8, !tbaa !4
  %13 = load ptr, ptr %nodebase, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %12, %13
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.body
  %14 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @rehashtab(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call7 = call ptr @lj_tab_set(ptr noundef %17, ptr noundef %18, ptr noundef %19)
  store ptr %call7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %20 = load ptr, ptr %freenode, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.Node, ptr %20, i32 -1
  store ptr %incdec.ptr, ptr %freenode, align 8, !tbaa !4
  %key8 = getelementptr inbounds %struct.Node, ptr %incdec.ptr, i32 0, i32 1
  %it9 = getelementptr inbounds %struct.anon, ptr %key8, i32 0, i32 1
  %21 = load i32, ptr %it9, align 4, !tbaa !23
  %cmp10 = icmp eq i32 %21, -1
  %lnot = xor i1 %cmp10, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !54

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %freenode, align 8, !tbaa !4
  %23 = ptrtoint ptr %22 to i64
  %conv12 = trunc i64 %23 to i32
  %24 = load ptr, ptr %nodebase, align 8, !tbaa !4
  %freetop13 = getelementptr inbounds %struct.Node, ptr %24, i32 0, i32 3
  %ptr3214 = getelementptr inbounds %struct.MRef, ptr %freetop13, i32 0, i32 0
  store i32 %conv12, ptr %ptr3214, align 4, !tbaa !32
  %25 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %n, align 8, !tbaa !4
  %key15 = getelementptr inbounds %struct.Node, ptr %26, i32 0, i32 1
  %call16 = call ptr @hashkey(ptr noundef %25, ptr noundef %key15)
  store ptr %call16, ptr %collide, align 8, !tbaa !4
  %27 = load ptr, ptr %collide, align 8, !tbaa !4
  %28 = load ptr, ptr %n, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %27, %28
  br i1 %cmp17, label %if.then19, label %if.else72

if.then19:                                        ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then19
  %29 = load ptr, ptr %collide, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %29, i32 0, i32 2
  %ptr3220 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %30 = load i32, ptr %ptr3220, align 8, !tbaa !26
  %conv21 = zext i32 %30 to i64
  %31 = inttoptr i64 %conv21 to ptr
  %32 = load ptr, ptr %n, align 8, !tbaa !4
  %cmp22 = icmp ne ptr %31, %32
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load ptr, ptr %collide, align 8, !tbaa !4
  %next24 = getelementptr inbounds %struct.Node, ptr %33, i32 0, i32 2
  %ptr3225 = getelementptr inbounds %struct.MRef, ptr %next24, i32 0, i32 0
  %34 = load i32, ptr %ptr3225, align 8, !tbaa !26
  %conv26 = zext i32 %34 to i64
  %35 = inttoptr i64 %conv26 to ptr
  store ptr %35, ptr %collide, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !55

while.end:                                        ; preds = %while.cond
  %36 = load ptr, ptr %freenode, align 8, !tbaa !4
  %37 = ptrtoint ptr %36 to i64
  %conv27 = trunc i64 %37 to i32
  %38 = load ptr, ptr %collide, align 8, !tbaa !4
  %next28 = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 2
  %ptr3229 = getelementptr inbounds %struct.MRef, ptr %next28, i32 0, i32 0
  store i32 %conv27, ptr %ptr3229, align 8, !tbaa !26
  %39 = load ptr, ptr %freenode, align 8, !tbaa !4
  %val30 = getelementptr inbounds %struct.Node, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %n, align 8, !tbaa !4
  %val31 = getelementptr inbounds %struct.Node, ptr %40, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %val30, ptr align 8 %val31, i64 8, i1 false), !tbaa.struct !33
  %41 = load ptr, ptr %freenode, align 8, !tbaa !4
  %key32 = getelementptr inbounds %struct.Node, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %n, align 8, !tbaa !4
  %key33 = getelementptr inbounds %struct.Node, ptr %42, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key32, ptr align 8 %key33, i64 8, i1 false), !tbaa.struct !33
  %43 = load ptr, ptr %freenode, align 8, !tbaa !4
  %next34 = getelementptr inbounds %struct.Node, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %n, align 8, !tbaa !4
  %next35 = getelementptr inbounds %struct.Node, ptr %44, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %next34, ptr align 8 %next35, i64 4, i1 false), !tbaa.struct !56
  %45 = load ptr, ptr %n, align 8, !tbaa !4
  %next36 = getelementptr inbounds %struct.Node, ptr %45, i32 0, i32 2
  %ptr3237 = getelementptr inbounds %struct.MRef, ptr %next36, i32 0, i32 0
  store i32 0, ptr %ptr3237, align 8, !tbaa !26
  %46 = load ptr, ptr %n, align 8, !tbaa !4
  %val38 = getelementptr inbounds %struct.Node, ptr %46, i32 0, i32 0
  %it39 = getelementptr inbounds %struct.anon, ptr %val38, i32 0, i32 1
  store i32 -1, ptr %it39, align 4, !tbaa !23
  br label %while.cond40

while.cond40:                                     ; preds = %if.end70, %while.end
  %47 = load ptr, ptr %freenode, align 8, !tbaa !4
  %next41 = getelementptr inbounds %struct.Node, ptr %47, i32 0, i32 2
  %ptr3242 = getelementptr inbounds %struct.MRef, ptr %next41, i32 0, i32 0
  %48 = load i32, ptr %ptr3242, align 8, !tbaa !26
  %conv43 = zext i32 %48 to i64
  %49 = inttoptr i64 %conv43 to ptr
  %tobool = icmp ne ptr %49, null
  br i1 %tobool, label %while.body44, label %while.end71

while.body44:                                     ; preds = %while.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %nn) #8
  %50 = load ptr, ptr %freenode, align 8, !tbaa !4
  %next45 = getelementptr inbounds %struct.Node, ptr %50, i32 0, i32 2
  %ptr3246 = getelementptr inbounds %struct.MRef, ptr %next45, i32 0, i32 0
  %51 = load i32, ptr %ptr3246, align 8, !tbaa !26
  %conv47 = zext i32 %51 to i64
  %52 = inttoptr i64 %conv47 to ptr
  store ptr %52, ptr %nn, align 8, !tbaa !4
  %53 = load ptr, ptr %nn, align 8, !tbaa !4
  %key48 = getelementptr inbounds %struct.Node, ptr %53, i32 0, i32 1
  %it49 = getelementptr inbounds %struct.anon, ptr %key48, i32 0, i32 1
  %54 = load i32, ptr %it49, align 4, !tbaa !23
  %cmp50 = icmp eq i32 %54, -5
  br i1 %cmp50, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body44
  %55 = load ptr, ptr %nn, align 8, !tbaa !4
  %val52 = getelementptr inbounds %struct.Node, ptr %55, i32 0, i32 0
  %it53 = getelementptr inbounds %struct.anon, ptr %val52, i32 0, i32 1
  %56 = load i32, ptr %it53, align 4, !tbaa !23
  %cmp54 = icmp eq i32 %56, -1
  br i1 %cmp54, label %if.else, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true
  %57 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %nn, align 8, !tbaa !4
  %key57 = getelementptr inbounds %struct.Node, ptr %58, i32 0, i32 1
  %59 = getelementptr inbounds %struct.anon, ptr %key57, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %59, i32 0, i32 0
  %60 = load i32, ptr %gcptr32, align 8, !tbaa !23
  %conv58 = zext i32 %60 to i64
  %61 = inttoptr i64 %conv58 to ptr
  %hash = getelementptr inbounds %struct.GCstr, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %hash, align 8, !tbaa !23
  %call59 = call ptr @hashmask(ptr noundef %57, i32 noundef %62)
  %63 = load ptr, ptr %n, align 8, !tbaa !4
  %cmp60 = icmp eq ptr %call59, %63
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %land.lhs.true56
  %64 = load ptr, ptr %freenode, align 8, !tbaa !4
  %next63 = getelementptr inbounds %struct.Node, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %nn, align 8, !tbaa !4
  %next64 = getelementptr inbounds %struct.Node, ptr %65, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %next63, ptr align 8 %next64, i64 4, i1 false), !tbaa.struct !56
  %66 = load ptr, ptr %nn, align 8, !tbaa !4
  %next65 = getelementptr inbounds %struct.Node, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %n, align 8, !tbaa !4
  %next66 = getelementptr inbounds %struct.Node, ptr %67, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %next65, ptr align 8 %next66, i64 4, i1 false), !tbaa.struct !56
  %68 = load ptr, ptr %nn, align 8, !tbaa !4
  %69 = ptrtoint ptr %68 to i64
  %conv67 = trunc i64 %69 to i32
  %70 = load ptr, ptr %n, align 8, !tbaa !4
  %next68 = getelementptr inbounds %struct.Node, ptr %70, i32 0, i32 2
  %ptr3269 = getelementptr inbounds %struct.MRef, ptr %next68, i32 0, i32 0
  store i32 %conv67, ptr %ptr3269, align 8, !tbaa !26
  br label %if.end70

if.else:                                          ; preds = %land.lhs.true56, %land.lhs.true, %while.body44
  %71 = load ptr, ptr %nn, align 8, !tbaa !4
  store ptr %71, ptr %freenode, align 8, !tbaa !4
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.then62
  call void @llvm.lifetime.end.p0(i64 8, ptr %nn) #8
  br label %while.cond40, !llvm.loop !57

while.end71:                                      ; preds = %while.cond40
  br label %if.end80

if.else72:                                        ; preds = %do.end
  %72 = load ptr, ptr %n, align 8, !tbaa !4
  %next73 = getelementptr inbounds %struct.Node, ptr %72, i32 0, i32 2
  %ptr3274 = getelementptr inbounds %struct.MRef, ptr %next73, i32 0, i32 0
  %73 = load i32, ptr %ptr3274, align 8, !tbaa !26
  %74 = load ptr, ptr %freenode, align 8, !tbaa !4
  %next75 = getelementptr inbounds %struct.Node, ptr %74, i32 0, i32 2
  %ptr3276 = getelementptr inbounds %struct.MRef, ptr %next75, i32 0, i32 0
  store i32 %73, ptr %ptr3276, align 8, !tbaa !26
  %75 = load ptr, ptr %freenode, align 8, !tbaa !4
  %76 = ptrtoint ptr %75 to i64
  %conv77 = trunc i64 %76 to i32
  %77 = load ptr, ptr %n, align 8, !tbaa !4
  %next78 = getelementptr inbounds %struct.Node, ptr %77, i32 0, i32 2
  %ptr3279 = getelementptr inbounds %struct.MRef, ptr %next78, i32 0, i32 0
  store i32 %conv77, ptr %ptr3279, align 8, !tbaa !26
  %78 = load ptr, ptr %freenode, align 8, !tbaa !4
  store ptr %78, ptr %n, align 8, !tbaa !4
  br label %if.end80

if.end80:                                         ; preds = %if.else72, %while.end71
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %freenode) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %collide) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodebase) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup109 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end83

if.end83:                                         ; preds = %cleanup.cont, %lor.lhs.false
  %79 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %80 = load i64, ptr %79, align 8, !tbaa !23
  %81 = load ptr, ptr %n, align 8, !tbaa !4
  %key84 = getelementptr inbounds %struct.Node, ptr %81, i32 0, i32 1
  store i64 %80, ptr %key84, align 8, !tbaa !23
  %82 = load ptr, ptr %n, align 8, !tbaa !4
  %key85 = getelementptr inbounds %struct.Node, ptr %82, i32 0, i32 1
  %83 = load i64, ptr %key85, align 8, !tbaa !23
  %cmp86 = icmp eq i64 %83, -9223372036854775808
  %lnot88 = xor i1 %cmp86, true
  %lnot89 = xor i1 %lnot88, true
  %lnot.ext = zext i1 %lnot89 to i32
  %conv90 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv90, i64 0)
  %tobool91 = icmp ne i64 %expval, 0
  br i1 %tobool91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end83
  %84 = load ptr, ptr %n, align 8, !tbaa !4
  %key93 = getelementptr inbounds %struct.Node, ptr %84, i32 0, i32 1
  store i64 0, ptr %key93, align 8, !tbaa !23
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end83
  %85 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %marked = getelementptr inbounds %struct.GChead, ptr %85, i32 0, i32 1
  %86 = load i8, ptr %marked, align 4, !tbaa !23
  %conv95 = zext i8 %86 to i32
  %and = and i32 %conv95, 4
  %tobool96 = icmp ne i32 %and, 0
  %lnot97 = xor i1 %tobool96, true
  %lnot99 = xor i1 %lnot97, true
  %lnot.ext100 = zext i1 %lnot99 to i32
  %conv101 = sext i32 %lnot.ext100 to i64
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0)
  %tobool103 = icmp ne i64 %expval102, 0
  br i1 %tobool103, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.end94
  %87 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %glref = getelementptr inbounds %struct.lua_State, ptr %87, i32 0, i32 5
  %ptr32105 = getelementptr inbounds %struct.MRef, ptr %glref, i32 0, i32 0
  %88 = load i32, ptr %ptr32105, align 8, !tbaa !20
  %conv106 = zext i32 %88 to i64
  %89 = inttoptr i64 %conv106 to ptr
  %90 = load ptr, ptr %t.addr, align 8, !tbaa !4
  call void @lj_gc_barrierback(ptr noundef %89, ptr noundef %90)
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end94
  %91 = load ptr, ptr %n, align 8, !tbaa !4
  %val108 = getelementptr inbounds %struct.Node, ptr %91, i32 0, i32 0
  store ptr %val108, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %if.end107, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  %92 = load ptr, ptr %retval, align 8
  ret ptr %92
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_set(ptr noundef %L, ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %nk = alloca double, align 8
  %k = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %nomm = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 3
  store i8 0, ptr %nomm, align 2, !tbaa !15
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp eq i32 %2, -5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %gcptr32, align 8, !tbaa !23
  %conv = zext i32 %7 to i64
  %8 = inttoptr i64 %conv to ptr
  %call = call ptr @lj_tab_setstr(ptr noundef %3, ptr noundef %4, ptr noundef %8)
  store ptr %call, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it1 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %it1, align 4, !tbaa !23
  %cmp2 = icmp ult i32 %10, -65537
  br i1 %cmp2, label %if.then4, label %if.else19

if.then4:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %nk) #8
  %11 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %12 = load double, ptr %11, align 8, !tbaa !23
  store double %12, ptr %nk, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %13 = load double, ptr %nk, align 8, !tbaa !34
  %conv5 = fptosi double %13 to i32
  store i32 %conv5, ptr %k, align 4, !tbaa !8
  %14 = load double, ptr %nk, align 8, !tbaa !34
  %15 = load i32, ptr %k, align 4, !tbaa !8
  %conv6 = sitofp i32 %15 to double
  %cmp7 = fcmp oeq double %14, %conv6
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then4
  %16 = load i32, ptr %k, align 4, !tbaa !8
  %17 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp10 = icmp ult i32 %16, %18
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %19 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %19, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  %20 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv12 = zext i32 %20 to i64
  %21 = inttoptr i64 %conv12 to ptr
  %22 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %21, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  %23 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %25 = load i32, ptr %k, align 4, !tbaa !8
  %call13 = call ptr @lj_tab_setinth(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %call13, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  %26 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %27 = load double, ptr %26, align 8, !tbaa !23
  %28 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %29 = load double, ptr %28, align 8, !tbaa !23
  %cmp14 = fcmp une double %27, %29
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %30 = load ptr, ptr %L.addr, align 8, !tbaa !4
  call void @lj_err_msg(ptr noundef %30, i32 noundef 154) #9
  unreachable

if.end17:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nk) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25

if.else19:                                        ; preds = %if.else
  %31 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it20 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %it20, align 4, !tbaa !23
  %cmp21 = icmp eq i32 %32, -1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else19
  %33 = load ptr, ptr %L.addr, align 8, !tbaa !4
  call void @lj_err_msg(ptr noundef %33, i32 noundef 173) #9
  unreachable

if.end24:                                         ; preds = %if.else19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %cleanup.cont
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  %34 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call27 = call ptr @hashkey(ptr noundef %34, ptr noundef %35)
  store ptr %call27, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end26
  %36 = load ptr, ptr %n, align 8, !tbaa !4
  %key28 = getelementptr inbounds %struct.Node, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call29 = call i32 @lj_obj_equal(ptr noundef %key28, ptr noundef %37)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body
  %38 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 0
  store ptr %val, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

if.end31:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end31
  %39 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %39, i32 0, i32 2
  %ptr3232 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %40 = load i32, ptr %ptr3232, align 8, !tbaa !26
  %conv33 = zext i32 %40 to i64
  %41 = inttoptr i64 %conv33 to ptr
  store ptr %41, ptr %n, align 8, !tbaa !4
  %tobool34 = icmp ne ptr %41, null
  br i1 %tobool34, label %do.body, label %do.end, !llvm.loop !58

do.end:                                           ; preds = %do.cond
  %42 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call35 = call ptr @lj_tab_newkey(ptr noundef %42, ptr noundef %43, ptr noundef %44)
  store ptr %call35, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %do.end, %if.then30, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  %45 = load ptr, ptr %retval, align 8
  ret ptr %45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal void @lj_gc_barrierback(ptr noundef %g, ptr noundef %t) #2 {
entry:
  %g.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %o = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  store ptr %0, ptr %o, align 8, !tbaa !4
  %1 = load ptr, ptr %o, align 8, !tbaa !4
  %marked = getelementptr inbounds %struct.GChead, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %marked, align 4, !tbaa !23
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 251
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, ptr %marked, align 4, !tbaa !23
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %gc = getelementptr inbounds %struct.global_State, ptr %3, i32 0, i32 5
  %grayagain = getelementptr inbounds %struct.GCState, ptr %gc, i32 0, i32 10
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %grayagain, i32 0, i32 0
  %4 = load i32, ptr %gcptr32, align 4, !tbaa !59
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %gclist = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 6
  %gcptr322 = getelementptr inbounds %struct.GCRef, ptr %gclist, i32 0, i32 0
  store i32 %4, ptr %gcptr322, align 4, !tbaa !60
  %6 = load ptr, ptr %o, align 8, !tbaa !4
  %7 = ptrtoint ptr %6 to i64
  %conv3 = trunc i64 %7 to i32
  %8 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %gc4 = getelementptr inbounds %struct.global_State, ptr %8, i32 0, i32 5
  %grayagain5 = getelementptr inbounds %struct.GCState, ptr %gc4, i32 0, i32 10
  %gcptr326 = getelementptr inbounds %struct.GCRef, ptr %grayagain5, i32 0, i32 0
  store i32 %conv3, ptr %gcptr326, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_setinth(ptr noundef %L, ptr noundef %t, i32 noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %k = alloca %union.TValue, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %key, ptr %key.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load i32, ptr %key.addr, align 4, !tbaa !8
  %conv = sitofp i32 %0 to double
  store double %conv, ptr %k, align 8, !tbaa !23
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %lo = getelementptr inbounds %struct.anon.1, ptr %k, i32 0, i32 0
  %2 = load i32, ptr %lo, align 8, !tbaa !23
  %hi = getelementptr inbounds %struct.anon.1, ptr %k, i32 0, i32 1
  %3 = load i32, ptr %hi, align 4, !tbaa !23
  %shl = shl i32 %3, 1
  %call = call i32 @hashrot(i32 noundef %2, i32 noundef %shl)
  %call1 = call ptr @hashmask(ptr noundef %1, i32 noundef %call)
  store ptr %call1, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load ptr, ptr %n, align 8, !tbaa !4
  %key2 = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  %it = getelementptr inbounds %struct.anon, ptr %key2, i32 0, i32 1
  %5 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp ult i32 %5, -65537
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %n, align 8, !tbaa !4
  %key4 = getelementptr inbounds %struct.Node, ptr %6, i32 0, i32 1
  %7 = load double, ptr %key4, align 8, !tbaa !23
  %8 = load double, ptr %k, align 8, !tbaa !23
  %cmp5 = fcmp oeq double %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 0
  store ptr %val, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 2
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %11 = load i32, ptr %ptr32, align 8, !tbaa !26
  %conv7 = zext i32 %11 to i64
  %12 = inttoptr i64 %conv7 to ptr
  store ptr %12, ptr %n, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !61

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call8 = call ptr @lj_tab_newkey(ptr noundef %13, ptr noundef %14, ptr noundef %k)
  store ptr %call8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #8
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_setstr(ptr noundef %L, ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %k = alloca %union.TValue, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %hash = getelementptr inbounds %struct.GCstr, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %hash, align 4, !tbaa !51
  %call = call ptr @hashmask(ptr noundef %0, i32 noundef %2)
  store ptr %call, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load ptr, ptr %n, align 8, !tbaa !4
  %key1 = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  %it = getelementptr inbounds %struct.anon, ptr %key1, i32 0, i32 1
  %4 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp eq i32 %4, -5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %n, align 8, !tbaa !4
  %key2 = getelementptr inbounds %struct.Node, ptr %5, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon, ptr %key2, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %gcptr32, align 8, !tbaa !23
  %conv = zext i32 %7 to i64
  %8 = inttoptr i64 %conv to ptr
  %9 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 0
  store ptr %val, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 2
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %12 = load i32, ptr %ptr32, align 8, !tbaa !26
  %conv5 = zext i32 %12 to i64
  %13 = inttoptr i64 %conv5 to ptr
  store ptr %13, ptr %n, align 8, !tbaa !4
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !62

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @setstrV(ptr noundef %14, ptr noundef %k, ptr noundef %15)
  %16 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call6 = call ptr @lj_tab_newkey(ptr noundef %16, ptr noundef %17, ptr noundef %k)
  store ptr %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #8
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setstrV(ptr noundef %L, ptr noundef %o, ptr noundef %v) #2 {
entry:
  %L.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %v.addr, align 8, !tbaa !4
  call void @setgcV(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -5)
  ret void
}

; Function Attrs: noreturn
declare hidden void @lj_err_msg(ptr noundef, i32 noundef) #7

; Function Attrs: nounwind uwtable
define hidden i32 @lj_tab_next(ptr noundef %L, ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @keyindex(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %i, align 4, !tbaa !8
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 9
  %6 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %7, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  %8 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv = zext i32 %8 to i64
  %9 = inttoptr i64 %conv to ptr
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %9, i64 %idxprom
  %it = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  %11 = load i32, ptr %it, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %11, -1
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !8
  call void @setintV(ptr noundef %12, i32 noundef %13)
  %14 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %union.TValue, ptr %15, i64 1
  %16 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array3 = getelementptr inbounds %struct.GCtab, ptr %16, i32 0, i32 5
  %ptr324 = getelementptr inbounds %struct.MRef, ptr %array3, i32 0, i32 0
  %17 = load i32, ptr %ptr324, align 4, !tbaa !17
  %conv5 = zext i32 %17 to i64
  %18 = inttoptr i64 %conv5 to ptr
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom6 = zext i32 %19 to i64
  %arrayidx7 = getelementptr inbounds %union.TValue, ptr %18, i64 %idxprom6
  call void @copyTV(ptr noundef %14, ptr noundef %add.ptr, ptr noundef %arrayidx7)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %inc8 = add i32 %20, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize9 = getelementptr inbounds %struct.GCtab, ptr %21, i32 0, i32 9
  %22 = load i32, ptr %asize9, align 4, !tbaa !19
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub i32 %23, %22
  store i32 %sub, ptr %i, align 4, !tbaa !8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc26, %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %25 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %25, i32 0, i32 10
  %26 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp11 = icmp ule i32 %24, %26
  br i1 %cmp11, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %27 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %27, i32 0, i32 8
  %ptr3214 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  %28 = load i32, ptr %ptr3214, align 4, !tbaa !22
  %conv15 = zext i32 %28 to i64
  %29 = inttoptr i64 %conv15 to ptr
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom16 = zext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds %struct.Node, ptr %29, i64 %idxprom16
  store ptr %arrayidx17, ptr %n, align 8, !tbaa !4
  %31 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %31, i32 0, i32 0
  %it18 = getelementptr inbounds %struct.anon, ptr %val, i32 0, i32 1
  %32 = load i32, ptr %it18, align 4, !tbaa !23
  %cmp19 = icmp eq i32 %32, -1
  br i1 %cmp19, label %if.end25, label %if.then21

if.then21:                                        ; preds = %for.body13
  %33 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %n, align 8, !tbaa !4
  %key22 = getelementptr inbounds %struct.Node, ptr %35, i32 0, i32 1
  call void @copyTV(ptr noundef %33, ptr noundef %34, ptr noundef %key22)
  %36 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %add.ptr23 = getelementptr inbounds %union.TValue, ptr %37, i64 1
  %38 = load ptr, ptr %n, align 8, !tbaa !4
  %val24 = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 0
  call void @copyTV(ptr noundef %36, ptr noundef %add.ptr23, ptr noundef %val24)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.body13
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc26

for.inc26:                                        ; preds = %cleanup.cont
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %inc27 = add i32 %39, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !8
  br label %for.cond10, !llvm.loop !64

for.end28:                                        ; preds = %for.cond10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %for.end28, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @keyindex(ptr noundef %L, ptr noundef %t, ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %tmp = alloca %union.TValue, align 8
  %nk = alloca double, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp ult i32 %1, -65537
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nk) #8
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %3 = load double, ptr %2, align 8, !tbaa !23
  store double %3, ptr %nk, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %4 = load double, ptr %nk, align 8, !tbaa !34
  %conv = fptosi double %4 to i32
  store i32 %conv, ptr %k, align 4, !tbaa !8
  %5 = load i32, ptr %k, align 4, !tbaa !8
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load double, ptr %nk, align 8, !tbaa !34
  %9 = load i32, ptr %k, align 4, !tbaa !8
  %conv3 = sitofp i32 %9 to double
  %cmp4 = fcmp oeq double %8, %conv3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %10 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nk) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8

if.end8:                                          ; preds = %cleanup.cont, %entry
  %11 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it9 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %it9, align 4, !tbaa !23
  %cmp10 = icmp eq i32 %12, -1
  br i1 %cmp10, label %if.end28, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %13 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call ptr @hashkey(ptr noundef %13, ptr noundef %14)
  store ptr %call, ptr %n, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then12
  %15 = load ptr, ptr %n, align 8, !tbaa !4
  %key13 = getelementptr inbounds %struct.Node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call14 = call i32 @lj_obj_equal(ptr noundef %key13, ptr noundef %16)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then15, label %if.end19

if.then15:                                        ; preds = %do.body
  %17 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize16 = getelementptr inbounds %struct.GCtab, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %asize16, align 4, !tbaa !19
  %19 = load ptr, ptr %n, align 8, !tbaa !4
  %20 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.GCtab, ptr %20, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node, i32 0, i32 0
  %21 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv17 = zext i32 %21 to i64
  %22 = inttoptr i64 %conv17 to ptr
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv18 = trunc i64 %sub.ptr.div to i32
  %add = add i32 %18, %conv18
  store i32 %add, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

if.end19:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  %23 = load ptr, ptr %n, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Node, ptr %23, i32 0, i32 2
  %ptr3220 = getelementptr inbounds %struct.MRef, ptr %next, i32 0, i32 0
  %24 = load i32, ptr %ptr3220, align 8, !tbaa !26
  %conv21 = zext i32 %24 to i64
  %25 = inttoptr i64 %conv21 to ptr
  store ptr %25, ptr %n, align 8, !tbaa !4
  %tobool22 = icmp ne ptr %25, null
  br i1 %tobool22, label %do.body, label %do.end, !llvm.loop !65

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %hi = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %hi, align 4, !tbaa !23
  %cmp23 = icmp eq i32 %27, -98305
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.end
  %28 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %lo = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %lo, align 8, !tbaa !23
  %sub = sub i32 %29, 1
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

if.end26:                                         ; preds = %do.end
  %30 = load ptr, ptr %L.addr, align 8, !tbaa !4
  call void @lj_err_msg(ptr noundef %30, i32 noundef 192) #9
  unreachable

cleanup27:                                        ; preds = %if.then25, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  br label %cleanup29

if.end28:                                         ; preds = %if.end8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %cleanup27, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setintV(ptr noundef %o, i32 noundef %i) #2 {
entry:
  %o.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !8
  %0 = load i32, ptr %i.addr, align 4, !tbaa !8
  %conv = sitofp i32 %0 to double
  %1 = load ptr, ptr %o.addr, align 8, !tbaa !4
  store double %conv, ptr %1, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_tab_len(ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %asize, align 4, !tbaa !19
  store i32 %1, ptr %j, align 4, !tbaa !8
  %2 = load i32, ptr %j, align 4, !tbaa !8
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %3, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  %4 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv = zext i32 %4 to i64
  %5 = inttoptr i64 %conv to ptr
  %6 = load i32, ptr %j, align 4, !tbaa !8
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %5, i64 %idxprom
  %it = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  %7 = load i32, ptr %it, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %7, -1
  br i1 %cmp1, label %if.then, label %if.end17

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %j, align 4, !tbaa !8
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %sub3 = sub i32 %8, %9
  %cmp4 = icmp ugt i32 %sub3, 1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %add = add i32 %10, %11
  %div = udiv i32 %add, 2
  store i32 %div, ptr %m, align 4, !tbaa !8
  %12 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array6 = getelementptr inbounds %struct.GCtab, ptr %12, i32 0, i32 5
  %ptr327 = getelementptr inbounds %struct.MRef, ptr %array6, i32 0, i32 0
  %13 = load i32, ptr %ptr327, align 4, !tbaa !17
  %conv8 = zext i32 %13 to i64
  %14 = inttoptr i64 %conv8 to ptr
  %15 = load i32, ptr %m, align 4, !tbaa !8
  %sub9 = sub i32 %15, 1
  %idxprom10 = zext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds %union.TValue, ptr %14, i64 %idxprom10
  %it12 = getelementptr inbounds %struct.anon, ptr %arrayidx11, i32 0, i32 1
  %16 = load i32, ptr %it12, align 4, !tbaa !23
  %cmp13 = icmp eq i32 %16, -1
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %while.body
  %17 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %17, ptr %j, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %while.body
  %18 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %18, ptr %i, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  br label %while.cond, !llvm.loop !66

while.end:                                        ; preds = %while.cond
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %sub16 = sub i32 %19, 1
  store i32 %sub16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true, %entry
  %20 = load i32, ptr %j, align 4, !tbaa !8
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end17
  %21 = load i32, ptr %j, align 4, !tbaa !8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %j, align 4, !tbaa !8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end17
  %22 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %hmask, align 4, !tbaa !10
  %cmp20 = icmp ule i32 %23, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %24 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %25 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %26 = load i32, ptr %j, align 4, !tbaa !8
  %call = call i32 @unbound_search(ptr noundef %25, i32 noundef %26)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @unbound_search(ptr noundef %t, i32 noundef %j) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %j.addr = alloca i32, align 4
  %tv = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %m = alloca i32, align 4
  %tvb = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %j, ptr %j.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load i32, ptr %j.addr, align 4, !tbaa !8
  store i32 %0, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr %j.addr, align 4, !tbaa !8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %j.addr, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %j.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array, i32 0, i32 0
  %6 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv = zext i32 %6 to i64
  %7 = inttoptr i64 %conv to ptr
  %8 = load i32, ptr %j.addr, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %7, i64 %idxprom
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %10 = load i32, ptr %j.addr, align 4, !tbaa !8
  %call = call ptr @lj_tab_getinth(ptr noundef %9, i32 noundef %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %call, %cond.false ]
  store ptr %cond, ptr %tv, align 8, !tbaa !4
  %tobool = icmp ne ptr %cond, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %11 = load ptr, ptr %tv, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %it, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %12, -1
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %13 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ]
  br i1 %13, label %while.body, label %while.end28

while.body:                                       ; preds = %land.end
  %14 = load i32, ptr %j.addr, align 4, !tbaa !8
  store i32 %14, ptr %i, align 4, !tbaa !8
  %15 = load i32, ptr %j.addr, align 4, !tbaa !8
  %mul = mul i32 %15, 2
  store i32 %mul, ptr %j.addr, align 4, !tbaa !8
  %16 = load i32, ptr %j.addr, align 4, !tbaa !8
  %cmp3 = icmp ugt i32 %16, 2147483645
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %while.cond5

while.cond5:                                      ; preds = %while.body26, %if.then
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %18 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize6 = getelementptr inbounds %struct.GCtab, ptr %18, i32 0, i32 9
  %19 = load i32, ptr %asize6, align 4, !tbaa !19
  %cmp7 = icmp ult i32 %17, %19
  br i1 %cmp7, label %cond.true9, label %cond.false15

cond.true9:                                       ; preds = %while.cond5
  %20 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array10 = getelementptr inbounds %struct.GCtab, ptr %20, i32 0, i32 5
  %ptr3211 = getelementptr inbounds %struct.MRef, ptr %array10, i32 0, i32 0
  %21 = load i32, ptr %ptr3211, align 4, !tbaa !17
  %conv12 = zext i32 %21 to i64
  %22 = inttoptr i64 %conv12 to ptr
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds %union.TValue, ptr %22, i64 %idxprom13
  br label %cond.end17

cond.false15:                                     ; preds = %while.cond5
  %24 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %call16 = call ptr @lj_tab_getinth(ptr noundef %24, i32 noundef %25)
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false15, %cond.true9
  %cond18 = phi ptr [ %arrayidx14, %cond.true9 ], [ %call16, %cond.false15 ]
  store ptr %cond18, ptr %tv, align 8, !tbaa !4
  %tobool19 = icmp ne ptr %cond18, null
  br i1 %tobool19, label %land.rhs20, label %land.end25

land.rhs20:                                       ; preds = %cond.end17
  %26 = load ptr, ptr %tv, align 8, !tbaa !4
  %it21 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %it21, align 4, !tbaa !23
  %cmp22 = icmp eq i32 %27, -1
  %lnot24 = xor i1 %cmp22, true
  br label %land.end25

land.end25:                                       ; preds = %land.rhs20, %cond.end17
  %28 = phi i1 [ false, %cond.end17 ], [ %lnot24, %land.rhs20 ]
  br i1 %28, label %while.body26, label %while.end

while.body26:                                     ; preds = %land.end25
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %inc27 = add i32 %29, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !8
  br label %while.cond5, !llvm.loop !67

while.end:                                        ; preds = %land.end25
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub i32 %30, 1
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !68

while.end28:                                      ; preds = %land.end
  br label %while.cond29

while.cond29:                                     ; preds = %if.end52, %while.end28
  %31 = load i32, ptr %j.addr, align 4, !tbaa !8
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %sub30 = sub i32 %31, %32
  %cmp31 = icmp ugt i32 %sub30, 1
  br i1 %cmp31, label %while.body33, label %while.end53

while.body33:                                     ; preds = %while.cond29
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %34 = load i32, ptr %j.addr, align 4, !tbaa !8
  %add = add i32 %33, %34
  %div = udiv i32 %add, 2
  store i32 %div, ptr %m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tvb) #8
  %35 = load i32, ptr %m, align 4, !tbaa !8
  %36 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize34 = getelementptr inbounds %struct.GCtab, ptr %36, i32 0, i32 9
  %37 = load i32, ptr %asize34, align 4, !tbaa !19
  %cmp35 = icmp ult i32 %35, %37
  br i1 %cmp35, label %cond.true37, label %cond.false43

cond.true37:                                      ; preds = %while.body33
  %38 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array38 = getelementptr inbounds %struct.GCtab, ptr %38, i32 0, i32 5
  %ptr3239 = getelementptr inbounds %struct.MRef, ptr %array38, i32 0, i32 0
  %39 = load i32, ptr %ptr3239, align 4, !tbaa !17
  %conv40 = zext i32 %39 to i64
  %40 = inttoptr i64 %conv40 to ptr
  %41 = load i32, ptr %m, align 4, !tbaa !8
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds %union.TValue, ptr %40, i64 %idxprom41
  br label %cond.end45

cond.false43:                                     ; preds = %while.body33
  %42 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %43 = load i32, ptr %m, align 4, !tbaa !8
  %call44 = call ptr @lj_tab_getinth(ptr noundef %42, i32 noundef %43)
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false43, %cond.true37
  %cond46 = phi ptr [ %arrayidx42, %cond.true37 ], [ %call44, %cond.false43 ]
  store ptr %cond46, ptr %tvb, align 8, !tbaa !4
  %44 = load ptr, ptr %tvb, align 8, !tbaa !4
  %tobool47 = icmp ne ptr %44, null
  br i1 %tobool47, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end45
  %45 = load ptr, ptr %tvb, align 8, !tbaa !4
  %it48 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %it48, align 4, !tbaa !23
  %cmp49 = icmp eq i32 %46, -1
  br i1 %cmp49, label %if.else, label %if.then51

if.then51:                                        ; preds = %land.lhs.true
  %47 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %47, ptr %i, align 4, !tbaa !8
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true, %cond.end45
  %48 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %48, ptr %j.addr, align 4, !tbaa !8
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then51
  call void @llvm.lifetime.end.p0(i64 8, ptr %tvb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  br label %while.cond29, !llvm.loop !69

while.end53:                                      ; preds = %while.cond29
  %49 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %49, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end53, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #8
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

declare hidden ptr @lj_mem_newgco(ptr noundef, i32 noundef) #5

declare hidden ptr @lj_mem_realloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal void @newhpart(ptr noundef %L, ptr noundef %t, i32 noundef %hbits) #2 {
entry:
  %L.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %hbits.addr = alloca i32, align 4
  %hsize = alloca i32, align 4
  %node = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store i32 %hbits, ptr %hbits.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hsize) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8
  %0 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %0, 26
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %L.addr, align 8, !tbaa !4
  call void @lj_err_msg(ptr noundef %1, i32 noundef 139) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %hbits.addr, align 4, !tbaa !8
  %shl = shl i32 1, %2
  store i32 %shl, ptr %hsize, align 4, !tbaa !8
  %3 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %4 = load i32, ptr %hsize, align 4, !tbaa !8
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 24
  %conv1 = trunc i64 %mul to i32
  %call = call ptr @lj_mem_realloc(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef %conv1)
  store ptr %call, ptr %node, align 8, !tbaa !4
  %5 = load ptr, ptr %node, align 8, !tbaa !4
  %6 = load i32, ptr %hsize, align 4, !tbaa !8
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Node, ptr %5, i64 %idxprom
  %7 = ptrtoint ptr %arrayidx to i64
  %conv2 = trunc i64 %7 to i32
  %8 = load ptr, ptr %node, align 8, !tbaa !4
  %freetop = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 3
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %freetop, i32 0, i32 0
  store i32 %conv2, ptr %ptr32, align 4, !tbaa !32
  %9 = load ptr, ptr %node, align 8, !tbaa !4
  %10 = ptrtoint ptr %9 to i64
  %conv3 = trunc i64 %10 to i32
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node4 = getelementptr inbounds %struct.GCtab, ptr %11, i32 0, i32 8
  %ptr325 = getelementptr inbounds %struct.MRef, ptr %node4, i32 0, i32 0
  store i32 %conv3, ptr %ptr325, align 4, !tbaa !22
  %12 = load i32, ptr %hsize, align 4, !tbaa !8
  %sub = sub i32 %12, 1
  %13 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask = getelementptr inbounds %struct.GCtab, ptr %13, i32 0, i32 10
  store i32 %sub, ptr %hmask, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %hsize) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @countarray(ptr noundef %t, ptr noundef %bins) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %bins.addr = alloca ptr, align 8
  %na = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i32, align 4
  %top = alloca i32, align 4
  %array = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %bins, ptr %bins.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %na) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %asize, align 4, !tbaa !19
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28

if.end:                                           ; preds = %entry
  store i32 0, ptr %b, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %na, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.end
  %2 = load i32, ptr %b, align 4, !tbaa !8
  %cmp1 = icmp ult i32 %2, 28
  br i1 %cmp1, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %top) #8
  %3 = load i32, ptr %b, align 4, !tbaa !8
  %shl = shl i32 2, %3
  store i32 %shl, ptr %top, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #8
  %4 = load i32, ptr %top, align 4, !tbaa !8
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize2 = getelementptr inbounds %struct.GCtab, ptr %5, i32 0, i32 9
  %6 = load i32, ptr %asize2, align 4, !tbaa !19
  %cmp3 = icmp uge i32 %4, %6
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %asize5 = getelementptr inbounds %struct.GCtab, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %asize5, align 4, !tbaa !19
  %sub = sub i32 %8, 1
  store i32 %sub, ptr %top, align 4, !tbaa !8
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %10 = load i32, ptr %top, align 4, !tbaa !8
  %cmp6 = icmp ugt i32 %9, %10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.body
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %array10 = getelementptr inbounds %struct.GCtab, ptr %11, i32 0, i32 5
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %array10, i32 0, i32 0
  %12 = load i32, ptr %ptr32, align 4, !tbaa !17
  %conv = zext i32 %12 to i64
  %13 = inttoptr i64 %conv to ptr
  store ptr %13, ptr %array, align 8, !tbaa !4
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %15 = load i32, ptr %top, align 4, !tbaa !8
  %cmp12 = icmp ule i32 %14, %15
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond11
  %16 = load ptr, ptr %array, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds %union.TValue, ptr %16, i64 %idxprom
  %it = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  %18 = load i32, ptr %it, align 4, !tbaa !23
  %cmp15 = icmp eq i32 %18, -1
  br i1 %cmp15, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.body14
  %19 = load i32, ptr %n, align 4, !tbaa !8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %n, align 4, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %inc19 = add i32 %20, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !8
  br label %for.cond11, !llvm.loop !70

for.end:                                          ; preds = %for.cond11
  %21 = load i32, ptr %n, align 4, !tbaa !8
  %22 = load ptr, ptr %bins.addr, align 8, !tbaa !4
  %23 = load i32, ptr %b, align 4, !tbaa !8
  %idxprom20 = zext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %22, i64 %idxprom20
  %24 = load i32, ptr %arrayidx21, align 4, !tbaa !8
  %add = add i32 %24, %21
  store i32 %add, ptr %arrayidx21, align 4, !tbaa !8
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %26 = load i32, ptr %na, align 4, !tbaa !8
  %add22 = add i32 %26, %25
  store i32 %add22, ptr %na, align 4, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %top) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end27
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc25

for.inc25:                                        ; preds = %cleanup.cont
  %27 = load i32, ptr %b, align 4, !tbaa !8
  %inc26 = add i32 %27, 1
  store i32 %inc26, ptr %b, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !71

for.end27:                                        ; preds = %cleanup, %for.cond
  %28 = load i32, ptr %na, align 4, !tbaa !8
  store i32 %28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %for.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %na) #8
  %29 = load i32, ptr %retval, align 4
  ret i32 %29

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @counthash(ptr noundef %t, ptr noundef %bins, ptr noundef %narray) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %bins.addr = alloca ptr, align 8
  %narray.addr = alloca ptr, align 8
  %total = alloca i32, align 4
  %na = alloca i32, align 4
  %i = alloca i32, align 4
  %hmask = alloca i32, align 4
  %node = alloca ptr, align 8
  %n = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %bins, ptr %bins.addr, align 8, !tbaa !4
  store ptr %narray, ptr %narray.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %na) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #8
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %hmask1 = getelementptr inbounds %struct.GCtab, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %hmask1, align 4, !tbaa !10
  store i32 %1, ptr %hmask, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #8
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %node2 = getelementptr inbounds %struct.GCtab, ptr %2, i32 0, i32 8
  %ptr32 = getelementptr inbounds %struct.MRef, ptr %node2, i32 0, i32 0
  %3 = load i32, ptr %ptr32, align 4, !tbaa !22
  %conv = zext i32 %3 to i64
  %4 = inttoptr i64 %conv to ptr
  store ptr %4, ptr %node, align 8, !tbaa !4
  store i32 0, ptr %na, align 4, !tbaa !8
  store i32 0, ptr %total, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %6 = load i32, ptr %hmask, align 4, !tbaa !8
  %cmp = icmp ule i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  %7 = load ptr, ptr %node, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.Node, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %n, align 8, !tbaa !4
  %9 = load ptr, ptr %n, align 8, !tbaa !4
  %val = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 0
  %it = getelementptr inbounds %struct.anon, ptr %val, i32 0, i32 1
  %10 = load i32, ptr %it, align 4, !tbaa !23
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %n, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %bins.addr, align 8, !tbaa !4
  %call = call i32 @countint(ptr noundef %key, ptr noundef %12)
  %13 = load i32, ptr %na, align 4, !tbaa !8
  %add = add i32 %13, %call
  store i32 %add, ptr %na, align 4, !tbaa !8
  %14 = load i32, ptr %total, align 4, !tbaa !8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %total, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %inc6 = add i32 %15, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %na, align 4, !tbaa !8
  %17 = load ptr, ptr %narray.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %add7 = add i32 %18, %16
  store i32 %add7, ptr %17, align 4, !tbaa !8
  %19 = load i32, ptr %total, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %na) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #8
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @countint(ptr noundef %key, ptr noundef %bins) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %bins.addr = alloca ptr, align 8
  %nk = alloca double, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %bins, ptr %bins.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %it, align 4, !tbaa !23
  %cmp = icmp ult i32 %1, -65537
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nk) #8
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %3 = load double, ptr %2, align 8, !tbaa !23
  store double %3, ptr %nk, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %4 = load double, ptr %nk, align 8, !tbaa !34
  %conv = fptosi double %4 to i32
  store i32 %conv, ptr %k, align 4, !tbaa !8
  %5 = load i32, ptr %k, align 4, !tbaa !8
  %cmp1 = icmp ult i32 %5, 134217729
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load double, ptr %nk, align 8, !tbaa !34
  %7 = load i32, ptr %k, align 4, !tbaa !8
  %conv3 = sitofp i32 %7 to double
  %cmp4 = fcmp oeq double %6, %conv3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %bins.addr, align 8, !tbaa !4
  %9 = load i32, ptr %k, align 4, !tbaa !8
  %cmp7 = icmp sgt i32 %9, 2
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  %10 = load i32, ptr %k, align 4, !tbaa !8
  %sub = sub nsw i32 %10, 1
  %11 = call i32 @llvm.ctlz.i32(i32 %sub, i1 true)
  %xor = xor i32 %11, 31
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ 0, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %arrayidx, align 4, !tbaa !8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nk) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end10

if.end10:                                         ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %cleanup
  %13 = load i32, ptr %retval, align 4
  ret i32 %13

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @bestasize(ptr noundef %bins, ptr noundef %narray) #0 {
entry:
  %bins.addr = alloca ptr, align 8
  %narray.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %sum = alloca i32, align 4
  %na = alloca i32, align 4
  %sz = alloca i32, align 4
  %nn = alloca i32, align 4
  store ptr %bins, ptr %bins.addr, align 8, !tbaa !4
  store ptr %narray, ptr %narray.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %na) #8
  store i32 0, ptr %na, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #8
  store i32 0, ptr %sz, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #8
  %0 = load ptr, ptr %narray.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %nn, align 4, !tbaa !8
  store i32 0, ptr %b, align 4, !tbaa !8
  store i32 0, ptr %sum, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %nn, align 4, !tbaa !8
  %mul = mul i32 2, %2
  %3 = load i32, ptr %b, align 4, !tbaa !8
  %shl = shl i32 1, %3
  %cmp = icmp ugt i32 %mul, %shl
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %sum, align 4, !tbaa !8
  %5 = load i32, ptr %nn, align 4, !tbaa !8
  %cmp1 = icmp ne i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %bins.addr, align 8, !tbaa !4
  %8 = load i32, ptr %b, align 4, !tbaa !8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp2 = icmp ugt i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %bins.addr, align 8, !tbaa !4
  %11 = load i32, ptr %b, align 4, !tbaa !8
  %idxprom3 = zext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 %idxprom3
  %12 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  %13 = load i32, ptr %sum, align 4, !tbaa !8
  %add = add i32 %13, %12
  store i32 %add, ptr %sum, align 4, !tbaa !8
  %mul5 = mul i32 2, %add
  %14 = load i32, ptr %b, align 4, !tbaa !8
  %shl6 = shl i32 1, %14
  %cmp7 = icmp ugt i32 %mul5, %shl6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, ptr %b, align 4, !tbaa !8
  %shl8 = shl i32 2, %15
  %add9 = add i32 %shl8, 1
  store i32 %add9, ptr %sz, align 4, !tbaa !8
  %16 = load i32, ptr %sum, align 4, !tbaa !8
  store i32 %16, ptr %na, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %b, align 4, !tbaa !8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %b, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %land.end
  %18 = load i32, ptr %sz, align 4, !tbaa !8
  %19 = load ptr, ptr %narray.addr, align 8, !tbaa !4
  store i32 %18, ptr %19, align 4, !tbaa !8
  %20 = load i32, ptr %na, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %na) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #8
  ret i32 %20
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @setgcV(ptr noundef %L, ptr noundef %o, ptr noundef %v, i32 noundef %itype) #2 {
entry:
  %L.addr = alloca ptr, align 8
  %o.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %itype.addr = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %o, ptr %o.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store i32 %itype, ptr %itype.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  %2 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %3 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0
  %gcptr32 = getelementptr inbounds %struct.GCRef, ptr %3, i32 0, i32 0
  store i32 %conv, ptr %gcptr32, align 8, !tbaa !23
  %4 = load i32, ptr %itype.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %o.addr, align 8, !tbaa !4
  %it = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 %4, ptr %it, align 4, !tbaa !23
  %6 = load ptr, ptr %L.addr, align 8, !tbaa !4
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!10 = !{!11, !9, i64 28}
!11 = !{!"GCtab", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !13, i64 8, !12, i64 12, !12, i64 16, !13, i64 20, !9, i64 24, !9, i64 28}
!12 = !{!"GCRef", !9, i64 0}
!13 = !{!"MRef", !9, i64 0}
!14 = !{!11, !6, i64 5}
!15 = !{!11, !6, i64 6}
!16 = !{!11, !6, i64 7}
!17 = !{!11, !9, i64 8}
!18 = !{!11, !9, i64 16}
!19 = !{!11, !9, i64 24}
!20 = !{!21, !9, i64 8}
!21 = !{!"lua_State", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !13, i64 8, !12, i64 12, !5, i64 16, !5, i64 24, !13, i64 32, !13, i64 36, !12, i64 40, !12, i64 44, !5, i64 48, !9, i64 56}
!22 = !{!11, !9, i64 20}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !9, i64 16}
!27 = !{!"Node", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !6, i64 0}
!32 = !{!27, !9, i64 20}
!33 = !{i64 0, i64 8, !30, i64 0, i64 8, !34, i64 0, i64 4, !8, i64 0, i64 4, !8, i64 4, i64 4, !8, i64 0, i64 4, !8, i64 4, i64 4, !8, i64 4, i64 4, !8, i64 0, i64 4, !8, i64 4, i64 4, !8}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !6, i64 0}
!36 = distinct !{!36, !25}
!37 = !{!38, !9, i64 32}
!38 = !{!"global_State", !5, i64 0, !9, i64 8, !9, i64 12, !5, i64 16, !5, i64 24, !39, i64 32, !40, i64 88, !27, i64 104, !41, i64 128, !6, i64 144, !6, i64 145, !6, i64 146, !6, i64 147, !12, i64 148, !6, i64 152, !6, i64 160, !6, i64 168, !42, i64 176, !9, i64 200, !9, i64 204, !5, i64 208, !5, i64 216, !5, i64 224, !9, i64 232, !9, i64 236, !9, i64 240, !12, i64 244, !13, i64 248, !13, i64 252, !6, i64 256}
!39 = !{!"GCState", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !9, i64 12, !12, i64 16, !13, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52}
!40 = !{!"SBuf", !5, i64 0, !9, i64 8, !9, i64 12}
!41 = !{!"GCstr", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !9, i64 8, !9, i64 12}
!42 = !{!"GCupval", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !13, i64 16, !9, i64 20}
!43 = !{!38, !5, i64 16}
!44 = !{!38, !5, i64 24}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = !{!41, !9, i64 8}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = !{i64 0, i64 4, !8}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = !{!38, !9, i64 60}
!60 = !{!11, !9, i64 12}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
