; ModuleID = 'samples/659.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/red/hessut/vars/flamec/FLA_Fused_Uhu_Yhu_Zhu_opt_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: nounwind uwtable
define i32 @FLA_Fused_Uhu_Yhu_Zhu_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %delta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_U = alloca i32, align 4
  %n_U = alloca i32, align 4
  %rs_U = alloca i32, align 4
  %cs_U = alloca i32, align 4
  %rs_Y = alloca i32, align 4
  %cs_Y = alloca i32, align 4
  %rs_Z = alloca i32, align 4
  %cs_Z = alloca i32, align 4
  %inc_u = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %inc_t = alloca i32, align 4
  %buff_U = alloca ptr, align 8
  %buff_Y = alloca ptr, align 8
  %buff_Z = alloca ptr, align 8
  %buff_t = alloca ptr, align 8
  %buff_u = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %buff_delta = alloca ptr, align 8
  %buff_U197 = alloca ptr, align 8
  %buff_Y221 = alloca ptr, align 8
  %buff_Z245 = alloca ptr, align 8
  %buff_t269 = alloca ptr, align 8
  %buff_u293 = alloca ptr, align 8
  %buff_y317 = alloca ptr, align 8
  %buff_z341 = alloca ptr, align 8
  %buff_delta365 = alloca ptr, align 8
  %buff_U391 = alloca ptr, align 8
  %buff_Y415 = alloca ptr, align 8
  %buff_Z439 = alloca ptr, align 8
  %buff_t463 = alloca ptr, align 8
  %buff_u487 = alloca ptr, align 8
  %buff_y511 = alloca ptr, align 8
  %buff_z535 = alloca ptr, align 8
  %buff_delta559 = alloca ptr, align 8
  %buff_U585 = alloca ptr, align 8
  %buff_Y609 = alloca ptr, align 8
  %buff_Z633 = alloca ptr, align 8
  %buff_t657 = alloca ptr, align 8
  %buff_u681 = alloca ptr, align 8
  %buff_y705 = alloca ptr, align 8
  %buff_z729 = alloca ptr, align 8
  %buff_delta753 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_U) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_U) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_U) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_U) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_Y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_Y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_Z) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_Z) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_t) #5
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_U, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n_U, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %rs_U, align 4, !tbaa !4
  %call6 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %cs_U, align 4, !tbaa !4
  %call8 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %rs_Y, align 4, !tbaa !4
  %call10 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %cs_Y, align 4, !tbaa !4
  %call12 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %rs_Z, align 4, !tbaa !4
  %call14 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z)
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr %cs_Z, align 4, !tbaa !4
  %call16 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %u)
  %conv17 = trunc i64 %call16 to i32
  store i32 %conv17, ptr %inc_u, align 4, !tbaa !4
  %call18 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, ptr %inc_y, align 4, !tbaa !4
  %call20 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %z)
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, ptr %inc_z, align 4, !tbaa !4
  %call22 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %t)
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, ptr %inc_t, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb196
    i32 102, label %sw.bb390
    i32 103, label %sw.bb584
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_U) #5
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype24 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype24, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base26 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %3 = load ptr, ptr %base26, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base27 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %5 = load ptr, ptr %base27, align 8, !tbaa !8
  %buffer28 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer28, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %8 = load ptr, ptr %base29, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr30 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %11 = load ptr, ptr %base31, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul32 = mul i64 %10, %12
  %add.ptr33 = getelementptr inbounds float, ptr %add.ptr30, i64 %mul32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr33, %cond.false ]
  store ptr %cond, ptr %buff_U, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Y) #5
  %base34 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %13 = load ptr, ptr %base34, align 8, !tbaa !8
  %datatype35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype35, align 8, !tbaa !12
  %cmp36 = icmp eq i32 %14, 105
  br i1 %cmp36, label %cond.true38, label %cond.false42

cond.true38:                                      ; preds = %cond.end
  %base39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %15 = load ptr, ptr %base39, align 8, !tbaa !8
  %buffer40 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer40, align 8, !tbaa !14
  %add.ptr41 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end55

cond.false42:                                     ; preds = %cond.end
  %base43 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %17 = load ptr, ptr %base43, align 8, !tbaa !8
  %buffer44 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer44, align 8, !tbaa !14
  %offn45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %19 = load i64, ptr %offn45, align 8, !tbaa !15
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %20 = load ptr, ptr %base46, align 8, !tbaa !8
  %cs47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs47, align 8, !tbaa !16
  %mul48 = mul i64 %19, %21
  %add.ptr49 = getelementptr inbounds float, ptr %18, i64 %mul48
  %offm50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %22 = load i64, ptr %offm50, align 8, !tbaa !17
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %23 = load ptr, ptr %base51, align 8, !tbaa !8
  %rs52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs52, align 8, !tbaa !18
  %mul53 = mul i64 %22, %24
  %add.ptr54 = getelementptr inbounds float, ptr %add.ptr49, i64 %mul53
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false42, %cond.true38
  %cond56 = phi ptr [ %add.ptr41, %cond.true38 ], [ %add.ptr54, %cond.false42 ]
  store ptr %cond56, ptr %buff_Y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Z) #5
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %25 = load ptr, ptr %base57, align 8, !tbaa !8
  %datatype58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype58, align 8, !tbaa !12
  %cmp59 = icmp eq i32 %26, 105
  br i1 %cmp59, label %cond.true61, label %cond.false65

cond.true61:                                      ; preds = %cond.end55
  %base62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %27 = load ptr, ptr %base62, align 8, !tbaa !8
  %buffer63 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer63, align 8, !tbaa !14
  %add.ptr64 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end78

cond.false65:                                     ; preds = %cond.end55
  %base66 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %29 = load ptr, ptr %base66, align 8, !tbaa !8
  %buffer67 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer67, align 8, !tbaa !14
  %offn68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %31 = load i64, ptr %offn68, align 8, !tbaa !15
  %base69 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %32 = load ptr, ptr %base69, align 8, !tbaa !8
  %cs70 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs70, align 8, !tbaa !16
  %mul71 = mul i64 %31, %33
  %add.ptr72 = getelementptr inbounds float, ptr %30, i64 %mul71
  %offm73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %34 = load i64, ptr %offm73, align 8, !tbaa !17
  %base74 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %35 = load ptr, ptr %base74, align 8, !tbaa !8
  %rs75 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs75, align 8, !tbaa !18
  %mul76 = mul i64 %34, %36
  %add.ptr77 = getelementptr inbounds float, ptr %add.ptr72, i64 %mul76
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false65, %cond.true61
  %cond79 = phi ptr [ %add.ptr64, %cond.true61 ], [ %add.ptr77, %cond.false65 ]
  store ptr %cond79, ptr %buff_Z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_t) #5
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %37 = load ptr, ptr %base80, align 8, !tbaa !8
  %datatype81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %datatype81, align 8, !tbaa !12
  %cmp82 = icmp eq i32 %38, 105
  br i1 %cmp82, label %cond.true84, label %cond.false88

cond.true84:                                      ; preds = %cond.end78
  %base85 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %39 = load ptr, ptr %base85, align 8, !tbaa !8
  %buffer86 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %buffer86, align 8, !tbaa !14
  %add.ptr87 = getelementptr inbounds i8, ptr %40, i64 8
  br label %cond.end101

cond.false88:                                     ; preds = %cond.end78
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %41 = load ptr, ptr %base89, align 8, !tbaa !8
  %buffer90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %buffer90, align 8, !tbaa !14
  %offn91 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 1
  %43 = load i64, ptr %offn91, align 8, !tbaa !15
  %base92 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %44 = load ptr, ptr %base92, align 8, !tbaa !8
  %cs93 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 5
  %45 = load i64, ptr %cs93, align 8, !tbaa !16
  %mul94 = mul i64 %43, %45
  %add.ptr95 = getelementptr inbounds float, ptr %42, i64 %mul94
  %offm96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 0
  %46 = load i64, ptr %offm96, align 8, !tbaa !17
  %base97 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %47 = load ptr, ptr %base97, align 8, !tbaa !8
  %rs98 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %rs98, align 8, !tbaa !18
  %mul99 = mul i64 %46, %48
  %add.ptr100 = getelementptr inbounds float, ptr %add.ptr95, i64 %mul99
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false88, %cond.true84
  %cond102 = phi ptr [ %add.ptr87, %cond.true84 ], [ %add.ptr100, %cond.false88 ]
  store ptr %cond102, ptr %buff_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %base103 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %49 = load ptr, ptr %base103, align 8, !tbaa !8
  %datatype104 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %datatype104, align 8, !tbaa !12
  %cmp105 = icmp eq i32 %50, 105
  br i1 %cmp105, label %cond.true107, label %cond.false111

cond.true107:                                     ; preds = %cond.end101
  %base108 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %51 = load ptr, ptr %base108, align 8, !tbaa !8
  %buffer109 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer109, align 8, !tbaa !14
  %add.ptr110 = getelementptr inbounds i8, ptr %52, i64 8
  br label %cond.end124

cond.false111:                                    ; preds = %cond.end101
  %base112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %53 = load ptr, ptr %base112, align 8, !tbaa !8
  %buffer113 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %buffer113, align 8, !tbaa !14
  %offn114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 1
  %55 = load i64, ptr %offn114, align 8, !tbaa !15
  %base115 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %56 = load ptr, ptr %base115, align 8, !tbaa !8
  %cs116 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %cs116, align 8, !tbaa !16
  %mul117 = mul i64 %55, %57
  %add.ptr118 = getelementptr inbounds float, ptr %54, i64 %mul117
  %offm119 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 0
  %58 = load i64, ptr %offm119, align 8, !tbaa !17
  %base120 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %59 = load ptr, ptr %base120, align 8, !tbaa !8
  %rs121 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %rs121, align 8, !tbaa !18
  %mul122 = mul i64 %58, %60
  %add.ptr123 = getelementptr inbounds float, ptr %add.ptr118, i64 %mul122
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false111, %cond.true107
  %cond125 = phi ptr [ %add.ptr110, %cond.true107 ], [ %add.ptr123, %cond.false111 ]
  store ptr %cond125, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y) #5
  %base126 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %61 = load ptr, ptr %base126, align 8, !tbaa !8
  %datatype127 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %datatype127, align 8, !tbaa !12
  %cmp128 = icmp eq i32 %62, 105
  br i1 %cmp128, label %cond.true130, label %cond.false134

cond.true130:                                     ; preds = %cond.end124
  %base131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %63 = load ptr, ptr %base131, align 8, !tbaa !8
  %buffer132 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %buffer132, align 8, !tbaa !14
  %add.ptr133 = getelementptr inbounds i8, ptr %64, i64 8
  br label %cond.end147

cond.false134:                                    ; preds = %cond.end124
  %base135 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %65 = load ptr, ptr %base135, align 8, !tbaa !8
  %buffer136 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 12
  %66 = load ptr, ptr %buffer136, align 8, !tbaa !14
  %offn137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 1
  %67 = load i64, ptr %offn137, align 8, !tbaa !15
  %base138 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %68 = load ptr, ptr %base138, align 8, !tbaa !8
  %cs139 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %68, i32 0, i32 5
  %69 = load i64, ptr %cs139, align 8, !tbaa !16
  %mul140 = mul i64 %67, %69
  %add.ptr141 = getelementptr inbounds float, ptr %66, i64 %mul140
  %offm142 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 0
  %70 = load i64, ptr %offm142, align 8, !tbaa !17
  %base143 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %71 = load ptr, ptr %base143, align 8, !tbaa !8
  %rs144 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 4
  %72 = load i64, ptr %rs144, align 8, !tbaa !18
  %mul145 = mul i64 %70, %72
  %add.ptr146 = getelementptr inbounds float, ptr %add.ptr141, i64 %mul145
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false134, %cond.true130
  %cond148 = phi ptr [ %add.ptr133, %cond.true130 ], [ %add.ptr146, %cond.false134 ]
  store ptr %cond148, ptr %buff_y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %base149 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %73 = load ptr, ptr %base149, align 8, !tbaa !8
  %datatype150 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %datatype150, align 8, !tbaa !12
  %cmp151 = icmp eq i32 %74, 105
  br i1 %cmp151, label %cond.true153, label %cond.false157

cond.true153:                                     ; preds = %cond.end147
  %base154 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %75 = load ptr, ptr %base154, align 8, !tbaa !8
  %buffer155 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %buffer155, align 8, !tbaa !14
  %add.ptr156 = getelementptr inbounds i8, ptr %76, i64 8
  br label %cond.end170

cond.false157:                                    ; preds = %cond.end147
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %77 = load ptr, ptr %base158, align 8, !tbaa !8
  %buffer159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %buffer159, align 8, !tbaa !14
  %offn160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 1
  %79 = load i64, ptr %offn160, align 8, !tbaa !15
  %base161 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %80 = load ptr, ptr %base161, align 8, !tbaa !8
  %cs162 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %80, i32 0, i32 5
  %81 = load i64, ptr %cs162, align 8, !tbaa !16
  %mul163 = mul i64 %79, %81
  %add.ptr164 = getelementptr inbounds float, ptr %78, i64 %mul163
  %offm165 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 0
  %82 = load i64, ptr %offm165, align 8, !tbaa !17
  %base166 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %83 = load ptr, ptr %base166, align 8, !tbaa !8
  %rs167 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %83, i32 0, i32 4
  %84 = load i64, ptr %rs167, align 8, !tbaa !18
  %mul168 = mul i64 %82, %84
  %add.ptr169 = getelementptr inbounds float, ptr %add.ptr164, i64 %mul168
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false157, %cond.true153
  %cond171 = phi ptr [ %add.ptr156, %cond.true153 ], [ %add.ptr169, %cond.false157 ]
  store ptr %cond171, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_delta) #5
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %85 = load ptr, ptr %base172, align 8, !tbaa !8
  %datatype173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %datatype173, align 8, !tbaa !12
  %cmp174 = icmp eq i32 %86, 105
  br i1 %cmp174, label %cond.true176, label %cond.false180

cond.true176:                                     ; preds = %cond.end170
  %base177 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %87 = load ptr, ptr %base177, align 8, !tbaa !8
  %buffer178 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %87, i32 0, i32 12
  %88 = load ptr, ptr %buffer178, align 8, !tbaa !14
  %add.ptr179 = getelementptr inbounds i8, ptr %88, i64 8
  br label %cond.end193

