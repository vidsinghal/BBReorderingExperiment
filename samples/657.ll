; ModuleID = 'samples/657.bc'
source_filename = "frame/1m/unpackm/bli_unpackm_unb_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64 }
%struct.dcomplex = type { double, double }

@ftypes = internal global [4 x ptr] [ptr @bli_sunpackm_unb_var1, ptr @bli_cunpackm_unb_var1, ptr @bli_dunpackm_unb_var1, ptr @bli_zunpackm_unb_var1], align 16

; Function Attrs: nounwind uwtable
define hidden void @bli_unpackm_unb_var1(ptr noundef %p, ptr noundef %c, ptr noundef %cntx, ptr noundef %cntl, ptr noundef %thread) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %cntl.addr = alloca ptr, align 8
  %thread.addr = alloca ptr, align 8
  %dt_pc = alloca i32, align 4
  %diagoffp = alloca i64, align 8
  %uplop = alloca i32, align 4
  %transc = alloca i32, align 4
  %m_c = alloca i64, align 8
  %n_c = alloca i64, align 8
  %buf_p = alloca ptr, align 8
  %rs_p = alloca i64, align 8
  %cs_p = alloca i64, align 8
  %buf_c = alloca ptr, align 8
  %rs_c = alloca i64, align 8
  %cs_c = alloca i64, align 8
  %f = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  store ptr %thread, ptr %thread.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_pc) #3
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_dt(ptr noundef %0)
  store i32 %call, ptr %dt_pc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagoffp) #3
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call1 = call i64 @bli_obj_diag_offset(ptr noundef %1)
  store i64 %call1, ptr %diagoffp, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplop) #3
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call2 = call i32 @bli_obj_uplo(ptr noundef %2)
  store i32 %call2, ptr %uplop, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %transc) #3
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call3 = call i32 @bli_obj_onlytrans_status(ptr noundef %3)
  store i32 %call3, ptr %transc, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_c) #3
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call4 = call i64 @bli_obj_length(ptr noundef %4)
  store i64 %call4, ptr %m_c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_c) #3
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call5 = call i64 @bli_obj_width(ptr noundef %5)
  store i64 %call5, ptr %n_c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_p) #3
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call6 = call ptr @bli_obj_buffer_at_off(ptr noundef %6)
  store ptr %call6, ptr %buf_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_p) #3
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call7 = call i64 @bli_obj_row_stride(ptr noundef %7)
  store i64 %call7, ptr %rs_p, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_p) #3
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call8 = call i64 @bli_obj_col_stride(ptr noundef %8)
  store i64 %call8, ptr %cs_p, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_c) #3
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call9 = call ptr @bli_obj_buffer_at_off(ptr noundef %9)
  store ptr %call9, ptr %buf_c, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_c) #3
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call10 = call i64 @bli_obj_row_stride(ptr noundef %10)
  store i64 %call10, ptr %rs_c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_c) #3
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call11 = call i64 @bli_obj_col_stride(ptr noundef %11)
  store i64 %call11, ptr %cs_c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load i32, ptr %dt_pc, align 4, !tbaa !8
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @ftypes, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %13, ptr %f, align 8, !tbaa !4
  %14 = load ptr, ptr %f, align 8, !tbaa !4
  %15 = load i64, ptr %diagoffp, align 8, !tbaa !9
  %16 = load i32, ptr %uplop, align 4, !tbaa !8
  %17 = load i32, ptr %transc, align 4, !tbaa !8
  %18 = load i64, ptr %m_c, align 8, !tbaa !9
  %19 = load i64, ptr %n_c, align 8, !tbaa !9
  %20 = load ptr, ptr %buf_p, align 8, !tbaa !4
  %21 = load i64, ptr %rs_p, align 8, !tbaa !9
  %22 = load i64, ptr %cs_p, align 8, !tbaa !9
  %23 = load ptr, ptr %buf_c, align 8, !tbaa !4
  %24 = load i64, ptr %rs_c, align 8, !tbaa !9
  %25 = load i64, ptr %cs_c, align 8, !tbaa !9
  %26 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void %14(i64 noundef %15, i32 noundef %16, i32 noundef %17, i64 noundef %18, i64 noundef %19, ptr noundef %20, i64 noundef %21, i64 noundef %22, ptr noundef %23, i64 noundef %24, i64 noundef %25, ptr noundef %26)
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %transc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplop) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagoffp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_pc) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_dt(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !11
  %and = and i32 %1, 7
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_diag_offset(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %diag_off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %diag_off, align 8, !tbaa !16
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_uplo(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !11
  %and = and i32 %1, 224
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_onlytrans_status(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !11
  %and = and i32 %1, 8
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_length(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !9
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_width(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %dim = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %dim, i64 0, i64 1
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !9
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer_at_off(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @bli_obj_buffer(ptr noundef %0)
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call i64 @bli_obj_elem_size(ptr noundef %1)
  %2 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call2 = call i64 @bli_obj_col_off(ptr noundef %2)
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call3 = call i64 @bli_obj_col_stride(ptr noundef %3)
  %mul = mul nsw i64 %call2, %call3
  %4 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call4 = call i64 @bli_obj_row_off(ptr noundef %4)
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call5 = call i64 @bli_obj_row_stride(ptr noundef %5)
  %mul6 = mul nsw i64 %call4, %call5
  %add = add nsw i64 %mul, %mul6
  %mul7 = mul nsw i64 %call1, %add
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %mul7
  ret ptr %add.ptr
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_row_stride(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %rs = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 8
  %1 = load i64, ptr %rs, align 8, !tbaa !17
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_col_stride(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %cs = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 9
  %1 = load i64, ptr %cs, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_sunpackm_unb_var1(i64 noundef %diagoffp, i32 noundef %uplop, i32 noundef %transp, i64 noundef %m, i64 noundef %n, ptr noundef %p, i64 noundef %rs_p, i64 noundef %cs_p, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %diagoffp.addr = alloca i64, align 8
  %uplop.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %rs_p.addr = alloca i64, align 8
  %cs_p.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %p_cast = alloca ptr, align 8
  %c_cast = alloca ptr, align 8
  store i64 %diagoffp, ptr %diagoffp.addr, align 8, !tbaa !9
  store i32 %uplop, ptr %uplop.addr, align 4, !tbaa !8
  store i32 %transp, ptr %transp.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !9
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %rs_p, ptr %rs_p.addr, align 8, !tbaa !9
  store i64 %cs_p, ptr %cs_p.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !9
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !9
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_cast) #3
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %0, ptr %p_cast, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_cast) #3
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  store ptr %1, ptr %c_cast, align 8, !tbaa !4
  %2 = load i64, ptr %diagoffp.addr, align 8, !tbaa !9
  %3 = load i32, ptr %uplop.addr, align 4, !tbaa !8
  %4 = load i32, ptr %transp.addr, align 4, !tbaa !8
  %5 = load i64, ptr %m.addr, align 8, !tbaa !9
  %6 = load i64, ptr %n.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %p_cast, align 8, !tbaa !4
  %8 = load i64, ptr %rs_p.addr, align 8, !tbaa !9
  %9 = load i64, ptr %cs_p.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %c_cast, align 8, !tbaa !4
  %11 = load i64, ptr %rs_c.addr, align 8, !tbaa !9
  %12 = load i64, ptr %cs_c.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void @bli_scopym_ex(i64 noundef %2, i32 noundef 0, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_cast) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_cast) #3
  ret void
}

declare void @bli_scopym_ex(i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_dunpackm_unb_var1(i64 noundef %diagoffp, i32 noundef %uplop, i32 noundef %transp, i64 noundef %m, i64 noundef %n, ptr noundef %p, i64 noundef %rs_p, i64 noundef %cs_p, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %diagoffp.addr = alloca i64, align 8
  %uplop.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %rs_p.addr = alloca i64, align 8
  %cs_p.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %p_cast = alloca ptr, align 8
  %c_cast = alloca ptr, align 8
  store i64 %diagoffp, ptr %diagoffp.addr, align 8, !tbaa !9
  store i32 %uplop, ptr %uplop.addr, align 4, !tbaa !8
  store i32 %transp, ptr %transp.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !9
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %rs_p, ptr %rs_p.addr, align 8, !tbaa !9
  store i64 %cs_p, ptr %cs_p.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !9
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !9
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_cast) #3
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %0, ptr %p_cast, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_cast) #3
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  store ptr %1, ptr %c_cast, align 8, !tbaa !4
  %2 = load i64, ptr %diagoffp.addr, align 8, !tbaa !9
  %3 = load i32, ptr %uplop.addr, align 4, !tbaa !8
  %4 = load i32, ptr %transp.addr, align 4, !tbaa !8
  %5 = load i64, ptr %m.addr, align 8, !tbaa !9
  %6 = load i64, ptr %n.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %p_cast, align 8, !tbaa !4
  %8 = load i64, ptr %rs_p.addr, align 8, !tbaa !9
  %9 = load i64, ptr %cs_p.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %c_cast, align 8, !tbaa !4
  %11 = load i64, ptr %rs_c.addr, align 8, !tbaa !9
  %12 = load i64, ptr %cs_c.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void @bli_dcopym_ex(i64 noundef %2, i32 noundef 0, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_cast) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_cast) #3
  ret void
}

declare void @bli_dcopym_ex(i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_cunpackm_unb_var1(i64 noundef %diagoffp, i32 noundef %uplop, i32 noundef %transp, i64 noundef %m, i64 noundef %n, ptr noundef %p, i64 noundef %rs_p, i64 noundef %cs_p, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %diagoffp.addr = alloca i64, align 8
  %uplop.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %rs_p.addr = alloca i64, align 8
  %cs_p.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %p_cast = alloca ptr, align 8
  %c_cast = alloca ptr, align 8
  store i64 %diagoffp, ptr %diagoffp.addr, align 8, !tbaa !9
  store i32 %uplop, ptr %uplop.addr, align 4, !tbaa !8
  store i32 %transp, ptr %transp.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !9
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %rs_p, ptr %rs_p.addr, align 8, !tbaa !9
  store i64 %cs_p, ptr %cs_p.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !9
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !9
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_cast) #3
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %0, ptr %p_cast, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_cast) #3
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  store ptr %1, ptr %c_cast, align 8, !tbaa !4
  %2 = load i64, ptr %diagoffp.addr, align 8, !tbaa !9
  %3 = load i32, ptr %uplop.addr, align 4, !tbaa !8
  %4 = load i32, ptr %transp.addr, align 4, !tbaa !8
  %5 = load i64, ptr %m.addr, align 8, !tbaa !9
  %6 = load i64, ptr %n.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %p_cast, align 8, !tbaa !4
  %8 = load i64, ptr %rs_p.addr, align 8, !tbaa !9
  %9 = load i64, ptr %cs_p.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %c_cast, align 8, !tbaa !4
  %11 = load i64, ptr %rs_c.addr, align 8, !tbaa !9
  %12 = load i64, ptr %cs_c.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void @bli_ccopym_ex(i64 noundef %2, i32 noundef 0, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_cast) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_cast) #3
  ret void
}

declare void @bli_ccopym_ex(i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_zunpackm_unb_var1(i64 noundef %diagoffp, i32 noundef %uplop, i32 noundef %transp, i64 noundef %m, i64 noundef %n, ptr noundef %p, i64 noundef %rs_p, i64 noundef %cs_p, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %diagoffp.addr = alloca i64, align 8
  %uplop.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %rs_p.addr = alloca i64, align 8
  %cs_p.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %p_cast = alloca ptr, align 8
  %c_cast = alloca ptr, align 8
  store i64 %diagoffp, ptr %diagoffp.addr, align 8, !tbaa !9
  store i32 %uplop, ptr %uplop.addr, align 4, !tbaa !8
  store i32 %transp, ptr %transp.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !9
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %rs_p, ptr %rs_p.addr, align 8, !tbaa !9
  store i64 %cs_p, ptr %cs_p.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !9
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !9
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_cast) #3
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %0, ptr %p_cast, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_cast) #3
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  store ptr %1, ptr %c_cast, align 8, !tbaa !4
  %2 = load i64, ptr %diagoffp.addr, align 8, !tbaa !9
  %3 = load i32, ptr %uplop.addr, align 4, !tbaa !8
  %4 = load i32, ptr %transp.addr, align 4, !tbaa !8
  %5 = load i64, ptr %m.addr, align 8, !tbaa !9
  %6 = load i64, ptr %n.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %p_cast, align 8, !tbaa !4
  %8 = load i64, ptr %rs_p.addr, align 8, !tbaa !9
  %9 = load i64, ptr %cs_p.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %c_cast, align 8, !tbaa !4
  %11 = load i64, ptr %rs_c.addr, align 8, !tbaa !9
  %12 = load i64, ptr %cs_c.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void @bli_zcopym_ex(i64 noundef %2, i32 noundef 0, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_cast) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_cast) #3
  ret void
}

declare void @bli_zcopym_ex(i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %buffer, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_elem_size(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %elem_size = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 6
  %1 = load i64, ptr %elem_size, align 8, !tbaa !20
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_col_off(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 1
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !9
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_row_off(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !9
  ret i64 %1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !13, i64 48}
!12 = !{!"obj_s", !5, i64 0, !6, i64 8, !6, i64 24, !10, i64 40, !13, i64 48, !13, i64 52, !10, i64 56, !5, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !14, i64 96, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!13 = !{!"int", !6, i64 0}
!14 = !{!"", !15, i64 0, !15, i64 8}
!15 = !{!"double", !6, i64 0}
!16 = !{!12, !10, i64 40}
!17 = !{!12, !10, i64 72}
!18 = !{!12, !10, i64 80}
!19 = !{!12, !5, i64 64}
!20 = !{!12, !10, i64 56}
