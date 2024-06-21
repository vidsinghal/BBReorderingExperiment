; ModuleID = 'samples/94.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-igemm/gen/8x16-minmax-avx512f-broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %ks.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %a_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %c1 = alloca ptr, align 8
  %c2 = alloca ptr, align 8
  %c3 = alloca ptr, align 8
  %c4 = alloca ptr, align 8
  %c5 = alloca ptr, align 8
  %c6 = alloca ptr, align 8
  %c7 = alloca ptr, align 8
  %vacc0x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc1x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc2x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc3x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc4x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc5x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc6x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc7x0123456789ABCDEF = alloca <16 x float>, align 64
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %a4 = alloca ptr, align 8
  %a5 = alloca ptr, align 8
  %a6 = alloca ptr, align 8
  %a7 = alloca ptr, align 8
  %k = alloca i64, align 8
  %vb0123456789ABCDEF = alloca <16 x float>, align 64
  %va0 = alloca <16 x float>, align 64
  %va1 = alloca <16 x float>, align 64
  %va2 = alloca <16 x float>, align 64
  %va3 = alloca <16 x float>, align 64
  %va4 = alloca <16 x float>, align 64
  %va5 = alloca <16 x float>, align 64
  %va6 = alloca <16 x float>, align 64
  %va7 = alloca <16 x float>, align 64
  %vmin = alloca <16 x float>, align 64
  %vmax = alloca <16 x float>, align 64
  %vmask = alloca i16, align 2
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store i64 %ks, ptr %ks.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store i64 %a_offset, ptr %a_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #7
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %0, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #7
  %1 = load ptr, ptr %c0, align 8, !tbaa !9
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %c1, align 8, !tbaa !9
  %5 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %5, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %c0, align 8, !tbaa !9
  store ptr %6, ptr %c1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #7
  %7 = load ptr, ptr %c1, align 8, !tbaa !9
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %8, %9
  %10 = inttoptr i64 %add2 to ptr
  store ptr %10, ptr %c2, align 8, !tbaa !9
  %11 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp3 = icmp ule i64 %11, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %c1, align 8, !tbaa !9
  store ptr %12, ptr %c2, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #7
  %13 = load ptr, ptr %c2, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %c3, align 8, !tbaa !9
  %17 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp14 = icmp ult i64 %17, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !11

if.then22:                                        ; preds = %if.end12
  %18 = load ptr, ptr %c2, align 8, !tbaa !9
  store ptr %18, ptr %c3, align 8, !tbaa !9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %c4) #7
  %19 = load ptr, ptr %c3, align 8, !tbaa !9
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add24 = add i64 %20, %21
  %22 = inttoptr i64 %add24 to ptr
  store ptr %22, ptr %c4, align 8, !tbaa !9
  %23 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp25 = icmp ule i64 %23, 4
  %lnot27 = xor i1 %cmp25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %if.then33, label %if.end34, !unpredictable !11

if.then33:                                        ; preds = %if.end23
  %24 = load ptr, ptr %c3, align 8, !tbaa !9
  store ptr %24, ptr %c4, align 8, !tbaa !9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %c5) #7
  %25 = load ptr, ptr %c4, align 8, !tbaa !9
  %26 = ptrtoint ptr %25 to i64
  %27 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add35 = add i64 %26, %27
  %28 = inttoptr i64 %add35 to ptr
  store ptr %28, ptr %c5, align 8, !tbaa !9
  %29 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp36 = icmp ult i64 %29, 6
  %lnot38 = xor i1 %cmp36, true
  %lnot40 = xor i1 %lnot38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end45, !unpredictable !11

if.then44:                                        ; preds = %if.end34
  %30 = load ptr, ptr %c4, align 8, !tbaa !9
  store ptr %30, ptr %c5, align 8, !tbaa !9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %c6) #7
  %31 = load ptr, ptr %c5, align 8, !tbaa !9
  %32 = ptrtoint ptr %31 to i64
  %33 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add46 = add i64 %32, %33
  %34 = inttoptr i64 %add46 to ptr
  store ptr %34, ptr %c6, align 8, !tbaa !9
  %35 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp47 = icmp ule i64 %35, 6
  %lnot49 = xor i1 %cmp47, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %if.then55, label %if.end56, !unpredictable !11

