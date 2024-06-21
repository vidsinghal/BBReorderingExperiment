; ModuleID = 'samples/152.bc'
source_filename = "src/pcre2_script_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucd_record = type { i8, i8, i8, i8, i32, i16, i16 }

@_pcre2_ucd_records_8 = external constant [0 x %struct.ucd_record], align 4
@_pcre2_ucd_stage2_8 = external constant [0 x i16], align 2
@_pcre2_ucd_stage1_8 = external constant [0 x i16], align 2
@_pcre2_ucd_script_sets_8 = external constant [0 x i32], align 4
@_pcre2_ucd_digit_sets_8 = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define hidden i32 @_pcre2_script_run_8(ptr noundef %ptr, ptr noundef %endptr, i32 noundef %utf) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %endptr.addr = alloca ptr, align 8
  %utf.addr = alloca i32, align 4
  %require_state = alloca i32, align 4
  %require_map = alloca [6 x i32], align 16
  %map = alloca [6 x i32], align 16
  %require_digitset = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %ucd = alloca ptr, align 8
  %script = alloca i32, align 4
  %OK = alloca i32, align 4
  %chspecial = alloca i32, align 4
  %i240 = alloca i32, align 4
  %i267 = alloca i32, align 4
  %digitset = alloca i32, align 4
  %mid = alloca i32, align 4
  %bot = alloca i32, align 4
  %top = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store ptr %endptr, ptr %endptr.addr, align 8, !tbaa !4
  store i32 %utf, ptr %utf.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %require_state) #4
  store i32 0, ptr %require_state, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %require_map) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr %map) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %require_digitset) #4
  store i32 0, ptr %require_digitset, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %endptr.addr, align 8, !tbaa !4
  %cmp = icmp uge ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup446

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ptr.addr, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %c, align 4, !tbaa !8
  %4 = load i32, ptr %utf.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end102

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %c, align 4, !tbaa !8
  %cmp1 = icmp uge i32 %5, 192
  br i1 %cmp1, label %if.then3, label %if.end102

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32, ptr %c, align 4, !tbaa !8
  %and = and i32 %6, 32
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %7 = load i32, ptr %c, align 4, !tbaa !8
  %and7 = and i32 %7, 31
  %shl = shl i32 %and7, 6
  %8 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr8, ptr %ptr.addr, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %conv9 = zext i8 %9 to i32
  %and10 = and i32 %conv9, 63
  %or = or i32 %shl, %and10
  store i32 %or, ptr %c, align 4, !tbaa !8
  br label %if.end101

if.else:                                          ; preds = %if.then3
  %10 = load i32, ptr %c, align 4, !tbaa !8
  %and11 = and i32 %10, 16
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.else24

if.then14:                                        ; preds = %if.else
  %11 = load i32, ptr %c, align 4, !tbaa !8
  %and15 = and i32 %11, 15
  %shl16 = shl i32 %and15, 12
  %12 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %conv17 = zext i8 %13 to i32
  %and18 = and i32 %conv17, 63
  %shl19 = shl i32 %and18, 6
  %or20 = or i32 %shl16, %shl19
  %14 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv21 = zext i8 %15 to i32
  %and22 = and i32 %conv21, 63
  %or23 = or i32 %or20, %and22
  store i32 %or23, ptr %c, align 4, !tbaa !8
  %16 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %add.ptr, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end100

if.else24:                                        ; preds = %if.else
  %17 = load i32, ptr %c, align 4, !tbaa !8
  %and25 = and i32 %17, 8
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %if.then28, label %if.else45

if.then28:                                        ; preds = %if.else24
  %18 = load i32, ptr %c, align 4, !tbaa !8
  %and29 = and i32 %18, 7
  %shl30 = shl i32 %and29, 18
  %19 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %conv31 = zext i8 %20 to i32
  %and32 = and i32 %conv31, 63
  %shl33 = shl i32 %and32, 12
  %or34 = or i32 %shl30, %shl33
  %21 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx35, align 1, !tbaa !10
  %conv36 = zext i8 %22 to i32
  %and37 = and i32 %conv36, 63
  %shl38 = shl i32 %and37, 6
  %or39 = or i32 %or34, %shl38
  %23 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds i8, ptr %23, i64 2
  %24 = load i8, ptr %arrayidx40, align 1, !tbaa !10
  %conv41 = zext i8 %24 to i32
  %and42 = and i32 %conv41, 63
  %or43 = or i32 %or39, %and42
  store i32 %or43, ptr %c, align 4, !tbaa !8
  %25 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr44 = getelementptr inbounds i8, ptr %25, i64 3
  store ptr %add.ptr44, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end99

if.else45:                                        ; preds = %if.else24
  %26 = load i32, ptr %c, align 4, !tbaa !8
  %and46 = and i32 %26, 4
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %if.then49, label %if.else71