cond.false180:                                    ; preds = %cond.end170
  %base181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %89 = load ptr, ptr %base181, align 8, !tbaa !8
  %buffer182 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %89, i32 0, i32 12
  %90 = load ptr, ptr %buffer182, align 8, !tbaa !14
  %offn183 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 1
  %91 = load i64, ptr %offn183, align 8, !tbaa !15
  %base184 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %92 = load ptr, ptr %base184, align 8, !tbaa !8
  %cs185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %92, i32 0, i32 5
  %93 = load i64, ptr %cs185, align 8, !tbaa !16
  %mul186 = mul i64 %91, %93
  %add.ptr187 = getelementptr inbounds float, ptr %90, i64 %mul186
  %offm188 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 0
  %94 = load i64, ptr %offm188, align 8, !tbaa !17
  %base189 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %95 = load ptr, ptr %base189, align 8, !tbaa !8
  %rs190 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 4
  %96 = load i64, ptr %rs190, align 8, !tbaa !18
  %mul191 = mul i64 %94, %96
  %add.ptr192 = getelementptr inbounds float, ptr %add.ptr187, i64 %mul191
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false180, %cond.true176
  %cond194 = phi ptr [ %add.ptr179, %cond.true176 ], [ %add.ptr192, %cond.false180 ]
  store ptr %cond194, ptr %buff_delta, align 8, !tbaa !19
  %97 = load i32, ptr %m_U, align 4, !tbaa !4
  %98 = load i32, ptr %n_U, align 4, !tbaa !4
  %99 = load ptr, ptr %buff_delta, align 8, !tbaa !19
  %100 = load ptr, ptr %buff_U, align 8, !tbaa !19
  %101 = load i32, ptr %rs_U, align 4, !tbaa !4
  %102 = load i32, ptr %cs_U, align 4, !tbaa !4
  %103 = load ptr, ptr %buff_Y, align 8, !tbaa !19
  %104 = load i32, ptr %rs_Y, align 4, !tbaa !4
  %105 = load i32, ptr %cs_Y, align 4, !tbaa !4
  %106 = load ptr, ptr %buff_Z, align 8, !tbaa !19
  %107 = load i32, ptr %rs_Z, align 4, !tbaa !4
  %108 = load i32, ptr %cs_Z, align 4, !tbaa !4
  %109 = load ptr, ptr %buff_t, align 8, !tbaa !19
  %110 = load i32, ptr %inc_t, align 4, !tbaa !4
  %111 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %112 = load i32, ptr %inc_u, align 4, !tbaa !4
  %113 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %114 = load i32, ptr %inc_y, align 4, !tbaa !4
  %115 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %116 = load i32, ptr %inc_z, align 4, !tbaa !4
  %call195 = call i32 @FLA_Fused_Uhu_Yhu_Zhu_ops_var1(i32 noundef %97, i32 noundef %98, ptr noundef %99, ptr noundef %100, i32 noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef %104, i32 noundef %105, ptr noundef %106, i32 noundef %107, i32 noundef %108, ptr noundef %109, i32 noundef %110, ptr noundef %111, i32 noundef %112, ptr noundef %113, i32 noundef %114, ptr noundef %115, i32 noundef %116)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_delta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_U) #5
  br label %sw.epilog

sw.bb196:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_U197) #5
  %base198 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %117 = load ptr, ptr %base198, align 8, !tbaa !8
  %datatype199 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 0
  %118 = load i32, ptr %datatype199, align 8, !tbaa !12
  %cmp200 = icmp eq i32 %118, 105
  br i1 %cmp200, label %cond.true202, label %cond.false206

cond.true202:                                     ; preds = %sw.bb196
  %base203 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %119 = load ptr, ptr %base203, align 8, !tbaa !8
  %buffer204 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 12
  %120 = load ptr, ptr %buffer204, align 8, !tbaa !14
  %add.ptr205 = getelementptr inbounds i8, ptr %120, i64 16
  br label %cond.end219

cond.false206:                                    ; preds = %sw.bb196
  %base207 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %121 = load ptr, ptr %base207, align 8, !tbaa !8
  %buffer208 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 12
  %122 = load ptr, ptr %buffer208, align 8, !tbaa !14
  %offn209 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 1
  %123 = load i64, ptr %offn209, align 8, !tbaa !15
  %base210 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %124 = load ptr, ptr %base210, align 8, !tbaa !8
  %cs211 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %124, i32 0, i32 5
  %125 = load i64, ptr %cs211, align 8, !tbaa !16
  %mul212 = mul i64 %123, %125
  %add.ptr213 = getelementptr inbounds double, ptr %122, i64 %mul212
  %offm214 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 0
  %126 = load i64, ptr %offm214, align 8, !tbaa !17
  %base215 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %127 = load ptr, ptr %base215, align 8, !tbaa !8
  %rs216 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %127, i32 0, i32 4
  %128 = load i64, ptr %rs216, align 8, !tbaa !18
  %mul217 = mul i64 %126, %128
  %add.ptr218 = getelementptr inbounds double, ptr %add.ptr213, i64 %mul217
  br label %cond.end219

cond.end219:                                      ; preds = %cond.false206, %cond.true202
  %cond220 = phi ptr [ %add.ptr205, %cond.true202 ], [ %add.ptr218, %cond.false206 ]
  store ptr %cond220, ptr %buff_U197, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Y221) #5
  %base222 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %129 = load ptr, ptr %base222, align 8, !tbaa !8
  %datatype223 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %129, i32 0, i32 0
  %130 = load i32, ptr %datatype223, align 8, !tbaa !12
  %cmp224 = icmp eq i32 %130, 105
  br i1 %cmp224, label %cond.true226, label %cond.false230

cond.true226:                                     ; preds = %cond.end219
  %base227 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %131 = load ptr, ptr %base227, align 8, !tbaa !8
  %buffer228 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %131, i32 0, i32 12
  %132 = load ptr, ptr %buffer228, align 8, !tbaa !14
  %add.ptr229 = getelementptr inbounds i8, ptr %132, i64 16
  br label %cond.end243

cond.false230:                                    ; preds = %cond.end219
  %base231 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %133 = load ptr, ptr %base231, align 8, !tbaa !8
  %buffer232 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %133, i32 0, i32 12
  %134 = load ptr, ptr %buffer232, align 8, !tbaa !14
  %offn233 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %135 = load i64, ptr %offn233, align 8, !tbaa !15
  %base234 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %136 = load ptr, ptr %base234, align 8, !tbaa !8
  %cs235 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %136, i32 0, i32 5
  %137 = load i64, ptr %cs235, align 8, !tbaa !16
  %mul236 = mul i64 %135, %137
  %add.ptr237 = getelementptr inbounds double, ptr %134, i64 %mul236
  %offm238 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %138 = load i64, ptr %offm238, align 8, !tbaa !17
  %base239 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %139 = load ptr, ptr %base239, align 8, !tbaa !8
  %rs240 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %139, i32 0, i32 4
  %140 = load i64, ptr %rs240, align 8, !tbaa !18
  %mul241 = mul i64 %138, %140
  %add.ptr242 = getelementptr inbounds double, ptr %add.ptr237, i64 %mul241
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false230, %cond.true226
  %cond244 = phi ptr [ %add.ptr229, %cond.true226 ], [ %add.ptr242, %cond.false230 ]
  store ptr %cond244, ptr %buff_Y221, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Z245) #5
  %base246 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %141 = load ptr, ptr %base246, align 8, !tbaa !8
  %datatype247 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %141, i32 0, i32 0
  %142 = load i32, ptr %datatype247, align 8, !tbaa !12
  %cmp248 = icmp eq i32 %142, 105
  br i1 %cmp248, label %cond.true250, label %cond.false254

cond.true250:                                     ; preds = %cond.end243
  %base251 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %143 = load ptr, ptr %base251, align 8, !tbaa !8
  %buffer252 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %143, i32 0, i32 12
  %144 = load ptr, ptr %buffer252, align 8, !tbaa !14
  %add.ptr253 = getelementptr inbounds i8, ptr %144, i64 16
  br label %cond.end267

cond.false254:                                    ; preds = %cond.end243
  %base255 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %145 = load ptr, ptr %base255, align 8, !tbaa !8
  %buffer256 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %145, i32 0, i32 12
  %146 = load ptr, ptr %buffer256, align 8, !tbaa !14
  %offn257 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %147 = load i64, ptr %offn257, align 8, !tbaa !15
  %base258 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %148 = load ptr, ptr %base258, align 8, !tbaa !8
  %cs259 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %148, i32 0, i32 5
  %149 = load i64, ptr %cs259, align 8, !tbaa !16
  %mul260 = mul i64 %147, %149
  %add.ptr261 = getelementptr inbounds double, ptr %146, i64 %mul260
  %offm262 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %150 = load i64, ptr %offm262, align 8, !tbaa !17
  %base263 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %151 = load ptr, ptr %base263, align 8, !tbaa !8
  %rs264 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %151, i32 0, i32 4
  %152 = load i64, ptr %rs264, align 8, !tbaa !18
  %mul265 = mul i64 %150, %152
  %add.ptr266 = getelementptr inbounds double, ptr %add.ptr261, i64 %mul265
  br label %cond.end267

cond.end267:                                      ; preds = %cond.false254, %cond.true250
  %cond268 = phi ptr [ %add.ptr253, %cond.true250 ], [ %add.ptr266, %cond.false254 ]
  store ptr %cond268, ptr %buff_Z245, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_t269) #5
  %base270 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %153 = load ptr, ptr %base270, align 8, !tbaa !8
  %datatype271 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %153, i32 0, i32 0
  %154 = load i32, ptr %datatype271, align 8, !tbaa !12
  %cmp272 = icmp eq i32 %154, 105
  br i1 %cmp272, label %cond.true274, label %cond.false278

cond.true274:                                     ; preds = %cond.end267
  %base275 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %155 = load ptr, ptr %base275, align 8, !tbaa !8
  %buffer276 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 12
  %156 = load ptr, ptr %buffer276, align 8, !tbaa !14
  %add.ptr277 = getelementptr inbounds i8, ptr %156, i64 16
  br label %cond.end291

cond.false278:                                    ; preds = %cond.end267
  %base279 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %157 = load ptr, ptr %base279, align 8, !tbaa !8
  %buffer280 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %157, i32 0, i32 12
  %158 = load ptr, ptr %buffer280, align 8, !tbaa !14
  %offn281 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 1
  %159 = load i64, ptr %offn281, align 8, !tbaa !15
  %base282 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %160 = load ptr, ptr %base282, align 8, !tbaa !8
  %cs283 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %160, i32 0, i32 5
  %161 = load i64, ptr %cs283, align 8, !tbaa !16
  %mul284 = mul i64 %159, %161
  %add.ptr285 = getelementptr inbounds double, ptr %158, i64 %mul284
  %offm286 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 0
  %162 = load i64, ptr %offm286, align 8, !tbaa !17
  %base287 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %163 = load ptr, ptr %base287, align 8, !tbaa !8
  %rs288 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %163, i32 0, i32 4
  %164 = load i64, ptr %rs288, align 8, !tbaa !18
  %mul289 = mul i64 %162, %164
  %add.ptr290 = getelementptr inbounds double, ptr %add.ptr285, i64 %mul289
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false278, %cond.true274
  %cond292 = phi ptr [ %add.ptr277, %cond.true274 ], [ %add.ptr290, %cond.false278 ]
  store ptr %cond292, ptr %buff_t269, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u293) #5
  %base294 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %165 = load ptr, ptr %base294, align 8, !tbaa !8
  %datatype295 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %165, i32 0, i32 0
  %166 = load i32, ptr %datatype295, align 8, !tbaa !12
  %cmp296 = icmp eq i32 %166, 105
  br i1 %cmp296, label %cond.true298, label %cond.false302

cond.true298:                                     ; preds = %cond.end291
  %base299 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %167 = load ptr, ptr %base299, align 8, !tbaa !8
  %buffer300 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 12
  %168 = load ptr, ptr %buffer300, align 8, !tbaa !14
  %add.ptr301 = getelementptr inbounds i8, ptr %168, i64 16
  br label %cond.end315

cond.false302:                                    ; preds = %cond.end291
  %base303 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %169 = load ptr, ptr %base303, align 8, !tbaa !8
  %buffer304 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %169, i32 0, i32 12
  %170 = load ptr, ptr %buffer304, align 8, !tbaa !14
  %offn305 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 1
  %171 = load i64, ptr %offn305, align 8, !tbaa !15
  %base306 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %172 = load ptr, ptr %base306, align 8, !tbaa !8
  %cs307 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %172, i32 0, i32 5
  %173 = load i64, ptr %cs307, align 8, !tbaa !16
  %mul308 = mul i64 %171, %173
  %add.ptr309 = getelementptr inbounds double, ptr %170, i64 %mul308
  %offm310 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 0
  %174 = load i64, ptr %offm310, align 8, !tbaa !17
  %base311 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %175 = load ptr, ptr %base311, align 8, !tbaa !8
  %rs312 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %175, i32 0, i32 4
  %176 = load i64, ptr %rs312, align 8, !tbaa !18
  %mul313 = mul i64 %174, %176
  %add.ptr314 = getelementptr inbounds double, ptr %add.ptr309, i64 %mul313
  br label %cond.end315

cond.end315:                                      ; preds = %cond.false302, %cond.true298
  %cond316 = phi ptr [ %add.ptr301, %cond.true298 ], [ %add.ptr314, %cond.false302 ]
  store ptr %cond316, ptr %buff_u293, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y317) #5
  %base318 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %177 = load ptr, ptr %base318, align 8, !tbaa !8
  %datatype319 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %177, i32 0, i32 0
  %178 = load i32, ptr %datatype319, align 8, !tbaa !12
  %cmp320 = icmp eq i32 %178, 105
  br i1 %cmp320, label %cond.true322, label %cond.false326

cond.true322:                                     ; preds = %cond.end315
  %base323 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %179 = load ptr, ptr %base323, align 8, !tbaa !8
  %buffer324 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %179, i32 0, i32 12
  %180 = load ptr, ptr %buffer324, align 8, !tbaa !14
  %add.ptr325 = getelementptr inbounds i8, ptr %180, i64 16
  br label %cond.end339

cond.false326:                                    ; preds = %cond.end315
  %base327 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %181 = load ptr, ptr %base327, align 8, !tbaa !8
  %buffer328 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %181, i32 0, i32 12
  %182 = load ptr, ptr %buffer328, align 8, !tbaa !14
  %offn329 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 1
  %183 = load i64, ptr %offn329, align 8, !tbaa !15
  %base330 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %184 = load ptr, ptr %base330, align 8, !tbaa !8
  %cs331 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %184, i32 0, i32 5
  %185 = load i64, ptr %cs331, align 8, !tbaa !16
  %mul332 = mul i64 %183, %185
  %add.ptr333 = getelementptr inbounds double, ptr %182, i64 %mul332
  %offm334 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 0
  %186 = load i64, ptr %offm334, align 8, !tbaa !17
  %base335 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %187 = load ptr, ptr %base335, align 8, !tbaa !8
  %rs336 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %187, i32 0, i32 4
  %188 = load i64, ptr %rs336, align 8, !tbaa !18
  %mul337 = mul i64 %186, %188
  %add.ptr338 = getelementptr inbounds double, ptr %add.ptr333, i64 %mul337
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false326, %cond.true322
  %cond340 = phi ptr [ %add.ptr325, %cond.true322 ], [ %add.ptr338, %cond.false326 ]
  store ptr %cond340, ptr %buff_y317, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z341) #5
  %base342 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %189 = load ptr, ptr %base342, align 8, !tbaa !8
  %datatype343 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %189, i32 0, i32 0
  %190 = load i32, ptr %datatype343, align 8, !tbaa !12
  %cmp344 = icmp eq i32 %190, 105
  br i1 %cmp344, label %cond.true346, label %cond.false350