if.then55:                                        ; preds = %if.end45
  %36 = load ptr, ptr %c5, align 8, !tbaa !9
  store ptr %36, ptr %c6, align 8, !tbaa !9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr %c7) #7
  %37 = load ptr, ptr %c6, align 8, !tbaa !9
  %38 = ptrtoint ptr %37 to i64
  %39 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add57 = add i64 %38, %39
  %40 = inttoptr i64 %add57 to ptr
  store ptr %40, ptr %c7, align 8, !tbaa !9
  %41 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp58 = icmp ne i64 %41, 8
  %lnot60 = xor i1 %cmp58, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %tobool65 = icmp ne i64 %conv64, 0
  br i1 %tobool65, label %if.then66, label %if.end67, !unpredictable !11

if.then66:                                        ; preds = %if.end56
  %42 = load ptr, ptr %c6, align 8, !tbaa !9
  store ptr %42, ptr %c7, align 8, !tbaa !9
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end56
  br label %do.body

do.body:                                          ; preds = %do.cond244, %if.end67
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x0123456789ABCDEF) #7
  %43 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call = call <16 x float> @_mm512_load_ps(ptr noundef %43)
  store <16 x float> %call, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x0123456789ABCDEF) #7
  %44 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %44, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc2x0123456789ABCDEF) #7
  %45 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %45, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc3x0123456789ABCDEF) #7
  %46 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %46, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc4x0123456789ABCDEF) #7
  %47 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %47, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc5x0123456789ABCDEF) #7
  %48 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %48, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc6x0123456789ABCDEF) #7
  %49 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %49, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc7x0123456789ABCDEF) #7
  %50 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  store <16 x float> %50, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  %51 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %51, i64 16
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  %52 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %52, ptr %p, align 8, !tbaa !5
  br label %do.body68

do.body68:                                        ; preds = %do.cond195, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #7
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %53, i64 0
  %54 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %54, ptr %a0, align 8, !tbaa !9
  %55 = load ptr, ptr %a0, align 8, !tbaa !9
  %56 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp69 = icmp ne ptr %55, %56
  %lnot71 = xor i1 %cmp69, true
  %lnot73 = xor i1 %lnot71, true
  %lnot.ext74 = zext i1 %lnot73 to i32
  %conv75 = sext i32 %lnot.ext74 to i64
  %tobool76 = icmp ne i64 %conv75, 0
  br i1 %tobool76, label %if.then77, label %if.end79, !unpredictable !11

if.then77:                                        ; preds = %do.body68
  %57 = load ptr, ptr %a0, align 8, !tbaa !9
  %58 = ptrtoint ptr %57 to i64
  %59 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add78 = add i64 %58, %59
  %60 = inttoptr i64 %add78 to ptr
  store ptr %60, ptr %a0, align 8, !tbaa !9
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %do.body68
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #7
  %61 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx80 = getelementptr inbounds ptr, ptr %61, i64 1
  %62 = load ptr, ptr %arrayidx80, align 8, !tbaa !9
  store ptr %62, ptr %a1, align 8, !tbaa !9
  %63 = load ptr, ptr %a1, align 8, !tbaa !9
  %64 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp81 = icmp ne ptr %63, %64
  %lnot83 = xor i1 %cmp81, true
  %lnot85 = xor i1 %lnot83, true
  %lnot.ext86 = zext i1 %lnot85 to i32
  %conv87 = sext i32 %lnot.ext86 to i64
  %tobool88 = icmp ne i64 %conv87, 0
  br i1 %tobool88, label %if.then89, label %if.end91, !unpredictable !11

if.then89:                                        ; preds = %if.end79
  %65 = load ptr, ptr %a1, align 8, !tbaa !9
  %66 = ptrtoint ptr %65 to i64
  %67 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add90 = add i64 %66, %67
  %68 = inttoptr i64 %add90 to ptr
  store ptr %68, ptr %a1, align 8, !tbaa !9
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #7
  %69 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx92 = getelementptr inbounds ptr, ptr %69, i64 2
  %70 = load ptr, ptr %arrayidx92, align 8, !tbaa !9
  store ptr %70, ptr %a2, align 8, !tbaa !9
  %71 = load ptr, ptr %a2, align 8, !tbaa !9
  %72 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp93 = icmp ne ptr %71, %72
  %lnot95 = xor i1 %cmp93, true
  %lnot97 = xor i1 %lnot95, true
  %lnot.ext98 = zext i1 %lnot97 to i32
  %conv99 = sext i32 %lnot.ext98 to i64
  %tobool100 = icmp ne i64 %conv99, 0
  br i1 %tobool100, label %if.then101, label %if.end103, !unpredictable !11

