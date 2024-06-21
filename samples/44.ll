; ModuleID = 'samples/44.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/util/app/givens/rf/flamec/FLA_Apply_G_rf_blk_var6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_G_rf_blk_var6(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, i64 noundef %b_alg) #0 {
entry:
  %b_alg.addr = alloca i64, align 8
  %datatype = alloca i32, align 4
  %k_G = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
  %rs_G = alloca i32, align 4
  %cs_G = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %buff_G = alloca ptr, align 8
  %buff_A = alloca ptr, align 8
  %buff_G50 = alloca ptr, align 8
  %buff_A74 = alloca ptr, align 8
  %buff_G101 = alloca ptr, align 8
  %buff_A125 = alloca ptr, align 8
  %buff_G152 = alloca ptr, align 8
  %buff_A176 = alloca ptr, align 8
  store i64 %b_alg, ptr %b_alg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k_G) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_G) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_G) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #3
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !8
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %k_G, align 4, !tbaa !8
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %m_A, align 4, !tbaa !8
  %call4 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %n_A, align 4, !tbaa !8
  %call6 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %rs_G, align 4, !tbaa !8
  %call8 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %G)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %cs_G, align 4, !tbaa !8
  %call10 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %rs_A, align 4, !tbaa !8
  %call12 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %cs_A, align 4, !tbaa !8
  %0 = load i32, ptr %datatype, align 4, !tbaa !8
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb49
    i32 102, label %sw.bb100
    i32 103, label %sw.bb151
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_G) #3
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !10
  %datatype14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype14, align 8, !tbaa !13
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %3 = load ptr, ptr %base16, align 8, !tbaa !10
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 24
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %5 = load ptr, ptr %base17, align 8, !tbaa !10
  %buffer18 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer18, align 8, !tbaa !15
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !16
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %8 = load ptr, ptr %base19, align 8, !tbaa !10
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !17
  %mul = mul i64 %7, %9
  %add.ptr20 = getelementptr inbounds %struct.scomplex, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !18
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %11 = load ptr, ptr %base21, align 8, !tbaa !10
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !19
  %mul22 = mul i64 %10, %12
  %add.ptr23 = getelementptr inbounds %struct.scomplex, ptr %add.ptr20, i64 %mul22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr23, %cond.false ]
  store ptr %cond, ptr %buff_G, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #3
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %13 = load ptr, ptr %base24, align 8, !tbaa !10
  %datatype25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype25, align 8, !tbaa !13
  %cmp26 = icmp eq i32 %14, 105
  br i1 %cmp26, label %cond.true28, label %cond.false32

cond.true28:                                      ; preds = %cond.end
  %base29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %15 = load ptr, ptr %base29, align 8, !tbaa !10
  %buffer30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer30, align 8, !tbaa !15
  %add.ptr31 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end45

cond.false32:                                     ; preds = %cond.end
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %17 = load ptr, ptr %base33, align 8, !tbaa !10
  %buffer34 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer34, align 8, !tbaa !15
  %offn35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %19 = load i64, ptr %offn35, align 8, !tbaa !16
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %20 = load ptr, ptr %base36, align 8, !tbaa !10
  %cs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs37, align 8, !tbaa !17
  %mul38 = mul i64 %19, %21
  %add.ptr39 = getelementptr inbounds float, ptr %18, i64 %mul38
  %offm40 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %22 = load i64, ptr %offm40, align 8, !tbaa !18
  %base41 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %23 = load ptr, ptr %base41, align 8, !tbaa !10
  %rs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs42, align 8, !tbaa !19
  %mul43 = mul i64 %22, %24
  %add.ptr44 = getelementptr inbounds float, ptr %add.ptr39, i64 %mul43
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false32, %cond.true28
  %cond46 = phi ptr [ %add.ptr31, %cond.true28 ], [ %add.ptr44, %cond.false32 ]
  store ptr %cond46, ptr %buff_A, align 8, !tbaa !20
  %25 = load i32, ptr %k_G, align 4, !tbaa !8
  %26 = load i32, ptr %m_A, align 4, !tbaa !8
  %27 = load i32, ptr %n_A, align 4, !tbaa !8
  %28 = load ptr, ptr %buff_G, align 8, !tbaa !20
  %29 = load i32, ptr %rs_G, align 4, !tbaa !8
  %30 = load i32, ptr %cs_G, align 4, !tbaa !8
  %31 = load ptr, ptr %buff_A, align 8, !tbaa !20
  %32 = load i32, ptr %rs_A, align 4, !tbaa !8
  %33 = load i32, ptr %cs_A, align 4, !tbaa !8
  %34 = load i64, ptr %b_alg.addr, align 8, !tbaa !4
  %conv47 = trunc i64 %34 to i32
  %call48 = call i32 @FLA_Apply_G_rf_bls_var6(i32 noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %conv47)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_G) #3
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_G50) #3
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %35 = load ptr, ptr %base51, align 8, !tbaa !10
  %datatype52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %datatype52, align 8, !tbaa !13
  %cmp53 = icmp eq i32 %36, 105
  br i1 %cmp53, label %cond.true55, label %cond.false59

