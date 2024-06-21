; ModuleID = 'samples/848.bc'
source_filename = "../spack-src/tests/client-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { ptr, ptr, i32, [12 x i8] }
%struct.wl_interface = type { ptr, i32, i32, ptr, i32, ptr }
%struct.client_destroy_listener = type { %struct.wl_listener, i8, %struct.wl_listener, i8, %struct.wl_listener, i8 }
%struct.wl_listener = type { %struct.wl_list, ptr }
%struct.wl_list = type { ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"client_destroy_listener\00", align 1
@testclient_destroy_listener = hidden constant %struct.test { ptr @.str, ptr @client_destroy_listener, i32 0, [12 x i8] undef }, section "test_section", align 16
@.str.1 = private unnamed_addr constant [59 x i8] c"socketpair(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC, 0, s) == 0\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"../spack-src/tests/client-test.c\00", align 1
@__PRETTY_FUNCTION__.client_destroy_listener = private unnamed_addr constant [35 x i8] c"void client_destroy_listener(void)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@wl_callback_interface = external constant %struct.wl_interface, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"wl_client_get_destroy_listener(client, client_destroy_notify) == &a.listener\00", align 1
@.str.7 = private unnamed_addr constant [99 x i8] c"wl_resource_get_destroy_listener(resource, client_resource_destroy_notify) == &a.resource_listener\00", align 1
@.str.8 = private unnamed_addr constant [92 x i8] c"wl_client_get_destroy_late_listener(client, client_late_destroy_notify) == &a.late_listener\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"!a.done\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"!a.resource_done\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"!a.late_done\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"b.done\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"b.resource_done\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"b.late_done\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"!listener->resource_done\00", align 1
@__PRETTY_FUNCTION__.client_destroy_notify = private unnamed_addr constant [57 x i8] c"void client_destroy_notify(struct wl_listener *, void *)\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"!listener->late_done\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"listener->done\00", align 1
@__PRETTY_FUNCTION__.client_resource_destroy_notify = private unnamed_addr constant [66 x i8] c"void client_resource_destroy_notify(struct wl_listener *, void *)\00", align 1
@__PRETTY_FUNCTION__.client_late_destroy_notify = private unnamed_addr constant [62 x i8] c"void client_late_destroy_notify(struct wl_listener *, void *)\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"listener->resource_done\00", align 1

; Function Attrs: nounwind uwtable
define internal void @client_destroy_listener() #0 {
entry:
  %display = alloca ptr, align 8
  %client = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %a = alloca %struct.client_destroy_listener, align 8
  %b = alloca %struct.client_destroy_listener, align 8
  %s = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %display) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %client) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %arraydecay = getelementptr inbounds [2 x i32], ptr %s, i64 0, i64 0
  %call = call i32 @socketpair(i32 noundef 1, i32 noundef 524289, i32 noundef 0, ptr noundef %arraydecay) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 91, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call ptr @wl_display_create()
  store ptr %call1, ptr %display, align 8, !tbaa !5
  %1 = load ptr, ptr %display, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 93, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

2:                                                ; No predecessors!
  br label %cond.end4

cond.end4:                                        ; preds = %2, %cond.true2
  %3 = load ptr, ptr %display, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [2 x i32], ptr %s, i64 0, i64 0
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %call5 = call ptr @wl_client_create(ptr noundef %3, i32 noundef %4)
  store ptr %call5, ptr %client, align 8, !tbaa !5
  %5 = load ptr, ptr %client, align 8, !tbaa !5
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end4
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end4
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 95, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

6:                                                ; No predecessors!
  br label %cond.end9

cond.end9:                                        ; preds = %6, %cond.true7
  %7 = load ptr, ptr %client, align 8, !tbaa !5
  %call10 = call ptr @wl_resource_create(ptr noundef %7, ptr noundef @wl_callback_interface, i32 noundef 1, i32 noundef 0)
  store ptr %call10, ptr %resource, align 8, !tbaa !5
  %8 = load ptr, ptr %resource, align 8, !tbaa !5
  %tobool11 = icmp ne ptr %8, null
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end9
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end9
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