if.then49:                                        ; preds = %if.else45
  %27 = load i32, ptr %c, align 4, !tbaa !8
  %and50 = and i32 %27, 3
  %shl51 = shl i32 %and50, 24
  %28 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %conv52 = zext i8 %29 to i32
  %and53 = and i32 %conv52, 63
  %shl54 = shl i32 %and53, 18
  %or55 = or i32 %shl51, %shl54
  %30 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx56 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx56, align 1, !tbaa !10
  %conv57 = zext i8 %31 to i32
  %and58 = and i32 %conv57, 63
  %shl59 = shl i32 %and58, 12
  %or60 = or i32 %or55, %shl59
  %32 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx61, align 1, !tbaa !10
  %conv62 = zext i8 %33 to i32
  %and63 = and i32 %conv62, 63
  %shl64 = shl i32 %and63, 6
  %or65 = or i32 %or60, %shl64
  %34 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds i8, ptr %34, i64 3
  %35 = load i8, ptr %arrayidx66, align 1, !tbaa !10
  %conv67 = zext i8 %35 to i32
  %and68 = and i32 %conv67, 63
  %or69 = or i32 %or65, %and68
  store i32 %or69, ptr %c, align 4, !tbaa !8
  %36 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr70 = getelementptr inbounds i8, ptr %36, i64 4
  store ptr %add.ptr70, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end98

if.else71:                                        ; preds = %if.else45
  %37 = load i32, ptr %c, align 4, !tbaa !8
  %and72 = and i32 %37, 1
  %shl73 = shl i32 %and72, 30
  %38 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %39 = load i8, ptr %38, align 1, !tbaa !10
  %conv74 = zext i8 %39 to i32
  %and75 = and i32 %conv74, 63
  %shl76 = shl i32 %and75, 24
  %or77 = or i32 %shl73, %shl76
  %40 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx78, align 1, !tbaa !10
  %conv79 = zext i8 %41 to i32
  %and80 = and i32 %conv79, 63
  %shl81 = shl i32 %and80, 18
  %or82 = or i32 %or77, %shl81
  %42 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx83 = getelementptr inbounds i8, ptr %42, i64 2
  %43 = load i8, ptr %arrayidx83, align 1, !tbaa !10
  %conv84 = zext i8 %43 to i32
  %and85 = and i32 %conv84, 63
  %shl86 = shl i32 %and85, 12
  %or87 = or i32 %or82, %shl86
  %44 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx88 = getelementptr inbounds i8, ptr %44, i64 3
  %45 = load i8, ptr %arrayidx88, align 1, !tbaa !10
  %conv89 = zext i8 %45 to i32
  %and90 = and i32 %conv89, 63
  %shl91 = shl i32 %and90, 6
  %or92 = or i32 %or87, %shl91
  %46 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds i8, ptr %46, i64 4
  %47 = load i8, ptr %arrayidx93, align 1, !tbaa !10
  %conv94 = zext i8 %47 to i32
  %and95 = and i32 %conv94, 63
  %or96 = or i32 %or92, %and95
  store i32 %or96, ptr %c, align 4, !tbaa !8
  %48 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr97 = getelementptr inbounds i8, ptr %48, i64 5
  store ptr %add.ptr97, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end98

if.end98:                                         ; preds = %if.else71, %if.then49
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then28
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then14
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then6
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %land.lhs.true, %if.end
  %49 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %endptr.addr, align 8, !tbaa !4
  %cmp103 = icmp uge ptr %49, %50
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end102
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup446

if.end106:                                        ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end106
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %cmp107 = icmp slt i32 %51, 6
  br i1 %cmp107, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %52 to i64
  %arrayidx109 = getelementptr inbounds [6 x i32], ptr %require_map, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx109, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond110

for.cond110:                                      ; preds = %cleanup.cont445, %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucd) #4
  %54 = load i32, ptr %c, align 4, !tbaa !8
  %div = sdiv i32 %54, 128
  %idxprom111 = sext i32 %div to i64
  %arrayidx112 = getelementptr inbounds [0 x i16], ptr @_pcre2_ucd_stage1_8, i64 0, i64 %idxprom111
  %55 = load i16, ptr %arrayidx112, align 2, !tbaa !13
  %conv113 = zext i16 %55 to i32
  %mul = mul nsw i32 %conv113, 128
  %56 = load i32, ptr %c, align 4, !tbaa !8
  %rem = srem i32 %56, 128
  %add = add nsw i32 %mul, %rem
  %idxprom114 = sext i32 %add to i64
  %arrayidx115 = getelementptr inbounds [0 x i16], ptr @_pcre2_ucd_stage2_8, i64 0, i64 %idxprom114
  %57 = load i16, ptr %arrayidx115, align 2, !tbaa !13
  %conv116 = zext i16 %57 to i32
  %idx.ext = sext i32 %conv116 to i64
  %add.ptr117 = getelementptr inbounds %struct.ucd_record, ptr @_pcre2_ucd_records_8, i64 %idx.ext
  store ptr %add.ptr117, ptr %ucd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %script) #4
  %58 = load ptr, ptr %ucd, align 8, !tbaa !4
  %script118 = getelementptr inbounds %struct.ucd_record, ptr %58, i32 0, i32 0
  %59 = load i8, ptr %script118, align 4, !tbaa !15
  %conv119 = zext i8 %59 to i32
  store i32 %conv119, ptr %script, align 4, !tbaa !8
  %60 = load i32, ptr %script, align 4, !tbaa !8
  %cmp120 = icmp eq i32 %60, 68
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.cond110
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup442

