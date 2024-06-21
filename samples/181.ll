; ModuleID = 'samples/181.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/cla_wwaddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @cla_wwaddw_(ptr noundef %n, ptr noundef %x, ptr noundef %y, ptr noundef %w) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %s = alloca %struct.complex, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  %0 = load ptr, ptr %w.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8
  %1 = load ptr, ptr %y.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %y.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.complex, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %x.addr, align 8
  %3 = load ptr, ptr %n.addr, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i__, align 4
  %6 = load i32, ptr %i__1, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i__, align 4
  store i32 %7, ptr %i__2, align 4
  %8 = load i32, ptr %i__, align 4
  store i32 %8, ptr %i__3, align 4
  %9 = load ptr, ptr %x.addr, align 8
  %10 = load i32, ptr %i__2, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %9, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %11 = load float, ptr %r, align 4
  %12 = load ptr, ptr %w.addr, align 8
  %13 = load i32, ptr %i__3, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds %struct.complex, ptr %12, i64 %idxprom3
  %r5 = getelementptr inbounds %struct.complex, ptr %arrayidx4, i32 0, i32 0
  %14 = load float, ptr %r5, align 4
  %add = fadd float %11, %14
  %r6 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add, ptr %r6, align 4
  %15 = load ptr, ptr %x.addr, align 8
  %16 = load i32, ptr %i__2, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds %struct.complex, ptr %15, i64 %idxprom7
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx8, i32 0, i32 1
  %17 = load float, ptr %i, align 4
  %18 = load ptr, ptr %w.addr, align 8
  %19 = load i32, ptr %i__3, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds %struct.complex, ptr %18, i64 %idxprom9
  %i11 = getelementptr inbounds %struct.complex, ptr %arrayidx10, i32 0, i32 1
  %20 = load float, ptr %i11, align 4
  %add12 = fadd float %17, %20
  %i13 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add12, ptr %i13, align 4
  %r14 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %21 = load float, ptr %r14, align 4
  %r15 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  store float %21, ptr %r15, align 4
  %i16 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %22 = load float, ptr %i16, align 4
  %i17 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  store float %22, ptr %i17, align 4
  %r18 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %23 = load float, ptr %r18, align 4
  %r19 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %24 = load float, ptr %r19, align 4
  %add20 = fadd float %23, %24
  %r21 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add20, ptr %r21, align 4
  %i22 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %25 = load float, ptr %i22, align 4
  %i23 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %26 = load float, ptr %i23, align 4
  %add24 = fadd float %25, %26
  %i25 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add24, ptr %i25, align 4
  %r26 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %27 = load float, ptr %r26, align 4
  %r27 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %28 = load float, ptr %r27, align 4
  %sub = fsub float %27, %28
  %r28 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub, ptr %r28, align 4
  %i29 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %29 = load float, ptr %i29, align 4
  %i30 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %30 = load float, ptr %i30, align 4
  %sub31 = fsub float %29, %30
  %i32 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub31, ptr %i32, align 4
  %r33 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %31 = load float, ptr %r33, align 4
  %r34 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  store float %31, ptr %r34, align 4
  %i35 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %32 = load float, ptr %i35, align 4
  %i36 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  store float %32, ptr %i36, align 4
  %33 = load i32, ptr %i__, align 4
  store i32 %33, ptr %i__2, align 4
  %34 = load i32, ptr %i__, align 4
  store i32 %34, ptr %i__3, align 4
  %35 = load ptr, ptr %x.addr, align 8
  %36 = load i32, ptr %i__3, align 4
  %idxprom37 = sext i32 %36 to i64
  %arrayidx38 = getelementptr inbounds %struct.complex, ptr %35, i64 %idxprom37
  %r39 = getelementptr inbounds %struct.complex, ptr %arrayidx38, i32 0, i32 0
  %37 = load float, ptr %r39, align 4
  %r40 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %38 = load float, ptr %r40, align 4
  %sub41 = fsub float %37, %38
  %r42 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %sub41, ptr %r42, align 4
  %39 = load ptr, ptr %x.addr, align 8
  %40 = load i32, ptr %i__3, align 4
  %idxprom43 = sext i32 %40 to i64
  %arrayidx44 = getelementptr inbounds %struct.complex, ptr %39, i64 %idxprom43
  %i45 = getelementptr inbounds %struct.complex, ptr %arrayidx44, i32 0, i32 1
  %41 = load float, ptr %i45, align 4
  %i46 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %42 = load float, ptr %i46, align 4
  %sub47 = fsub float %41, %42
  %i48 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %sub47, ptr %i48, align 4
  %43 = load i32, ptr %i__, align 4
  store i32 %43, ptr %i__4, align 4
  %r49 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %44 = load float, ptr %r49, align 4
  %45 = load ptr, ptr %w.addr, align 8
  %46 = load i32, ptr %i__4, align 4
  %idxprom50 = sext i32 %46 to i64
  %arrayidx51 = getelementptr inbounds %struct.complex, ptr %45, i64 %idxprom50
  %r52 = getelementptr inbounds %struct.complex, ptr %arrayidx51, i32 0, i32 0
  %47 = load float, ptr %r52, align 4
  %add53 = fadd float %44, %47
  %r54 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %add53, ptr %r54, align 4
  %i55 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %48 = load float, ptr %i55, align 4
  %49 = load ptr, ptr %w.addr, align 8
  %50 = load i32, ptr %i__4, align 4
  %idxprom56 = sext i32 %50 to i64
  %arrayidx57 = getelementptr inbounds %struct.complex, ptr %49, i64 %idxprom56
  %i58 = getelementptr inbounds %struct.complex, ptr %arrayidx57, i32 0, i32 1
  %51 = load float, ptr %i58, align 4
  %add59 = fadd float %48, %51
  %i60 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %add59, ptr %i60, align 4
  %52 = load i32, ptr %i__, align 4
  store i32 %52, ptr %i__5, align 4
  %r61 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %53 = load float, ptr %r61, align 4
  %54 = load ptr, ptr %y.addr, align 8
  %55 = load i32, ptr %i__5, align 4
  %idxprom62 = sext i32 %55 to i64
  %arrayidx63 = getelementptr inbounds %struct.complex, ptr %54, i64 %idxprom62
  %r64 = getelementptr inbounds %struct.complex, ptr %arrayidx63, i32 0, i32 0
  %56 = load float, ptr %r64, align 4
  %add65 = fadd float %53, %56
  %r66 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add65, ptr %r66, align 4
  %i67 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %57 = load float, ptr %i67, align 4
  %58 = load ptr, ptr %y.addr, align 8
  %59 = load i32, ptr %i__5, align 4
  %idxprom68 = sext i32 %59 to i64
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %58, i64 %idxprom68
  %i70 = getelementptr inbounds %struct.complex, ptr %arrayidx69, i32 0, i32 1
  %60 = load float, ptr %i70, align 4
  %add71 = fadd float %57, %60
  %i72 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add71, ptr %i72, align 4
  %r73 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %61 = load float, ptr %r73, align 4
  %62 = load ptr, ptr %y.addr, align 8
  %63 = load i32, ptr %i__2, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds %struct.complex, ptr %62, i64 %idxprom74
  %r76 = getelementptr inbounds %struct.complex, ptr %arrayidx75, i32 0, i32 0
  store float %61, ptr %r76, align 4
  %i77 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %64 = load float, ptr %i77, align 4
  %65 = load ptr, ptr %y.addr, align 8
  %66 = load i32, ptr %i__2, align 4
  %idxprom78 = sext i32 %66 to i64
  %arrayidx79 = getelementptr inbounds %struct.complex, ptr %65, i64 %idxprom78
  %i80 = getelementptr inbounds %struct.complex, ptr %arrayidx79, i32 0, i32 1
  store float %64, ptr %i80, align 4
  %67 = load i32, ptr %i__, align 4
  store i32 %67, ptr %i__2, align 4
  %r81 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 0
  %68 = load float, ptr %r81, align 4
  %69 = load ptr, ptr %x.addr, align 8
  %70 = load i32, ptr %i__2, align 4
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds %struct.complex, ptr %69, i64 %idxprom82
  %r84 = getelementptr inbounds %struct.complex, ptr %arrayidx83, i32 0, i32 0
  store float %68, ptr %r84, align 4
  %i85 = getelementptr inbounds %struct.complex, ptr %s, i32 0, i32 1
  %71 = load float, ptr %i85, align 4
  %72 = load ptr, ptr %x.addr, align 8
  %73 = load i32, ptr %i__2, align 4
  %idxprom86 = sext i32 %73 to i64
  %arrayidx87 = getelementptr inbounds %struct.complex, ptr %72, i64 %idxprom86
  %i88 = getelementptr inbounds %struct.complex, ptr %arrayidx87, i32 0, i32 1
  store float %71, ptr %i88, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