9:                                                ; No predecessors!
  br label %cond.end14

cond.end14:                                       ; preds = %9, %cond.true12
  %listener = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 0
  %notify = getelementptr inbounds %struct.wl_listener, ptr %listener, i32 0, i32 1
  store ptr @client_destroy_notify, ptr %notify, align 8, !tbaa !11
  %done = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 1
  store i8 0, ptr %done, align 8, !tbaa !16
  %resource_listener = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 4
  %notify15 = getelementptr inbounds %struct.wl_listener, ptr %resource_listener, i32 0, i32 1
  store ptr @client_resource_destroy_notify, ptr %notify15, align 8, !tbaa !17
  %resource_done = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 5
  store i8 0, ptr %resource_done, align 8, !tbaa !18
  %late_listener = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 2
  %notify16 = getelementptr inbounds %struct.wl_listener, ptr %late_listener, i32 0, i32 1
  store ptr @client_late_destroy_notify, ptr %notify16, align 8, !tbaa !19
  %late_done = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 3
  store i8 0, ptr %late_done, align 8, !tbaa !20
  %10 = load ptr, ptr %client, align 8, !tbaa !5
  %listener17 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 0
  call void @wl_client_add_destroy_listener(ptr noundef %10, ptr noundef %listener17)
  %11 = load ptr, ptr %resource, align 8, !tbaa !5
  %resource_listener18 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 4
  call void @wl_resource_add_destroy_listener(ptr noundef %11, ptr noundef %resource_listener18)
  %12 = load ptr, ptr %client, align 8, !tbaa !5
  %late_listener19 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 2
  call void @wl_client_add_destroy_late_listener(ptr noundef %12, ptr noundef %late_listener19)
  %13 = load ptr, ptr %client, align 8, !tbaa !5
  %call20 = call ptr @wl_client_get_destroy_listener(ptr noundef %13, ptr noundef @client_destroy_notify)
  %listener21 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 0
  %cmp22 = icmp eq ptr %call20, %listener21
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end14
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end14
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 111, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

14:                                               ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %14, %cond.true23
  %15 = load ptr, ptr %resource, align 8, !tbaa !5
  %call26 = call ptr @wl_resource_get_destroy_listener(ptr noundef %15, ptr noundef @client_resource_destroy_notify)
  %resource_listener27 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 4
  %cmp28 = icmp eq ptr %call26, %resource_listener27
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.end25
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end25
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 113, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

16:                                               ; No predecessors!
  br label %cond.end31

cond.end31:                                       ; preds = %16, %cond.true29
  %17 = load ptr, ptr %client, align 8, !tbaa !5
  %call32 = call ptr @wl_client_get_destroy_late_listener(ptr noundef %17, ptr noundef @client_late_destroy_notify)
  %late_listener33 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 2
  %cmp34 = icmp eq ptr %call32, %late_listener33
  br i1 %cmp34, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %cond.end31
  br label %cond.end37

cond.false36:                                     ; preds = %cond.end31
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 115, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

18:                                               ; No predecessors!
  br label %cond.end37