if.end123:                                        ; preds = %for.cond110
  %61 = load ptr, ptr %ucd, align 8, !tbaa !4
  %scriptx_bidiclass = getelementptr inbounds %struct.ucd_record, ptr %61, i32 0, i32 5
  %62 = load i16, ptr %scriptx_bidiclass, align 4, !tbaa !17
  %conv124 = zext i16 %62 to i32
  %and125 = and i32 %conv124, 1023
  %cmp126 = icmp ne i32 %and125, 0
  br i1 %cmp126, label %if.then133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end123
  %63 = load i32, ptr %script, align 4, !tbaa !8
  %cmp128 = icmp ne i32 %63, 84
  br i1 %cmp128, label %land.lhs.true130, label %if.end287

land.lhs.true130:                                 ; preds = %lor.lhs.false
  %64 = load i32, ptr %script, align 4, !tbaa !8
  %cmp131 = icmp ne i32 %64, 69
  br i1 %cmp131, label %if.then133, label %if.end287

if.then133:                                       ; preds = %land.lhs.true130, %if.end123
  call void @llvm.lifetime.start.p0(i64 4, ptr %OK) #4
  %arraydecay = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %65 = load ptr, ptr %ucd, align 8, !tbaa !4
  %scriptx_bidiclass134 = getelementptr inbounds %struct.ucd_record, ptr %65, i32 0, i32 5
  %66 = load i16, ptr %scriptx_bidiclass134, align 4, !tbaa !17
  %conv135 = zext i16 %66 to i32
  %and136 = and i32 %conv135, 1023
  %idx.ext137 = sext i32 %and136 to i64
  %add.ptr138 = getelementptr inbounds i32, ptr @_pcre2_ucd_script_sets_8, i64 %idx.ext137
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 4 %add.ptr138, i64 12, i1 false)
  %arraydecay139 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %add.ptr140 = getelementptr inbounds i32, ptr %arraydecay139, i64 3
  call void @llvm.memset.p0.i64(ptr align 4 %add.ptr140, i8 0, i64 12, i1 false)
  %67 = load i32, ptr %script, align 4, !tbaa !8
  %cmp141 = icmp ne i32 %67, 69
  br i1 %cmp141, label %land.lhs.true143, label %if.end153

land.lhs.true143:                                 ; preds = %if.then133
  %68 = load i32, ptr %script, align 4, !tbaa !8
  %cmp144 = icmp ne i32 %68, 84
  br i1 %cmp144, label %if.then146, label %if.end153

if.then146:                                       ; preds = %land.lhs.true143
  %69 = load i32, ptr %script, align 4, !tbaa !8
  %rem147 = urem i32 %69, 32
  %shl148 = shl i32 1, %rem147
  %70 = load i32, ptr %script, align 4, !tbaa !8
  %div149 = udiv i32 %70, 32
  %idxprom150 = zext i32 %div149 to i64
  %arrayidx151 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 %idxprom150
  %71 = load i32, ptr %arrayidx151, align 4, !tbaa !8
  %or152 = or i32 %71, %shl148
  store i32 %or152, ptr %arrayidx151, align 4, !tbaa !8
  br label %if.end153

if.end153:                                        ; preds = %if.then146, %land.lhs.true143, %if.then133
  %72 = load i32, ptr %require_state, align 4, !tbaa !8
  switch i32 %72, label %sw.epilog283 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb160
    i32 3, label %sw.bb206
    i32 4, label %sw.bb219
    i32 5, label %sw.bb229
    i32 1, label %sw.bb239
  ]

sw.bb:                                            ; preds = %if.end153
  %73 = load i32, ptr %script, align 4, !tbaa !8
  switch i32 %73, label %sw.default [
    i32 23, label %sw.bb154
    i32 20, label %sw.bb155
    i32 21, label %sw.bb155
    i32 22, label %sw.bb156
    i32 18, label %sw.bb157
  ]

sw.bb154:                                         ; preds = %sw.bb
  store i32 2, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog

sw.bb155:                                         ; preds = %sw.bb, %sw.bb
  store i32 3, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog

sw.bb156:                                         ; preds = %sw.bb
  store i32 4, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog

sw.bb157:                                         ; preds = %sw.bb
  store i32 5, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %arraydecay158 = getelementptr inbounds [6 x i32], ptr %require_map, i64 0, i64 0
  %arraydecay159 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay158, ptr align 16 %arraydecay159, i64 24, i1 false)
  store i32 1, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb157, %sw.bb156, %sw.bb155, %sw.bb154
  br label %sw.epilog283

sw.bb160:                                         ; preds = %if.end153
  %74 = load i32, ptr %script, align 4, !tbaa !8
  %cmp161 = icmp ne i32 %74, 23
  br i1 %cmp161, label %if.then163, label %if.end205

