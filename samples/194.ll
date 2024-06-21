; ModuleID = 'samples/194.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jidctred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg16_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jpeg_idct_4x4(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %z1 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %z3 = alloca i32, align 4
  %z4 = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [32 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval131 = alloca i16, align 2
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %compptr, ptr %compptr.addr, align 8, !tbaa !4
  store ptr %coef_block, ptr %coef_block.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %output_col, ptr %output_col.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp0) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp10) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp12) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %z1) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %z2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %z3) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %z4) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %inptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %quantptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %wsptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %outptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_limit) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %sample_range_limit = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 66
  %1 = load ptr, ptr %sample_range_limit, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i16, ptr %1, i64 32768
  store ptr %add.ptr, ptr %range_limit, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctr) #2
  call void @llvm.lifetime.start.p0(i64 128, ptr %workspace) #2
  %2 = load ptr, ptr %coef_block.addr, align 8, !tbaa !4
  store ptr %2, ptr %inptr, align 8, !tbaa !4
  %3 = load ptr, ptr %compptr.addr, align 8, !tbaa !4
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %3, i32 0, i32 20
  %4 = load ptr, ptr %dct_table, align 8, !tbaa !14
  store ptr %4, ptr %quantptr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [32 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %wsptr, align 8, !tbaa !4
  store i32 8, ptr %ctr, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %6, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 8
  %8 = load i16, ptr %arrayidx, align 2, !tbaa !16
  %conv = sext i16 %8 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i16, ptr %9, i64 16
  %10 = load i16, ptr %arrayidx4, align 2, !tbaa !16
  %conv5 = sext i16 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %land.lhs.true8, label %if.end36

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i16, ptr %11, i64 24
  %12 = load i16, ptr %arrayidx9, align 2, !tbaa !16
  %conv10 = sext i16 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %land.lhs.true13, label %if.end36

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %13 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i16, ptr %13, i64 40
  %14 = load i16, ptr %arrayidx14, align 2, !tbaa !16
  %conv15 = sext i16 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end36

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %15 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds i16, ptr %15, i64 48
  %16 = load i16, ptr %arrayidx19, align 2, !tbaa !16
  %conv20 = sext i16 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.end36

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %17 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i16, ptr %17, i64 56
  %18 = load i16, ptr %arrayidx24, align 2, !tbaa !16
  %conv25 = sext i16 %18 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.end36

if.then28:                                        ; preds = %land.lhs.true23
  call void @llvm.lifetime.start.p0(i64 4, ptr %dcval) #2
  %19 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds i16, ptr %19, i64 0
  %20 = load i16, ptr %arrayidx29, align 2, !tbaa !16
  %conv30 = sext i16 %20 to i32
  %21 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds i32, ptr %21, i64 0
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !8
  %mul = mul nsw i32 %conv30, %22
  %shl = shl i32 %mul, 1
  store i32 %shl, ptr %dcval, align 4, !tbaa !8
  %23 = load i32, ptr %dcval, align 4, !tbaa !8
  %24 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds i32, ptr %24, i64 0
  store i32 %23, ptr %arrayidx32, align 4, !tbaa !8
  %25 = load i32, ptr %dcval, align 4, !tbaa !8
  %26 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i32, ptr %26, i64 8
  store i32 %25, ptr %arrayidx33, align 4, !tbaa !8
  %27 = load i32, ptr %dcval, align 4, !tbaa !8
  %28 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds i32, ptr %28, i64 16
  store i32 %27, ptr %arrayidx34, align 4, !tbaa !8
  %29 = load i32, ptr %dcval, align 4, !tbaa !8
  %30 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds i32, ptr %30, i64 24
  store i32 %29, ptr %arrayidx35, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %dcval) #2
  br label %for.inc