cond.true346:                                     ; preds = %cond.end339
  %base347 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %191 = load ptr, ptr %base347, align 8, !tbaa !8
  %buffer348 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %191, i32 0, i32 12
  %192 = load ptr, ptr %buffer348, align 8, !tbaa !14
  %add.ptr349 = getelementptr inbounds i8, ptr %192, i64 16
  br label %cond.end363

cond.false350:                                    ; preds = %cond.end339
  %base351 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %193 = load ptr, ptr %base351, align 8, !tbaa !8
  %buffer352 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %193, i32 0, i32 12
  %194 = load ptr, ptr %buffer352, align 8, !tbaa !14
  %offn353 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 1
  %195 = load i64, ptr %offn353, align 8, !tbaa !15
  %base354 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %196 = load ptr, ptr %base354, align 8, !tbaa !8
  %cs355 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %196, i32 0, i32 5
  %197 = load i64, ptr %cs355, align 8, !tbaa !16
  %mul356 = mul i64 %195, %197
  %add.ptr357 = getelementptr inbounds double, ptr %194, i64 %mul356
  %offm358 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 0
  %198 = load i64, ptr %offm358, align 8, !tbaa !17
  %base359 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %199 = load ptr, ptr %base359, align 8, !tbaa !8
  %rs360 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %199, i32 0, i32 4
  %200 = load i64, ptr %rs360, align 8, !tbaa !18
  %mul361 = mul i64 %198, %200
  %add.ptr362 = getelementptr inbounds double, ptr %add.ptr357, i64 %mul361
  br label %cond.end363

cond.end363:                                      ; preds = %cond.false350, %cond.true346
  %cond364 = phi ptr [ %add.ptr349, %cond.true346 ], [ %add.ptr362, %cond.false350 ]
  store ptr %cond364, ptr %buff_z341, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_delta365) #5
  %base366 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %201 = load ptr, ptr %base366, align 8, !tbaa !8
  %datatype367 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %201, i32 0, i32 0
  %202 = load i32, ptr %datatype367, align 8, !tbaa !12
  %cmp368 = icmp eq i32 %202, 105
  br i1 %cmp368, label %cond.true370, label %cond.false374

cond.true370:                                     ; preds = %cond.end363
  %base371 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %203 = load ptr, ptr %base371, align 8, !tbaa !8
  %buffer372 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %203, i32 0, i32 12
  %204 = load ptr, ptr %buffer372, align 8, !tbaa !14
  %add.ptr373 = getelementptr inbounds i8, ptr %204, i64 16
  br label %cond.end387

cond.false374:                                    ; preds = %cond.end363
  %base375 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %205 = load ptr, ptr %base375, align 8, !tbaa !8
  %buffer376 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %205, i32 0, i32 12
  %206 = load ptr, ptr %buffer376, align 8, !tbaa !14
  %offn377 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 1
  %207 = load i64, ptr %offn377, align 8, !tbaa !15
  %base378 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %208 = load ptr, ptr %base378, align 8, !tbaa !8
  %cs379 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %208, i32 0, i32 5
  %209 = load i64, ptr %cs379, align 8, !tbaa !16
  %mul380 = mul i64 %207, %209
  %add.ptr381 = getelementptr inbounds double, ptr %206, i64 %mul380
  %offm382 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 0
  %210 = load i64, ptr %offm382, align 8, !tbaa !17
  %base383 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %211 = load ptr, ptr %base383, align 8, !tbaa !8
  %rs384 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %211, i32 0, i32 4
  %212 = load i64, ptr %rs384, align 8, !tbaa !18
  %mul385 = mul i64 %210, %212
  %add.ptr386 = getelementptr inbounds double, ptr %add.ptr381, i64 %mul385
  br label %cond.end387

cond.end387:                                      ; preds = %cond.false374, %cond.true370
  %cond388 = phi ptr [ %add.ptr373, %cond.true370 ], [ %add.ptr386, %cond.false374 ]
  store ptr %cond388, ptr %buff_delta365, align 8, !tbaa !19
  %213 = load i32, ptr %m_U, align 4, !tbaa !4
  %214 = load i32, ptr %n_U, align 4, !tbaa !4
  %215 = load ptr, ptr %buff_delta365, align 8, !tbaa !19
  %216 = load ptr, ptr %buff_U197, align 8, !tbaa !19
  %217 = load i32, ptr %rs_U, align 4, !tbaa !4
  %218 = load i32, ptr %cs_U, align 4, !tbaa !4
  %219 = load ptr, ptr %buff_Y221, align 8, !tbaa !19
  %220 = load i32, ptr %rs_Y, align 4, !tbaa !4
  %221 = load i32, ptr %cs_Y, align 4, !tbaa !4
  %222 = load ptr, ptr %buff_Z245, align 8, !tbaa !19
  %223 = load i32, ptr %rs_Z, align 4, !tbaa !4
  %224 = load i32, ptr %cs_Z, align 4, !tbaa !4
  %225 = load ptr, ptr %buff_t269, align 8, !tbaa !19
  %226 = load i32, ptr %inc_t, align 4, !tbaa !4
  %227 = load ptr, ptr %buff_u293, align 8, !tbaa !19
  %228 = load i32, ptr %inc_u, align 4, !tbaa !4
  %229 = load ptr, ptr %buff_y317, align 8, !tbaa !19
  %230 = load i32, ptr %inc_y, align 4, !tbaa !4
  %231 = load ptr, ptr %buff_z341, align 8, !tbaa !19
  %232 = load i32, ptr %inc_z, align 4, !tbaa !4
  %call389 = call i32 @FLA_Fused_Uhu_Yhu_Zhu_opd_var1(i32 noundef %213, i32 noundef %214, ptr noundef %215, ptr noundef %216, i32 noundef %217, i32 noundef %218, ptr noundef %219, i32 noundef %220, i32 noundef %221, ptr noundef %222, i32 noundef %223, i32 noundef %224, ptr noundef %225, i32 noundef %226, ptr noundef %227, i32 noundef %228, ptr noundef %229, i32 noundef %230, ptr noundef %231, i32 noundef %232)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_delta365) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z341) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y317) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u293) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_t269) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Z245) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Y221) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_U197) #5
  br label %sw.epilog

sw.bb390:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_U391) #5
  %base392 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %233 = load ptr, ptr %base392, align 8, !tbaa !8
  %datatype393 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %233, i32 0, i32 0
  %234 = load i32, ptr %datatype393, align 8, !tbaa !12
  %cmp394 = icmp eq i32 %234, 105
  br i1 %cmp394, label %cond.true396, label %cond.false400

cond.true396:                                     ; preds = %sw.bb390
  %base397 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %235 = load ptr, ptr %base397, align 8, !tbaa !8
  %buffer398 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %235, i32 0, i32 12
  %236 = load ptr, ptr %buffer398, align 8, !tbaa !14
  %add.ptr399 = getelementptr inbounds i8, ptr %236, i64 24
  br label %cond.end413

cond.false400:                                    ; preds = %sw.bb390
  %base401 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %237 = load ptr, ptr %base401, align 8, !tbaa !8
  %buffer402 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %237, i32 0, i32 12
  %238 = load ptr, ptr %buffer402, align 8, !tbaa !14
  %offn403 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 1
  %239 = load i64, ptr %offn403, align 8, !tbaa !15
  %base404 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %240 = load ptr, ptr %base404, align 8, !tbaa !8
  %cs405 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %240, i32 0, i32 5
  %241 = load i64, ptr %cs405, align 8, !tbaa !16
  %mul406 = mul i64 %239, %241
  %add.ptr407 = getelementptr inbounds %struct.scomplex, ptr %238, i64 %mul406
  %offm408 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 0
  %242 = load i64, ptr %offm408, align 8, !tbaa !17
  %base409 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %243 = load ptr, ptr %base409, align 8, !tbaa !8
  %rs410 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %243, i32 0, i32 4
  %244 = load i64, ptr %rs410, align 8, !tbaa !18
  %mul411 = mul i64 %242, %244
  %add.ptr412 = getelementptr inbounds %struct.scomplex, ptr %add.ptr407, i64 %mul411
  br label %cond.end413

cond.end413:                                      ; preds = %cond.false400, %cond.true396
  %cond414 = phi ptr [ %add.ptr399, %cond.true396 ], [ %add.ptr412, %cond.false400 ]
  store ptr %cond414, ptr %buff_U391, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Y415) #5
  %base416 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %245 = load ptr, ptr %base416, align 8, !tbaa !8
  %datatype417 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %245, i32 0, i32 0
  %246 = load i32, ptr %datatype417, align 8, !tbaa !12
  %cmp418 = icmp eq i32 %246, 105
  br i1 %cmp418, label %cond.true420, label %cond.false424

cond.true420:                                     ; preds = %cond.end413
  %base421 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %247 = load ptr, ptr %base421, align 8, !tbaa !8
  %buffer422 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %247, i32 0, i32 12
  %248 = load ptr, ptr %buffer422, align 8, !tbaa !14
  %add.ptr423 = getelementptr inbounds i8, ptr %248, i64 24
  br label %cond.end437

cond.false424:                                    ; preds = %cond.end413
  %base425 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %249 = load ptr, ptr %base425, align 8, !tbaa !8
  %buffer426 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %249, i32 0, i32 12
  %250 = load ptr, ptr %buffer426, align 8, !tbaa !14
  %offn427 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %251 = load i64, ptr %offn427, align 8, !tbaa !15
  %base428 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %252 = load ptr, ptr %base428, align 8, !tbaa !8
  %cs429 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %252, i32 0, i32 5
  %253 = load i64, ptr %cs429, align 8, !tbaa !16
  %mul430 = mul i64 %251, %253
  %add.ptr431 = getelementptr inbounds %struct.scomplex, ptr %250, i64 %mul430
  %offm432 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %254 = load i64, ptr %offm432, align 8, !tbaa !17
  %base433 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %255 = load ptr, ptr %base433, align 8, !tbaa !8
  %rs434 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %255, i32 0, i32 4
  %256 = load i64, ptr %rs434, align 8, !tbaa !18
  %mul435 = mul i64 %254, %256
  %add.ptr436 = getelementptr inbounds %struct.scomplex, ptr %add.ptr431, i64 %mul435
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false424, %cond.true420
  %cond438 = phi ptr [ %add.ptr423, %cond.true420 ], [ %add.ptr436, %cond.false424 ]
  store ptr %cond438, ptr %buff_Y415, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Z439) #5
  %base440 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %257 = load ptr, ptr %base440, align 8, !tbaa !8
  %datatype441 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %257, i32 0, i32 0
  %258 = load i32, ptr %datatype441, align 8, !tbaa !12
  %cmp442 = icmp eq i32 %258, 105
  br i1 %cmp442, label %cond.true444, label %cond.false448

cond.true444:                                     ; preds = %cond.end437
  %base445 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %259 = load ptr, ptr %base445, align 8, !tbaa !8
  %buffer446 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %259, i32 0, i32 12
  %260 = load ptr, ptr %buffer446, align 8, !tbaa !14
  %add.ptr447 = getelementptr inbounds i8, ptr %260, i64 24
  br label %cond.end461

cond.false448:                                    ; preds = %cond.end437
  %base449 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %261 = load ptr, ptr %base449, align 8, !tbaa !8
  %buffer450 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %261, i32 0, i32 12
  %262 = load ptr, ptr %buffer450, align 8, !tbaa !14
  %offn451 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %263 = load i64, ptr %offn451, align 8, !tbaa !15
  %base452 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %264 = load ptr, ptr %base452, align 8, !tbaa !8
  %cs453 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %264, i32 0, i32 5
  %265 = load i64, ptr %cs453, align 8, !tbaa !16
  %mul454 = mul i64 %263, %265
  %add.ptr455 = getelementptr inbounds %struct.scomplex, ptr %262, i64 %mul454
  %offm456 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %266 = load i64, ptr %offm456, align 8, !tbaa !17
  %base457 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %267 = load ptr, ptr %base457, align 8, !tbaa !8
  %rs458 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %267, i32 0, i32 4
  %268 = load i64, ptr %rs458, align 8, !tbaa !18
  %mul459 = mul i64 %266, %268
  %add.ptr460 = getelementptr inbounds %struct.scomplex, ptr %add.ptr455, i64 %mul459
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false448, %cond.true444
  %cond462 = phi ptr [ %add.ptr447, %cond.true444 ], [ %add.ptr460, %cond.false448 ]
  store ptr %cond462, ptr %buff_Z439, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_t463) #5
  %base464 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %269 = load ptr, ptr %base464, align 8, !tbaa !8
  %datatype465 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %269, i32 0, i32 0
  %270 = load i32, ptr %datatype465, align 8, !tbaa !12
  %cmp466 = icmp eq i32 %270, 105
  br i1 %cmp466, label %cond.true468, label %cond.false472

cond.true468:                                     ; preds = %cond.end461
  %base469 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %271 = load ptr, ptr %base469, align 8, !tbaa !8
  %buffer470 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %271, i32 0, i32 12
  %272 = load ptr, ptr %buffer470, align 8, !tbaa !14
  %add.ptr471 = getelementptr inbounds i8, ptr %272, i64 24
  br label %cond.end485

cond.false472:                                    ; preds = %cond.end461
  %base473 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %273 = load ptr, ptr %base473, align 8, !tbaa !8
  %buffer474 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %273, i32 0, i32 12
  %274 = load ptr, ptr %buffer474, align 8, !tbaa !14
  %offn475 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 1
  %275 = load i64, ptr %offn475, align 8, !tbaa !15
  %base476 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %276 = load ptr, ptr %base476, align 8, !tbaa !8
  %cs477 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %276, i32 0, i32 5
  %277 = load i64, ptr %cs477, align 8, !tbaa !16
  %mul478 = mul i64 %275, %277
  %add.ptr479 = getelementptr inbounds %struct.scomplex, ptr %274, i64 %mul478
  %offm480 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 0
  %278 = load i64, ptr %offm480, align 8, !tbaa !17
  %base481 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %279 = load ptr, ptr %base481, align 8, !tbaa !8
  %rs482 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %279, i32 0, i32 4
  %280 = load i64, ptr %rs482, align 8, !tbaa !18
  %mul483 = mul i64 %278, %280
  %add.ptr484 = getelementptr inbounds %struct.scomplex, ptr %add.ptr479, i64 %mul483
  br label %cond.end485

cond.end485:                                      ; preds = %cond.false472, %cond.true468
  %cond486 = phi ptr [ %add.ptr471, %cond.true468 ], [ %add.ptr484, %cond.false472 ]
  store ptr %cond486, ptr %buff_t463, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u487) #5
  %base488 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %281 = load ptr, ptr %base488, align 8, !tbaa !8
  %datatype489 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %281, i32 0, i32 0
  %282 = load i32, ptr %datatype489, align 8, !tbaa !12
  %cmp490 = icmp eq i32 %282, 105
  br i1 %cmp490, label %cond.true492, label %cond.false496

cond.true492:                                     ; preds = %cond.end485
  %base493 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %283 = load ptr, ptr %base493, align 8, !tbaa !8
  %buffer494 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %283, i32 0, i32 12
  %284 = load ptr, ptr %buffer494, align 8, !tbaa !14
  %add.ptr495 = getelementptr inbounds i8, ptr %284, i64 24
  br label %cond.end509

