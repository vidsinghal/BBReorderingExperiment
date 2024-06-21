; ModuleID = 'samples/504.bc'
source_filename = "/local-ssd/c-blosc2-q52l7kkhwdbfh4sei5p7kjcrwrevsg6a-build/aidengro/spack-stage-c-blosc2-2.10.5-q52l7kkhwdbfh4sei5p7kjcrwrevsg6a/spack-src/blosc/shuffle-generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @shuffle_generic(i32 noundef %bytesoftype, i32 noundef %blocksize, ptr noundef %_src, ptr noundef %_dest) #0 {
entry:
  %bytesoftype.addr = alloca i32, align 4
  %blocksize.addr = alloca i32, align 4
  %_src.addr = alloca ptr, align 8
  %_dest.addr = alloca ptr, align 8
  store i32 %bytesoftype, ptr %bytesoftype.addr, align 4, !tbaa !4
  store i32 %blocksize, ptr %blocksize.addr, align 4, !tbaa !4
  store ptr %_src, ptr %_src.addr, align 8, !tbaa !8
  store ptr %_dest, ptr %_dest.addr, align 8, !tbaa !8
  %0 = load i32, ptr %bytesoftype.addr, align 4, !tbaa !4
  %1 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %_src.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %_dest.addr, align 8, !tbaa !8
  call void @shuffle_generic_inline(i32 noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @shuffle_generic_inline(i32 noundef %type_size, i32 noundef %vectorizable_blocksize, i32 noundef %blocksize, ptr noundef %_src, ptr noundef %_dest) #1 {
entry:
  %type_size.addr = alloca i32, align 4
  %vectorizable_blocksize.addr = alloca i32, align 4
  %blocksize.addr = alloca i32, align 4
  %_src.addr = alloca ptr, align 8
  %_dest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %neblock_quot = alloca i32, align 4
  %neblock_rem = alloca i32, align 4
  %vectorizable_elements = alloca i32, align 4
  store i32 %type_size, ptr %type_size.addr, align 4, !tbaa !4
  store i32 %vectorizable_blocksize, ptr %vectorizable_blocksize.addr, align 4, !tbaa !4
  store i32 %blocksize, ptr %blocksize.addr, align 4, !tbaa !4
  store ptr %_src, ptr %_src.addr, align 8, !tbaa !8
  store ptr %_dest, ptr %_dest.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neblock_quot) #4
  %0 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %1 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %div = sdiv i32 %0, %1
  store i32 %div, ptr %neblock_quot, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neblock_rem) #4
  %2 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %3 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %rem = srem i32 %2, %3
  store i32 %rem, ptr %neblock_rem, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vectorizable_elements) #4
  %4 = load i32, ptr %vectorizable_blocksize.addr, align 4, !tbaa !4
  %5 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %div1 = sdiv i32 %4, %5
  store i32 %div1, ptr %vectorizable_elements, align 4, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %6 = load i32, ptr %j, align 4, !tbaa !4
  %7 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %vectorizable_elements, align 4, !tbaa !4
  store i32 %8, ptr %i, align 4, !tbaa !4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %10 = load i32, ptr %neblock_quot, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %11 = load ptr, ptr %_src.addr, align 8, !tbaa !8
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %13 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, ptr %j, align 4, !tbaa !4
  %add = add nsw i32 %mul, %14
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %16 = load ptr, ptr %_dest.addr, align 8, !tbaa !8
  %17 = load i32, ptr %j, align 4, !tbaa !4
  %18 = load i32, ptr %neblock_quot, align 4, !tbaa !4
  %mul5 = mul nsw i32 %17, %18
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %add6 = add nsw i32 %mul5, %19
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %16, i64 %idxprom7
  store i8 %15, ptr %arrayidx8, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %20 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %21 = load i32, ptr %j, align 4, !tbaa !4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, ptr %j, align 4, !tbaa !4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  %22 = load ptr, ptr %_dest.addr, align 8, !tbaa !8
  %23 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %24 = load i32, ptr %neblock_rem, align 4, !tbaa !4
  %sub = sub nsw i32 %23, %24
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  %25 = load ptr, ptr %_src.addr, align 8, !tbaa !8
  %26 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %27 = load i32, ptr %neblock_rem, align 4, !tbaa !4
  %sub12 = sub nsw i32 %26, %27
  %idx.ext13 = sext i32 %sub12 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %25, i64 %idx.ext13
  %28 = load i32, ptr %neblock_rem, align 4, !tbaa !4
  %conv = sext i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr14, i64 %conv, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr %vectorizable_elements) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %neblock_rem) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %neblock_quot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @unshuffle_generic(i32 noundef %bytesoftype, i32 noundef %blocksize, ptr noundef %_src, ptr noundef %_dest) #0 {
