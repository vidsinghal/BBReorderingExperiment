; ModuleID = 'samples/761.bc'
source_filename = "threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct._xmlMutex = type { %union.pthread_mutex_t }
%struct._xmlRMutex = type { %union.pthread_mutex_t, i32, i32, i64, %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct._xmlGlobalState = type { ptr, %struct._xmlSAXLocator, %struct._xmlSAXHandlerV1, %struct._xmlSAXHandlerV1, %struct._xmlSAXHandlerV1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct._xmlError, ptr, ptr, ptr }
%struct._xmlSAXLocator = type { ptr, ptr, ptr, ptr }
%struct._xmlSAXHandlerV1 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct._xmlError = type { i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, ptr }

@libxml_is_threaded = internal global i32 -1, align 4, !dbg !0
@global_init_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !573
@once_control = internal global i32 0, align 4, !dbg !604
@globalkey = internal global i32 0, align 4, !dbg !566
@mainthread = internal global i64 0, align 8, !dbg !570
@xmlLibraryLock = internal global ptr null, align 8, !dbg !612
@once_control_init = internal global i32 0, align 4, !dbg !658
@.str = private unnamed_addr constant [34 x i8] c"xmlGetGlobalState: out of memory\0A\00", align 1, !dbg !607

; Function Attrs: nounwind uwtable
define ptr @xmlNewMutex() #0 !dbg !666 {
entry:
  %retval = alloca ptr, align 8
  %tok = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tok) #10, !dbg !677
  tail call void @llvm.dbg.declare(metadata ptr %tok, metadata !676, metadata !DIExpression()), !dbg !678
  %call = call noalias ptr @malloc(i64 noundef 40) #11, !dbg !679
  store ptr %call, ptr %tok, align 8, !dbg !681, !tbaa !682
  %cmp = icmp eq ptr %call, null, !dbg !686
  br i1 %cmp, label %if.then, label %if.end, !dbg !687

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !688

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !689, !tbaa !691
  %cmp1 = icmp ne i32 %0, 0, !dbg !693
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !694

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %tok, align 8, !dbg !695, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlMutex, ptr %1, i32 0, i32 0, !dbg !696
  %call3 = call i32 @pthread_mutex_init(ptr noundef %lock, ptr noundef null) #10, !dbg !697
  br label %if.end4, !dbg !697

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr %tok, align 8, !dbg !698, !tbaa !682
  store ptr %2, ptr %retval, align 8, !dbg !699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !699

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tok) #10, !dbg !700
  %3 = load ptr, ptr %retval, align 8, !dbg !700
  ret ptr %3, !dbg !700
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !701 noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare !dbg !703 extern_weak i32 @pthread_mutex_init(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @xmlFreeMutex(ptr noundef %tok) #0 !dbg !718 {
entry:
  %tok.addr = alloca ptr, align 8
  store ptr %tok, ptr %tok.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !722, metadata !DIExpression()), !dbg !723
  %0 = load ptr, ptr %tok.addr, align 8, !dbg !724, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !726
  br i1 %cmp, label %if.then, label %if.end, !dbg !727

if.then:                                          ; preds = %entry
  br label %return, !dbg !728

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !729, !tbaa !691
  %cmp1 = icmp ne i32 %1, 0, !dbg !731
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !732

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %tok.addr, align 8, !dbg !733, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlMutex, ptr %2, i32 0, i32 0, !dbg !734
  %call = call i32 @pthread_mutex_destroy(ptr noundef %lock) #10, !dbg !735
  br label %if.end3, !dbg !735

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %tok.addr, align 8, !dbg !736, !tbaa !682
  call void @free(ptr noundef %3) #10, !dbg !737
  br label %return, !dbg !738

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !738
}

; Function Attrs: nounwind
declare !dbg !739 extern_weak i32 @pthread_mutex_destroy(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !742 void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @xmlMutexLock(ptr noundef %tok) #0 !dbg !743 {
entry:
  %tok.addr = alloca ptr, align 8
  store ptr %tok, ptr %tok.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !745, metadata !DIExpression()), !dbg !746
  %0 = load ptr, ptr %tok.addr, align 8, !dbg !747, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !749
  br i1 %cmp, label %if.then, label %if.end, !dbg !750

if.then:                                          ; preds = %entry
  br label %if.end3, !dbg !751

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !752, !tbaa !691
  %cmp1 = icmp ne i32 %1, 0, !dbg !754
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !755

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %tok.addr, align 8, !dbg !756, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlMutex, ptr %2, i32 0, i32 0, !dbg !757
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #10, !dbg !758
  br label %if.end3, !dbg !758

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !759
}

; Function Attrs: nounwind
declare !dbg !760 extern_weak i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @xmlMutexUnlock(ptr noundef %tok) #0 !dbg !761 {
entry:
  %tok.addr = alloca ptr, align 8
  store ptr %tok, ptr %tok.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !763, metadata !DIExpression()), !dbg !764
  %0 = load ptr, ptr %tok.addr, align 8, !dbg !765, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !767
  br i1 %cmp, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  br label %if.end3, !dbg !769

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !770, !tbaa !691
  %cmp1 = icmp ne i32 %1, 0, !dbg !772
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !773

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %tok.addr, align 8, !dbg !774, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlMutex, ptr %2, i32 0, i32 0, !dbg !775
  %call = call i32 @pthread_mutex_unlock(ptr noundef %lock) #10, !dbg !776
  br label %if.end3, !dbg !776

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !777
}

; Function Attrs: nounwind
declare !dbg !778 extern_weak i32 @pthread_mutex_unlock(ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @xmlNewRMutex() #0 !dbg !779 {
entry:
  %retval = alloca ptr, align 8
  %tok = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tok) #10, !dbg !784
  tail call void @llvm.dbg.declare(metadata ptr %tok, metadata !783, metadata !DIExpression()), !dbg !785
  %call = call noalias ptr @malloc(i64 noundef 104) #11, !dbg !786
  store ptr %call, ptr %tok, align 8, !dbg !788, !tbaa !682
  %cmp = icmp eq ptr %call, null, !dbg !789
  br i1 %cmp, label %if.then, label %if.end, !dbg !790

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !791

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !792, !tbaa !691
  %cmp1 = icmp ne i32 %0, 0, !dbg !794
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !795

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr %tok, align 8, !dbg !796, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlRMutex, ptr %1, i32 0, i32 0, !dbg !798
  %call3 = call i32 @pthread_mutex_init(ptr noundef %lock, ptr noundef null) #10, !dbg !799
  %2 = load ptr, ptr %tok, align 8, !dbg !800, !tbaa !682
  %held = getelementptr inbounds %struct._xmlRMutex, ptr %2, i32 0, i32 1, !dbg !801
  store i32 0, ptr %held, align 8, !dbg !802, !tbaa !803
  %3 = load ptr, ptr %tok, align 8, !dbg !806, !tbaa !682
  %waiters = getelementptr inbounds %struct._xmlRMutex, ptr %3, i32 0, i32 2, !dbg !807
  store i32 0, ptr %waiters, align 4, !dbg !808, !tbaa !809
  %4 = load ptr, ptr %tok, align 8, !dbg !810, !tbaa !682
  %cv = getelementptr inbounds %struct._xmlRMutex, ptr %4, i32 0, i32 4, !dbg !811
  %call4 = call i32 @pthread_cond_init(ptr noundef %cv, ptr noundef null) #10, !dbg !812
  br label %if.end5, !dbg !813

if.end5:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %tok, align 8, !dbg !814, !tbaa !682
  store ptr %5, ptr %retval, align 8, !dbg !815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !815

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tok) #10, !dbg !816
  %6 = load ptr, ptr %retval, align 8, !dbg !816
  ret ptr %6, !dbg !816
}

; Function Attrs: nounwind
declare !dbg !817 extern_weak i32 @pthread_cond_init(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @xmlFreeRMutex(ptr noundef %tok) #0 !dbg !830 {
entry:
  %tok.addr = alloca ptr, align 8
  store ptr %tok, ptr %tok.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !834, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %tok.addr, align 8, !dbg !836, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !838
  br i1 %cmp, label %if.then, label %if.end, !dbg !839

if.then:                                          ; preds = %entry
  br label %return, !dbg !840

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !841, !tbaa !691
  %cmp1 = icmp ne i32 %1, 0, !dbg !843
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !844

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %tok.addr, align 8, !dbg !845, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlRMutex, ptr %2, i32 0, i32 0, !dbg !847
  %call = call i32 @pthread_mutex_destroy(ptr noundef %lock) #10, !dbg !848
  %3 = load ptr, ptr %tok.addr, align 8, !dbg !849, !tbaa !682
  %cv = getelementptr inbounds %struct._xmlRMutex, ptr %3, i32 0, i32 4, !dbg !850
  %call3 = call i32 @pthread_cond_destroy(ptr noundef %cv) #10, !dbg !851
  br label %if.end4, !dbg !852

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %tok.addr, align 8, !dbg !853, !tbaa !682
  call void @free(ptr noundef %4) #10, !dbg !854
  br label %return, !dbg !855

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !855
}

; Function Attrs: nounwind
declare !dbg !856 extern_weak i32 @pthread_cond_destroy(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @xmlRMutexLock(ptr noundef %tok) #0 !dbg !859 {
entry:
  %tok.addr = alloca ptr, align 8
  store ptr %tok, ptr %tok.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !861, metadata !DIExpression()), !dbg !862
  %0 = load ptr, ptr %tok.addr, align 8, !dbg !863, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !865
  br i1 %cmp, label %if.then, label %if.end, !dbg !866

if.then:                                          ; preds = %entry
  br label %return, !dbg !867

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !868, !tbaa !691
  %cmp1 = icmp eq i32 %1, 0, !dbg !870
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !871

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !872

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %tok.addr, align 8, !dbg !873, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlRMutex, ptr %2, i32 0, i32 0, !dbg !874
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #10, !dbg !875
  %3 = load ptr, ptr %tok.addr, align 8, !dbg !876, !tbaa !682
  %held = getelementptr inbounds %struct._xmlRMutex, ptr %3, i32 0, i32 1, !dbg !878
  %4 = load i32, ptr %held, align 8, !dbg !878, !tbaa !803
  %tobool = icmp ne i32 %4, 0, !dbg !876
  br i1 %tobool, label %if.then4, label %if.end19, !dbg !879

if.then4:                                         ; preds = %if.end3
  %5 = load ptr, ptr %tok.addr, align 8, !dbg !880, !tbaa !682
  %tid = getelementptr inbounds %struct._xmlRMutex, ptr %5, i32 0, i32 3, !dbg !883
  %6 = load i64, ptr %tid, align 8, !dbg !883, !tbaa !884
  %call5 = call i64 @pthread_self() #12, !dbg !885
  %call6 = call i32 @pthread_equal(i64 noundef %6, i64 noundef %call5) #12, !dbg !886
  %tobool7 = icmp ne i32 %call6, 0, !dbg !886
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !887

if.then8:                                         ; preds = %if.then4
  %7 = load ptr, ptr %tok.addr, align 8, !dbg !888, !tbaa !682
  %held9 = getelementptr inbounds %struct._xmlRMutex, ptr %7, i32 0, i32 1, !dbg !890
  %8 = load i32, ptr %held9, align 8, !dbg !891, !tbaa !803
  %inc = add i32 %8, 1, !dbg !891
  store i32 %inc, ptr %held9, align 8, !dbg !891, !tbaa !803
  %9 = load ptr, ptr %tok.addr, align 8, !dbg !892, !tbaa !682
  %lock10 = getelementptr inbounds %struct._xmlRMutex, ptr %9, i32 0, i32 0, !dbg !893
  %call11 = call i32 @pthread_mutex_unlock(ptr noundef %lock10) #10, !dbg !894
  br label %return, !dbg !895

if.else:                                          ; preds = %if.then4
  %10 = load ptr, ptr %tok.addr, align 8, !dbg !896, !tbaa !682
  %waiters = getelementptr inbounds %struct._xmlRMutex, ptr %10, i32 0, i32 2, !dbg !898
  %11 = load i32, ptr %waiters, align 4, !dbg !899, !tbaa !809
  %inc12 = add i32 %11, 1, !dbg !899
  store i32 %inc12, ptr %waiters, align 4, !dbg !899, !tbaa !809
  br label %while.cond, !dbg !900