if.then101:                                       ; preds = %if.end91
  %73 = load ptr, ptr %a2, align 8, !tbaa !9
  %74 = ptrtoint ptr %73 to i64
  %75 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add102 = add i64 %74, %75
  %76 = inttoptr i64 %add102 to ptr
  store ptr %76, ptr %a2, align 8, !tbaa !9
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end91
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #7
  %77 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx104 = getelementptr inbounds ptr, ptr %77, i64 3
  %78 = load ptr, ptr %arrayidx104, align 8, !tbaa !9
  store ptr %78, ptr %a3, align 8, !tbaa !9
  %79 = load ptr, ptr %a3, align 8, !tbaa !9
  %80 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp105 = icmp ne ptr %79, %80
  %lnot107 = xor i1 %cmp105, true
  %lnot109 = xor i1 %lnot107, true
  %lnot.ext110 = zext i1 %lnot109 to i32
  %conv111 = sext i32 %lnot.ext110 to i64
  %tobool112 = icmp ne i64 %conv111, 0
  br i1 %tobool112, label %if.then113, label %if.end115, !unpredictable !11

if.then113:                                       ; preds = %if.end103
  %81 = load ptr, ptr %a3, align 8, !tbaa !9
  %82 = ptrtoint ptr %81 to i64
  %83 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add114 = add i64 %82, %83
  %84 = inttoptr i64 %add114 to ptr
  store ptr %84, ptr %a3, align 8, !tbaa !9
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end103
  call void @llvm.lifetime.start.p0(i64 8, ptr %a4) #7
  %85 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx116 = getelementptr inbounds ptr, ptr %85, i64 4
  %86 = load ptr, ptr %arrayidx116, align 8, !tbaa !9
  store ptr %86, ptr %a4, align 8, !tbaa !9
  %87 = load ptr, ptr %a4, align 8, !tbaa !9
  %88 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp117 = icmp ne ptr %87, %88
  %lnot119 = xor i1 %cmp117, true
  %lnot121 = xor i1 %lnot119, true
  %lnot.ext122 = zext i1 %lnot121 to i32
  %conv123 = sext i32 %lnot.ext122 to i64
  %tobool124 = icmp ne i64 %conv123, 0
  br i1 %tobool124, label %if.then125, label %if.end127, !unpredictable !11

if.then125:                                       ; preds = %if.end115
  %89 = load ptr, ptr %a4, align 8, !tbaa !9
  %90 = ptrtoint ptr %89 to i64
  %91 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add126 = add i64 %90, %91
  %92 = inttoptr i64 %add126 to ptr
  store ptr %92, ptr %a4, align 8, !tbaa !9
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end115
  call void @llvm.lifetime.start.p0(i64 8, ptr %a5) #7
  %93 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx128 = getelementptr inbounds ptr, ptr %93, i64 5
  %94 = load ptr, ptr %arrayidx128, align 8, !tbaa !9
  store ptr %94, ptr %a5, align 8, !tbaa !9
  %95 = load ptr, ptr %a5, align 8, !tbaa !9
  %96 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp129 = icmp ne ptr %95, %96
  %lnot131 = xor i1 %cmp129, true
  %lnot133 = xor i1 %lnot131, true
  %lnot.ext134 = zext i1 %lnot133 to i32
  %conv135 = sext i32 %lnot.ext134 to i64
  %tobool136 = icmp ne i64 %conv135, 0
  br i1 %tobool136, label %if.then137, label %if.end139, !unpredictable !11

if.then137:                                       ; preds = %if.end127
  %97 = load ptr, ptr %a5, align 8, !tbaa !9
  %98 = ptrtoint ptr %97 to i64
  %99 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add138 = add i64 %98, %99
  %100 = inttoptr i64 %add138 to ptr
  store ptr %100, ptr %a5, align 8, !tbaa !9
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end127
  call void @llvm.lifetime.start.p0(i64 8, ptr %a6) #7
  %101 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx140 = getelementptr inbounds ptr, ptr %101, i64 6
  %102 = load ptr, ptr %arrayidx140, align 8, !tbaa !9
  store ptr %102, ptr %a6, align 8, !tbaa !9
  %103 = load ptr, ptr %a6, align 8, !tbaa !9
  %104 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp141 = icmp ne ptr %103, %104
  %lnot143 = xor i1 %cmp141, true
  %lnot145 = xor i1 %lnot143, true
  %lnot.ext146 = zext i1 %lnot145 to i32
  %conv147 = sext i32 %lnot.ext146 to i64
  %tobool148 = icmp ne i64 %conv147, 0
  br i1 %tobool148, label %if.then149, label %if.end151, !unpredictable !11