cond.false496:                                    ; preds = %cond.end485
  %base497 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %285 = load ptr, ptr %base497, align 8, !tbaa !8
  %buffer498 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %285, i32 0, i32 12
  %286 = load ptr, ptr %buffer498, align 8, !tbaa !14
  %offn499 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 1
  %287 = load i64, ptr %offn499, align 8, !tbaa !15
  %base500 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %288 = load ptr, ptr %base500, align 8, !tbaa !8
  %cs501 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %288, i32 0, i32 5
  %289 = load i64, ptr %cs501, align 8, !tbaa !16
  %mul502 = mul i64 %287, %289
  %add.ptr503 = getelementptr inbounds %struct.scomplex, ptr %286, i64 %mul502
  %offm504 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 0
  %290 = load i64, ptr %offm504, align 8, !tbaa !17
  %base505 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %291 = load ptr, ptr %base505, align 8, !tbaa !8
  %rs506 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %291, i32 0, i32 4
  %292 = load i64, ptr %rs506, align 8, !tbaa !18
  %mul507 = mul i64 %290, %292
  %add.ptr508 = getelementptr inbounds %struct.scomplex, ptr %add.ptr503, i64 %mul507
  br label %cond.end509

cond.end509:                                      ; preds = %cond.false496, %cond.true492
  %cond510 = phi ptr [ %add.ptr495, %cond.true492 ], [ %add.ptr508, %cond.false496 ]
  store ptr %cond510, ptr %buff_u487, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y511) #5
  %base512 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %293 = load ptr, ptr %base512, align 8, !tbaa !8
  %datatype513 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %293, i32 0, i32 0
  %294 = load i32, ptr %datatype513, align 8, !tbaa !12
  %cmp514 = icmp eq i32 %294, 105
  br i1 %cmp514, label %cond.true516, label %cond.false520

cond.true516:                                     ; preds = %cond.end509
  %base517 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %295 = load ptr, ptr %base517, align 8, !tbaa !8
  %buffer518 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %295, i32 0, i32 12
  %296 = load ptr, ptr %buffer518, align 8, !tbaa !14
  %add.ptr519 = getelementptr inbounds i8, ptr %296, i64 24
  br label %cond.end533

cond.false520:                                    ; preds = %cond.end509
  %base521 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %297 = load ptr, ptr %base521, align 8, !tbaa !8
  %buffer522 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %297, i32 0, i32 12
  %298 = load ptr, ptr %buffer522, align 8, !tbaa !14
  %offn523 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 1
  %299 = load i64, ptr %offn523, align 8, !tbaa !15
  %base524 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %300 = load ptr, ptr %base524, align 8, !tbaa !8
  %cs525 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %300, i32 0, i32 5
  %301 = load i64, ptr %cs525, align 8, !tbaa !16
  %mul526 = mul i64 %299, %301
  %add.ptr527 = getelementptr inbounds %struct.scomplex, ptr %298, i64 %mul526
  %offm528 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 0
  %302 = load i64, ptr %offm528, align 8, !tbaa !17
  %base529 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %303 = load ptr, ptr %base529, align 8, !tbaa !8
  %rs530 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %303, i32 0, i32 4
  %304 = load i64, ptr %rs530, align 8, !tbaa !18
  %mul531 = mul i64 %302, %304
  %add.ptr532 = getelementptr inbounds %struct.scomplex, ptr %add.ptr527, i64 %mul531
  br label %cond.end533

cond.end533:                                      ; preds = %cond.false520, %cond.true516
  %cond534 = phi ptr [ %add.ptr519, %cond.true516 ], [ %add.ptr532, %cond.false520 ]
  store ptr %cond534, ptr %buff_y511, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z535) #5
  %base536 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %305 = load ptr, ptr %base536, align 8, !tbaa !8
  %datatype537 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %305, i32 0, i32 0
  %306 = load i32, ptr %datatype537, align 8, !tbaa !12
  %cmp538 = icmp eq i32 %306, 105
  br i1 %cmp538, label %cond.true540, label %cond.false544

cond.true540:                                     ; preds = %cond.end533
  %base541 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %307 = load ptr, ptr %base541, align 8, !tbaa !8
  %buffer542 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %307, i32 0, i32 12
  %308 = load ptr, ptr %buffer542, align 8, !tbaa !14
  %add.ptr543 = getelementptr inbounds i8, ptr %308, i64 24
  br label %cond.end557

cond.false544:                                    ; preds = %cond.end533
  %base545 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %309 = load ptr, ptr %base545, align 8, !tbaa !8
  %buffer546 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %309, i32 0, i32 12
  %310 = load ptr, ptr %buffer546, align 8, !tbaa !14
  %offn547 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 1
  %311 = load i64, ptr %offn547, align 8, !tbaa !15
  %base548 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %312 = load ptr, ptr %base548, align 8, !tbaa !8
  %cs549 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %312, i32 0, i32 5
  %313 = load i64, ptr %cs549, align 8, !tbaa !16
  %mul550 = mul i64 %311, %313
  %add.ptr551 = getelementptr inbounds %struct.scomplex, ptr %310, i64 %mul550
  %offm552 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 0
  %314 = load i64, ptr %offm552, align 8, !tbaa !17
  %base553 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %315 = load ptr, ptr %base553, align 8, !tbaa !8
  %rs554 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %315, i32 0, i32 4
  %316 = load i64, ptr %rs554, align 8, !tbaa !18
  %mul555 = mul i64 %314, %316
  %add.ptr556 = getelementptr inbounds %struct.scomplex, ptr %add.ptr551, i64 %mul555
  br label %cond.end557

cond.end557:                                      ; preds = %cond.false544, %cond.true540
  %cond558 = phi ptr [ %add.ptr543, %cond.true540 ], [ %add.ptr556, %cond.false544 ]
  store ptr %cond558, ptr %buff_z535, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_delta559) #5
  %base560 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %317 = load ptr, ptr %base560, align 8, !tbaa !8
  %datatype561 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %317, i32 0, i32 0
  %318 = load i32, ptr %datatype561, align 8, !tbaa !12
  %cmp562 = icmp eq i32 %318, 105
  br i1 %cmp562, label %cond.true564, label %cond.false568

cond.true564:                                     ; preds = %cond.end557
  %base565 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %319 = load ptr, ptr %base565, align 8, !tbaa !8
  %buffer566 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %319, i32 0, i32 12
  %320 = load ptr, ptr %buffer566, align 8, !tbaa !14
  %add.ptr567 = getelementptr inbounds i8, ptr %320, i64 24
  br label %cond.end581

cond.false568:                                    ; preds = %cond.end557
  %base569 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %321 = load ptr, ptr %base569, align 8, !tbaa !8
  %buffer570 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %321, i32 0, i32 12
  %322 = load ptr, ptr %buffer570, align 8, !tbaa !14
  %offn571 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 1
  %323 = load i64, ptr %offn571, align 8, !tbaa !15
  %base572 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %324 = load ptr, ptr %base572, align 8, !tbaa !8
  %cs573 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %324, i32 0, i32 5
  %325 = load i64, ptr %cs573, align 8, !tbaa !16
  %mul574 = mul i64 %323, %325
  %add.ptr575 = getelementptr inbounds %struct.scomplex, ptr %322, i64 %mul574
  %offm576 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 0
  %326 = load i64, ptr %offm576, align 8, !tbaa !17
  %base577 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %327 = load ptr, ptr %base577, align 8, !tbaa !8
  %rs578 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %327, i32 0, i32 4
  %328 = load i64, ptr %rs578, align 8, !tbaa !18
  %mul579 = mul i64 %326, %328
  %add.ptr580 = getelementptr inbounds %struct.scomplex, ptr %add.ptr575, i64 %mul579
  br label %cond.end581

cond.end581:                                      ; preds = %cond.false568, %cond.true564
  %cond582 = phi ptr [ %add.ptr567, %cond.true564 ], [ %add.ptr580, %cond.false568 ]
  store ptr %cond582, ptr %buff_delta559, align 8, !tbaa !19
  %329 = load i32, ptr %m_U, align 4, !tbaa !4
  %330 = load i32, ptr %n_U, align 4, !tbaa !4
  %331 = load ptr, ptr %buff_delta559, align 8, !tbaa !19
  %332 = load ptr, ptr %buff_U391, align 8, !tbaa !19
  %333 = load i32, ptr %rs_U, align 4, !tbaa !4
  %334 = load i32, ptr %cs_U, align 4, !tbaa !4
  %335 = load ptr, ptr %buff_Y415, align 8, !tbaa !19
  %336 = load i32, ptr %rs_Y, align 4, !tbaa !4
  %337 = load i32, ptr %cs_Y, align 4, !tbaa !4
  %338 = load ptr, ptr %buff_Z439, align 8, !tbaa !19
  %339 = load i32, ptr %rs_Z, align 4, !tbaa !4
  %340 = load i32, ptr %cs_Z, align 4, !tbaa !4
  %341 = load ptr, ptr %buff_t463, align 8, !tbaa !19
  %342 = load i32, ptr %inc_t, align 4, !tbaa !4
  %343 = load ptr, ptr %buff_u487, align 8, !tbaa !19
  %344 = load i32, ptr %inc_u, align 4, !tbaa !4
  %345 = load ptr, ptr %buff_y511, align 8, !tbaa !19
  %346 = load i32, ptr %inc_y, align 4, !tbaa !4
  %347 = load ptr, ptr %buff_z535, align 8, !tbaa !19
  %348 = load i32, ptr %inc_z, align 4, !tbaa !4
  %call583 = call i32 @FLA_Fused_Uhu_Yhu_Zhu_opc_var1(i32 noundef %329, i32 noundef %330, ptr noundef %331, ptr noundef %332, i32 noundef %333, i32 noundef %334, ptr noundef %335, i32 noundef %336, i32 noundef %337, ptr noundef %338, i32 noundef %339, i32 noundef %340, ptr noundef %341, i32 noundef %342, ptr noundef %343, i32 noundef %344, ptr noundef %345, i32 noundef %346, ptr noundef %347, i32 noundef %348)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_delta559) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z535) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y511) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u487) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_t463) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Z439) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Y415) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_U391) #5
  br label %sw.epilog

sw.bb584:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_U585) #5
  %base586 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %349 = load ptr, ptr %base586, align 8, !tbaa !8
  %datatype587 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %349, i32 0, i32 0
  %350 = load i32, ptr %datatype587, align 8, !tbaa !12
  %cmp588 = icmp eq i32 %350, 105
  br i1 %cmp588, label %cond.true590, label %cond.false594

cond.true590:                                     ; preds = %sw.bb584
  %base591 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %351 = load ptr, ptr %base591, align 8, !tbaa !8
  %buffer592 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %351, i32 0, i32 12
  %352 = load ptr, ptr %buffer592, align 8, !tbaa !14
  %add.ptr593 = getelementptr inbounds i8, ptr %352, i64 32
  br label %cond.end607

cond.false594:                                    ; preds = %sw.bb584
  %base595 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %353 = load ptr, ptr %base595, align 8, !tbaa !8
  %buffer596 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %353, i32 0, i32 12
  %354 = load ptr, ptr %buffer596, align 8, !tbaa !14
  %offn597 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 1
  %355 = load i64, ptr %offn597, align 8, !tbaa !15
  %base598 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %356 = load ptr, ptr %base598, align 8, !tbaa !8
  %cs599 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %356, i32 0, i32 5
  %357 = load i64, ptr %cs599, align 8, !tbaa !16
  %mul600 = mul i64 %355, %357
  %add.ptr601 = getelementptr inbounds %struct.dcomplex, ptr %354, i64 %mul600
  %offm602 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 0
  %358 = load i64, ptr %offm602, align 8, !tbaa !17
  %base603 = getelementptr inbounds %struct.FLA_Obj_view, ptr %U, i32 0, i32 6
  %359 = load ptr, ptr %base603, align 8, !tbaa !8
  %rs604 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %359, i32 0, i32 4
  %360 = load i64, ptr %rs604, align 8, !tbaa !18
  %mul605 = mul i64 %358, %360
  %add.ptr606 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr601, i64 %mul605
  br label %cond.end607

cond.end607:                                      ; preds = %cond.false594, %cond.true590
  %cond608 = phi ptr [ %add.ptr593, %cond.true590 ], [ %add.ptr606, %cond.false594 ]
  store ptr %cond608, ptr %buff_U585, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Y609) #5
  %base610 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %361 = load ptr, ptr %base610, align 8, !tbaa !8
  %datatype611 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %361, i32 0, i32 0
  %362 = load i32, ptr %datatype611, align 8, !tbaa !12
  %cmp612 = icmp eq i32 %362, 105
  br i1 %cmp612, label %cond.true614, label %cond.false618

cond.true614:                                     ; preds = %cond.end607
  %base615 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %363 = load ptr, ptr %base615, align 8, !tbaa !8
  %buffer616 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %363, i32 0, i32 12
  %364 = load ptr, ptr %buffer616, align 8, !tbaa !14
  %add.ptr617 = getelementptr inbounds i8, ptr %364, i64 32
  br label %cond.end631

cond.false618:                                    ; preds = %cond.end607
  %base619 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %365 = load ptr, ptr %base619, align 8, !tbaa !8
  %buffer620 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %365, i32 0, i32 12
  %366 = load ptr, ptr %buffer620, align 8, !tbaa !14
  %offn621 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %367 = load i64, ptr %offn621, align 8, !tbaa !15
  %base622 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %368 = load ptr, ptr %base622, align 8, !tbaa !8
  %cs623 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %368, i32 0, i32 5
  %369 = load i64, ptr %cs623, align 8, !tbaa !16
  %mul624 = mul i64 %367, %369
  %add.ptr625 = getelementptr inbounds %struct.dcomplex, ptr %366, i64 %mul624
  %offm626 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %370 = load i64, ptr %offm626, align 8, !tbaa !17
  %base627 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %371 = load ptr, ptr %base627, align 8, !tbaa !8
  %rs628 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %371, i32 0, i32 4
  %372 = load i64, ptr %rs628, align 8, !tbaa !18
  %mul629 = mul i64 %370, %372
  %add.ptr630 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr625, i64 %mul629
  br label %cond.end631

cond.end631:                                      ; preds = %cond.false618, %cond.true614
  %cond632 = phi ptr [ %add.ptr617, %cond.true614 ], [ %add.ptr630, %cond.false618 ]
  store ptr %cond632, ptr %buff_Y609, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_Z633) #5
  %base634 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %373 = load ptr, ptr %base634, align 8, !tbaa !8
  %datatype635 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %373, i32 0, i32 0
  %374 = load i32, ptr %datatype635, align 8, !tbaa !12
  %cmp636 = icmp eq i32 %374, 105
  br i1 %cmp636, label %cond.true638, label %cond.false642

cond.true638:                                     ; preds = %cond.end631
  %base639 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %375 = load ptr, ptr %base639, align 8, !tbaa !8
  %buffer640 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %375, i32 0, i32 12
  %376 = load ptr, ptr %buffer640, align 8, !tbaa !14
  %add.ptr641 = getelementptr inbounds i8, ptr %376, i64 32
  br label %cond.end655

