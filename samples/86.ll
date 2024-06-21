; ModuleID = 'samples/86.bc'
source_filename = "frame/ind/cntx/bli_cntx_ind_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.func_s = type { [4 x ptr] }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

@bli_cntx_ind_stage_fp = internal global [7 x ptr] [ptr @bli_cntx_3mh_stage, ptr @bli_cntx_3m1_stage, ptr @bli_cntx_4mh_stage, ptr @bli_cntx_4mb_stage, ptr @bli_cntx_4m1_stage, ptr @bli_cntx_1m_stage, ptr @bli_cntx_nat_stage], align 16

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_ind_stage(i32 noundef %method, i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %method.addr = alloca i32, align 4
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %method, ptr %method.addr, align 4, !tbaa !4
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #2
  %0 = load i32, ptr %method.addr, align 4, !tbaa !4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x ptr], ptr @bli_cntx_ind_stage_fp, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %1, ptr %func, align 8, !tbaa !9
  %2 = load ptr, ptr %func, align 8, !tbaa !9
  %3 = load i64, ptr %stage.addr, align 8, !tbaa !7
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %2(i64 noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_3mh_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i64, ptr %stage.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 5636096, ptr noundef %1)
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 5701632, ptr noundef %2)
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %stage.addr, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %3, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 5898240, ptr noundef %4)
  %5 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 5963776, ptr noundef %5)
  br label %if.end

if.else3:                                         ; preds = %if.else
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 6160384, ptr noundef %6)
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 6225920, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_cntx_set_schema_a_block(i32 noundef %schema, ptr noundef %cntx) #0 {
entry:
  %schema.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %schema, ptr %schema.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i32, ptr %schema.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %schema_a_block = getelementptr inbounds %struct.cntx_s, ptr %1, i32 0, i32 17
  store i32 %0, ptr %schema_a_block, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_cntx_set_schema_b_panel(i32 noundef %schema, ptr noundef %cntx) #0 {
entry:
  %schema.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %schema, ptr %schema.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i32, ptr %schema.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %schema_b_panel = getelementptr inbounds %struct.cntx_s, ptr %1, i32 0, i32 18
  store i32 %0, ptr %schema_b_panel, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_3m1_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_4mh_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i64, ptr %stage.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 5636096, ptr noundef %1)
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 5701632, ptr noundef %2)
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %stage.addr, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %3, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 5898240, ptr noundef %4)
  %5 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 5963776, ptr noundef %5)
  br label %if.end7

if.else3:                                         ; preds = %if.else
  %6 = load i64, ptr %stage.addr, align 8, !tbaa !7
  %cmp4 = icmp eq i64 %6, 2
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 5636096, ptr noundef %7)
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 5963776, ptr noundef %8)
  br label %if.end

if.else6:                                         ; preds = %if.else3
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_a_block(i32 noundef 5898240, ptr noundef %9)
  %10 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cntx_set_schema_b_panel(i32 noundef 5701632, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_4mb_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_4m1_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_1m_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_nat_stage(i64 noundef %stage, ptr noundef %cntx) #0 {
entry:
  %stage.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  store i64 %stage, ptr %stage.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !5, i64 6004}
!12 = !{!"cntx_s", !5, i64 0, !5, i64 704, !5, i64 752, !5, i64 1456, !5, i64 1648, !5, i64 1840, !5, i64 1864, !5, i64 1960, !5, i64 2152, !5, i64 2248, !5, i64 2952, !5, i64 3240, !5, i64 3280, !5, i64 3440, !5, i64 3920, !5, i64 4976, !5, i64 6000, !5, i64 6004, !5, i64 6008, !5, i64 6012}
!13 = !{!12, !5, i64 6008}