entry:
  %bytesoftype.addr = alloca i32, align 4
  %blocksize.addr = alloca i32, align 4
  %_src.addr = alloca ptr, align 8
  %_dest.addr = alloca ptr, align 8
  store i32 %bytesoftype, ptr %bytesoftype.addr, align 4, !tbaa !4
  store i32 %blocksize, ptr %blocksize.addr, align 4, !tbaa !4
  store ptr %_src, ptr %_src.addr, align 8, !tbaa !8
  store ptr %_dest, ptr %_dest.addr, align 8, !tbaa !8
  %0 = load i32, ptr %bytesoftype.addr, align 4, !tbaa !4
  %1 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %_src.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %_dest.addr, align 8, !tbaa !8
  call void @unshuffle_generic_inline(i32 noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @unshuffle_generic_inline(i32 noundef %type_size, i32 noundef %vectorizable_blocksize, i32 noundef %blocksize, ptr noundef %_src, ptr noundef %_dest) #1 {
entry:
  %type_size.addr = alloca i32, align 4
  %vectorizable_blocksize.addr = alloca i32, align 4
  %blocksize.addr = alloca i32, align 4
  %_src.addr = alloca ptr, align 8
  %_dest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %neblock_quot = alloca i32, align 4
  %neblock_rem = alloca i32, align 4
  %vectorizable_elements = alloca i32, align 4
  store i32 %type_size, ptr %type_size.addr, align 4, !tbaa !4
  store i32 %vectorizable_blocksize, ptr %vectorizable_blocksize.addr, align 4, !tbaa !4
  store i32 %blocksize, ptr %blocksize.addr, align 4, !tbaa !4
  store ptr %_src, ptr %_src.addr, align 8, !tbaa !8
  store ptr %_dest, ptr %_dest.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neblock_quot) #4
  %0 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %1 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %div = sdiv i32 %0, %1
  store i32 %div, ptr %neblock_quot, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %neblock_rem) #4
  %2 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %3 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %rem = srem i32 %2, %3
  store i32 %rem, ptr %neblock_rem, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vectorizable_elements) #4
  %4 = load i32, ptr %vectorizable_blocksize.addr, align 4, !tbaa !4
  %5 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %div1 = sdiv i32 %4, %5
  store i32 %div1, ptr %vectorizable_elements, align 4, !tbaa !4
  %6 = load i32, ptr %vectorizable_elements, align 4, !tbaa !4
  store i32 %6, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %8 = load i32, ptr %neblock_quot, align 4, !tbaa !4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !4
  %10 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %11 = load ptr, ptr %_src.addr, align 8, !tbaa !8
  %12 = load i32, ptr %j, align 4, !tbaa !4
  %13 = load i32, ptr %neblock_quot, align 4, !tbaa !4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %mul, %14
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %16 = load ptr, ptr %_dest.addr, align 8, !tbaa !8
  %17 = load i32, ptr %i, align 4, !tbaa !4
  %18 = load i32, ptr %type_size.addr, align 4, !tbaa !4
  %mul5 = mul nsw i32 %17, %18
  %19 = load i32, ptr %j, align 4, !tbaa !4
  %add6 = add nsw i32 %mul5, %19
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %16, i64 %idxprom7
  store i8 %15, ptr %arrayidx8, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %20 = load i32, ptr %j, align 4, !tbaa !4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4, !tbaa !4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %21 = load i32, ptr %i, align 4, !tbaa !4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  %22 = load ptr, ptr %_dest.addr, align 8, !tbaa !8
  %23 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %24 = load i32, ptr %neblock_rem, align 4, !tbaa !4
  %sub = sub nsw i32 %23, %24
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  %25 = load ptr, ptr %_src.addr, align 8, !tbaa !8
  %26 = load i32, ptr %blocksize.addr, align 4, !tbaa !4
  %27 = load i32, ptr %neblock_rem, align 4, !tbaa !4
  %sub12 = sub nsw i32 %26, %27
  %idx.ext13 = sext i32 %sub12 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %25, i64 %idx.ext13
  %28 = load i32, ptr %neblock_rem, align 4, !tbaa !4
  %conv = sext i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr14, i64 %conv, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr %vectorizable_elements) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %neblock_rem) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %neblock_quot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