cond.end37:                                       ; preds = %18, %cond.true35
  %listener38 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 0
  %notify39 = getelementptr inbounds %struct.wl_listener, ptr %listener38, i32 0, i32 1
  store ptr @client_destroy_notify, ptr %notify39, align 8, !tbaa !11
  %done40 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 1
  store i8 0, ptr %done40, align 8, !tbaa !16
  %resource_listener41 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 4
  %notify42 = getelementptr inbounds %struct.wl_listener, ptr %resource_listener41, i32 0, i32 1
  store ptr @client_resource_destroy_notify, ptr %notify42, align 8, !tbaa !17
  %resource_done43 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 5
  store i8 0, ptr %resource_done43, align 8, !tbaa !18
  %late_listener44 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 2
  %notify45 = getelementptr inbounds %struct.wl_listener, ptr %late_listener44, i32 0, i32 1
  store ptr @client_late_destroy_notify, ptr %notify45, align 8, !tbaa !19
  %late_done46 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 3
  store i8 0, ptr %late_done46, align 8, !tbaa !20
  %19 = load ptr, ptr %client, align 8, !tbaa !5
  %listener47 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 0
  call void @wl_client_add_destroy_listener(ptr noundef %19, ptr noundef %listener47)
  %20 = load ptr, ptr %resource, align 8, !tbaa !5
  %resource_listener48 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 4
  call void @wl_resource_add_destroy_listener(ptr noundef %20, ptr noundef %resource_listener48)
  %21 = load ptr, ptr %client, align 8, !tbaa !5
  %late_listener49 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 2
  call void @wl_client_add_destroy_late_listener(ptr noundef %21, ptr noundef %late_listener49)
  %listener50 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 0
  %link = getelementptr inbounds %struct.wl_listener, ptr %listener50, i32 0, i32 0
  call void @wl_list_remove(ptr noundef %link)
  %resource_listener51 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 4
  %link52 = getelementptr inbounds %struct.wl_listener, ptr %resource_listener51, i32 0, i32 0
  call void @wl_list_remove(ptr noundef %link52)
  %late_listener53 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 2
  %link54 = getelementptr inbounds %struct.wl_listener, ptr %late_listener53, i32 0, i32 0
  call void @wl_list_remove(ptr noundef %link54)
  %22 = load ptr, ptr %client, align 8, !tbaa !5
  call void @wl_client_destroy(ptr noundef %22)
  %done55 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 1
  %23 = load i8, ptr %done55, align 8, !tbaa !16, !range !21, !noundef !22
  %tobool56 = trunc i8 %23 to i1
  br i1 %tobool56, label %cond.false58, label %cond.true57

cond.true57:                                      ; preds = %cond.end37
  br label %cond.end59

cond.false58:                                     ; preds = %cond.end37
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 133, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

24:                                               ; No predecessors!
  br label %cond.end59

cond.end59:                                       ; preds = %24, %cond.true57
  %resource_done60 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 5
  %25 = load i8, ptr %resource_done60, align 8, !tbaa !18, !range !21, !noundef !22
  %tobool61 = trunc i8 %25 to i1
  br i1 %tobool61, label %cond.false63, label %cond.true62

cond.true62:                                      ; preds = %cond.end59
  br label %cond.end64

cond.false63:                                     ; preds = %cond.end59
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 134, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

26:                                               ; No predecessors!
  br label %cond.end64

cond.end64:                                       ; preds = %26, %cond.true62
  %late_done65 = getelementptr inbounds %struct.client_destroy_listener, ptr %a, i32 0, i32 3
  %27 = load i8, ptr %late_done65, align 8, !tbaa !20, !range !21, !noundef !22
  %tobool66 = trunc i8 %27 to i1
  br i1 %tobool66, label %cond.false68, label %cond.true67

cond.true67:                                      ; preds = %cond.end64
  br label %cond.end69

cond.false68:                                     ; preds = %cond.end64
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.2, i32 noundef 135, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

28:                                               ; No predecessors!
  br label %cond.end69

cond.end69:                                       ; preds = %28, %cond.true67
  %done70 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 1
  %29 = load i8, ptr %done70, align 8, !tbaa !16, !range !21, !noundef !22
  %tobool71 = trunc i8 %29 to i1
  br i1 %tobool71, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %cond.end69
  br label %cond.end74