if.then163:                                       ; preds = %sw.bb160
  call void @llvm.lifetime.start.p0(i64 4, ptr %chspecial) #4
  store i32 0, ptr %chspecial, align 4, !tbaa !8
  %arrayidx164 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %75 = load i32, ptr %arrayidx164, align 16, !tbaa !8
  %and165 = and i32 %75, 4194304
  %cmp166 = icmp ne i32 %and165, 0
  br i1 %cmp166, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.then163
  %76 = load i32, ptr %chspecial, align 4, !tbaa !8
  %or169 = or i32 %76, 1
  store i32 %or169, ptr %chspecial, align 4, !tbaa !8
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.then163
  %arrayidx171 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %77 = load i32, ptr %arrayidx171, align 16, !tbaa !8
  %and172 = and i32 %77, 1048576
  %cmp173 = icmp ne i32 %and172, 0
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end170
  %78 = load i32, ptr %chspecial, align 4, !tbaa !8
  %or176 = or i32 %78, 2
  store i32 %or176, ptr %chspecial, align 4, !tbaa !8
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end170
  %arrayidx178 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %79 = load i32, ptr %arrayidx178, align 16, !tbaa !8
  %and179 = and i32 %79, 2097152
  %cmp180 = icmp ne i32 %and179, 0
  br i1 %cmp180, label %if.then182, label %if.end184

if.then182:                                       ; preds = %if.end177
  %80 = load i32, ptr %chspecial, align 4, !tbaa !8
  %or183 = or i32 %80, 4
  store i32 %or183, ptr %chspecial, align 4, !tbaa !8
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.end177
  %arrayidx185 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %81 = load i32, ptr %arrayidx185, align 16, !tbaa !8
  %and186 = and i32 %81, 262144
  %cmp187 = icmp ne i32 %and186, 0
  br i1 %cmp187, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end184
  %82 = load i32, ptr %chspecial, align 4, !tbaa !8
  %or190 = or i32 %82, 8
  store i32 %or190, ptr %chspecial, align 4, !tbaa !8
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.end184
  %83 = load i32, ptr %chspecial, align 4, !tbaa !8
  %cmp192 = icmp eq i32 %83, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end191
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end195:                                        ; preds = %if.end191
  %84 = load i32, ptr %chspecial, align 4, !tbaa !8
  %cmp196 = icmp eq i32 %84, 1
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %if.end195
  store i32 4, ptr %require_state, align 4, !tbaa !8
  br label %if.end204

if.else199:                                       ; preds = %if.end195
  %85 = load i32, ptr %chspecial, align 4, !tbaa !8
  %cmp200 = icmp eq i32 %85, 6
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.else199
  store i32 3, ptr %require_state, align 4, !tbaa !8
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %if.else199
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.then198
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end204, %if.then194
  call void @llvm.lifetime.end.p0(i64 4, ptr %chspecial) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup284 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end205

if.end205:                                        ; preds = %cleanup.cont, %sw.bb160
  br label %sw.epilog283

sw.bb206:                                         ; preds = %if.end153
  %arrayidx207 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %86 = load i32, ptr %arrayidx207, align 16, !tbaa !8
  %and208 = and i32 %86, 8388608
  %arrayidx209 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %87 = load i32, ptr %arrayidx209, align 16, !tbaa !8
  %and210 = and i32 %87, 1048576
  %add211 = add i32 %and208, %and210
  %arrayidx212 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %88 = load i32, ptr %arrayidx212, align 16, !tbaa !8
  %and213 = and i32 %88, 2097152
  %add214 = add i32 %add211, %and213
  %cmp215 = icmp eq i32 %add214, 0
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %sw.bb206
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup284

if.end218:                                        ; preds = %sw.bb206
  br label %sw.epilog283

sw.bb219:                                         ; preds = %if.end153
  %arrayidx220 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %89 = load i32, ptr %arrayidx220, align 16, !tbaa !8
  %and221 = and i32 %89, 8388608
  %arrayidx222 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %90 = load i32, ptr %arrayidx222, align 16, !tbaa !8
  %and223 = and i32 %90, 4194304
  %add224 = add i32 %and221, %and223
  %cmp225 = icmp eq i32 %add224, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %sw.bb219
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup284

if.end228:                                        ; preds = %sw.bb219
  br label %sw.epilog283

sw.bb229:                                         ; preds = %if.end153
  %arrayidx230 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %91 = load i32, ptr %arrayidx230, align 16, !tbaa !8
  %and231 = and i32 %91, 8388608
  %arrayidx232 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 0
  %92 = load i32, ptr %arrayidx232, align 16, !tbaa !8
  %and233 = and i32 %92, 262144
  %add234 = add i32 %and231, %and233
  %cmp235 = icmp eq i32 %add234, 0
  br i1 %cmp235, label %if.then237, label %if.end238

if.then237:                                       ; preds = %sw.bb229
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup284

if.end238:                                        ; preds = %sw.bb229
  br label %sw.epilog283

sw.bb239:                                         ; preds = %if.end153
  store i32 0, ptr %OK, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i240) #4
  store i32 0, ptr %i240, align 4, !tbaa !8
  br label %for.cond241