cond.false642:                                    ; preds = %cond.end631
  %base643 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %377 = load ptr, ptr %base643, align 8, !tbaa !8
  %buffer644 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %377, i32 0, i32 12
  %378 = load ptr, ptr %buffer644, align 8, !tbaa !14
  %offn645 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %379 = load i64, ptr %offn645, align 8, !tbaa !15
  %base646 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %380 = load ptr, ptr %base646, align 8, !tbaa !8
  %cs647 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %380, i32 0, i32 5
  %381 = load i64, ptr %cs647, align 8, !tbaa !16
  %mul648 = mul i64 %379, %381
  %add.ptr649 = getelementptr inbounds %struct.dcomplex, ptr %378, i64 %mul648
  %offm650 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %382 = load i64, ptr %offm650, align 8, !tbaa !17
  %base651 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %383 = load ptr, ptr %base651, align 8, !tbaa !8
  %rs652 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %383, i32 0, i32 4
  %384 = load i64, ptr %rs652, align 8, !tbaa !18
  %mul653 = mul i64 %382, %384
  %add.ptr654 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr649, i64 %mul653
  br label %cond.end655

cond.end655:                                      ; preds = %cond.false642, %cond.true638
  %cond656 = phi ptr [ %add.ptr641, %cond.true638 ], [ %add.ptr654, %cond.false642 ]
  store ptr %cond656, ptr %buff_Z633, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_t657) #5
  %base658 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %385 = load ptr, ptr %base658, align 8, !tbaa !8
  %datatype659 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %385, i32 0, i32 0
  %386 = load i32, ptr %datatype659, align 8, !tbaa !12
  %cmp660 = icmp eq i32 %386, 105
  br i1 %cmp660, label %cond.true662, label %cond.false666

cond.true662:                                     ; preds = %cond.end655
  %base663 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %387 = load ptr, ptr %base663, align 8, !tbaa !8
  %buffer664 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %387, i32 0, i32 12
  %388 = load ptr, ptr %buffer664, align 8, !tbaa !14
  %add.ptr665 = getelementptr inbounds i8, ptr %388, i64 32
  br label %cond.end679

cond.false666:                                    ; preds = %cond.end655
  %base667 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %389 = load ptr, ptr %base667, align 8, !tbaa !8
  %buffer668 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %389, i32 0, i32 12
  %390 = load ptr, ptr %buffer668, align 8, !tbaa !14
  %offn669 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 1
  %391 = load i64, ptr %offn669, align 8, !tbaa !15
  %base670 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %392 = load ptr, ptr %base670, align 8, !tbaa !8
  %cs671 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %392, i32 0, i32 5
  %393 = load i64, ptr %cs671, align 8, !tbaa !16
  %mul672 = mul i64 %391, %393
  %add.ptr673 = getelementptr inbounds %struct.dcomplex, ptr %390, i64 %mul672
  %offm674 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 0
  %394 = load i64, ptr %offm674, align 8, !tbaa !17
  %base675 = getelementptr inbounds %struct.FLA_Obj_view, ptr %t, i32 0, i32 6
  %395 = load ptr, ptr %base675, align 8, !tbaa !8
  %rs676 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %395, i32 0, i32 4
  %396 = load i64, ptr %rs676, align 8, !tbaa !18
  %mul677 = mul i64 %394, %396
  %add.ptr678 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr673, i64 %mul677
  br label %cond.end679

cond.end679:                                      ; preds = %cond.false666, %cond.true662
  %cond680 = phi ptr [ %add.ptr665, %cond.true662 ], [ %add.ptr678, %cond.false666 ]
  store ptr %cond680, ptr %buff_t657, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u681) #5
  %base682 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %397 = load ptr, ptr %base682, align 8, !tbaa !8
  %datatype683 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %397, i32 0, i32 0
  %398 = load i32, ptr %datatype683, align 8, !tbaa !12
  %cmp684 = icmp eq i32 %398, 105
  br i1 %cmp684, label %cond.true686, label %cond.false690

cond.true686:                                     ; preds = %cond.end679
  %base687 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %399 = load ptr, ptr %base687, align 8, !tbaa !8
  %buffer688 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %399, i32 0, i32 12
  %400 = load ptr, ptr %buffer688, align 8, !tbaa !14
  %add.ptr689 = getelementptr inbounds i8, ptr %400, i64 32
  br label %cond.end703

cond.false690:                                    ; preds = %cond.end679
  %base691 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %401 = load ptr, ptr %base691, align 8, !tbaa !8
  %buffer692 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %401, i32 0, i32 12
  %402 = load ptr, ptr %buffer692, align 8, !tbaa !14
  %offn693 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 1
  %403 = load i64, ptr %offn693, align 8, !tbaa !15
  %base694 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %404 = load ptr, ptr %base694, align 8, !tbaa !8
  %cs695 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %404, i32 0, i32 5
  %405 = load i64, ptr %cs695, align 8, !tbaa !16
  %mul696 = mul i64 %403, %405
  %add.ptr697 = getelementptr inbounds %struct.dcomplex, ptr %402, i64 %mul696
  %offm698 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 0
  %406 = load i64, ptr %offm698, align 8, !tbaa !17
  %base699 = getelementptr inbounds %struct.FLA_Obj_view, ptr %u, i32 0, i32 6
  %407 = load ptr, ptr %base699, align 8, !tbaa !8
  %rs700 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %407, i32 0, i32 4
  %408 = load i64, ptr %rs700, align 8, !tbaa !18
  %mul701 = mul i64 %406, %408
  %add.ptr702 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr697, i64 %mul701
  br label %cond.end703

cond.end703:                                      ; preds = %cond.false690, %cond.true686
  %cond704 = phi ptr [ %add.ptr689, %cond.true686 ], [ %add.ptr702, %cond.false690 ]
  store ptr %cond704, ptr %buff_u681, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y705) #5
  %base706 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %409 = load ptr, ptr %base706, align 8, !tbaa !8
  %datatype707 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %409, i32 0, i32 0
  %410 = load i32, ptr %datatype707, align 8, !tbaa !12
  %cmp708 = icmp eq i32 %410, 105
  br i1 %cmp708, label %cond.true710, label %cond.false714

cond.true710:                                     ; preds = %cond.end703
  %base711 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %411 = load ptr, ptr %base711, align 8, !tbaa !8
  %buffer712 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %411, i32 0, i32 12
  %412 = load ptr, ptr %buffer712, align 8, !tbaa !14
  %add.ptr713 = getelementptr inbounds i8, ptr %412, i64 32
  br label %cond.end727

cond.false714:                                    ; preds = %cond.end703
  %base715 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %413 = load ptr, ptr %base715, align 8, !tbaa !8
  %buffer716 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %413, i32 0, i32 12
  %414 = load ptr, ptr %buffer716, align 8, !tbaa !14
  %offn717 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 1
  %415 = load i64, ptr %offn717, align 8, !tbaa !15
  %base718 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %416 = load ptr, ptr %base718, align 8, !tbaa !8
  %cs719 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %416, i32 0, i32 5
  %417 = load i64, ptr %cs719, align 8, !tbaa !16
  %mul720 = mul i64 %415, %417
  %add.ptr721 = getelementptr inbounds %struct.dcomplex, ptr %414, i64 %mul720
  %offm722 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 0
  %418 = load i64, ptr %offm722, align 8, !tbaa !17
  %base723 = getelementptr inbounds %struct.FLA_Obj_view, ptr %y, i32 0, i32 6
  %419 = load ptr, ptr %base723, align 8, !tbaa !8
  %rs724 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %419, i32 0, i32 4
  %420 = load i64, ptr %rs724, align 8, !tbaa !18
  %mul725 = mul i64 %418, %420
  %add.ptr726 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr721, i64 %mul725
  br label %cond.end727

cond.end727:                                      ; preds = %cond.false714, %cond.true710
  %cond728 = phi ptr [ %add.ptr713, %cond.true710 ], [ %add.ptr726, %cond.false714 ]
  store ptr %cond728, ptr %buff_y705, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z729) #5
  %base730 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %421 = load ptr, ptr %base730, align 8, !tbaa !8
  %datatype731 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %421, i32 0, i32 0
  %422 = load i32, ptr %datatype731, align 8, !tbaa !12
  %cmp732 = icmp eq i32 %422, 105
  br i1 %cmp732, label %cond.true734, label %cond.false738

cond.true734:                                     ; preds = %cond.end727
  %base735 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %423 = load ptr, ptr %base735, align 8, !tbaa !8
  %buffer736 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %423, i32 0, i32 12
  %424 = load ptr, ptr %buffer736, align 8, !tbaa !14
  %add.ptr737 = getelementptr inbounds i8, ptr %424, i64 32
  br label %cond.end751

cond.false738:                                    ; preds = %cond.end727
  %base739 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %425 = load ptr, ptr %base739, align 8, !tbaa !8
  %buffer740 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %425, i32 0, i32 12
  %426 = load ptr, ptr %buffer740, align 8, !tbaa !14
  %offn741 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 1
  %427 = load i64, ptr %offn741, align 8, !tbaa !15
  %base742 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %428 = load ptr, ptr %base742, align 8, !tbaa !8
  %cs743 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %428, i32 0, i32 5
  %429 = load i64, ptr %cs743, align 8, !tbaa !16
  %mul744 = mul i64 %427, %429
  %add.ptr745 = getelementptr inbounds %struct.dcomplex, ptr %426, i64 %mul744
  %offm746 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 0
  %430 = load i64, ptr %offm746, align 8, !tbaa !17
  %base747 = getelementptr inbounds %struct.FLA_Obj_view, ptr %z, i32 0, i32 6
  %431 = load ptr, ptr %base747, align 8, !tbaa !8
  %rs748 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %431, i32 0, i32 4
  %432 = load i64, ptr %rs748, align 8, !tbaa !18
  %mul749 = mul i64 %430, %432
  %add.ptr750 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr745, i64 %mul749
  br label %cond.end751

cond.end751:                                      ; preds = %cond.false738, %cond.true734
  %cond752 = phi ptr [ %add.ptr737, %cond.true734 ], [ %add.ptr750, %cond.false738 ]
  store ptr %cond752, ptr %buff_z729, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_delta753) #5
  %base754 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %433 = load ptr, ptr %base754, align 8, !tbaa !8
  %datatype755 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %433, i32 0, i32 0
  %434 = load i32, ptr %datatype755, align 8, !tbaa !12
  %cmp756 = icmp eq i32 %434, 105
  br i1 %cmp756, label %cond.true758, label %cond.false762

cond.true758:                                     ; preds = %cond.end751
  %base759 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %435 = load ptr, ptr %base759, align 8, !tbaa !8
  %buffer760 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %435, i32 0, i32 12
  %436 = load ptr, ptr %buffer760, align 8, !tbaa !14
  %add.ptr761 = getelementptr inbounds i8, ptr %436, i64 32
  br label %cond.end775

cond.false762:                                    ; preds = %cond.end751
  %base763 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %437 = load ptr, ptr %base763, align 8, !tbaa !8
  %buffer764 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %437, i32 0, i32 12
  %438 = load ptr, ptr %buffer764, align 8, !tbaa !14
  %offn765 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 1
  %439 = load i64, ptr %offn765, align 8, !tbaa !15
  %base766 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %440 = load ptr, ptr %base766, align 8, !tbaa !8
  %cs767 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %440, i32 0, i32 5
  %441 = load i64, ptr %cs767, align 8, !tbaa !16
  %mul768 = mul i64 %439, %441
  %add.ptr769 = getelementptr inbounds %struct.dcomplex, ptr %438, i64 %mul768
  %offm770 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 0
  %442 = load i64, ptr %offm770, align 8, !tbaa !17
  %base771 = getelementptr inbounds %struct.FLA_Obj_view, ptr %delta, i32 0, i32 6
  %443 = load ptr, ptr %base771, align 8, !tbaa !8
  %rs772 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %443, i32 0, i32 4
  %444 = load i64, ptr %rs772, align 8, !tbaa !18
  %mul773 = mul i64 %442, %444
  %add.ptr774 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr769, i64 %mul773
  br label %cond.end775