cond.true55:                                      ; preds = %sw.bb49
  %base56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %37 = load ptr, ptr %base56, align 8, !tbaa !10
  %buffer57 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %buffer57, align 8, !tbaa !15
  %add.ptr58 = getelementptr inbounds i8, ptr %38, i64 32
  br label %cond.end72

cond.false59:                                     ; preds = %sw.bb49
  %base60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %39 = load ptr, ptr %base60, align 8, !tbaa !10
  %buffer61 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %buffer61, align 8, !tbaa !15
  %offn62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 1
  %41 = load i64, ptr %offn62, align 8, !tbaa !16
  %base63 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %42 = load ptr, ptr %base63, align 8, !tbaa !10
  %cs64 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %42, i32 0, i32 5
  %43 = load i64, ptr %cs64, align 8, !tbaa !17
  %mul65 = mul i64 %41, %43
  %add.ptr66 = getelementptr inbounds %struct.dcomplex, ptr %40, i64 %mul65
  %offm67 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 0
  %44 = load i64, ptr %offm67, align 8, !tbaa !18
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %45 = load ptr, ptr %base68, align 8, !tbaa !10
  %rs69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 4
  %46 = load i64, ptr %rs69, align 8, !tbaa !19
  %mul70 = mul i64 %44, %46
  %add.ptr71 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr66, i64 %mul70
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false59, %cond.true55
  %cond73 = phi ptr [ %add.ptr58, %cond.true55 ], [ %add.ptr71, %cond.false59 ]
  store ptr %cond73, ptr %buff_G50, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A74) #3
  %base75 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %47 = load ptr, ptr %base75, align 8, !tbaa !10
  %datatype76 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 0
  %48 = load i32, ptr %datatype76, align 8, !tbaa !13
  %cmp77 = icmp eq i32 %48, 105
  br i1 %cmp77, label %cond.true79, label %cond.false83

cond.true79:                                      ; preds = %cond.end72
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %49 = load ptr, ptr %base80, align 8, !tbaa !10
  %buffer81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %buffer81, align 8, !tbaa !15
  %add.ptr82 = getelementptr inbounds i8, ptr %50, i64 16
  br label %cond.end96