cond.false73:                                     ; preds = %cond.end69
  call void @__assert_fail(ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 136, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

30:                                               ; No predecessors!
  br label %cond.end74

cond.end74:                                       ; preds = %30, %cond.true72
  %resource_done75 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 5
  %31 = load i8, ptr %resource_done75, align 8, !tbaa !18, !range !21, !noundef !22
  %tobool76 = trunc i8 %31 to i1
  br i1 %tobool76, label %cond.true77, label %cond.false78

cond.true77:                                      ; preds = %cond.end74
  br label %cond.end79

cond.false78:                                     ; preds = %cond.end74
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.2, i32 noundef 137, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

32:                                               ; No predecessors!
  br label %cond.end79

cond.end79:                                       ; preds = %32, %cond.true77
  %late_done80 = getelementptr inbounds %struct.client_destroy_listener, ptr %b, i32 0, i32 3
  %33 = load i8, ptr %late_done80, align 8, !tbaa !20, !range !21, !noundef !22
  %tobool81 = trunc i8 %33 to i1
  br i1 %tobool81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.end79
  br label %cond.end84

cond.false83:                                     ; preds = %cond.end79
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef 138, ptr noundef @__PRETTY_FUNCTION__.client_destroy_listener) #6
  unreachable

34:                                               ; No predecessors!
  br label %cond.end84

cond.end84:                                       ; preds = %34, %cond.true82
  %arrayidx85 = getelementptr inbounds [2 x i32], ptr %s, i64 0, i64 0
  %35 = load i32, ptr %arrayidx85, align 4, !tbaa !9
  %call86 = call i32 @close(i32 noundef %35)
  %arrayidx87 = getelementptr inbounds [2 x i32], ptr %s, i64 0, i64 1
  %36 = load i32, ptr %arrayidx87, align 4, !tbaa !9
  %call88 = call i32 @close(i32 noundef %36)
  %37 = load ptr, ptr %display, align 8, !tbaa !5
  call void @wl_display_destroy(ptr noundef %37)
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %client) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %display) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @socketpair(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @wl_display_create() #4

declare ptr @wl_client_create(ptr noundef, i32 noundef) #4

declare ptr @wl_resource_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal void @client_destroy_notify(ptr noundef %l, ptr noundef %data) #0 {
entry:
  %l.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %listener = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #5
  %0 = load ptr, ptr %l.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 0
  store ptr %add.ptr, ptr %listener, align 8, !tbaa !5
  %1 = load ptr, ptr %listener, align 8, !tbaa !5
  %done = getelementptr inbounds %struct.client_destroy_listener, ptr %1, i32 0, i32 1
  store i8 1, ptr %done, align 8, !tbaa !16
  %2 = load ptr, ptr %listener, align 8, !tbaa !5
  %resource_done = getelementptr inbounds %struct.client_destroy_listener, ptr %2, i32 0, i32 5
  %3 = load i8, ptr %resource_done, align 8, !tbaa !18, !range !21, !noundef !22
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 57, ptr noundef @__PRETTY_FUNCTION__.client_destroy_notify) #6
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load ptr, ptr %listener, align 8, !tbaa !5
  %late_done = getelementptr inbounds %struct.client_destroy_listener, ptr %5, i32 0, i32 3
  %6 = load i8, ptr %late_done, align 8, !tbaa !20, !range !21, !noundef !22
  %tobool1 = trunc i8 %6 to i1
  br i1 %tobool1, label %cond.false3, label %cond.true2

cond.true2:                                       ; preds = %cond.end
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 58, ptr noundef @__PRETTY_FUNCTION__.client_destroy_notify) #6
  unreachable

7:                                                ; No predecessors!
  br label %cond.end4

