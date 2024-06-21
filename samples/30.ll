; ModuleID = 'samples/30.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/util/lapack/FLA_Norm1_tridiag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @FLA_Norm1_tridiag(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e, ptr noundef byval(%struct.FLA_Obj_view) align 8 %norm) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_norm = alloca ptr, align 8
  %buff_d64 = alloca ptr, align 8
  %buff_e88 = alloca ptr, align 8
  %buff_norm112 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_d) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_e) #4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %inc_d, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %e)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %inc_e, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb63
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_d) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype6 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype6, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %3 = load ptr, ptr %base8, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base9 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %5 = load ptr, ptr %base9, align 8, !tbaa !8
  %buffer10 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer10, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %8 = load ptr, ptr %base11, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr12 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %11 = load ptr, ptr %base13, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul14 = mul i64 %10, %12
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr12, i64 %mul14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr15, %cond.false ]
  store ptr %cond, ptr %buff_d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_e) #4
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %13 = load ptr, ptr %base16, align 8, !tbaa !8
  %datatype17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype17, align 8, !tbaa !12
  %cmp18 = icmp eq i32 %14, 105
  br i1 %cmp18, label %cond.true20, label %cond.false24

cond.true20:                                      ; preds = %cond.end
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %15 = load ptr, ptr %base21, align 8, !tbaa !8
  %buffer22 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer22, align 8, !tbaa !14
  %add.ptr23 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end37

cond.false24:                                     ; preds = %cond.end
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %17 = load ptr, ptr %base25, align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %offn27 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 1
  %19 = load i64, ptr %offn27, align 8, !tbaa !15
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %20 = load ptr, ptr %base28, align 8, !tbaa !8
  %cs29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs29, align 8, !tbaa !16
  %mul30 = mul i64 %19, %21
  %add.ptr31 = getelementptr inbounds float, ptr %18, i64 %mul30
  %offm32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 0
  %22 = load i64, ptr %offm32, align 8, !tbaa !17
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %23 = load ptr, ptr %base33, align 8, !tbaa !8
  %rs34 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs34, align 8, !tbaa !18
  %mul35 = mul i64 %22, %24
  %add.ptr36 = getelementptr inbounds float, ptr %add.ptr31, i64 %mul35
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false24, %cond.true20
  %cond38 = phi ptr [ %add.ptr23, %cond.true20 ], [ %add.ptr36, %cond.false24 ]
  store ptr %cond38, ptr %buff_e, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_norm) #4
  %base39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %25 = load ptr, ptr %base39, align 8, !tbaa !8
  %datatype40 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype40, align 8, !tbaa !12
  %cmp41 = icmp eq i32 %26, 105
  br i1 %cmp41, label %cond.true43, label %cond.false47

cond.true43:                                      ; preds = %cond.end37
  %base44 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %27 = load ptr, ptr %base44, align 8, !tbaa !8
  %buffer45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer45, align 8, !tbaa !14
  %add.ptr46 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end60