while.cond:                                       ; preds = %while.body, %if.else
  %12 = load ptr, ptr %tok.addr, align 8, !dbg !901, !tbaa !682
  %held13 = getelementptr inbounds %struct._xmlRMutex, ptr %12, i32 0, i32 1, !dbg !902
  %13 = load i32, ptr %held13, align 8, !dbg !902, !tbaa !803
  %tobool14 = icmp ne i32 %13, 0, !dbg !900
  br i1 %tobool14, label %while.body, label %while.end, !dbg !900

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %tok.addr, align 8, !dbg !903, !tbaa !682
  %cv = getelementptr inbounds %struct._xmlRMutex, ptr %14, i32 0, i32 4, !dbg !904
  %15 = load ptr, ptr %tok.addr, align 8, !dbg !905, !tbaa !682
  %lock15 = getelementptr inbounds %struct._xmlRMutex, ptr %15, i32 0, i32 0, !dbg !906
  %call16 = call i32 @pthread_cond_wait(ptr noundef %cv, ptr noundef %lock15), !dbg !907
  br label %while.cond, !dbg !900, !llvm.loop !908

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %tok.addr, align 8, !dbg !911, !tbaa !682
  %waiters17 = getelementptr inbounds %struct._xmlRMutex, ptr %16, i32 0, i32 2, !dbg !912
  %17 = load i32, ptr %waiters17, align 4, !dbg !913, !tbaa !809
  %dec = add i32 %17, -1, !dbg !913
  store i32 %dec, ptr %waiters17, align 4, !dbg !913, !tbaa !809
  br label %if.end18

if.end18:                                         ; preds = %while.end
  br label %if.end19, !dbg !914

if.end19:                                         ; preds = %if.end18, %if.end3
  %call20 = call i64 @pthread_self() #12, !dbg !915
  %18 = load ptr, ptr %tok.addr, align 8, !dbg !916, !tbaa !682
  %tid21 = getelementptr inbounds %struct._xmlRMutex, ptr %18, i32 0, i32 3, !dbg !917
  store i64 %call20, ptr %tid21, align 8, !dbg !918, !tbaa !884
  %19 = load ptr, ptr %tok.addr, align 8, !dbg !919, !tbaa !682
  %held22 = getelementptr inbounds %struct._xmlRMutex, ptr %19, i32 0, i32 1, !dbg !920
  store i32 1, ptr %held22, align 8, !dbg !921, !tbaa !803
  %20 = load ptr, ptr %tok.addr, align 8, !dbg !922, !tbaa !682
  %lock23 = getelementptr inbounds %struct._xmlRMutex, ptr %20, i32 0, i32 0, !dbg !923
  %call24 = call i32 @pthread_mutex_unlock(ptr noundef %lock23) #10, !dbg !924
  br label %return, !dbg !925

return:                                           ; preds = %if.end19, %if.then8, %if.then2, %if.then
  ret void, !dbg !925
}

; Function Attrs: inlinehint nounwind willreturn memory(none) uwtable
define weak i32 @pthread_equal(i64 noundef %__thread1, i64 noundef %__thread2) #4 !dbg !926 {
entry:
  %__thread1.addr = alloca i64, align 8
  %__thread2.addr = alloca i64, align 8
  store i64 %__thread1, ptr %__thread1.addr, align 8, !tbaa !932
  tail call void @llvm.dbg.declare(metadata ptr %__thread1.addr, metadata !930, metadata !DIExpression()), !dbg !933
  store i64 %__thread2, ptr %__thread2.addr, align 8, !tbaa !932
  tail call void @llvm.dbg.declare(metadata ptr %__thread2.addr, metadata !931, metadata !DIExpression()), !dbg !933
  %0 = load i64, ptr %__thread1.addr, align 8, !dbg !934, !tbaa !932
  %1 = load i64, ptr %__thread2.addr, align 8, !dbg !935, !tbaa !932
  %cmp = icmp eq i64 %0, %1, !dbg !936
  %conv = zext i1 %cmp to i32, !dbg !936
  ret i32 %conv, !dbg !937
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !938 extern_weak i64 @pthread_self() #5

declare !dbg !941 extern_weak i32 @pthread_cond_wait(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define void @xmlRMutexUnlock(ptr noundef %tok) #0 !dbg !945 {
entry:
  %tok.addr = alloca ptr, align 8
  store ptr %tok, ptr %tok.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !947, metadata !DIExpression()), !dbg !948
  %0 = load ptr, ptr %tok.addr, align 8, !dbg !949, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %entry
  br label %return, !dbg !953

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !954, !tbaa !691
  %cmp1 = icmp eq i32 %1, 0, !dbg !956
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !957

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !958

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %tok.addr, align 8, !dbg !959, !tbaa !682
  %lock = getelementptr inbounds %struct._xmlRMutex, ptr %2, i32 0, i32 0, !dbg !960
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #10, !dbg !961
  %3 = load ptr, ptr %tok.addr, align 8, !dbg !962, !tbaa !682
  %held = getelementptr inbounds %struct._xmlRMutex, ptr %3, i32 0, i32 1, !dbg !963
  %4 = load i32, ptr %held, align 8, !dbg !964, !tbaa !803
  %dec = add i32 %4, -1, !dbg !964
  store i32 %dec, ptr %held, align 8, !dbg !964, !tbaa !803
  %5 = load ptr, ptr %tok.addr, align 8, !dbg !965, !tbaa !682
  %held4 = getelementptr inbounds %struct._xmlRMutex, ptr %5, i32 0, i32 1, !dbg !967
  %6 = load i32, ptr %held4, align 8, !dbg !967, !tbaa !803
  %cmp5 = icmp eq i32 %6, 0, !dbg !968
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !969

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %tok.addr, align 8, !dbg !970, !tbaa !682
  %waiters = getelementptr inbounds %struct._xmlRMutex, ptr %7, i32 0, i32 2, !dbg !973
  %8 = load i32, ptr %waiters, align 4, !dbg !973, !tbaa !809
  %tobool = icmp ne i32 %8, 0, !dbg !970
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !974

if.then7:                                         ; preds = %if.then6
  %9 = load ptr, ptr %tok.addr, align 8, !dbg !975, !tbaa !682
  %cv = getelementptr inbounds %struct._xmlRMutex, ptr %9, i32 0, i32 4, !dbg !976
  %call8 = call i32 @pthread_cond_signal(ptr noundef %cv) #10, !dbg !977
  br label %if.end9, !dbg !977

if.end9:                                          ; preds = %if.then7, %if.then6
  %10 = load ptr, ptr %tok.addr, align 8, !dbg !978, !tbaa !682
  %tid = getelementptr inbounds %struct._xmlRMutex, ptr %10, i32 0, i32 3, !dbg !979
  call void @llvm.memset.p0.i64(ptr align 8 %tid, i8 0, i64 8, i1 false), !dbg !980
  br label %if.end10, !dbg !981

if.end10:                                         ; preds = %if.end9, %if.end3
  %11 = load ptr, ptr %tok.addr, align 8, !dbg !982, !tbaa !682
  %lock11 = getelementptr inbounds %struct._xmlRMutex, ptr %11, i32 0, i32 0, !dbg !983
  %call12 = call i32 @pthread_mutex_unlock(ptr noundef %lock11) #10, !dbg !984
  br label %return, !dbg !985

return:                                           ; preds = %if.end10, %if.then2, %if.then
  ret void, !dbg !985
}

; Function Attrs: nounwind
declare !dbg !986 extern_weak i32 @pthread_cond_signal(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define void @__xmlGlobalInitMutexLock() #0 !dbg !987 {
entry:
  br i1 icmp eq (ptr @pthread_mutex_lock, ptr null), label %if.then, label %if.end, !dbg !990

if.then:                                          ; preds = %entry
  br label %return, !dbg !991

if.end:                                           ; preds = %entry
  %call = call i32 @pthread_mutex_lock(ptr noundef @global_init_lock) #10, !dbg !993
  br label %return, !dbg !994

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !994
}

; Function Attrs: nounwind uwtable
define void @__xmlGlobalInitMutexUnlock() #0 !dbg !995 {
entry:
  br i1 icmp eq (ptr @pthread_mutex_unlock, ptr null), label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  br label %return, !dbg !997

if.end:                                           ; preds = %entry
  %call = call i32 @pthread_mutex_unlock(ptr noundef @global_init_lock) #10, !dbg !999
  br label %return, !dbg !1000

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1000
}

; Function Attrs: nounwind uwtable
define void @__xmlGlobalInitMutexDestroy() #0 !dbg !1001 {
entry:
  ret void, !dbg !1002
}

; Function Attrs: nounwind uwtable
define ptr @xmlGetGlobalState() #0 !dbg !1003 {
entry:
  %retval = alloca ptr, align 8
  %globalval = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tsd = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %globalval) #10, !dbg !1012
  tail call void @llvm.dbg.declare(metadata ptr %globalval, metadata !1008, metadata !DIExpression()), !dbg !1013
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !1014, !tbaa !691
  %cmp = icmp eq i32 %0, 0, !dbg !1016
  br i1 %cmp, label %if.then, label %if.end, !dbg !1017

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !1018

if.end:                                           ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @once_control, ptr noundef @xmlOnceInit), !dbg !1019
  %1 = load i32, ptr @globalkey, align 4, !dbg !1020, !tbaa !691
  %call1 = call ptr @pthread_getspecific(i32 noundef %1) #10, !dbg !1021
  store ptr %call1, ptr %globalval, align 8, !dbg !1022, !tbaa !682
  %cmp2 = icmp eq ptr %call1, null, !dbg !1023
  br i1 %cmp2, label %if.then3, label %if.end9, !dbg !1024

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !1025
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1009, metadata !DIExpression()), !dbg !1026
  %call4 = call ptr @xmlNewGlobalState(), !dbg !1027
  store ptr %call4, ptr %tsd, align 8, !dbg !1026, !tbaa !682
  %2 = load ptr, ptr %tsd, align 8, !dbg !1028, !tbaa !682
  %cmp5 = icmp eq ptr %2, null, !dbg !1030
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1031

if.then6:                                         ; preds = %if.then3
  store ptr null, ptr %retval, align 8, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

if.end7:                                          ; preds = %if.then3
  %3 = load i32, ptr @globalkey, align 4, !dbg !1033, !tbaa !691
  %4 = load ptr, ptr %tsd, align 8, !dbg !1034, !tbaa !682
  %call8 = call i32 @pthread_setspecific(i32 noundef %3, ptr noundef %4) #10, !dbg !1035
  %5 = load ptr, ptr %tsd, align 8, !dbg !1036, !tbaa !682
  store ptr %5, ptr %retval, align 8, !dbg !1037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1037

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !1038
  br label %cleanup10

if.end9:                                          ; preds = %if.end
  %6 = load ptr, ptr %globalval, align 8, !dbg !1039, !tbaa !682
  store ptr %6, ptr %retval, align 8, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10, !dbg !1040

cleanup10:                                        ; preds = %if.end9, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %globalval) #10, !dbg !1041
  %7 = load ptr, ptr %retval, align 8, !dbg !1041
  ret ptr %7, !dbg !1041
}

declare !dbg !1042 extern_weak i32 @pthread_once(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal void @xmlOnceInit() #0 !dbg !1047 {
entry:
  %call = call i32 @pthread_key_create(ptr noundef @globalkey, ptr noundef @xmlFreeGlobalState) #10, !dbg !1048
  %call1 = call i64 @pthread_self() #12, !dbg !1049
  store i64 %call1, ptr @mainthread, align 8, !dbg !1050, !tbaa !932
  %call2 = call i32 @__xmlInitializeDict(), !dbg !1051
  ret void, !dbg !1052
}

; Function Attrs: nounwind
declare !dbg !1053 extern_weak ptr @pthread_getspecific(i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @xmlNewGlobalState() #0 !dbg !1056 {
entry:
  %retval = alloca ptr, align 8
  %gs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gs) #10, !dbg !1059
  tail call void @llvm.dbg.declare(metadata ptr %gs, metadata !1058, metadata !DIExpression()), !dbg !1060
  %call = call noalias ptr @malloc(i64 noundef 968) #11, !dbg !1061
  store ptr %call, ptr %gs, align 8, !dbg !1062, !tbaa !682
  %0 = load ptr, ptr %gs, align 8, !dbg !1063, !tbaa !682
  %cmp = icmp eq ptr %0, null, !dbg !1065
  br i1 %cmp, label %if.then, label %if.end, !dbg !1066