cond.end4:                                        ; preds = %7, %cond.true2
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @client_resource_destroy_notify(ptr noundef %l, ptr noundef %data) #0 {
entry:
  %l.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %listener = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #5
  %0 = load ptr, ptr %l.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -64
  store ptr %add.ptr, ptr %listener, align 8, !tbaa !5
  %1 = load ptr, ptr %listener, align 8, !tbaa !5
  %done = getelementptr inbounds %struct.client_destroy_listener, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %done, align 8, !tbaa !16, !range !21, !noundef !22
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.2, i32 noundef 67, ptr noundef @__PRETTY_FUNCTION__.client_resource_destroy_notify) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load ptr, ptr %listener, align 8, !tbaa !5
  %resource_done = getelementptr inbounds %struct.client_destroy_listener, ptr %4, i32 0, i32 5
  store i8 1, ptr %resource_done, align 8, !tbaa !18
  %5 = load ptr, ptr %listener, align 8, !tbaa !5
  %late_done = getelementptr inbounds %struct.client_destroy_listener, ptr %5, i32 0, i32 3
  %6 = load i8, ptr %late_done, align 8, !tbaa !20, !range !21, !noundef !22
  %tobool1 = trunc i8 %6 to i1
  br i1 %tobool1, label %cond.false3, label %cond.true2

cond.true2:                                       ; preds = %cond.end
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 69, ptr noundef @__PRETTY_FUNCTION__.client_resource_destroy_notify) #6
  unreachable

7:                                                ; No predecessors!
  br label %cond.end4

cond.end4:                                        ; preds = %7, %cond.true2
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @client_late_destroy_notify(ptr noundef %l, ptr noundef %data) #0 {
entry:
  %l.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %listener = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #5
  %0 = load ptr, ptr %l.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr %add.ptr, ptr %listener, align 8, !tbaa !5
  %1 = load ptr, ptr %listener, align 8, !tbaa !5
  %done = getelementptr inbounds %struct.client_destroy_listener, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %done, align 8, !tbaa !16, !range !21, !noundef !22
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.2, i32 noundef 78, ptr noundef @__PRETTY_FUNCTION__.client_late_destroy_notify) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load ptr, ptr %listener, align 8, !tbaa !5
  %resource_done = getelementptr inbounds %struct.client_destroy_listener, ptr %4, i32 0, i32 5
  %5 = load i8, ptr %resource_done, align 8, !tbaa !18, !range !21, !noundef !22
  %tobool1 = trunc i8 %5 to i1
  br i1 %tobool1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.2, i32 noundef 79, ptr noundef @__PRETTY_FUNCTION__.client_late_destroy_notify) #6
  unreachable

6:                                                ; No predecessors!
  br label %cond.end4

cond.end4:                                        ; preds = %6, %cond.true2
  %7 = load ptr, ptr %listener, align 8, !tbaa !5
  %late_done = getelementptr inbounds %struct.client_destroy_listener, ptr %7, i32 0, i32 3
  store i8 1, ptr %late_done, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #5
  ret void
}

declare void @wl_client_add_destroy_listener(ptr noundef, ptr noundef) #4

declare void @wl_resource_add_destroy_listener(ptr noundef, ptr noundef) #4

declare void @wl_client_add_destroy_late_listener(ptr noundef, ptr noundef) #4

declare ptr @wl_client_get_destroy_listener(ptr noundef, ptr noundef) #4

declare ptr @wl_resource_get_destroy_listener(ptr noundef, ptr noundef) #4

declare ptr @wl_client_get_destroy_late_listener(ptr noundef, ptr noundef) #4

declare void @wl_list_remove(ptr noundef) #4

declare void @wl_client_destroy(ptr noundef) #4

declare i32 @close(i32 noundef) #4

declare void @wl_display_destroy(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !6, i64 16}
!12 = !{!"client_destroy_listener", !13, i64 0, !15, i64 24, !13, i64 32, !15, i64 56, !13, i64 64, !15, i64 88}
!13 = !{!"wl_listener", !14, i64 0, !6, i64 16}
!14 = !{!"wl_list", !6, i64 0, !6, i64 8}
!15 = !{!"_Bool", !7, i64 0}
!16 = !{!12, !15, i64 24}
!17 = !{!12, !6, i64 80}
!18 = !{!12, !15, i64 88}
!19 = !{!12, !6, i64 48}
!20 = !{!12, !15, i64 56}
!21 = !{i8 0, i8 2}
!22 = !{}