cond.false47:                                     ; preds = %cond.end37
  %base48 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %29 = load ptr, ptr %base48, align 8, !tbaa !8
  %buffer49 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer49, align 8, !tbaa !14
  %offn50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 1
  %31 = load i64, ptr %offn50, align 8, !tbaa !15
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %32 = load ptr, ptr %base51, align 8, !tbaa !8
  %cs52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs52, align 8, !tbaa !16
  %mul53 = mul i64 %31, %33
  %add.ptr54 = getelementptr inbounds float, ptr %30, i64 %mul53
  %offm55 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 0
  %34 = load i64, ptr %offm55, align 8, !tbaa !17
  %base56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %35 = load ptr, ptr %base56, align 8, !tbaa !8
  %rs57 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs57, align 8, !tbaa !18
  %mul58 = mul i64 %34, %36
  %add.ptr59 = getelementptr inbounds float, ptr %add.ptr54, i64 %mul58
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false47, %cond.true43
  %cond61 = phi ptr [ %add.ptr46, %cond.true43 ], [ %add.ptr59, %cond.false47 ]
  store ptr %cond61, ptr %buff_norm, align 8, !tbaa !19
  %37 = load i32, ptr %m_A, align 4, !tbaa !4
  %38 = load ptr, ptr %buff_d, align 8, !tbaa !19
  %39 = load i32, ptr %inc_d, align 4, !tbaa !4
  %40 = load ptr, ptr %buff_e, align 8, !tbaa !19
  %41 = load i32, ptr %inc_e, align 4, !tbaa !4
  %42 = load ptr, ptr %buff_norm, align 8, !tbaa !19
  %call62 = call i32 @FLA_Norm1_tridiag_ops(i32 noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %42)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_norm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_e) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_d) #4
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_d64) #4
  %base65 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %43 = load ptr, ptr %base65, align 8, !tbaa !8
  %datatype66 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %datatype66, align 8, !tbaa !12
  %cmp67 = icmp eq i32 %44, 105
  br i1 %cmp67, label %cond.true69, label %cond.false73

cond.true69:                                      ; preds = %sw.bb63
  %base70 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %45 = load ptr, ptr %base70, align 8, !tbaa !8
  %buffer71 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %buffer71, align 8, !tbaa !14
  %add.ptr72 = getelementptr inbounds i8, ptr %46, i64 16
  br label %cond.end86

cond.false73:                                     ; preds = %sw.bb63
  %base74 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %47 = load ptr, ptr %base74, align 8, !tbaa !8
  %buffer75 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %buffer75, align 8, !tbaa !14
  %offn76 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 1
  %49 = load i64, ptr %offn76, align 8, !tbaa !15
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %50 = load ptr, ptr %base77, align 8, !tbaa !8
  %cs78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %50, i32 0, i32 5
  %51 = load i64, ptr %cs78, align 8, !tbaa !16
  %mul79 = mul i64 %49, %51
  %add.ptr80 = getelementptr inbounds double, ptr %48, i64 %mul79
  %offm81 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 0
  %52 = load i64, ptr %offm81, align 8, !tbaa !17
  %base82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %53 = load ptr, ptr %base82, align 8, !tbaa !8
  %rs83 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 4
  %54 = load i64, ptr %rs83, align 8, !tbaa !18
  %mul84 = mul i64 %52, %54
  %add.ptr85 = getelementptr inbounds double, ptr %add.ptr80, i64 %mul84
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false73, %cond.true69
  %cond87 = phi ptr [ %add.ptr72, %cond.true69 ], [ %add.ptr85, %cond.false73 ]
  store ptr %cond87, ptr %buff_d64, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_e88) #4
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %55 = load ptr, ptr %base89, align 8, !tbaa !8
  %datatype90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %datatype90, align 8, !tbaa !12
  %cmp91 = icmp eq i32 %56, 105
  br i1 %cmp91, label %cond.true93, label %cond.false97

cond.true93:                                      ; preds = %cond.end86
  %base94 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %57 = load ptr, ptr %base94, align 8, !tbaa !8
  %buffer95 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %buffer95, align 8, !tbaa !14
  %add.ptr96 = getelementptr inbounds i8, ptr %58, i64 16
  br label %cond.end110