for.cond241:                                      ; preds = %for.inc255, %sw.bb239
  %93 = load i32, ptr %i240, align 4, !tbaa !8
  %cmp242 = icmp slt i32 %93, 6
  br i1 %cmp242, label %for.body245, label %for.cond.cleanup244

for.cond.cleanup244:                              ; preds = %for.cond241
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup257

for.body245:                                      ; preds = %for.cond241
  %94 = load i32, ptr %i240, align 4, !tbaa !8
  %idxprom246 = sext i32 %94 to i64
  %arrayidx247 = getelementptr inbounds [6 x i32], ptr %require_map, i64 0, i64 %idxprom246
  %95 = load i32, ptr %arrayidx247, align 4, !tbaa !8
  %96 = load i32, ptr %i240, align 4, !tbaa !8
  %idxprom248 = sext i32 %96 to i64
  %arrayidx249 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 %idxprom248
  %97 = load i32, ptr %arrayidx249, align 4, !tbaa !8
  %and250 = and i32 %95, %97
  %cmp251 = icmp ne i32 %and250, 0
  br i1 %cmp251, label %if.then253, label %if.end254

if.then253:                                       ; preds = %for.body245
  store i32 1, ptr %OK, align 4, !tbaa !8
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup257

if.end254:                                        ; preds = %for.body245
  br label %for.inc255

for.inc255:                                       ; preds = %if.end254
  %98 = load i32, ptr %i240, align 4, !tbaa !8
  %inc256 = add nsw i32 %98, 1
  store i32 %inc256, ptr %i240, align 4, !tbaa !8
  br label %for.cond241, !llvm.loop !18

cleanup257:                                       ; preds = %if.then253, %for.cond.cleanup244
  call void @llvm.lifetime.end.p0(i64 4, ptr %i240) #4
  br label %for.end258

for.end258:                                       ; preds = %cleanup257
  %99 = load i32, ptr %OK, align 4, !tbaa !8
  %tobool259 = icmp ne i32 %99, 0
  br i1 %tobool259, label %if.end261, label %if.then260

if.then260:                                       ; preds = %for.end258
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup284

if.end261:                                        ; preds = %for.end258
  %100 = load i32, ptr %script, align 4, !tbaa !8
  switch i32 %100, label %sw.default266 [
    i32 23, label %sw.bb262
    i32 20, label %sw.bb263
    i32 21, label %sw.bb263
    i32 22, label %sw.bb264
    i32 18, label %sw.bb265
  ]

sw.bb262:                                         ; preds = %if.end261
  store i32 2, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog282

sw.bb263:                                         ; preds = %if.end261, %if.end261
  store i32 3, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog282

sw.bb264:                                         ; preds = %if.end261
  store i32 4, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog282

sw.bb265:                                         ; preds = %if.end261
  store i32 5, ptr %require_state, align 4, !tbaa !8
  br label %sw.epilog282

sw.default266:                                    ; preds = %if.end261
  call void @llvm.lifetime.start.p0(i64 4, ptr %i267) #4
  store i32 0, ptr %i267, align 4, !tbaa !8
  br label %for.cond268

for.cond268:                                      ; preds = %for.inc278, %sw.default266
  %101 = load i32, ptr %i267, align 4, !tbaa !8
  %cmp269 = icmp slt i32 %101, 6
  br i1 %cmp269, label %for.body272, label %for.cond.cleanup271

for.cond.cleanup271:                              ; preds = %for.cond268
  store i32 13, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i267) #4
  br label %for.end281

for.body272:                                      ; preds = %for.cond268
  %102 = load i32, ptr %i267, align 4, !tbaa !8
  %idxprom273 = sext i32 %102 to i64
  %arrayidx274 = getelementptr inbounds [6 x i32], ptr %map, i64 0, i64 %idxprom273
  %103 = load i32, ptr %arrayidx274, align 4, !tbaa !8
  %104 = load i32, ptr %i267, align 4, !tbaa !8
  %idxprom275 = sext i32 %104 to i64
  %arrayidx276 = getelementptr inbounds [6 x i32], ptr %require_map, i64 0, i64 %idxprom275
  %105 = load i32, ptr %arrayidx276, align 4, !tbaa !8
  %and277 = and i32 %105, %103
  store i32 %and277, ptr %arrayidx276, align 4, !tbaa !8
  br label %for.inc278

for.inc278:                                       ; preds = %for.body272
  %106 = load i32, ptr %i267, align 4, !tbaa !8
  %inc279 = add nsw i32 %106, 1
  store i32 %inc279, ptr %i267, align 4, !tbaa !8
  br label %for.cond268, !llvm.loop !19

for.end281:                                       ; preds = %for.cond.cleanup271
  br label %sw.epilog282

sw.epilog282:                                     ; preds = %for.end281, %sw.bb265, %sw.bb264, %sw.bb263, %sw.bb262
  br label %sw.epilog283

sw.epilog283:                                     ; preds = %if.end153, %sw.epilog282, %if.end238, %if.end228, %if.end218, %if.end205, %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup284