cond.false83:                                     ; preds = %cond.end72
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %51 = load ptr, ptr %base84, align 8, !tbaa !10
  %buffer85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer85, align 8, !tbaa !15
  %offn86 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %53 = load i64, ptr %offn86, align 8, !tbaa !16
  %base87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %54 = load ptr, ptr %base87, align 8, !tbaa !10
  %cs88 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %54, i32 0, i32 5
  %55 = load i64, ptr %cs88, align 8, !tbaa !17
  %mul89 = mul i64 %53, %55
  %add.ptr90 = getelementptr inbounds double, ptr %52, i64 %mul89
  %offm91 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %56 = load i64, ptr %offm91, align 8, !tbaa !18
  %base92 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %57 = load ptr, ptr %base92, align 8, !tbaa !10
  %rs93 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 4
  %58 = load i64, ptr %rs93, align 8, !tbaa !19
  %mul94 = mul i64 %56, %58
  %add.ptr95 = getelementptr inbounds double, ptr %add.ptr90, i64 %mul94
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false83, %cond.true79
  %cond97 = phi ptr [ %add.ptr82, %cond.true79 ], [ %add.ptr95, %cond.false83 ]
  store ptr %cond97, ptr %buff_A74, align 8, !tbaa !20
  %59 = load i32, ptr %k_G, align 4, !tbaa !8
  %60 = load i32, ptr %m_A, align 4, !tbaa !8
  %61 = load i32, ptr %n_A, align 4, !tbaa !8
  %62 = load ptr, ptr %buff_G50, align 8, !tbaa !20
  %63 = load i32, ptr %rs_G, align 4, !tbaa !8
  %64 = load i32, ptr %cs_G, align 4, !tbaa !8
  %65 = load ptr, ptr %buff_A74, align 8, !tbaa !20
  %66 = load i32, ptr %rs_A, align 4, !tbaa !8
  %67 = load i32, ptr %cs_A, align 4, !tbaa !8
  %68 = load i64, ptr %b_alg.addr, align 8, !tbaa !4
  %conv98 = trunc i64 %68 to i32
  %call99 = call i32 @FLA_Apply_G_rf_bld_var6(i32 noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64, ptr noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef %conv98)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A74) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_G50) #3
  br label %sw.epilog

sw.bb100:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_G101) #3
  %base102 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %69 = load ptr, ptr %base102, align 8, !tbaa !10
  %datatype103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 0
  %70 = load i32, ptr %datatype103, align 8, !tbaa !13
  %cmp104 = icmp eq i32 %70, 105
  br i1 %cmp104, label %cond.true106, label %cond.false110

cond.true106:                                     ; preds = %sw.bb100
  %base107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %71 = load ptr, ptr %base107, align 8, !tbaa !10
  %buffer108 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %buffer108, align 8, !tbaa !15
  %add.ptr109 = getelementptr inbounds i8, ptr %72, i64 24
  br label %cond.end123

cond.false110:                                    ; preds = %sw.bb100
  %base111 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %73 = load ptr, ptr %base111, align 8, !tbaa !10
  %buffer112 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %buffer112, align 8, !tbaa !15
  %offn113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 1
  %75 = load i64, ptr %offn113, align 8, !tbaa !16
  %base114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %76 = load ptr, ptr %base114, align 8, !tbaa !10
  %cs115 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %76, i32 0, i32 5
  %77 = load i64, ptr %cs115, align 8, !tbaa !17
  %mul116 = mul i64 %75, %77
  %add.ptr117 = getelementptr inbounds %struct.scomplex, ptr %74, i64 %mul116
  %offm118 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 0
  %78 = load i64, ptr %offm118, align 8, !tbaa !18
  %base119 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %79 = load ptr, ptr %base119, align 8, !tbaa !10
  %rs120 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 4
  %80 = load i64, ptr %rs120, align 8, !tbaa !19
  %mul121 = mul i64 %78, %80
  %add.ptr122 = getelementptr inbounds %struct.scomplex, ptr %add.ptr117, i64 %mul121
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false110, %cond.true106
  %cond124 = phi ptr [ %add.ptr109, %cond.true106 ], [ %add.ptr122, %cond.false110 ]
  store ptr %cond124, ptr %buff_G101, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A125) #3
  %base126 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %81 = load ptr, ptr %base126, align 8, !tbaa !10
  %datatype127 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 0
  %82 = load i32, ptr %datatype127, align 8, !tbaa !13
  %cmp128 = icmp eq i32 %82, 105
  br i1 %cmp128, label %cond.true130, label %cond.false134