cond.false97:                                     ; preds = %cond.end86
  %base98 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %59 = load ptr, ptr %base98, align 8, !tbaa !8
  %buffer99 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %buffer99, align 8, !tbaa !14
  %offn100 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 1
  %61 = load i64, ptr %offn100, align 8, !tbaa !15
  %base101 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %62 = load ptr, ptr %base101, align 8, !tbaa !8
  %cs102 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %62, i32 0, i32 5
  %63 = load i64, ptr %cs102, align 8, !tbaa !16
  %mul103 = mul i64 %61, %63
  %add.ptr104 = getelementptr inbounds double, ptr %60, i64 %mul103
  %offm105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 0
  %64 = load i64, ptr %offm105, align 8, !tbaa !17
  %base106 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %65 = load ptr, ptr %base106, align 8, !tbaa !8
  %rs107 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 4
  %66 = load i64, ptr %rs107, align 8, !tbaa !18
  %mul108 = mul i64 %64, %66
  %add.ptr109 = getelementptr inbounds double, ptr %add.ptr104, i64 %mul108
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false97, %cond.true93
  %cond111 = phi ptr [ %add.ptr96, %cond.true93 ], [ %add.ptr109, %cond.false97 ]
  store ptr %cond111, ptr %buff_e88, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_norm112) #4
  %base113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %67 = load ptr, ptr %base113, align 8, !tbaa !8
  %datatype114 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 0
  %68 = load i32, ptr %datatype114, align 8, !tbaa !12
  %cmp115 = icmp eq i32 %68, 105
  br i1 %cmp115, label %cond.true117, label %cond.false121

cond.true117:                                     ; preds = %cond.end110
  %base118 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %69 = load ptr, ptr %base118, align 8, !tbaa !8
  %buffer119 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %buffer119, align 8, !tbaa !14
  %add.ptr120 = getelementptr inbounds i8, ptr %70, i64 16
  br label %cond.end134