if.then149:                                       ; preds = %if.end139
  %105 = load ptr, ptr %a6, align 8, !tbaa !9
  %106 = ptrtoint ptr %105 to i64
  %107 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add150 = add i64 %106, %107
  %108 = inttoptr i64 %add150 to ptr
  store ptr %108, ptr %a6, align 8, !tbaa !9
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end139
  call void @llvm.lifetime.start.p0(i64 8, ptr %a7) #7
  %109 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx152 = getelementptr inbounds ptr, ptr %109, i64 7
  %110 = load ptr, ptr %arrayidx152, align 8, !tbaa !9
  store ptr %110, ptr %a7, align 8, !tbaa !9
  %111 = load ptr, ptr %a7, align 8, !tbaa !9
  %112 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp153 = icmp ne ptr %111, %112
  %lnot155 = xor i1 %cmp153, true
  %lnot157 = xor i1 %lnot155, true
  %lnot.ext158 = zext i1 %lnot157 to i32
  %conv159 = sext i32 %lnot.ext158 to i64
  %tobool160 = icmp ne i64 %conv159, 0
  br i1 %tobool160, label %if.then161, label %if.end163, !unpredictable !11

if.then161:                                       ; preds = %if.end151
  %113 = load ptr, ptr %a7, align 8, !tbaa !9
  %114 = ptrtoint ptr %113 to i64
  %115 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add162 = add i64 %114, %115
  %116 = inttoptr i64 %add162 to ptr
  store ptr %116, ptr %a7, align 8, !tbaa !9
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end151
  %117 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr164 = getelementptr inbounds ptr, ptr %117, i64 8
  store ptr %add.ptr164, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  %118 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %118, ptr %k, align 8, !tbaa !5
  br label %do.body165