cond.true130:                                     ; preds = %cond.end123
  %base131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %83 = load ptr, ptr %base131, align 8, !tbaa !10
  %buffer132 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %buffer132, align 8, !tbaa !15
  %add.ptr133 = getelementptr inbounds i8, ptr %84, i64 24
  br label %cond.end147

cond.false134:                                    ; preds = %cond.end123
  %base135 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %85 = load ptr, ptr %base135, align 8, !tbaa !10
  %buffer136 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %85, i32 0, i32 12
  %86 = load ptr, ptr %buffer136, align 8, !tbaa !15
  %offn137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %87 = load i64, ptr %offn137, align 8, !tbaa !16
  %base138 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %88 = load ptr, ptr %base138, align 8, !tbaa !10
  %cs139 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 5
  %89 = load i64, ptr %cs139, align 8, !tbaa !17
  %mul140 = mul i64 %87, %89
  %add.ptr141 = getelementptr inbounds %struct.scomplex, ptr %86, i64 %mul140
  %offm142 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %90 = load i64, ptr %offm142, align 8, !tbaa !18
  %base143 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %91 = load ptr, ptr %base143, align 8, !tbaa !10
  %rs144 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 4
  %92 = load i64, ptr %rs144, align 8, !tbaa !19
  %mul145 = mul i64 %90, %92
  %add.ptr146 = getelementptr inbounds %struct.scomplex, ptr %add.ptr141, i64 %mul145
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false134, %cond.true130
  %cond148 = phi ptr [ %add.ptr133, %cond.true130 ], [ %add.ptr146, %cond.false134 ]
  store ptr %cond148, ptr %buff_A125, align 8, !tbaa !20
  %93 = load i32, ptr %k_G, align 4, !tbaa !8
  %94 = load i32, ptr %m_A, align 4, !tbaa !8
  %95 = load i32, ptr %n_A, align 4, !tbaa !8
  %96 = load ptr, ptr %buff_G101, align 8, !tbaa !20
  %97 = load i32, ptr %rs_G, align 4, !tbaa !8
  %98 = load i32, ptr %cs_G, align 4, !tbaa !8
  %99 = load ptr, ptr %buff_A125, align 8, !tbaa !20
  %100 = load i32, ptr %rs_A, align 4, !tbaa !8
  %101 = load i32, ptr %cs_A, align 4, !tbaa !8
  %102 = load i64, ptr %b_alg.addr, align 8, !tbaa !4
  %conv149 = trunc i64 %102 to i32
  %call150 = call i32 @FLA_Apply_G_rf_blc_var6(i32 noundef %93, i32 noundef %94, i32 noundef %95, ptr noundef %96, i32 noundef %97, i32 noundef %98, ptr noundef %99, i32 noundef %100, i32 noundef %101, i32 noundef %conv149)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A125) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_G101) #3
  br label %sw.epilog

sw.bb151:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_G152) #3
  %base153 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %103 = load ptr, ptr %base153, align 8, !tbaa !10
  %datatype154 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %datatype154, align 8, !tbaa !13
  %cmp155 = icmp eq i32 %104, 105
  br i1 %cmp155, label %cond.true157, label %cond.false161

cond.true157:                                     ; preds = %sw.bb151
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %105 = load ptr, ptr %base158, align 8, !tbaa !10
  %buffer159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %buffer159, align 8, !tbaa !15
  %add.ptr160 = getelementptr inbounds i8, ptr %106, i64 32
  br label %cond.end174