if.end36:                                         ; preds = %land.lhs.true23, %land.lhs.true18, %land.lhs.true13, %land.lhs.true8, %land.lhs.true, %if.end
  %31 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds i16, ptr %31, i64 0
  %32 = load i16, ptr %arrayidx37, align 2, !tbaa !16
  %conv38 = sext i16 %32 to i32
  %33 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds i32, ptr %33, i64 0
  %34 = load i32, ptr %arrayidx39, align 4, !tbaa !8
  %mul40 = mul nsw i32 %conv38, %34
  store i32 %mul40, ptr %tmp0, align 4, !tbaa !8
  %35 = load i32, ptr %tmp0, align 4, !tbaa !8
  %shl41 = shl i32 %35, 14
  store i32 %shl41, ptr %tmp0, align 4, !tbaa !8
  %36 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds i16, ptr %36, i64 16
  %37 = load i16, ptr %arrayidx42, align 2, !tbaa !16
  %conv43 = sext i16 %37 to i32
  %38 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds i32, ptr %38, i64 16
  %39 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %mul45 = mul nsw i32 %conv43, %39
  store i32 %mul45, ptr %z2, align 4, !tbaa !8
  %40 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds i16, ptr %40, i64 48
  %41 = load i16, ptr %arrayidx46, align 2, !tbaa !16
  %conv47 = sext i16 %41 to i32
  %42 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i32, ptr %42, i64 48
  %43 = load i32, ptr %arrayidx48, align 4, !tbaa !8
  %mul49 = mul nsw i32 %conv47, %43
  store i32 %mul49, ptr %z3, align 4, !tbaa !8
  %44 = load i32, ptr %z2, align 4, !tbaa !8
  %mul50 = mul nsw i32 %44, 15137
  %45 = load i32, ptr %z3, align 4, !tbaa !8
  %mul51 = mul nsw i32 %45, -6270
  %add = add nsw i32 %mul50, %mul51
  store i32 %add, ptr %tmp2, align 4, !tbaa !8
  %46 = load i32, ptr %tmp0, align 4, !tbaa !8
  %47 = load i32, ptr %tmp2, align 4, !tbaa !8
  %add52 = add nsw i32 %46, %47
  store i32 %add52, ptr %tmp10, align 4, !tbaa !8
  %48 = load i32, ptr %tmp0, align 4, !tbaa !8
  %49 = load i32, ptr %tmp2, align 4, !tbaa !8
  %sub = sub nsw i32 %48, %49
  store i32 %sub, ptr %tmp12, align 4, !tbaa !8
  %50 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i16, ptr %50, i64 56
  %51 = load i16, ptr %arrayidx53, align 2, !tbaa !16
  %conv54 = sext i16 %51 to i32
  %52 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx55 = getelementptr inbounds i32, ptr %52, i64 56
  %53 = load i32, ptr %arrayidx55, align 4, !tbaa !8
  %mul56 = mul nsw i32 %conv54, %53
  store i32 %mul56, ptr %z1, align 4, !tbaa !8
  %54 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds i16, ptr %54, i64 40
  %55 = load i16, ptr %arrayidx57, align 2, !tbaa !16
  %conv58 = sext i16 %55 to i32
  %56 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds i32, ptr %56, i64 40
  %57 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %mul60 = mul nsw i32 %conv58, %57
  store i32 %mul60, ptr %z2, align 4, !tbaa !8
  %58 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds i16, ptr %58, i64 24
  %59 = load i16, ptr %arrayidx61, align 2, !tbaa !16
  %conv62 = sext i16 %59 to i32
  %60 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx63 = getelementptr inbounds i32, ptr %60, i64 24
  %61 = load i32, ptr %arrayidx63, align 4, !tbaa !8
  %mul64 = mul nsw i32 %conv62, %61
  store i32 %mul64, ptr %z3, align 4, !tbaa !8
  %62 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds i16, ptr %62, i64 8
  %63 = load i16, ptr %arrayidx65, align 2, !tbaa !16
  %conv66 = sext i16 %63 to i32
  %64 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx67 = getelementptr inbounds i32, ptr %64, i64 8
  %65 = load i32, ptr %arrayidx67, align 4, !tbaa !8
  %mul68 = mul nsw i32 %conv66, %65
  store i32 %mul68, ptr %z4, align 4, !tbaa !8
  %66 = load i32, ptr %z1, align 4, !tbaa !8
  %mul69 = mul nsw i32 %66, -1730
  %67 = load i32, ptr %z2, align 4, !tbaa !8
  %mul70 = mul nsw i32 %67, 11893
  %add71 = add nsw i32 %mul69, %mul70
  %68 = load i32, ptr %z3, align 4, !tbaa !8
  %mul72 = mul nsw i32 %68, -17799
  %add73 = add nsw i32 %add71, %mul72
  %69 = load i32, ptr %z4, align 4, !tbaa !8
  %mul74 = mul nsw i32 %69, 8697
  %add75 = add nsw i32 %add73, %mul74
  store i32 %add75, ptr %tmp0, align 4, !tbaa !8
  %70 = load i32, ptr %z1, align 4, !tbaa !8
  %mul76 = mul nsw i32 %70, -4176
  %71 = load i32, ptr %z2, align 4, !tbaa !8
  %mul77 = mul nsw i32 %71, -4926
  %add78 = add nsw i32 %mul76, %mul77
  %72 = load i32, ptr %z3, align 4, !tbaa !8
  %mul79 = mul nsw i32 %72, 7373
  %add80 = add nsw i32 %add78, %mul79
  %73 = load i32, ptr %z4, align 4, !tbaa !8
  %mul81 = mul nsw i32 %73, 20995
  %add82 = add nsw i32 %add80, %mul81
  store i32 %add82, ptr %tmp2, align 4, !tbaa !8
  %74 = load i32, ptr %tmp10, align 4, !tbaa !8
  %75 = load i32, ptr %tmp2, align 4, !tbaa !8
  %add83 = add nsw i32 %74, %75
  %add84 = add nsw i32 %add83, 4096
  %shr = ashr i32 %add84, 13
  %76 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds i32, ptr %76, i64 0
  store i32 %shr, ptr %arrayidx85, align 4, !tbaa !8
  %77 = load i32, ptr %tmp10, align 4, !tbaa !8
  %78 = load i32, ptr %tmp2, align 4, !tbaa !8
  %sub86 = sub nsw i32 %77, %78
  %add87 = add nsw i32 %sub86, 4096
  %shr88 = ashr i32 %add87, 13
  %79 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds i32, ptr %79, i64 24
  store i32 %shr88, ptr %arrayidx89, align 4, !tbaa !8
  %80 = load i32, ptr %tmp12, align 4, !tbaa !8
  %81 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add90 = add nsw i32 %80, %81
  %add91 = add nsw i32 %add90, 4096
  %shr92 = ashr i32 %add91, 13
  %82 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds i32, ptr %82, i64 8
  store i32 %shr92, ptr %arrayidx93, align 4, !tbaa !8
  %83 = load i32, ptr %tmp12, align 4, !tbaa !8
  %84 = load i32, ptr %tmp0, align 4, !tbaa !8
  %sub94 = sub nsw i32 %83, %84
  %add95 = add nsw i32 %sub94, 4096
  %shr96 = ashr i32 %add95, 13
  %85 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds i32, ptr %85, i64 16
  store i32 %shr96, ptr %arrayidx97, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %if.then28, %if.then
  %86 = load ptr, ptr %inptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %86, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8, !tbaa !4
  %87 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %incdec.ptr98 = getelementptr inbounds i32, ptr %87, i32 1
  store ptr %incdec.ptr98, ptr %quantptr, align 8, !tbaa !4
  %88 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %incdec.ptr99 = getelementptr inbounds i32, ptr %88, i32 1
  store ptr %incdec.ptr99, ptr %wsptr, align 8, !tbaa !4
  %89 = load i32, ptr %ctr, align 4, !tbaa !8
  %dec = add nsw i32 %89, -1
  store i32 %dec, ptr %ctr, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %arraydecay100 = getelementptr inbounds [32 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay100, ptr %wsptr, align 8, !tbaa !4
  store i32 0, ptr %ctr, align 4, !tbaa !8
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc199, %for.end
  %90 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp102 = icmp slt i32 %90, 4
  br i1 %cmp102, label %for.body104, label %for.end200

for.body104:                                      ; preds = %for.cond101
  %91 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %92 = load i32, ptr %ctr, align 4, !tbaa !8
  %idxprom = sext i32 %92 to i64
  %arrayidx105 = getelementptr inbounds ptr, ptr %91, i64 %idxprom
  %93 = load ptr, ptr %arrayidx105, align 8, !tbaa !4
  %94 = load i32, ptr %output_col.addr, align 4, !tbaa !8
  %idx.ext = zext i32 %94 to i64
  %add.ptr106 = getelementptr inbounds i16, ptr %93, i64 %idx.ext
  store ptr %add.ptr106, ptr %outptr, align 8, !tbaa !4
  %95 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx107 = getelementptr inbounds i32, ptr %95, i64 1
  %96 = load i32, ptr %arrayidx107, align 4, !tbaa !8
  %cmp108 = icmp eq i32 %96, 0
  br i1 %cmp108, label %land.lhs.true110, label %if.end142

land.lhs.true110:                                 ; preds = %for.body104
  %97 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds i32, ptr %97, i64 2
  %98 = load i32, ptr %arrayidx111, align 4, !tbaa !8
  %cmp112 = icmp eq i32 %98, 0
  br i1 %cmp112, label %land.lhs.true114, label %if.end142

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %99 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds i32, ptr %99, i64 3
  %100 = load i32, ptr %arrayidx115, align 4, !tbaa !8
  %cmp116 = icmp eq i32 %100, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.end142

land.lhs.true118:                                 ; preds = %land.lhs.true114
  %101 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds i32, ptr %101, i64 5
  %102 = load i32, ptr %arrayidx119, align 4, !tbaa !8
  %cmp120 = icmp eq i32 %102, 0
  br i1 %cmp120, label %land.lhs.true122, label %if.end142

land.lhs.true122:                                 ; preds = %land.lhs.true118
  %103 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx123 = getelementptr inbounds i32, ptr %103, i64 6
  %104 = load i32, ptr %arrayidx123, align 4, !tbaa !8
  %cmp124 = icmp eq i32 %104, 0
  br i1 %cmp124, label %land.lhs.true126, label %if.end142

land.lhs.true126:                                 ; preds = %land.lhs.true122
  %105 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx127 = getelementptr inbounds i32, ptr %105, i64 7
  %106 = load i32, ptr %arrayidx127, align 4, !tbaa !8
  %cmp128 = icmp eq i32 %106, 0
  br i1 %cmp128, label %if.then130, label %if.end142

if.then130:                                       ; preds = %land.lhs.true126
  call void @llvm.lifetime.start.p0(i64 2, ptr %dcval131) #2
  %107 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %108 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx132 = getelementptr inbounds i32, ptr %108, i64 0
  %109 = load i32, ptr %arrayidx132, align 4, !tbaa !8
  %add133 = add nsw i32 %109, 8
  %shr134 = ashr i32 %add133, 4
  %and = and i32 %shr134, 262143
  %idxprom135 = sext i32 %and to i64
  %arrayidx136 = getelementptr inbounds i16, ptr %107, i64 %idxprom135
  %110 = load i16, ptr %arrayidx136, align 2, !tbaa !16
  store i16 %110, ptr %dcval131, align 2, !tbaa !16
  %111 = load i16, ptr %dcval131, align 2, !tbaa !16
  %112 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx137 = getelementptr inbounds i16, ptr %112, i64 0
  store i16 %111, ptr %arrayidx137, align 2, !tbaa !16
  %113 = load i16, ptr %dcval131, align 2, !tbaa !16
  %114 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx138 = getelementptr inbounds i16, ptr %114, i64 1
  store i16 %113, ptr %arrayidx138, align 2, !tbaa !16
  %115 = load i16, ptr %dcval131, align 2, !tbaa !16
  %116 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx139 = getelementptr inbounds i16, ptr %116, i64 2
  store i16 %115, ptr %arrayidx139, align 2, !tbaa !16
  %117 = load i16, ptr %dcval131, align 2, !tbaa !16
  %118 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx140 = getelementptr inbounds i16, ptr %118, i64 3
  store i16 %117, ptr %arrayidx140, align 2, !tbaa !16
  %119 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %add.ptr141 = getelementptr inbounds i32, ptr %119, i64 8
  store ptr %add.ptr141, ptr %wsptr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 2, ptr %dcval131) #2
  br label %for.inc199

