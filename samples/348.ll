; ModuleID = 'samples/348.bc'
source_filename = "frame/1m/packm/bli_packm_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.dcomplex = type { double, double }
%struct.constdata_s = type { float, double, %struct.scomplex, %struct.dcomplex, i64 }
%struct.scomplex = type { float, float }

@BLIS_ONE = external global %struct.obj_s, align 8

; Function Attrs: nounwind uwtable
define ptr @bli_packm_scalar(ptr noundef %kappa, ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %kappa.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %dt_p = alloca i32, align 4
  %schema = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kappa, ptr %kappa.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_p) #3
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_dt(ptr noundef %0)
  store i32 %call, ptr %dt_p, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %schema) #3
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call1 = call i32 @bli_obj_pack_schema(ptr noundef %1)
  store i32 %call1, ptr %schema, align 4, !tbaa !8
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call2 = call zeroext i1 @bli_obj_scalar_has_nonzero_imag(ptr noundef %2)
  br i1 %call2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %schema, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_nat_packed(i32 noundef %3)
  br i1 %call3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %kappa.addr, align 8, !tbaa !4
  call void @bli_obj_scalar_detach(ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @bli_obj_scalar_reset(ptr noundef %6)
  %7 = load i32, ptr %dt_p, align 4, !tbaa !8
  %8 = load ptr, ptr %kappa.addr, align 8, !tbaa !4
  %call4 = call ptr @bli_obj_buffer_for_1x1(i32 noundef %7, ptr noundef %8)
  store ptr %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32, ptr %dt_p, align 4, !tbaa !8
  %call5 = call ptr @bli_obj_buffer_for_1x1(i32 noundef %9, ptr noundef @BLIS_ONE)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %schema) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_p) #3
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
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
  %1 = load i32, ptr %info, align 8, !tbaa !9
  %and = and i32 %1, 7
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_pack_schema(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !9
  %and = and i32 %1, 8323072
  ret i32 %and
}

declare zeroext i1 @bli_obj_scalar_has_nonzero_imag(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_nat_packed(i32 noundef %schema) #0 {
entry:
  %schema.addr = alloca i32, align 4
  store i32 %schema, ptr %schema.addr, align 4, !tbaa !8
  %0 = load i32, ptr %schema.addr, align 4, !tbaa !8
  %and = and i32 %0, 3932160
  %cmp = icmp eq i32 %and, 0
  ret i1 %cmp
}

declare void @bli_obj_scalar_detach(ptr noundef, ptr noundef) #2

declare void @bli_obj_scalar_reset(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer_for_1x1(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_obj_is_const(ptr noundef %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call1 = call ptr @bli_obj_buffer_for_const(i32 noundef %1, ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call2 = call ptr @bli_obj_buffer_at_off(ptr noundef %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_const(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call i32 @bli_obj_dt(ptr noundef %0)
  %cmp = icmp eq i32 %call, 5
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer_for_const(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @bli_obj_buffer(ptr noundef %1)
  %s = getelementptr inbounds %struct.constdata_s, ptr %call, i32 0, i32 0
  store ptr %s, ptr %p, align 8, !tbaa !4
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call3 = call ptr @bli_obj_buffer(ptr noundef %3)
  %d = getelementptr inbounds %struct.constdata_s, ptr %call3, i32 0, i32 1
  store ptr %d, ptr %p, align 8, !tbaa !4
  br label %if.end15

if.else4:                                         ; preds = %if.else
  %4 = load i32, ptr %dt.addr, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call7 = call ptr @bli_obj_buffer(ptr noundef %5)
  %c = getelementptr inbounds %struct.constdata_s, ptr %call7, i32 0, i32 2
  store ptr %c, ptr %p, align 8, !tbaa !4
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %6 = load i32, ptr %dt.addr, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %6, 3
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call11 = call ptr @bli_obj_buffer(ptr noundef %7)
  %z = getelementptr inbounds %struct.constdata_s, ptr %call11, i32 0, i32 3
  store ptr %z, ptr %p, align 8, !tbaa !4
  br label %if.end

if.else12:                                        ; preds = %if.else8
  %8 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call13 = call ptr @bli_obj_buffer(ptr noundef %8)
  %i = getelementptr inbounds %struct.constdata_s, ptr %call13, i32 0, i32 4
  store ptr %i, ptr %p, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  ret ptr %9
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
define internal ptr @bli_obj_buffer(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %buffer, align 8, !tbaa !15
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_elem_size(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %elem_size = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 6
  %1 = load i64, ptr %elem_size, align 8, !tbaa !16
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
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !17
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

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_row_off(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %off = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i64], ptr %off, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !17
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_obj_row_stride(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %rs = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 8
  %1 = load i64, ptr %rs, align 8, !tbaa !19
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
!9 = !{!10, !12, i64 48}
!10 = !{!"obj_s", !5, i64 0, !6, i64 8, !6, i64 24, !11, i64 40, !12, i64 48, !12, i64 52, !11, i64 56, !5, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !13, i64 96, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184}
!11 = !{!"long", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!"dcomplex", !14, i64 0, !14, i64 8}
!14 = !{!"double", !6, i64 0}
!15 = !{!10, !5, i64 64}
!16 = !{!10, !11, i64 56}
!17 = !{!11, !11, i64 0}
!18 = !{!10, !11, i64 80}
!19 = !{!10, !11, i64 72}
