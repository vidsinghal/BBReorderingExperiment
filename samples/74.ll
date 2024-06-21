; ModuleID = 'samples/74.bc'
source_filename = "lib_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_State = type { %struct.GCRef, i8, i8, i8, i8, %struct.MRef, %struct.GCRef, ptr, ptr, %struct.MRef, %struct.MRef, %struct.GCRef, %struct.GCRef, ptr, i32 }
%struct.MRef = type { i32 }
%struct.GCRef = type { i32 }
%union.TValue = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@lj_lib_init_bit = internal constant [71 x i8] c"A*\0CEtobit\84bnot\85bswapFlshift\86rshift\87arshift\83rol\83rorDband\83bor\84bxor\05tohex\FF", align 16
@lj_lib_cf_bit = internal constant [4 x ptr] [ptr @lj_ffh_bit_tobit, ptr @lj_ffh_bit_lshift, ptr @lj_ffh_bit_band, ptr @lj_cf_bit_tohex], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @luaopen_bit(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !5
  call void @lj_lib_register(ptr noundef %0, ptr noundef @.str, ptr noundef @lj_lib_init_bit, ptr noundef @lj_lib_cf_bit)
  ret i32 1
}

declare hidden void @lj_lib_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @lj_ffh_bit_tobit(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %call = call double @lj_lib_checknum(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_ffh_bit_lshift(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %call = call double @lj_lib_checknum(ptr noundef %0, i32 noundef 1)
  %1 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %call1 = call i32 @lj_lib_checkbit(ptr noundef %1, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_ffh_bit_band(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %1 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  %call = call double @lj_lib_checknum(ptr noundef %0, i32 noundef %inc)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %base = getelementptr inbounds %struct.lua_State, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %base, align 8, !tbaa !11
  %4 = load i32, ptr %i, align 4, !tbaa !9
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %union.TValue, ptr %3, i64 %idx.ext
  %5 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %top = getelementptr inbounds %struct.lua_State, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %top, align 8, !tbaa !15
  %cmp = icmp ult ptr %add.ptr, %6
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_bit_tohex(ptr noundef %L) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %hexdigits = alloca ptr, align 8
  %buf = alloca [8 x i8], align 1
  store ptr %L, ptr %L.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  %0 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %call = call i32 @lj_lib_checkbit(ptr noundef %0, i32 noundef 1)
  store i32 %call, ptr %b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %1 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %base = getelementptr inbounds %struct.lua_State, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %base, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds %union.TValue, ptr %2, i64 1
  %3 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %top = getelementptr inbounds %struct.lua_State, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %top, align 8, !tbaa !15
  %cmp = icmp uge ptr %add.ptr, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %call1 = call i32 @lj_lib_checkbit(ptr noundef %5, i32 noundef 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8, %cond.true ], [ %call1, %cond.false ]
  store i32 %cond, ptr %n, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %hexdigits) #3
  store ptr @.str.1, ptr %hexdigits, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #3
  %6 = load i32, ptr %n, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i32, ptr %n, align 4, !tbaa !9
  %sub = sub nsw i32 0, %7
  store i32 %sub, ptr %n, align 4, !tbaa !9
  store ptr @.str.2, ptr %hexdigits, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i32, ptr %n, align 4, !tbaa !9
  %cmp3 = icmp sgt i32 %8, 8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 8, ptr %n, align 4, !tbaa !9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load i32, ptr %n, align 4, !tbaa !9
  store i32 %9, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end5
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %i, align 4, !tbaa !9
  %cmp6 = icmp sge i32 %dec, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %hexdigits, align 8, !tbaa !5
  %12 = load i32, ptr %b, align 4, !tbaa !9
  %and = and i32 %12, 15
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !18
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 %idxprom7
  store i8 %13, ptr %arrayidx8, align 1, !tbaa !18
  %15 = load i32, ptr %b, align 4, !tbaa !9
  %shr = lshr i32 %15, 4
  store i32 %shr, ptr %b, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %L.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %17 = load i32, ptr %n, align 4, !tbaa !9
  %conv = sext i32 %17 to i64
  call void @lua_pushlstring(ptr noundef %16, ptr noundef %arraydecay, i64 noundef %conv)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %hexdigits) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  ret i32 1
}

declare hidden double @lj_lib_checknum(ptr noundef, i32 noundef) #1

declare hidden i32 @lj_lib_checkbit(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !6, i64 16}
!12 = !{!"lua_State", !13, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !14, i64 8, !13, i64 12, !6, i64 16, !6, i64 24, !14, i64 32, !14, i64 36, !13, i64 40, !13, i64 44, !6, i64 48, !10, i64 56}
!13 = !{!"GCRef", !10, i64 0}
!14 = !{!"MRef", !10, i64 0}
!15 = !{!12, !6, i64 24}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !17}