if.end142:                                        ; preds = %land.lhs.true126, %land.lhs.true122, %land.lhs.true118, %land.lhs.true114, %land.lhs.true110, %for.body104
  %120 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx143 = getelementptr inbounds i32, ptr %120, i64 0
  %121 = load i32, ptr %arrayidx143, align 4, !tbaa !8
  %shl144 = shl i32 %121, 14
  store i32 %shl144, ptr %tmp0, align 4, !tbaa !8
  %122 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx145 = getelementptr inbounds i32, ptr %122, i64 2
  %123 = load i32, ptr %arrayidx145, align 4, !tbaa !8
  %mul146 = mul nsw i32 %123, 15137
  %124 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx147 = getelementptr inbounds i32, ptr %124, i64 6
  %125 = load i32, ptr %arrayidx147, align 4, !tbaa !8
  %mul148 = mul nsw i32 %125, -6270
  %add149 = add nsw i32 %mul146, %mul148
  store i32 %add149, ptr %tmp2, align 4, !tbaa !8
  %126 = load i32, ptr %tmp0, align 4, !tbaa !8
  %127 = load i32, ptr %tmp2, align 4, !tbaa !8
  %add150 = add nsw i32 %126, %127
  store i32 %add150, ptr %tmp10, align 4, !tbaa !8
  %128 = load i32, ptr %tmp0, align 4, !tbaa !8
  %129 = load i32, ptr %tmp2, align 4, !tbaa !8
  %sub151 = sub nsw i32 %128, %129
  store i32 %sub151, ptr %tmp12, align 4, !tbaa !8
  %130 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx152 = getelementptr inbounds i32, ptr %130, i64 7
  %131 = load i32, ptr %arrayidx152, align 4, !tbaa !8
  store i32 %131, ptr %z1, align 4, !tbaa !8
  %132 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx153 = getelementptr inbounds i32, ptr %132, i64 5
  %133 = load i32, ptr %arrayidx153, align 4, !tbaa !8
  store i32 %133, ptr %z2, align 4, !tbaa !8
  %134 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx154 = getelementptr inbounds i32, ptr %134, i64 3
  %135 = load i32, ptr %arrayidx154, align 4, !tbaa !8
  store i32 %135, ptr %z3, align 4, !tbaa !8
  %136 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds i32, ptr %136, i64 1
  %137 = load i32, ptr %arrayidx155, align 4, !tbaa !8
  store i32 %137, ptr %z4, align 4, !tbaa !8
  %138 = load i32, ptr %z1, align 4, !tbaa !8
  %mul156 = mul nsw i32 %138, -1730
  %139 = load i32, ptr %z2, align 4, !tbaa !8
  %mul157 = mul nsw i32 %139, 11893
  %add158 = add nsw i32 %mul156, %mul157
  %140 = load i32, ptr %z3, align 4, !tbaa !8
  %mul159 = mul nsw i32 %140, -17799
  %add160 = add nsw i32 %add158, %mul159
  %141 = load i32, ptr %z4, align 4, !tbaa !8
  %mul161 = mul nsw i32 %141, 8697
  %add162 = add nsw i32 %add160, %mul161
  store i32 %add162, ptr %tmp0, align 4, !tbaa !8
  %142 = load i32, ptr %z1, align 4, !tbaa !8
  %mul163 = mul nsw i32 %142, -4176
  %143 = load i32, ptr %z2, align 4, !tbaa !8
  %mul164 = mul nsw i32 %143, -4926
  %add165 = add nsw i32 %mul163, %mul164
  %144 = load i32, ptr %z3, align 4, !tbaa !8
  %mul166 = mul nsw i32 %144, 7373
  %add167 = add nsw i32 %add165, %mul166
  %145 = load i32, ptr %z4, align 4, !tbaa !8
  %mul168 = mul nsw i32 %145, 20995
  %add169 = add nsw i32 %add167, %mul168
  store i32 %add169, ptr %tmp2, align 4, !tbaa !8
  %146 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %147 = load i32, ptr %tmp10, align 4, !tbaa !8
  %148 = load i32, ptr %tmp2, align 4, !tbaa !8
  %add170 = add nsw i32 %147, %148
  %add171 = add nsw i32 %add170, 131072
  %shr172 = ashr i32 %add171, 18
  %and173 = and i32 %shr172, 262143
  %idxprom174 = sext i32 %and173 to i64
  %arrayidx175 = getelementptr inbounds i16, ptr %146, i64 %idxprom174
  %149 = load i16, ptr %arrayidx175, align 2, !tbaa !16
  %150 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx176 = getelementptr inbounds i16, ptr %150, i64 0
  store i16 %149, ptr %arrayidx176, align 2, !tbaa !16
  %151 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %152 = load i32, ptr %tmp10, align 4, !tbaa !8
  %153 = load i32, ptr %tmp2, align 4, !tbaa !8
  %sub177 = sub nsw i32 %152, %153
  %add178 = add nsw i32 %sub177, 131072
  %shr179 = ashr i32 %add178, 18
  %and180 = and i32 %shr179, 262143
  %idxprom181 = sext i32 %and180 to i64
  %arrayidx182 = getelementptr inbounds i16, ptr %151, i64 %idxprom181
  %154 = load i16, ptr %arrayidx182, align 2, !tbaa !16
  %155 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx183 = getelementptr inbounds i16, ptr %155, i64 3
  store i16 %154, ptr %arrayidx183, align 2, !tbaa !16
  %156 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %157 = load i32, ptr %tmp12, align 4, !tbaa !8
  %158 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add184 = add nsw i32 %157, %158
  %add185 = add nsw i32 %add184, 131072
  %shr186 = ashr i32 %add185, 18
  %and187 = and i32 %shr186, 262143
  %idxprom188 = sext i32 %and187 to i64
  %arrayidx189 = getelementptr inbounds i16, ptr %156, i64 %idxprom188
  %159 = load i16, ptr %arrayidx189, align 2, !tbaa !16
  %160 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx190 = getelementptr inbounds i16, ptr %160, i64 1
  store i16 %159, ptr %arrayidx190, align 2, !tbaa !16
  %161 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %162 = load i32, ptr %tmp12, align 4, !tbaa !8
  %163 = load i32, ptr %tmp0, align 4, !tbaa !8
  %sub191 = sub nsw i32 %162, %163
  %add192 = add nsw i32 %sub191, 131072
  %shr193 = ashr i32 %add192, 18
  %and194 = and i32 %shr193, 262143
  %idxprom195 = sext i32 %and194 to i64
  %arrayidx196 = getelementptr inbounds i16, ptr %161, i64 %idxprom195
  %164 = load i16, ptr %arrayidx196, align 2, !tbaa !16
  %165 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds i16, ptr %165, i64 2
  store i16 %164, ptr %arrayidx197, align 2, !tbaa !16
  %166 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %add.ptr198 = getelementptr inbounds i32, ptr %166, i64 8
  store ptr %add.ptr198, ptr %wsptr, align 8, !tbaa !4
  br label %for.inc199