do.body165:                                       ; preds = %do.cond, %if.end163
  call void @llvm.lifetime.start.p0(i64 64, ptr %vb0123456789ABCDEF) #7
  %119 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call166 = call <16 x float> @_mm512_load_ps(ptr noundef %119)
  store <16 x float> %call166, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %120 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr167 = getelementptr inbounds float, ptr %120, i64 16
  store ptr %add.ptr167, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %va0) #7
  %121 = load ptr, ptr %a0, align 8, !tbaa !9
  %122 = load float, ptr %121, align 4, !tbaa !13
  %call168 = call <16 x float> @_mm512_set1_ps(float noundef %122)
  store <16 x float> %call168, ptr %va0, align 64, !tbaa !12
  %123 = load <16 x float>, ptr %va0, align 64, !tbaa !12
  %124 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %125 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  %call169 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %123, <16 x float> noundef %124, <16 x float> noundef %125)
  store <16 x float> %call169, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va1) #7
  %126 = load ptr, ptr %a1, align 8, !tbaa !9
  %127 = load float, ptr %126, align 4, !tbaa !13
  %call170 = call <16 x float> @_mm512_set1_ps(float noundef %127)
  store <16 x float> %call170, ptr %va1, align 64, !tbaa !12
  %128 = load <16 x float>, ptr %va1, align 64, !tbaa !12
  %129 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %130 = load <16 x float>, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  %call171 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %128, <16 x float> noundef %129, <16 x float> noundef %130)
  store <16 x float> %call171, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va2) #7
  %131 = load ptr, ptr %a2, align 8, !tbaa !9
  %132 = load float, ptr %131, align 4, !tbaa !13
  %call172 = call <16 x float> @_mm512_set1_ps(float noundef %132)
  store <16 x float> %call172, ptr %va2, align 64, !tbaa !12
  %133 = load <16 x float>, ptr %va2, align 64, !tbaa !12
  %134 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %135 = load <16 x float>, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  %call173 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %133, <16 x float> noundef %134, <16 x float> noundef %135)
  store <16 x float> %call173, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va3) #7
  %136 = load ptr, ptr %a3, align 8, !tbaa !9
  %137 = load float, ptr %136, align 4, !tbaa !13
  %call174 = call <16 x float> @_mm512_set1_ps(float noundef %137)
  store <16 x float> %call174, ptr %va3, align 64, !tbaa !12
  %138 = load <16 x float>, ptr %va3, align 64, !tbaa !12
  %139 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %140 = load <16 x float>, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  %call175 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %138, <16 x float> noundef %139, <16 x float> noundef %140)
  store <16 x float> %call175, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va4) #7
  %141 = load ptr, ptr %a4, align 8, !tbaa !9
  %142 = load float, ptr %141, align 4, !tbaa !13
  %call176 = call <16 x float> @_mm512_set1_ps(float noundef %142)
  store <16 x float> %call176, ptr %va4, align 64, !tbaa !12
  %143 = load <16 x float>, ptr %va4, align 64, !tbaa !12
  %144 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %145 = load <16 x float>, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  %call177 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %143, <16 x float> noundef %144, <16 x float> noundef %145)
  store <16 x float> %call177, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va5) #7
  %146 = load ptr, ptr %a5, align 8, !tbaa !9
  %147 = load float, ptr %146, align 4, !tbaa !13
  %call178 = call <16 x float> @_mm512_set1_ps(float noundef %147)
  store <16 x float> %call178, ptr %va5, align 64, !tbaa !12
  %148 = load <16 x float>, ptr %va5, align 64, !tbaa !12
  %149 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %150 = load <16 x float>, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  %call179 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %148, <16 x float> noundef %149, <16 x float> noundef %150)
  store <16 x float> %call179, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va6) #7
  %151 = load ptr, ptr %a6, align 8, !tbaa !9
  %152 = load float, ptr %151, align 4, !tbaa !13
  %call180 = call <16 x float> @_mm512_set1_ps(float noundef %152)
  store <16 x float> %call180, ptr %va6, align 64, !tbaa !12
  %153 = load <16 x float>, ptr %va6, align 64, !tbaa !12
  %154 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %155 = load <16 x float>, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  %call181 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %153, <16 x float> noundef %154, <16 x float> noundef %155)
  store <16 x float> %call181, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %va7) #7
  %156 = load ptr, ptr %a7, align 8, !tbaa !9
  %157 = load float, ptr %156, align 4, !tbaa !13
  %call182 = call <16 x float> @_mm512_set1_ps(float noundef %157)
  store <16 x float> %call182, ptr %va7, align 64, !tbaa !12
  %158 = load <16 x float>, ptr %va7, align 64, !tbaa !12
  %159 = load <16 x float>, ptr %vb0123456789ABCDEF, align 64, !tbaa !12
  %160 = load <16 x float>, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  %call183 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %158, <16 x float> noundef %159, <16 x float> noundef %160)
  store <16 x float> %call183, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  %161 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr184 = getelementptr inbounds float, ptr %161, i64 1
  store ptr %add.ptr184, ptr %a0, align 8, !tbaa !9
  %162 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr185 = getelementptr inbounds float, ptr %162, i64 1
  store ptr %add.ptr185, ptr %a1, align 8, !tbaa !9
  %163 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr186 = getelementptr inbounds float, ptr %163, i64 1
  store ptr %add.ptr186, ptr %a2, align 8, !tbaa !9
  %164 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr187 = getelementptr inbounds float, ptr %164, i64 1
  store ptr %add.ptr187, ptr %a3, align 8, !tbaa !9
  %165 = load ptr, ptr %a4, align 8, !tbaa !9
  %add.ptr188 = getelementptr inbounds float, ptr %165, i64 1
  store ptr %add.ptr188, ptr %a4, align 8, !tbaa !9
  %166 = load ptr, ptr %a5, align 8, !tbaa !9
  %add.ptr189 = getelementptr inbounds float, ptr %166, i64 1
  store ptr %add.ptr189, ptr %a5, align 8, !tbaa !9
  %167 = load ptr, ptr %a6, align 8, !tbaa !9
  %add.ptr190 = getelementptr inbounds float, ptr %167, i64 1
  store ptr %add.ptr190, ptr %a6, align 8, !tbaa !9
  %168 = load ptr, ptr %a7, align 8, !tbaa !9
  %add.ptr191 = getelementptr inbounds float, ptr %168, i64 1
  store ptr %add.ptr191, ptr %a7, align 8, !tbaa !9
  %169 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %169, 4
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 64, ptr %va7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va2) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %va0) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vb0123456789ABCDEF) #7
  br label %do.cond