if.then:                                          ; preds = %entry
  %call1 = call ptr @__xmlGenericError(), !dbg !1067
  %1 = load ptr, ptr %call1, align 8, !dbg !1067, !tbaa !682
  %call2 = call ptr @__xmlGenericErrorContext(), !dbg !1069
  %2 = load ptr, ptr %call2, align 8, !dbg !1069, !tbaa !682
  call void (ptr, ptr, ...) %1(ptr noundef %2, ptr noundef @.str), !dbg !1067
  store ptr null, ptr %retval, align 8, !dbg !1070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1070

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %gs, align 8, !dbg !1071, !tbaa !682
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 968, i1 false), !dbg !1072
  %4 = load ptr, ptr %gs, align 8, !dbg !1073, !tbaa !682
  call void @xmlInitializeGlobalState(ptr noundef %4), !dbg !1074
  %5 = load ptr, ptr %gs, align 8, !dbg !1075, !tbaa !682
  store ptr %5, ptr %retval, align 8, !dbg !1076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1076

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gs) #10, !dbg !1077
  %6 = load ptr, ptr %retval, align 8, !dbg !1077
  ret ptr %6, !dbg !1077
}

; Function Attrs: nounwind
declare !dbg !1078 extern_weak i32 @pthread_setspecific(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @xmlGetThreadId() #0 !dbg !1083 {
entry:
  %retval = alloca i32, align 4
  %id = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #10, !dbg !1089
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !1087, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1091
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1088, metadata !DIExpression()), !dbg !1092
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !1093, !tbaa !691
  %cmp = icmp eq i32 %0, 0, !dbg !1095
  br i1 %cmp, label %if.then, label %if.end, !dbg !1096

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1097

if.end:                                           ; preds = %entry
  %call = call i64 @pthread_self() #12, !dbg !1098
  store i64 %call, ptr %id, align 8, !dbg !1099, !tbaa !932
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ret, ptr align 8 %id, i64 4, i1 false), !dbg !1100
  %1 = load i32, ptr %ret, align 4, !dbg !1101, !tbaa !691
  store i32 %1, ptr %retval, align 4, !dbg !1102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1102

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1103
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #10, !dbg !1103
  %2 = load i32, ptr %retval, align 4, !dbg !1103
  ret i32 %2, !dbg !1103
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define i32 @xmlIsMainThread() #0 !dbg !1104 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !1105, !tbaa !691
  %cmp = icmp eq i32 %0, -1, !dbg !1107
  br i1 %cmp, label %if.then, label %if.end, !dbg !1108

if.then:                                          ; preds = %entry
  call void @xmlInitThreads(), !dbg !1109
  br label %if.end, !dbg !1109

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @libxml_is_threaded, align 4, !dbg !1110, !tbaa !691
  %cmp1 = icmp eq i32 %1, 0, !dbg !1112
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1113

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1114
  br label %return, !dbg !1114

if.end3:                                          ; preds = %if.end
  %call = call i32 @pthread_once(ptr noundef @once_control, ptr noundef @xmlOnceInit), !dbg !1115
  %2 = load i64, ptr @mainthread, align 8, !dbg !1116, !tbaa !932
  %call4 = call i64 @pthread_self() #12, !dbg !1117
  %call5 = call i32 @pthread_equal(i64 noundef %2, i64 noundef %call4) #12, !dbg !1118
  store i32 %call5, ptr %retval, align 4, !dbg !1119
  br label %return, !dbg !1119

return:                                           ; preds = %if.end3, %if.then2
  %3 = load i32, ptr %retval, align 4, !dbg !1120
  ret i32 %3, !dbg !1120
}

; Function Attrs: nounwind uwtable
define void @xmlInitThreads() #0 !dbg !1121 {
entry:
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !1122, !tbaa !691
  %cmp = icmp eq i32 %0, -1, !dbg !1124
  br i1 %cmp, label %if.then, label %if.end15, !dbg !1125

if.then:                                          ; preds = %entry
  br i1 icmp ne (ptr @pthread_once, ptr null), label %land.lhs.true, label %if.else, !dbg !1126

land.lhs.true:                                    ; preds = %if.then
  br i1 icmp ne (ptr @pthread_getspecific, ptr null), label %land.lhs.true1, label %if.else, !dbg !1129

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (ptr @pthread_setspecific, ptr null), label %land.lhs.true2, label %if.else, !dbg !1130

land.lhs.true2:                                   ; preds = %land.lhs.true1
  br i1 icmp ne (ptr @pthread_key_create, ptr null), label %land.lhs.true3, label %if.else, !dbg !1131

land.lhs.true3:                                   ; preds = %land.lhs.true2
  br i1 icmp ne (ptr @pthread_key_delete, ptr null), label %land.lhs.true4, label %if.else, !dbg !1132

land.lhs.true4:                                   ; preds = %land.lhs.true3
  br i1 icmp ne (ptr @pthread_mutex_init, ptr null), label %land.lhs.true5, label %if.else, !dbg !1133

land.lhs.true5:                                   ; preds = %land.lhs.true4
  br i1 icmp ne (ptr @pthread_mutex_destroy, ptr null), label %land.lhs.true6, label %if.else, !dbg !1134

land.lhs.true6:                                   ; preds = %land.lhs.true5
  br i1 icmp ne (ptr @pthread_mutex_lock, ptr null), label %land.lhs.true7, label %if.else, !dbg !1135

land.lhs.true7:                                   ; preds = %land.lhs.true6
  br i1 icmp ne (ptr @pthread_mutex_unlock, ptr null), label %land.lhs.true8, label %if.else, !dbg !1136

land.lhs.true8:                                   ; preds = %land.lhs.true7
  br i1 icmp ne (ptr @pthread_cond_init, ptr null), label %land.lhs.true9, label %if.else, !dbg !1137

land.lhs.true9:                                   ; preds = %land.lhs.true8
  br i1 icmp ne (ptr @pthread_cond_destroy, ptr null), label %land.lhs.true10, label %if.else, !dbg !1138

land.lhs.true10:                                  ; preds = %land.lhs.true9
  br i1 icmp ne (ptr @pthread_cond_wait, ptr null), label %land.lhs.true11, label %if.else, !dbg !1139

land.lhs.true11:                                  ; preds = %land.lhs.true10
  br i1 true, label %land.lhs.true12, label %if.else, !dbg !1140

land.lhs.true12:                                  ; preds = %land.lhs.true11
  br i1 icmp ne (ptr @pthread_self, ptr null), label %land.lhs.true13, label %if.else, !dbg !1141

land.lhs.true13:                                  ; preds = %land.lhs.true12
  br i1 icmp ne (ptr @pthread_cond_signal, ptr null), label %if.then14, label %if.else, !dbg !1142

if.then14:                                        ; preds = %land.lhs.true13
  store i32 1, ptr @libxml_is_threaded, align 4, !dbg !1143, !tbaa !691
  br label %if.end, !dbg !1145

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true12, %land.lhs.true11, %land.lhs.true10, %land.lhs.true9, %land.lhs.true8, %land.lhs.true7, %land.lhs.true6, %land.lhs.true5, %land.lhs.true4, %land.lhs.true3, %land.lhs.true2, %land.lhs.true1, %land.lhs.true, %if.then
  store i32 0, ptr @libxml_is_threaded, align 4, !dbg !1146, !tbaa !691
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end15, !dbg !1148

if.end15:                                         ; preds = %if.end, %entry
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define void @xmlLockLibrary() #0 !dbg !1150 {
entry:
  %0 = load ptr, ptr @xmlLibraryLock, align 8, !dbg !1151, !tbaa !682
  call void @xmlRMutexLock(ptr noundef %0), !dbg !1152
  ret void, !dbg !1153
}

; Function Attrs: nounwind uwtable
define void @xmlUnlockLibrary() #0 !dbg !1154 {
entry:
  %0 = load ptr, ptr @xmlLibraryLock, align 8, !dbg !1155, !tbaa !682
  call void @xmlRMutexUnlock(ptr noundef %0), !dbg !1156
  ret void, !dbg !1157
}

; Function Attrs: nounwind
declare !dbg !1158 extern_weak i32 @pthread_key_create(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1162 extern_weak i32 @pthread_key_delete(i32 noundef) #3

; Function Attrs: nounwind uwtable
define void @xmlCleanupThreads() #0 !dbg !1165 {
entry:
  %0 = load i32, ptr @libxml_is_threaded, align 4, !dbg !1166, !tbaa !691
  %cmp = icmp ne i32 %0, 0, !dbg !1168
  br i1 %cmp, label %if.then, label %if.end, !dbg !1169

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @globalkey, align 4, !dbg !1170, !tbaa !691
  %call = call i32 @pthread_key_delete(i32 noundef %1) #10, !dbg !1171
  br label %if.end, !dbg !1171

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @once_control_init, align 4, !dbg !1172, !tbaa !691
  store i32 %2, ptr @once_control, align 4, !dbg !1173, !tbaa !691
  ret void, !dbg !1174
}

declare !dbg !1175 ptr @__xmlGenericError() #6

declare !dbg !1179 ptr @__xmlGenericErrorContext() #6

declare !dbg !1183 void @xmlInitializeGlobalState(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal void @xmlFreeGlobalState(ptr noundef %state) #0 !dbg !1186 {
entry:
  %state.addr = alloca ptr, align 8
  %gs = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !682
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1188, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.start.p0(i64 8, ptr %gs) #10, !dbg !1191
  tail call void @llvm.dbg.declare(metadata ptr %gs, metadata !1189, metadata !DIExpression()), !dbg !1192
  %0 = load ptr, ptr %state.addr, align 8, !dbg !1193, !tbaa !682
  store ptr %0, ptr %gs, align 8, !dbg !1192, !tbaa !682
  %1 = load ptr, ptr %gs, align 8, !dbg !1194, !tbaa !682
  %xmlLastError = getelementptr inbounds %struct._xmlGlobalState, ptr %1, i32 0, i32 29, !dbg !1195
  call void @xmlResetError(ptr noundef %xmlLastError), !dbg !1196
  %2 = load ptr, ptr %state.addr, align 8, !dbg !1197, !tbaa !682
  call void @free(ptr noundef %2) #10, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %gs) #10, !dbg !1199
  ret void, !dbg !1199
}

declare !dbg !1200 i32 @__xmlInitializeDict() #6