for.inc199:                                       ; preds = %if.end142, %if.then130
  %167 = load i32, ptr %ctr, align 4, !tbaa !8
  %inc = add nsw i32 %167, 1
  store i32 %inc, ptr %ctr, align 4, !tbaa !8
  br label %for.cond101, !llvm.loop !19

for.end200:                                       ; preds = %for.cond101
  call void @llvm.lifetime.end.p0(i64 128, ptr %workspace) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_limit) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %outptr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %wsptr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %quantptr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %inptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %z4) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %z3) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %z2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %z1) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp12) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp10) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp0) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jpeg_idct_2x2(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %tmp0 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %z1 = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %quantptr = alloca ptr, align 8
  %wsptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  %ctr = alloca i32, align 4
  %workspace = alloca [16 x i32], align 16
  %dcval = alloca i32, align 4
  %dcval86 = alloca i16, align 2
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %compptr, ptr %compptr.addr, align 8, !tbaa !4
  store ptr %coef_block, ptr %coef_block.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %output_col, ptr %output_col.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp0) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp10) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %z1) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %inptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %quantptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %wsptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %outptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_limit) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %sample_range_limit = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 66
  %1 = load ptr, ptr %sample_range_limit, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i16, ptr %1, i64 32768
  store ptr %add.ptr, ptr %range_limit, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctr) #2
  call void @llvm.lifetime.start.p0(i64 64, ptr %workspace) #2
  %2 = load ptr, ptr %coef_block.addr, align 8, !tbaa !4
  store ptr %2, ptr %inptr, align 8, !tbaa !4
  %3 = load ptr, ptr %compptr.addr, align 8, !tbaa !4
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %3, i32 0, i32 20
  %4 = load ptr, ptr %dct_table, align 8, !tbaa !14
  store ptr %4, ptr %quantptr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [16 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %wsptr, align 8, !tbaa !4
  store i32 8, ptr %ctr, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %6, 6
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %7, 4
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false3
  %9 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 8
  %10 = load i16, ptr %arrayidx, align 2, !tbaa !16
  %conv = sext i16 %10 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i16, ptr %11, i64 24
  %12 = load i16, ptr %arrayidx7, align 2, !tbaa !16
  %conv8 = sext i16 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end27

land.lhs.true11:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i16, ptr %13, i64 40
  %14 = load i16, ptr %arrayidx12, align 2, !tbaa !16
  %conv13 = sext i16 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end27

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %15 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds i16, ptr %15, i64 56
  %16 = load i16, ptr %arrayidx17, align 2, !tbaa !16
  %conv18 = sext i16 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %land.lhs.true16
  call void @llvm.lifetime.start.p0(i64 4, ptr %dcval) #2
  %17 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i16, ptr %17, i64 0
  %18 = load i16, ptr %arrayidx22, align 2, !tbaa !16
  %conv23 = sext i16 %18 to i32
  %19 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i32, ptr %19, i64 0
  %20 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  %mul = mul nsw i32 %conv23, %20
  %shl = shl i32 %mul, 1
  store i32 %shl, ptr %dcval, align 4, !tbaa !8
  %21 = load i32, ptr %dcval, align 4, !tbaa !8
  %22 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds i32, ptr %22, i64 0
  store i32 %21, ptr %arrayidx25, align 4, !tbaa !8
  %23 = load i32, ptr %dcval, align 4, !tbaa !8
  %24 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i32, ptr %24, i64 8
  store i32 %23, ptr %arrayidx26, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %dcval) #2
  br label %for.inc