cond.end775:                                      ; preds = %cond.false762, %cond.true758
  %cond776 = phi ptr [ %add.ptr761, %cond.true758 ], [ %add.ptr774, %cond.false762 ]
  store ptr %cond776, ptr %buff_delta753, align 8, !tbaa !19
  %445 = load i32, ptr %m_U, align 4, !tbaa !4
  %446 = load i32, ptr %n_U, align 4, !tbaa !4
  %447 = load ptr, ptr %buff_delta753, align 8, !tbaa !19
  %448 = load ptr, ptr %buff_U585, align 8, !tbaa !19
  %449 = load i32, ptr %rs_U, align 4, !tbaa !4
  %450 = load i32, ptr %cs_U, align 4, !tbaa !4
  %451 = load ptr, ptr %buff_Y609, align 8, !tbaa !19
  %452 = load i32, ptr %rs_Y, align 4, !tbaa !4
  %453 = load i32, ptr %cs_Y, align 4, !tbaa !4
  %454 = load ptr, ptr %buff_Z633, align 8, !tbaa !19
  %455 = load i32, ptr %rs_Z, align 4, !tbaa !4
  %456 = load i32, ptr %cs_Z, align 4, !tbaa !4
  %457 = load ptr, ptr %buff_t657, align 8, !tbaa !19
  %458 = load i32, ptr %inc_t, align 4, !tbaa !4
  %459 = load ptr, ptr %buff_u681, align 8, !tbaa !19
  %460 = load i32, ptr %inc_u, align 4, !tbaa !4
  %461 = load ptr, ptr %buff_y705, align 8, !tbaa !19
  %462 = load i32, ptr %inc_y, align 4, !tbaa !4
  %463 = load ptr, ptr %buff_z729, align 8, !tbaa !19
  %464 = load i32, ptr %inc_z, align 4, !tbaa !4
  %call777 = call i32 @FLA_Fused_Uhu_Yhu_Zhu_opz_var1(i32 noundef %445, i32 noundef %446, ptr noundef %447, ptr noundef %448, i32 noundef %449, i32 noundef %450, ptr noundef %451, i32 noundef %452, i32 noundef %453, ptr noundef %454, i32 noundef %455, i32 noundef %456, ptr noundef %457, i32 noundef %458, ptr noundef %459, i32 noundef %460, ptr noundef %461, i32 noundef %462, ptr noundef %463, i32 noundef %464)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_delta753) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z729) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y705) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u681) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_t657) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Z633) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_Y609) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_U585) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end775, %cond.end581, %cond.end387, %cond.end193
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_Z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_Z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_Y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_Y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_U) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_U) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_U) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_U) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #5
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Fused_Uhu_Yhu_Zhu_ops_var1(i32 noundef %m_U, i32 noundef %n_U, ptr noundef %buff_delta, ptr noundef %buff_U, i32 noundef %rs_U, i32 noundef %cs_U, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_t, i32 noundef %inc_t, ptr noundef %buff_u, i32 noundef %inc_u, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_z, i32 noundef %inc_z) #0 {
entry:
  %m_U.addr = alloca i32, align 4
  %n_U.addr = alloca i32, align 4
  %buff_delta.addr = alloca ptr, align 8
  %buff_U.addr = alloca ptr, align 8
  %rs_U.addr = alloca i32, align 4
  %cs_U.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_t.addr = alloca ptr, align 8
  %inc_t.addr = alloca i32, align 4
  %buff_u.addr = alloca ptr, align 8
  %inc_u.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_z.addr = alloca ptr, align 8
  %inc_z.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %u1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %delta = alloca ptr, align 8
  %tau1 = alloca ptr, align 8
  %u = alloca ptr, align 8
  %y = alloca ptr, align 8
  %z = alloca ptr, align 8
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %gamma = alloca float, align 4
  store i32 %m_U, ptr %m_U.addr, align 4, !tbaa !4
  store i32 %n_U, ptr %n_U.addr, align 4, !tbaa !4
  store ptr %buff_delta, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %buff_U, ptr %buff_U.addr, align 8, !tbaa !19
  store i32 %rs_U, ptr %rs_U.addr, align 4, !tbaa !4
  store i32 %cs_U, ptr %cs_U.addr, align 4, !tbaa !4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8, !tbaa !19
  store i32 %rs_Y, ptr %rs_Y.addr, align 4, !tbaa !4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4, !tbaa !4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8, !tbaa !19
  store i32 %rs_Z, ptr %rs_Z.addr, align 4, !tbaa !4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !19
  store i32 %inc_t, ptr %inc_t.addr, align 4, !tbaa !4
  store ptr %buff_u, ptr %buff_u.addr, align 8, !tbaa !19
  store i32 %inc_u, ptr %inc_u.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_z, ptr %buff_z.addr, align 8, !tbaa !19
  store i32 %inc_z, ptr %inc_z.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %1 = load i32, ptr %n_U.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #5
  %2 = load ptr, ptr %buff_U.addr, align 8, !tbaa !19
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %4 = load i32, ptr %cs_U.addr, align 4, !tbaa !4
  %mul = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %2, i64 %idx.ext
  %5 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %mul1 = mul nsw i32 0, %5
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds float, ptr %add.ptr, i64 %idx.ext2
  store ptr %add.ptr3, ptr %u1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #5
  %6 = load ptr, ptr %buff_Y.addr, align 8, !tbaa !19
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %8 = load i32, ptr %cs_Y.addr, align 4, !tbaa !4
  %mul4 = mul nsw i32 %7, %8
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds float, ptr %6, i64 %idx.ext5
  %9 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %mul7 = mul nsw i32 0, %9
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds float, ptr %add.ptr6, i64 %idx.ext8
  store ptr %add.ptr9, ptr %y1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z1) #5
  %10 = load ptr, ptr %buff_Z.addr, align 8, !tbaa !19
  %11 = load i32, ptr %i, align 4, !tbaa !4
  %12 = load i32, ptr %cs_Z.addr, align 4, !tbaa !4
  %mul10 = mul nsw i32 %11, %12
  %idx.ext11 = sext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds float, ptr %10, i64 %idx.ext11
  %13 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %mul13 = mul nsw i32 0, %13
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr12, i64 %idx.ext14
  store ptr %add.ptr15, ptr %z1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5
  %14 = load ptr, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %14, ptr %delta, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau1) #5
  %15 = load ptr, ptr %buff_t.addr, align 8, !tbaa !19
  %16 = load i32, ptr %i, align 4, !tbaa !4
  %17 = load i32, ptr %inc_t.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %16, %17
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds float, ptr %15, i64 %idx.ext17
  store ptr %add.ptr18, ptr %tau1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #5
  %18 = load ptr, ptr %buff_u.addr, align 8, !tbaa !19
  store ptr %18, ptr %u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %19 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  store ptr %19, ptr %y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %20 = load ptr, ptr %buff_z.addr, align 8, !tbaa !19
  store ptr %20, ptr %z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %gamma) #5
  %21 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %22 = load ptr, ptr %u1, align 8, !tbaa !19
  %23 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %u, align 8, !tbaa !19
  %25 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_sdot(i32 noundef 501, i32 noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %alpha)
  %26 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %27 = load ptr, ptr %z1, align 8, !tbaa !19
  %28 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %29 = load ptr, ptr %u, align 8, !tbaa !19
  %30 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_sdot(i32 noundef 501, i32 noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, ptr noundef %beta)
  %31 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %32 = load ptr, ptr %y1, align 8, !tbaa !19
  %33 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %34 = load ptr, ptr %u, align 8, !tbaa !19
  %35 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_sdot(i32 noundef 501, i32 noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %gamma)
  %36 = load float, ptr %alpha, align 4, !tbaa !20
  %37 = load ptr, ptr %tau1, align 8, !tbaa !19
  store float %36, ptr %37, align 4, !tbaa !20
  %38 = load ptr, ptr %delta, align 8, !tbaa !19
  %39 = load float, ptr %38, align 4, !tbaa !20
  %40 = load float, ptr %alpha, align 4, !tbaa !20
  %mul19 = fmul float %40, %39
  store float %mul19, ptr %alpha, align 4, !tbaa !20
  %41 = load ptr, ptr %delta, align 8, !tbaa !19
  %42 = load float, ptr %41, align 4, !tbaa !20
  %43 = load float, ptr %beta, align 4, !tbaa !20
  %mul20 = fmul float %43, %42
  store float %mul20, ptr %beta, align 4, !tbaa !20
  %44 = load ptr, ptr %delta, align 8, !tbaa !19
  %45 = load float, ptr %44, align 4, !tbaa !20
  %46 = load float, ptr %gamma, align 4, !tbaa !20
  %mul21 = fmul float %46, %45
  store float %mul21, ptr %gamma, align 4, !tbaa !20
  %47 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %48 = load ptr, ptr %y1, align 8, !tbaa !19
  %49 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %50 = load ptr, ptr %y, align 8, !tbaa !19
  %51 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %47, ptr noundef %alpha, ptr noundef %48, i32 noundef %49, ptr noundef %50, i32 noundef %51)
  %52 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %53 = load ptr, ptr %u1, align 8, !tbaa !19
  %54 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %55 = load ptr, ptr %y, align 8, !tbaa !19
  %56 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %52, ptr noundef %beta, ptr noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56)
  %57 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %58 = load ptr, ptr %z1, align 8, !tbaa !19
  %59 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %60 = load ptr, ptr %z, align 8, !tbaa !19
  %61 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %57, ptr noundef %alpha, ptr noundef %58, i32 noundef %59, ptr noundef %60, i32 noundef %61)
  %62 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %63 = load ptr, ptr %u1, align 8, !tbaa !19
  %64 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %65 = load ptr, ptr %z, align 8, !tbaa !19
  %66 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %62, ptr noundef %gamma, ptr noundef %63, i32 noundef %64, ptr noundef %65, i32 noundef %66)
  call void @llvm.lifetime.end.p0(i64 4, ptr %gamma) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Fused_Uhu_Yhu_Zhu_opd_var1(i32 noundef %m_U, i32 noundef %n_U, ptr noundef %buff_delta, ptr noundef %buff_U, i32 noundef %rs_U, i32 noundef %cs_U, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_t, i32 noundef %inc_t, ptr noundef %buff_u, i32 noundef %inc_u, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_z, i32 noundef %inc_z) #0 {
entry:
  %m_U.addr = alloca i32, align 4
  %n_U.addr = alloca i32, align 4
  %buff_delta.addr = alloca ptr, align 8
  %buff_U.addr = alloca ptr, align 8
  %rs_U.addr = alloca i32, align 4
  %cs_U.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_t.addr = alloca ptr, align 8
  %inc_t.addr = alloca i32, align 4
  %buff_u.addr = alloca ptr, align 8
  %inc_u.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_z.addr = alloca ptr, align 8
  %inc_z.addr = alloca i32, align 4
  %zero = alloca double, align 8
  %delta = alloca ptr, align 8
  %u = alloca ptr, align 8
  %y = alloca ptr, align 8
  %z = alloca ptr, align 8
  %u1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %upsilon1 = alloca ptr, align 8
  %tau1 = alloca ptr, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %gamma = alloca double, align 8
  %i = alloca i32, align 4
  %n_run = alloca i32, align 4
  %step_u1 = alloca i32, align 4
  %step_y1 = alloca i32, align 4
  %step_z1 = alloca i32, align 4
  %step_upsilon1 = alloca i32, align 4
  %step_tau1 = alloca i32, align 4
  store i32 %m_U, ptr %m_U.addr, align 4, !tbaa !4
  store i32 %n_U, ptr %n_U.addr, align 4, !tbaa !4
  store ptr %buff_delta, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %buff_U, ptr %buff_U.addr, align 8, !tbaa !19
  store i32 %rs_U, ptr %rs_U.addr, align 4, !tbaa !4
  store i32 %cs_U, ptr %cs_U.addr, align 4, !tbaa !4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8, !tbaa !19
  store i32 %rs_Y, ptr %rs_Y.addr, align 4, !tbaa !4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4, !tbaa !4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8, !tbaa !19
  store i32 %rs_Z, ptr %rs_Z.addr, align 4, !tbaa !4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !19
  store i32 %inc_t, ptr %inc_t.addr, align 4, !tbaa !4
  store ptr %buff_u, ptr %buff_u.addr, align 8, !tbaa !19
  store i32 %inc_u, ptr %inc_u.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_z, ptr %buff_z.addr, align 8, !tbaa !19
  store i32 %inc_z, ptr %inc_z.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #5
  %call = call double @bl1_d0()
  store double %call, ptr %zero, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5
  %0 = load ptr, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %0, ptr %delta, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #5
  %1 = load ptr, ptr %buff_u.addr, align 8, !tbaa !19
  store ptr %1, ptr %u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %2 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  store ptr %2, ptr %y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %3 = load ptr, ptr %buff_z.addr, align 8, !tbaa !19
  store ptr %3, ptr %z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_run) #5
  %4 = load i32, ptr %n_U.addr, align 4, !tbaa !4
  %div = sdiv i32 %4, 1
  store i32 %div, ptr %n_run, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_u1) #5
  %5 = load i32, ptr %cs_U.addr, align 4, !tbaa !4
  %mul = mul nsw i32 1, %5
  store i32 %mul, ptr %step_u1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_y1) #5
  %6 = load i32, ptr %cs_Y.addr, align 4, !tbaa !4
  %mul1 = mul nsw i32 1, %6
  store i32 %mul1, ptr %step_y1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_z1) #5
  %7 = load i32, ptr %cs_Z.addr, align 4, !tbaa !4
  %mul2 = mul nsw i32 1, %7
  store i32 %mul2, ptr %step_z1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_upsilon1) #5
  %8 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  %mul3 = mul nsw i32 1, %8
  store i32 %mul3, ptr %step_upsilon1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_tau1) #5
  %9 = load i32, ptr %inc_t.addr, align 4, !tbaa !4
  %mul4 = mul nsw i32 1, %9
  store i32 %mul4, ptr %step_tau1, align 4, !tbaa !4
  %10 = load ptr, ptr %buff_U.addr, align 8, !tbaa !19
  store ptr %10, ptr %u1, align 8, !tbaa !19
  %11 = load ptr, ptr %buff_Y.addr, align 8, !tbaa !19
  store ptr %11, ptr %y1, align 8, !tbaa !19
  %12 = load ptr, ptr %buff_Z.addr, align 8, !tbaa !19
  store ptr %12, ptr %z1, align 8, !tbaa !19
  %13 = load ptr, ptr %buff_u.addr, align 8, !tbaa !19
  store ptr %13, ptr %upsilon1, align 8, !tbaa !19
  %14 = load ptr, ptr %buff_t.addr, align 8, !tbaa !19
  store ptr %14, ptr %tau1, align 8, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, ptr %i, align 4, !tbaa !4
  %16 = load i32, ptr %n_run, align 4, !tbaa !4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %18 = load ptr, ptr %y1, align 8, !tbaa !19
  %19 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %20 = load ptr, ptr %z1, align 8, !tbaa !19
  %21 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %22 = load ptr, ptr %u, align 8, !tbaa !19
  %23 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_ddotsv2(i32 noundef 501, i32 noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %zero, ptr noundef %beta, ptr noundef %gamma)
  %24 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %25 = load ptr, ptr %u1, align 8, !tbaa !19
  %26 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %27 = load ptr, ptr %u, align 8, !tbaa !19
  %28 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  %29 = load ptr, ptr %y, align 8, !tbaa !19
  %30 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  %31 = load ptr, ptr %z, align 8, !tbaa !19
  %32 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_ddotaxmyv2(i32 noundef %24, ptr noundef %gamma, ptr noundef %beta, ptr noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %alpha, ptr noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef %32)
  %33 = load double, ptr %alpha, align 8, !tbaa !24
  %34 = load ptr, ptr %tau1, align 8, !tbaa !19
  store double %33, ptr %34, align 8, !tbaa !24
  %35 = load ptr, ptr %delta, align 8, !tbaa !19
  %36 = load double, ptr %35, align 8, !tbaa !24
  %37 = load double, ptr %alpha, align 8, !tbaa !24
  %mul5 = fmul double %36, %37
  store double %mul5, ptr %alpha, align 8, !tbaa !24
  %38 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %39 = load ptr, ptr %y1, align 8, !tbaa !19
  %40 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %41 = load ptr, ptr %y, align 8, !tbaa !19
  %42 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %38, ptr noundef %alpha, ptr noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef %42)
  %43 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %44 = load ptr, ptr %z1, align 8, !tbaa !19
  %45 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %46 = load ptr, ptr %z, align 8, !tbaa !19
  %47 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %43, ptr noundef %alpha, ptr noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr %step_u1, align 4, !tbaa !4
  %49 = load ptr, ptr %u1, align 8, !tbaa !19
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds double, ptr %49, i64 %idx.ext
  store ptr %add.ptr, ptr %u1, align 8, !tbaa !19
  %50 = load i32, ptr %step_y1, align 4, !tbaa !4
  %51 = load ptr, ptr %y1, align 8, !tbaa !19
  %idx.ext6 = sext i32 %50 to i64
  %add.ptr7 = getelementptr inbounds double, ptr %51, i64 %idx.ext6
  store ptr %add.ptr7, ptr %y1, align 8, !tbaa !19
  %52 = load i32, ptr %step_z1, align 4, !tbaa !4
  %53 = load ptr, ptr %z1, align 8, !tbaa !19
  %idx.ext8 = sext i32 %52 to i64
  %add.ptr9 = getelementptr inbounds double, ptr %53, i64 %idx.ext8
  store ptr %add.ptr9, ptr %z1, align 8, !tbaa !19
  %54 = load i32, ptr %step_upsilon1, align 4, !tbaa !4
  %55 = load ptr, ptr %upsilon1, align 8, !tbaa !19
  %idx.ext10 = sext i32 %54 to i64
  %add.ptr11 = getelementptr inbounds double, ptr %55, i64 %idx.ext10
  store ptr %add.ptr11, ptr %upsilon1, align 8, !tbaa !19
  %56 = load i32, ptr %step_tau1, align 4, !tbaa !4
  %57 = load ptr, ptr %tau1, align 8, !tbaa !19
  %idx.ext12 = sext i32 %56 to i64
  %add.ptr13 = getelementptr inbounds double, ptr %57, i64 %idx.ext12
  store ptr %add.ptr13, ptr %tau1, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_tau1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_upsilon1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_z1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_u1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_run) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Fused_Uhu_Yhu_Zhu_opc_var1(i32 noundef %m_U, i32 noundef %n_U, ptr noundef %buff_delta, ptr noundef %buff_U, i32 noundef %rs_U, i32 noundef %cs_U, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_t, i32 noundef %inc_t, ptr noundef %buff_u, i32 noundef %inc_u, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_z, i32 noundef %inc_z) #0 {