cond.false121:                                    ; preds = %cond.end110
  %base122 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %71 = load ptr, ptr %base122, align 8, !tbaa !8
  %buffer123 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %buffer123, align 8, !tbaa !14
  %offn124 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 1
  %73 = load i64, ptr %offn124, align 8, !tbaa !15
  %base125 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %74 = load ptr, ptr %base125, align 8, !tbaa !8
  %cs126 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %74, i32 0, i32 5
  %75 = load i64, ptr %cs126, align 8, !tbaa !16
  %mul127 = mul i64 %73, %75
  %add.ptr128 = getelementptr inbounds double, ptr %72, i64 %mul127
  %offm129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 0
  %76 = load i64, ptr %offm129, align 8, !tbaa !17
  %base130 = getelementptr inbounds %struct.FLA_Obj_view, ptr %norm, i32 0, i32 6
  %77 = load ptr, ptr %base130, align 8, !tbaa !8
  %rs131 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 4
  %78 = load i64, ptr %rs131, align 8, !tbaa !18
  %mul132 = mul i64 %76, %78
  %add.ptr133 = getelementptr inbounds double, ptr %add.ptr128, i64 %mul132
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false121, %cond.true117
  %cond135 = phi ptr [ %add.ptr120, %cond.true117 ], [ %add.ptr133, %cond.false121 ]
  store ptr %cond135, ptr %buff_norm112, align 8, !tbaa !19
  %79 = load i32, ptr %m_A, align 4, !tbaa !4
  %80 = load ptr, ptr %buff_d64, align 8, !tbaa !19
  %81 = load i32, ptr %inc_d, align 4, !tbaa !4
  %82 = load ptr, ptr %buff_e88, align 8, !tbaa !19
  %83 = load i32, ptr %inc_e, align 4, !tbaa !4
  %84 = load ptr, ptr %buff_norm112, align 8, !tbaa !19
  %call136 = call i32 @FLA_Norm1_tridiag_opd(i32 noundef %79, ptr noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_norm112) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_e88) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_d64) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end134, %cond.end60
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Norm1_tridiag_ops(i32 noundef %m_A, ptr noundef %buff_d, i32 noundef %inc_d, ptr noundef %buff_e, i32 noundef %inc_e, ptr noundef %norm) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %buff_d.addr = alloca ptr, align 8
  %inc_d.addr = alloca i32, align 4
  %buff_e.addr = alloca ptr, align 8
  %inc_e.addr = alloca i32, align 4
  %norm.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %nm = alloca float, align 4
  %i = alloca i32, align 4
  %d_first = alloca float, align 4
  %e_first = alloca float, align 4
  %e_last = alloca float, align 4
  %d_last = alloca float, align 4
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %tmp = alloca double, align 8
  %e0 = alloca float, align 4
  %e1 = alloca float, align 4
  %d1 = alloca float, align 4
  %_x33 = alloca float, align 4
  %_y34 = alloca double, align 8
  %tmp40 = alloca double, align 8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store ptr %buff_d, ptr %buff_d.addr, align 8, !tbaa !19
  store i32 %inc_d, ptr %inc_d.addr, align 4, !tbaa !4
  store ptr %buff_e, ptr %buff_e.addr, align 8, !tbaa !19
  store i32 %inc_e, ptr %inc_e.addr, align 4, !tbaa !4
  store ptr %norm, ptr %norm.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #4
  %0 = load ptr, ptr %buff_d.addr, align 8, !tbaa !19
  store ptr %0, ptr %d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #4
  %1 = load ptr, ptr %buff_e.addr, align 8, !tbaa !19
  store ptr %1, ptr %e, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %nm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %2 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %d, align 8, !tbaa !19
  %4 = load float, ptr %3, align 4, !tbaa !20
  %conv = fpext float %4 to double
  %5 = call double @llvm.fabs.f64(double %conv)
  %conv1 = fptrunc double %5 to float
  store float %conv1, ptr %nm, align 4, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_first) #4
  %6 = load ptr, ptr %d, align 8, !tbaa !19
  %7 = load i32, ptr %inc_d.addr, align 4, !tbaa !4
  %mul = mul nsw i32 0, %7
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, ptr %6, i64 %idxprom
  %8 = load float, ptr %arrayidx, align 4, !tbaa !20
  store float %8, ptr %d_first, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %e_first) #4
  %9 = load ptr, ptr %e, align 8, !tbaa !19
  %10 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul2 = mul nsw i32 0, %10
  %idxprom3 = sext i32 %mul2 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %9, i64 %idxprom3
  %11 = load float, ptr %arrayidx4, align 4, !tbaa !20
  store float %11, ptr %e_first, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %e_last) #4
  %12 = load ptr, ptr %e, align 8, !tbaa !19
  %13 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %sub = sub nsw i32 %13, 2
  %14 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul5 = mul nsw i32 %sub, %14
  %idxprom6 = sext i32 %mul5 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %12, i64 %idxprom6
  %15 = load float, ptr %arrayidx7, align 4, !tbaa !20
  store float %15, ptr %e_last, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_last) #4
  %16 = load ptr, ptr %d, align 8, !tbaa !19
  %17 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %sub8 = sub nsw i32 %17, 1
  %18 = load i32, ptr %inc_d.addr, align 4, !tbaa !4
  %mul9 = mul nsw i32 %sub8, %18
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds float, ptr %16, i64 %idxprom10
  %19 = load float, ptr %arrayidx11, align 4, !tbaa !20
  store float %19, ptr %d_last, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x) #4
  %20 = load float, ptr %d_first, align 4, !tbaa !20
  %conv12 = fpext float %20 to double
  %21 = call double @llvm.fabs.f64(double %conv12)
  %22 = load float, ptr %e_first, align 4, !tbaa !20
  %conv13 = fpext float %22 to double
  %23 = call double @llvm.fabs.f64(double %conv13)
  %add = fadd double %21, %23
  store double %add, ptr %_x, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y) #4
  %24 = load float, ptr %e_last, align 4, !tbaa !20
  %conv14 = fpext float %24 to double
  %25 = call double @llvm.fabs.f64(double %conv14)
  %26 = load float, ptr %d_last, align 4, !tbaa !20
  %conv15 = fpext float %26 to double
  %27 = call double @llvm.fabs.f64(double %conv15)
  %add16 = fadd double %25, %27
  store double %add16, ptr %_y, align 8, !tbaa !22
  %28 = load double, ptr %_x, align 8, !tbaa !22
  %29 = load double, ptr %_y, align 8, !tbaa !22
  %cmp17 = fcmp ogt double %28, %29
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %30 = load double, ptr %_x, align 8, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %31 = load double, ptr %_y, align 8, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %30, %cond.true ], [ %31, %cond.false ]
  store double %cond, ptr %tmp, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x) #4
  %32 = load double, ptr %tmp, align 8, !tbaa !22
  %conv19 = fptrunc double %32 to float
  store float %conv19, ptr %nm, align 4, !tbaa !20
  store i32 1, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %34 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %sub20 = sub nsw i32 %34, 2
  %cmp21 = icmp slt i32 %33, %sub20
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %e0) #4
  %35 = load ptr, ptr %e, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %sub23 = sub nsw i32 %36, 1
  %37 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul24 = mul nsw i32 %sub23, %37
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %35, i64 %idxprom25
  %38 = load float, ptr %arrayidx26, align 4, !tbaa !20
  store float %38, ptr %e0, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %e1) #4
  %39 = load ptr, ptr %e, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %41 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul27 = mul nsw i32 %40, %41
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %39, i64 %idxprom28
  %42 = load float, ptr %arrayidx29, align 4, !tbaa !20
  store float %42, ptr %e1, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %d1) #4
  %43 = load ptr, ptr %d, align 8, !tbaa !19
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %45 = load i32, ptr %inc_d.addr, align 4, !tbaa !4
  %mul30 = mul nsw i32 %44, %45
  %idxprom31 = sext i32 %mul30 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %43, i64 %idxprom31
  %46 = load float, ptr %arrayidx32, align 4, !tbaa !20
  store float %46, ptr %d1, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x33) #4
  %47 = load float, ptr %nm, align 4, !tbaa !20
  store float %47, ptr %_x33, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y34) #4
  %48 = load float, ptr %e0, align 4, !tbaa !20
  %conv35 = fpext float %48 to double
  %49 = call double @llvm.fabs.f64(double %conv35)
  %50 = load float, ptr %d1, align 4, !tbaa !20
  %conv36 = fpext float %50 to double
  %51 = call double @llvm.fabs.f64(double %conv36)
  %add37 = fadd double %49, %51
  %52 = load float, ptr %e1, align 4, !tbaa !20
  %conv38 = fpext float %52 to double
  %53 = call double @llvm.fabs.f64(double %conv38)
  %add39 = fadd double %add37, %53
  store double %add39, ptr %_y34, align 8, !tbaa !22
  %54 = load float, ptr %_x33, align 4, !tbaa !20
  %conv41 = fpext float %54 to double
  %55 = load double, ptr %_y34, align 8, !tbaa !22
  %cmp42 = fcmp ogt double %conv41, %55
  br i1 %cmp42, label %cond.true44, label %cond.false46