cleanup284:                                       ; preds = %sw.epilog283, %if.then260, %if.then237, %if.then227, %if.then217, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %OK) #4
  %cleanup.dest285 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest285, label %cleanup442 [
    i32 0, label %cleanup.cont286
  ]

cleanup.cont286:                                  ; preds = %cleanup284
  br label %if.end287

if.end287:                                        ; preds = %cleanup.cont286, %land.lhs.true130, %lor.lhs.false
  %107 = load ptr, ptr %ucd, align 8, !tbaa !4
  %chartype = getelementptr inbounds %struct.ucd_record, ptr %107, i32 0, i32 1
  %108 = load i8, ptr %chartype, align 1, !tbaa !20
  %conv288 = zext i8 %108 to i32
  %cmp289 = icmp eq i32 %conv288, 13
  br i1 %cmp289, label %if.then291, label %if.end325

if.then291:                                       ; preds = %if.end287
  call void @llvm.lifetime.start.p0(i64 4, ptr %digitset) #4
  %109 = load i32, ptr %c, align 4, !tbaa !8
  %110 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @_pcre2_ucd_digit_sets_8, i64 0, i64 1), align 4, !tbaa !8
  %cmp292 = icmp ule i32 %109, %110
  br i1 %cmp292, label %if.then294, label %if.else295

if.then294:                                       ; preds = %if.then291
  store i32 1, ptr %digitset, align 4, !tbaa !8
  br label %if.end312

if.else295:                                       ; preds = %if.then291
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bot) #4
  store i32 1, ptr %bot, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %top) #4
  %111 = load i32, ptr @_pcre2_ucd_digit_sets_8, align 4, !tbaa !8
  store i32 %111, ptr %top, align 4, !tbaa !8
  br label %for.cond296

for.cond296:                                      ; preds = %if.end310, %if.else295
  %112 = load i32, ptr %top, align 4, !tbaa !8
  %113 = load i32, ptr %bot, align 4, !tbaa !8
  %add297 = add nsw i32 %113, 1
  %cmp298 = icmp sle i32 %112, %add297
  br i1 %cmp298, label %if.then300, label %if.end301

if.then300:                                       ; preds = %for.cond296
  %114 = load i32, ptr %top, align 4, !tbaa !8
  store i32 %114, ptr %digitset, align 4, !tbaa !8
  br label %for.end311

if.end301:                                        ; preds = %for.cond296
  %115 = load i32, ptr %top, align 4, !tbaa !8
  %116 = load i32, ptr %bot, align 4, !tbaa !8
  %add302 = add nsw i32 %115, %116
  %div303 = sdiv i32 %add302, 2
  store i32 %div303, ptr %mid, align 4, !tbaa !8
  %117 = load i32, ptr %c, align 4, !tbaa !8
  %118 = load i32, ptr %mid, align 4, !tbaa !8
  %idxprom304 = sext i32 %118 to i64
  %arrayidx305 = getelementptr inbounds [0 x i32], ptr @_pcre2_ucd_digit_sets_8, i64 0, i64 %idxprom304
  %119 = load i32, ptr %arrayidx305, align 4, !tbaa !8
  %cmp306 = icmp ule i32 %117, %119
  br i1 %cmp306, label %if.then308, label %if.else309

if.then308:                                       ; preds = %if.end301
  %120 = load i32, ptr %mid, align 4, !tbaa !8
  store i32 %120, ptr %top, align 4, !tbaa !8
  br label %if.end310

if.else309:                                       ; preds = %if.end301
  %121 = load i32, ptr %mid, align 4, !tbaa !8
  store i32 %121, ptr %bot, align 4, !tbaa !8
  br label %if.end310

if.end310:                                        ; preds = %if.else309, %if.then308
  br label %for.cond296

for.end311:                                       ; preds = %if.then300
  call void @llvm.lifetime.end.p0(i64 4, ptr %top) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #4
  br label %if.end312

if.end312:                                        ; preds = %for.end311, %if.then294
  %122 = load i32, ptr %require_digitset, align 4, !tbaa !8
  %cmp313 = icmp eq i32 %122, 0
  br i1 %cmp313, label %if.then315, label %if.else316

if.then315:                                       ; preds = %if.end312
  %123 = load i32, ptr %digitset, align 4, !tbaa !8
  store i32 %123, ptr %require_digitset, align 4, !tbaa !8
  br label %if.end321

if.else316:                                       ; preds = %if.end312
  %124 = load i32, ptr %digitset, align 4, !tbaa !8
  %125 = load i32, ptr %require_digitset, align 4, !tbaa !8
  %cmp317 = icmp ne i32 %124, %125
  br i1 %cmp317, label %if.then319, label %if.end320

if.then319:                                       ; preds = %if.else316
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup322

if.end320:                                        ; preds = %if.else316
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %if.then315
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup322

cleanup322:                                       ; preds = %if.end321, %if.then319
  call void @llvm.lifetime.end.p0(i64 4, ptr %digitset) #4
  %cleanup.dest323 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest323, label %cleanup442 [
    i32 0, label %cleanup.cont324
  ]

cleanup.cont324:                                  ; preds = %cleanup322
  br label %if.end325