entry:
  %m_U.addr = alloca i32, align 4
  %n_U.addr = alloca i32, align 4
  %buff_delta.addr = alloca ptr, align 8
  %buff_U.addr = alloca ptr, align 8
  %rs_U.addr = alloca i32, align 4
  %cs_U.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_t.addr = alloca ptr, align 8
  %inc_t.addr = alloca i32, align 4
  %buff_u.addr = alloca ptr, align 8
  %inc_u.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_z.addr = alloca ptr, align 8
  %inc_z.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %u1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %delta = alloca ptr, align 8
  %tau1 = alloca ptr, align 8
  %u = alloca ptr, align 8
  %y = alloca ptr, align 8
  %z = alloca ptr, align 8
  %alpha = alloca %struct.scomplex, align 4
  %beta = alloca %struct.scomplex, align 4
  %gamma = alloca %struct.scomplex, align 4
  %tempr = alloca float, align 4
  %tempi = alloca float, align 4
  %tempr31 = alloca float, align 4
  %tempi39 = alloca float, align 4
  %tempr48 = alloca float, align 4
  %tempi56 = alloca float, align 4
  store i32 %m_U, ptr %m_U.addr, align 4, !tbaa !4
  store i32 %n_U, ptr %n_U.addr, align 4, !tbaa !4
  store ptr %buff_delta, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %buff_U, ptr %buff_U.addr, align 8, !tbaa !19
  store i32 %rs_U, ptr %rs_U.addr, align 4, !tbaa !4
  store i32 %cs_U, ptr %cs_U.addr, align 4, !tbaa !4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8, !tbaa !19
  store i32 %rs_Y, ptr %rs_Y.addr, align 4, !tbaa !4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4, !tbaa !4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8, !tbaa !19
  store i32 %rs_Z, ptr %rs_Z.addr, align 4, !tbaa !4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !19
  store i32 %inc_t, ptr %inc_t.addr, align 4, !tbaa !4
  store ptr %buff_u, ptr %buff_u.addr, align 8, !tbaa !19
  store i32 %inc_u, ptr %inc_u.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_z, ptr %buff_z.addr, align 8, !tbaa !19
  store i32 %inc_z, ptr %inc_z.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %1 = load i32, ptr %n_U.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #5
  %2 = load ptr, ptr %buff_U.addr, align 8, !tbaa !19
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %4 = load i32, ptr %cs_U.addr, align 4, !tbaa !4
  %mul = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %2, i64 %idx.ext
  %5 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %mul1 = mul nsw i32 0, %5
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %idx.ext2
  store ptr %add.ptr3, ptr %u1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #5
  %6 = load ptr, ptr %buff_Y.addr, align 8, !tbaa !19
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %8 = load i32, ptr %cs_Y.addr, align 4, !tbaa !4
  %mul4 = mul nsw i32 %7, %8
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %6, i64 %idx.ext5
  %9 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %mul7 = mul nsw i32 0, %9
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds %struct.scomplex, ptr %add.ptr6, i64 %idx.ext8
  store ptr %add.ptr9, ptr %y1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z1) #5
  %10 = load ptr, ptr %buff_Z.addr, align 8, !tbaa !19
  %11 = load i32, ptr %i, align 4, !tbaa !4
  %12 = load i32, ptr %cs_Z.addr, align 4, !tbaa !4
  %mul10 = mul nsw i32 %11, %12
  %idx.ext11 = sext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %10, i64 %idx.ext11
  %13 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %mul13 = mul nsw i32 0, %13
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds %struct.scomplex, ptr %add.ptr12, i64 %idx.ext14
  store ptr %add.ptr15, ptr %z1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5
  %14 = load ptr, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %14, ptr %delta, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau1) #5
  %15 = load ptr, ptr %buff_t.addr, align 8, !tbaa !19
  %16 = load i32, ptr %i, align 4, !tbaa !4
  %17 = load i32, ptr %inc_t.addr, align 4, !tbaa !4
  %mul16 = mul nsw i32 %16, %17
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds %struct.scomplex, ptr %15, i64 %idx.ext17
  store ptr %add.ptr18, ptr %tau1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #5
  %18 = load ptr, ptr %buff_u.addr, align 8, !tbaa !19
  store ptr %18, ptr %u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %19 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  store ptr %19, ptr %y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %20 = load ptr, ptr %buff_z.addr, align 8, !tbaa !19
  store ptr %20, ptr %z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #5
  %21 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %22 = load ptr, ptr %u1, align 8, !tbaa !19
  %23 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %u, align 8, !tbaa !19
  %25 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_cdot(i32 noundef 501, i32 noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %alpha)
  %26 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %27 = load ptr, ptr %z1, align 8, !tbaa !19
  %28 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %29 = load ptr, ptr %u, align 8, !tbaa !19
  %30 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_cdot(i32 noundef 501, i32 noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, ptr noundef %beta)
  %31 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %32 = load ptr, ptr %y1, align 8, !tbaa !19
  %33 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %34 = load ptr, ptr %u, align 8, !tbaa !19
  %35 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_cdot(i32 noundef 501, i32 noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %gamma)
  %36 = load ptr, ptr %tau1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 4 %alpha, i64 8, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr) #5
  %37 = load ptr, ptr %delta, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.scomplex, ptr %37, i32 0, i32 0
  %38 = load float, ptr %real, align 4, !tbaa !28
  %real19 = getelementptr inbounds %struct.scomplex, ptr %alpha, i32 0, i32 0
  %39 = load float, ptr %real19, align 4, !tbaa !28
  %40 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.scomplex, ptr %40, i32 0, i32 1
  %41 = load float, ptr %imag, align 4, !tbaa !30
  %imag21 = getelementptr inbounds %struct.scomplex, ptr %alpha, i32 0, i32 1
  %42 = load float, ptr %imag21, align 4, !tbaa !30
  %mul22 = fmul float %41, %42
  %neg = fneg float %mul22
  %43 = call float @llvm.fmuladd.f32(float %38, float %39, float %neg)
  store float %43, ptr %tempr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi) #5
  %44 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag23 = getelementptr inbounds %struct.scomplex, ptr %44, i32 0, i32 1
  %45 = load float, ptr %imag23, align 4, !tbaa !30
  %real24 = getelementptr inbounds %struct.scomplex, ptr %alpha, i32 0, i32 0
  %46 = load float, ptr %real24, align 4, !tbaa !28
  %47 = load ptr, ptr %delta, align 8, !tbaa !19
  %real26 = getelementptr inbounds %struct.scomplex, ptr %47, i32 0, i32 0
  %48 = load float, ptr %real26, align 4, !tbaa !28
  %imag27 = getelementptr inbounds %struct.scomplex, ptr %alpha, i32 0, i32 1
  %49 = load float, ptr %imag27, align 4, !tbaa !30
  %mul28 = fmul float %48, %49
  %50 = call float @llvm.fmuladd.f32(float %45, float %46, float %mul28)
  store float %50, ptr %tempi, align 4, !tbaa !20
  %51 = load float, ptr %tempr, align 4, !tbaa !20
  %real29 = getelementptr inbounds %struct.scomplex, ptr %alpha, i32 0, i32 0
  store float %51, ptr %real29, align 4, !tbaa !28
  %52 = load float, ptr %tempi, align 4, !tbaa !20
  %imag30 = getelementptr inbounds %struct.scomplex, ptr %alpha, i32 0, i32 1
  store float %52, ptr %imag30, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr31) #5
  %53 = load ptr, ptr %delta, align 8, !tbaa !19
  %real32 = getelementptr inbounds %struct.scomplex, ptr %53, i32 0, i32 0
  %54 = load float, ptr %real32, align 4, !tbaa !28
  %real33 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %55 = load float, ptr %real33, align 4, !tbaa !28
  %56 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag35 = getelementptr inbounds %struct.scomplex, ptr %56, i32 0, i32 1
  %57 = load float, ptr %imag35, align 4, !tbaa !30
  %imag36 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %58 = load float, ptr %imag36, align 4, !tbaa !30
  %mul37 = fmul float %57, %58
  %neg38 = fneg float %mul37
  %59 = call float @llvm.fmuladd.f32(float %54, float %55, float %neg38)
  store float %59, ptr %tempr31, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi39) #5
  %60 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag40 = getelementptr inbounds %struct.scomplex, ptr %60, i32 0, i32 1
  %61 = load float, ptr %imag40, align 4, !tbaa !30
  %real41 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %62 = load float, ptr %real41, align 4, !tbaa !28
  %63 = load ptr, ptr %delta, align 8, !tbaa !19
  %real43 = getelementptr inbounds %struct.scomplex, ptr %63, i32 0, i32 0
  %64 = load float, ptr %real43, align 4, !tbaa !28
  %imag44 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %65 = load float, ptr %imag44, align 4, !tbaa !30
  %mul45 = fmul float %64, %65
  %66 = call float @llvm.fmuladd.f32(float %61, float %62, float %mul45)
  store float %66, ptr %tempi39, align 4, !tbaa !20
  %67 = load float, ptr %tempr31, align 4, !tbaa !20
  %real46 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  store float %67, ptr %real46, align 4, !tbaa !28
  %68 = load float, ptr %tempi39, align 4, !tbaa !20
  %imag47 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  store float %68, ptr %imag47, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi39) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr31) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr48) #5
  %69 = load ptr, ptr %delta, align 8, !tbaa !19
  %real49 = getelementptr inbounds %struct.scomplex, ptr %69, i32 0, i32 0
  %70 = load float, ptr %real49, align 4, !tbaa !28
  %real50 = getelementptr inbounds %struct.scomplex, ptr %gamma, i32 0, i32 0
  %71 = load float, ptr %real50, align 4, !tbaa !28
  %72 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag52 = getelementptr inbounds %struct.scomplex, ptr %72, i32 0, i32 1
  %73 = load float, ptr %imag52, align 4, !tbaa !30
  %imag53 = getelementptr inbounds %struct.scomplex, ptr %gamma, i32 0, i32 1
  %74 = load float, ptr %imag53, align 4, !tbaa !30
  %mul54 = fmul float %73, %74
  %neg55 = fneg float %mul54
  %75 = call float @llvm.fmuladd.f32(float %70, float %71, float %neg55)
  store float %75, ptr %tempr48, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi56) #5
  %76 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag57 = getelementptr inbounds %struct.scomplex, ptr %76, i32 0, i32 1
  %77 = load float, ptr %imag57, align 4, !tbaa !30
  %real58 = getelementptr inbounds %struct.scomplex, ptr %gamma, i32 0, i32 0
  %78 = load float, ptr %real58, align 4, !tbaa !28
  %79 = load ptr, ptr %delta, align 8, !tbaa !19
  %real60 = getelementptr inbounds %struct.scomplex, ptr %79, i32 0, i32 0
  %80 = load float, ptr %real60, align 4, !tbaa !28
  %imag61 = getelementptr inbounds %struct.scomplex, ptr %gamma, i32 0, i32 1
  %81 = load float, ptr %imag61, align 4, !tbaa !30
  %mul62 = fmul float %80, %81
  %82 = call float @llvm.fmuladd.f32(float %77, float %78, float %mul62)
  store float %82, ptr %tempi56, align 4, !tbaa !20
  %83 = load float, ptr %tempr48, align 4, !tbaa !20
  %real63 = getelementptr inbounds %struct.scomplex, ptr %gamma, i32 0, i32 0
  store float %83, ptr %real63, align 4, !tbaa !28
  %84 = load float, ptr %tempi56, align 4, !tbaa !20
  %imag64 = getelementptr inbounds %struct.scomplex, ptr %gamma, i32 0, i32 1
  store float %84, ptr %imag64, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi56) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr48) #5
  %85 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %86 = load ptr, ptr %y1, align 8, !tbaa !19
  %87 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %88 = load ptr, ptr %y, align 8, !tbaa !19
  %89 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %85, ptr noundef %alpha, ptr noundef %86, i32 noundef %87, ptr noundef %88, i32 noundef %89)
  %90 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %u1, align 8, !tbaa !19
  %92 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %93 = load ptr, ptr %y, align 8, !tbaa !19
  %94 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %90, ptr noundef %beta, ptr noundef %91, i32 noundef %92, ptr noundef %93, i32 noundef %94)
  %95 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %96 = load ptr, ptr %z1, align 8, !tbaa !19
  %97 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %98 = load ptr, ptr %z, align 8, !tbaa !19
  %99 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %95, ptr noundef %alpha, ptr noundef %96, i32 noundef %97, ptr noundef %98, i32 noundef %99)
  %100 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %101 = load ptr, ptr %u1, align 8, !tbaa !19
  %102 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %z, align 8, !tbaa !19
  %104 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %100, ptr noundef %gamma, ptr noundef %101, i32 noundef %102, ptr noundef %103, i32 noundef %104)
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %105 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Fused_Uhu_Yhu_Zhu_opz_var1(i32 noundef %m_U, i32 noundef %n_U, ptr noundef %buff_delta, ptr noundef %buff_U, i32 noundef %rs_U, i32 noundef %cs_U, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_t, i32 noundef %inc_t, ptr noundef %buff_u, i32 noundef %inc_u, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_z, i32 noundef %inc_z) #0 {
entry:
  %m_U.addr = alloca i32, align 4
  %n_U.addr = alloca i32, align 4
  %buff_delta.addr = alloca ptr, align 8
  %buff_U.addr = alloca ptr, align 8
  %rs_U.addr = alloca i32, align 4
  %cs_U.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_t.addr = alloca ptr, align 8
  %inc_t.addr = alloca i32, align 4
  %buff_u.addr = alloca ptr, align 8
  %inc_u.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_z.addr = alloca ptr, align 8
  %inc_z.addr = alloca i32, align 4
  %zero = alloca %struct.dcomplex, align 8
  %delta = alloca ptr, align 8
  %u = alloca ptr, align 8
  %y = alloca ptr, align 8
  %z = alloca ptr, align 8
  %u1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %upsilon1 = alloca ptr, align 8
  %tau1 = alloca ptr, align 8
  %alpha = alloca %struct.dcomplex, align 8
  %beta = alloca %struct.dcomplex, align 8
  %gamma = alloca %struct.dcomplex, align 8
  %i = alloca i32, align 4
  %n_run = alloca i32, align 4
  %step_u1 = alloca i32, align 4
  %step_y1 = alloca i32, align 4
  %step_z1 = alloca i32, align 4
  %step_upsilon1 = alloca i32, align 4
  %step_tau1 = alloca i32, align 4
  %tempr = alloca double, align 8
  %tempi = alloca double, align 8
  %tempr17 = alloca double, align 8
  %tempi25 = alloca double, align 8
  %tempr34 = alloca double, align 8
  %tempi42 = alloca double, align 8
  store i32 %m_U, ptr %m_U.addr, align 4, !tbaa !4
  store i32 %n_U, ptr %n_U.addr, align 4, !tbaa !4
  store ptr %buff_delta, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %buff_U, ptr %buff_U.addr, align 8, !tbaa !19
  store i32 %rs_U, ptr %rs_U.addr, align 4, !tbaa !4
  store i32 %cs_U, ptr %cs_U.addr, align 4, !tbaa !4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8, !tbaa !19
  store i32 %rs_Y, ptr %rs_Y.addr, align 4, !tbaa !4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4, !tbaa !4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8, !tbaa !19
  store i32 %rs_Z, ptr %rs_Z.addr, align 4, !tbaa !4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4, !tbaa !4
  store ptr %buff_t, ptr %buff_t.addr, align 8, !tbaa !19
  store i32 %inc_t, ptr %inc_t.addr, align 4, !tbaa !4
  store ptr %buff_u, ptr %buff_u.addr, align 8, !tbaa !19
  store i32 %inc_u, ptr %inc_u.addr, align 4, !tbaa !4
  store ptr %buff_y, ptr %buff_y.addr, align 8, !tbaa !19
  store i32 %inc_y, ptr %inc_y.addr, align 4, !tbaa !4
  store ptr %buff_z, ptr %buff_z.addr, align 8, !tbaa !19
  store i32 %inc_z, ptr %inc_z.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #5
  %call = call { double, double } @bl1_z0()
  %0 = getelementptr inbounds { double, double }, ptr %zero, i32 0, i32 0
  %1 = extractvalue { double, double } %call, 0
  store double %1, ptr %0, align 8
  %2 = getelementptr inbounds { double, double }, ptr %zero, i32 0, i32 1
  %3 = extractvalue { double, double } %call, 1
  store double %3, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5
  %4 = load ptr, ptr %buff_delta.addr, align 8, !tbaa !19
  store ptr %4, ptr %delta, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #5
  %5 = load ptr, ptr %buff_u.addr, align 8, !tbaa !19
  store ptr %5, ptr %u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %6 = load ptr, ptr %buff_y.addr, align 8, !tbaa !19
  store ptr %6, ptr %y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %7 = load ptr, ptr %buff_z.addr, align 8, !tbaa !19
  store ptr %7, ptr %z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau1) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %gamma) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_run) #5
  %8 = load i32, ptr %n_U.addr, align 4, !tbaa !4
  %div = sdiv i32 %8, 1
  store i32 %div, ptr %n_run, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_u1) #5
  %9 = load i32, ptr %cs_U.addr, align 4, !tbaa !4
  %mul = mul nsw i32 1, %9
  store i32 %mul, ptr %step_u1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_y1) #5
  %10 = load i32, ptr %cs_Y.addr, align 4, !tbaa !4
  %mul1 = mul nsw i32 1, %10
  store i32 %mul1, ptr %step_y1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_z1) #5
  %11 = load i32, ptr %cs_Z.addr, align 4, !tbaa !4
  %mul2 = mul nsw i32 1, %11
  store i32 %mul2, ptr %step_z1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_upsilon1) #5
  %12 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  %mul3 = mul nsw i32 1, %12
  store i32 %mul3, ptr %step_upsilon1, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %step_tau1) #5
  %13 = load i32, ptr %inc_t.addr, align 4, !tbaa !4
  %mul4 = mul nsw i32 1, %13
  store i32 %mul4, ptr %step_tau1, align 4, !tbaa !4
  %14 = load ptr, ptr %buff_U.addr, align 8, !tbaa !19
  store ptr %14, ptr %u1, align 8, !tbaa !19
  %15 = load ptr, ptr %buff_Y.addr, align 8, !tbaa !19
  store ptr %15, ptr %y1, align 8, !tbaa !19
  %16 = load ptr, ptr %buff_Z.addr, align 8, !tbaa !19
  store ptr %16, ptr %z1, align 8, !tbaa !19
  %17 = load ptr, ptr %buff_u.addr, align 8, !tbaa !19
  store ptr %17, ptr %upsilon1, align 8, !tbaa !19
  %18 = load ptr, ptr %buff_t.addr, align 8, !tbaa !19
  store ptr %18, ptr %tau1, align 8, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %20 = load i32, ptr %n_run, align 4, !tbaa !4
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %22 = load ptr, ptr %u1, align 8, !tbaa !19
  %23 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %z1, align 8, !tbaa !19
  %25 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %26 = load ptr, ptr %y1, align 8, !tbaa !19
  %27 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %28 = load ptr, ptr %u, align 8, !tbaa !19
  %29 = load i32, ptr %inc_u.addr, align 4, !tbaa !4
  call void @bl1_zdotsv3(i32 noundef 501, i32 noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %zero, ptr noundef %alpha, ptr noundef %beta, ptr noundef %gamma)
  %30 = load ptr, ptr %tau1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %alpha, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr) #5
  %31 = load ptr, ptr %delta, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.dcomplex, ptr %31, i32 0, i32 0
  %32 = load double, ptr %real, align 8, !tbaa !33
  %real5 = getelementptr inbounds %struct.dcomplex, ptr %alpha, i32 0, i32 0
  %33 = load double, ptr %real5, align 8, !tbaa !33
  %34 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.dcomplex, ptr %34, i32 0, i32 1
  %35 = load double, ptr %imag, align 8, !tbaa !35
  %imag7 = getelementptr inbounds %struct.dcomplex, ptr %alpha, i32 0, i32 1
  %36 = load double, ptr %imag7, align 8, !tbaa !35
  %mul8 = fmul double %35, %36
  %neg = fneg double %mul8
  %37 = call double @llvm.fmuladd.f64(double %32, double %33, double %neg)
  store double %37, ptr %tempr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi) #5
  %38 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag9 = getelementptr inbounds %struct.dcomplex, ptr %38, i32 0, i32 1
  %39 = load double, ptr %imag9, align 8, !tbaa !35
  %real10 = getelementptr inbounds %struct.dcomplex, ptr %alpha, i32 0, i32 0
  %40 = load double, ptr %real10, align 8, !tbaa !33
  %41 = load ptr, ptr %delta, align 8, !tbaa !19
  %real12 = getelementptr inbounds %struct.dcomplex, ptr %41, i32 0, i32 0
  %42 = load double, ptr %real12, align 8, !tbaa !33
  %imag13 = getelementptr inbounds %struct.dcomplex, ptr %alpha, i32 0, i32 1
  %43 = load double, ptr %imag13, align 8, !tbaa !35
  %mul14 = fmul double %42, %43
  %44 = call double @llvm.fmuladd.f64(double %39, double %40, double %mul14)
  store double %44, ptr %tempi, align 8, !tbaa !24
  %45 = load double, ptr %tempr, align 8, !tbaa !24
  %real15 = getelementptr inbounds %struct.dcomplex, ptr %alpha, i32 0, i32 0
  store double %45, ptr %real15, align 8, !tbaa !33
  %46 = load double, ptr %tempi, align 8, !tbaa !24
  %imag16 = getelementptr inbounds %struct.dcomplex, ptr %alpha, i32 0, i32 1
  store double %46, ptr %imag16, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr17) #5
  %47 = load ptr, ptr %delta, align 8, !tbaa !19
  %real18 = getelementptr inbounds %struct.dcomplex, ptr %47, i32 0, i32 0
  %48 = load double, ptr %real18, align 8, !tbaa !33
  %real19 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %49 = load double, ptr %real19, align 8, !tbaa !33
  %50 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag21 = getelementptr inbounds %struct.dcomplex, ptr %50, i32 0, i32 1
  %51 = load double, ptr %imag21, align 8, !tbaa !35
  %imag22 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %52 = load double, ptr %imag22, align 8, !tbaa !35
  %mul23 = fmul double %51, %52
  %neg24 = fneg double %mul23
  %53 = call double @llvm.fmuladd.f64(double %48, double %49, double %neg24)
  store double %53, ptr %tempr17, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi25) #5
  %54 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag26 = getelementptr inbounds %struct.dcomplex, ptr %54, i32 0, i32 1
  %55 = load double, ptr %imag26, align 8, !tbaa !35
  %real27 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %56 = load double, ptr %real27, align 8, !tbaa !33
  %57 = load ptr, ptr %delta, align 8, !tbaa !19
  %real29 = getelementptr inbounds %struct.dcomplex, ptr %57, i32 0, i32 0
  %58 = load double, ptr %real29, align 8, !tbaa !33
  %imag30 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %59 = load double, ptr %imag30, align 8, !tbaa !35
  %mul31 = fmul double %58, %59
  %60 = call double @llvm.fmuladd.f64(double %55, double %56, double %mul31)
  store double %60, ptr %tempi25, align 8, !tbaa !24
  %61 = load double, ptr %tempr17, align 8, !tbaa !24
  %real32 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  store double %61, ptr %real32, align 8, !tbaa !33
  %62 = load double, ptr %tempi25, align 8, !tbaa !24
  %imag33 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  store double %62, ptr %imag33, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi25) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr17) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr34) #5
  %63 = load ptr, ptr %delta, align 8, !tbaa !19
  %real35 = getelementptr inbounds %struct.dcomplex, ptr %63, i32 0, i32 0
  %64 = load double, ptr %real35, align 8, !tbaa !33
  %real36 = getelementptr inbounds %struct.dcomplex, ptr %gamma, i32 0, i32 0
  %65 = load double, ptr %real36, align 8, !tbaa !33
  %66 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag38 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 1
  %67 = load double, ptr %imag38, align 8, !tbaa !35
  %imag39 = getelementptr inbounds %struct.dcomplex, ptr %gamma, i32 0, i32 1
  %68 = load double, ptr %imag39, align 8, !tbaa !35
  %mul40 = fmul double %67, %68
  %neg41 = fneg double %mul40
  %69 = call double @llvm.fmuladd.f64(double %64, double %65, double %neg41)
  store double %69, ptr %tempr34, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi42) #5
  %70 = load ptr, ptr %delta, align 8, !tbaa !19
  %imag43 = getelementptr inbounds %struct.dcomplex, ptr %70, i32 0, i32 1
  %71 = load double, ptr %imag43, align 8, !tbaa !35
  %real44 = getelementptr inbounds %struct.dcomplex, ptr %gamma, i32 0, i32 0
  %72 = load double, ptr %real44, align 8, !tbaa !33
  %73 = load ptr, ptr %delta, align 8, !tbaa !19
  %real46 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 0
  %74 = load double, ptr %real46, align 8, !tbaa !33
  %imag47 = getelementptr inbounds %struct.dcomplex, ptr %gamma, i32 0, i32 1
  %75 = load double, ptr %imag47, align 8, !tbaa !35
  %mul48 = fmul double %74, %75
  %76 = call double @llvm.fmuladd.f64(double %71, double %72, double %mul48)
  store double %76, ptr %tempi42, align 8, !tbaa !24
  %77 = load double, ptr %tempr34, align 8, !tbaa !24
  %real49 = getelementptr inbounds %struct.dcomplex, ptr %gamma, i32 0, i32 0
  store double %77, ptr %real49, align 8, !tbaa !33
  %78 = load double, ptr %tempi42, align 8, !tbaa !24
  %imag50 = getelementptr inbounds %struct.dcomplex, ptr %gamma, i32 0, i32 1
  store double %78, ptr %imag50, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi42) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr34) #5
  %79 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %80 = load ptr, ptr %y1, align 8, !tbaa !19
  %81 = load i32, ptr %rs_Y.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %u1, align 8, !tbaa !19
  %83 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %84 = load ptr, ptr %y, align 8, !tbaa !19
  %85 = load i32, ptr %inc_y.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv2b(i32 noundef %79, ptr noundef %alpha, ptr noundef %beta, ptr noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, ptr noundef %84, i32 noundef %85)
  %86 = load i32, ptr %m_U.addr, align 4, !tbaa !4
  %87 = load ptr, ptr %z1, align 8, !tbaa !19
  %88 = load i32, ptr %rs_Z.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %u1, align 8, !tbaa !19
  %90 = load i32, ptr %rs_U.addr, align 4, !tbaa !4
  %91 = load ptr, ptr %z, align 8, !tbaa !19
  %92 = load i32, ptr %inc_z.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv2b(i32 noundef %86, ptr noundef %alpha, ptr noundef %gamma, ptr noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load i32, ptr %step_u1, align 4, !tbaa !4
  %94 = load ptr, ptr %u1, align 8, !tbaa !19
  %idx.ext = sext i32 %93 to i64
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %94, i64 %idx.ext
  store ptr %add.ptr, ptr %u1, align 8, !tbaa !19
  %95 = load i32, ptr %step_y1, align 4, !tbaa !4
  %96 = load ptr, ptr %y1, align 8, !tbaa !19
  %idx.ext51 = sext i32 %95 to i64
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %96, i64 %idx.ext51
  store ptr %add.ptr52, ptr %y1, align 8, !tbaa !19
  %97 = load i32, ptr %step_z1, align 4, !tbaa !4
  %98 = load ptr, ptr %z1, align 8, !tbaa !19
  %idx.ext53 = sext i32 %97 to i64
  %add.ptr54 = getelementptr inbounds %struct.dcomplex, ptr %98, i64 %idx.ext53
  store ptr %add.ptr54, ptr %z1, align 8, !tbaa !19
  %99 = load i32, ptr %step_upsilon1, align 4, !tbaa !4
  %100 = load ptr, ptr %upsilon1, align 8, !tbaa !19
  %idx.ext55 = sext i32 %99 to i64
  %add.ptr56 = getelementptr inbounds %struct.dcomplex, ptr %100, i64 %idx.ext55
  store ptr %add.ptr56, ptr %upsilon1, align 8, !tbaa !19
  %101 = load i32, ptr %step_tau1, align 4, !tbaa !4
  %102 = load ptr, ptr %tau1, align 8, !tbaa !19
  %idx.ext57 = sext i32 %101 to i64
  %add.ptr58 = getelementptr inbounds %struct.dcomplex, ptr %102, i64 %idx.ext57
  store ptr %add.ptr58, ptr %tau1, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %103 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %103, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_tau1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_upsilon1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_z1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %step_u1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_run) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %gamma) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #5
  ret i32 -1
}

declare void @bl1_sdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare double @bl1_d0() #2

declare void @bl1_ddotsv2(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bl1_ddotaxmyv2(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare { double, double } @bl1_z0() #2

declare void @bl1_zdotsv3(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @bl1_zaxpyv2b(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = distinct !{!26, !23}
!27 = !{i64 0, i64 4, !20, i64 4, i64 4, !20}
!28 = !{!29, !21, i64 0}
!29 = !{!"scomplex", !21, i64 0, !21, i64 4}
!30 = !{!29, !21, i64 4}
!31 = distinct !{!31, !23}
!32 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!33 = !{!34, !25, i64 0}
!34 = !{!"dcomplex", !25, i64 0, !25, i64 8}
!35 = !{!34, !25, i64 8}
!36 = distinct !{!36, !23}