do.cond:                                          ; preds = %do.body165
  %170 = load i64, ptr %k, align 8, !tbaa !5
  %cmp192 = icmp ne i64 %170, 0
  br i1 %cmp192, label %do.body165, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %171 = load i64, ptr %p, align 8, !tbaa !5
  %sub194 = sub i64 %171, 64
  store i64 %sub194, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #7
  br label %do.cond195

do.cond195:                                       ; preds = %do.end
  %172 = load i64, ptr %p, align 8, !tbaa !5
  %cmp196 = icmp ne i64 %172, 0
  br i1 %cmp196, label %do.body68, label %do.end198, !llvm.loop !17

do.end198:                                        ; preds = %do.cond195
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmin) #7
  %173 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %173, i32 0, i32 0
  %174 = load float, ptr %min, align 32, !tbaa !12
  %call199 = call <16 x float> @_mm512_set1_ps(float noundef %174)
  store <16 x float> %call199, ptr %vmin, align 64, !tbaa !12
  %175 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  %176 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call200 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %175, <16 x float> noundef %176)
  store <16 x float> %call200, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  %177 = load <16 x float>, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  %178 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call201 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %177, <16 x float> noundef %178)
  store <16 x float> %call201, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  %179 = load <16 x float>, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  %180 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call202 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %179, <16 x float> noundef %180)
  store <16 x float> %call202, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  %181 = load <16 x float>, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  %182 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call203 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %181, <16 x float> noundef %182)
  store <16 x float> %call203, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  %183 = load <16 x float>, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  %184 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call204 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %183, <16 x float> noundef %184)
  store <16 x float> %call204, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  %185 = load <16 x float>, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  %186 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call205 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %185, <16 x float> noundef %186)
  store <16 x float> %call205, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  %187 = load <16 x float>, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  %188 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call206 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %187, <16 x float> noundef %188)
  store <16 x float> %call206, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  %189 = load <16 x float>, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  %190 = load <16 x float>, ptr %vmin, align 64, !tbaa !12
  %call207 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %189, <16 x float> noundef %190)
  store <16 x float> %call207, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmax) #7
  %191 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %191, i32 0, i32 1
  %192 = load float, ptr %max, align 4, !tbaa !12
  %call208 = call <16 x float> @_mm512_set1_ps(float noundef %192)
  store <16 x float> %call208, ptr %vmax, align 64, !tbaa !12
  %193 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  %194 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call209 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %193, <16 x float> noundef %194)
  store <16 x float> %call209, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  %195 = load <16 x float>, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  %196 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call210 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %195, <16 x float> noundef %196)
  store <16 x float> %call210, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  %197 = load <16 x float>, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  %198 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call211 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %197, <16 x float> noundef %198)
  store <16 x float> %call211, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  %199 = load <16 x float>, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  %200 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call212 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %199, <16 x float> noundef %200)
  store <16 x float> %call212, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  %201 = load <16 x float>, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  %202 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call213 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %201, <16 x float> noundef %202)
  store <16 x float> %call213, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  %203 = load <16 x float>, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  %204 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call214 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %203, <16 x float> noundef %204)
  store <16 x float> %call214, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  %205 = load <16 x float>, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  %206 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call215 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %205, <16 x float> noundef %206)
  store <16 x float> %call215, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  %207 = load <16 x float>, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  %208 = load <16 x float>, ptr %vmax, align 64, !tbaa !12
  %call216 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %207, <16 x float> noundef %208)
  store <16 x float> %call216, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  %209 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp217 = icmp uge i64 %209, 16
  %lnot219 = xor i1 %cmp217, true
  %lnot221 = xor i1 %lnot219, true
  %lnot.ext222 = zext i1 %lnot221 to i32
  %conv223 = sext i32 %lnot.ext222 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv223, i64 1)
  %tobool224 = icmp ne i64 %expval, 0
  br i1 %tobool224, label %if.then225, label %if.else