cond.false161:                                    ; preds = %sw.bb151
  %base162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %107 = load ptr, ptr %base162, align 8, !tbaa !10
  %buffer163 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %buffer163, align 8, !tbaa !15
  %offn164 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 1
  %109 = load i64, ptr %offn164, align 8, !tbaa !16
  %base165 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %110 = load ptr, ptr %base165, align 8, !tbaa !10
  %cs166 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %110, i32 0, i32 5
  %111 = load i64, ptr %cs166, align 8, !tbaa !17
  %mul167 = mul i64 %109, %111
  %add.ptr168 = getelementptr inbounds %struct.dcomplex, ptr %108, i64 %mul167
  %offm169 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 0
  %112 = load i64, ptr %offm169, align 8, !tbaa !18
  %base170 = getelementptr inbounds %struct.FLA_Obj_view, ptr %G, i32 0, i32 6
  %113 = load ptr, ptr %base170, align 8, !tbaa !10
  %rs171 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 4
  %114 = load i64, ptr %rs171, align 8, !tbaa !19
  %mul172 = mul i64 %112, %114
  %add.ptr173 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr168, i64 %mul172
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false161, %cond.true157
  %cond175 = phi ptr [ %add.ptr160, %cond.true157 ], [ %add.ptr173, %cond.false161 ]
  store ptr %cond175, ptr %buff_G152, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A176) #3
  %base177 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %115 = load ptr, ptr %base177, align 8, !tbaa !10
  %datatype178 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %115, i32 0, i32 0
  %116 = load i32, ptr %datatype178, align 8, !tbaa !13
  %cmp179 = icmp eq i32 %116, 105
  br i1 %cmp179, label %cond.true181, label %cond.false185

cond.true181:                                     ; preds = %cond.end174
  %base182 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %117 = load ptr, ptr %base182, align 8, !tbaa !10
  %buffer183 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 12
  %118 = load ptr, ptr %buffer183, align 8, !tbaa !15
  %add.ptr184 = getelementptr inbounds i8, ptr %118, i64 32
  br label %cond.end198

