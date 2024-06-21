; ModuleID = 'samples/316.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/x8-transpose/gen/2x1-scalar-int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_x8_transpose_ukernel__2x1_scalar_int(ptr noundef %input, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_stride, i64 noundef %block_width, i64 noundef %block_height) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %output_stride.addr = alloca i64, align 8
  %block_width.addr = alloca i64, align 8
  %block_height.addr = alloca i64, align 8
  %tile_height = alloca i64, align 8
  %tile_width = alloca i64, align 8
  %tile_wbytes = alloca i64, align 8
  %input_reset = alloca i64, align 8
  %output_reset = alloca i64, align 8
  %input_offset = alloca i64, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %o0 = alloca ptr, align 8
  %bh = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !9
  store i64 %output_stride, ptr %output_stride.addr, align 8, !tbaa !9
  store i64 %block_width, ptr %block_width.addr, align 8, !tbaa !9
  store i64 %block_height, ptr %block_height.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_height) #3
  store i64 2, ptr %tile_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_width) #3
  store i64 1, ptr %tile_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_wbytes) #3
  store i64 1, ptr %tile_wbytes, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_reset) #3
  %0 = load i64, ptr %block_height.addr, align 8, !tbaa !9
  %call = call i64 @round_down_po2(i64 noundef %0, i64 noundef 2)
  %1 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %mul = mul i64 %call, %1
  %sub = sub i64 1, %mul
  store i64 %sub, ptr %input_reset, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_reset) #3
  %2 = load i64, ptr %output_stride.addr, align 8, !tbaa !9
  %mul1 = mul i64 1, %2
  %3 = load i64, ptr %block_height.addr, align 8, !tbaa !9
  %call2 = call i64 @round_down_po2(i64 noundef %3, i64 noundef 2)
  %mul3 = mul i64 %call2, 1
  %sub4 = sub i64 %mul1, %mul3
  store i64 %sub4, ptr %output_reset, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_offset) #3
  %4 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %mul5 = mul i64 2, %4
  store i64 %mul5, ptr %input_offset, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #3
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %5, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #3
  %6 = load ptr, ptr %i0, align 8, !tbaa !5
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add = add i64 %7, %8
  %9 = inttoptr i64 %add to ptr
  store ptr %9, ptr %i1, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %o0) #3
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !5
  store ptr %10, ptr %o0, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #3
  %11 = load i64, ptr %block_height.addr, align 8, !tbaa !9
  store i64 %11, ptr %bh, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %12 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp = icmp uge i64 %12, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %i0, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %15 = load ptr, ptr %o0, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %o0, align 8, !tbaa !5
  store i8 %14, ptr %15, align 1, !tbaa !11
  %16 = load ptr, ptr %i1, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx6, align 1, !tbaa !11
  %18 = load ptr, ptr %o0, align 8, !tbaa !5
  %incdec.ptr7 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr7, ptr %o0, align 8, !tbaa !5
  store i8 %17, ptr %18, align 1, !tbaa !11
  %19 = load ptr, ptr %i0, align 8, !tbaa !5
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %input_offset, align 8, !tbaa !9
  %add8 = add i64 %20, %21
  %22 = inttoptr i64 %add8 to ptr
  store ptr %22, ptr %i0, align 8, !tbaa !5
  %23 = load ptr, ptr %i1, align 8, !tbaa !5
  %24 = ptrtoint ptr %23 to i64
  %25 = load i64, ptr %input_offset, align 8, !tbaa !9
  %add9 = add i64 %24, %25
  %26 = inttoptr i64 %add9 to ptr
  store ptr %26, ptr %i1, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, ptr %bh, align 8, !tbaa !9
  %sub10 = sub i64 %27, 2
  store i64 %sub10, ptr %bh, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %28 = load i64, ptr %bh, align 8, !tbaa !9
  %and = and i64 %28, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %29 = load ptr, ptr %i0, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx11, align 1, !tbaa !11
  %31 = load ptr, ptr %o0, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, ptr %31, i64 0
  store i8 %30, ptr %arrayidx12, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %32 = load ptr, ptr %i0, align 8, !tbaa !5
  %33 = ptrtoint ptr %32 to i64
  %34 = load i64, ptr %input_reset, align 8, !tbaa !9
  %add13 = add i64 %33, %34
  %35 = inttoptr i64 %add13 to ptr
  store ptr %35, ptr %i0, align 8, !tbaa !5
  %36 = load ptr, ptr %i0, align 8, !tbaa !5
  %37 = ptrtoint ptr %36 to i64
  %38 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add14 = add i64 %37, %38
  %39 = inttoptr i64 %add14 to ptr
  store ptr %39, ptr %i1, align 8, !tbaa !5
  %40 = load ptr, ptr %o0, align 8, !tbaa !5
  %41 = ptrtoint ptr %40 to i64
  %42 = load i64, ptr %output_reset, align 8, !tbaa !9
  %add15 = add i64 %41, %42
  %43 = inttoptr i64 %add15 to ptr
  store ptr %43, ptr %o0, align 8, !tbaa !5
  %44 = load i64, ptr %block_width.addr, align 8, !tbaa !9
  %call16 = call i64 @doz(i64 noundef %44, i64 noundef 1)
  store i64 %call16, ptr %block_width.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #3
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %45 = load i64, ptr %block_width.addr, align 8, !tbaa !9
  %cmp17 = icmp ne i64 %45, 0
  br i1 %cmp17, label %do.body, label %do.end, !llvm.loop !14

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %o0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_reset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_reset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_wbytes) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_width) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_height) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #2 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  store i64 %q, ptr %q.addr, align 8, !tbaa !9
  %0 = load i64, ptr %n.addr, align 8, !tbaa !9
  %1 = load i64, ptr %q.addr, align 8, !tbaa !9
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @doz(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load i64, ptr %b.addr, align 8, !tbaa !9
  %1 = load i64, ptr %a.addr, align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !15

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %b.addr, align 8, !tbaa !9
  %sub = sub i64 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{}