if.end27:                                         ; preds = %land.lhs.true16, %land.lhs.true11, %land.lhs.true, %if.end
  %25 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i16, ptr %25, i64 0
  %26 = load i16, ptr %arrayidx28, align 2, !tbaa !16
  %conv29 = sext i16 %26 to i32
  %27 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds i32, ptr %27, i64 0
  %28 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  %mul31 = mul nsw i32 %conv29, %28
  store i32 %mul31, ptr %z1, align 4, !tbaa !8
  %29 = load i32, ptr %z1, align 4, !tbaa !8
  %shl32 = shl i32 %29, 15
  store i32 %shl32, ptr %tmp10, align 4, !tbaa !8
  %30 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds i16, ptr %30, i64 56
  %31 = load i16, ptr %arrayidx33, align 2, !tbaa !16
  %conv34 = sext i16 %31 to i32
  %32 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds i32, ptr %32, i64 56
  %33 = load i32, ptr %arrayidx35, align 4, !tbaa !8
  %mul36 = mul nsw i32 %conv34, %33
  store i32 %mul36, ptr %z1, align 4, !tbaa !8
  %34 = load i32, ptr %z1, align 4, !tbaa !8
  %mul37 = mul nsw i32 %34, -5906
  store i32 %mul37, ptr %tmp0, align 4, !tbaa !8
  %35 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx38 = getelementptr inbounds i16, ptr %35, i64 40
  %36 = load i16, ptr %arrayidx38, align 2, !tbaa !16
  %conv39 = sext i16 %36 to i32
  %37 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds i32, ptr %37, i64 40
  %38 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  %mul41 = mul nsw i32 %conv39, %38
  store i32 %mul41, ptr %z1, align 4, !tbaa !8
  %39 = load i32, ptr %z1, align 4, !tbaa !8
  %mul42 = mul nsw i32 %39, 6967
  %40 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add = add nsw i32 %40, %mul42
  store i32 %add, ptr %tmp0, align 4, !tbaa !8
  %41 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i16, ptr %41, i64 24
  %42 = load i16, ptr %arrayidx43, align 2, !tbaa !16
  %conv44 = sext i16 %42 to i32
  %43 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds i32, ptr %43, i64 24
  %44 = load i32, ptr %arrayidx45, align 4, !tbaa !8
  %mul46 = mul nsw i32 %conv44, %44
  store i32 %mul46, ptr %z1, align 4, !tbaa !8
  %45 = load i32, ptr %z1, align 4, !tbaa !8
  %mul47 = mul nsw i32 %45, -10426
  %46 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add48 = add nsw i32 %46, %mul47
  store i32 %add48, ptr %tmp0, align 4, !tbaa !8
  %47 = load ptr, ptr %inptr, align 8, !tbaa !4
  %arrayidx49 = getelementptr inbounds i16, ptr %47, i64 8
  %48 = load i16, ptr %arrayidx49, align 2, !tbaa !16
  %conv50 = sext i16 %48 to i32
  %49 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds i32, ptr %49, i64 8
  %50 = load i32, ptr %arrayidx51, align 4, !tbaa !8
  %mul52 = mul nsw i32 %conv50, %50
  store i32 %mul52, ptr %z1, align 4, !tbaa !8
  %51 = load i32, ptr %z1, align 4, !tbaa !8
  %mul53 = mul nsw i32 %51, 29692
  %52 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add54 = add nsw i32 %52, %mul53
  store i32 %add54, ptr %tmp0, align 4, !tbaa !8
  %53 = load i32, ptr %tmp10, align 4, !tbaa !8
  %54 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add55 = add nsw i32 %53, %54
  %add56 = add nsw i32 %add55, 8192
  %shr = ashr i32 %add56, 14
  %55 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds i32, ptr %55, i64 0
  store i32 %shr, ptr %arrayidx57, align 4, !tbaa !8
  %56 = load i32, ptr %tmp10, align 4, !tbaa !8
  %57 = load i32, ptr %tmp0, align 4, !tbaa !8
  %sub = sub nsw i32 %56, %57
  %add58 = add nsw i32 %sub, 8192
  %shr59 = ashr i32 %add58, 14
  %58 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds i32, ptr %58, i64 8
  store i32 %shr59, ptr %arrayidx60, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %if.then21, %if.then
  %59 = load ptr, ptr %inptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %59, i32 1
  store ptr %incdec.ptr, ptr %inptr, align 8, !tbaa !4
  %60 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %incdec.ptr61 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr61, ptr %quantptr, align 8, !tbaa !4
  %61 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %incdec.ptr62 = getelementptr inbounds i32, ptr %61, i32 1
  store ptr %incdec.ptr62, ptr %wsptr, align 8, !tbaa !4
  %62 = load i32, ptr %ctr, align 4, !tbaa !8
  %dec = add nsw i32 %62, -1
  store i32 %dec, ptr %ctr, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %arraydecay63 = getelementptr inbounds [16 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay63, ptr %wsptr, align 8, !tbaa !4
  store i32 0, ptr %ctr, align 4, !tbaa !8
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc124, %for.end
  %63 = load i32, ptr %ctr, align 4, !tbaa !8
  %cmp65 = icmp slt i32 %63, 2
  br i1 %cmp65, label %for.body67, label %for.end125

for.body67:                                       ; preds = %for.cond64
  %64 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %65 = load i32, ptr %ctr, align 4, !tbaa !8
  %idxprom = sext i32 %65 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %64, i64 %idxprom
  %66 = load ptr, ptr %arrayidx68, align 8, !tbaa !4
  %67 = load i32, ptr %output_col.addr, align 4, !tbaa !8
  %idx.ext = zext i32 %67 to i64
  %add.ptr69 = getelementptr inbounds i16, ptr %66, i64 %idx.ext
  store ptr %add.ptr69, ptr %outptr, align 8, !tbaa !4
  %68 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds i32, ptr %68, i64 1
  %69 = load i32, ptr %arrayidx70, align 4, !tbaa !8
  %cmp71 = icmp eq i32 %69, 0
  br i1 %cmp71, label %land.lhs.true73, label %if.end95

land.lhs.true73:                                  ; preds = %for.body67
  %70 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds i32, ptr %70, i64 3
  %71 = load i32, ptr %arrayidx74, align 4, !tbaa !8
  %cmp75 = icmp eq i32 %71, 0
  br i1 %cmp75, label %land.lhs.true77, label %if.end95

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %72 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds i32, ptr %72, i64 5
  %73 = load i32, ptr %arrayidx78, align 4, !tbaa !8
  %cmp79 = icmp eq i32 %73, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end95

land.lhs.true81:                                  ; preds = %land.lhs.true77
  %74 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds i32, ptr %74, i64 7
  %75 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %cmp83 = icmp eq i32 %75, 0
  br i1 %cmp83, label %if.then85, label %if.end95

if.then85:                                        ; preds = %land.lhs.true81
  call void @llvm.lifetime.start.p0(i64 2, ptr %dcval86) #2
  %76 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %77 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds i32, ptr %77, i64 0
  %78 = load i32, ptr %arrayidx87, align 4, !tbaa !8
  %add88 = add nsw i32 %78, 8
  %shr89 = ashr i32 %add88, 4
  %and = and i32 %shr89, 262143
  %idxprom90 = sext i32 %and to i64
  %arrayidx91 = getelementptr inbounds i16, ptr %76, i64 %idxprom90
  %79 = load i16, ptr %arrayidx91, align 2, !tbaa !16
  store i16 %79, ptr %dcval86, align 2, !tbaa !16
  %80 = load i16, ptr %dcval86, align 2, !tbaa !16
  %81 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx92 = getelementptr inbounds i16, ptr %81, i64 0
  store i16 %80, ptr %arrayidx92, align 2, !tbaa !16
  %82 = load i16, ptr %dcval86, align 2, !tbaa !16
  %83 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds i16, ptr %83, i64 1
  store i16 %82, ptr %arrayidx93, align 2, !tbaa !16
  %84 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %add.ptr94 = getelementptr inbounds i32, ptr %84, i64 8
  store ptr %add.ptr94, ptr %wsptr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 2, ptr %dcval86) #2
  br label %for.inc124