if.end325:                                        ; preds = %cleanup.cont324, %if.end287
  %126 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %endptr.addr, align 8, !tbaa !4
  %cmp326 = icmp uge ptr %126, %127
  br i1 %cmp326, label %if.then328, label %if.end329

if.then328:                                       ; preds = %if.end325
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup442

if.end329:                                        ; preds = %if.end325
  %128 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %incdec.ptr330 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %incdec.ptr330, ptr %ptr.addr, align 8, !tbaa !4
  %129 = load i8, ptr %128, align 1, !tbaa !10
  %conv331 = zext i8 %129 to i32
  store i32 %conv331, ptr %c, align 4, !tbaa !8
  %130 = load i32, ptr %utf.addr, align 4, !tbaa !8
  %tobool332 = icmp ne i32 %130, 0
  br i1 %tobool332, label %land.lhs.true333, label %if.end441

land.lhs.true333:                                 ; preds = %if.end329
  %131 = load i32, ptr %c, align 4, !tbaa !8
  %cmp334 = icmp uge i32 %131, 192
  br i1 %cmp334, label %if.then336, label %if.end441

if.then336:                                       ; preds = %land.lhs.true333
  %132 = load i32, ptr %c, align 4, !tbaa !8
  %and337 = and i32 %132, 32
  %cmp338 = icmp eq i32 %and337, 0
  br i1 %cmp338, label %if.then340, label %if.else347

if.then340:                                       ; preds = %if.then336
  %133 = load i32, ptr %c, align 4, !tbaa !8
  %and341 = and i32 %133, 31
  %shl342 = shl i32 %and341, 6
  %134 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %incdec.ptr343 = getelementptr inbounds i8, ptr %134, i32 1
  store ptr %incdec.ptr343, ptr %ptr.addr, align 8, !tbaa !4
  %135 = load i8, ptr %134, align 1, !tbaa !10
  %conv344 = zext i8 %135 to i32
  %and345 = and i32 %conv344, 63
  %or346 = or i32 %shl342, %and345
  store i32 %or346, ptr %c, align 4, !tbaa !8
  br label %if.end440

if.else347:                                       ; preds = %if.then336
  %136 = load i32, ptr %c, align 4, !tbaa !8
  %and348 = and i32 %136, 16
  %cmp349 = icmp eq i32 %and348, 0
  br i1 %cmp349, label %if.then351, label %if.else363

if.then351:                                       ; preds = %if.else347
  %137 = load i32, ptr %c, align 4, !tbaa !8
  %and352 = and i32 %137, 15
  %shl353 = shl i32 %and352, 12
  %138 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %139 = load i8, ptr %138, align 1, !tbaa !10
  %conv354 = zext i8 %139 to i32
  %and355 = and i32 %conv354, 63
  %shl356 = shl i32 %and355, 6
  %or357 = or i32 %shl353, %shl356
  %140 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx358 = getelementptr inbounds i8, ptr %140, i64 1
  %141 = load i8, ptr %arrayidx358, align 1, !tbaa !10
  %conv359 = zext i8 %141 to i32
  %and360 = and i32 %conv359, 63
  %or361 = or i32 %or357, %and360
  store i32 %or361, ptr %c, align 4, !tbaa !8
  %142 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr362 = getelementptr inbounds i8, ptr %142, i64 2
  store ptr %add.ptr362, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end439

if.else363:                                       ; preds = %if.else347
  %143 = load i32, ptr %c, align 4, !tbaa !8
  %and364 = and i32 %143, 8
  %cmp365 = icmp eq i32 %and364, 0
  br i1 %cmp365, label %if.then367, label %if.else384

if.then367:                                       ; preds = %if.else363
  %144 = load i32, ptr %c, align 4, !tbaa !8
  %and368 = and i32 %144, 7
  %shl369 = shl i32 %and368, 18
  %145 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %146 = load i8, ptr %145, align 1, !tbaa !10
  %conv370 = zext i8 %146 to i32
  %and371 = and i32 %conv370, 63
  %shl372 = shl i32 %and371, 12
  %or373 = or i32 %shl369, %shl372
  %147 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx374 = getelementptr inbounds i8, ptr %147, i64 1
  %148 = load i8, ptr %arrayidx374, align 1, !tbaa !10
  %conv375 = zext i8 %148 to i32
  %and376 = and i32 %conv375, 63
  %shl377 = shl i32 %and376, 6
  %or378 = or i32 %or373, %shl377
  %149 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx379 = getelementptr inbounds i8, ptr %149, i64 2
  %150 = load i8, ptr %arrayidx379, align 1, !tbaa !10
  %conv380 = zext i8 %150 to i32
  %and381 = and i32 %conv380, 63
  %or382 = or i32 %or378, %and381
  store i32 %or382, ptr %c, align 4, !tbaa !8
  %151 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr383 = getelementptr inbounds i8, ptr %151, i64 3
  store ptr %add.ptr383, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end438

if.else384:                                       ; preds = %if.else363
  %152 = load i32, ptr %c, align 4, !tbaa !8
  %and385 = and i32 %152, 4
  %cmp386 = icmp eq i32 %and385, 0
  br i1 %cmp386, label %if.then388, label %if.else410