if.then225:                                       ; preds = %do.end198
  %210 = load ptr, ptr %c7, align 8, !tbaa !9
  %211 = load <16 x float>, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %210, <16 x float> noundef %211)
  %212 = load ptr, ptr %c7, align 8, !tbaa !9
  %213 = ptrtoint ptr %212 to i64
  %214 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add226 = add i64 %213, %214
  %215 = inttoptr i64 %add226 to ptr
  store ptr %215, ptr %c7, align 8, !tbaa !9
  %216 = load ptr, ptr %c6, align 8, !tbaa !9
  %217 = load <16 x float>, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %216, <16 x float> noundef %217)
  %218 = load ptr, ptr %c6, align 8, !tbaa !9
  %219 = ptrtoint ptr %218 to i64
  %220 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add227 = add i64 %219, %220
  %221 = inttoptr i64 %add227 to ptr
  store ptr %221, ptr %c6, align 8, !tbaa !9
  %222 = load ptr, ptr %c5, align 8, !tbaa !9
  %223 = load <16 x float>, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %222, <16 x float> noundef %223)
  %224 = load ptr, ptr %c5, align 8, !tbaa !9
  %225 = ptrtoint ptr %224 to i64
  %226 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add228 = add i64 %225, %226
  %227 = inttoptr i64 %add228 to ptr
  store ptr %227, ptr %c5, align 8, !tbaa !9
  %228 = load ptr, ptr %c4, align 8, !tbaa !9
  %229 = load <16 x float>, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %228, <16 x float> noundef %229)
  %230 = load ptr, ptr %c4, align 8, !tbaa !9
  %231 = ptrtoint ptr %230 to i64
  %232 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add229 = add i64 %231, %232
  %233 = inttoptr i64 %add229 to ptr
  store ptr %233, ptr %c4, align 8, !tbaa !9
  %234 = load ptr, ptr %c3, align 8, !tbaa !9
  %235 = load <16 x float>, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %234, <16 x float> noundef %235)
  %236 = load ptr, ptr %c3, align 8, !tbaa !9
  %237 = ptrtoint ptr %236 to i64
  %238 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add230 = add i64 %237, %238
  %239 = inttoptr i64 %add230 to ptr
  store ptr %239, ptr %c3, align 8, !tbaa !9
  %240 = load ptr, ptr %c2, align 8, !tbaa !9
  %241 = load <16 x float>, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %240, <16 x float> noundef %241)
  %242 = load ptr, ptr %c2, align 8, !tbaa !9
  %243 = ptrtoint ptr %242 to i64
  %244 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add231 = add i64 %243, %244
  %245 = inttoptr i64 %add231 to ptr
  store ptr %245, ptr %c2, align 8, !tbaa !9
  %246 = load ptr, ptr %c1, align 8, !tbaa !9
  %247 = load <16 x float>, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %246, <16 x float> noundef %247)
  %248 = load ptr, ptr %c1, align 8, !tbaa !9
  %249 = ptrtoint ptr %248 to i64
  %250 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add232 = add i64 %249, %250
  %251 = inttoptr i64 %add232 to ptr
  store ptr %251, ptr %c1, align 8, !tbaa !9
  %252 = load ptr, ptr %c0, align 8, !tbaa !9
  %253 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_storeu_ps(ptr noundef %252, <16 x float> noundef %253)
  %254 = load ptr, ptr %c0, align 8, !tbaa !9
  %255 = ptrtoint ptr %254 to i64
  %256 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add233 = add i64 %255, %256
  %257 = inttoptr i64 %add233 to ptr
  store ptr %257, ptr %c0, align 8, !tbaa !9
  %258 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %259 = ptrtoint ptr %258 to i64
  %260 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub234 = sub i64 %259, %260
  %261 = inttoptr i64 %sub234 to ptr
  store ptr %261, ptr %a.addr, align 8, !tbaa !9
  %262 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub235 = sub i64 %262, 16
  store i64 %sub235, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end243

if.else:                                          ; preds = %do.end198
  %263 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %263, 15
  %tobool236 = icmp ne i64 %and, 0
  br i1 %tobool236, label %if.then237, label %if.end242