if.end95:                                         ; preds = %land.lhs.true81, %land.lhs.true77, %land.lhs.true73, %for.body67
  %85 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds i32, ptr %85, i64 0
  %86 = load i32, ptr %arrayidx96, align 4, !tbaa !8
  %shl97 = shl i32 %86, 15
  store i32 %shl97, ptr %tmp10, align 4, !tbaa !8
  %87 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx98 = getelementptr inbounds i32, ptr %87, i64 7
  %88 = load i32, ptr %arrayidx98, align 4, !tbaa !8
  %mul99 = mul nsw i32 %88, -5906
  %89 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i32, ptr %89, i64 5
  %90 = load i32, ptr %arrayidx100, align 4, !tbaa !8
  %mul101 = mul nsw i32 %90, 6967
  %add102 = add nsw i32 %mul99, %mul101
  %91 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx103 = getelementptr inbounds i32, ptr %91, i64 3
  %92 = load i32, ptr %arrayidx103, align 4, !tbaa !8
  %mul104 = mul nsw i32 %92, -10426
  %add105 = add nsw i32 %add102, %mul104
  %93 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds i32, ptr %93, i64 1
  %94 = load i32, ptr %arrayidx106, align 4, !tbaa !8
  %mul107 = mul nsw i32 %94, 29692
  %add108 = add nsw i32 %add105, %mul107
  store i32 %add108, ptr %tmp0, align 4, !tbaa !8
  %95 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %96 = load i32, ptr %tmp10, align 4, !tbaa !8
  %97 = load i32, ptr %tmp0, align 4, !tbaa !8
  %add109 = add nsw i32 %96, %97
  %add110 = add nsw i32 %add109, 262144
  %shr111 = ashr i32 %add110, 19
  %and112 = and i32 %shr111, 262143
  %idxprom113 = sext i32 %and112 to i64
  %arrayidx114 = getelementptr inbounds i16, ptr %95, i64 %idxprom113
  %98 = load i16, ptr %arrayidx114, align 2, !tbaa !16
  %99 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds i16, ptr %99, i64 0
  store i16 %98, ptr %arrayidx115, align 2, !tbaa !16
  %100 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %101 = load i32, ptr %tmp10, align 4, !tbaa !8
  %102 = load i32, ptr %tmp0, align 4, !tbaa !8
  %sub116 = sub nsw i32 %101, %102
  %add117 = add nsw i32 %sub116, 262144
  %shr118 = ashr i32 %add117, 19
  %and119 = and i32 %shr118, 262143
  %idxprom120 = sext i32 %and119 to i64
  %arrayidx121 = getelementptr inbounds i16, ptr %100, i64 %idxprom120
  %103 = load i16, ptr %arrayidx121, align 2, !tbaa !16
  %104 = load ptr, ptr %outptr, align 8, !tbaa !4
  %arrayidx122 = getelementptr inbounds i16, ptr %104, i64 1
  store i16 %103, ptr %arrayidx122, align 2, !tbaa !16
  %105 = load ptr, ptr %wsptr, align 8, !tbaa !4
  %add.ptr123 = getelementptr inbounds i32, ptr %105, i64 8
  store ptr %add.ptr123, ptr %wsptr, align 8, !tbaa !4
  br label %for.inc124