cond.false185:                                    ; preds = %cond.end174
  %base186 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %119 = load ptr, ptr %base186, align 8, !tbaa !10
  %buffer187 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 12
  %120 = load ptr, ptr %buffer187, align 8, !tbaa !15
  %offn188 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %121 = load i64, ptr %offn188, align 8, !tbaa !16
  %base189 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %122 = load ptr, ptr %base189, align 8, !tbaa !10
  %cs190 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %122, i32 0, i32 5
  %123 = load i64, ptr %cs190, align 8, !tbaa !17
  %mul191 = mul i64 %121, %123
  %add.ptr192 = getelementptr inbounds %struct.dcomplex, ptr %120, i64 %mul191
  %offm193 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %124 = load i64, ptr %offm193, align 8, !tbaa !18
  %base194 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %125 = load ptr, ptr %base194, align 8, !tbaa !10
  %rs195 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %125, i32 0, i32 4
  %126 = load i64, ptr %rs195, align 8, !tbaa !19
  %mul196 = mul i64 %124, %126
  %add.ptr197 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr192, i64 %mul196
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false185, %cond.true181
  %cond199 = phi ptr [ %add.ptr184, %cond.true181 ], [ %add.ptr197, %cond.false185 ]
  store ptr %cond199, ptr %buff_A176, align 8, !tbaa !20
  %127 = load i32, ptr %k_G, align 4, !tbaa !8
  %128 = load i32, ptr %m_A, align 4, !tbaa !8
  %129 = load i32, ptr %n_A, align 4, !tbaa !8
  %130 = load ptr, ptr %buff_G152, align 8, !tbaa !20
  %131 = load i32, ptr %rs_G, align 4, !tbaa !8
  %132 = load i32, ptr %cs_G, align 4, !tbaa !8
  %133 = load ptr, ptr %buff_A176, align 8, !tbaa !20
  %134 = load i32, ptr %rs_A, align 4, !tbaa !8
  %135 = load i32, ptr %cs_A, align 4, !tbaa !8
  %136 = load i64, ptr %b_alg.addr, align 8, !tbaa !4
  %conv200 = trunc i64 %136 to i32
  %call201 = call i32 @FLA_Apply_G_rf_blz_var6(i32 noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, i32 noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, i32 noundef %135, i32 noundef %conv200)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A176) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_G152) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end198, %cond.end147, %cond.end96, %cond.end45
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_G) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_G) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k_G) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_G_rf_bls_var6(i32 noundef %k_G, i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_G, i32 noundef %rs_G, i32 noundef %cs_G, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, i32 noundef %b_alg) #0 {
entry:
  %k_G.addr = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_G.addr = alloca ptr, align 8
  %rs_G.addr = alloca i32, align 4
  %cs_G.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %b_alg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %A1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x5 = alloca i32, align 4
  %_y6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store i32 %k_G, ptr %k_G.addr, align 4, !tbaa !8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !8
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !8
  store ptr %buff_G, ptr %buff_G.addr, align 8, !tbaa !20
  store i32 %rs_G, ptr %rs_G.addr, align 4, !tbaa !8
  store i32 %cs_G, ptr %cs_G.addr, align 4, !tbaa !8
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !20
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !8
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !8
  store i32 %b_alg, ptr %b_alg.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A1) #3
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !20
  %3 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %mul = mul nsw i32 0, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %mul1 = mul nsw i32 %4, %5
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds float, ptr %add.ptr, i64 %idx.ext2
  store ptr %add.ptr3, ptr %A1, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 0, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %6 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %_y, align 4, !tbaa !8
  %8 = load i32, ptr %_x, align 4, !tbaa !8
  %9 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp4 = icmp sgt i32 %8, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %12, ptr %m_ahead, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x5) #3
  %13 = load i32, ptr %b_alg.addr, align 4, !tbaa !8
  store i32 %13, ptr %_x5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y6) #3
  %14 = load i32, ptr %m_ahead, align 4, !tbaa !8
  store i32 %14, ptr %_y6, align 4, !tbaa !8
  %15 = load i32, ptr %_x5, align 4, !tbaa !8
  %16 = load i32, ptr %_y6, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  %17 = load i32, ptr %_x5, align 4, !tbaa !8
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  %18 = load i32, ptr %_y6, align 4, !tbaa !8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %17, %cond.true9 ], [ %18, %cond.false10 ]
  store i32 %cond12, ptr %tmp7, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x5) #3
  %19 = load i32, ptr %tmp7, align 4, !tbaa !8
  store i32 %19, ptr %b, align 4, !tbaa !8
  %20 = load i32, ptr %k_G.addr, align 4, !tbaa !8
  %21 = load i32, ptr %b, align 4, !tbaa !8
  %22 = load i32, ptr %n_A.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %buff_G.addr, align 8, !tbaa !20
  %24 = load i32, ptr %rs_G.addr, align 4, !tbaa !8
  %25 = load i32, ptr %cs_G.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %A1, align 8, !tbaa !20
  %27 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %28 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %call = call i32 @FLA_Apply_G_rf_ass_var6(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A1) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end11
  %29 = load i32, ptr %b, align 4, !tbaa !8
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %30, %29
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_G_rf_bld_var6(i32 noundef %k_G, i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_G, i32 noundef %rs_G, i32 noundef %cs_G, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, i32 noundef %b_alg) #0 {
entry:
  %k_G.addr = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_G.addr = alloca ptr, align 8
  %rs_G.addr = alloca i32, align 4
  %cs_G.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %b_alg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %A1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x5 = alloca i32, align 4
  %_y6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store i32 %k_G, ptr %k_G.addr, align 4, !tbaa !8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !8
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !8
  store ptr %buff_G, ptr %buff_G.addr, align 8, !tbaa !20
  store i32 %rs_G, ptr %rs_G.addr, align 4, !tbaa !8
  store i32 %cs_G, ptr %cs_G.addr, align 4, !tbaa !8
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !20
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !8
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !8
  store i32 %b_alg, ptr %b_alg.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A1) #3
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !20
  %3 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %mul = mul nsw i32 0, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds double, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %mul1 = mul nsw i32 %4, %5
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds double, ptr %add.ptr, i64 %idx.ext2
  store ptr %add.ptr3, ptr %A1, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 0, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %6 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %_y, align 4, !tbaa !8
  %8 = load i32, ptr %_x, align 4, !tbaa !8
  %9 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp4 = icmp sgt i32 %8, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %12, ptr %m_ahead, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x5) #3
  %13 = load i32, ptr %b_alg.addr, align 4, !tbaa !8
  store i32 %13, ptr %_x5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y6) #3
  %14 = load i32, ptr %m_ahead, align 4, !tbaa !8
  store i32 %14, ptr %_y6, align 4, !tbaa !8
  %15 = load i32, ptr %_x5, align 4, !tbaa !8
  %16 = load i32, ptr %_y6, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  %17 = load i32, ptr %_x5, align 4, !tbaa !8
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  %18 = load i32, ptr %_y6, align 4, !tbaa !8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %17, %cond.true9 ], [ %18, %cond.false10 ]
  store i32 %cond12, ptr %tmp7, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x5) #3
  %19 = load i32, ptr %tmp7, align 4, !tbaa !8
  store i32 %19, ptr %b, align 4, !tbaa !8
  %20 = load i32, ptr %k_G.addr, align 4, !tbaa !8
  %21 = load i32, ptr %b, align 4, !tbaa !8
  %22 = load i32, ptr %n_A.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %buff_G.addr, align 8, !tbaa !20
  %24 = load i32, ptr %rs_G.addr, align 4, !tbaa !8
  %25 = load i32, ptr %cs_G.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %A1, align 8, !tbaa !20
  %27 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %28 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %call = call i32 @FLA_Apply_G_rf_asd_var6(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A1) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end11
  %29 = load i32, ptr %b, align 4, !tbaa !8
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %30, %29
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_G_rf_blc_var6(i32 noundef %k_G, i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_G, i32 noundef %rs_G, i32 noundef %cs_G, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, i32 noundef %b_alg) #0 {
entry:
  %k_G.addr = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_G.addr = alloca ptr, align 8
  %rs_G.addr = alloca i32, align 4
  %cs_G.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %b_alg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %A1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x5 = alloca i32, align 4
  %_y6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store i32 %k_G, ptr %k_G.addr, align 4, !tbaa !8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !8
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !8
  store ptr %buff_G, ptr %buff_G.addr, align 8, !tbaa !20
  store i32 %rs_G, ptr %rs_G.addr, align 4, !tbaa !8
  store i32 %cs_G, ptr %cs_G.addr, align 4, !tbaa !8
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !20
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !8
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !8
  store i32 %b_alg, ptr %b_alg.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A1) #3
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !20
  %3 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %mul = mul nsw i32 0, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %mul1 = mul nsw i32 %4, %5
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %idx.ext2
  store ptr %add.ptr3, ptr %A1, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 0, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %6 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %_y, align 4, !tbaa !8
  %8 = load i32, ptr %_x, align 4, !tbaa !8
  %9 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp4 = icmp sgt i32 %8, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %12, ptr %m_ahead, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x5) #3
  %13 = load i32, ptr %b_alg.addr, align 4, !tbaa !8
  store i32 %13, ptr %_x5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y6) #3
  %14 = load i32, ptr %m_ahead, align 4, !tbaa !8
  store i32 %14, ptr %_y6, align 4, !tbaa !8
  %15 = load i32, ptr %_x5, align 4, !tbaa !8
  %16 = load i32, ptr %_y6, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  %17 = load i32, ptr %_x5, align 4, !tbaa !8
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  %18 = load i32, ptr %_y6, align 4, !tbaa !8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %17, %cond.true9 ], [ %18, %cond.false10 ]
  store i32 %cond12, ptr %tmp7, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x5) #3
  %19 = load i32, ptr %tmp7, align 4, !tbaa !8
  store i32 %19, ptr %b, align 4, !tbaa !8
  %20 = load i32, ptr %k_G.addr, align 4, !tbaa !8
  %21 = load i32, ptr %b, align 4, !tbaa !8
  %22 = load i32, ptr %n_A.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %buff_G.addr, align 8, !tbaa !20
  %24 = load i32, ptr %rs_G.addr, align 4, !tbaa !8
  %25 = load i32, ptr %cs_G.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %A1, align 8, !tbaa !20
  %27 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %28 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %call = call i32 @FLA_Apply_G_rf_asc_var6(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A1) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end11
  %29 = load i32, ptr %b, align 4, !tbaa !8
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %30, %29
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_G_rf_blz_var6(i32 noundef %k_G, i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_G, i32 noundef %rs_G, i32 noundef %cs_G, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, i32 noundef %b_alg) #0 {
entry:
  %k_G.addr = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_G.addr = alloca ptr, align 8
  %rs_G.addr = alloca i32, align 4
  %cs_G.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %b_alg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %A1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x5 = alloca i32, align 4
  %_y6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store i32 %k_G, ptr %k_G.addr, align 4, !tbaa !8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !8
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !8
  store ptr %buff_G, ptr %buff_G.addr, align 8, !tbaa !20
  store i32 %rs_G, ptr %rs_G.addr, align 4, !tbaa !8
  store i32 %cs_G, ptr %cs_G.addr, align 4, !tbaa !8
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !20
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !8
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !8
  store i32 %b_alg, ptr %b_alg.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A1) #3
  %2 = load ptr, ptr %buff_A.addr, align 8, !tbaa !20
  %3 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %mul = mul nsw i32 0, %3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %mul1 = mul nsw i32 %4, %5
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %idx.ext2
  store ptr %add.ptr3, ptr %A1, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 0, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %6 = load i32, ptr %m_A.addr, align 4, !tbaa !8
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 %6, %7
  store i32 %sub, ptr %_y, align 4, !tbaa !8
  %8 = load i32, ptr %_x, align 4, !tbaa !8
  %9 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp4 = icmp sgt i32 %8, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %12 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %12, ptr %m_ahead, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x5) #3
  %13 = load i32, ptr %b_alg.addr, align 4, !tbaa !8
  store i32 %13, ptr %_x5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y6) #3
  %14 = load i32, ptr %m_ahead, align 4, !tbaa !8
  store i32 %14, ptr %_y6, align 4, !tbaa !8
  %15 = load i32, ptr %_x5, align 4, !tbaa !8
  %16 = load i32, ptr %_y6, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  %17 = load i32, ptr %_x5, align 4, !tbaa !8
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  %18 = load i32, ptr %_y6, align 4, !tbaa !8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %17, %cond.true9 ], [ %18, %cond.false10 ]
  store i32 %cond12, ptr %tmp7, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x5) #3
  %19 = load i32, ptr %tmp7, align 4, !tbaa !8
  store i32 %19, ptr %b, align 4, !tbaa !8
  %20 = load i32, ptr %k_G.addr, align 4, !tbaa !8
  %21 = load i32, ptr %b, align 4, !tbaa !8
  %22 = load i32, ptr %n_A.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %buff_G.addr, align 8, !tbaa !20
  %24 = load i32, ptr %rs_G.addr, align 4, !tbaa !8
  %25 = load i32, ptr %cs_G.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %A1, align 8, !tbaa !20
  %27 = load i32, ptr %rs_A.addr, align 4, !tbaa !8
  %28 = load i32, ptr %cs_A.addr, align 4, !tbaa !8
  %call = call i32 @FLA_Apply_G_rf_asz_var6(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A1) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end11
  %29 = load i32, ptr %b, align 4, !tbaa !8
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %30, %29
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 -1
}

declare i32 @FLA_Apply_G_rf_ass_var6(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @FLA_Apply_G_rf_asd_var6(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @FLA_Apply_G_rf_asc_var6(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @FLA_Apply_G_rf_asz_var6(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !12, i64 48}
!11 = !{!"FLA_Obj_view", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !12, i64 48}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"FLA_Obj_struct", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !12, i64 88, !9, i64 96, !9, i64 100}
!15 = !{!14, !12, i64 88}
!16 = !{!11, !5, i64 8}
!17 = !{!14, !5, i64 32}
!18 = !{!11, !5, i64 0}
!19 = !{!14, !5, i64 24}
!20 = !{!12, !12, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