if.then237:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr %vmask) #7
  %264 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sh_prom = trunc i64 %264 to i32
  %shl = shl i32 1, %sh_prom
  %sub238 = sub i32 %shl, 1
  %conv239 = trunc i32 %sub238 to i16
  %conv240 = zext i16 %conv239 to i32
  %call241 = call zeroext i16 @_cvtu32_mask16(i32 noundef %conv240)
  store i16 %call241, ptr %vmask, align 2, !tbaa !18
  %265 = load ptr, ptr %c7, align 8, !tbaa !9
  %266 = load i16, ptr %vmask, align 2, !tbaa !18
  %267 = load <16 x float>, ptr %vacc7x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %265, i16 noundef zeroext %266, <16 x float> noundef %267)
  %268 = load ptr, ptr %c6, align 8, !tbaa !9
  %269 = load i16, ptr %vmask, align 2, !tbaa !18
  %270 = load <16 x float>, ptr %vacc6x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %268, i16 noundef zeroext %269, <16 x float> noundef %270)
  %271 = load ptr, ptr %c5, align 8, !tbaa !9
  %272 = load i16, ptr %vmask, align 2, !tbaa !18
  %273 = load <16 x float>, ptr %vacc5x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %271, i16 noundef zeroext %272, <16 x float> noundef %273)
  %274 = load ptr, ptr %c4, align 8, !tbaa !9
  %275 = load i16, ptr %vmask, align 2, !tbaa !18
  %276 = load <16 x float>, ptr %vacc4x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %274, i16 noundef zeroext %275, <16 x float> noundef %276)
  %277 = load ptr, ptr %c3, align 8, !tbaa !9
  %278 = load i16, ptr %vmask, align 2, !tbaa !18
  %279 = load <16 x float>, ptr %vacc3x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %277, i16 noundef zeroext %278, <16 x float> noundef %279)
  %280 = load ptr, ptr %c2, align 8, !tbaa !9
  %281 = load i16, ptr %vmask, align 2, !tbaa !18
  %282 = load <16 x float>, ptr %vacc2x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %280, i16 noundef zeroext %281, <16 x float> noundef %282)
  %283 = load ptr, ptr %c1, align 8, !tbaa !9
  %284 = load i16, ptr %vmask, align 2, !tbaa !18
  %285 = load <16 x float>, ptr %vacc1x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %283, i16 noundef zeroext %284, <16 x float> noundef %285)
  %286 = load ptr, ptr %c0, align 8, !tbaa !9
  %287 = load i16, ptr %vmask, align 2, !tbaa !18
  %288 = load <16 x float>, ptr %vacc0x0123456789ABCDEF, align 64, !tbaa !12
  call void @_mm512_mask_storeu_ps(ptr noundef %286, i16 noundef zeroext %287, <16 x float> noundef %288)
  call void @llvm.lifetime.end.p0(i64 2, ptr %vmask) #7
  br label %if.end242

if.end242:                                        ; preds = %if.then237, %if.else
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.then225
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmax) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc7x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc6x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc5x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc4x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc3x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc2x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x0123456789ABCDEF) #7
  br label %do.cond244

do.cond244:                                       ; preds = %if.end243
  %289 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp245 = icmp ne i64 %289, 0
  br i1 %cmp245, label %do.body, label %do.end247, !llvm.loop !20

do.end247:                                        ; preds = %do.cond244
  call void @llvm.lifetime.end.p0(i64 8, ptr %c7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %0, align 64, !tbaa !12
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <16 x float>, align 64
  store float %__w, ptr %__w.addr, align 4, !tbaa !13
  %0 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %__w.addr, align 4, !tbaa !13
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !12
  %16 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !12
  ret <16 x float> %16
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %__A, <16 x float> noundef %__B, <16 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  %__C.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !12
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !12
  store <16 x float> %__C, ptr %__C.addr, align 64, !tbaa !12
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !12
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !12
  %2 = load <16 x float>, ptr %__C.addr, align 64, !tbaa !12
  %3 = call <16 x float> @llvm.fma.v16f32(<16 x float> %0, <16 x float> %1, <16 x float> %2)
  ret <16 x float> %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_max_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !12
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !12
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !12
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !12
  %2 = call <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %0, <16 x float> %1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_min_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !12
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !12
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !12
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !12
  %2 = call <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %0, <16 x float> %1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_storeu_ps(ptr noundef %__P, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !12
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !12
  %1 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <16 x float> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_cvtu32_mask16(i32 noundef %__A) #4 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !21
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !21
  %conv = trunc i32 %0 to i16
  %1 = bitcast i16 %conv to <16 x i1>
  %2 = bitcast <16 x i1> %1 to i16
  ret i16 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_mask_storeu_ps(ptr noundef %__P, i16 noundef zeroext %__U, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !18
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !12
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !12
  %2 = load i16, ptr %__U.addr, align 2, !tbaa !18
  %3 = bitcast i16 %2 to <16 x i1>
  call void @llvm.masked.store.v16f32.p0(<16 x float> %1, ptr %0, i32 1, <16 x i1> %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr nocapture, i32 immarg, <16 x i1>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = distinct !{!20, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !7, i64 0}
