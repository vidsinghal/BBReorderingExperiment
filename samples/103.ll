; ModuleID = 'samples/103.bc'
source_filename = "/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/src/protocols/reqrep/task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_task = type { i32, %struct.nn_msg, %struct.nn_msg, %struct.nn_timer, ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { %union.anon }
%union.anon = type { ptr, [24 x i8] }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_fsm = type { ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_worker_task = type { i32, ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }

; Function Attrs: nounwind uwtable
define void @nn_task_init(ptr noundef %self, i32 noundef %id) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %id, ptr %id.addr, align 4, !tbaa !8
  %0 = load i32, ptr %id.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %id1 = getelementptr inbounds %struct.nn_task, ptr %1, i32 0, i32 0
  store i32 %0, ptr %id1, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @nn_task_term(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!11, !9, i64 0}
!11 = !{!"nn_task", !9, i64 0, !12, i64 8, !12, i64 104, !14, i64 200, !5, i64 432}
!12 = !{!"nn_msg", !13, i64 0, !13, i64 32, !13, i64 64}
!13 = !{!"nn_chunkref", !6, i64 0}
!14 = !{!"nn_timer", !15, i64 0, !9, i64 88, !18, i64 96, !18, i64 120, !19, i64 144, !16, i64 176, !5, i64 216, !9, i64 224}
!15 = !{!"nn_fsm", !5, i64 0, !5, i64 8, !9, i64 16, !9, i64 20, !5, i64 24, !5, i64 32, !5, i64 40, !16, i64 48}
!16 = !{!"nn_fsm_event", !5, i64 0, !9, i64 8, !5, i64 16, !9, i64 24, !17, i64 32}
!17 = !{!"nn_queue_item", !5, i64 0}
!18 = !{!"nn_worker_task", !9, i64 0, !5, i64 8, !17, i64 16}
!19 = !{!"nn_worker_timer", !5, i64 0, !20, i64 8}
!20 = !{!"nn_timerset_hndl", !21, i64 0, !22, i64 16}
!21 = !{!"nn_list_item", !5, i64 0, !5, i64 8}
!22 = !{!"long", !6, i64 0}