cond.true44:                                      ; preds = %for.body
  %56 = load float, ptr %_x33, align 4, !tbaa !20
  %conv45 = fpext float %56 to double
  br label %cond.end47

cond.false46:                                     ; preds = %for.body
  %57 = load double, ptr %_y34, align 8, !tbaa !22
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.true44
  %cond48 = phi double [ %conv45, %cond.true44 ], [ %57, %cond.false46 ]
  store double %cond48, ptr %tmp40, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y34) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x33) #4
  %58 = load double, ptr %tmp40, align 8, !tbaa !22
  %conv49 = fptrunc double %58 to float
  store float %conv49, ptr %nm, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr %d1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e0) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end47
  %59 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_last) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e_last) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e_first) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_first) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %60 = load float, ptr %nm, align 4, !tbaa !20
  %61 = load ptr, ptr %norm.addr, align 8, !tbaa !19
  store float %60, ptr %61, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Norm1_tridiag_opd(i32 noundef %m_A, ptr noundef %buff_d, i32 noundef %inc_d, ptr noundef %buff_e, i32 noundef %inc_e, ptr noundef %norm) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %buff_d.addr = alloca ptr, align 8
  %inc_d.addr = alloca i32, align 4
  %buff_e.addr = alloca ptr, align 8
  %inc_e.addr = alloca i32, align 4
  %norm.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %nm = alloca double, align 8
  %i = alloca i32, align 4
  %d_first = alloca double, align 8
  %e_first = alloca double, align 8
  %e_last = alloca double, align 8
  %d_last = alloca double, align 8
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %tmp = alloca double, align 8
  %e0 = alloca double, align 8
  %e1 = alloca double, align 8
  %d1 = alloca double, align 8
  %_x25 = alloca double, align 8
  %_y26 = alloca double, align 8
  %tmp29 = alloca double, align 8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store ptr %buff_d, ptr %buff_d.addr, align 8, !tbaa !19
  store i32 %inc_d, ptr %inc_d.addr, align 4, !tbaa !4
  store ptr %buff_e, ptr %buff_e.addr, align 8, !tbaa !19
  store i32 %inc_e, ptr %inc_e.addr, align 4, !tbaa !4
  store ptr %norm, ptr %norm.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #4
  %0 = load ptr, ptr %buff_d.addr, align 8, !tbaa !19
  store ptr %0, ptr %d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #4
  %1 = load ptr, ptr %buff_e.addr, align 8, !tbaa !19
  store ptr %1, ptr %e, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %nm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %2 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %d, align 8, !tbaa !19
  %4 = load double, ptr %3, align 8, !tbaa !22
  %5 = call double @llvm.fabs.f64(double %4)
  store double %5, ptr %nm, align 8, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %d_first) #4
  %6 = load ptr, ptr %d, align 8, !tbaa !19
  %7 = load i32, ptr %inc_d.addr, align 4, !tbaa !4
  %mul = mul nsw i32 0, %7
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double, ptr %6, i64 %idxprom
  %8 = load double, ptr %arrayidx, align 8, !tbaa !22
  store double %8, ptr %d_first, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_first) #4
  %9 = load ptr, ptr %e, align 8, !tbaa !19
  %10 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul1 = mul nsw i32 0, %10
  %idxprom2 = sext i32 %mul1 to i64
  %arrayidx3 = getelementptr inbounds double, ptr %9, i64 %idxprom2
  %11 = load double, ptr %arrayidx3, align 8, !tbaa !22
  store double %11, ptr %e_first, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_last) #4
  %12 = load ptr, ptr %e, align 8, !tbaa !19
  %13 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %sub = sub nsw i32 %13, 2
  %14 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul4 = mul nsw i32 %sub, %14
  %idxprom5 = sext i32 %mul4 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %12, i64 %idxprom5
  %15 = load double, ptr %arrayidx6, align 8, !tbaa !22
  store double %15, ptr %e_last, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %d_last) #4
  %16 = load ptr, ptr %d, align 8, !tbaa !19
  %17 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %sub7 = sub nsw i32 %17, 1
  %18 = load i32, ptr %inc_d.addr, align 4, !tbaa !4
  %mul8 = mul nsw i32 %sub7, %18
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %16, i64 %idxprom9
  %19 = load double, ptr %arrayidx10, align 8, !tbaa !22
  store double %19, ptr %d_last, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x) #4
  %20 = load double, ptr %d_first, align 8, !tbaa !22
  %21 = call double @llvm.fabs.f64(double %20)
  %22 = load double, ptr %e_first, align 8, !tbaa !22
  %23 = call double @llvm.fabs.f64(double %22)
  %add = fadd double %21, %23
  store double %add, ptr %_x, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y) #4
  %24 = load double, ptr %e_last, align 8, !tbaa !22
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = load double, ptr %d_last, align 8, !tbaa !22
  %27 = call double @llvm.fabs.f64(double %26)
  %add11 = fadd double %25, %27
  store double %add11, ptr %_y, align 8, !tbaa !22
  %28 = load double, ptr %_x, align 8, !tbaa !22
  %29 = load double, ptr %_y, align 8, !tbaa !22
  %cmp12 = fcmp ogt double %28, %29
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %30 = load double, ptr %_x, align 8, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %31 = load double, ptr %_y, align 8, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %30, %cond.true ], [ %31, %cond.false ]
  store double %cond, ptr %tmp, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x) #4
  %32 = load double, ptr %tmp, align 8, !tbaa !22
  store double %32, ptr %nm, align 8, !tbaa !22
  store i32 1, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %34 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %sub13 = sub nsw i32 %34, 2
  %cmp14 = icmp slt i32 %33, %sub13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %e0) #4
  %35 = load ptr, ptr %e, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %sub15 = sub nsw i32 %36, 1
  %37 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %sub15, %37
  %idxprom17 = sext i32 %mul16 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %35, i64 %idxprom17
  %38 = load double, ptr %arrayidx18, align 8, !tbaa !22
  store double %38, ptr %e0, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %e1) #4
  %39 = load ptr, ptr %e, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %41 = load i32, ptr %inc_e.addr, align 4, !tbaa !4
  %mul19 = mul nsw i32 %40, %41
  %idxprom20 = sext i32 %mul19 to i64
  %arrayidx21 = getelementptr inbounds double, ptr %39, i64 %idxprom20
  %42 = load double, ptr %arrayidx21, align 8, !tbaa !22
  store double %42, ptr %e1, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #4
  %43 = load ptr, ptr %d, align 8, !tbaa !19
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %45 = load i32, ptr %inc_d.addr, align 4, !tbaa !4
  %mul22 = mul nsw i32 %44, %45
  %idxprom23 = sext i32 %mul22 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %43, i64 %idxprom23
  %46 = load double, ptr %arrayidx24, align 8, !tbaa !22
  store double %46, ptr %d1, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x25) #4
  %47 = load double, ptr %nm, align 8, !tbaa !22
  store double %47, ptr %_x25, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y26) #4
  %48 = load double, ptr %e0, align 8, !tbaa !22
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = load double, ptr %d1, align 8, !tbaa !22
  %51 = call double @llvm.fabs.f64(double %50)
  %add27 = fadd double %49, %51
  %52 = load double, ptr %e1, align 8, !tbaa !22
  %53 = call double @llvm.fabs.f64(double %52)
  %add28 = fadd double %add27, %53
  store double %add28, ptr %_y26, align 8, !tbaa !22
  %54 = load double, ptr %_x25, align 8, !tbaa !22
  %55 = load double, ptr %_y26, align 8, !tbaa !22
  %cmp30 = fcmp ogt double %54, %55
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %for.body
  %56 = load double, ptr %_x25, align 8, !tbaa !22
  br label %cond.end33

cond.false32:                                     ; preds = %for.body
  %57 = load double, ptr %_y26, align 8, !tbaa !22
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi double [ %56, %cond.true31 ], [ %57, %cond.false32 ]
  store double %cond34, ptr %tmp29, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y26) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x25) #4
  %58 = load double, ptr %tmp29, align 8, !tbaa !22
  store double %58, ptr %nm, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %e1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %e0) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end33
  %59 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %d_last) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_last) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_first) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d_first) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %60 = load double, ptr %nm, align 8, !tbaa !22
  %61 = load ptr, ptr %norm.addr, align 8, !tbaa !19
  store double %60, ptr %61, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !11, i64 48}
!9 = !{!"FLA_Obj_view", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"FLA_Obj_struct", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !5, i64 96, !5, i64 100}
!14 = !{!13, !11, i64 88}
!15 = !{!9, !10, i64 8}
!16 = !{!13, !10, i64 32}
!17 = !{!9, !10, i64 0}
!18 = !{!13, !10, i64 24}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