if.then388:                                       ; preds = %if.else384
  %153 = load i32, ptr %c, align 4, !tbaa !8
  %and389 = and i32 %153, 3
  %shl390 = shl i32 %and389, 24
  %154 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %155 = load i8, ptr %154, align 1, !tbaa !10
  %conv391 = zext i8 %155 to i32
  %and392 = and i32 %conv391, 63
  %shl393 = shl i32 %and392, 18
  %or394 = or i32 %shl390, %shl393
  %156 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx395 = getelementptr inbounds i8, ptr %156, i64 1
  %157 = load i8, ptr %arrayidx395, align 1, !tbaa !10
  %conv396 = zext i8 %157 to i32
  %and397 = and i32 %conv396, 63
  %shl398 = shl i32 %and397, 12
  %or399 = or i32 %or394, %shl398
  %158 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx400 = getelementptr inbounds i8, ptr %158, i64 2
  %159 = load i8, ptr %arrayidx400, align 1, !tbaa !10
  %conv401 = zext i8 %159 to i32
  %and402 = and i32 %conv401, 63
  %shl403 = shl i32 %and402, 6
  %or404 = or i32 %or399, %shl403
  %160 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx405 = getelementptr inbounds i8, ptr %160, i64 3
  %161 = load i8, ptr %arrayidx405, align 1, !tbaa !10
  %conv406 = zext i8 %161 to i32
  %and407 = and i32 %conv406, 63
  %or408 = or i32 %or404, %and407
  store i32 %or408, ptr %c, align 4, !tbaa !8
  %162 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr409 = getelementptr inbounds i8, ptr %162, i64 4
  store ptr %add.ptr409, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end437

if.else410:                                       ; preds = %if.else384
  %163 = load i32, ptr %c, align 4, !tbaa !8
  %and411 = and i32 %163, 1
  %shl412 = shl i32 %and411, 30
  %164 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %165 = load i8, ptr %164, align 1, !tbaa !10
  %conv413 = zext i8 %165 to i32
  %and414 = and i32 %conv413, 63
  %shl415 = shl i32 %and414, 24
  %or416 = or i32 %shl412, %shl415
  %166 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx417 = getelementptr inbounds i8, ptr %166, i64 1
  %167 = load i8, ptr %arrayidx417, align 1, !tbaa !10
  %conv418 = zext i8 %167 to i32
  %and419 = and i32 %conv418, 63
  %shl420 = shl i32 %and419, 18
  %or421 = or i32 %or416, %shl420
  %168 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx422 = getelementptr inbounds i8, ptr %168, i64 2
  %169 = load i8, ptr %arrayidx422, align 1, !tbaa !10
  %conv423 = zext i8 %169 to i32
  %and424 = and i32 %conv423, 63
  %shl425 = shl i32 %and424, 12
  %or426 = or i32 %or421, %shl425
  %170 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx427 = getelementptr inbounds i8, ptr %170, i64 3
  %171 = load i8, ptr %arrayidx427, align 1, !tbaa !10
  %conv428 = zext i8 %171 to i32
  %and429 = and i32 %conv428, 63
  %shl430 = shl i32 %and429, 6
  %or431 = or i32 %or426, %shl430
  %172 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %arrayidx432 = getelementptr inbounds i8, ptr %172, i64 4
  %173 = load i8, ptr %arrayidx432, align 1, !tbaa !10
  %conv433 = zext i8 %173 to i32
  %and434 = and i32 %conv433, 63
  %or435 = or i32 %or431, %and434
  store i32 %or435, ptr %c, align 4, !tbaa !8
  %174 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %add.ptr436 = getelementptr inbounds i8, ptr %174, i64 5
  store ptr %add.ptr436, ptr %ptr.addr, align 8, !tbaa !4
  br label %if.end437

if.end437:                                        ; preds = %if.else410, %if.then388
  br label %if.end438

if.end438:                                        ; preds = %if.end437, %if.then367
  br label %if.end439

if.end439:                                        ; preds = %if.end438, %if.then351
  br label %if.end440

if.end440:                                        ; preds = %if.end439, %if.then340
  br label %if.end441

if.end441:                                        ; preds = %if.end440, %land.lhs.true333, %if.end329
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup442

cleanup442:                                       ; preds = %if.end441, %if.then328, %cleanup322, %cleanup284, %if.then122
  call void @llvm.lifetime.end.p0(i64 4, ptr %script) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucd) #4
  %cleanup.dest444 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest444, label %cleanup446 [
    i32 0, label %cleanup.cont445
  ]

cleanup.cont445:                                  ; preds = %cleanup442
  br label %for.cond110

cleanup446:                                       ; preds = %cleanup442, %if.then105, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %require_digitset) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %map) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %require_map) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %require_state) #4
  %175 = load i32, ptr %retval, align 4
  ret i32 %175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !9, i64 4, !14, i64 8, !14, i64 10}
!17 = !{!16, !14, i64 8}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!16, !6, i64 1}