for.inc124:                                       ; preds = %if.end95, %if.then85
  %106 = load i32, ptr %ctr, align 4, !tbaa !8
  %inc = add nsw i32 %106, 1
  store i32 %inc, ptr %ctr, align 4, !tbaa !8
  br label %for.cond64, !llvm.loop !21

for.end125:                                       ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 64, ptr %workspace) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_limit) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %outptr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %wsptr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %quantptr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %inptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %z1) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp10) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jpeg_idct_1x1(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %coef_block, ptr noundef %output_buf, i32 noundef %output_col) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %coef_block.addr = alloca ptr, align 8
  %output_buf.addr = alloca ptr, align 8
  %output_col.addr = alloca i32, align 4
  %dcval = alloca i32, align 4
  %quantptr = alloca ptr, align 8
  %range_limit = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %compptr, ptr %compptr.addr, align 8, !tbaa !4
  store ptr %coef_block, ptr %coef_block.addr, align 8, !tbaa !4
  store ptr %output_buf, ptr %output_buf.addr, align 8, !tbaa !4
  store i32 %output_col, ptr %output_col.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dcval) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %quantptr) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_limit) #2
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %sample_range_limit = getelementptr inbounds %struct.gdcmjpeg16_decompress_struct, ptr %0, i32 0, i32 66
  %1 = load ptr, ptr %sample_range_limit, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i16, ptr %1, i64 32768
  store ptr %add.ptr, ptr %range_limit, align 8, !tbaa !4
  %2 = load ptr, ptr %compptr.addr, align 8, !tbaa !4
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %dct_table, align 8, !tbaa !14
  store ptr %3, ptr %quantptr, align 8, !tbaa !4
  %4 = load ptr, ptr %coef_block.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 0
  %5 = load i16, ptr %arrayidx, align 2, !tbaa !16
  %conv = sext i16 %5 to i32
  %6 = load ptr, ptr %quantptr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i32, ptr %6, i64 0
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !8
  %mul = mul nsw i32 %conv, %7
  store i32 %mul, ptr %dcval, align 4, !tbaa !8
  %8 = load i32, ptr %dcval, align 4, !tbaa !8
  %add = add nsw i32 %8, 4
  %shr = ashr i32 %add, 3
  store i32 %shr, ptr %dcval, align 4, !tbaa !8
  %9 = load ptr, ptr %range_limit, align 8, !tbaa !4
  %10 = load i32, ptr %dcval, align 4, !tbaa !8
  %and = and i32 %10, 262143
  %idxprom = sext i32 %and to i64
  %arrayidx2 = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %11 = load i16, ptr %arrayidx2, align 2, !tbaa !16
  %12 = load ptr, ptr %output_buf.addr, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx3, align 8, !tbaa !4
  %14 = load i32, ptr %output_col.addr, align 4, !tbaa !8
  %idxprom4 = zext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %13, i64 %idxprom4
  store i16 %11, ptr %arrayidx5, align 2, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_limit) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %quantptr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dcval) #2
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!10 = !{!11, !5, i64 424}
!11 = !{!"gdcmjpeg16_decompress_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !5, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 60, !6, i64 64, !9, i64 68, !9, i64 72, !12, i64 80, !9, i64 88, !9, i64 92, !6, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !6, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !5, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !5, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !9, i64 296, !5, i64 304, !9, i64 312, !6, i64 316, !6, i64 332, !6, i64 348, !9, i64 364, !9, i64 368, !6, i64 372, !6, i64 373, !6, i64 374, !13, i64 376, !13, i64 378, !9, i64 380, !6, i64 384, !9, i64 388, !5, i64 392, !9, i64 400, !6, i64 404, !9, i64 408, !9, i64 412, !9, i64 416, !9, i64 420, !5, i64 424, !9, i64 432, !6, i64 440, !9, i64 472, !9, i64 476, !9, i64 480, !6, i64 484, !9, i64 524, !9, i64 528, !9, i64 532, !9, i64 536, !9, i64 540, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608}
!12 = !{!"double", !6, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !5, i64 88}
!15 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !5, i64 80, !5, i64 88}
!16 = !{!13, !13, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