declare !dbg !1202 void @xmlResetError(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!660, !661, !662, !663, !664}
!llvm.ident = !{!665}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "libxml_is_threaded", scope: !2, file: !3, line: 45, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !565, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "threads.c", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "2fc9a4feb7c84783fec13f17cab73af9")
!4 = !{!5, !29, !41, !50, !56, !62, !69, !77}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 159, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/libxml/tree.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "779271a97c222ae4bf8e03a37eb49028")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!9 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!10 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!11 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!12 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!13 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!14 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!15 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!16 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!17 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!18 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!19 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!20 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!21 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!22 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!23 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!24 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!25 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!26 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!27 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!28 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 206, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!31 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!32 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!33 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!34 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!35 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!36 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!37 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!38 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!39 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!40 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 24, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/libxml/entities.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "bbcf5796d61f8622702aeacafea4d993")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "XML_INTERNAL_GENERAL_ENTITY", value: 1)
!45 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_PARSED_ENTITY", value: 2)
!46 = !DIEnumerator(name: "XML_EXTERNAL_GENERAL_UNPARSED_ENTITY", value: 3)
!47 = !DIEnumerator(name: "XML_INTERNAL_PARAMETER_ENTITY", value: 4)
!48 = !DIEnumerator(name: "XML_EXTERNAL_PARAMETER_ENTITY", value: 5)
!49 = !DIEnumerator(name: "XML_INTERNAL_PREDEFINED_ENTITY", value: 6)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 278, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!53 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!54 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!55 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 290, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!59 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!60 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!61 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 24, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/libxml/xmlerror.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "7e825cd47252b863bbbd4d8d4449cf69")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "XML_ERR_NONE", value: 0)
!66 = !DIEnumerator(name: "XML_ERR_WARNING", value: 1)
!67 = !DIEnumerator(name: "XML_ERR_ERROR", value: 2)
!68 = !DIEnumerator(name: "XML_ERR_FATAL", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 74, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIEnumerator(name: "XML_BUFFER_ALLOC_DOUBLEIT", value: 0)
!72 = !DIEnumerator(name: "XML_BUFFER_ALLOC_EXACT", value: 1)
!73 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IMMUTABLE", value: 2)
!74 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IO", value: 3)
!75 = !DIEnumerator(name: "XML_BUFFER_ALLOC_HYBRID", value: 4)
!76 = !DIEnumerator(name: "XML_BUFFER_ALLOC_BOUNDED", value: 5)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 56, baseType: !79, size: 32, elements: !80)
!78 = !DIFile(filename: "./include/libxml/encoding.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "3f36e3b337230a6185e6c519d000e037")
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!81 = !DIEnumerator(name: "XML_CHAR_ENCODING_ERROR", value: -1)
!82 = !DIEnumerator(name: "XML_CHAR_ENCODING_NONE", value: 0)
!83 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF8", value: 1)
!84 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16LE", value: 2)
!85 = !DIEnumerator(name: "XML_CHAR_ENCODING_UTF16BE", value: 3)
!86 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4LE", value: 4)
!87 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4BE", value: 5)
!88 = !DIEnumerator(name: "XML_CHAR_ENCODING_EBCDIC", value: 6)
!89 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_2143", value: 7)
!90 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS4_3412", value: 8)
!91 = !DIEnumerator(name: "XML_CHAR_ENCODING_UCS2", value: 9)
!92 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_1", value: 10)
!93 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_2", value: 11)
!94 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_3", value: 12)
!95 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_4", value: 13)
!96 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_5", value: 14)
!97 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_6", value: 15)
!98 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_7", value: 16)
!99 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_8", value: 17)
!100 = !DIEnumerator(name: "XML_CHAR_ENCODING_8859_9", value: 18)
!101 = !DIEnumerator(name: "XML_CHAR_ENCODING_2022_JP", value: 19)
!102 = !DIEnumerator(name: "XML_CHAR_ENCODING_SHIFT_JIS", value: 20)
!103 = !DIEnumerator(name: "XML_CHAR_ENCODING_EUC_JP", value: 21)
!104 = !DIEnumerator(name: "XML_CHAR_ENCODING_ASCII", value: 22)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlGlobalState", file: !109, line: 120, baseType: !110)
!109 = !DIFile(filename: "./include/libxml/globals.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "7f015ed635e5788f2301bae7c8384545")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlGlobalState", file: !109, line: 122, size: 7744, elements: !111)
!111 = !{!112, !116, !136, !459, !460, !461, !464, !471, !476, !481, !483, !507, !508, !509, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !531, !533, !534, !535, !541, !564}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "xmlParserVersion", scope: !110, file: !109, line: 124, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "xmlDefaultSAXLocator", scope: !110, file: !109, line: 126, baseType: !117, size: 256, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocator", file: !6, line: 41, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXLocator", file: !119, line: 321, size: 256, elements: !120)
!119 = !DIFile(filename: "./include/libxml/parser.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "4cbcb375d54234f53f49e76e95c077ac")
!120 = !{!121, !130, !131, !135}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "getPublicId", scope: !118, file: !119, line: 322, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !106}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !128, line: 28, baseType: !129)
!128 = !DIFile(filename: "./include/libxml/xmlstring.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "getSystemId", scope: !118, file: !119, line: 323, baseType: !122, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "getLineNumber", scope: !118, file: !119, line: 324, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!79, !106}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "getColumnNumber", scope: !118, file: !119, line: 325, baseType: !132, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "xmlDefaultSAXHandler", scope: !110, file: !109, line: 127, baseType: !137, size: 1792, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandlerV1", file: !119, line: 758, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandlerV1", file: !119, line: 760, size: 1792, elements: !139)
!139 = !{!140, !145, !147, !149, !151, !228, !357, !362, !364, !377, !397, !402, !409, !414, !416, !422, !427, !429, !434, !436, !441, !443, !448, !450, !452, !454, !456, !458}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "internalSubset", scope: !138, file: !119, line: 761, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "internalSubsetSAXFunc", file: !119, line: 362, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !106, !125, !125, !125}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "isStandalone", scope: !138, file: !119, line: 762, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "isStandaloneSAXFunc", file: !119, line: 640, baseType: !132)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "hasInternalSubset", scope: !138, file: !119, line: 763, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasInternalSubsetSAXFunc", file: !119, line: 649, baseType: !132)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hasExternalSubset", scope: !138, file: !119, line: 764, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "hasExternalSubsetSAXFunc", file: !119, line: 659, baseType: !132)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "resolveEntity", scope: !138, file: !119, line: 765, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "resolveEntitySAXFunc", file: !119, line: 350, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !106, !125, !125}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !6, line: 36, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !6, line: 35, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !119, line: 52, size: 832, elements: !160)
!160 = !{!161, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !224, !225, !226, !227}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !159, file: !119, line: 54, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferPtr", file: !6, line: 29, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !6, line: 28, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInputBuffer", file: !166, line: 125, size: 512, elements: !167)
!166 = !DIFile(filename: "./include/libxml/xmlIO.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "a868e7a396360b2f16d10eac4a34669c")
!167 = !{!168, !169, !175, !177, !199, !204, !205, !206, !207}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !165, file: !166, line: 126, baseType: !106, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "readcallback", scope: !165, file: !166, line: 127, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputReadCallback", file: !166, line: 54, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!79, !106, !174, !79}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !165, file: !166, line: 128, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlInputCloseCallback", file: !166, line: 63, baseType: !132)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !165, file: !166, line: 130, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !78, line: 130, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !78, line: 129, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !78, line: 131, size: 320, elements: !182)
!182 = !{!183, !184, !193, !195, !198}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !78, line: 132, baseType: !174, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !181, file: !78, line: 133, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !78, line: 99, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!79, !189, !190, !191, !190}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !181, file: !78, line: 134, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !78, line: 121, baseType: !186)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !181, file: !78, line: 136, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "libiconv_t", file: !197, line: 46, baseType: !106)
!197 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack/linux-ubuntu22.04-zen2/clang-18.0.0/libiconv-1.17-yjxuwwhaestsjkdrfxfvtlovzccan2px/include/iconv.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build", checksumkind: CSK_MD5, checksum: "b2fc3eb69b19b470f76aa362172c4039")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !181, file: !78, line: 137, baseType: !196, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !165, file: !166, line: 132, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !6, line: 114, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !6, line: 105, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !6, line: 105, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !165, file: !166, line: 133, baseType: !200, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !165, file: !166, line: 134, baseType: !79, size: 32, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !165, file: !166, line: 135, baseType: !79, size: 32, offset: 416)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rawconsumed", scope: !165, file: !166, line: 136, baseType: !208, size: 64, offset: 448)
!208 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !159, file: !119, line: 56, baseType: !113, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !159, file: !119, line: 57, baseType: !113, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !159, file: !119, line: 58, baseType: !125, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !159, file: !119, line: 59, baseType: !125, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !159, file: !119, line: 60, baseType: !125, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !159, file: !119, line: 61, baseType: !79, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !159, file: !119, line: 62, baseType: !79, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !159, file: !119, line: 63, baseType: !79, size: 32, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "consumed", scope: !159, file: !119, line: 69, baseType: !208, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !159, file: !119, line: 70, baseType: !219, size: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputDeallocate", file: !119, line: 50, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !159, file: !119, line: 71, baseType: !125, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !159, file: !119, line: 72, baseType: !125, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !159, file: !119, line: 73, baseType: !79, size: 32, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !159, file: !119, line: 74, baseType: !79, size: 32, offset: 800)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "getEntity", scope: !138, file: !119, line: 766, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getEntitySAXFunc", file: !119, line: 388, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !106, !125}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityPtr", file: !6, line: 49, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !6, line: 48, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !42, line: 38, size: 1088, elements: !237)
!237 = !{!238, !239, !241, !242, !340, !341, !342, !343, !344, !345, !346, !347, !348, !350, !351, !352, !354, !355, !356}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !236, file: !42, line: 39, baseType: !106, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !42, line: 40, baseType: !240, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !6, line: 181, baseType: !5)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !42, line: 41, baseType: !125, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !236, file: !42, line: 42, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !6, line: 489, size: 960, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !314, !317, !318, !335, !336, !337, !339}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !244, file: !6, line: 490, baseType: !106, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !244, file: !6, line: 491, baseType: !240, size: 32, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !6, line: 492, baseType: !125, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !244, file: !6, line: 493, baseType: !243, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !244, file: !6, line: 494, baseType: !243, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !244, file: !6, line: 495, baseType: !243, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !6, line: 496, baseType: !243, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !6, line: 497, baseType: !243, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !244, file: !6, line: 498, baseType: !255, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !6, line: 551, size: 1408, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !289, !290, !301, !302, !303, !304, !305, !306, !307, !311, !312, !313}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !256, file: !6, line: 552, baseType: !106, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !256, file: !6, line: 553, baseType: !240, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !6, line: 554, baseType: !174, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !256, file: !6, line: 555, baseType: !243, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !256, file: !6, line: 556, baseType: !243, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !256, file: !6, line: 557, baseType: !243, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !6, line: 558, baseType: !243, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !6, line: 559, baseType: !243, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !256, file: !6, line: 560, baseType: !255, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !256, file: !6, line: 563, baseType: !79, size: 32, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !256, file: !6, line: 564, baseType: !79, size: 32, offset: 608)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !256, file: !6, line: 570, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !6, line: 406, size: 1024, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !271, file: !6, line: 407, baseType: !106, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !271, file: !6, line: 408, baseType: !240, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !6, line: 409, baseType: !125, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !271, file: !6, line: 410, baseType: !243, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !271, file: !6, line: 411, baseType: !243, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !271, file: !6, line: 412, baseType: !255, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !6, line: 413, baseType: !243, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !6, line: 414, baseType: !243, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !271, file: !6, line: 415, baseType: !255, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !271, file: !6, line: 418, baseType: !106, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !271, file: !6, line: 419, baseType: !106, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !271, file: !6, line: 420, baseType: !106, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !271, file: !6, line: 421, baseType: !106, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !271, file: !6, line: 422, baseType: !125, size: 64, offset: 832)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !271, file: !6, line: 423, baseType: !125, size: 64, offset: 896)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !271, file: !6, line: 424, baseType: !106, size: 64, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !256, file: !6, line: 571, baseType: !270, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !256, file: !6, line: 572, baseType: !291, size: 64, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !6, line: 389, size: 384, elements: !293)
!293 = !{!294, !295, !297, !298, !299, !300}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 390, baseType: !291, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !6, line: 391, baseType: !296, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !6, line: 375, baseType: !240)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !292, file: !6, line: 392, baseType: !125, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !292, file: !6, line: 393, baseType: !125, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !292, file: !6, line: 394, baseType: !106, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !292, file: !6, line: 395, baseType: !255, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !256, file: !6, line: 573, baseType: !125, size: 64, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !256, file: !6, line: 574, baseType: !125, size: 64, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !256, file: !6, line: 575, baseType: !106, size: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !256, file: !6, line: 576, baseType: !106, size: 64, offset: 1024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !256, file: !6, line: 577, baseType: !125, size: 64, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !256, file: !6, line: 578, baseType: !79, size: 32, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !256, file: !6, line: 580, baseType: !308, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !310, line: 24, flags: DIFlagFwdDecl)
!310 = !DIFile(filename: "./include/libxml/dict.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "34f358f6d1debb908632b95b68e9484e")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !256, file: !6, line: 581, baseType: !106, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !256, file: !6, line: 582, baseType: !79, size: 32, offset: 1344)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !256, file: !6, line: 584, baseType: !79, size: 32, offset: 1376)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !244, file: !6, line: 501, baseType: !315, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !6, line: 387, baseType: !292)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !244, file: !6, line: 502, baseType: !223, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !244, file: !6, line: 503, baseType: !319, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !6, line: 434, size: 768, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !334}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !320, file: !6, line: 435, baseType: !106, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !6, line: 436, baseType: !240, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !6, line: 437, baseType: !125, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !320, file: !6, line: 438, baseType: !243, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !320, file: !6, line: 439, baseType: !243, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !320, file: !6, line: 440, baseType: !243, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !6, line: 441, baseType: !319, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !320, file: !6, line: 442, baseType: !319, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !320, file: !6, line: 443, baseType: !255, size: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !320, file: !6, line: 444, baseType: !315, size: 64, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !320, file: !6, line: 445, baseType: !333, size: 32, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !6, line: 217, baseType: !29)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !320, file: !6, line: 446, baseType: !106, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !244, file: !6, line: 504, baseType: !315, size: 64, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !244, file: !6, line: 505, baseType: !106, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !244, file: !6, line: 506, baseType: !338, size: 16, offset: 896)
!338 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !244, file: !6, line: 507, baseType: !338, size: 16, offset: 912)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !236, file: !42, line: 43, baseType: !243, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !42, line: 44, baseType: !270, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !42, line: 45, baseType: !243, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !236, file: !42, line: 46, baseType: !243, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !236, file: !42, line: 47, baseType: !255, size: 64, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !236, file: !42, line: 49, baseType: !223, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !236, file: !42, line: 50, baseType: !223, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !236, file: !42, line: 51, baseType: !79, size: 32, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !236, file: !42, line: 52, baseType: !349, size: 32, offset: 736)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntityType", file: !42, line: 31, baseType: !41)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !236, file: !42, line: 53, baseType: !125, size: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !236, file: !42, line: 54, baseType: !125, size: 64, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nexte", scope: !236, file: !42, line: 56, baseType: !353, size: 64, offset: 896)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "URI", scope: !236, file: !42, line: 57, baseType: !125, size: 64, offset: 960)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !236, file: !42, line: 58, baseType: !79, size: 32, offset: 1024)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "checked", scope: !236, file: !42, line: 59, baseType: !79, size: 32, offset: 1056)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "entityDecl", scope: !138, file: !119, line: 767, baseType: !358, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "entityDeclSAXFunc", file: !119, line: 412, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !106, !125, !79, !125, !125, !223}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "notationDecl", scope: !138, file: !119, line: 768, baseType: !363, size: 64, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "notationDeclSAXFunc", file: !119, line: 427, baseType: !142)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "attributeDecl", scope: !138, file: !119, line: 769, baseType: !365, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "attributeDeclSAXFunc", file: !119, line: 443, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !106, !125, !125, !79, !79, !125, !369}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !6, line: 239, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !6, line: 238, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !6, line: 240, size: 128, elements: !373)
!373 = !{!374, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !6, line: 241, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !6, line: 242, baseType: !125, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "elementDecl", scope: !138, file: !119, line: 770, baseType: !378, size: 64, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "elementDeclSAXFunc", file: !119, line: 459, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !106, !125, !79, !382}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !6, line: 305, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !6, line: 304, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !6, line: 306, size: 384, elements: !386)
!386 = !{!387, !389, !391, !392, !394, !395, !396}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !6, line: 307, baseType: !388, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !6, line: 283, baseType: !50)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !385, file: !6, line: 308, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !6, line: 295, baseType: !56)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !6, line: 309, baseType: !125, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !385, file: !6, line: 310, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !385, file: !6, line: 311, baseType: !393, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !385, file: !6, line: 312, baseType: !393, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !385, file: !6, line: 313, baseType: !125, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "unparsedEntityDecl", scope: !138, file: !119, line: 771, baseType: !398, size: 64, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "unparsedEntityDeclSAXFunc", file: !119, line: 473, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !106, !125, !125, !125, !125}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "setDocumentLocator", scope: !138, file: !119, line: 772, baseType: !403, size: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "setDocumentLocatorSAXFunc", file: !119, line: 486, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !106, !407}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXLocatorPtr", file: !6, line: 42, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "startDocument", scope: !138, file: !119, line: 773, baseType: !410, size: 64, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "startDocumentSAXFunc", file: !119, line: 494, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !106}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "endDocument", scope: !138, file: !119, line: 774, baseType: !415, size: 64, offset: 832)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "endDocumentSAXFunc", file: !119, line: 501, baseType: !411)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "startElement", scope: !138, file: !119, line: 775, baseType: !417, size: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "startElementSAXFunc", file: !119, line: 510, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !106, !125, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "endElement", scope: !138, file: !119, line: 776, baseType: !423, size: 64, offset: 960)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "endElementSAXFunc", file: !119, line: 520, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !106, !125}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !138, file: !119, line: 777, baseType: !428, size: 64, offset: 1024)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenceSAXFunc", file: !119, line: 543, baseType: !424)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "characters", scope: !138, file: !119, line: 778, baseType: !430, size: 64, offset: 1088)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "charactersSAXFunc", file: !119, line: 553, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !106, !125, !79}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ignorableWhitespace", scope: !138, file: !119, line: 779, baseType: !435, size: 64, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ignorableWhitespaceSAXFunc", file: !119, line: 565, baseType: !431)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "processingInstruction", scope: !138, file: !119, line: 780, baseType: !437, size: 64, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "processingInstructionSAXFunc", file: !119, line: 576, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !106, !125, !125}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !138, file: !119, line: 781, baseType: !442, size: 64, offset: 1280)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "commentSAXFunc", file: !119, line: 586, baseType: !424)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !138, file: !119, line: 782, baseType: !444, size: 64, offset: 1344)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "warningSAXFunc", file: !119, line: 608, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !106, !113, null}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !138, file: !119, line: 783, baseType: !449, size: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorSAXFunc", file: !119, line: 618, baseType: !445)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fatalError", scope: !138, file: !119, line: 784, baseType: !451, size: 64, offset: 1472)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "fatalErrorSAXFunc", file: !119, line: 630, baseType: !445)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "getParameterEntity", scope: !138, file: !119, line: 785, baseType: !453, size: 64, offset: 1536)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "getParameterEntitySAXFunc", file: !119, line: 399, baseType: !230)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !138, file: !119, line: 786, baseType: !455, size: 64, offset: 1600)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "cdataBlockSAXFunc", file: !119, line: 596, baseType: !431)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "externalSubset", scope: !138, file: !119, line: 787, baseType: !457, size: 64, offset: 1664)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "externalSubsetSAXFunc", file: !119, line: 375, baseType: !142)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !138, file: !119, line: 788, baseType: !7, size: 32, offset: 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "docbDefaultSAXHandler", scope: !110, file: !109, line: 128, baseType: !137, size: 1792, offset: 2112)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "htmlDefaultSAXHandler", scope: !110, file: !109, line: 129, baseType: !137, size: 1792, offset: 3904)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "xmlFree", scope: !110, file: !109, line: 131, baseType: !462, size: 64, offset: 5696)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlFreeFunc", file: !463, line: 57, baseType: !411)
!463 = !DIFile(filename: "./include/libxml/xmlmemory.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "7e446747cb8069ea015f0cc10b63166b")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "xmlMalloc", scope: !110, file: !109, line: 132, baseType: !465, size: 64, offset: 5760)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMallocFunc", file: !463, line: 66, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!106, !469}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !470, line: 70, baseType: !208)
!470 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "xmlMemStrdup", scope: !110, file: !109, line: 133, baseType: !472, size: 64, offset: 5824)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStrdupFunc", file: !463, line: 87, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!174, !113}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "xmlRealloc", scope: !110, file: !109, line: 134, baseType: !477, size: 64, offset: 5888)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlReallocFunc", file: !463, line: 77, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!106, !106, !469}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "xmlGenericError", scope: !110, file: !109, line: 136, baseType: !482, size: 64, offset: 5952)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlGenericErrorFunc", file: !63, line: 847, baseType: !445)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "xmlStructuredError", scope: !110, file: !109, line: 137, baseType: !484, size: 64, offset: 6016)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStructuredErrorFunc", file: !63, line: 858, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !106, !488}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorPtr", file: !63, line: 77, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !63, line: 76, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !63, line: 78, size: 704, elements: !492)
!492 = !{!493, !494, !495, !496, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !491, file: !63, line: 79, baseType: !79, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !491, file: !63, line: 80, baseType: !79, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !491, file: !63, line: 81, baseType: !174, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !491, file: !63, line: 82, baseType: !497, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !63, line: 29, baseType: !62)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !491, file: !63, line: 83, baseType: !174, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !491, file: !63, line: 84, baseType: !79, size: 32, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !491, file: !63, line: 85, baseType: !174, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !491, file: !63, line: 86, baseType: !174, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !491, file: !63, line: 87, baseType: !174, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !491, file: !63, line: 88, baseType: !79, size: 32, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !491, file: !63, line: 89, baseType: !79, size: 32, offset: 544)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !491, file: !63, line: 90, baseType: !106, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !491, file: !63, line: 91, baseType: !106, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "xmlGenericErrorContext", scope: !110, file: !109, line: 138, baseType: !106, size: 64, offset: 6080)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "oldXMLWDcompatibility", scope: !110, file: !109, line: 140, baseType: !79, size: 32, offset: 6144)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "xmlBufferAllocScheme", scope: !110, file: !109, line: 142, baseType: !510, size: 32, offset: 6176)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !6, line: 81, baseType: !69)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "xmlDefaultBufferSize", scope: !110, file: !109, line: 143, baseType: !79, size: 32, offset: 6208)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xmlSubstituteEntitiesDefaultValue", scope: !110, file: !109, line: 145, baseType: !79, size: 32, offset: 6240)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xmlDoValidityCheckingDefaultValue", scope: !110, file: !109, line: 146, baseType: !79, size: 32, offset: 6272)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xmlGetWarningsDefaultValue", scope: !110, file: !109, line: 147, baseType: !79, size: 32, offset: 6304)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xmlKeepBlanksDefaultValue", scope: !110, file: !109, line: 148, baseType: !79, size: 32, offset: 6336)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "xmlLineNumbersDefaultValue", scope: !110, file: !109, line: 149, baseType: !79, size: 32, offset: 6368)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "xmlLoadExtDtdDefaultValue", scope: !110, file: !109, line: 150, baseType: !79, size: 32, offset: 6400)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "xmlParserDebugEntities", scope: !110, file: !109, line: 151, baseType: !79, size: 32, offset: 6432)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "xmlPedanticParserDefaultValue", scope: !110, file: !109, line: 152, baseType: !79, size: 32, offset: 6464)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "xmlSaveNoEmptyTags", scope: !110, file: !109, line: 154, baseType: !79, size: 32, offset: 6496)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "xmlIndentTreeOutput", scope: !110, file: !109, line: 155, baseType: !79, size: 32, offset: 6528)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "xmlTreeIndentString", scope: !110, file: !109, line: 156, baseType: !113, size: 64, offset: 6592)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "xmlRegisterNodeDefaultValue", scope: !110, file: !109, line: 158, baseType: !524, size: 64, offset: 6656)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegisterNodeFunc", file: !109, line: 111, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !6, line: 488, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !6, line: 487, baseType: !244)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "xmlDeregisterNodeDefaultValue", scope: !110, file: !109, line: 159, baseType: !532, size: 64, offset: 6720)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDeregisterNodeFunc", file: !109, line: 118, baseType: !525)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xmlMallocAtomic", scope: !110, file: !109, line: 161, baseType: !465, size: 64, offset: 6784)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "xmlLastError", scope: !110, file: !109, line: 162, baseType: !490, size: 704, offset: 6848)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "xmlParserInputBufferCreateFilenameValue", scope: !110, file: !109, line: 164, baseType: !536, size: 64, offset: 7552)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBufferCreateFilenameFunc", file: !109, line: 43, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!162, !113, !540}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncoding", file: !78, line: 81, baseType: !77)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "xmlOutputBufferCreateFilenameValue", scope: !110, file: !109, line: 165, baseType: !542, size: 64, offset: 7616)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferCreateFilenameFunc", file: !109, line: 58, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !113, !178, !79}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !6, line: 32, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !6, line: 31, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !166, line: 141, size: 448, elements: !550)
!550 = !{!551, !552, !557, !559, !560, !561, !562, !563}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !549, file: !166, line: 142, baseType: !106, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !549, file: !166, line: 143, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputWriteCallback", file: !166, line: 100, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!79, !106, !113, !79}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !549, file: !166, line: 144, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputCloseCallback", file: !166, line: 110, baseType: !132)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !549, file: !166, line: 146, baseType: !178, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !549, file: !166, line: 148, baseType: !200, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !549, file: !166, line: 149, baseType: !200, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !549, file: !166, line: 150, baseType: !79, size: 32, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !549, file: !166, line: 151, baseType: !79, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "xmlStructuredErrorContext", scope: !110, file: !109, line: 167, baseType: !106, size: 64, offset: 7680)
!565 = !{!566, !570, !0, !573, !604, !607, !612, !658}
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "globalkey", scope: !2, file: !3, line: 125, type: !568, isLocal: true, isDefinition: true)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !569, line: 49, baseType: !7)
!569 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "mainthread", scope: !2, file: !3, line: 126, type: !572, isLocal: true, isDefinition: true)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !569, line: 27, baseType: !208)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "global_init_lock", scope: !2, file: !3, line: 129, type: !575, isLocal: true, isDefinition: true)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !569, line: 72, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !569, line: 67, size: 320, elements: !577)
!577 = !{!578, !598, !602}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !576, file: !569, line: 69, baseType: !579, size: 320)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !580, line: 22, size: 320, elements: !581)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!581 = !{!582, !583, !584, !585, !586, !587, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !579, file: !580, line: 24, baseType: !79, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !579, file: !580, line: 25, baseType: !7, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !579, file: !580, line: 26, baseType: !79, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !579, file: !580, line: 28, baseType: !7, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !579, file: !580, line: 32, baseType: !79, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !579, file: !580, line: 34, baseType: !588, size: 16, offset: 160)
!588 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !579, file: !580, line: 35, baseType: !588, size: 16, offset: 176)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !579, file: !580, line: 36, baseType: !591, size: 128, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !592, line: 55, baseType: !593)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !592, line: 51, size: 128, elements: !594)
!594 = !{!595, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !593, file: !592, line: 53, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !593, file: !592, line: 54, baseType: !596, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !576, file: !569, line: 70, baseType: !599, size: 320)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 320, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 40)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !576, file: !569, line: 71, baseType: !603, size: 64)
!603 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "once_control", scope: !2, file: !3, line: 127, type: !606, isLocal: true, isDefinition: true)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_once_t", file: !569, line: 53, baseType: !79)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 569, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 272, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 34)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "xmlLibraryLock", scope: !2, file: !3, line: 153, type: !614, isLocal: true, isDefinition: true)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRMutexPtr", file: !615, line: 30, baseType: !616)
!615 = !DIFile(filename: "./include/libxml/threads.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "1dc7307a775b27909a6aa3c80fee80a7")
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRMutex", file: !615, line: 29, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRMutex", file: !3, line: 100, size: 832, elements: !619)
!619 = !{!620, !621, !622, !623, !624}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !618, file: !3, line: 102, baseType: !575, size: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "held", scope: !618, file: !3, line: 103, baseType: !7, size: 32, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !618, file: !3, line: 104, baseType: !7, size: 32, offset: 352)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !618, file: !3, line: 105, baseType: !572, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !618, file: !3, line: 106, baseType: !625, size: 384, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !569, line: 80, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !569, line: 75, size: 384, elements: !627)
!627 = !{!628, !652, !656}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !626, file: !569, line: 77, baseType: !629, size: 384)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !592, line: 94, size: 384, elements: !630)
!630 = !{!631, !643, !644, !648, !649, !650, !651}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !629, file: !592, line: 96, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !633, line: 33, baseType: !634)
!633 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !633, line: 25, size: 64, elements: !635)
!635 = !{!636, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !634, file: !633, line: 27, baseType: !637, size: 64)
!637 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !634, file: !633, line: 32, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !634, file: !633, line: 28, size: 64, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !639, file: !633, line: 30, baseType: !7, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !639, file: !633, line: 31, baseType: !7, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !629, file: !592, line: 97, baseType: !632, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !629, file: !592, line: 98, baseType: !645, size: 64, offset: 128)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 2)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !629, file: !592, line: 99, baseType: !645, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !629, file: !592, line: 100, baseType: !7, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !629, file: !592, line: 101, baseType: !7, size: 32, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !629, file: !592, line: 102, baseType: !645, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !626, file: !569, line: 78, baseType: !653, size: 384)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 384, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 48)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !626, file: !569, line: 79, baseType: !657, size: 64)
!657 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "once_control_init", scope: !2, file: !3, line: 128, type: !606, isLocal: true, isDefinition: true)
!660 = !{i32 7, !"Dwarf Version", i32 5}
!661 = !{i32 2, !"Debug Info Version", i32 3}
!662 = !{i32 1, !"wchar_size", i32 4}
!663 = !{i32 8, !"PIC Level", i32 2}
!664 = !{i32 7, !"uwtable", i32 2}
!665 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!666 = distinct !DISubprogram(name: "xmlNewMutex", scope: !3, file: !3, line: 168, type: !667, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!667 = !DISubroutineType(types: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMutexPtr", file: !615, line: 24, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMutex", file: !615, line: 23, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlMutex", file: !3, line: 84, size: 320, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !3, line: 86, baseType: !575, size: 320)
!675 = !{!676}
!676 = !DILocalVariable(name: "tok", scope: !666, file: !3, line: 170, type: !669)
!677 = !DILocation(line: 170, column: 5, scope: !666)
!678 = !DILocation(line: 170, column: 17, scope: !666)
!679 = !DILocation(line: 172, column: 16, scope: !680)
!680 = distinct !DILexicalBlock(scope: !666, file: !3, line: 172, column: 9)
!681 = !DILocation(line: 172, column: 14, scope: !680)
!682 = !{!683, !683, i64 0}
!683 = !{!"any pointer", !684, i64 0}
!684 = !{!"omnipotent char", !685, i64 0}
!685 = !{!"Simple C/C++ TBAA"}
!686 = !DILocation(line: 172, column: 42, scope: !680)
!687 = !DILocation(line: 172, column: 9, scope: !666)
!688 = !DILocation(line: 173, column: 9, scope: !680)
!689 = !DILocation(line: 175, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !666, file: !3, line: 175, column: 9)
!691 = !{!692, !692, i64 0}
!692 = !{!"int", !684, i64 0}
!693 = !DILocation(line: 175, column: 28, scope: !690)
!694 = !DILocation(line: 175, column: 9, scope: !666)
!695 = !DILocation(line: 176, column: 29, scope: !690)
!696 = !DILocation(line: 176, column: 34, scope: !690)
!697 = !DILocation(line: 176, column: 9, scope: !690)
!698 = !DILocation(line: 186, column: 13, scope: !666)
!699 = !DILocation(line: 186, column: 5, scope: !666)
!700 = !DILocation(line: 187, column: 1, scope: !666)
!701 = !DISubprogram(name: "malloc", scope: !702, file: !702, line: 540, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!703 = !DISubprogram(name: "pthread_mutex_init", scope: !704, file: !704, line: 781, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!705 = !DISubroutineType(types: !706)
!706 = !{!79, !707, !708}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !569, line: 36, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !569, line: 32, size: 32, elements: !712)
!712 = !{!713, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !711, file: !569, line: 34, baseType: !714, size: 32)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 4)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !711, file: !569, line: 35, baseType: !79, size: 32)
!718 = distinct !DISubprogram(name: "xmlFreeMutex", scope: !3, file: !3, line: 197, type: !719, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !669}
!721 = !{!722}
!722 = !DILocalVariable(name: "tok", arg: 1, scope: !718, file: !3, line: 197, type: !669)
!723 = !DILocation(line: 197, column: 26, scope: !718)
!724 = !DILocation(line: 199, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !718, file: !3, line: 199, column: 9)
!726 = !DILocation(line: 199, column: 13, scope: !725)
!727 = !DILocation(line: 199, column: 9, scope: !718)
!728 = !DILocation(line: 200, column: 9, scope: !725)
!729 = !DILocation(line: 203, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !718, file: !3, line: 203, column: 9)
!731 = !DILocation(line: 203, column: 28, scope: !730)
!732 = !DILocation(line: 203, column: 9, scope: !718)
!733 = !DILocation(line: 204, column: 32, scope: !730)
!734 = !DILocation(line: 204, column: 37, scope: !730)
!735 = !DILocation(line: 204, column: 9, scope: !730)
!736 = !DILocation(line: 210, column: 10, scope: !718)
!737 = !DILocation(line: 210, column: 5, scope: !718)
!738 = !DILocation(line: 211, column: 1, scope: !718)
!739 = !DISubprogram(name: "pthread_mutex_destroy", scope: !704, file: !704, line: 786, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!740 = !DISubroutineType(types: !741)
!741 = !{!79, !707}
!742 = !DISubprogram(name: "free", scope: !702, file: !702, line: 555, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = distinct !DISubprogram(name: "xmlMutexLock", scope: !3, file: !3, line: 220, type: !719, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745}
!745 = !DILocalVariable(name: "tok", arg: 1, scope: !743, file: !3, line: 220, type: !669)
!746 = !DILocation(line: 220, column: 26, scope: !743)
!747 = !DILocation(line: 222, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 222, column: 9)
!749 = !DILocation(line: 222, column: 13, scope: !748)
!750 = !DILocation(line: 222, column: 9, scope: !743)
!751 = !DILocation(line: 223, column: 9, scope: !748)
!752 = !DILocation(line: 225, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !743, file: !3, line: 225, column: 9)
!754 = !DILocation(line: 225, column: 28, scope: !753)
!755 = !DILocation(line: 225, column: 9, scope: !743)
!756 = !DILocation(line: 226, column: 29, scope: !753)
!757 = !DILocation(line: 226, column: 34, scope: !753)
!758 = !DILocation(line: 226, column: 9, scope: !753)
!759 = !DILocation(line: 239, column: 1, scope: !743)
!760 = !DISubprogram(name: "pthread_mutex_lock", scope: !704, file: !704, line: 794, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = distinct !DISubprogram(name: "xmlMutexUnlock", scope: !3, file: !3, line: 248, type: !719, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!762 = !{!763}
!763 = !DILocalVariable(name: "tok", arg: 1, scope: !761, file: !3, line: 248, type: !669)
!764 = !DILocation(line: 248, column: 28, scope: !761)
!765 = !DILocation(line: 250, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 250, column: 9)
!767 = !DILocation(line: 250, column: 13, scope: !766)
!768 = !DILocation(line: 250, column: 9, scope: !761)
!769 = !DILocation(line: 251, column: 9, scope: !766)
!770 = !DILocation(line: 253, column: 9, scope: !771)
!771 = distinct !DILexicalBlock(scope: !761, file: !3, line: 253, column: 9)
!772 = !DILocation(line: 253, column: 28, scope: !771)
!773 = !DILocation(line: 253, column: 9, scope: !761)
!774 = !DILocation(line: 254, column: 31, scope: !771)
!775 = !DILocation(line: 254, column: 36, scope: !771)
!776 = !DILocation(line: 254, column: 9, scope: !771)
!777 = !DILocation(line: 263, column: 1, scope: !761)
!778 = !DISubprogram(name: "pthread_mutex_unlock", scope: !704, file: !704, line: 835, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = distinct !DISubprogram(name: "xmlNewRMutex", scope: !3, file: !3, line: 276, type: !780, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!614}
!782 = !{!783}
!783 = !DILocalVariable(name: "tok", scope: !779, file: !3, line: 278, type: !614)
!784 = !DILocation(line: 278, column: 5, scope: !779)
!785 = !DILocation(line: 278, column: 18, scope: !779)
!786 = !DILocation(line: 280, column: 16, scope: !787)
!787 = distinct !DILexicalBlock(scope: !779, file: !3, line: 280, column: 9)
!788 = !DILocation(line: 280, column: 14, scope: !787)
!789 = !DILocation(line: 280, column: 43, scope: !787)
!790 = !DILocation(line: 280, column: 9, scope: !779)
!791 = !DILocation(line: 281, column: 9, scope: !787)
!792 = !DILocation(line: 283, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !779, file: !3, line: 283, column: 9)
!794 = !DILocation(line: 283, column: 28, scope: !793)
!795 = !DILocation(line: 283, column: 9, scope: !779)
!796 = !DILocation(line: 284, column: 29, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !3, line: 283, column: 34)
!798 = !DILocation(line: 284, column: 34, scope: !797)
!799 = !DILocation(line: 284, column: 9, scope: !797)
!800 = !DILocation(line: 285, column: 9, scope: !797)
!801 = !DILocation(line: 285, column: 14, scope: !797)
!802 = !DILocation(line: 285, column: 19, scope: !797)
!803 = !{!804, !692, i64 40}
!804 = !{!"_xmlRMutex", !684, i64 0, !692, i64 40, !692, i64 44, !805, i64 48, !684, i64 56}
!805 = !{!"long", !684, i64 0}
!806 = !DILocation(line: 286, column: 9, scope: !797)
!807 = !DILocation(line: 286, column: 14, scope: !797)
!808 = !DILocation(line: 286, column: 22, scope: !797)
!809 = !{!804, !692, i64 44}
!810 = !DILocation(line: 287, column: 28, scope: !797)
!811 = !DILocation(line: 287, column: 33, scope: !797)
!812 = !DILocation(line: 287, column: 9, scope: !797)
!813 = !DILocation(line: 288, column: 5, scope: !797)
!814 = !DILocation(line: 298, column: 13, scope: !779)
!815 = !DILocation(line: 298, column: 5, scope: !779)
!816 = !DILocation(line: 299, column: 1, scope: !779)
!817 = !DISubprogram(name: "pthread_cond_init", scope: !704, file: !704, line: 1112, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubroutineType(types: !819)
!819 = !{!79, !820, !822}
!820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !569, line: 45, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !569, line: 41, size: 32, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !826, file: !569, line: 43, baseType: !714, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !826, file: !569, line: 44, baseType: !79, size: 32)
!830 = distinct !DISubprogram(name: "xmlFreeRMutex", scope: !3, file: !3, line: 309, type: !831, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !614}
!833 = !{!834}
!834 = !DILocalVariable(name: "tok", arg: 1, scope: !830, file: !3, line: 309, type: !614)
!835 = !DILocation(line: 309, column: 28, scope: !830)
!836 = !DILocation(line: 311, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !3, line: 311, column: 9)
!838 = !DILocation(line: 311, column: 13, scope: !837)
!839 = !DILocation(line: 311, column: 9, scope: !830)
!840 = !DILocation(line: 312, column: 9, scope: !837)
!841 = !DILocation(line: 314, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !830, file: !3, line: 314, column: 9)
!843 = !DILocation(line: 314, column: 28, scope: !842)
!844 = !DILocation(line: 314, column: 9, scope: !830)
!845 = !DILocation(line: 315, column: 32, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 314, column: 34)
!847 = !DILocation(line: 315, column: 37, scope: !846)
!848 = !DILocation(line: 315, column: 9, scope: !846)
!849 = !DILocation(line: 316, column: 31, scope: !846)
!850 = !DILocation(line: 316, column: 36, scope: !846)
!851 = !DILocation(line: 316, column: 9, scope: !846)
!852 = !DILocation(line: 317, column: 5, scope: !846)
!853 = !DILocation(line: 323, column: 10, scope: !830)
!854 = !DILocation(line: 323, column: 5, scope: !830)
!855 = !DILocation(line: 324, column: 1, scope: !830)
!856 = !DISubprogram(name: "pthread_cond_destroy", scope: !704, file: !704, line: 1117, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubroutineType(types: !858)
!858 = !{!79, !821}
!859 = distinct !DISubprogram(name: "xmlRMutexLock", scope: !3, file: !3, line: 333, type: !831, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!860 = !{!861}
!861 = !DILocalVariable(name: "tok", arg: 1, scope: !859, file: !3, line: 333, type: !614)
!862 = !DILocation(line: 333, column: 28, scope: !859)
!863 = !DILocation(line: 335, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !3, line: 335, column: 9)
!865 = !DILocation(line: 335, column: 13, scope: !864)
!866 = !DILocation(line: 335, column: 9, scope: !859)
!867 = !DILocation(line: 336, column: 9, scope: !864)
!868 = !DILocation(line: 338, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !859, file: !3, line: 338, column: 9)
!870 = !DILocation(line: 338, column: 28, scope: !869)
!871 = !DILocation(line: 338, column: 9, scope: !859)
!872 = !DILocation(line: 339, column: 9, scope: !869)
!873 = !DILocation(line: 341, column: 25, scope: !859)
!874 = !DILocation(line: 341, column: 30, scope: !859)
!875 = !DILocation(line: 341, column: 5, scope: !859)
!876 = !DILocation(line: 342, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !859, file: !3, line: 342, column: 9)
!878 = !DILocation(line: 342, column: 14, scope: !877)
!879 = !DILocation(line: 342, column: 9, scope: !859)
!880 = !DILocation(line: 343, column: 27, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 343, column: 13)
!882 = distinct !DILexicalBlock(scope: !877, file: !3, line: 342, column: 20)
!883 = !DILocation(line: 343, column: 32, scope: !881)
!884 = !{!804, !805, i64 48}
!885 = !DILocation(line: 343, column: 37, scope: !881)
!886 = !DILocation(line: 343, column: 13, scope: !881)
!887 = !DILocation(line: 343, column: 13, scope: !882)
!888 = !DILocation(line: 344, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !3, line: 343, column: 54)
!890 = !DILocation(line: 344, column: 18, scope: !889)
!891 = !DILocation(line: 344, column: 22, scope: !889)
!892 = !DILocation(line: 345, column: 35, scope: !889)
!893 = !DILocation(line: 345, column: 40, scope: !889)
!894 = !DILocation(line: 345, column: 13, scope: !889)
!895 = !DILocation(line: 346, column: 13, scope: !889)
!896 = !DILocation(line: 348, column: 13, scope: !897)
!897 = distinct !DILexicalBlock(scope: !881, file: !3, line: 347, column: 16)
!898 = !DILocation(line: 348, column: 18, scope: !897)
!899 = !DILocation(line: 348, column: 25, scope: !897)
!900 = !DILocation(line: 349, column: 13, scope: !897)
!901 = !DILocation(line: 349, column: 20, scope: !897)
!902 = !DILocation(line: 349, column: 25, scope: !897)
!903 = !DILocation(line: 350, column: 36, scope: !897)
!904 = !DILocation(line: 350, column: 41, scope: !897)
!905 = !DILocation(line: 350, column: 46, scope: !897)
!906 = !DILocation(line: 350, column: 51, scope: !897)
!907 = !DILocation(line: 350, column: 17, scope: !897)
!908 = distinct !{!908, !900, !909, !910}
!909 = !DILocation(line: 350, column: 55, scope: !897)
!910 = !{!"llvm.loop.mustprogress"}
!911 = !DILocation(line: 351, column: 13, scope: !897)
!912 = !DILocation(line: 351, column: 18, scope: !897)
!913 = !DILocation(line: 351, column: 25, scope: !897)
!914 = !DILocation(line: 353, column: 5, scope: !882)
!915 = !DILocation(line: 354, column: 16, scope: !859)
!916 = !DILocation(line: 354, column: 5, scope: !859)
!917 = !DILocation(line: 354, column: 10, scope: !859)
!918 = !DILocation(line: 354, column: 14, scope: !859)
!919 = !DILocation(line: 355, column: 5, scope: !859)
!920 = !DILocation(line: 355, column: 10, scope: !859)
!921 = !DILocation(line: 355, column: 15, scope: !859)
!922 = !DILocation(line: 356, column: 27, scope: !859)
!923 = !DILocation(line: 356, column: 32, scope: !859)
!924 = !DILocation(line: 356, column: 5, scope: !859)
!925 = !DILocation(line: 368, column: 1, scope: !859)
!926 = distinct !DISubprogram(name: "pthread_equal", scope: !704, file: !704, line: 1340, type: !927, scopeLine: 1341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !929)
!927 = !DISubroutineType(types: !928)
!928 = !{!79, !572, !572}
!929 = !{!930, !931}
!930 = !DILocalVariable(name: "__thread1", arg: 1, scope: !926, file: !704, line: 1340, type: !572)
!931 = !DILocalVariable(name: "__thread2", arg: 2, scope: !926, file: !704, line: 1340, type: !572)
!932 = !{!805, !805, i64 0}
!933 = !DILocation(line: 1340, column: 1, scope: !926)
!934 = !DILocation(line: 1342, column: 10, scope: !926)
!935 = !DILocation(line: 1342, column: 23, scope: !926)
!936 = !DILocation(line: 1342, column: 20, scope: !926)
!937 = !DILocation(line: 1342, column: 3, scope: !926)
!938 = !DISubprogram(name: "pthread_self", scope: !704, file: !704, line: 273, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{!572}
!941 = !DISubprogram(name: "pthread_cond_wait", scope: !704, file: !704, line: 1133, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!79, !820, !944}
!944 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !707)
!945 = distinct !DISubprogram(name: "xmlRMutexUnlock", scope: !3, file: !3, line: 377, type: !831, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !946)
!946 = !{!947}
!947 = !DILocalVariable(name: "tok", arg: 1, scope: !945, file: !3, line: 377, type: !614)
!948 = !DILocation(line: 377, column: 30, scope: !945)
!949 = !DILocation(line: 379, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !3, line: 379, column: 9)
!951 = !DILocation(line: 379, column: 13, scope: !950)
!952 = !DILocation(line: 379, column: 9, scope: !945)
!953 = !DILocation(line: 380, column: 9, scope: !950)
!954 = !DILocation(line: 382, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !945, file: !3, line: 382, column: 9)
!956 = !DILocation(line: 382, column: 28, scope: !955)
!957 = !DILocation(line: 382, column: 9, scope: !945)
!958 = !DILocation(line: 383, column: 9, scope: !955)
!959 = !DILocation(line: 385, column: 25, scope: !945)
!960 = !DILocation(line: 385, column: 30, scope: !945)
!961 = !DILocation(line: 385, column: 5, scope: !945)
!962 = !DILocation(line: 386, column: 5, scope: !945)
!963 = !DILocation(line: 386, column: 10, scope: !945)
!964 = !DILocation(line: 386, column: 14, scope: !945)
!965 = !DILocation(line: 387, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !945, file: !3, line: 387, column: 9)
!967 = !DILocation(line: 387, column: 14, scope: !966)
!968 = !DILocation(line: 387, column: 19, scope: !966)
!969 = !DILocation(line: 387, column: 9, scope: !945)
!970 = !DILocation(line: 388, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 388, column: 13)
!972 = distinct !DILexicalBlock(scope: !966, file: !3, line: 387, column: 25)
!973 = !DILocation(line: 388, column: 18, scope: !971)
!974 = !DILocation(line: 388, column: 13, scope: !972)
!975 = !DILocation(line: 389, column: 34, scope: !971)
!976 = !DILocation(line: 389, column: 39, scope: !971)
!977 = !DILocation(line: 389, column: 13, scope: !971)
!978 = !DILocation(line: 390, column: 17, scope: !972)
!979 = !DILocation(line: 390, column: 22, scope: !972)
!980 = !DILocation(line: 390, column: 9, scope: !972)
!981 = !DILocation(line: 391, column: 5, scope: !972)
!982 = !DILocation(line: 392, column: 27, scope: !945)
!983 = !DILocation(line: 392, column: 32, scope: !945)
!984 = !DILocation(line: 392, column: 5, scope: !945)
!985 = !DILocation(line: 404, column: 1, scope: !945)
!986 = !DISubprogram(name: "pthread_cond_signal", scope: !704, file: !704, line: 1121, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = distinct !DISubprogram(name: "__xmlGlobalInitMutexLock", scope: !3, file: !3, line: 413, type: !988, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!988 = !DISubroutineType(types: !989)
!989 = !{null}
!990 = !DILocation(line: 419, column: 9, scope: !987)
!991 = !DILocation(line: 420, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 419, column: 9)
!993 = !DILocation(line: 422, column: 5, scope: !987)
!994 = !DILocation(line: 485, column: 1, scope: !987)
!995 = distinct !DISubprogram(name: "__xmlGlobalInitMutexUnlock", scope: !3, file: !3, line: 488, type: !988, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!996 = !DILocation(line: 492, column: 9, scope: !995)
!997 = !DILocation(line: 493, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 492, column: 9)
!999 = !DILocation(line: 495, column: 5, scope: !995)
!1000 = !DILocation(line: 503, column: 1, scope: !995)
!1001 = distinct !DISubprogram(name: "__xmlGlobalInitMutexDestroy", scope: !3, file: !3, line: 512, type: !988, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1002 = !DILocation(line: 522, column: 1, scope: !1001)
!1003 = distinct !DISubprogram(name: "xmlGetGlobalState", scope: !3, file: !3, line: 640, type: !1004, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlGlobalStatePtr", file: !109, line: 121, baseType: !107)
!1007 = !{!1008, !1009}
!1008 = !DILocalVariable(name: "globalval", scope: !1003, file: !3, line: 643, type: !107)
!1009 = !DILocalVariable(name: "tsd", scope: !1010, file: !3, line: 652, type: !107)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 651, column: 51)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 650, column: 9)
!1012 = !DILocation(line: 643, column: 5, scope: !1003)
!1013 = !DILocation(line: 643, column: 21, scope: !1003)
!1014 = !DILocation(line: 645, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 645, column: 9)
!1016 = !DILocation(line: 645, column: 28, scope: !1015)
!1017 = !DILocation(line: 645, column: 9, scope: !1003)
!1018 = !DILocation(line: 646, column: 9, scope: !1015)
!1019 = !DILocation(line: 648, column: 5, scope: !1003)
!1020 = !DILocation(line: 651, column: 30, scope: !1011)
!1021 = !DILocation(line: 651, column: 10, scope: !1011)
!1022 = !DILocation(line: 650, column: 20, scope: !1011)
!1023 = !DILocation(line: 651, column: 42, scope: !1011)
!1024 = !DILocation(line: 650, column: 9, scope: !1003)
!1025 = !DILocation(line: 652, column: 9, scope: !1010)
!1026 = !DILocation(line: 652, column: 25, scope: !1010)
!1027 = !DILocation(line: 652, column: 31, scope: !1010)
!1028 = !DILocation(line: 653, column: 6, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 653, column: 6)
!1030 = !DILocation(line: 653, column: 10, scope: !1029)
!1031 = !DILocation(line: 653, column: 6, scope: !1010)
!1032 = !DILocation(line: 654, column: 6, scope: !1029)
!1033 = !DILocation(line: 656, column: 29, scope: !1010)
!1034 = !DILocation(line: 656, column: 40, scope: !1010)
!1035 = !DILocation(line: 656, column: 9, scope: !1010)
!1036 = !DILocation(line: 657, column: 17, scope: !1010)
!1037 = !DILocation(line: 657, column: 9, scope: !1010)
!1038 = !DILocation(line: 658, column: 5, scope: !1011)
!1039 = !DILocation(line: 659, column: 13, scope: !1003)
!1040 = !DILocation(line: 659, column: 5, scope: !1003)
!1041 = !DILocation(line: 732, column: 1, scope: !1003)
!1042 = !DISubprogram(name: "pthread_once", scope: !704, file: !704, line: 509, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!79, !1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1047 = distinct !DISubprogram(name: "xmlOnceInit", scope: !3, file: !3, line: 951, type: !988, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1048 = !DILocation(line: 954, column: 12, scope: !1047)
!1049 = !DILocation(line: 955, column: 18, scope: !1047)
!1050 = !DILocation(line: 955, column: 16, scope: !1047)
!1051 = !DILocation(line: 956, column: 5, scope: !1047)
!1052 = !DILocation(line: 985, column: 1, scope: !1047)
!1053 = !DISubprogram(name: "pthread_getspecific", scope: !704, file: !704, line: 1305, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!106, !568}
!1056 = distinct !DISubprogram(name: "xmlNewGlobalState", scope: !3, file: !3, line: 562, type: !1004, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "gs", scope: !1056, file: !3, line: 564, type: !107)
!1059 = !DILocation(line: 564, column: 5, scope: !1056)
!1060 = !DILocation(line: 564, column: 21, scope: !1056)
!1061 = !DILocation(line: 566, column: 10, scope: !1056)
!1062 = !DILocation(line: 566, column: 8, scope: !1056)
!1063 = !DILocation(line: 567, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 567, column: 9)
!1065 = !DILocation(line: 567, column: 12, scope: !1064)
!1066 = !DILocation(line: 567, column: 9, scope: !1056)
!1067 = !DILocation(line: 568, column: 2, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 567, column: 21)
!1069 = !DILocation(line: 568, column: 18, scope: !1068)
!1070 = !DILocation(line: 570, column: 9, scope: !1068)
!1071 = !DILocation(line: 573, column: 12, scope: !1056)
!1072 = !DILocation(line: 573, column: 5, scope: !1056)
!1073 = !DILocation(line: 574, column: 30, scope: !1056)
!1074 = !DILocation(line: 574, column: 5, scope: !1056)
!1075 = !DILocation(line: 575, column: 13, scope: !1056)
!1076 = !DILocation(line: 575, column: 5, scope: !1056)
!1077 = !DILocation(line: 576, column: 1, scope: !1056)
!1078 = !DISubprogram(name: "pthread_setspecific", scope: !704, file: !704, line: 1308, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!79, !568, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1083 = distinct !DISubprogram(name: "xmlGetThreadId", scope: !3, file: !3, line: 750, type: !1084, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!79}
!1086 = !{!1087, !1088}
!1087 = !DILocalVariable(name: "id", scope: !1083, file: !3, line: 753, type: !572)
!1088 = !DILocalVariable(name: "ret", scope: !1083, file: !3, line: 754, type: !79)
!1089 = !DILocation(line: 753, column: 5, scope: !1083)
!1090 = !DILocation(line: 753, column: 15, scope: !1083)
!1091 = !DILocation(line: 754, column: 5, scope: !1083)
!1092 = !DILocation(line: 754, column: 9, scope: !1083)
!1093 = !DILocation(line: 756, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 756, column: 9)
!1095 = !DILocation(line: 756, column: 28, scope: !1094)
!1096 = !DILocation(line: 756, column: 9, scope: !1083)
!1097 = !DILocation(line: 757, column: 9, scope: !1094)
!1098 = !DILocation(line: 758, column: 10, scope: !1083)
!1099 = !DILocation(line: 758, column: 8, scope: !1083)
!1100 = !DILocation(line: 760, column: 5, scope: !1083)
!1101 = !DILocation(line: 761, column: 13, scope: !1083)
!1102 = !DILocation(line: 761, column: 5, scope: !1083)
!1103 = !DILocation(line: 769, column: 1, scope: !1083)
!1104 = distinct !DISubprogram(name: "xmlIsMainThread", scope: !3, file: !3, line: 779, type: !1084, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1105 = !DILocation(line: 782, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 782, column: 9)
!1107 = !DILocation(line: 782, column: 28, scope: !1106)
!1108 = !DILocation(line: 782, column: 9, scope: !1104)
!1109 = !DILocation(line: 783, column: 9, scope: !1106)
!1110 = !DILocation(line: 784, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 784, column: 9)
!1112 = !DILocation(line: 784, column: 28, scope: !1111)
!1113 = !DILocation(line: 784, column: 9, scope: !1104)
!1114 = !DILocation(line: 785, column: 9, scope: !1111)
!1115 = !DILocation(line: 786, column: 5, scope: !1104)
!1116 = !DILocation(line: 797, column: 27, scope: !1104)
!1117 = !DILocation(line: 797, column: 38, scope: !1104)
!1118 = !DILocation(line: 797, column: 13, scope: !1104)
!1119 = !DILocation(line: 797, column: 5, scope: !1104)
!1120 = !DILocation(line: 805, column: 1, scope: !1104)
!1121 = distinct !DISubprogram(name: "xmlInitThreads", scope: !3, file: !3, line: 847, type: !988, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1122 = !DILocation(line: 851, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 851, column: 9)
!1124 = !DILocation(line: 851, column: 28, scope: !1123)
!1125 = !DILocation(line: 851, column: 9, scope: !1121)
!1126 = !DILocation(line: 852, column: 36, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 852, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 851, column: 35)
!1129 = !DILocation(line: 853, column: 43, scope: !1127)
!1130 = !DILocation(line: 854, column: 43, scope: !1127)
!1131 = !DILocation(line: 855, column: 42, scope: !1127)
!1132 = !DILocation(line: 856, column: 42, scope: !1127)
!1133 = !DILocation(line: 857, column: 42, scope: !1127)
!1134 = !DILocation(line: 858, column: 45, scope: !1127)
!1135 = !DILocation(line: 859, column: 42, scope: !1127)
!1136 = !DILocation(line: 860, column: 44, scope: !1127)
!1137 = !DILocation(line: 861, column: 41, scope: !1127)
!1138 = !DILocation(line: 862, column: 44, scope: !1127)
!1139 = !DILocation(line: 863, column: 41, scope: !1127)
!1140 = !DILocation(line: 864, column: 37, scope: !1127)
!1141 = !DILocation(line: 865, column: 36, scope: !1127)
!1142 = !DILocation(line: 852, column: 13, scope: !1128)
!1143 = !DILocation(line: 867, column: 32, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 866, column: 44)
!1145 = !DILocation(line: 870, column: 9, scope: !1144)
!1146 = !DILocation(line: 873, column: 32, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 870, column: 16)
!1148 = !DILocation(line: 875, column: 5, scope: !1128)
!1149 = !DILocation(line: 878, column: 1, scope: !1121)
!1150 = distinct !DISubprogram(name: "xmlLockLibrary", scope: !3, file: !3, line: 814, type: !988, scopeLine: 815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1151 = !DILocation(line: 819, column: 19, scope: !1150)
!1152 = !DILocation(line: 819, column: 5, scope: !1150)
!1153 = !DILocation(line: 820, column: 1, scope: !1150)
!1154 = distinct !DISubprogram(name: "xmlUnlockLibrary", scope: !3, file: !3, line: 829, type: !988, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1155 = !DILocation(line: 834, column: 21, scope: !1154)
!1156 = !DILocation(line: 834, column: 5, scope: !1154)
!1157 = !DILocation(line: 835, column: 1, scope: !1154)
!1158 = !DISubprogram(name: "pthread_key_create", scope: !704, file: !704, line: 1297, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!79, !1161, !411}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!1162 = !DISubprogram(name: "pthread_key_delete", scope: !704, file: !704, line: 1302, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!79, !568}
!1165 = distinct !DISubprogram(name: "xmlCleanupThreads", scope: !3, file: !3, line: 900, type: !988, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1166 = !DILocation(line: 906, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 906, column: 9)
!1168 = !DILocation(line: 906, column: 28, scope: !1167)
!1169 = !DILocation(line: 906, column: 9, scope: !1165)
!1170 = !DILocation(line: 907, column: 28, scope: !1167)
!1171 = !DILocation(line: 907, column: 9, scope: !1167)
!1172 = !DILocation(line: 908, column: 20, scope: !1165)
!1173 = !DILocation(line: 908, column: 18, scope: !1165)
!1174 = !DILocation(line: 937, column: 1, scope: !1165)
!1175 = !DISubprogram(name: "__xmlGenericError", scope: !109, file: !109, line: 332, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!1179 = !DISubprogram(name: "__xmlGenericErrorContext", scope: !109, file: !109, line: 348, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!1183 = !DISubprogram(name: "xmlInitializeGlobalState", scope: !109, file: !109, line: 178, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !1006}
!1186 = distinct !DISubprogram(name: "xmlFreeGlobalState", scope: !3, file: !3, line: 543, type: !412, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1187)
!1187 = !{!1188, !1189}
!1188 = !DILocalVariable(name: "state", arg: 1, scope: !1186, file: !3, line: 543, type: !106)
!1189 = !DILocalVariable(name: "gs", scope: !1186, file: !3, line: 545, type: !107)
!1190 = !DILocation(line: 543, column: 26, scope: !1186)
!1191 = !DILocation(line: 545, column: 5, scope: !1186)
!1192 = !DILocation(line: 545, column: 21, scope: !1186)
!1193 = !DILocation(line: 545, column: 45, scope: !1186)
!1194 = !DILocation(line: 548, column: 21, scope: !1186)
!1195 = !DILocation(line: 548, column: 25, scope: !1186)
!1196 = !DILocation(line: 548, column: 5, scope: !1186)
!1197 = !DILocation(line: 549, column: 10, scope: !1186)
!1198 = !DILocation(line: 549, column: 5, scope: !1186)
!1199 = !DILocation(line: 550, column: 1, scope: !1186)
!1200 = !DISubprogram(name: "__xmlInitializeDict", scope: !1201, file: !1201, line: 103, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DIFile(filename: "./libxml.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "e0e6aa73c7fef1eb9329d6635aff1f8a")
!1202 = !DISubprogram(name: "xmlResetError", scope: !63, file: !63, line: 910, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !488}
